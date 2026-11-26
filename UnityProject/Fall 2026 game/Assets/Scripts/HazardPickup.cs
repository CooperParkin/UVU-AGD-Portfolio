using UnityEngine;

/// <summary>
/// Hazard pickup prefab. While in the zone:
/// - Up damages the top character
/// - Down damages the bottom character
/// - Right does nothing (successfully avoided)
/// - Left triggers game over immediately
///
/// Left and Right apply their effect instantly. Up and Down wait: the hazard
/// flies to its Hazard point first, and the damage lands when the flight is
/// "Impact Progress" of the way there (0.5 = halfway, measured after the
/// flight's curve is applied). At that same moment, the matching hazard
/// despawner in PickupWaypointRegistry is switched on briefly (see
/// AutoDeactivate). If the hazard has no point to fly to, the damage and the
/// despawner happen immediately.
///
/// Exception: if the character has exactly 1 heart at that moment, the
/// damage still lands, but the despawner is NOT switched on. Instead the
/// matching capsule (Upper for Up, Lower for Down, from the registry) is
/// deactivated.
///
/// In every case the hazard despawns when it arrives (see
/// FlyAndDespawnPickup).
///
/// Looks up characters from CharacterRegistry at the moment of damage, so
/// it works correctly when instantiated at runtime by a spawner.
/// </summary>
public class HazardPickup : FlyAndDespawnPickup, IZoneInteractable
{
    [Header("Settings")]
    [Tooltip("How many hearts this hazard damages on a hit.")]
    [SerializeField] private int damageAmount = 1;
    [Tooltip("How far along the Up/Down flight the damage lands and the despawner switches on. 0.5 is halfway. Measured on the eased path, so a curve that starts slow reaches it later in time.")]
    [SerializeField, Range(0.01f, 1f)] private float impactProgress = 0.5f;

    [Header("Flight Per Destination")]
    [SerializeField] private ExitFlight upFlight = new ExitFlight();
    [SerializeField] private ExitFlight downFlight = new ExitFlight();
    [SerializeField] private ExitFlight leftFlight = new ExitFlight();
    [SerializeField] private ExitFlight rightFlight = new ExitFlight();

    private static PickupWaypointRegistry Waypoints => PickupWaypointRegistry.Instance;

    public void OnUpAction()
    {
        if (!TryBeginUse()) return;

        // Grabbed now, so the hazard still knows which despawner to use when
        // the impact moment arrives.
        GameObject despawner = Waypoints != null ? Waypoints.HazardDespawnerUp : null;
        GameObject capsule = Waypoints != null ? Waypoints.UpperCapsule : null;

        ExitTo(
            Waypoints != null ? Waypoints.HazardUpPoint : null,
            upFlight,
            () => Impact(1, despawner, capsule),
            impactProgress);
    }

    public void OnDownAction()
    {
        if (!TryBeginUse()) return;

        GameObject despawner = Waypoints != null ? Waypoints.HazardDespawnerDown : null;
        GameObject capsule = Waypoints != null ? Waypoints.LowerCapsule : null;

        ExitTo(
            Waypoints != null ? Waypoints.HazardDownPoint : null,
            downFlight,
            () => Impact(2, despawner, capsule),
            impactProgress);
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

        ExitTo(Waypoints != null ? Waypoints.HazardLeftPoint : null, leftFlight);
    }

    public void OnRightAction()
    {
        if (!TryBeginUse()) return;

        // Successfully avoided: no damage, no effect.
        ExitTo(Waypoints != null ? Waypoints.HazardRightPoint : null, rightFlight);
    }

    // The moment of impact: damage the character, then either switch on the
    // despawner, or (if the character was on their last heart) deactivate
    // their capsule instead and leave the despawner off.
    private void Impact(int characterNumber, GameObject despawner, GameObject capsule)
    {
        CharacterHealth target = null;
        if (CharacterRegistry.Instance != null)
        {
            target = characterNumber == 1 ? CharacterRegistry.Instance.Character1 : CharacterRegistry.Instance.Character2;
        }

        // Checked right now, before the damage, so it reflects any healing
        // or damage that happened while the hazard was in flight.
        bool onLastHeart = target != null && target.CurrentHearts == 1;

        if (target != null)
        {
            target.TakeDamage(damageAmount);
        }
        else
        {
            Debug.LogWarning($"HazardPickup: No CharacterRegistry or Character{characterNumber} found in scene.");
        }

        if (onLastHeart)
        {
            if (capsule != null)
            {
                capsule.SetActive(false);
            }
            return;
        }

        if (despawner != null)
        {
            // Off then on, so a pulse that's already running restarts and
            // re-detects whatever is overlapping.
            despawner.SetActive(false);
            despawner.SetActive(true);
        }
    }
}