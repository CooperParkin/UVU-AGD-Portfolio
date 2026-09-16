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
    [Tooltip("If true, sets Time.timeScale to 0 when game over triggers, freezing gameplay automatically.")]
    [SerializeField] private bool pauseOnGameOver = true;

    [Header("Events")]
    [Tooltip("Invoked once, the first time game over is triggered, from any source.")]
    public UnityEvent OnGameOver;

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
            Time.timeScale = 0f;
        }

        OnGameOver?.Invoke();
    }

    /// <summary>
    /// Resets game-over state, e.g. when restarting the level or song.
    /// Call this before starting a new attempt.
    /// </summary>
    public void ResetGameOverState()
    {
        IsGameOver = false;
        GameOverReason = "";

        if (pauseOnGameOver)
        {
            Time.timeScale = 1f;
        }
    }

    /// <summary>
    /// Reloads the current scene from scratch, e.g. bound to a restart
    /// input like spacebar. Unpauses time first in case game over had
    /// frozen it, so the reloaded scene isn't paused on entry.
    /// </summary>
    public void RestartScene()
    {
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