using System;
using System.Collections.Generic;
using UnityEngine;

/// <summary>
/// The list of playable songs, stored as an asset so it persists.
///
/// Create it with: right-click in the Project window > Create > Rhythm >
/// Song Library. Then, in the Inspector, add an element for each song: type
/// its title, drag its audio file onto Clip, and enter its BPM.
///
/// Used by SongSelector (main menu) to let the player choose, and, via
/// SongSelection, by BeatManager to play the chosen song.
/// </summary>
[CreateAssetMenu(fileName = "SongLibrary", menuName = "Rhythm/Song Library")]
public class SongLibrary : ScriptableObject
{
    public enum Difficulty { Easy, Medium, Hard }

    [Serializable]
    public class SongEntry
    {
        [Tooltip("Name shown to the player.")]
        public string title = "New Song";
        [Tooltip("The audio file for this song.")]
        public AudioClip clip;
        [Tooltip("Beats per minute of this song.")]
        [Min(1f)] public float bpm = 120f;
        [Tooltip("Difficulty category shown in the menu.")]
        public Difficulty difficulty = Difficulty.Easy;
        [Tooltip("Where in the song the menu preview starts, in seconds. Use it to skip a quiet intro and preview the good part.")]
        [Min(0f)] public float previewStartSeconds = 0f;
    }

    [SerializeField] private List<SongEntry> songs = new List<SongEntry>();

    public IReadOnlyList<SongEntry> Songs => songs;
    public int Count => songs.Count;

    public SongEntry Get(int index)
    {
        if (songs.Count == 0) return null;

        return songs[Mathf.Clamp(index, 0, songs.Count - 1)];
    }

    private void OnValidate()
    {
        foreach (SongEntry song in songs)
        {
            if (song != null && song.bpm < 1f)
            {
                song.bpm = 1f;
            }
        }
    }
}