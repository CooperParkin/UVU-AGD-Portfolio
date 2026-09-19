using System.Collections.Generic;
using UnityEngine;

/// <summary>
/// A single prefab option within a lane's pool, with a relative weight
/// controlling how often it's picked compared to the pool's other options.
/// </summary>
[System.Serializable]
public class WeightedPrefab
{
    public GameObject prefab;

    [Min(0.01f)]
    [Tooltip("Relative likelihood of this prefab being picked vs. others in the same pool. E.g. a weight of 3 is picked 3x as often as a weight of 1. Not a percentage — only relative to the other weights in this pool.")]
    public float weight = 1f;
}

/// <summary>
/// Rules for one lane's random spawning in endless mode: which prefabs can
/// appear there (each with its own relative weight), and how often
/// something spawns at all.
/// </summary>
[System.Serializable]
public class LanePool
{
    [Tooltip("Weighted prefab options for this lane. Leave empty to never spawn anything here (e.g. a lane you don't want active in this endless config).")]
    public List<WeightedPrefab> prefabPool = new List<WeightedPrefab>();

    [Range(0f, 1f)]
    [Tooltip("Chance (0-1) that this lane spawns something at each spawn check. Lower values create more gaps/empty lanes.")]
    public float spawnChance = 0.5f;
}

/// <summary>
/// Config asset for endless mode: per-lane prefab pools and spawn chances,
/// plus how often (in beats) a spawn decision is made. Unlike LevelData,
/// there's no fixed chart — EndlessLevelSequencer rolls new spawns
/// procedurally for as long as the level runs.
/// </summary>
[CreateAssetMenu(fileName = "NewEndlessLevelData", menuName = "Rhythm Game/Endless Level Data")]
public class EndlessLevelData : ScriptableObject
{
    [Header("Lane Rules")]
    public LanePool topLane;
    public LanePool middleLane;
    public LanePool bottomLane;

    [Header("Timing")]
    [Tooltip("How many beats between each spawn decision (checked independently per lane).")]
    public float beatsPerSpawnCheck = 2f;
}