using UnityEngine;

/// <summary>
/// The "Slowmo Zone". When a tutorial prefab that belongs to a row with a
/// prompt enters it, the game slows to a stop and the prompt is shown (see
/// TutorialSlowmoManager).
///
/// Setup: put this on a GameObject with a 3D Collider set to "Is Trigger",
/// stretched across the lanes the tutorial prefabs travel in. It gets a
/// kinematic Rigidbody automatically (needed for trigger detection with
/// moved objects).
///
/// Place it far enough before the HitZone that prefabs come to rest inside
/// the HitZone. See TutorialSlowmoManager for how to estimate the distance.
/// </summary>
[RequireComponent(typeof(Collider))]
[RequireComponent(typeof(Rigidbody))]
public class SlowmoZone : MonoBehaviour
{
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
        Rigidbody rb = GetComponent<Rigidbody>();
        rb.isKinematic = true;
        rb.useGravity = false;
    }

    private void OnTriggerEnter(Collider other)
    {
        // The collider may be on a child of the tagged prefab root.
        TutorialPromptTag tag = other.GetComponentInParent<TutorialPromptTag>();
        if (tag == null || tag.Info == null) return;

        if (TutorialSlowmoManager.Instance == null)
        {
            Debug.LogWarning("SlowmoZone: no TutorialSlowmoManager found in the scene.");
            return;
        }

        TutorialSlowmoManager.Instance.TryShowPrompt(tag.Info);
    }
}
