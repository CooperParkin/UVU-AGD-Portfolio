using UnityEngine;
using UnityEngine.SceneManagement;

/// <summary>
/// Loads a scene by name. Hook a Button's OnClick event to LoadScene()
/// on this component, typing the target scene's name into the string
/// field that appears.
/// </summary>
public class SceneLoader : MonoBehaviour
{
    public void LoadScene(string sceneName)
    {
        // Time.timeScale is global and isn't reset by loading a scene, so
        // if the player was paused when they navigated here, it would
        // otherwise stay frozen at 0 in whatever scene loads next.
        Time.timeScale = 1f;
        SceneManager.LoadScene(sceneName);
    }
}