using UnityEngine;

/// <summary>
/// Helper for calculating the speed a ScrollingMover needs in order to
/// travel a given distance in an exact number of beats, based on the
/// current BeatManager tempo. Use this when spawning an object so it
/// arrives at your hit-zone precisely on a beat, regardless of BPM.
/// </summary>
public static class BeatSyncUtility
{
    /// <summary>
    /// Returns the speed (units/sec) needed to cover 'distance' units in
    /// exactly 'beatsToTravel' beats, at the BeatManager's current BPM.
    /// </summary>
    public static float CalculateSpeedForBeats(float distance, int beatsToTravel)
    {
        if (BeatManager.Instance == null)
        {
            Debug.LogWarning("BeatSyncUtility: No BeatManager found in scene. Returning a fallback speed.");
            return distance; // fallback: 1 unit/sec per unit of distance, better than dividing by zero
        }

        if (beatsToTravel <= 0)
        {
            Debug.LogWarning("BeatSyncUtility: beatsToTravel must be > 0. Defaulting to 1.");
            beatsToTravel = 1;
        }

        float secPerBeat = 60f / BeatManager.Instance.Bpm;
        float travelTime = beatsToTravel * secPerBeat;
        return distance / travelTime;
    }

    /// <summary>
    /// Spawns a prefab at spawnPoint and sets its ScrollingMover speed so it
    /// arrives at arrivalLine exactly beatsToTravel beats later. Shared by
    /// any script that spawns lane content (LevelSequencer,
    /// EndlessLevelSequencer, BeatSyncedSpawner, etc.) so the spawn+speed
    /// logic lives in one place.
    /// </summary>
    public static GameObject SpawnSynced(GameObject prefab, Transform spawnPoint, Transform arrivalLine, int beatsToTravel)
    {
        if (prefab == null || spawnPoint == null) return null;

        GameObject instance = Object.Instantiate(prefab, spawnPoint.position, Quaternion.identity);

        ScrollingMover mover = instance.GetComponent<ScrollingMover>();
        if (mover == null)
        {
            Debug.LogWarning($"BeatSyncUtility: spawned prefab '{prefab.name}' has no ScrollingMover component.");
            return instance;
        }

        if (arrivalLine == null)
        {
            Debug.LogWarning("BeatSyncUtility: no arrival line Transform provided, can't calculate speed.");
            return instance;
        }

        float distance = spawnPoint.position.x - arrivalLine.position.x;
        mover.Speed = CalculateSpeedForBeats(distance, beatsToTravel);
        return instance;
    }
}