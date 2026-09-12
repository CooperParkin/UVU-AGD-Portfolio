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

    private void Start()
    {
        if (playOnStart)
        {
            StartClock();
        }
    }

    private void RecalculateSecPerBeat()
    {
        secPerBeat = 60.0 / bpm;
    }

    /// <summary>Starts (or restarts) the beat clock from beat 0, right now.</summary>
    public void StartClock()
    {
        beatCount = 0;

        double startDspTime = AudioSettings.dspTime + startOffsetSeconds;

        if (musicSource != null)
        {
            musicSource.Stop();
            musicSource.PlayScheduled(startDspTime);
        }

        nextBeatDspTime = startDspTime;
        isRunning = true;
    }

    /// <summary>Stops the beat clock. No more OnBeat events will fire until StartClock() is called again.</summary>
    public void StopClock()
    {
        isRunning = false;
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

        // Compare against the absolute audio clock rather than accumulating
        // Time.deltaTime, so timing never drifts even over a long song.
        // The while loop (not "if") covers rare frame hitches that skip a beat.
        while (AudioSettings.dspTime >= nextBeatDspTime)
        {
            OnBeat?.Invoke(beatCount);
            beatCount++;
            nextBeatDspTime += secPerBeat;
        }
    }
}