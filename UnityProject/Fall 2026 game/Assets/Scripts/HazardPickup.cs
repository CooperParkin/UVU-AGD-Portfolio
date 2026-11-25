using UnityEngine;

/// <summary>
/// Hazard pickup prefab. While in the zone:
/// - Up damages the top character
/// - Down damages the bottom character
/// - Right does nothing (successfully avoided)
/// - Left triggers game over immediately
///
/// Every input applies its effect instantly, then the hazard flies to the
/// matching Hazard point in PickupWaypointRegistry and despawns when it
/// arrives (see FlyAndDespawnPickup). Only the despawn is delayed.
///
/// Looks up characters from CharacterRegistry at the moment it's used, so
/// it works correctly when instantiated at runtime by a spawner.
/// </summary>
public class HazardPickup : FlyAndDespawnPickup, IZoneInteractable
{
    [Header("Settings")]
    [Tooltip("How many hearts this hazard damages on a hit.")]
    [SerializeField] private int damageAmount = 1;

    private static PickupWaypointRegistry Waypoints => PickupWaypointRegistry.Instance;

    public void OnUpAction()
    {
        if (!TryBeginUse()) return;

        if (CharacterRegistry.Instance != null && CharacterRegistry.Instance.Character1 != null)
        {
            CharacterRegistry.Instance.Character1.TakeDamage(damageAmount);
        }
        else
        {
            Debug.LogWarning("HazardPickup: No CharacterRegistry or Character1 found in scene.");
        }

        ExitTo(Waypoints != null ? Waypoints.HazardUpPoint : null);
    }

    public void OnDownAction()
    {
        if (!TryBeginUse()) return;

        if (CharacterRegistry.Instance != null && CharacterRegistry.Instance.Character2 != null)
        {
            CharacterRegistry.Instance.Character2.TakeDamage(damageAmount);
        }
        else
        {
            Debug.LogWarning("HazardPickup: No CharacterRegistry or Character2 found in scene.");
        }

        ExitTo(Waypoints != null ? Waypoints.HazardDownPoint : null);
    }

    public void OnLeftAction()
    {
        if (!TryBeginUse()) return;

        if (GameOverManager.Instance != null)
        {
            GameOverManager.Instance.TriggerGameOver("Hit a hazard's Left action.");
        }
        else
        {
            Debug.LogWarning("HazardPickup: No GameOverManager found in scene.");
        }

        ExitTo(Waypoints != null ? Waypoints.HazardLeftPoint : null);
    }

    public void OnRightAction()
    {
        if (!TryBeginUse()) return;

        // Successfully avoided: no damage, no effect.
        ExitTo(Waypoints != null ? Waypoints.HazardRightPoint : null);
    }
}