using UnityEngine;

/// <summary>
/// Relay for driving the character's animations from UnityEvents:
/// - FlipUp / FlipDown: roll in the positive / negative direction
/// - Deflect: right-input punch-style animation
/// - Collect: left-input punch-style animation
///
/// This script only fires triggers. The Animator Controller decides which
/// clip plays (for example Deflect_FromBack vs Deflect_FromBelly) based on
/// which idle state the character is currently in, so this script never
/// needs to know the current pose.
///
/// Firing any trigger cancels the other queued ones, so the most recent
/// input always wins instead of an old input firing late after the current
/// animation finishes.
///
/// Wire PlayerInputHandler's On Up / Down / Left / Right Input events to
/// FlipUp / FlipDown / Collect / Deflect. Add one of these per animated
/// character.
/// </summary>
public class FlipAnimator : MonoBehaviour
{
    [SerializeField] private Animator animator;

    [Header("Trigger Names (must match the Animator Controller)")]
    [SerializeField] private string rollUpTrigger = "RollUp";
    [SerializeField] private string rollDownTrigger = "RollDown";
    [SerializeField] private string deflectTrigger = "Deflect";
    [SerializeField] private string collectTrigger = "Collect";

    private int rollUpHash;
    private int rollDownHash;
    private int deflectHash;
    private int collectHash;
    private int[] allHashes;

    private void Awake()
    {
        rollUpHash = Animator.StringToHash(rollUpTrigger);
        rollDownHash = Animator.StringToHash(rollDownTrigger);
        deflectHash = Animator.StringToHash(deflectTrigger);
        collectHash = Animator.StringToHash(collectTrigger);
        allHashes = new[] { rollUpHash, rollDownHash, deflectHash, collectHash };
    }

    /// <summary>Queues a roll in the positive direction.</summary>
    public void FlipUp() => Fire(rollUpHash);

    /// <summary>Queues a roll in the negative direction.</summary>
    public void FlipDown() => Fire(rollDownHash);

    /// <summary>Plays the deflect animation for the current pose.</summary>
    public void Deflect() => Fire(deflectHash);

    /// <summary>Plays the collect animation for the current pose.</summary>
    public void Collect() => Fire(collectHash);

    private void Fire(int triggerHash)
    {
        if (animator == null) return;

        // Clear every other queued trigger so only the latest input stays buffered.
        foreach (int hash in allHashes)
        {
            if (hash != triggerHash)
            {
                animator.ResetTrigger(hash);
            }
        }

        animator.SetTrigger(triggerHash);
    }
}