using UnityEngine;

/// <summary>
/// Holds scene references that spawned pickups fly to, so prefabs (which
/// can't hold direct scene references) can look them up when needed. Same
/// idea as CharacterRegistry.
///
/// Hearts:
///   Up input path:   first stop B, final stop A
///   Down input path: first stop D, final stop C
///   Plus optional pods and full-health points.
///   Left and Right inputs use one exit point each (like coins and hazards).
/// Coins and hazards:
///   One exit point per input (up, down, left, right). A used coin or
///   hazard flies to the point matching the input, then despawns.
///
/// Put this on a GameObject in every scene that uses these pickups, and
/// assign the Transforms once in the Inspector. Any slot can point at the
/// same object as another (for example coins and hazards can share exit
/// points).
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
    [Tooltip("Raised when a heart is used with Up, released when it reaches point A (or is diverted).")]
    [SerializeField] private PodLift podUp;
    [Tooltip("Raised when a heart is used with Down, released when it reaches point C (or is diverted).")]
    [SerializeField] private PodLift podDown;

    [Header("Full health points (optional)")]
    [Tooltip("An up-path heart goes here instead if the top character is at max health.")]
    [SerializeField] private Transform fullUp;
    [Tooltip("A down-path heart goes here instead if the bottom character is at max health.")]
    [SerializeField] private Transform fullDown;

    [Header("Coin exit points (a used coin flies to the one matching the input, then despawns)")]
    [SerializeField] private Transform coinUpPoint;
    [SerializeField] private Transform coinDownPoint;
    [SerializeField] private Transform coinLeftPoint;
    [SerializeField] private Transform coinRightPoint;

    [Header("Hazard exit points (a used hazard flies to the one matching the input, then despawns)")]
    [SerializeField] private Transform hazardUpPoint;
    [SerializeField] private Transform hazardDownPoint;
    [SerializeField] private Transform hazardLeftPoint;
    [SerializeField] private Transform hazardRightPoint;

    [Header("Hazard despawners (pulsed on at the moment a hazard deals its damage; leave them INACTIVE in the scene)")]
    [Tooltip("Activated briefly when a hazard damages the top character (Up input). Needs a DespawnZone and an AutoDeactivate on it.")]
    [SerializeField] private GameObject hazardDespawnerUp;
    [Tooltip("Activated briefly when a hazard damages the bottom character (Down input).")]
    [SerializeField] private GameObject hazardDespawnerDown;

    [Header("Hazard capsules (deactivated instead of pulsing the despawner when a hazard hits a character on 1 heart)")]
    [Tooltip("Deactivated when a hazard hits the top character while they have exactly 1 heart.")]
    [SerializeField] private GameObject upperCapsule;
    [Tooltip("Deactivated when a hazard hits the bottom character while they have exactly 1 heart.")]
    [SerializeField] private GameObject lowerCapsule;

    [Header("Heart exit points (Left and Right inputs only; Up and Down use the A-D paths above)")]
    [SerializeField] private Transform heartLeftPoint;
    [SerializeField] private Transform heartRightPoint;

    public Transform PointA => pointA;
    public Transform PointB => pointB;
    public Transform PointC => pointC;
    public Transform PointD => pointD;
    public PodLift PodUp => podUp;
    public PodLift PodDown => podDown;
    public Transform FullUp => fullUp;
    public Transform FullDown => fullDown;

    public Transform CoinUpPoint => coinUpPoint;
    public Transform CoinDownPoint => coinDownPoint;
    public Transform CoinLeftPoint => coinLeftPoint;
    public Transform CoinRightPoint => coinRightPoint;

    public Transform HazardUpPoint => hazardUpPoint;
    public Transform HazardDownPoint => hazardDownPoint;
    public Transform HazardLeftPoint => hazardLeftPoint;
    public Transform HazardRightPoint => hazardRightPoint;

    public GameObject HazardDespawnerUp => hazardDespawnerUp;
    public GameObject HazardDespawnerDown => hazardDespawnerDown;

    public GameObject UpperCapsule => upperCapsule;
    public GameObject LowerCapsule => lowerCapsule;

    public Transform HeartLeftPoint => heartLeftPoint;
    public Transform HeartRightPoint => heartRightPoint;

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