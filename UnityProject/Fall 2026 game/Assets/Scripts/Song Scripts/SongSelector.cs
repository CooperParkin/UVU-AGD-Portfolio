using System.Collections;
using TMPro;
using UnityEngine;
using UnityEngine.SceneManagement;

/// <summary>
/// Main menu song picker. Shows one song at a time with Previous / Next
/// buttons (wrapping around the list), and a Play button that loads the
/// gameplay scene with the shown song.
///
/// Setup:
///  - Put this on an object in the main menu scene and assign the Song
///    Library asset, a TMP text for the title (and optionally one for the
///    BPM), and type the gameplay scene's name.
///  - Hook the buttons' OnClick events to this component: Previous(),
///    Next() and Play().
///  - The gameplay scene must be in File > Build Settings, and its
///    BeatManager does the rest (see BeatManager's Use Selected Song).
///
/// The last song you picked is remembered between runs of the game, so the
/// menu opens on it next time.
/// </summary>
public class SongSelector : MonoBehaviour
{
    private const string LastSongKey = "LastSelectedSongIndex";

    [Header("References")]
    [SerializeField] private SongLibrary library;
    [SerializeField] private TMP_Text titleText;
    [Tooltip("Optional. Shows the BPM of the current song.")]
    [SerializeField] private TMP_Text bpmText;
    [Tooltip("Optional. Shows the difficulty of the current song (Easy, Medium or Hard).")]
    [SerializeField] private TMP_Text difficultyText;

    [Header("Preview")]
    [Tooltip("Optional. An AudioSource in the menu scene (Play On Awake off) used to preview songs as you scroll. Leave empty for no preview.")]
    [SerializeField] private AudioSource previewSource;
    [Range(0f, 1f)]
    [SerializeField] private float previewVolume = 1f;
    [Tooltip("Also play the preview of the first shown song when the menu opens. Off by default so it doesn't clash with menu music.")]
    [SerializeField] private bool previewOnOpen = false;
    [Tooltip("Loop the preview back to its start point when it reaches the end of the clip.")]
    [SerializeField] private bool loopPreview = true;
    [Tooltip("When the menu opens, quietly load every song's audio in the background (one per frame), so scrolling to a song doesn't stall. Uses more memory if your clips are set to Decompress On Load. Turn off if memory is a concern.")]
    [SerializeField] private bool preloadAllClips = true;

    [Header("Play")]
    [Tooltip("Exact name of the gameplay scene to load (must be in Build Settings).")]
    [SerializeField] private string gameplaySceneName = "Endless";

    private int index;
    private bool previewing;
    private bool preparingPreview;
    private int previewRequest;

    private void Start()
    {
        if (library == null || library.Count == 0)
        {
            Debug.LogWarning("SongSelector: no Song Library assigned, or it has no songs.");
            ShowCurrent();
            return;
        }

        index = Mathf.Clamp(PlayerPrefs.GetInt(LastSongKey, 0), 0, library.Count - 1);
        ShowCurrent();

        if (preloadAllClips && previewSource != null)
        {
            StartCoroutine(PreloadClips());
        }

        if (previewOnOpen)
        {
            PlayPreview();
        }
    }

    private void Update()
    {
        // Loops the preview from its start point, rather than from 0.
        if (!loopPreview || previewSource == null || previewSource.clip == null) return;
        if (previewSource.isPlaying) return;
        if (!previewing || preparingPreview) return;

        PlayPreview();
    }

    // Starts loading every song's audio in the background, one per frame so
    // the work is spread out instead of landing all at once.
    private IEnumerator PreloadClips()
    {
        foreach (SongLibrary.SongEntry song in library.Songs)
        {
            if (song != null && song.clip != null && song.clip.loadState == AudioDataLoadState.Unloaded)
            {
                song.clip.LoadAudioData();
                yield return null;
            }
        }
    }

    public void Next()
    {
        Step(1);
    }

    public void Previous()
    {
        Step(-1);
    }

    public void Play()
    {
        SongLibrary.SongEntry song = library != null ? library.Get(index) : null;
        if (song == null)
        {
            Debug.LogWarning("SongSelector: no song to play.");
            return;
        }

        if (song.clip == null)
        {
            Debug.LogWarning($"SongSelector: '{song.title}' has no audio clip assigned in the Song Library.");
        }

        SongSelection.Select(song);
        PlayerPrefs.SetInt(LastSongKey, index);
        PlayerPrefs.Save();

        // Same loading rules as SceneLoader: fade out if this scene has a
        // SceneTransition, otherwise load straight away.
        if (SceneTransition.Instance != null)
        {
            SceneTransition.Instance.LoadScene(gameplaySceneName);
            return;
        }

        Time.timeScale = 1f;
        SceneManager.LoadScene(gameplaySceneName);
    }

    private void Step(int direction)
    {
        if (library == null || library.Count == 0) return;

        // Wraps around at both ends.
        index = (index + direction + library.Count) % library.Count;
        ShowCurrent();
        PlayPreview();
    }

    // Plays the current song from its preview start point, replacing
    // whatever preview was playing.
    private void PlayPreview()
    {
        if (previewSource == null) return;

        // Any earlier request that's still waiting for its clip is now stale.
        previewRequest++;
        previewSource.Stop();

        SongLibrary.SongEntry song = library != null ? library.Get(index) : null;
        if (song == null || song.clip == null)
        {
            previewing = false;
            preparingPreview = false;
            return;
        }

        previewing = true;
        preparingPreview = true;
        StartCoroutine(PlayWhenLoaded(song, previewRequest));
    }

    // Waits for the clip's audio to be loaded before playing it, so the
    // load can't stall the audio mid-playback. If the clip is already
    // loaded (for example by the preload), it plays straight away.
    private IEnumerator PlayWhenLoaded(SongLibrary.SongEntry song, int request)
    {
        AudioClip clip = song.clip;

        if (clip.loadState == AudioDataLoadState.Unloaded)
        {
            clip.LoadAudioData();
        }

        // Gives up after a few seconds so a clip that never loads can't hang this.
        float waited = 0f;
        while ((clip.loadState == AudioDataLoadState.Loading || clip.loadState == AudioDataLoadState.Unloaded) && waited < 5f)
        {
            waited += Time.unscaledDeltaTime;
            yield return null;

            // The player scrolled on to another song while this was loading.
            if (request != previewRequest) yield break;
        }

        if (request != previewRequest) yield break;

        if (clip.loadState == AudioDataLoadState.Failed)
        {
            Debug.LogWarning($"SongSelector: the audio for '{song.title}' failed to load, so there is no preview.");
            previewing = false;
            preparingPreview = false;
            yield break;
        }

        previewSource.clip = clip;
        previewSource.volume = previewVolume;
        previewSource.loop = false;
        previewSource.Play();

        // Set after Play() so it applies to the new clip. Kept just inside
        // the clip so a bad start value can't skip past the end.
        previewSource.time = Mathf.Clamp(song.previewStartSeconds, 0f, Mathf.Max(0f, clip.length - 0.1f));
        preparingPreview = false;
    }

    private void ShowCurrent()
    {
        SongLibrary.SongEntry song = library != null ? library.Get(index) : null;

        if (titleText != null)
        {
            titleText.text = song != null ? song.title : "No songs";
        }

        if (bpmText != null)
        {
            bpmText.text = song != null ? $"{song.bpm:0.#} BPM" : "";
        }

        if (difficultyText != null)
        {
            difficultyText.text = song != null ? song.difficulty.ToString() : "";
        }
    }
}