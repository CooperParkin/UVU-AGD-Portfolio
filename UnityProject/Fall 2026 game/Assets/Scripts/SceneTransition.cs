using System.Collections;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.UI;

/// <summary>
/// Fades a full-screen black Image in and out around scene loads.
///
/// - When its scene starts, the screen begins fully black, stays black
///   until the scene's startup hitching has passed, then fades in. This
///   applies to every scene start, including pressing Play in the Editor.
/// - LoadScene() / ReloadCurrentScene() fade out to black, then load.
///
/// Put one of these in every scene that should fade (on an active
/// GameObject that is NOT the fade Image itself), and assign that scene's
/// black Image. A scene without one still works; it just loads instantly.
///
/// Fades use unscaled time, so they work while the game is paused or after
/// game over, when Time.timeScale is 0. Time.timeScale is only restored to
/// 1 right before the new scene loads, so a frozen game stays frozen while
/// it fades out.
///
/// The Image should be the last child of the topmost canvas so it draws on
/// top of everything, stretched to cover the whole screen. This script
/// turns the Image's Raycast Target off whenever it isn't fading, so an
/// invisible full-screen image can't block your buttons.
/// </summary>
public class SceneTransition : MonoBehaviour
{
    public static SceneTransition Instance { get; private set; }

    [Header("Fade Image")]
    [Tooltip("The full-screen black Image for this scene's canvas.")]
    [SerializeField] private Image fadeImage;

    [Header("Timing (seconds)")]
    [Tooltip("How long the fade from black takes when a scene starts.")]
    [SerializeField] private float fadeInDuration = 0.5f;
    [Tooltip("How long the fade to black takes before a scene is loaded.")]
    [SerializeField] private float fadeOutDuration = 0.5f;
    [Tooltip("Easing for the fade-in. Left to right is progress through the fade, bottom to top is how clear the screen is (0 = fully black, 1 = fully clear). A straight diagonal line makes it linear.")]
    [SerializeField] private AnimationCurve fadeInCurve = AnimationCurve.EaseInOut(0f, 0f, 1f, 1f);

    [Header("Fade In Hold")]
    [Tooltip("In scenes with a BeatManager, keep the screen black until its clock has started, so the hitch from starting the music happens while the screen is still black instead of in the middle of the fade. Has no effect in scenes without a BeatManager. Turn off if your BeatManager doesn't start on its own.")]
    [SerializeField] private bool waitForBeatClock = true;

    // The most a single frame can advance a fade. A frame that takes longer
    // than this (a hitch) only moves the fade this far, instead of skipping
    // a big chunk of it.
    private const float MaxFadeStep = 1f / 30f;

    private bool isTransitioning;
    private Coroutine fadeInRoutine;

    private void Awake()
    {
        if (Instance != null && Instance != this)
        {
            Destroy(gameObject);
            return;
        }
        Instance = this;

        if (fadeImage == null)
        {
            Debug.LogWarning("SceneTransition: no Fade Image assigned, so there will be no fade in this scene.");
            return;
        }

        // Start fully black before the first frame is drawn, so the scene
        // never flashes visible before the fade-in begins.
        fadeImage.gameObject.SetActive(true);
        fadeImage.raycastTarget = true;
        SetAlpha(1f);
    }

    private void Start()
    {
        if (fadeImage != null)
        {
            fadeInRoutine = StartCoroutine(FadeInRoutine());
        }
    }

    /// <summary>Fades to black, then loads the scene with the given name.</summary>
    public void LoadScene(string sceneName)
    {
        if (isTransitioning) return;

        // Checked up front so a typo can't leave the player on a black
        // screen with nothing to load.
        if (!Application.CanStreamedLevelBeLoaded(sceneName))
        {
            Debug.LogError($"SceneTransition: scene '{sceneName}' can't be loaded. Is it added in File > Build Settings, and is the name spelled exactly right?");
            return;
        }

        StartCoroutine(FadeOutAndLoad(sceneName));
    }

    /// <summary>Fades to black, then reloads the current scene.</summary>
    public void ReloadCurrentScene()
    {
        LoadScene(SceneManager.GetActiveScene().name);
    }

    private IEnumerator FadeInRoutine()
    {
        // The first frames of a scene (and especially the very first Play in
        // the Editor) are the slowest, so hold the black until they're over.
        // Otherwise those frames use up the fade and it looks instant.
        yield return StartCoroutine(WaitUntilSettled());

        yield return StartCoroutine(Fade(1f, 0f, fadeInDuration, fadeInCurve));

        // Fully clear: stop the invisible image from blocking clicks.
        fadeImage.raycastTarget = false;
        fadeInRoutine = null;
    }

    // Waits for several smooth frames in a row (and for the beat clock to
    // have started, if enabled). Gives up after a few seconds so a scene that
    // never settles still fades in instead of staying black.
    private IEnumerator WaitUntilSettled()
    {
        const int stableFramesNeeded = 5;
        const float maxStableFrameTime = 0.05f;
        const float maxHoldSeconds = 3f;

        float held = 0f;
        int stableFrames = 0;

        while (held < maxHoldSeconds)
        {
            yield return null;

            float frameTime = Time.unscaledDeltaTime;
            held += frameTime;

            bool clockPending = waitForBeatClock
                && BeatManager.Instance != null
                && !BeatManager.Instance.IsRunning;

            stableFrames = (!clockPending && frameTime <= maxStableFrameTime) ? stableFrames + 1 : 0;

            if (stableFrames >= stableFramesNeeded) yield break;
        }
    }

    private IEnumerator FadeOutAndLoad(string sceneName)
    {
        isTransitioning = true;

        if (fadeInRoutine != null)
        {
            StopCoroutine(fadeInRoutine);
            fadeInRoutine = null;
        }

        if (fadeImage != null)
        {
            // Block clicks for the duration, so nothing else can be pressed
            // while the screen goes dark.
            fadeImage.raycastTarget = true;
            yield return StartCoroutine(Fade(fadeImage.color.a, 1f, fadeOutDuration));
        }

        // Time may be frozen (paused or game over). Restore it only now, so
        // the next scene doesn't start frozen.
        Time.timeScale = 1f;
        SceneManager.LoadScene(sceneName);
    }

    private IEnumerator Fade(float from, float to, float duration, AnimationCurve curve = null)
    {
        duration = Mathf.Max(0.01f, duration);
        float elapsed = 0f;

        while (elapsed < duration)
        {
            // Capped so one long frame (a hitch) can't skip a big chunk of
            // the fade. The fade just takes a little longer instead.
            elapsed += Mathf.Min(Time.unscaledDeltaTime, MaxFadeStep);

            float t = Mathf.Clamp01(elapsed / duration);
            float eased = (curve != null && curve.length > 0) ? curve.Evaluate(t) : t;
            SetAlpha(Mathf.LerpUnclamped(from, to, eased));
            yield return null;
        }

        SetAlpha(to);
    }

    private void SetAlpha(float alpha)
    {
        Color color = fadeImage.color;
        color.a = alpha;
        fadeImage.color = color;
    }
}