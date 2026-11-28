using UnityEngine;
using UnityEngine.Events;

/// <summary>
/// Central pause manager. Freezes gameplay via Time.timeScale, pauses the
/// music, and provides CurrentDspTime — a pause-aware version of
/// AudioSettings.dspTime that every beat-scheduling script (BeatManager,
/// BeatEventTrigger, LevelSequencer, EndlessLevelSequencer) reads from
/// instead of the raw audio clock. Since dspTime keeps advancing in real
/// time no matter what, without this adjustment those scripts would keep
/// scheduling/firing while "paused."
///
/// The adjusted clock can also run at a reduced speed (SetClockScale), which
/// is how slow-motion effects keep the beat clock in step with the game
/// world instead of letting spawns run ahead of it. Pausing is simply a
/// clock speed of 0.
/// </summary>
[DefaultExecutionOrder(-1000)]
public class PauseManager : MonoBehaviour
{
    public static PauseManager Instance { get; private set; }

    [Header("Events")]
    [Tooltip("Invoked with true when paused, false when resumed. Wire a pause canvas's SetActive(bool) directly to this for a zero-code show/hide.")]
    public UnityEvent<bool> OnPauseStateChanged;

    public bool IsPaused { get; private set; }

    /// <summary>
    /// The Time.timeScale restored when the game is un-paused. 1 normally.
    /// A slow-motion effect that's in progress sets this to its current
    /// scale, so pausing and un-pausing in the middle of it doesn't jump
    /// the game back to full speed.
    /// </summary>
    public float ResumeTimeScale { get; set; } = 1f;

    /// <summary>The speed the beat clock is currently running at, 1 = real time.</summary>
    public float ClockScale => clockScale;

    // Total real dsp time that has NOT been counted by the adjusted clock
    // (time spent paused, plus the lost part of any slow-motion), as of
    // lastFoldDspTime. Time since then is accounted for on demand.
    private double lostTime;
    private double lastFoldDspTime;
    private float clockScale = 1f;

    /// <summary>
    /// The current pause-aware dsp time. Falls back to raw
    /// AudioSettings.dspTime if no PauseManager exists in the scene, so
    /// scripts using this never need their own null-check fallback.
    /// </summary>
    public static double CurrentDspTime => Instance != null ? Instance.GetAdjustedDspTime() : AudioSettings.dspTime;

    private void Awake()
    {
        if (Instance != null && Instance != this)
        {
            Destroy(gameObject);
            return;
        }
        Instance = this;

        lastFoldDspTime = AudioSettings.dspTime;

        // A freshly loaded scene should never start paused. This is a
        // safety net in case some other scene-transition path (now or
        // added later) navigates away without calling Resume() first.
        Time.timeScale = 1f;
    }

    // While paused the clock doesn't move at all. Otherwise it moves at
    // clockScale times real time.
    private double EffectiveClockScale => IsPaused ? 0.0 : clockScale;

    private double GetAdjustedDspTime()
    {
        double now = AudioSettings.dspTime;
        return now - lostTime - (now - lastFoldDspTime) * (1.0 - EffectiveClockScale);
    }

    // Settles the time since the last fold into lostTime at the speed that
    // has been in effect. Called just before that speed changes.
    private void FoldClock()
    {
        double now = AudioSettings.dspTime;
        lostTime += (now - lastFoldDspTime) * (1.0 - EffectiveClockScale);
        lastFoldDspTime = now;
    }

    /// <summary>
    /// Sets the beat clock's speed (0 to 1, where 1 is real time). Use it
    /// alongside Time.timeScale and the music's pitch for a slow-motion that
    /// keeps everything in sync. Has no visible effect while paused.
    /// </summary>
    public void SetClockScale(float scale)
    {
        FoldClock();
        clockScale = Mathf.Clamp01(scale);
    }

    public void TogglePause()
    {
        if (IsPaused) Resume();
        else Pause();
    }

    public void Pause()
    {
        if (IsPaused) return;

        FoldClock();
        IsPaused = true;
        Time.timeScale = 0f;

        if (BeatManager.Instance != null)
        {
            BeatManager.Instance.PauseMusic();
        }

        OnPauseStateChanged?.Invoke(true);
    }

    public void Resume()
    {
        if (!IsPaused) return;

        FoldClock();
        IsPaused = false;
        Time.timeScale = ResumeTimeScale;

        if (BeatManager.Instance != null)
        {
            BeatManager.Instance.ResumeMusic();
        }

        OnPauseStateChanged?.Invoke(false);
    }
}