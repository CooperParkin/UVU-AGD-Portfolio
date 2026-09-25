using UnityEngine;

/// <summary>
/// Coin pickup prefab. Left adds 1 coin to the universal total. All other
/// directions just destroy it with no effect.
/// </summary>
public class CoinPickup : MonoBehaviour, IZoneInteractable
{
    public void OnLeftAction()
    {
        if (CoinManager.Instance != null)
        {
            CoinManager.Instance.AddCoins(1);
        }
        else
        {
            Debug.LogWarning("CoinPickup: No CoinManager found in scene.");
        }

        Destroy(gameObject);
    }

    public void OnUpAction()
    {
        Destroy(gameObject);
    }

    public void OnDownAction()
    {
        Destroy(gameObject);
    }

    public void OnRightAction()
    {
        Destroy(gameObject);
    }
}
