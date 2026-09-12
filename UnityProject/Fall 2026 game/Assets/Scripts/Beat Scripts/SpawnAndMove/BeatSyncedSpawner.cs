using UnityEngine;

/// <summary>
/// Example spawner showing how to combine BeatEventTrigger, ScrollingMover,
/// and BeatSyncUtility so spawned objects arrive exactly at your hit-zone
/// on a beat.
///
/// Wire this up as follows:
/// 1. Put this script on your spawner GameObject, positioned where objects
///    should appear (e.g. off-screen right).
/// 2. Set Hit Zone Transform to the object marking "the middle of the screen".
/// 3. Set Beats To Travel to how many beats in advance you want objects to
///    spawn before they should be hit (bigger number = more reaction time,
///    but requires them to spawn further off-screen or move slower).
/// 4. On your Damager/spawn trigger GameObject, add BeatEventTrigger, set
///    it to fire every N beats, and hook its On Trigger to this script's
///    SpawnObject() method.
/// </summary>
public class BeatSyncedSpawner : MonoBehaviour
{
    [Tooltip("The prefab to spawn. Must have a ScrollingMover component on it.")]
    [SerializeField] private GameObject objectPrefab;

    [Tooltip("The point objects should arrive at exactly on the beat (e.g. the middle of the screen / hit zone).")]
    [SerializeField] private Transform hitZoneTransform;

    [Tooltip("How many beats in advance to spawn, i.e. how long the object should take to reach the hit zone.")]
    [SerializeField] private int beatsToTravel = 4;

    /// <summary>Call this from a BeatEventTrigger's On Trigger event.</summary>
    public void SpawnObject()
    {
        if (objectPrefab == null || hitZoneTransform == null)
        {
            Debug.LogWarning("BeatSyncedSpawner: missing prefab or hit zone reference.");
            return;
        }

        GameObject instance = Instantiate(objectPrefab, transform.position, Quaternion.identity);

        ScrollingMover mover = instance.GetComponent<ScrollingMover>();
        if (mover == null)
        {
            Debug.LogWarning("BeatSyncedSpawner: spawned prefab has no ScrollingMover component.");
            return;
        }

        float distance = transform.position.x - hitZoneTransform.position.x;
        mover.Speed = BeatSyncUtility.CalculateSpeedForBeats(distance, beatsToTravel);
    }
}
