using System.Collections;
using UnityEngine;

/// <summary>
/// Shared base for pickups (coins, hazards) that, once the player acts on
/// them, fly to a destination point and despawn when they arrive, instead
/// of vanishing instantly.
///
/// Derived classes keep their own core behavior. They call TryBeginUse()
/// first (which ignores repeat input), apply their effect immediately, then
/// call ExitTo(point) to start the visual exit. Effects are never delayed;
/// only the despawn is.
///
/// While exiting, ScrollingMover is switched off so it can't drag the
/// pickup away from its path. The component also disables itself, which
/// makes HitZone stop treating the pickup as a target so it can't swallow
/// inputs meant for the next object in the zone.
///
/// The flight uses Time.deltaTime like ScrollingMover, so it freezes while
/// paused (and when game over pauses time).
/// </summary>
public abstract class FlyAndDespawnPickup : MonoBehaviour
{
    private static bool warnedMissingPoint;

    [Header("Exit Flight")]
    [Tooltip("Seconds the pickup takes to fly to its destination point before despawning.")]
    [SerializeField] private float exitSeconds = 0.3f;
    [Tooltip("Easing for the flight. Left to right is progress through the flight, bottom to top is how far along the path it is.")]
    [SerializeField] private AnimationCurve exitCurve = AnimationCurve.EaseInOut(0f, 0f, 1f, 1f);

    private Rigidbody rb;
    private ScrollingMover mover;
    private bool hasBeenUsed;

    /// <summary>True once the player has acted on this pickup. Other systems can use this to ignore a pickup that is mid-flight.</summary>
    public bool HasBeenUsed => hasBeenUsed;

    protected virtual void Awake()
    {
        rb = GetComponent<Rigidbody>();
        mover = GetComponent<ScrollingMover>();
    }

    /// <summary>Call at the start of every input handler. Returns false if the pickup was already used, in which case the handler should do nothing.</summary>
    protected bool TryBeginUse()
    {
        if (hasBeenUsed) return false;

        hasBeenUsed = true;
        return true;
    }

    /// <summary>Flies to the destination and despawns on arrival. With no destination, despawns immediately.</summary>
    protected void ExitTo(Transform destination)
    {
        if (destination == null)
        {
            if (!warnedMissingPoint)
            {
                warnedMissingPoint = true;
                Debug.LogWarning("FlyAndDespawnPickup: no exit point is assigned for this input (check PickupWaypointRegistry). Despawning immediately instead.");
            }

            Destroy(gameObject);
            return;
        }

        // Stop ScrollingMover from dragging the pickup while it flies.
        if (mover != null)
        {
            mover.enabled = false;
        }

        // Keep physics from pushing or dropping it off its path. Velocity is
        // zeroed first because Unity warns if you set it on a kinematic body.
        if (rb != null)
        {
            if (!rb.isKinematic)
            {
                rb.linearVelocity = Vector3.zero;
                rb.angularVelocity = Vector3.zero;
            }
            rb.useGravity = false;
            rb.isKinematic = true;
        }

        StartCoroutine(ExitRoutine(destination));

        // Disabling this component makes HitZone skip the pickup from now on.
        // The coroutine above keeps running regardless.
        enabled = false;
    }

    private IEnumerator ExitRoutine(Transform destination)
    {
        Vector3 start = transform.position;
        float duration = Mathf.Max(0.01f, exitSeconds);
        float elapsed = 0f;

        while (elapsed < duration)
        {
            // If the destination disappears mid-flight, just finish up.
            if (destination == null) break;

            elapsed += Time.deltaTime;
            float t = Mathf.Clamp01(elapsed / duration);
            float progress = (exitCurve != null && exitCurve.length > 0) ? exitCurve.Evaluate(t) : t;

            // Reads the destination every frame, so if the point moves (for
            // example it's parented to an animated object), the pickup
            // follows it and still arrives exactly on it.
            transform.position = Vector3.LerpUnclamped(start, destination.position, progress);
            yield return null;
        }

        Destroy(gameObject);
    }
}
