using UnityEngine;

/// <summary>
/// Helper for calculating the speed a ScrollingMover needs in order to
/// travel a given distance in an exact number of beats, based on the
/// current BeatManager tempo. Use this when spawning an object so it
/// arrives at your hit-zone precisely on a beat, regardless of BPM.
/// </summary>
public static class BeatSyncUtility
{
    /// <summary>
    /// Returns the speed (units/sec) needed to cover 'distance' units in
    /// exactly 'beatsToTravel' beats, at the BeatManager's current BPM.
    /// </summary>
    public static float CalculateSpeedForBeats(float distance, int beatsToTravel)
    {
        if (BeatManager.Instance == null)
        {
            Debug.LogWarning("BeatSyncUtility: No BeatManager found in scene. Returning a fallback speed.");
            return distance; // fallback: 1 unit/sec per unit of distance, better than dividing by zero
        }

        if (beatsToTravel <= 0)
        {
            Debug.LogWarning("BeatSyncUtility: beatsToTravel must be > 0. Defaulting to 1.");
            beatsToTravel = 1;
        }

        float secPerBeat = 60f / BeatManager.Instance.Bpm;
        float travelTime = beatsToTravel * secPerBeat;
        return distance / travelTime;
    }
}
