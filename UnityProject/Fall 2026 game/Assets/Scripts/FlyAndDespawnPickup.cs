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
    /// <summary>Timing and easing for one exit flight. Pickups hold one of these per destination so each path can feel different.</summary>
    [System.Serializable]
    public class ExitFlight
    {
        [Tooltip("Seconds the flight to this destination takes.")]
        public float seconds = 0.3f;
        [Tooltip("Easing for this flight. Left to right is progress through the flight, bottom to top is how far along the path it is.")]
        public AnimationCurve curve = AnimationCurve.EaseInOut(0f, 0f, 1f, 1f);
    }

    private static bool warnedMissingPoint;

    // Protected so derived pickups can use them directly. Declaring fields
    // with these same names in a derived class makes Unity report a
    // duplicate serialized field.
    protected Rigidbody rb;
    protected ScrollingMover mover;
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

    /// <summary>
    /// Flies to the destination and despawns on arrival. With no destination, despawns immediately.
    /// Optional: onMidpoint is called exactly once when the flight's eased progress first reaches
    /// midpointProgress (0.5 = halfway there). If the flight ends or is cut short before that, it
    /// is called at the end instead, so it always runs.
    /// </summary>
    protected void ExitTo(Transform destination, ExitFlight flight, System.Action onMidpoint = null, float midpointProgress = 0.5f)
    {
        // A missing flight (shouldn't happen) uses plain defaults.
        ExitTo(destination, flight != null ? flight.seconds : 0.3f, flight != null ? flight.curve : null, onMidpoint, midpointProgress);
    }

    private void ExitTo(Transform destination, float seconds, AnimationCurve curve, System.Action onMidpoint, float midpointProgress)
    {
        if (destination == null)
        {
            if (!warnedMissingPoint)
            {
                warnedMissingPoint = true;
                Debug.LogWarning("FlyAndDespawnPickup: no exit point is assigned for this input (check PickupWaypointRegistry). Despawning immediately instead.");
            }

            // No flight, so there's no midpoint to wait for.
            onMidpoint?.Invoke();
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

        StartCoroutine(ExitRoutine(destination, seconds, curve, onMidpoint, midpointProgress));

        // Disabling this component makes HitZone skip the pickup from now on.
        // The coroutine above keeps running regardless.
        enabled = false;
    }

    private IEnumerator ExitRoutine(Transform destination, float seconds, AnimationCurve curve, System.Action onMidpoint, float midpointProgress)
    {
        Vector3 start = transform.position;
        float duration = Mathf.Max(0.01f, seconds);
        float elapsed = 0f;
        bool midpointFired = onMidpoint == null;

        while (elapsed < duration)
        {
            // If the destination disappears mid-flight, just finish up.
            if (destination == null) break;

            elapsed += Time.deltaTime;
            float t = Mathf.Clamp01(elapsed / duration);
            float progress = (curve != null && curve.length > 0) ? curve.Evaluate(t) : t;

            // Reads the destination every frame, so if the point moves (for
            // example it's parented to an animated object), the pickup
            // follows it and still arrives exactly on it.
            transform.position = Vector3.LerpUnclamped(start, destination.position, progress);

            if (!midpointFired && progress >= midpointProgress)
            {
                midpointFired = true;
                onMidpoint();
            }

            yield return null;
        }

        // Flight ended (or was cut short) before the midpoint was reached.
        if (!midpointFired)
        {
            onMidpoint();
        }

        Destroy(gameObject);
    }
}