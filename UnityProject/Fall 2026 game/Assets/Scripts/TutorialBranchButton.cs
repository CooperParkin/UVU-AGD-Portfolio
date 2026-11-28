using UnityEngine;
using UnityEngine.Events;
using UnityEngine.UI;

/// <summary>
/// Put this on a UI Button. When the button is clicked, it checks the saved
/// Tutorial flag (PlayerData.TutorialCompleted) and runs ONE of two event
/// lists, which you fill in in the Inspector like any OnClick list:
///
///  - On Tutorial Completed: runs if the flag is true.
///  - On Tutorial Not Completed: runs if the flag is false.
///
/// Example: a Play button that goes to the main level if the tutorial is
/// done, and to the tutorial scene if it isn't. Add a SceneLoader.LoadScene
/// (string) entry to each list with the different scene names.
///
/// It hooks the Button's click by itself, so don't also add this script to
/// the Button's own OnClick list, or it would run twice.
/// </summary>
[RequireComponent(typeof(Button))]
public class TutorialBranchButton : MonoBehaviour
{
    [Tooltip("Runs when the button is clicked and the Tutorial flag is TRUE.")]
    public UnityEvent OnTutorialCompleted;

    [Tooltip("Runs when the button is clicked and the Tutorial flag is FALSE.")]
    public UnityEvent OnTutorialNotCompleted;

    private Button button;

    private void Awake()
    {
        button = GetComponent<Button>();
    }

    private void OnEnable()
    {
        button.onClick.AddListener(Evaluate);
    }

    private void OnDisable()
    {
        button.onClick.RemoveListener(Evaluate);
    }

    // Checked at the moment of the click, so it always reflects the
    // current saved value.
    private void Evaluate()
    {
        if (PlayerData.TutorialCompleted)
        {
            OnTutorialCompleted?.Invoke();
        }
        else
        {
            OnTutorialNotCompleted?.Invoke();
        }
    }
}
