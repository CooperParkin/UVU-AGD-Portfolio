using UnityEngine;
using UnityEngine.UI;

/// <summary>
/// Displays a CharacterHealth's current hearts as a row of heart icons.
/// Attach this to the UI object holding a character's heart images,
/// drag in the CharacterHealth to watch and the Image icons in left-to-right order.
/// </summary>
public class HeartsUI : MonoBehaviour
{
    [Header("References")]
    [SerializeField] private CharacterHealth characterHealth;
    [Tooltip("Heart icon Images, in the order they should fill/empty.")]
    [SerializeField] private Image[] heartImages;

    [Header("Sprites")]
    [Tooltip("Full sprite used by every element except element 0.")]
    [SerializeField] private Sprite fullHeartSprite;
    [Tooltip("Full sprite used only by element 0 (the character's own icon). If left empty, element 0 uses the regular full heart sprite instead.")]
    [SerializeField] private Sprite characterSprite;
    [Tooltip("Empty sprite used by every element, including element 0.")]
    [SerializeField] private Sprite emptyHeartSprite;

    private void OnEnable()
    {
        if (characterHealth != null)
        {
            characterHealth.OnHealthChanged.AddListener(UpdateHearts);
        }
    }

    private void OnDisable()
    {
        if (characterHealth != null)
        {
            characterHealth.OnHealthChanged.RemoveListener(UpdateHearts);
        }
    }

    private void Start()
    {
        if (characterHealth != null)
        {
            UpdateHearts(characterHealth.CurrentHearts, characterHealth.MaxHearts);
        }
    }

    /// <summary>
    /// Redraws the heart row. Also handles maxHearts changing at runtime
    /// by showing/hiding heart slots to match.
    /// </summary>
    public void UpdateHearts(int current, int max)
    {
        for (int i = 0; i < heartImages.Length; i++)
        {
            bool slotExists = i < max;
            heartImages[i].gameObject.SetActive(slotExists);

            if (slotExists)
            {
                heartImages[i].sprite = i < current ? GetFullSprite(i) : emptyHeartSprite;
            }
        }
    }

    // Element 0 gets the character sprite when one is assigned; every other
    // element (and element 0 with no character sprite) gets the regular one.
    private Sprite GetFullSprite(int index)
    {
        if (index == 0 && characterSprite != null)
        {
            return characterSprite;
        }

        return fullHeartSprite;
    }
}