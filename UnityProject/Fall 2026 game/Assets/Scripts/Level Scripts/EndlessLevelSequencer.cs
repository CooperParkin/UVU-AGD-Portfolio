using System;
using System.Collections.Generic;
using UnityEngine;

/// <summary>
/// Drives endless mode: every Beats Per Spawn Check beats, independently
/// rolls each lane's spawn chance and, on success, spawns a random prefab
/// from that lane's pool. Runs indefinitely for as long as it's enabled —
/// there's no end to the pattern, unlike LevelSequencer's fixed chart.
/// </summary>
public class EndlessLevelSequencer : MonoBehaviour
{
    [Header("Data")]
    [SerializeField] private EndlessLevelData levelData;

    [Header("Lane Spawn Points")]
    [SerializeField] private Transform topSpawnPoint;
    [SerializeField] private Transform middleSpawnPoint;
    [SerializeField] private Transform bottomSpawnPoint;

    [Header("Timing")]
    [Tooltip("The X position all lanes should treat as \"arrived\" — typically your HitZone's position.")]
    [SerializeField] private Transform arrivalLineTransform;
    [Tooltip("How many beats a spawned prefab takes to travel to the arrival line.")]
    [SerializeField] private int beatsLeadTime = 4;
    [Tooltip("Beat offset before the very first spawn check.")]
    [SerializeField] private float beatOffset = 4f;

    private double intervalSeconds;
    private double nextCheckDspTime;
    private bool isScheduled;

    private void OnEnable()
    {
        isScheduled = false;
        TrySchedule();
    }

    private void Update()
    {
        if (!isScheduled)
        {
            TrySchedule();
            if (!isScheduled) return;
        }

        double now = AudioSettings.dspTime;
        if (now >= nextCheckDspTime)
        {
            PerformSpawnCheck();

            // This is a repeating check (like BeatEventTrigger), so if a
            // hitch causes us to fall behind, skip the missed checks rather
            // than bursting through several spawn rolls at once.
            double missedIntervals = Math.Floor((now - nextCheckDspTime) / intervalSeconds) + 1;
            nextCheckDspTime += missedIntervals * intervalSeconds;
        }
    }

    private void TrySchedule()
    {
        if (BeatManager.Instance == null || !BeatManager.Instance.IsRunning || levelData == null) return;

        double secPerBeat = 60.0 / BeatManager.Instance.Bpm;
        intervalSeconds = Math.Max(0.001, levelData.beatsPerSpawnCheck * secPerBeat);

        nextCheckDspTime = BeatManager.Instance.StartDspTime + (beatOffset * secPerBeat);

        double now = AudioSettings.dspTime;
        double elapsed = now - nextCheckDspTime;
        if (elapsed > 0)
        {
            double wholeIntervalsElapsed = Math.Floor(elapsed / intervalSeconds);
            nextCheckDspTime += wholeIntervalsElapsed * intervalSeconds;
        }

        isScheduled = true;
    }

    private void PerformSpawnCheck()
    {
        TryLaneSpawn(levelData.topLane, topSpawnPoint);
        TryLaneSpawn(levelData.middleLane, middleSpawnPoint);
        TryLaneSpawn(levelData.bottomLane, bottomSpawnPoint);
    }

    private void TryLaneSpawn(LanePool lane, Transform spawnPoint)
    {
        if (lane == null || lane.prefabPool == null || lane.prefabPool.Count == 0) return;
        if (UnityEngine.Random.value > lane.spawnChance) return;

        GameObject prefab = PickWeightedPrefab(lane.prefabPool);
        if (prefab == null) return;

        BeatSyncUtility.SpawnSynced(prefab, spawnPoint, arrivalLineTransform, beatsLeadTime);
    }

    private GameObject PickWeightedPrefab(List<WeightedPrefab> pool)
    {
        float totalWeight = 0f;
        foreach (WeightedPrefab entry in pool)
        {
            if (entry.prefab != null)
            {
                totalWeight += Mathf.Max(0f, entry.weight);
            }
        }

        if (totalWeight <= 0f) return null;

        float roll = UnityEngine.Random.value * totalWeight;
        float cumulative = 0f;
        foreach (WeightedPrefab entry in pool)
        {
            if (entry.prefab == null) continue;

            cumulative += Mathf.Max(0f, entry.weight);
            if (roll <= cumulative)
            {
                return entry.prefab;
            }
        }

        // Fallback for floating-point edge cases at the boundary.
        for (int i = pool.Count - 1; i >= 0; i--)
        {
            if (pool[i].prefab != null) return pool[i].prefab;
        }
        return null;
    }
}