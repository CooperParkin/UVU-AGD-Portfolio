using System.Collections;
using UnityEngine;

/// <summary>
/// Turns its own GameObject back off a few physics steps after it is
/// activated. Put this next to a DespawnZone on a "despawner" object that
/// something else switches on for a moment (see HazardPickup).
///
/// Counted in physics steps, not rendered frames, because trigger overlaps
/// are only detected during physics steps. The object needs at least two or
/// three of them to reliably catch everything already touching it.
///
/// If the object is switched off and on again while already active, the
/// count restarts.
///
/// Stops counting while Time.timeScale is 0, like all physics.
/// </summary>
public class AutoDeactivate : MonoBehaviour
{
    [Tooltip("How many physics steps to stay active before turning off. Use at least 2. At the default Fixed Timestep (0.02s) each step is 1/50 of a second.")]
    [SerializeField, Min(1)] private int activePhysicsSteps = 3;

    private void OnEnable()
    {
        StartCoroutine(DeactivateRoutine());
    }

    private IEnumerator DeactivateRoutine()
    {
        for (int i = 0; i < activePhysicsSteps; i++)
        {
            yield return new WaitForFixedUpdate();
        }

        gameObject.SetActive(false);
    }
}
