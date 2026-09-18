using UnityEngine;

/// <summary>
/// Enemy prefab for the top/bottom lanes. Pair with ScrollingMover for
/// movement. Deals its Damage Amount to whichever CharacterZone it reaches.
/// </summary>
public class Enemy : MonoBehaviour
{
    [Tooltip("How many hearts this enemy damages the character for when it reaches their zone.")]
    [SerializeField] private int damageAmount = 1;

    public int DamageAmount => damageAmount;
}
