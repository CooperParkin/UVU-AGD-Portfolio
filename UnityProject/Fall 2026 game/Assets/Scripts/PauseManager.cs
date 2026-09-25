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
/// </summary>
[DefaultExecutionOrder(-1000)]
public class PauseManager : MonoBehaviour
{
    public static PauseManager Instance { get; private set; }

    [Header("Events")]
    [Tooltip("Invoked with true when paused, false when resumed. Wire a pause canvas's SetActive(bool) directly to this for a zero-code show/hide.")]
    public UnityEvent<bool> OnPauseStateChanged;

    public bool IsPaused { get; private set; }

    private double totalPausedDuration;
    private double pauseStartDspTime;

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

        // A freshly loaded scene should never start paused. This is a
        // safety net in case some other scene-transition path (now or
        // added later) navigates away without calling Resume() first.
        Time.timeScale = 1f;
    }

    private double GetAdjustedDspTime()
    {
        // While paused, freeze at the adjusted moment we paused at, rather
        // than letting it keep advancing with the real audio clock.
        double reference = IsPaused ? pauseStartDspTime : AudioSettings.dspTime;
        return reference - totalPausedDuration;
    }

    public void TogglePause()
    {
        if (IsPaused) Resume();
        else Pause();
    }

    public void Pause()
    {
        if (IsPaused) return;
        IsPaused = true;

        pauseStartDspTime = AudioSettings.dspTime;
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

        double pausedDuration = AudioSettings.dspTime - pauseStartDspTime;
        totalPausedDuration += pausedDuration;

        IsPaused = false;
        Time.timeScale = 1f;

        if (BeatManager.Instance != null)
        {
            BeatManager.Instance.ResumeMusic();
        }

        OnPauseStateChanged?.Invoke(false);
    }
}