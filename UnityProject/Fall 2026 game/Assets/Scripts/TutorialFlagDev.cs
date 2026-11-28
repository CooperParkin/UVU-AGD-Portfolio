using UnityEngine;
#if UNITY_EDITOR
using UnityEditor;
#endif

/// <summary>
/// Developer tool for the saved "Tutorial" flag (see PlayerData).
///
/// Three ways to use it:
///  - Menu bar: Tools > Tutorial Flag > Reset To False / Set To True / Log
///    Value. Works any time, in or out of Play mode, with no scene object.
///  - On this component: click the three dots (or right-click) in its
///    Inspector header and pick the same actions.
///  - "Reset On Start": tick it and the flag is set back to false every time
///    the scene starts, handy for testing the tutorial flow over and over.
///
/// Remove this object (or untick Reset On Start) before shipping, or players
/// will have their tutorial progress wiped each time the scene loads.
/// </summary>
public class TutorialFlagDev : MonoBehaviour
{
    [Tooltip("Sets the Tutorial flag back to false every time this scene starts. Leave off unless you're testing.")]
    [SerializeField] private bool resetOnStart = false;

    private void Start()
    {
        if (resetOnStart)
        {
            ResetToFalse();
        }
    }

    [ContextMenu("Reset Tutorial Flag To False")]
    private void ResetToFalse()
    {
        PlayerData.TutorialCompleted = false;
        Debug.Log("Tutorial flag set to false.");
    }

    [ContextMenu("Set Tutorial Flag To True")]
    private void SetToTrue()
    {
        PlayerData.TutorialCompleted = true;
        Debug.Log("Tutorial flag set to true.");
    }

    [ContextMenu("Log Tutorial Flag Value")]
    private void LogValue()
    {
        Debug.Log($"Tutorial flag is {PlayerData.TutorialCompleted}.");
    }

#if UNITY_EDITOR
    [MenuItem("Tools/Tutorial Flag/Reset To False")]
    private static void MenuResetToFalse()
    {
        PlayerData.TutorialCompleted = false;
        Debug.Log("Tutorial flag set to false.");
    }

    [MenuItem("Tools/Tutorial Flag/Set To True")]
    private static void MenuSetToTrue()
    {
        PlayerData.TutorialCompleted = true;
        Debug.Log("Tutorial flag set to true.");
    }

    [MenuItem("Tools/Tutorial Flag/Log Value")]
    private static void MenuLogValue()
    {
        Debug.Log($"Tutorial flag is {PlayerData.TutorialCompleted}.");
    }
#endif
}
