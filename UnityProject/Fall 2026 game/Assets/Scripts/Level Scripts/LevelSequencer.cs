using System;
using System.Collections.Generic;
using UnityEngine;

/// <summary>
/// Drives a level from a LevelData chart: for each entry, spawns the
/// assigned prefab(s) early enough that they arrive at the lane's target
/// line exactly on the entry's specified beat, using the same
/// distance/speed math as BeatSyncedSpawner.
///
/// Top and bottom lane prefabs just need a ScrollingMover (they scroll
/// through and despawn automatically). Middle lane prefabs should also
/// implement IZoneInteractable, since that's the lane with the HitZone.
/// </summary>
public class LevelSequencer : MonoBehaviour
{
    [Header("Chart")]
    [SerializeField] private LevelData levelData;

    [Header("Lane Spawn Points")]
    [Tooltip("Where top-lane prefabs are instantiated (e.g. off-screen right, top row).")]
    [SerializeField] private Transform topSpawnPoint;
    [Tooltip("Where middle-lane prefabs are instantiated.")]
    [SerializeField] private Transform middleSpawnPoint;
    [Tooltip("Where bottom-lane prefabs are instantiated.")]
    [SerializeField] private Transform bottomSpawnPoint;

    [Header("Timing")]
    [Tooltip("The X position all lanes should treat as \"arrived\" — typically your HitZone's position, even for lanes that don't interact with it.")]
    [SerializeField] private Transform arrivalLineTransform;
    [Tooltip("How many beats before its arrival beat a prefab should spawn (i.e. its travel time). Same value applies to all three lanes so they arrive in sync.")]
    [SerializeField] private int beatsLeadTime = 4;

    private List<LaneSpawnEntry> sortedEntries;
    private int nextEntryIndex;
    private bool isScheduled;

    private void OnEnable()
    {
        isScheduled = false;
        PrepareEntries();
    }

    private void PrepareEntries()
    {
        if (levelData == null || levelData.entries == null)
        {
            sortedEntries = new List<LaneSpawnEntry>();
            return;
        }

        sortedEntries = new List<LaneSpawnEntry>(levelData.entries);
        sortedEntries.Sort((a, b) => a.beat.CompareTo(b.beat));
        nextEntryIndex = 0;
    }

    private void Update()
    {
        if (!isScheduled)
        {
            TrySchedule();
            if (!isScheduled) return;
        }

        if (sortedEntries == null || nextEntryIndex >= sortedEntries.Count) return;

        double secPerBeat = 60.0 / BeatManager.Instance.Bpm;
        double now = PauseManager.CurrentDspTime;

        // Fire every entry that's due. Unlike a repeating BeatEventTrigger,
        // these are unique, hand-placed level entries, not an interval to
        // resync to — so if a hitch causes several to become due at once,
        // we fire all of them rather than skipping any (missing a chart
        // entry entirely would be worse than a rare double-up after a stall).
        while (nextEntryIndex < sortedEntries.Count)
        {
            LaneSpawnEntry entry = sortedEntries[nextEntryIndex];
            double spawnDspTime = BeatManager.Instance.StartDspTime + (entry.beat - beatsLeadTime) * secPerBeat;

            if (now < spawnDspTime) break;

            SpawnEntry(entry);
            nextEntryIndex++;
        }
    }

    private void TrySchedule()
    {
        if (BeatManager.Instance == null || !BeatManager.Instance.IsRunning) return;
        isScheduled = true;
    }

    private void SpawnEntry(LaneSpawnEntry entry)
    {
        BeatSyncUtility.SpawnSynced(entry.topPrefab, topSpawnPoint, arrivalLineTransform, beatsLeadTime);
        BeatSyncUtility.SpawnSynced(entry.middlePrefab, middleSpawnPoint, arrivalLineTransform, beatsLeadTime);
        BeatSyncUtility.SpawnSynced(entry.bottomPrefab, bottomSpawnPoint, arrivalLineTransform, beatsLeadTime);
    }
}