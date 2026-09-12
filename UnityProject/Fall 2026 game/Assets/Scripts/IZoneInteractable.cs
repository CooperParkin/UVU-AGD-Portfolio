/// <summary>
/// Implement this on any spawnable prefab that should react to the player's
/// Up/Down input while it's inside the universal middle-of-screen zone.
/// Define each prefab's own behavior for both choices.
/// </summary>
public interface IZoneInteractable
{
    /// <summary>Called when the player presses/swipes Up while this object is in the zone.</summary>
    void OnUpAction();

    /// <summary>Called when the player presses/swipes Down while this object is in the zone.</summary>
    void OnDownAction();
}
