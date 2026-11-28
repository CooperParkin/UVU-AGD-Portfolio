using System.Collections.Generic;
using UnityEngine;

/// <summary>
/// A tutorial chart: like LevelData, but each row can also carry a prompt
/// (text and/or an image) and a checklist of allowed inputs. When the
/// prefabs from such a row reach the Slowmo Zone, the game slows to a stop,
/// shows the prompt, and only accepts the ticked inputs until the player
/// makes one. Rows with no prompt text, no image, and all inputs allowed
/// play normally, with no slowdown.
///
/// Create via the Assets menu, fill it out in the Inspector, and assign it
/// to a TutorialSequencer. Rows don't need to be in beat order (they're
/// sorted automatically).
/// </summary>
[CreateAssetMenu(fileName = "NewTutorialData", menuName = "Rhythm Game/Tutorial Data")]
public class TutorialData : ScriptableObject
{
    public List<TutorialEntry> entries = new List<TutorialEntry>();
}

/// <summary>
/// One row of a tutorial chart. The first four fields work exactly like
/// LaneSpawnEntry. The beat is the ARRIVAL beat.
/// </summary>
[System.Serializable]
public class TutorialEntry
{
    [Tooltip("The beat this entry's prefabs should ARRIVE on (not when they spawn).")]
    public float beat;

    [Tooltip("Prefab to spawn in the top lane at this beat. Leave empty for nothing.")]
    public GameObject topPrefab;

    [Tooltip("Prefab to spawn in the middle lane at this beat. Leave empty for nothing.")]
    public GameObject middlePrefab;

    [Tooltip("Prefab to spawn in the bottom lane at this beat. Leave empty for nothing.")]
    public GameObject bottomPrefab;

    [Header("Allowed Inputs (while this row's stop is active)")]
    [Tooltip("Which directions the player may use once this row reaches the Slowmo Zone. Unticked directions are ignored completely until the player makes an allowed input. All ticked by default. Only applies to rows that stop the game (see below).")]
    public AllowedInputs allowedInputs = new AllowedInputs();

    [Header("Prompt (optional)")]
    [Tooltip("Text shown while the game is slowed for this row. Leave empty for no text.")]
    [TextArea(1, 4)]
    public string promptText;

    [Tooltip("Image shown while the game is slowed for this row. Leave empty for no image.")]
    public Sprite promptImage;

    /// <summary>
    /// True if this row should stop the game at the Slowmo Zone: it has prompt
    /// text or an image, or it restricts the allowed inputs (a restriction
    /// needs a stop to apply in).
    /// </summary>
    public bool TriggersStop =>
        !string.IsNullOrWhiteSpace(promptText) || promptImage != null || allowedInputs.AnyRestricted;
}

/// <summary>A checklist of the four directions. All ticked by default.</summary>
[System.Serializable]
public class AllowedInputs
{
    public bool up = true;
    public bool down = true;
    public bool left = true;
    public bool right = true;

    public bool AnyAllowed => up || down || left || right;
    public bool AnyRestricted => !(up && down && left && right);
}