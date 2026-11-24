using System.Collections;
using UnityEngine;

/// <summary>
/// Raises a physics object (a "pod") along world Y, holds it there, and
/// lets it fall again when released.
///
/// Lift(): turns gravity off, makes the pod kinematic, and moves it up by
/// Lift Amount over Lift Duration seconds, then holds it there.
/// Release(): restores the pod's original kinematic setting and turns
/// gravity back on, so it falls.
///
/// Safe to call from several sources at once: every Lift() must be matched
/// by a Release(), and the pod only falls once the last one has been
/// released. The lift is relative to wherever the pod is when Lift() is
/// first called.
///
/// Put this on a GameObject that has a 3D Rigidbody, then assign it to the
/// matching slot (Pod Up or Pod Down) on PickupWaypointRegistry.
/// </summary>
public class PodLift : MonoBehaviour
{
    private static readonly WaitForFixedUpdate WaitForFixed = new WaitForFixedUpdate();

    [Header("Lift")]
    [Tooltip("How far the pod rises along world Y. Use a negative value to move it down instead.")]
    [SerializeField] private float liftAmount = 0.82f;
    [Tooltip("Seconds the rise takes.")]
    [SerializeField] private float liftDuration = 0.2f;
    [Tooltip("Easing for the rise. Left to right is progress through the lift, bottom to top is how far along it is.")]
    [SerializeField] private AnimationCurve easeCurve = AnimationCurve.EaseInOut(0f, 0f, 1f, 1f);

    private Rigidbody rb;
    private bool originalKinematic;
    private int holdCount;
    private Coroutine liftRoutine;

    private void Awake()
    {
        rb = GetComponent<Rigidbody>();
        if (rb != null)
        {
            originalKinematic = rb.isKinematic;
        }
    }

    /// <summary>Raises the pod and holds it. Must be matched by a Release().</summary>
    public void Lift()
    {
        holdCount++;

        // Already raised, or already rising for an earlier caller.
        if (holdCount > 1) return;

        if (rb != null)
        {
            // Velocity is zeroed first because Unity warns if you set it on
            // a kinematic body.
            if (!rb.isKinematic)
            {
                rb.linearVelocity = Vector3.zero;
                rb.angularVelocity = Vector3.zero;
            }
            rb.useGravity = false;
            rb.isKinematic = true;
        }

        liftRoutine = StartCoroutine(LiftRoutine());
    }

    /// <summary>Lets go of one Lift(). Once none are left, the pod falls under gravity.</summary>
    public void Release()
    {
        if (holdCount <= 0) return;

        holdCount--;

        // Another caller still needs the pod raised.
        if (holdCount > 0) return;

        if (liftRoutine != null)
        {
            StopCoroutine(liftRoutine);
            liftRoutine = null;
        }

        if (rb != null)
        {
            rb.isKinematic = originalKinematic;
            rb.useGravity = true;

            if (!rb.isKinematic)
            {
                rb.linearVelocity = Vector3.zero;
                rb.angularVelocity = Vector3.zero;
            }
        }
    }

    private IEnumerator LiftRoutine()
    {
        Vector3 start = transform.position;
        Vector3 end = start + Vector3.up * liftAmount;
        float duration = Mathf.Max(0.01f, liftDuration);
        float elapsed = 0f;

        while (elapsed < duration)
        {
            yield return WaitForFixed;

            elapsed += Time.fixedDeltaTime;
            float progress = easeCurve.Evaluate(Mathf.Clamp01(elapsed / duration));
            MoveTo(Vector3.LerpUnclamped(start, end, progress));
        }

        MoveTo(end);
        liftRoutine = null;
    }

    private void MoveTo(Vector3 position)
    {
        // MovePosition on a kinematic body carries anything resting on it,
        // instead of teleporting out from under it.
        if (rb != null)
        {
            rb.MovePosition(position);
        }
        else
        {
            transform.position = position;
        }
    }
}
