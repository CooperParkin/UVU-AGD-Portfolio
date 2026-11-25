using System.Collections.Generic;
using UnityEngine;

/// <summary>
/// Endless scrolling floor built from one repeating tile prefab.
///
/// SPEED: matches your beat-synced lane objects. It uses the same formula
/// as BeatSyncUtility (distance / (lead beats x seconds per beat)), taking
/// the distance from a lane spawn point to the arrival line, so the floor
/// moves at exactly the speed lane objects do, no matter how far away the
/// floor's own spawn point is. Use the same Beats Lead Time as your
/// LevelSequencer / EndlessLevelSequencer.
///
/// SEAMLESS: tile positions are calculated from the total distance
/// scrolled (not by adding a small step to each tile every frame), so
/// adjacent tiles are always exactly one tile-length apart with no drift.
/// A tile that has fully passed the Despawn Point is reused at the far end
/// of the line instead of being destroyed and re-instantiated, which avoids
/// hitches with a large tile. New tiles only appear when position demands
/// it, so frame timing can never leave a gap.
///
/// The floor starts scrolling when BeatManager's clock starts, and freezes
/// when the game pauses (it uses Time.deltaTime, like ScrollingMover).
///
/// Do NOT put ScrollingMover on the tile prefab. This script moves the tiles.
/// </summary>
public class ScrollingFloor : MonoBehaviour
{
    private class Tile
    {
        public Transform transform;
        public long index;
    }

    [Header("Tiles")]
    [Tooltip("The tile to repeat. It needs at least one Renderer so its size can be measured.")]
    [SerializeField] private GameObject tilePrefab;
    [Tooltip("Length of one tile along X in world units. Leave at 0 to measure it automatically from the tile's renderers. Set this only if the tile's visible bounds are longer than its actual repeat length.")]
    [SerializeField] private float tileLengthOverride = 0f;

    [Header("Floor Range")]
    [Tooltip("Far-right edge of the floor. The floor always extends at least this far. Its Y and Z also set the floor's height and depth. Put it past the right edge of the camera view.")]
    [SerializeField] private Transform spawnPoint;
    [Tooltip("Far-left edge of the floor. A tile is reused once it has fully passed this X. Put it past the left edge of the camera view so nothing visible gets reused.")]
    [SerializeField] private Transform despawnPoint;

    [Header("Speed (use the same values as your lane sequencer)")]
    [Tooltip("One of your lane spawn points. Only its X is used, to work out the speed lane objects travel at.")]
    [SerializeField] private Transform referenceSpawnPoint;
    [Tooltip("The same arrival line your lane sequencer uses.")]
    [SerializeField] private Transform arrivalLineTransform;
    [Tooltip("The same Beats Lead Time your lane sequencer uses.")]
    [SerializeField] private int beatsLeadTime = 4;

    // Safety cap so a bad tile size can't create an endless number of tiles.
    private const int MaxTiles = 64;

    private readonly Queue<Tile> tiles = new Queue<Tile>();

    private double scrollOffset;
    private double originX;
    private double tileLength;
    private double spanStartOffset;
    private long highestIndex;
    private float floorY;
    private float floorZ;
    private Quaternion tileRotation;

    private void Start()
    {
        if (!BuildFloor())
        {
            enabled = false;
        }
    }

    private void Update()
    {
        scrollOffset += (double)GetSpeed() * Time.deltaTime;

        MaintainTiles();
        PlaceTiles();
    }

    private bool BuildFloor()
    {
        if (tilePrefab == null || spawnPoint == null || despawnPoint == null)
        {
            Debug.LogError("ScrollingFloor: Tile Prefab, Spawn Point, and Despawn Point must all be assigned.");
            return false;
        }

        if (despawnPoint.position.x >= spawnPoint.position.x)
        {
            Debug.LogError("ScrollingFloor: Despawn Point must be to the left of Spawn Point (lower X).");
            return false;
        }

        if (referenceSpawnPoint == null || arrivalLineTransform == null)
        {
            Debug.LogWarning("ScrollingFloor: Reference Spawn Point or Arrival Line is not assigned, so the floor won't scroll.");
        }

        floorY = spawnPoint.position.y;
        floorZ = spawnPoint.position.z;
        tileRotation = tilePrefab.transform.rotation;

        // The first tile doubles as the measuring stick for the tile's size.
        Tile first = CreateTile(0, new Vector3(despawnPoint.position.x, floorY, floorZ));
        if (!MeasureTile(first.transform))
        {
            Destroy(first.transform.gameObject);
            return false;
        }

        // Line the first tile's left edge up with the Despawn Point.
        originX = despawnPoint.position.x - spanStartOffset;
        tiles.Enqueue(first);
        highestIndex = 0;

        // Cover the whole range from Despawn Point to Spawn Point...
        while (SpanEnd(highestIndex) < spawnPoint.position.x && tiles.Count < MaxTiles)
        {
            AddTile();
        }

        // ...plus one spare. With the spare in place, the steady state only
        // ever reuses tiles and never has to instantiate a large tile
        // mid-game.
        if (tiles.Count < MaxTiles)
        {
            AddTile();
        }

        if (SpanEnd(highestIndex) < spawnPoint.position.x)
        {
            Debug.LogWarning("ScrollingFloor: hit the tile limit before covering the full range. Is the tile length much smaller than the distance between Spawn Point and Despawn Point?");
        }

        PlaceTiles();
        return true;
    }

    private bool MeasureTile(Transform tile)
    {
        Renderer[] renderers = tile.GetComponentsInChildren<Renderer>();
        if (renderers.Length == 0)
        {
            Debug.LogError("ScrollingFloor: Tile Prefab needs at least one Renderer so its size can be measured.");
            return false;
        }

        Bounds bounds = renderers[0].bounds;
        for (int i = 1; i < renderers.Length; i++)
        {
            bounds.Encapsulate(renderers[i].bounds);
        }

        // Where the tile's left edge sits relative to its pivot.
        spanStartOffset = bounds.min.x - tile.position.x;
        tileLength = tileLengthOverride > 0f ? tileLengthOverride : bounds.size.x;

        if (tileLength <= 0.0001)
        {
            Debug.LogError("ScrollingFloor: the tile's measured length is zero. Set Tile Length Override.");
            return false;
        }

        return true;
    }

    private float GetSpeed()
    {
        if (BeatManager.Instance == null || !BeatManager.Instance.IsRunning) return 0f;
        if (referenceSpawnPoint == null || arrivalLineTransform == null) return 0f;

        float distance = referenceSpawnPoint.position.x - arrivalLineTransform.position.x;
        return BeatSyncUtility.CalculateSpeedForBeats(distance, beatsLeadTime);
    }

    private void MaintainTiles()
    {
        double spawnX = spawnPoint.position.x;
        double despawnX = despawnPoint.position.x;

        // Keep the floor reaching at least as far as the Spawn Point.
        while (SpanEnd(highestIndex) < spawnX)
        {
            Tile oldest = tiles.Peek();

            if (SpanEnd(oldest.index) < despawnX)
            {
                // The oldest tile is completely past the Despawn Point, so
                // reuse it at the front of the line.
                tiles.Dequeue();
                highestIndex++;
                oldest.index = highestIndex;
                tiles.Enqueue(oldest);
            }
            else if (tiles.Count < MaxTiles)
            {
                AddTile();
            }
            else
            {
                Debug.LogWarning("ScrollingFloor: hit the tile limit and can't extend the floor any further.");
                return;
            }
        }
    }

    private void PlaceTiles()
    {
        foreach (Tile tile in tiles)
        {
            tile.transform.position = new Vector3((float)TileX(tile.index), floorY, floorZ);
        }
    }

    private void AddTile()
    {
        highestIndex++;
        tiles.Enqueue(CreateTile(highestIndex, new Vector3((float)TileX(highestIndex), floorY, floorZ)));
    }

    private Tile CreateTile(long index, Vector3 position)
    {
        GameObject instance = Instantiate(tilePrefab, position, tileRotation);
        instance.transform.SetParent(transform, true);
        return new Tile { transform = instance.transform, index = index };
    }

    // World X of a tile's pivot, worked out from scratch each time from its
    // slot number and the total distance scrolled. Nothing accumulates per
    // tile, so spacing between tiles is always exact.
    private double TileX(long index)
    {
        return originX + index * tileLength - scrollOffset;
    }

    // World X of the right edge of a tile.
    private double SpanEnd(long index)
    {
        return TileX(index) + spanStartOffset + tileLength;
    }
}
