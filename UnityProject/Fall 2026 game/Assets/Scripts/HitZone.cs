using UnityEngine;
using System.Collections.Generic;

/// <summary>
/// The single universal zone in the middle of the screen. Tracks which
/// IZoneInteractable objects are currently inside it, and routes the
/// player's Up/Down input to whatever's there via TryUp() / TryDown().
///
/// Setup: put this on a GameObject with a 3D Collider set to "Is Trigger",
/// positioned/scaled to cover the middle-of-screen zone. Only one of these
/// should exist in the scene.
/// </summary>
[RequireComponent(typeof(Collider))]
public class HitZone : MonoBehaviour
{
    [Tooltip("Only objects with this tag are considered interactable here. Leave blank to accept any object with an IZoneInteractable component.")]
    [SerializeField] private string requiredTag = "";

    private readonly List<IZoneInteractable> objectsInZone = new List<IZoneInteractable>();

    private void Reset()
    {
        // Make sure the collider is set up as a trigger by default.
        Collider col = GetComponent<Collider>();
        col.isTrigger = true;
    }

    private void OnTriggerEnter(Collider other)
    {
        if (!string.IsNullOrEmpty(requiredTag) && !other.CompareTag(requiredTag)) return;

        IZoneInteractable interactable = other.GetComponent<IZoneInteractable>();
        if (interactable != null && !objectsInZone.Contains(interactable))
        {
            objectsInZone.Add(interactable);
        }
    }

    private void OnTriggerExit(Collider other)
    {
        IZoneInteractable interactable = other.GetComponent<IZoneInteractable>();
        if (interactable != null)
        {
            objectsInZone.Remove(interactable);
        }
    }

    /// <summary>Calls OnUpAction() on whatever's currently in the zone. Returns true if something was there.</summary>
    public bool TryUp()
    {
        IZoneInteractable target = GetCurrentTarget();
        if (target == null) return false;

        target.OnUpAction();
        return true;
    }

    /// <summary>Calls OnDownAction() on whatever's currently in the zone. Returns true if something was there.</summary>
    public bool TryDown()
    {
        IZoneInteractable target = GetCurrentTarget();
        if (target == null) return false;

        target.OnDownAction();
        return true;
    }

    /// <summary>Calls OnLeftAction() on whatever's currently in the zone. Returns true if something was there.</summary>
    public bool TryLeft()
    {
        IZoneInteractable target = GetCurrentTarget();
        if (target == null) return false;

        target.OnLeftAction();
        return true;
    }

    /// <summary>Calls OnRightAction() on whatever's currently in the zone. Returns true if something was there.</summary>
    public bool TryRight()
    {
        IZoneInteractable target = GetCurrentTarget();
        if (target == null) return false;

        target.OnRightAction();
        return true;
    }

    private IZoneInteractable GetCurrentTarget()
    {
        // Clean up any destroyed/null entries before checking.
        objectsInZone.RemoveAll(o => o == null || (o as MonoBehaviour) == null);

        if (objectsInZone.Count == 0) return null;

        // Targets whichever object entered the zone first.
        return objectsInZone[0];
    }
}