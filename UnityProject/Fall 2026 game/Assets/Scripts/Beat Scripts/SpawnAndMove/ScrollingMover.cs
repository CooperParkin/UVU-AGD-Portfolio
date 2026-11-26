using UnityEngine;

/// <summary>
/// Base movement script for spawnable rhythm objects (enemies, items, notes).
/// Moves the object at a constant speed along the negative X axis.
///
/// Attach this to any spawnable prefab. Set Speed directly in the Inspector
/// for a fixed speed, or set it from a spawner script right after
/// Instantiate() via the Speed property (see BeatSyncUtility for calculating
/// the correct value to hit the beat).
///
/// Physics Movement is an opt-in setting, off by default, so prefabs that
/// don't tick it move exactly as before. Tick it only on objects that need
/// to push other physics objects smoothly (for example enemies pushing
/// hearts).
/// </summary>
public class ScrollingMover : MonoBehaviour
{
    [Tooltip("Units per second moved in the negative X direction.")]
    [SerializeField] private float speed = 5f;

    [Header("Physics Movement (optional)")]
    [Tooltip("Moves this object through its Rigidbody in FixedUpdate instead of changing its transform every frame. This lets it push other physics objects smoothly. Leave OFF for everything that doesn't push things. Needs a KINEMATIC Rigidbody on this object, ideally with Interpolate turned on; without one, it falls back to normal movement and logs a warning.")]
    [SerializeField] private bool usePhysicsMovement = false;

    [Header("Cleanup")]
    [Tooltip("Destroys this object once it passes a given X position, so off-screen objects don't pile up.")]
    [SerializeField] private bool destroyPastX = true;
    [SerializeField] private float destroyXThreshold = -12f;

    private Rigidbody rb;
    private bool warnedUnusableRigidbody;

    /// <summary>Units per second moved in the negative X direction. Set this after spawning to override the Inspector default.</summary>
    public float Speed
    {
        get => speed;
        set => speed = value;
    }

    private void Awake()
    {
        rb = GetComponent<Rigidbody>();
    }

    private void Update()
    {
        // In physics mode, FixedUpdate does the moving instead.
        if (!ShouldMoveWithPhysics())
        {
            transform.Translate(Vector3.left * speed * Time.deltaTime, Space.World);
        }

        if (destroyPastX && transform.position.x < destroyXThreshold)
        {
            Destroy(gameObject);
        }
    }

    private void FixedUpdate()
    {
        if (!ShouldMoveWithPhysics()) return;

        // A kinematic body moved with MovePosition gives physics a real
        // velocity, so anything it touches is pushed along with it. With
        // Interpolate on, the motion is also drawn smoothly between physics
        // steps.
        rb.MovePosition(rb.position + Vector3.left * speed * Time.fixedDeltaTime);
    }

    private bool ShouldMoveWithPhysics()
    {
        if (!usePhysicsMovement) return false;

        if (rb != null && rb.isKinematic) return true;

        if (!warnedUnusableRigidbody)
        {
            warnedUnusableRigidbody = true;
            Debug.LogWarning($"ScrollingMover on '{name}': Use Physics Movement is ticked, but there's no kinematic Rigidbody on this object. Falling back to normal movement.");
        }

        return false;
    }
}