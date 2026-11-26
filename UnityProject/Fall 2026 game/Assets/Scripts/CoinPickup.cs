using UnityEngine;

/// <summary>
/// Coin pickup prefab. Left adds 1 coin to the universal total. The other
/// directions have no effect.
///
/// Every input makes the coin fly to the matching Coin point in
/// PickupWaypointRegistry and despawn when it arrives (see
/// FlyAndDespawnPickup). The coin is collected instantly on Left; only the
/// despawn is delayed.
/// </summary>
public class CoinPickup : FlyAndDespawnPickup, IZoneInteractable
{
    [Header("Flight Per Destination")]
    [SerializeField] private ExitFlight leftFlight = new ExitFlight();
    [SerializeField] private ExitFlight upFlight = new ExitFlight();
    [SerializeField] private ExitFlight downFlight = new ExitFlight();
    [SerializeField] private ExitFlight rightFlight = new ExitFlight();

    private static PickupWaypointRegistry Waypoints => PickupWaypointRegistry.Instance;

    public void OnLeftAction()
    {
        if (!TryBeginUse()) return;

        if (CoinManager.Instance != null)
        {
            CoinManager.Instance.AddCoins(1);
        }
        else
        {
            Debug.LogWarning("CoinPickup: No CoinManager found in scene.");
        }

        ExitTo(Waypoints != null ? Waypoints.CoinLeftPoint : null, leftFlight);
    }

    public void OnUpAction()
    {
        if (!TryBeginUse()) return;

        ExitTo(Waypoints != null ? Waypoints.CoinUpPoint : null, upFlight);
    }

    public void OnDownAction()
    {
        if (!TryBeginUse()) return;

        ExitTo(Waypoints != null ? Waypoints.CoinDownPoint : null, downFlight);
    }

    public void OnRightAction()
    {
        if (!TryBeginUse()) return;

        ExitTo(Waypoints != null ? Waypoints.CoinRightPoint : null, rightFlight);
    }
}