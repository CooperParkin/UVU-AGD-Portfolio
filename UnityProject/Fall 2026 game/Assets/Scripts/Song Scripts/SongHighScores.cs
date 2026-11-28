using UnityEngine;

/// <summary>
/// Saved high scores, one per song, stored in PlayerPrefs and keyed by the
/// song's title from the Song Library. Anything that has a song title can
/// read or update that song's high score, no scene object needed.
///
/// Because the title is the key, renaming a song in the Song Library starts
/// it on a fresh high score of 0 (the old one stays saved under the old
/// name), and two songs given the same title would share one score.
/// </summary>
public static class SongHighScores
{
    private const string KeyPrefix = "SongHighScore_";

    private static string KeyFor(string title)
    {
        return KeyPrefix + title;
    }

    /// <summary>The saved high score for this song, 0 if it has none yet.</summary>
    public static int Get(string title)
    {
        return PlayerPrefs.GetInt(KeyFor(title), 0);
    }

    /// <summary>
    /// Saves the score if it beats the song's current high score. Returns
    /// true if it did. Doesn't call PlayerPrefs.Save(); the caller does that.
    /// </summary>
    public static bool TrySet(string title, int score)
    {
        if (score <= Get(title)) return false;

        PlayerPrefs.SetInt(KeyFor(title), score);
        return true;
    }
}
