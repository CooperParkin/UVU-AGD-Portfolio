using UnityEngine;

/// <summary>
/// Relay for driving "roll" animations from UnityEvents. Each Up input
/// queues one roll in the positive direction, each Down input one roll in
/// the negative direction, regardless of which pose the character is
/// currently in (the Animator Controller decides which clip to play based
/// on that pose).
///
/// Firing one direction also cancels any still-queued roll in the other
/// direction, so the most recent input always wins instead of an old,
/// opposite roll firing after the current one finishes.
///
/// Wire PlayerInputHandler's On Up Input to FlipUp() and On Down Input to
/// FlipDown(). Add one of these per animated character.
/// </summary>
public class FlipAnimator : MonoBehaviour
{
    [SerializeField] private Animator animator;
    [SerializeField] private string rollUpTrigger = "RollUp";
    [SerializeField] private string rollDownTrigger = "RollDown";

    private int rollUpHash;
    private int rollDownHash;

    private void Awake()
    {
        rollUpHash = Animator.StringToHash(rollUpTrigger);
        rollDownHash = Animator.StringToHash(rollDownTrigger);
    }

    /// <summary>Queues a roll in the positive direction.</summary>
    public void FlipUp()
    {
        if (animator == null) return;

        animator.ResetTrigger(rollDownHash);
        animator.SetTrigger(rollUpHash);
    }

    /// <summary>Queues a roll in the negative direction.</summary>
    public void FlipDown()
    {
        if (animator == null) return;

        animator.ResetTrigger(rollUpHash);
        animator.SetTrigger(rollDownHash);
    }
}
