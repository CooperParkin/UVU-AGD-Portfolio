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
    [SerializeField] private Sprite fullHeartSprite;
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
                heartImages[i].sprite = i < current ? fullHeartSprite : emptyHeartSprite;
            }
        }
    }
}
