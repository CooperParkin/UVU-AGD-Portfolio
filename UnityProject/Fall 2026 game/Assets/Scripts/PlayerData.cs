using UnityEngine;

/// <summary>
/// One place for saved player flags, stored in PlayerPrefs so they persist
/// between runs of the game. Read and write them from any script, no scene
/// object needed:
///
///     if (PlayerData.TutorialCompleted) { ... }
///     PlayerData.TutorialCompleted = true;
///
/// (Coins and the high score are stored by CoinManager and ScoreManager.)
/// </summary>
public static class PlayerData
{
    // The PlayerPrefs key. PlayerPrefs has no bool type, so it's stored as
    // 1 (true) or 0 (false), and reads as false if it was never set.
    public const string TutorialKey = "Tutorial";

    /// <summary>True once the player has finished the tutorial. Saved immediately when set.</summary>
    public static bool TutorialCompleted
    {
        get => PlayerPrefs.GetInt(TutorialKey, 0) == 1;
        set
        {
            PlayerPrefs.SetInt(TutorialKey, value ? 1 : 0);
            PlayerPrefs.Save();
        }
    }
}
