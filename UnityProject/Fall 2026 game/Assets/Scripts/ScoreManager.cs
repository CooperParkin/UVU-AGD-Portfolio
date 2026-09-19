using UnityEngine;
using UnityEngine.Events;

/// <summary>
/// Endless mode scoring: adds 1 point per beat until game over, then saves
/// the final score as "last session" and updates the persistent high score
/// if beaten. Persists across scene reloads and app restarts via
/// PlayerPrefs.
///
/// To use this only on endless levels, either leave Scoring Enabled
/// unchecked on the GameObject in standard-level scenes, or simply don't
/// place this component in those scenes at all — both work, since every
/// public method and the beat-listening itself all respect the flag.
/// </summary>
public class ScoreManager : MonoBehaviour
{
    public static ScoreManager Instance { get; private set; }

    [System.Serializable]
    public class IntUnityEvent : UnityEvent<int> { }

    [Header("Settings")]
    [Tooltip("If false, this scoring system does nothing — use this to disable scoring on standard (non-endless) levels.")]
    [SerializeField] private bool scoringEnabled = true;
    [Tooltip("Score doesn't start increasing until this beat number. Avoids the first few beats appearing to jump quickly, since a startup delay can cause several early beats to fire in close succession as the clock catches up.")]
    [SerializeField] private int startScoringAtBeat = 4;

    [Header("Events")]
    [Tooltip("Fired with the new current score every time it increases.")]
    public IntUnityEvent OnScoreChanged;
    [Tooltip("Fired with the final score once, when a run's game over is saved.")]
    public IntUnityEvent OnSessionScoreSaved;
    [Tooltip("Fired with the new high score, only when a run actually beats the previous high score.")]
    public IntUnityEvent OnHighScoreChanged;

    private const string HighScoreKey = "ScoreManager_HighScore";
    private const string LastSessionScoreKey = "ScoreManager_LastSessionScore";

    private bool hasSavedThisRun;

    public int CurrentScore { get; private set; }
    public int LastSessionScore { get; private set; }
    public int HighScore { get; private set; }

    private void Awake()
    {
        if (Instance != null && Instance != this)
        {
            Destroy(gameObject);
            return;
        }
        Instance = this;

        HighScore = PlayerPrefs.GetInt(HighScoreKey, 0);
        LastSessionScore = PlayerPrefs.GetInt(LastSessionScoreKey, 0);
    }

    private void Start()
    {
        if (!scoringEnabled) return;

        if (BeatManager.Instance != null)
        {
            BeatManager.Instance.OnBeat.AddListener(HandleBeat);
        }
        else
        {
            Debug.LogWarning("ScoreManager: No BeatManager found in scene, scoring won't tick.");
        }

        if (GameOverManager.Instance != null)
        {
            GameOverManager.Instance.OnGameOver.AddListener(HandleGameOver);
        }
        else
        {
            Debug.LogWarning("ScoreManager: No GameOverManager found in scene, final score won't be saved.");
        }
    }

    private void HandleBeat(int beatNumber)
    {
        if (!scoringEnabled || hasSavedThisRun) return;
        if (beatNumber < startScoringAtBeat) return;

        CurrentScore++;
        OnScoreChanged?.Invoke(CurrentScore);
    }

    private void HandleGameOver()
    {
        if (!scoringEnabled || hasSavedThisRun) return;

        hasSavedThisRun = true;

        LastSessionScore = CurrentScore;
        PlayerPrefs.SetInt(LastSessionScoreKey, LastSessionScore);
        OnSessionScoreSaved?.Invoke(LastSessionScore);

        if (CurrentScore > HighScore)
        {
            HighScore = CurrentScore;
            PlayerPrefs.SetInt(HighScoreKey, HighScore);
            OnHighScoreChanged?.Invoke(HighScore);
        }

        PlayerPrefs.Save();
    }

    private void OnDestroy()
    {
        if (BeatManager.Instance != null)
        {
            BeatManager.Instance.OnBeat.RemoveListener(HandleBeat);
        }

        if (GameOverManager.Instance != null)
        {
            GameOverManager.Instance.OnGameOver.RemoveListener(HandleGameOver);
        }
    }
}