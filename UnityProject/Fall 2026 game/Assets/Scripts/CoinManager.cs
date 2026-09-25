using UnityEngine;
using UnityEngine.Events;

/// <summary>
/// Tracks a persistent coin total that carries across every scene and
/// every session, saved via PlayerPrefs. Unlike ScoreManager, there's no
/// per-run reset — coins just accumulate forever until you explicitly
/// spend/reset them.
///
/// Place one of these in every scene where coins can be collected or
/// displayed (same pattern as BeatManager, CharacterRegistry, etc.) — each
/// one loads the same saved total in Awake(), so it's always in sync.
/// </summary>
public class CoinManager : MonoBehaviour
{
    public static CoinManager Instance { get; private set; }

    [System.Serializable]
    public class IntUnityEvent : UnityEvent<int> { }

    [Header("Events")]
    [Tooltip("Fired with the new coin total every time it changes.")]
    public IntUnityEvent OnCoinsChanged;

    private const string TotalCoinsKey = "CoinManager_TotalCoins";

    public int TotalCoins { get; private set; }

    private void Awake()
    {
        if (Instance != null && Instance != this)
        {
            Destroy(gameObject);
            return;
        }
        Instance = this;

        TotalCoins = PlayerPrefs.GetInt(TotalCoinsKey, 0);
    }

    /// <summary>Adds coins to the total (use a negative amount to spend/deduct) and saves immediately.</summary>
    public void AddCoins(int amount)
    {
        if (amount == 0) return;

        TotalCoins = Mathf.Max(0, TotalCoins + amount);
        PlayerPrefs.SetInt(TotalCoinsKey, TotalCoins);
        PlayerPrefs.Save();

        OnCoinsChanged?.Invoke(TotalCoins);
    }
}
