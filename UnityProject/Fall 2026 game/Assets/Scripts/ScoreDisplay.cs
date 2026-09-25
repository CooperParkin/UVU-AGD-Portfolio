using TMPro;
using UnityEngine;

/// <summary>
/// Displays the live endless-mode score as "SCORE: X" on a TextMeshProUGUI
/// element. Updates automatically whenever ScoreManager's score changes.
/// </summary>
public class ScoreDisplay : MonoBehaviour
{
    [SerializeField] private TextMeshProUGUI scoreText;
    [SerializeField] private TextMeshProUGUI highScoreText;

    private bool isSubscribed;

    private void OnEnable()
    {
        TrySubscribe();
    }

    private void Update()
    {
        if (!isSubscribed)
        {
            TrySubscribe();
        }
    }

    private void TrySubscribe()
    {
        if (isSubscribed || ScoreManager.Instance == null) return;

        ScoreManager.Instance.OnScoreChanged.AddListener(UpdateScoreText);
        ScoreManager.Instance.OnHighScoreChanged.AddListener(UpdateHighScoreText);

        UpdateScoreText(ScoreManager.Instance.CurrentScore);
        UpdateHighScoreText(ScoreManager.Instance.HighScore);

        isSubscribed = true;
    }

    private void OnDisable()
    {
        if (isSubscribed && ScoreManager.Instance != null)
        {
            ScoreManager.Instance.OnScoreChanged.RemoveListener(UpdateScoreText);
            ScoreManager.Instance.OnHighScoreChanged.RemoveListener(UpdateHighScoreText);
        }
        isSubscribed = false;
    }

    private void UpdateScoreText(int score)
    {
        if (scoreText != null)
        {
            scoreText.text = $"SCORE: {score}";
        }
    }

    private void UpdateHighScoreText(int highScore)
    {
        if (highScoreText != null)
        {
            highScoreText.text = $"HIGHSCORE: {highScore}";
        }
    }
}