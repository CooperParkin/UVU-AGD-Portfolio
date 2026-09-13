using System;
using UnityEngine;
using UnityEngine.Events;

/// <summary>
/// Drop this on any GameObject to call an action of your choice on a
/// fractional-beat rhythm, synced to BeatManager. Supports whole beats
/// (4 = once per bar in 4/4) as well as fractions (0.5 = every half beat,
/// 0.25 = every quarter beat) for fast/chaotic sections.
///
/// Schedules directly against the audio clock (AudioSettings.dspTime),
/// anchored to BeatManager's actual song start time, so it's precise at
/// any interval rather than being limited to whole-beat resolution.
///
/// Example: set Trigger Every N Beats to 0.25 and assign your
/// EnemySpawner.SpawnEnemy() method to OnTrigger in the Inspector —
/// it'll fire 4 times per beat.
/// </summary>
public class BeatEventTrigger : MonoBehaviour
{
    [Tooltip("How many beats between triggers. Supports fractions: 1 = every beat, 4 = every 4th beat (a bar in 4/4), 0.5 = every half beat, 0.25 = every quarter beat.")]
    [SerializeField] private float triggerEveryNBeats = 4f;

    [Tooltip("Beat offset (in beats, fractions allowed) before the first trigger fires. 0 aligns to the song's beat 0.")]
    [SerializeField] private float beatOffset = 0f;

    [Tooltip("The action(s) to call each time this triggers. Assign your spawn/enemy/item functions here in the Inspector.")]
    public UnityEvent OnTrigger;

    private double intervalSeconds;
    private double nextTriggerDspTime;
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

        // While loop (not "if") covers rare frame hitches that skip an interval.
        while (AudioSettings.dspTime >= nextTriggerDspTime)
        {
            OnTrigger?.Invoke();
            nextTriggerDspTime += intervalSeconds;
        }
    }

    private void TrySchedule()
    {
        if (BeatManager.Instance == null) return;

        double secPerBeat = 60.0 / BeatManager.Instance.Bpm;
        intervalSeconds = Math.Max(0.001, triggerEveryNBeats * secPerBeat);

        nextTriggerDspTime = BeatManager.Instance.StartDspTime + (beatOffset * secPerBeat);

        // If the beat clock already started before this trigger was enabled
        // (e.g. enabled mid-song), fast-forward to the next valid future trigger
        // instead of firing a burst of "missed" triggers all at once.
        double now = AudioSettings.dspTime;
        if (nextTriggerDspTime < now)
        {
            double missedIntervals = Math.Floor((now - nextTriggerDspTime) / intervalSeconds) + 1;
            nextTriggerDspTime += missedIntervals * intervalSeconds;
        }

        isScheduled = true;
    }
}