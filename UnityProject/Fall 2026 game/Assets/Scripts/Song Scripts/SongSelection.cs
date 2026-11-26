/// <summary>
/// Carries the player's song choice from the main menu into the gameplay
/// scene. Static, so it survives scene loads. BeatManager reads Current when
/// it starts up.
///
/// Current is null until a song has been chosen (for example when you press
/// Play directly in the gameplay scene in the Editor), in which case
/// BeatManager just uses its own Inspector settings.
///
/// It is not saved between runs of the game. The menu remembers the last
/// highlighted song separately (see SongSelector).
/// </summary>
public static class SongSelection
{
    public static SongLibrary.SongEntry Current { get; private set; }

    public static void Select(SongLibrary.SongEntry song)
    {
        Current = song;
    }

    public static void Clear()
    {
        Current = null;
    }
}
