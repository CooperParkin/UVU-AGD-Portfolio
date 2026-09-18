using UnityEngine;

/// <summary>
/// Marks the end of a lane. For Top/Bottom, damages the corresponding
/// character when an Enemy reaches it. For Middle, triggers game over when
/// a HazardPickup reaches it (i.e. the player let a hazard get all the way
/// through without hitting it). Automatic on contact — no player input
/// involved, unlike HitZone.
///
/// Setup: put this on a GameObject with a 3D Collider set to "Is Trigger",
/// positioned at the far end of the lane. Set Target Character to match
/// which lane it's on. As with any trigger detection against a
/// transform.Translate-moved object, either this GameObject or the
/// spawned prefab needs a Rigidbody (Is Kinematic is fine) for
/// OnTriggerEnter to fire at all.
/// </summary>
[RequireComponent(typeof(Collider))]
public class CharacterZone : MonoBehaviour
{
    public enum CharacterSlot { Top, Bottom, Middle }

    [Tooltip("Which zone this is. Top/Bottom damage that character on Enemy contact. Middle triggers game over on HazardPickup contact.")]
    [SerializeField] private CharacterSlot targetCharacter;

    private void Reset()
    {
        Collider col = GetComponent<Collider>();
        col.isTrigger = true;
    }

    private void OnTriggerEnter(Collider other)
    {
        if (targetCharacter == CharacterSlot.Middle)
        {
            HandleHazardCollision(other);
        }
        else
        {
            HandleEnemyCollision(other);
        }
    }

    private void HandleEnemyCollision(Collider other)
    {
        Enemy enemy = other.GetComponent<Enemy>();
        if (enemy == null) return;

        CharacterHealth target = GetTargetCharacter();
        if (target != null)
        {
            target.TakeDamage(enemy.DamageAmount);
        }
        else
        {
            Debug.LogWarning("CharacterZone: No target CharacterHealth found via CharacterRegistry.");
        }

        Destroy(other.gameObject);
    }

    private void HandleHazardCollision(Collider other)
    {
        HazardPickup hazard = other.GetComponent<HazardPickup>();
        if (hazard == null) return;

        if (GameOverManager.Instance != null)
        {
            GameOverManager.Instance.TriggerGameOver("A hazard reached the end of the middle lane.");
        }
        else
        {
            Debug.LogWarning("CharacterZone: No GameOverManager found in scene.");
        }

        Destroy(other.gameObject);
    }

    private CharacterHealth GetTargetCharacter()
    {
        if (CharacterRegistry.Instance == null) return null;

        return targetCharacter == CharacterSlot.Top
            ? CharacterRegistry.Instance.Character1
            : CharacterRegistry.Instance.Character2;
    }
}