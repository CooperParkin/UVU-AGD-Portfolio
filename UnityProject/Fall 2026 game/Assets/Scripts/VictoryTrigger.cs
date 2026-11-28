using UnityEngine;

/// <summary>
/// The Victory prefab's script. When this object touches the HitZone, it
/// tells the scene's VictoryManager to trigger victory. No player input
/// involved, and nothing else in the HitZone is affected.
///
/// Prefab setup: an empty GameObject (no renderer, so it's invisible) with
/// - a Box Collider set to "Is Trigger" (a thin box fires closest to the
///   beat it arrives on, since it triggers the moment its leading edge
///   touches the HitZone),
/// - a Rigidbody (this script makes it kinematic with no gravity),
/// - a ScrollingMover, so it travels like the other prefabs,
/// - this script.
/// Then put it in the middle lane of a LevelData / TutorialData row.
///
/// A VictoryManager must exist in the scene.
///
/// When victory happens, this also sets the saved Tutorial flag to true
/// (PlayerData.TutorialCompleted), whatever it was before.
/// </summary>
[RequireComponent(typeof(Collider))]
[RequireComponent(typeof(Rigidbody))]
public class VictoryTrigger : MonoBehaviour
{
    private bool fired;

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
        if (fired) return;

        // The HitZone's collider may be on the HitZone object or a child.
        if (other.GetComponentInParent<HitZone>() == null) return;

        fired = true;

        if (VictoryManager.Instance == null)
        {
            Debug.LogWarning("VictoryTrigger: no VictoryManager found in the scene.");
            return;
        }

        // Only when victory will actually happen (not when it's being
        // ignored, e.g. after game over). Set BEFORE the OnVictory events
        // run, so anything they do, like loading a scene, sees it already saved.
        if (VictoryManager.Instance.CanTrigger)
        {
            PlayerData.TutorialCompleted = true;
        }

        VictoryManager.Instance.TriggerVictory();
    }
}