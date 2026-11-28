using System.Collections;
using UnityEngine;
using UnityEngine.SceneManagement;

/// <summary>
/// Plays a CutsceneData: each element fades in, stays fully visible for its
/// own number of seconds, fades out, and is removed, then the next one starts.
/// When the list is finished, it loads the scene you choose.
///
/// Setup (in the cutscene scene):
///  - Put this on an object, and assign the Cutscene Data asset.
///  - Assign a Content Parent: a UI object (usually a full-screen panel on a
///    Canvas) that the elements are created under.
///  - Type the Next Scene Name (it must be in File > Build Settings).
///  - Optionally assign the scene's SceneLoader to load through it. If left
///    empty, the same fade-out-and-load is done directly.
///
/// Elements are UI prefabs. A CanvasGroup is added to each one at runtime to
/// fade it, so every element, including any children, fades together.
///
/// Fade timing and curves are shared by every element. Uses real time, so it
/// plays the same regardless of Time.timeScale.
/// </summary>
public class CutsceneSequencer : MonoBehaviour
{
    [Header("Cutscene")]
    [SerializeField] private CutsceneData cutscene;
    [Tooltip("Each element is created under this object. Usually a full-screen panel on a Canvas.")]
    [SerializeField] private Transform contentParent;

    [Header("Fades (same for every element)")]
    [SerializeField, Min(0f)] private float fadeInSeconds = 0.5f;
    [Tooltip("Left to right is time through the fade, bottom to top is how visible the element is (0 = invisible, 1 = fully visible).")]
    [SerializeField] private AnimationCurve fadeInCurve = AnimationCurve.EaseInOut(0f, 0f, 1f, 1f);
    [SerializeField, Min(0f)] private float fadeOutSeconds = 0.5f;
    [Tooltip("Left to right is time through the fade, bottom to top is how far along the fade out is (0 = fully visible, 1 = gone).")]
    [SerializeField] private AnimationCurve fadeOutCurve = AnimationCurve.EaseInOut(0f, 0f, 1f, 1f);

    [Header("When Finished")]
    [Tooltip("Exact name of the scene to load after the last element (must be in Build Settings).")]
    [SerializeField] private string nextSceneName;
    [Tooltip("Optional. The scene's SceneLoader. If empty, the scene is loaded directly (with the same fade, if there's a SceneTransition).")]
    [SerializeField] private SceneLoader sceneLoader;

    // The most a single frame can advance a fade or a wait, so a hitch
    // can't skip a big chunk of it.
    private const float MaxStep = 1f / 30f;

    private void Start()
    {
        StartCoroutine(PlayRoutine());
    }

    private IEnumerator PlayRoutine()
    {
        if (cutscene != null && contentParent != null)
        {
            foreach (CutsceneElement element in cutscene.elements)
            {
                if (element == null || element.content == null)
                {
                    Debug.LogWarning("CutsceneSequencer: an element has no content assigned, so it was skipped.");
                    continue;
                }

                yield return StartCoroutine(ShowElement(element));
            }
        }
        else
        {
            Debug.LogWarning("CutsceneSequencer: no Cutscene Data or Content Parent assigned. Skipping straight to the next scene.");
        }

        LoadNextScene();
    }

    private IEnumerator ShowElement(CutsceneElement element)
    {
        GameObject instance = Instantiate(element.content, contentParent, false);

        // One CanvasGroup on the root fades the whole element and everything under it.
        CanvasGroup group = instance.GetComponent<CanvasGroup>();
        if (group == null)
        {
            group = instance.AddComponent<CanvasGroup>();
        }

        group.alpha = 0f;

        yield return StartCoroutine(Fade(group, fadeInSeconds, fadeInCurve, fadingIn: true));
        yield return StartCoroutine(Wait(element.seconds));
        yield return StartCoroutine(Fade(group, fadeOutSeconds, fadeOutCurve, fadingIn: false));

        Destroy(instance);
    }

    private IEnumerator Fade(CanvasGroup group, float seconds, AnimationCurve curve, bool fadingIn)
    {
        float elapsed = 0f;

        while (elapsed < seconds)
        {
            elapsed += Mathf.Min(Time.unscaledDeltaTime, MaxStep);

            float t = Mathf.Clamp01(elapsed / seconds);
            float progress = (curve != null && curve.length > 0) ? curve.Evaluate(t) : t;
            group.alpha = fadingIn ? progress : 1f - progress;
            yield return null;
        }

        group.alpha = fadingIn ? 1f : 0f;
    }

    private IEnumerator Wait(float seconds)
    {
        float elapsed = 0f;

        while (elapsed < seconds)
        {
            elapsed += Mathf.Min(Time.unscaledDeltaTime, MaxStep);
            yield return null;
        }
    }

    private void LoadNextScene()
    {
        if (string.IsNullOrEmpty(nextSceneName))
        {
            Debug.LogWarning("CutsceneSequencer: the cutscene finished, but no Next Scene Name is set.");
            return;
        }

        if (sceneLoader != null)
        {
            sceneLoader.LoadScene(nextSceneName);
            return;
        }

        // Same rules as SceneLoader.
        if (SceneTransition.Instance != null)
        {
            SceneTransition.Instance.LoadScene(nextSceneName);
            return;
        }

        Time.timeScale = 1f;
        SceneManager.LoadScene(nextSceneName);
    }
}
