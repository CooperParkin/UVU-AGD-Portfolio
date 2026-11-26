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
/// Left/Right: no heal and no pod. The heart flies to the matching Heart
///             exit point in PickupWaypointRegistry and despawns when it
///             arrives (see FlyAndDespawnPickup). Each side has its own
///             seconds and curve (Left Flight / Right Flight).
///
/// Full health divert: if the character this heart is heading for reaches
/// max health at any point (including already being full when the input
/// happens), the heart cancels its flight, releases its pod, and flies from
/// wherever it is to the Full Up / Full Down point instead, with no heal.
/// After arriving there it drops under gravity like normal. This only
/// applies if the matching Full point is assigned in the registry.
/// The same divert happens if the character's waypoints no longer exist
/// (they're destroyed along with a dead character), whether that's already
/// true when the input happens or becomes true mid-flight.
///
/// Waypoints, pods, and full points come from PickupWaypointRegistry, and
/// characters from CharacterRegistry, so this works on a prefab spawned at
/// runtime. Pods and full points are optional.
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
public class HeartPickup : FlyAndDespawnPickup, IZoneInteractable
{
    [Header("Healing")]
    [Tooltip("How many hearts are restored when the heart reaches its final stop.")]
    [SerializeField] private int healAmount = 1;

    [Header("Flight")]
    [Tooltip("Seconds each leg of the flight takes (first stop, then final stop).")]
    [SerializeField] private float secondsPerLeg = 0.3f;
    [Tooltip("Easing for each leg. Left to right is progress through the leg, bottom to top is how far along the path it is.")]
    [SerializeField] private AnimationCurve easeCurve = AnimationCurve.EaseInOut(0f, 0f, 1f, 1f);

    [Header("Full Health Divert")]
    [Tooltip("Seconds the heart takes to reach the Full point when its character is at max health. Applies to both Full Up and Full Down.")]
    [SerializeField] private float divertSeconds = 0.3f;
    [Tooltip("Easing for the trip to the Full point.")]
    [SerializeField] private AnimationCurve divertCurve = AnimationCurve.EaseInOut(0f, 0f, 1f, 1f);

    [Header("Left / Right Exit Flights")]
    [SerializeField] private ExitFlight leftFlight = new ExitFlight();
    [SerializeField] private ExitFlight rightFlight = new ExitFlight();

    // rb and mover come from FlyAndDespawnPickup.
    private PodLift heldPod;

    // State of the current flight.
    private CharacterHealth flightTarget;
    private Transform fullStop;
    private bool diverted;

    protected override void Awake()
    {
        // Sets rb and mover.
        base.Awake();
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
            waypoints != null ? waypoints.FullUp : null,
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
            waypoints != null ? waypoints.FullDown : null,
            waypoints != null ? waypoints.PodDown : null,
            target);
    }

    public void OnLeftAction()
    {
        if (!TryBeginUse()) return;

        PickupWaypointRegistry waypoints = PickupWaypointRegistry.Instance;
        ExitTo(waypoints != null ? waypoints.HeartLeftPoint : null, leftFlight);
    }

    public void OnRightAction()
    {
        if (!TryBeginUse()) return;

        PickupWaypointRegistry waypoints = PickupWaypointRegistry.Instance;
        ExitTo(waypoints != null ? waypoints.HeartRightPoint : null, rightFlight);
    }

    private void StartFlight(Transform firstStop, Transform finalStop, Transform fullPoint, PodLift pod, CharacterHealth target)
    {
        if (!TryBeginUse()) return;

        // Waypoints that belong to a dead character are destroyed with them.
        // If that's the case and there's a Full point to go to, the heart
        // just diverts there as if the character were at full health.
        bool waypointsMissing = firstStop == null || finalStop == null;

        if (waypointsMissing && fullPoint == null)
        {
            Debug.LogWarning("HeartPickup: waypoints are missing and there is no Full point to divert to (is there a PickupWaypointRegistry in the scene with its points assigned?). Healing immediately and destroying instead.");
            Heal(target);
            Destroy(gameObject);
            return;
        }

        flightTarget = target;
        fullStop = fullPoint;

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

        // Raise the pod for as long as this heart is heading to its final
        // stop. If the character is already full, this heart is about to be
        // diverted straight away and will never get there, so don't bother.
        if (pod != null && !waypointsMissing && !ShouldDivert())
        {
            heldPod = pod;
            heldPod.Lift();
        }

        StartCoroutine(FlightRoutine(firstStop, finalStop));

        // Disabling this component makes HitZone stop treating the heart as
        // a target, so later inputs go to whatever is behind it instead of
        // being swallowed. The coroutine above keeps running regardless.
        enabled = false;
    }

    private IEnumerator FlightRoutine(Transform firstStop, Transform finalStop)
    {
        // A missing waypoint (its character died) means divert straight away.
        if (firstStop == null)
        {
            diverted = true;
        }
        else
        {
            yield return StartCoroutine(FlyTo(firstStop, secondsPerLeg, easeCurve, true));
        }

        if (!diverted && finalStop == null)
        {
            diverted = true;
        }

        if (!diverted)
        {
            yield return StartCoroutine(FlyTo(finalStop, secondsPerLeg, easeCurve, true));
        }

        // One last check right at the end, so a heal is never wasted on a
        // character who reached max health during the final frame.
        if (!diverted && ShouldDivert())
        {
            diverted = true;
        }

        if (diverted)
        {
            // The pod was only held for a heart heading to its final stop,
            // and this one isn't going to make it, so let the pod go now.
            ReleasePod();

            yield return StartCoroutine(FlyTo(fullStop, divertSeconds, divertCurve, false));
            ReleaseToPhysics();
            yield break;
        }

        Heal(flightTarget);
        ReleasePod();
        ReleaseToPhysics();
    }

    private IEnumerator FlyTo(Transform destination, float seconds, AnimationCurve curve, bool canDivert)
    {
        Vector3 start = transform.position;
        float duration = Mathf.Max(0.01f, seconds);
        float elapsed = 0f;

        while (elapsed < duration)
        {
            // The destination was destroyed mid-flight (for example its
            // character died). Divert if there's a Full point; otherwise
            // just stop flying.
            if (destination == null)
            {
                if (canDivert && fullStop != null)
                {
                    diverted = true;
                }
                yield break;
            }

            // Checked before moving each frame, so the cancel takes effect
            // the instant the character reaches max health, even mid-leg.
            if (canDivert && ShouldDivert())
            {
                diverted = true;
                yield break;
            }

            elapsed += Time.deltaTime;
            float progress = curve.Evaluate(Mathf.Clamp01(elapsed / duration));

            // Reads the destination every frame, so if the waypoint moves
            // (for example it's parented to an animated object), the heart
            // follows it and still lands exactly on it.
            transform.position = Vector3.LerpUnclamped(start, destination.position, progress);
            yield return null;
        }

        if (destination != null)
        {
            transform.position = destination.position;
        }
    }

    private bool ShouldDivert()
    {
        // Diverting needs both a Full point to go to and a character who is
        // at max health. With no Full point assigned, hearts behave exactly
        // as they did before this feature existed.
        return fullStop != null
            && flightTarget != null
            && flightTarget.CurrentHearts >= flightTarget.MaxHearts;
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