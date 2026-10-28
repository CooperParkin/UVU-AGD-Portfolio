using UnityEngine;

/// <summary>
/// Attach this to an Animator Controller STATE (not a GameObject): select
/// the state in the Animator window, then Add Behaviour in the Inspector.
/// Whenever the state is entered, it sets the chosen Bool parameter to the
/// chosen value.
///
/// Used to let one Animator layer react to what another layer is doing,
/// since layers can only communicate through parameters. For example,
/// BackIdle sets OnBelly = false and BellyIdle sets OnBelly = true, and a
/// separate wheel layer switches clips based on OnBelly.
/// </summary>
public class SetBoolOnStateEnter : StateMachineBehaviour
{
    [Tooltip("Name of the Bool parameter to set (must exist in the Animator Controller).")]
    [SerializeField] private string parameterName = "OnBelly";

    [Tooltip("Value to set the parameter to when this state is entered.")]
    [SerializeField] private bool value;

    public override void OnStateEnter(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    {
        animator.SetBool(parameterName, value);
    }
}
