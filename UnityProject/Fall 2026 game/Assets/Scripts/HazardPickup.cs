using UnityEngine;

/// <summary>
/// Hazard pickup prefab. While in the zone:
/// - Up damages the top character
/// - Down damages the bottom character
/// - Right destroys it harmlessly (successfully avoided)
/// - Left triggers game over immediately
///
/// Looks up characters from CharacterRegistry at the moment it's used, so
/// it works correctly when instantiated at runtime by a spawner.
/// </summary>
public class HazardPickup : MonoBehaviour, IZoneInteractable
{
    [Header("Settings")]
    [Tooltip("How many hearts this hazard damages on a hit.")]
    [SerializeField] private int damageAmount = 1;

    public void OnUpAction()
    {
        if (CharacterRegistry.Instance != null && CharacterRegistry.Instance.Character1 != null)
        {
            CharacterRegistry.Instance.Character1.TakeDamage(damageAmount);
        }
        else
        {
            Debug.LogWarning("HazardPickup: No CharacterRegistry or Character1 found in scene.");
        }

        Destroy(gameObject);
    }

    public void OnDownAction()
    {
        if (CharacterRegistry.Instance != null && CharacterRegistry.Instance.Character2 != null)
        {
            CharacterRegistry.Instance.Character2.TakeDamage(damageAmount);
        }
        else
        {
            Debug.LogWarning("HazardPickup: No CharacterRegistry or Character2 found in scene.");
        }

        Destroy(gameObject);
    }

    public void OnLeftAction()
    {
        if (GameOverManager.Instance != null)
        {
            GameOverManager.Instance.TriggerGameOver("Hit a hazard's Left action.");
        }
        else
        {
            Debug.LogWarning("HazardPickup: No GameOverManager found in scene.");
        }

        Destroy(gameObject);
    }

    public void OnRightAction()
    {
        // Successfully avoided — no damage, no effect.
        Destroy(gameObject);
    }
}
