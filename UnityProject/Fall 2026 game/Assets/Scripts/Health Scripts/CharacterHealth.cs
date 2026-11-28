using UnityEngine;
using UnityEngine.Events;

/// <summary>
/// Tracks a character's health in whole "hearts" and notifies listeners
/// (like HeartsUI) whenever it changes. Attach one of these to each
/// party member.
/// </summary>
public class CharacterHealth : MonoBehaviour
{
    [Header("Health Settings")]
    [SerializeField] private int maxHearts = 3;
    [Tooltip("Hearts the character starts with. Always honored, including 0 (starts dead). Clamped to 0 through Max Hearts.")]
    [SerializeField] private int currentHearts = 3;

    [Header("Events")]
    [Tooltip("Invoked whenever health changes. Params: (currentHearts, maxHearts)")]
    public UnityEvent<int, int> OnHealthChanged;

    [Tooltip("Invoked once when hearts reach 0.")]
    public UnityEvent OnDeath;

    public int MaxHearts => maxHearts;
    public int CurrentHearts => currentHearts;
    public bool IsDead => currentHearts <= 0;

    private void Awake()
    {
        // Starts with exactly what the Inspector says, kept within bounds.
        currentHearts = Mathf.Clamp(currentHearts, 0, maxHearts);
    }

    private void OnValidate()
    {
        // Keeps the Inspector values sensible while editing.
        maxHearts = Mathf.Max(1, maxHearts);
        currentHearts = Mathf.Clamp(currentHearts, 0, maxHearts);
    }

    private void Start()
    {
        // Make sure any UI already listening gets the initial state.
        OnHealthChanged?.Invoke(currentHearts, maxHearts);
    }

    /// <summary>Reduces health by the given number of hearts (minimum 0).</summary>
    public void TakeDamage(int amount)
    {
        if (amount <= 0 || IsDead) return;

        currentHearts = Mathf.Max(0, currentHearts - amount);
        OnHealthChanged?.Invoke(currentHearts, maxHearts);

        if (IsDead)
        {
            OnDeath?.Invoke();
        }
    }

    /// <summary>Restores health by the given number of hearts (capped at max).</summary>
    public void Heal(int amount)
    {
        if (amount <= 0 || IsDead) return;

        currentHearts = Mathf.Min(maxHearts, currentHearts + amount);
        OnHealthChanged?.Invoke(currentHearts, maxHearts);
    }

    /// <summary>
    /// Changes the max heart count (e.g. from an upgrade item).
    /// By default also heals to full.
    /// </summary>
    public void SetMaxHearts(int newMax, bool healToFull = true)
    {
        maxHearts = Mathf.Max(1, newMax);
        currentHearts = healToFull ? maxHearts : Mathf.Min(currentHearts, maxHearts);
        OnHealthChanged?.Invoke(currentHearts, maxHearts);
    }

    /// <summary>Instantly kills the character, regardless of current health.</summary>
    public void Kill()
    {
        if (IsDead) return;
        currentHearts = 0;
        OnHealthChanged?.Invoke(currentHearts, maxHearts);
        OnDeath?.Invoke();
    }
}