using UnityEngine;

/// <summary>
/// Holds scene references to the four waypoints that pickups fly between,
/// so spawned prefabs (which can't hold direct scene references) can look
/// them up when needed. Same idea as CharacterRegistry.
///
/// Up input path:   first stop B, final stop A
/// Down input path: first stop D, final stop C
///
/// Put this on a GameObject in every scene that uses these pickups, and
/// assign four empty GameObjects (or any Transforms) once in the Inspector.
/// </summary>
[DefaultExecutionOrder(-1000)]
public class PickupWaypointRegistry : MonoBehaviour
{
    public static PickupWaypointRegistry Instance { get; private set; }

    [Header("Up input path (flies to B first, then A)")]
    [SerializeField] private Transform pointA;
    [SerializeField] private Transform pointB;

    [Header("Down input path (flies to D first, then C)")]
    [SerializeField] private Transform pointC;
    [SerializeField] private Transform pointD;

    [Header("Pods (raised while a heart is in flight, optional)")]
    [Tooltip("Raised when a heart is used with Up, released when it reaches point A.")]
    [SerializeField] private PodLift podUp;
    [Tooltip("Raised when a heart is used with Down, released when it reaches point C.")]
    [SerializeField] private PodLift podDown;

    public Transform PointA => pointA;
    public Transform PointB => pointB;
    public Transform PointC => pointC;
    public Transform PointD => pointD;
    public PodLift PodUp => podUp;
    public PodLift PodDown => podDown;

    private void Awake()
    {
        if (Instance != null && Instance != this)
        {
            Destroy(gameObject);
            return;
        }
        Instance = this;
    }
}