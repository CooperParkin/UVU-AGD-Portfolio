using UnityEngine;

/// <summary>
/// Holds a scene-wide reference to both playable characters' CharacterHealth
/// components, so spawned prefabs (which can't hold direct scene references
/// themselves) can look them up when needed.
///
/// Put this on a single persistent GameObject in your scene and assign both
/// characters once in the Inspector.
/// </summary>
[DefaultExecutionOrder(-1000)] // Guarantees this Awake runs before anything that needs it
public class CharacterRegistry : MonoBehaviour
{
    public static CharacterRegistry Instance { get; private set; }

    [SerializeField] private CharacterHealth character1;
    [SerializeField] private CharacterHealth character2;

    public CharacterHealth Character1 => character1;
    public CharacterHealth Character2 => character2;

    private void Awake()
    {
        if (Instance != null && Instance != this)
        {
            Destroy(gameObject);
            return;
        }
        Instance = this;
    }
}
