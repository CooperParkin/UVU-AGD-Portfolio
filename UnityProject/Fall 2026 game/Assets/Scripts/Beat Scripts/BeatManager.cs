using System;
using UnityEngine;
using UnityEngine.Events;

/// <summary>
/// The "conductor" for rhythm-based gameplay. Ticks a beat according to the
/// configured BPM and fires OnBeat every beat. If you assign a music
/// AudioSource, the beat clock is locked to the audio hardware clock
/// (AudioSettings.dspTime) so it never drifts out of sync with the song,
/// even over a long track.
///
/// Put this on a single persistent GameObject in your scene.
/// </summary>
[DisallowMultipleComponent]
[DefaultExecutionOrder(-1000)] // Guarantees this Awake runs before other scripts' Awake/OnEnable
public class BeatManager : MonoBehaviour
{
    public static BeatManager Instance { get; private set; }

    [System.Serializable]
    public class BeatEvent : UnityEvent<int> { }

    [Header("Tempo")]
    [Tooltip("Beats per minute of the song.")]
    [SerializeField] private float bpm = 120f;

    [Header("Audio Sync (optional but recommended)")]
    [Tooltip("If assigned, this AudioSource is scheduled to start precisely with the beat grid, and the beat clock is driven by the audio hardware clock instead of frame time.")]
    [SerializeField] private AudioSource musicSource;
    [Tooltip("Seconds to shift the beat grid if the song has lead-in silence before beat 0, or if you want beats to land slightly early/late relative to what you hear.")]
    [SerializeField] private double startOffsetSeconds = 0.0;
    [Tooltip("Start the clock automatically on Start(). Turn off if you want to call StartClock() yourself later.")]
    [SerializeField] private bool playOnStart = true;

    [Header("Events")]
    [Tooltip("Fired every beat. Int param is the beat count starting at 0.")]
    public BeatEvent OnBeat;

    private double secPerBeat;
    private double nextBeatDspTime;
    private int beatCount;
    private bool isRunning;

    public float Bpm => bpm;
    public int CurrentBeat => beatCount;
    public bool IsRunning => isRunning;
    public double StartDspTime { get; private set; }

    private void Awake()
    {
        if (Instance != null && Instance != this)
        {
            Destroy(gameObject);
            return;
        }
        Instance = this;

        RecalculateSecPerBeat();
    }

    [Header("Startup Stabilization")]
    [Tooltip("Real-time delay (seconds, unaffected by Time.timeScale) before the beat clock starts. Makes the lead-in identical every time the scene loads — first launch or a mid-game reset — rather than depending on how long any startup hitch happens to last.")]
    [SerializeField] private float startupStabilizationDelay = 0.1f;

    private void Start()
    {
        if (playOnStart)
        {
            StartCoroutine(StartClockAfterStabilization());
        }
    }

    private System.Collections.IEnumerator StartClockAfterStabilization()
    {
        // Baseline real-time wait first.
        yield return new WaitForSecondsRealtime(startupStabilizationDelay);

        // Then actively wait for several consecutive fast/stable frames.
        // A fixed delay alone isn't enough — a hitch can land right after
        // it ends (as seen in testing: the frame immediately after
        // StartClock() ran took ~0.5 real seconds on its own). Requiring
        // consecutive stable frames means we only anchor the beat grid once
        // the engine has actually settled, regardless of when exactly a
        // stall happens to occur.
        const int stableFramesNeeded = 5;
        const float maxAcceptableFrameTime = 0.05f; // 50ms (i.e. faster than 20fps)
        int stableCount = 0;
        while (stableCount < stableFramesNeeded)
        {
            yield return null;
            stableCount = Time.unscaledDeltaTime <= maxAcceptableFrameTime ? stableCount + 1 : 0;
        }

        StartClock();
    }

    private void RecalculateSecPerBeat()
    {
        secPerBeat = 60.0 / bpm;
    }

    /// <summary>Starts (or restarts) the beat clock from beat 0, right now.</summary>
    public void StartClock()
    {
        beatCount = 0;

        double startDspTime = PauseManager.CurrentDspTime + startOffsetSeconds;
        StartDspTime = startDspTime;

        if (musicSource != null)
        {
            musicSource.Stop();
            musicSource.PlayScheduled(AudioSettings.dspTime + startOffsetSeconds);
        }

        nextBeatDspTime = startDspTime;
        isRunning = true;
    }

    /// <summary>Stops the beat clock. No more OnBeat events will fire until StartClock() is called again.</summary>
    public void StopClock()
    {
        isRunning = false;
    }

    /// <summary>Pauses the music in place (preserving playback position). Called by PauseManager.</summary>
    public void PauseMusic()
    {
        if (musicSource != null && musicSource.isPlaying)
        {
            musicSource.Pause();
        }
    }

    /// <summary>Resumes the music from where it was paused. Called by PauseManager.</summary>
    public void ResumeMusic()
    {
        if (musicSource != null)
        {
            musicSource.UnPause();
        }
    }

    /// <summary>
    /// Changes tempo at runtime (e.g. for a song section change). Takes effect
    /// starting from the next beat onward.
    /// </summary>
    public void SetBpm(float newBpm)
    {
        bpm = Mathf.Max(1f, newBpm);
        RecalculateSecPerBeat();
    }

    private void Update()
    {
        if (!isRunning) return;

        double now = PauseManager.CurrentDspTime;
        if (now >= nextBeatDspTime)
        {
            // If a startup hitch or frame stall meant more than one beat's
            // worth of time passed, catch beatCount up but only invoke
            // OnBeat once for the current beat, instead of bursting through
            // every missed beat in this one frame.
            double missedBeats = Math.Floor((now - nextBeatDspTime) / secPerBeat) + 1;
            beatCount += (int)missedBeats - 1;

            OnBeat?.Invoke(beatCount);
            beatCount++;
            nextBeatDspTime += missedBeats * secPerBeat;
        }
    }
}