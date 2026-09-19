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

    private void OnEnable()
    {
        if (ScoreManager.Instance != null)
        {
            ScoreManager.Instance.OnScoreChanged.AddListener(UpdateScoreText);
            ScoreManager.Instance.OnHighScoreChanged.AddListener(UpdateHighScoreText);

            UpdateScoreText(ScoreManager.Instance.CurrentScore);
            UpdateHighScoreText(ScoreManager.Instance.HighScore);
        }
        else
        {
            Debug.LogWarning("ScoreDisplay: No ScoreManager found in scene.");
        }
    }

    private void OnDisable()
    {
        if (ScoreManager.Instance != null)
        {
            ScoreManager.Instance.OnScoreChanged.RemoveListener(UpdateScoreText);
            ScoreManager.Instance.OnHighScoreChanged.RemoveListener(UpdateHighScoreText);
        }
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
            highScoreText.text = $"HIGH SCORE: {highScore}";
        }
    }
}