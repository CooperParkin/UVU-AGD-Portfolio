using System.Collections;
using TMPro;
using UnityEngine;
using UnityEngine.UI;

/// <summary>
/// Runs the tutorial's slow-motion prompts. When a SlowmoZone reports a
/// prompt, this slows the game to a complete stop, shows the prompt's text
/// and image, and waits for the player's next directional input. That input
/// (which still goes to the HitZone as normal) hides the prompt and eases the
/// game back up to full speed.
///
/// While the game slows, the music's pitch and the beat clock (via
/// PauseManager.SetClockScale) slow with it, so spawns and music stay in step
/// with what's on screen, and nothing piles up while it's frozen.
///
/// Rules:
/// - The first directional input after the prompt appears ends the stop,
///   even if it comes while the game is still slowing down.
/// - A second prompt that reaches the zone while one is slowing or waiting is
///   ignored. Space prompt rows apart so this can't happen. One that arrives
///   while the game is speeding back up is fine.
/// - Pausing in the middle works, and un-pausing carries on from where it
///   was.
/// - If game over happens, this stands down and leaves time to GameOverManager.
///
/// Setup: put this on an object in the tutorial scene, assign the prompt TMP
/// text and the prompt Image (both are hidden until a prompt shows), and the
/// PlayerInputHandler (found automatically if left empty).
///
/// Estimating where to put the SlowmoZone: a prefab keeps moving while the
/// game slows, so it travels about (its speed x Slowdown Seconds x 0.5) past
/// the point where it entered the zone, for a symmetric curve like the
/// default. Put the zone's leading edge that far before the middle of the
/// HitZone, so the prefab comes to rest inside the HitZone.
/// </summary>
public class TutorialSlowmoManager : MonoBehaviour
{
    public static TutorialSlowmoManager Instance { get; private set; }

    private enum State { Idle, Slowing, Waiting, Resuming }

    [Header("Prompt UI (both hidden until a prompt shows)")]
    [SerializeField] private TMP_Text promptText;
    [SerializeField] private Image promptImage;

    [Header("Slow To A Stop")]
    [Tooltip("Real-time seconds to go from full speed to a complete stop.")]
    [SerializeField, Min(0.01f)] private float slowdownSeconds = 1.2f;
    [Tooltip("Left to right is time through the slowdown, bottom to top is how much of the slowdown is done (0 = full speed, 1 = stopped).")]
    [SerializeField] private AnimationCurve slowdownCurve = AnimationCurve.EaseInOut(0f, 0f, 1f, 1f);

    [Header("Back To Normal")]
    [Tooltip("Real-time seconds to go from stopped back to full speed after the player's input.")]
    [SerializeField, Min(0.01f)] private float resumeSeconds = 1f;
    [Tooltip("Left to right is time through the speed-up, bottom to top is how much of it is done (0 = stopped, 1 = full speed).")]
    [SerializeField] private AnimationCurve resumeCurve = AnimationCurve.EaseInOut(0f, 0f, 1f, 1f);

    [Header("Input")]
    [Tooltip("The scene's PlayerInputHandler. Found automatically if left empty.")]
    [SerializeField] private PlayerInputHandler inputHandler;

    private State state = State.Idle;
    private float currentScale = 1f;
    private Coroutine routine;

    private bool IsGameOver => GameOverManager.Instance != null && GameOverManager.Instance.IsGameOver;
    private bool IsPaused => PauseManager.Instance != null && PauseManager.Instance.IsPaused;

    private void Awake()
    {
        if (Instance != null && Instance != this)
        {
            Destroy(gameObject);
            return;
        }
        Instance = this;

        HidePrompt();
    }

    private void Start()
    {
        if (inputHandler == null)
        {
            inputHandler = FindFirstObjectByType<PlayerInputHandler>();
        }

        if (inputHandler == null)
        {
            Debug.LogWarning("TutorialSlowmoManager: no PlayerInputHandler found, so the player's input can't end a stop. Assign one.");
            return;
        }

        inputHandler.OnUpInput.AddListener(NotifyInput);
        inputHandler.OnDownInput.AddListener(NotifyInput);
        inputHandler.OnLeftInput.AddListener(NotifyInput);
        inputHandler.OnRightInput.AddListener(NotifyInput);
    }

    private void OnDestroy()
    {
        if (inputHandler != null)
        {
            inputHandler.OnUpInput.RemoveListener(NotifyInput);
            inputHandler.OnDownInput.RemoveListener(NotifyInput);
            inputHandler.OnLeftInput.RemoveListener(NotifyInput);
            inputHandler.OnRightInput.RemoveListener(NotifyInput);
        }

        if (Instance == this)
        {
            Instance = null;
        }
    }

    private void Update()
    {
        if (state != State.Idle && IsGameOver)
        {
            StandDown();
        }
    }

    /// <summary>
    /// Called by the SlowmoZone. Starts the slowdown and shows the prompt.
    /// Returns false (and does nothing) if one is already slowing or
    /// waiting, or the row's prompt has already been shown.
    /// </summary>
    public bool TryShowPrompt(TutorialPromptInfo info)
    {
        if (info == null || info.triggered) return false;
        if (state == State.Slowing || state == State.Waiting) return false;
        if (IsGameOver) return false;

        info.triggered = true;
        ShowPrompt(info);
        ApplyInputRestrictions(info.allowed);
        StartScaling(State.Slowing, 0f, slowdownSeconds, slowdownCurve);
        return true;
    }

    /// <summary>The player made a directional input. Hooked to the PlayerInputHandler's four input events.</summary>
    public void NotifyInput()
    {
        if (state != State.Slowing && state != State.Waiting) return;

        HidePrompt();

        // The input that got us here was an allowed one (disallowed inputs
        // never reach this point). From now on everything is allowed again.
        if (inputHandler != null)
        {
            inputHandler.ClearInputRestrictions();
        }

        StartScaling(State.Resuming, 1f, resumeSeconds, resumeCurve);
    }

    private void ApplyInputRestrictions(AllowedInputs allowed)
    {
        if (inputHandler == null) return;

        // With nothing allowed the player could never continue, so don't.
        if (!allowed.AnyAllowed)
        {
            Debug.LogWarning("TutorialSlowmoManager: a tutorial row has all four inputs unticked, which would trap the player. Allowing all inputs for it instead.");
            inputHandler.ClearInputRestrictions();
            return;
        }

        inputHandler.SetAllowedInputs(allowed.up, allowed.down, allowed.left, allowed.right);
    }

    private void StartScaling(State phase, float target, float seconds, AnimationCurve curve)
    {
        if (routine != null)
        {
            StopCoroutine(routine);
        }

        routine = StartCoroutine(ScaleRoutine(phase, target, seconds, curve));
    }

    private IEnumerator ScaleRoutine(State phase, float target, float seconds, AnimationCurve curve)
    {
        state = phase;

        // Starts from wherever the speed is right now (it may be partway,
        // if this interrupts another change), taking a proportional time.
        float from = currentScale;
        float duration = Mathf.Max(0.01f, seconds * Mathf.Abs(target - from));
        float elapsed = 0f;

        while (elapsed < duration)
        {
            // Frozen while paused; carries on from the same point after.
            if (!IsPaused)
            {
                // Real time, capped so one hitch can't skip a chunk of it.
                elapsed += Mathf.Min(Time.unscaledDeltaTime, 1f / 30f);

                float t = Mathf.Clamp01(elapsed / duration);
                float eased = (curve != null && curve.length > 0) ? curve.Evaluate(t) : t;
                ApplyScale(Mathf.Lerp(from, target, eased));
            }

            yield return null;
        }

        ApplyScale(target);
        state = phase == State.Slowing ? State.Waiting : State.Idle;
        routine = null;
    }

    // Applies a speed to everything that needs to move together: the game
    // world, the beat clock, and the music.
    private void ApplyScale(float scale)
    {
        currentScale = scale;

        PauseManager pause = PauseManager.Instance;
        if (pause != null)
        {
            // So un-pausing partway through comes back to this speed.
            pause.ResumeTimeScale = scale;
            pause.SetClockScale(scale);
        }

        if (!IsPaused)
        {
            Time.timeScale = scale;
        }

        if (BeatManager.Instance != null)
        {
            BeatManager.Instance.SetMusicPitch(scale);
        }
    }

    // Game over has taken over. Stop touching time, but hand back a normal
    // clock and pause behavior.
    private void StandDown()
    {
        if (routine != null)
        {
            StopCoroutine(routine);
            routine = null;
        }

        state = State.Idle;
        currentScale = 1f;
        HidePrompt();

        if (inputHandler != null)
        {
            inputHandler.ClearInputRestrictions();
        }

        if (PauseManager.Instance != null)
        {
            PauseManager.Instance.ResumeTimeScale = 1f;
            PauseManager.Instance.SetClockScale(1f);
        }
    }

    private void ShowPrompt(TutorialPromptInfo info)
    {
        if (promptText != null)
        {
            bool hasText = !string.IsNullOrWhiteSpace(info.text);
            promptText.text = hasText ? info.text : "";
            promptText.gameObject.SetActive(hasText);
        }

        if (promptImage != null)
        {
            bool hasImage = info.image != null;
            promptImage.sprite = info.image;
            promptImage.gameObject.SetActive(hasImage);
        }
    }

    private void HidePrompt()
    {
        if (promptText != null) promptText.gameObject.SetActive(false);
        if (promptImage != null) promptImage.gameObject.SetActive(false);
    }
}