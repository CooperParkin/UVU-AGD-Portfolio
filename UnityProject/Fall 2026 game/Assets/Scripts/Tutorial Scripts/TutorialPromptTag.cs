using UnityEngine;

/// <summary>
/// The prompt for one tutorial row. All of the prefabs spawned for that row
/// share a single one of these, so the row only triggers once, whichever of
/// its prefabs reaches the Slowmo Zone first.
/// </summary>
public class TutorialPromptInfo
{
    public readonly string text;
    public readonly Sprite image;

    /// <summary>Which inputs are accepted while this row's stop is active.</summary>
    public readonly AllowedInputs allowed;

    /// <summary>Set once the row's prompt has been shown, so it can't trigger twice.</summary>
    public bool triggered;

    public TutorialPromptInfo(string text, Sprite image, AllowedInputs allowed)
    {
        this.text = text;
        this.image = image;

        // A copy, so later edits to the asset can't change a row in play.
        this.allowed = new AllowedInputs
        {
            up = allowed == null || allowed.up,
            down = allowed == null || allowed.down,
            left = allowed == null || allowed.left,
            right = allowed == null || allowed.right
        };
    }
}

/// <summary>
/// Added to spawned tutorial prefabs by TutorialSequencer (you never add
/// this yourself). Tells the SlowmoZone which prompt the prefab belongs to.
/// </summary>
public class TutorialPromptTag : MonoBehaviour
{
    public TutorialPromptInfo Info { get; private set; }

    public void Init(TutorialPromptInfo info)
    {
        Info = info;
    }
}