using TMPro;
using UnityEngine;

/// <summary>
/// Displays the universal coin total as "COINS: X" on a TextMeshProUGUI
/// element. Updates automatically whenever CoinManager's total changes.
/// </summary>
public class CoinDisplay : MonoBehaviour
{
    [SerializeField] private TextMeshProUGUI coinText;

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
        if (isSubscribed || CoinManager.Instance == null) return;

        CoinManager.Instance.OnCoinsChanged.AddListener(UpdateCoinText);
        UpdateCoinText(CoinManager.Instance.TotalCoins);
        isSubscribed = true;
    }

    private void OnDisable()
    {
        if (isSubscribed && CoinManager.Instance != null)
        {
            CoinManager.Instance.OnCoinsChanged.RemoveListener(UpdateCoinText);
        }
        isSubscribed = false;
    }

    private void UpdateCoinText(int totalCoins)
    {
        if (coinText != null)
        {
            coinText.text = $"COINS: {totalCoins}";
        }
    }
}