using System.Collections.Generic;
using UnityEngine;

/// <summary>
/// A full level's chart: a list of beats and what spawns in each lane at
/// each one. Create one of these per song/level via the Assets menu, fill
/// it out in the Inspector, and assign it to a LevelSequencer.
///
/// Entries don't need to be entered in beat order — LevelSequencer sorts
/// them automatically — but keeping them in order makes the list easier
/// to read and edit as your levels grow.
/// </summary>
[CreateAssetMenu(fileName = "NewLevelData", menuName = "Rhythm Game/Level Data")]
public class LevelData : ScriptableObject
{
    public List<LaneSpawnEntry> entries = new List<LaneSpawnEntry>();
}
