using UnityEngine;

/// <summary>
/// Heart pickup prefab. While in the zone, Up heals Character 1 and
/// Down heals Character 2. Looks up both characters from CharacterRegistry
/// at the moment it's used, so it works correctly even when instantiated
/// at runtime by a spawner (no per-instance wiring needed).
/// </summary>
public class HeartPickup : MonoBehaviour, IZoneInteractable
{
    [Header("Settings")]
    [Tooltip("How many hearts this pickup restores.")]
    [SerializeField] private int healAmount = 1;

    public void OnUpAction()
    {
        if (CharacterRegistry.Instance != null && CharacterRegistry.Instance.Character1 != null)
        {
            CharacterRegistry.Instance.Character1.Heal(healAmount);
        }
        else
        {
            Debug.LogWarning("HeartPickup: No CharacterRegistry or Character1 found in scene.");
        }

        Destroy(gameObject);
    }

    public void OnDownAction()
    {
        if (CharacterRegistry.Instance != null && CharacterRegistry.Instance.Character2 != null)
        {
            CharacterRegistry.Instance.Character2.Heal(healAmount);
        }
        else
        {
            Debug.LogWarning("HeartPickup: No CharacterRegistry or Character2 found in scene.");
        }

        Destroy(gameObject);
    }
}
