using System.Collections;
using UnityEngine;
using UnityEngine.Events;
using UnityEngine.SceneManagement;

/// <summary>
/// Central game-over manager. Automatically triggers game over when both
/// registered characters reach 0 health. Also exposes a public
/// TriggerGameOver() method so any future script can trigger game over for
/// other conditions (a timer running out, a boss defeating the player,
/// etc.) without needing to know about the health-based check at all.
///
/// Put this on a single persistent GameObject in your scene, alongside
/// (or after) your CharacterRegistry.
/// </summary>
public class GameOverManager : MonoBehaviour
{
    public static GameOverManager Instance { get; private set; }

    [Header("Behavior")]
    [Tooltip("If true, gameplay winds down to a freeze (Time.timeScale reaches 0) after game over triggers. If false, time is left alone.")]
    [SerializeField] private bool pauseOnGameOver = true;

    [Header("Slowdown")]
    [Tooltip("Real-time seconds the game takes to slow from full speed to a complete stop after game over. 0 freezes instantly. Player input is blocked from the moment game over triggers, regardless of this.")]
    [SerializeField, Min(0f)] private float slowdownSeconds = 1.5f;
    [Tooltip("How the slowdown progresses. Left to right is time through the slowdown, bottom to top is how much speed has been lost (0 = full speed, 1 = stopped). A straight diagonal is a steady slowdown.")]
    [SerializeField] private AnimationCurve slowdownCurve = AnimationCurve.EaseInOut(0f, 0f, 1f, 1f);
    [Tooltip("Optional. A music AudioSource whose pitch follows the slowdown, so the song winds down with the game. Leave empty to let the music play on.")]
    [SerializeField] private AudioSource musicToSlow;

    [Header("Events")]
    [Tooltip("Invoked once, the first time game over is triggered, from any source. Fires at the START of the slowdown.")]
    public UnityEvent OnGameOver;
    [Tooltip("Invoked once when the slowdown has finished and everything is frozen. Wire a game over screen here if you want it to appear after the slowdown instead of at the start.")]
    public UnityEvent OnFrozen;

    private Coroutine slowdownRoutine;

    public bool IsGameOver { get; private set; }
    public string GameOverReason { get; private set; }

    private void Awake()
    {
        if (Instance != null && Instance != this)
        {
            Destroy(gameObject);
            return;
        }
        Instance = this;
    }

    private void Start()
    {
        SubscribeToCharacters();
    }

    private void SubscribeToCharacters()
    {
        if (CharacterRegistry.Instance == null)
        {
            Debug.LogWarning("GameOverManager: No CharacterRegistry found in scene, can't watch character health.");
            return;
        }

        if (CharacterRegistry.Instance.Character1 != null)
        {
            CharacterRegistry.Instance.Character1.OnHealthChanged.AddListener(OnAnyCharacterHealthChanged);
        }

        if (CharacterRegistry.Instance.Character2 != null)
        {
            CharacterRegistry.Instance.Character2.OnHealthChanged.AddListener(OnAnyCharacterHealthChanged);
        }
    }

    private void OnAnyCharacterHealthChanged(int current, int max)
    {
        if (IsGameOver || CharacterRegistry.Instance == null) return;

        CharacterHealth topCharacter = CharacterRegistry.Instance.Character1;
        CharacterHealth bottomCharacter = CharacterRegistry.Instance.Character2;

        bool topDead = topCharacter == null || topCharacter.IsDead;
        bool bottomDead = bottomCharacter == null || bottomCharacter.IsDead;

        if (topDead && bottomDead)
        {
            TriggerGameOver("Both characters reached 0 health.");
        }
    }

    /// <summary>
    /// Triggers game over immediately, for any reason. Safe to call from
    /// anywhere, at any time, or multiple times — only the first call
    /// actually takes effect.
    /// </summary>
    public void TriggerGameOver(string reason = "")
    {
        if (IsGameOver) return;

        IsGameOver = true;
        GameOverReason = reason;

        Debug.Log($"Game Over: {reason}");

        if (pauseOnGameOver)
        {
            if (slowdownSeconds > 0f)
            {
                slowdownRoutine = StartCoroutine(SlowdownRoutine());
            }
            else
            {
                Time.timeScale = 0f;
                SetMusicPitch(0f);
                OnFrozen?.Invoke();
            }
        }

        OnGameOver?.Invoke();
    }

    private IEnumerator SlowdownRoutine()
    {
        float duration = slowdownSeconds;
        float elapsed = 0f;

        while (elapsed < duration)
        {
            // Real time, so the slowdown takes the same time however slow
            // the game itself has become. Capped so one hitch can't skip a
            // big chunk of it.
            elapsed += Mathf.Min(Time.unscaledDeltaTime, 1f / 30f);

            float t = Mathf.Clamp01(elapsed / duration);
            float lost = (slowdownCurve != null && slowdownCurve.length > 0) ? slowdownCurve.Evaluate(t) : t;
            float scale = Mathf.Clamp01(1f - lost);

            Time.timeScale = scale;
            SetMusicPitch(scale);
            yield return null;
        }

        Time.timeScale = 0f;
        SetMusicPitch(0f);
        slowdownRoutine = null;
        OnFrozen?.Invoke();
    }

    private void SetMusicPitch(float pitch)
    {
        if (musicToSlow != null)
        {
            musicToSlow.pitch = pitch;
        }
    }

    private void StopSlowdown()
    {
        if (slowdownRoutine != null)
        {
            StopCoroutine(slowdownRoutine);
            slowdownRoutine = null;
        }
    }

    /// <summary>
    /// Resets game-over state, e.g. when restarting the level or song.
    /// Call this before starting a new attempt.
    /// </summary>
    public void ResetGameOverState()
    {
        StopSlowdown();
        IsGameOver = false;
        GameOverReason = "";

        if (pauseOnGameOver)
        {
            Time.timeScale = 1f;
            SetMusicPitch(1f);
        }
    }

    /// <summary>
    /// Reloads the current scene from scratch, e.g. bound to a restart
    /// input like spacebar. If the scene has a SceneTransition, it fades to
    /// black first; time stays frozen during that fade and is restored just
    /// before the reload. Without one, it unpauses and reloads immediately.
    /// </summary>
    public void RestartScene()
    {
        // If restart is pressed mid-slowdown, stop it so it can't keep
        // changing the time scale while the scene fades out.
        StopSlowdown();

        if (SceneTransition.Instance != null)
        {
            SceneTransition.Instance.ReloadCurrentScene();
            return;
        }

        // Unpause first in case game over had frozen time, so the reloaded
        // scene isn't paused on entry.
        Time.timeScale = 1f;
        Scene activeScene = SceneManager.GetActiveScene();
        SceneManager.LoadScene(activeScene.buildIndex);
    }

    private void OnDestroy()
    {
        if (CharacterRegistry.Instance == null) return;

        if (CharacterRegistry.Instance.Character1 != null)
        {
            CharacterRegistry.Instance.Character1.OnHealthChanged.RemoveListener(OnAnyCharacterHealthChanged);
        }

        if (CharacterRegistry.Instance.Character2 != null)
        {
            CharacterRegistry.Instance.Character2.OnHealthChanged.RemoveListener(OnAnyCharacterHealthChanged);
        }
    }
}