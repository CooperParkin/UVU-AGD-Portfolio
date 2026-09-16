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

        double now = AudioSettings.dspTime;
        if (now >= nextTriggerDspTime)
        {
            OnTrigger?.Invoke();

            // Advance past however many intervals we've fallen behind by
            // (normally just 1). If a startup hitch or frame stall meant we
            // fell behind by more than one interval, skip the missed ones
            // instead of firing a burst of triggers all in this one frame.
            double missedIntervals = Math.Floor((now - nextTriggerDspTime) / intervalSeconds) + 1;
            nextTriggerDspTime += missedIntervals * intervalSeconds;
        }
    }

    private void TrySchedule()
    {
        // Wait until BeatManager has actually started its clock — not just
        // exists — since StartDspTime is only valid once StartClock() has
        // run. Scheduling too early would lock in a stale anchor (0) and
        // never re-sync, causing an inconsistent offset from the real beat.
        if (BeatManager.Instance == null || !BeatManager.Instance.IsRunning) return;

        double secPerBeat = 60.0 / BeatManager.Instance.Bpm;
        intervalSeconds = Math.Max(0.001, triggerEveryNBeats * secPerBeat);

        nextTriggerDspTime = BeatManager.Instance.StartDspTime + (beatOffset * secPerBeat);

        // If real time has already passed since the intended first trigger
        // (e.g. a startup hitch, or enabling mid-song), snap forward to the
        // most recent interval boundary that's already due — not one cycle
        // further. This lands on exactly one well-defined moment for
        // Update() to fire, rather than leaving it stale (which could let
        // a jagged hitch cause two fires close together) or skipping an
        // extra cycle (which would delay the legitimate first trigger).
        double now = AudioSettings.dspTime;
        double elapsed = now - nextTriggerDspTime;
        if (elapsed > 0)
        {
            double wholeIntervalsElapsed = Math.Floor(elapsed / intervalSeconds);
            nextTriggerDspTime += wholeIntervalsElapsed * intervalSeconds;
        }

        isScheduled = true;
    }
}