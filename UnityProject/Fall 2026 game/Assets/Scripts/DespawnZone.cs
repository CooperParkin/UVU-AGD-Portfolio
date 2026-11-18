using UnityEngine;

/// <summary>
/// General-purpose despawn zone: destroys any object that touches it.
///
/// Setup: put this on a GameObject with a 3D Collider set to "Is Trigger"
/// (a Box Collider works well) and size it to cover the area you want to
/// clear. The component adds and configures its own kinematic Rigidbody,
/// which is what lets it detect objects that have no Rigidbody of their own.
///
/// Because it destroys EVERYTHING that touches it, place it where nothing
/// you want to keep will overlap it: other zones, characters, the
/// environment, and so on. Anything with a collider that is already
/// overlapping it when the scene starts will be destroyed too. If you need
/// to protect something nearby, put it on a layer that's unchecked in
/// Affected Layers.
/// </summary>
[RequireComponent(typeof(Collider), typeof(Rigidbody))]
public class DespawnZone : MonoBehaviour
{
    [Tooltip("Only objects on these layers are despawned. Defaults to Everything.")]
    [SerializeField] private LayerMask affectedLayers = ~0;

    private void Reset()
    {
        GetComponent<Collider>().isTrigger = true;
        ConfigureRigidbody();
    }

    private void Awake()
    {
        ConfigureRigidbody();
    }

    private void ConfigureRigidbody()
    {
        // A default Rigidbody has gravity on and would make the zone fall,
        // so force it to be a fixed, kinematic detector.
        Rigidbody rb = GetComponent<Rigidbody>();
        if (rb == null) return;

        rb.isKinematic = true;
        rb.useGravity = false;
    }

    private void OnTriggerEnter(Collider other)
    {
        if ((affectedLayers.value & (1 << other.gameObject.layer)) == 0) return;

        // If the collider is part of a Rigidbody (like your enemy prefabs),
        // destroy that whole object rather than just the collider's child.
        GameObject target = other.attachedRigidbody != null
            ? other.attachedRigidbody.gameObject
            : other.gameObject;

        Destroy(target);
    }
}
