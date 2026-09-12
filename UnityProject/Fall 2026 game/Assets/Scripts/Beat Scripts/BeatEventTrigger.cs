using UnityEngine;
using UnityEngine.Events;

/// <summary>
/// Drop this on any GameObject to call an action of your choice every N beats,
/// synced to BeatManager. Great for spawning enemies/items on a rhythm.
///
/// Example: set "Trigger Every N Beats" to 4, then assign your
/// EnemySpawner.SpawnEnemy() method to OnTrigger in the Inspector —
/// it'll fire every 4th beat.
/// </summary>
public class BeatEventTrigger : MonoBehaviour
{
    [Tooltip("How many beats between triggers. 1 = every beat, 4 = every 4th beat (one bar in 4/4), etc.")]
    [SerializeField] private int triggerEveryNBeats = 4;

    [Tooltip("Beat count to align triggers to. 0 fires on beat 0, 4, 8...; 2 fires on beat 2, 6, 10... (useful for offbeat spawns).")]
    [SerializeField] private int beatOffset = 0;

    [Tooltip("The action(s) to call each time this triggers. Assign your spawn/enemy/item functions here in the Inspector.")]
    public UnityEvent OnTrigger;

    private bool isSubscribed = false;

    private void OnEnable()
    {
        TrySubscribe();
    }

    private void Update()
    {
        // Safety net: if BeatManager wasn't ready yet in OnEnable (initialization
        // order), keep trying until it appears, instead of silently never firing.
        if (!isSubscribed)
        {
            TrySubscribe();
        }
    }

    private void TrySubscribe()
    {
        if (!isSubscribed && BeatManager.Instance != null)
        {
            BeatManager.Instance.OnBeat.AddListener(HandleBeat);
            isSubscribed = true;
        }
    }

    private void OnDisable()
    {
        if (isSubscribed && BeatManager.Instance != null)
        {
            BeatManager.Instance.OnBeat.RemoveListener(HandleBeat);
        }
        isSubscribed = false;
    }

    private void HandleBeat(int beatNumber)
    {
        int adjusted = beatNumber - beatOffset;
        if (adjusted >= 0 && adjusted % triggerEveryNBeats == 0)
        {
            OnTrigger?.Invoke();
        }
    }
}