using System.Collections.Generic;
using UnityEngine;

/// <summary>
/// A list of things to show, one after another, in a cutscene. Create via
/// the Assets menu and assign it to a CutsceneSequencer.
///
/// Each element's Content is a PREFAB (drag it in from the Project window).
/// An asset like this can't hold references to objects in a scene, so the
/// sequencer creates each element from its prefab when it's that element's
/// turn. For fading, the prefab should be a UI object (an Image, a TMP text,
/// or a panel containing them).
/// </summary>
[CreateAssetMenu(fileName = "NewCutsceneData", menuName = "Rhythm Game/Cutscene Data")]
public class CutsceneData : ScriptableObject
{
    public List<CutsceneElement> elements = new List<CutsceneElement>();
}

[System.Serializable]
public class CutsceneElement
{
    [Tooltip("The UI prefab to show.")]
    public GameObject content;

    [Tooltip("Seconds the element stays fully visible, between its fade in and its fade out.")]
    [Min(0f)] public float seconds = 3f;
}
