using System.Collections;
using UnityEngine;

/// <summary>
/// Heart pickup prefab.
///
/// Up input:   raises podUp, flies to waypoint B then A, heals the top
///             character on arrival at A, releases podUp, then drops under
///             gravity.
/// Down input: raises podDown, flies to waypoint D then C, heals the bottom
///             character on arrival at C, releases podDown, then drops
///             under gravity.
/// Left/Right: destroyed with no heal, as before.
///
/// Waypoints and pods come from PickupWaypointRegistry, and characters from
/// CharacterRegistry, so this works on a prefab spawned at runtime. Pods
/// are optional: if none are assigned, the heart just flies.
///
/// If the heart is destroyed mid-flight (for example by a despawn zone), it
/// still releases its pod, so a pod can never get stuck raised.
///
/// The heart is never cleaned up by this script. After it drops it simply
/// stays as a free physics object until something else removes it.
///
/// Needs a Rigidbody on the prefab. This script controls its kinematic and
/// gravity settings itself (kinematic during flight, fully dynamic with
/// gravity afterward), and turns off ScrollingMover during the flight.
/// The collider should NOT be a trigger, or the heart will fall through
/// whatever it's meant to land on.
/// </summary>
public class HeartPickup : MonoBehaviour, IZoneInteractable
{
    [Header("Healing")]
    [Tooltip("How many hearts are restored when the heart reaches its final stop.")]
    [SerializeField] private int healAmount = 1;

    [Header("Flight")]
    [Tooltip("Seconds each leg of the flight takes (first stop, then final stop).")]
    [SerializeField] private float secondsPerLeg = 0.3f;
    [Tooltip("Easing for each leg. Left to right is progress through the leg, bottom to top is how far along the path it is.")]
    [SerializeField] private AnimationCurve easeCurve = AnimationCurve.EaseInOut(0f, 0f, 1f, 1f);

    private Rigidbody rb;
    private ScrollingMover mover;
    private bool hasBeenUsed;
    private PodLift heldPod;

    private void Awake()
    {
        rb = GetComponent<Rigidbody>();
        mover = GetComponent<ScrollingMover>();
    }

    private void OnDestroy()
    {
        // Covers the heart being destroyed mid-flight.
        ReleasePod();
    }

    public void OnUpAction()
    {
        PickupWaypointRegistry waypoints = PickupWaypointRegistry.Instance;
        CharacterHealth target = CharacterRegistry.Instance != null ? CharacterRegistry.Instance.Character1 : null;

        StartFlight(
            waypoints != null ? waypoints.PointB : null,
            waypoints != null ? waypoints.PointA : null,
            waypoints != null ? waypoints.PodUp : null,
            target);
    }

    public void OnDownAction()
    {
        PickupWaypointRegistry waypoints = PickupWaypointRegistry.Instance;
        CharacterHealth target = CharacterRegistry.Instance != null ? CharacterRegistry.Instance.Character2 : null;

        StartFlight(
            waypoints != null ? waypoints.PointD : null,
            waypoints != null ? waypoints.PointC : null,
            waypoints != null ? waypoints.PodDown : null,
            target);
    }

    public void OnLeftAction()
    {
        if (hasBeenUsed) return;
        Destroy(gameObject);
    }

    public void OnRightAction()
    {
        if (hasBeenUsed) return;
        Destroy(gameObject);
    }

    private void StartFlight(Transform firstStop, Transform finalStop, PodLift pod, CharacterHealth target)
    {
        if (hasBeenUsed) return;
        hasBeenUsed = true;

        if (firstStop == null || finalStop == null)
        {
            Debug.LogWarning("HeartPickup: waypoints are missing (is there a PickupWaypointRegistry in the scene with all four points assigned?). Healing immediately and destroying instead.");
            Heal(target);
            Destroy(gameObject);
            return;
        }

        // Stop ScrollingMover from dragging the heart left while it flies.
        if (mover != null)
        {
            mover.enabled = false;
        }

        // Take the heart out of physics so nothing pushes it off its path.
        // Velocity is zeroed first because Unity warns if you set it on a
        // kinematic body.
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

        // Raise the pod for as long as this heart is in flight.
        if (pod != null)
        {
            heldPod = pod;
            heldPod.Lift();
        }

        StartCoroutine(FlightRoutine(firstStop, finalStop, target));

        // Disabling this component makes HitZone stop treating the heart as
        // a target, so later inputs go to whatever is behind it instead of
        // being swallowed. The coroutine above keeps running regardless.
        enabled = false;
    }

    private IEnumerator FlightRoutine(Transform firstStop, Transform finalStop, CharacterHealth target)
    {
        yield return StartCoroutine(FlyTo(firstStop));
        yield return StartCoroutine(FlyTo(finalStop));

        Heal(target);
        ReleasePod();
        ReleaseToPhysics();
    }

    private IEnumerator FlyTo(Transform destination)
    {
        Vector3 start = transform.position;
        float duration = Mathf.Max(0.01f, secondsPerLeg);
        float elapsed = 0f;

        while (elapsed < duration)
        {
            elapsed += Time.deltaTime;
            float progress = easeCurve.Evaluate(Mathf.Clamp01(elapsed / duration));

            // Reads the destination every frame, so if the waypoint moves
            // (for example it's parented to an animated object), the heart
            // follows it and still lands exactly on it.
            transform.position = Vector3.LerpUnclamped(start, destination.position, progress);
            yield return null;
        }

        transform.position = destination.position;
    }

    private void Heal(CharacterHealth target)
    {
        if (target != null)
        {
            target.Heal(healAmount);
        }
        else
        {
            Debug.LogWarning("HeartPickup: no CharacterRegistry or target character found, so no healing was applied.");
        }
    }

    private void ReleasePod()
    {
        // Unity's null check also catches a pod that has been destroyed.
        if (heldPod == null) return;

        heldPod.Release();
        heldPod = null;
    }

    private void ReleaseToPhysics()
    {
        if (rb == null) return;

        rb.isKinematic = false;
        rb.useGravity = true;
        rb.linearVelocity = Vector3.zero;
        rb.angularVelocity = Vector3.zero;
    }
}