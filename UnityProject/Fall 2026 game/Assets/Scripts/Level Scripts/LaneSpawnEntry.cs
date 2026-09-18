using UnityEngine;

/// <summary>
/// One row of a level chart: at a given beat, which prefab (if any) should
/// arrive at each of the three lanes. Leave any lane's prefab field empty
/// for "nothing spawns in that lane at this beat."
///
/// The beat value is the ARRIVAL beat — when the object should reach the
/// lane's target line — not the moment it spawns off-screen. LevelSequencer
/// works backward from this using its lead time to figure out when to
/// actually instantiate it.
/// </summary>
[System.Serializable]
public class LaneSpawnEntry
{
    [Tooltip("The beat this entry's prefabs should ARRIVE on (not when they spawn).")]
    public float beat;

    [Tooltip("Prefab to spawn in the top lane at this beat. Leave empty for nothing.")]
    public GameObject topPrefab;

    [Tooltip("Prefab to spawn in the middle lane at this beat. Leave empty for nothing.")]
    public GameObject middlePrefab;

    [Tooltip("Prefab to spawn in the bottom lane at this beat. Leave empty for nothing.")]
    public GameObject bottomPrefab;
}
