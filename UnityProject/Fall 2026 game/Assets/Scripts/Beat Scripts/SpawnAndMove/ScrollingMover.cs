using UnityEngine;

/// <summary>
/// Base movement script for spawnable rhythm objects (enemies, items, notes).
/// Moves the object at a constant speed along the negative X axis.
///
/// Attach this to any spawnable prefab. Set Speed directly in the Inspector
/// for a fixed speed, or set it from a spawner script right after
/// Instantiate() via the Speed property (see BeatSyncUtility for calculating
/// the correct value to hit the beat).
/// </summary>
public class ScrollingMover : MonoBehaviour
{
    [Tooltip("Units per second moved in the negative X direction.")]
    [SerializeField] private float speed = 5f;

    [Header("Cleanup")]
    [Tooltip("Destroys this object once it passes a given X position, so off-screen objects don't pile up.")]
    [SerializeField] private bool destroyPastX = true;
    [SerializeField] private float destroyXThreshold = -12f;

    /// <summary>Units per second moved in the negative X direction. Set this after spawning to override the Inspector default.</summary>
    public float Speed
    {
        get => speed;
        set => speed = value;
    }

    private void Update()
    {
        transform.Translate(Vector3.left * speed * Time.deltaTime, Space.World);

        if (destroyPastX && transform.position.x < destroyXThreshold)
        {
            Destroy(gameObject);
        }
    }
}
