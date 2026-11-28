using System.Collections.Generic;
using UnityEngine;

/// <summary>
/// Drives a tutorial from a TutorialData chart. Works exactly like
/// LevelSequencer (each row's prefabs are spawned early enough to arrive on
/// the row's beat), and additionally tags the prefabs of any row that has a
/// prompt, so the SlowmoZone knows to slow the game when they reach it.
///
/// Use this INSTEAD of the Endless/Level sequencer in the tutorial scene.
/// </summary>
public class TutorialSequencer : MonoBehaviour
{
    [Header("Chart")]
    [SerializeField] private TutorialData tutorialData;

    [Header("Lane Spawn Points")]
    [SerializeField] private Transform topSpawnPoint;
    [SerializeField] private Transform middleSpawnPoint;
    [SerializeField] private Transform bottomSpawnPoint;

    [Header("Timing")]
    [Tooltip("The X position all lanes should treat as \"arrived\" — typically your HitZone's position.")]
    [SerializeField] private Transform arrivalLineTransform;
    [Tooltip("How many beats before its arrival beat a prefab should spawn (its travel time). Same for all three lanes.")]
    [SerializeField] private int beatsLeadTime = 4;

    private List<TutorialEntry> sortedEntries;
    private int nextEntryIndex;
    private bool isScheduled;

    private void OnEnable()
    {
        isScheduled = false;
        PrepareEntries();
    }

    private void PrepareEntries()
    {
        if (tutorialData == null || tutorialData.entries == null)
        {
            sortedEntries = new List<TutorialEntry>();
            return;
        }

        sortedEntries = new List<TutorialEntry>(tutorialData.entries);
        sortedEntries.Sort((a, b) => a.beat.CompareTo(b.beat));
        nextEntryIndex = 0;
    }

    private void Update()
    {
        if (!isScheduled)
        {
            if (BeatManager.Instance == null || !BeatManager.Instance.IsRunning) return;
            isScheduled = true;
        }

        if (sortedEntries == null || nextEntryIndex >= sortedEntries.Count) return;

        double secPerBeat = 60.0 / BeatManager.Instance.Bpm;
        double now = PauseManager.CurrentDspTime;

        // Same rule as LevelSequencer: every due entry fires, none skipped.
        while (nextEntryIndex < sortedEntries.Count)
        {
            TutorialEntry entry = sortedEntries[nextEntryIndex];
            double spawnDspTime = BeatManager.Instance.StartDspTime + (entry.beat - beatsLeadTime) * secPerBeat;

            if (now < spawnDspTime) break;

            SpawnEntry(entry);
            nextEntryIndex++;
        }
    }

    private void SpawnEntry(TutorialEntry entry)
    {
        // One shared prompt per row, so it only triggers once.
        TutorialPromptInfo info = entry.TriggersStop
            ? new TutorialPromptInfo(entry.promptText, entry.promptImage, entry.allowedInputs)
            : null;

        Spawn(entry.topPrefab, topSpawnPoint, info);
        Spawn(entry.middlePrefab, middleSpawnPoint, info);
        Spawn(entry.bottomPrefab, bottomSpawnPoint, info);
    }

    private void Spawn(GameObject prefab, Transform spawnPoint, TutorialPromptInfo info)
    {
        GameObject instance = BeatSyncUtility.SpawnSynced(prefab, spawnPoint, arrivalLineTransform, beatsLeadTime);

        if (instance != null && info != null)
        {
            instance.AddComponent<TutorialPromptTag>().Init(info);
        }
    }
}