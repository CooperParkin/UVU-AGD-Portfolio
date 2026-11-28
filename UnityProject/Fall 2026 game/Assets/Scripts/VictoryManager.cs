using UnityEngine;
using UnityEngine.Events;

/// <summary>
/// Scene-wide victory handler, the counterpart to GameOverManager. Put ONE
/// in the scene. A VictoryTrigger prefab (or any other script) calls
/// TriggerVictory(), and everything in OnVictory runs, once.
///
/// The events live here, on a scene object, rather than on the Victory
/// prefab itself, because a prefab can't point at objects in the scene (like
/// a SceneTransition or a UI canvas) in its own Inspector.
///
/// For example, to go to another scene: add an OnVictory entry, drag in the
/// object with your SceneTransition, and choose SceneTransition >
/// LoadScene(string), typing the scene's name.
/// </summary>
public class VictoryManager : MonoBehaviour
{
    public static VictoryManager Instance { get; private set; }

    [Header("Settings")]
    [Tooltip("If true, victory can't trigger after game over has happened.")]
    [SerializeField] private bool ignoreAfterGameOver = true;

    [Header("Events")]
    [Tooltip("Invoked once, the first time victory is triggered.")]
    public UnityEvent OnVictory;

    public bool IsVictory { get; private set; }

    /// <summary>True if TriggerVictory() would currently do something: victory hasn't happened yet, and game over hasn't blocked it.</summary>
    public bool CanTrigger =>
        !IsVictory && !(ignoreAfterGameOver && GameOverManager.Instance != null && GameOverManager.Instance.IsGameOver);

    private void Awake()
    {
        if (Instance != null && Instance != this)
        {
            Destroy(gameObject);
            return;
        }
        Instance = this;
    }

    private void OnDestroy()
    {
        if (Instance == this)
        {
            Instance = null;
        }
    }

    /// <summary>Triggers victory. Does nothing if victory already happened (or game over has, when that's turned on).</summary>
    public void TriggerVictory()
    {
        if (!CanTrigger) return;

        IsVictory = true;
        OnVictory?.Invoke();
    }
}