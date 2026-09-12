using System.Collections.Generic;
using UnityEngine;
using UnityEngine.InputSystem;
using UnityEngine.InputSystem.EnhancedTouch;
using Finger = UnityEngine.InputSystem.EnhancedTouch.Finger;
using Touch = UnityEngine.InputSystem.EnhancedTouch.Touch;

/// <summary>
/// Handles the only two player actions: Up and Down. Reads keyboard arrow
/// keys via the New Input System, and swipe up/down via touch (with proper
/// per-finger tracking for multi-touch). Routes either input to the single
/// universal HitZone.
///
/// Up and Down requests are collected for the whole frame from every
/// source (keyboard, every finger) and resolved once at the end of the
/// frame: if both were requested, neither fires. This prevents cheesing
/// a single zone target with a simultaneous up+down input, whether from
/// two keys, two fingers, or a mix of both.
///
/// Requires the Input System package, and Project Settings > Player >
/// Active Input Handling set to "Input System Package (New)" or "Both".
/// </summary>
public class PlayerInputHandler : MonoBehaviour
{
    [Header("Zone")]
    [SerializeField] private HitZone zone;

    [Header("Swipe Settings")]
    [Tooltip("Minimum vertical distance (in pixels) a touch must move to count as a swipe.")]
    [SerializeField] private float minSwipeDistance = 50f;
    [Tooltip("How much more vertical than horizontal movement is required, to avoid diagonal swipes misfiring.")]
    [SerializeField] private float verticalDominanceRatio = 1.5f;

    // Tracks each finger's start position independently by finger index,
    // so simultaneous multi-touch swipes don't clobber each other's data.
    private readonly Dictionary<int, Vector2> fingerStartPositions = new Dictionary<int, Vector2>();

    // Aggregated per-frame requests from all input sources, resolved once
    // in LateUpdate after everything for the frame has been gathered.
    private bool upRequested;
    private bool downRequested;

    private void OnEnable()
    {
        EnhancedTouchSupport.Enable();
        Touch.onFingerDown += HandleFingerDown;
        Touch.onFingerUp += HandleFingerUp;
    }

    private void OnDisable()
    {
        Touch.onFingerDown -= HandleFingerDown;
        Touch.onFingerUp -= HandleFingerUp;
        EnhancedTouchSupport.Disable();
        fingerStartPositions.Clear();
    }

    private void Update()
    {
        HandleKeyboardInput();
    }

    private void LateUpdate()
    {
        // Resolve once per frame, after keyboard (Update) and any touch
        // events for this frame have all had a chance to set their flags.
        if (upRequested && downRequested)
        {
            // Simultaneous input from any combination of sources: ignore both.
        }
        else if (upRequested)
        {
            zone?.TryUp();
        }
        else if (downRequested)
        {
            zone?.TryDown();
        }

        upRequested = false;
        downRequested = false;
    }

    private void HandleKeyboardInput()
    {
        if (Keyboard.current == null) return;

        if (Keyboard.current.upArrowKey.wasPressedThisFrame)
        {
            upRequested = true;
        }

        if (Keyboard.current.downArrowKey.wasPressedThisFrame)
        {
            downRequested = true;
        }
    }

    private void HandleFingerDown(Finger finger)
    {
        fingerStartPositions[finger.index] = finger.screenPosition;
    }

    private void HandleFingerUp(Finger finger)
    {
        if (!fingerStartPositions.TryGetValue(finger.index, out Vector2 startPos))
        {
            return;
        }
        fingerStartPositions.Remove(finger.index);

        Vector2 endPos = finger.screenPosition;
        Vector2 delta = endPos - startPos;

        if (Mathf.Abs(delta.y) < minSwipeDistance) return;
        if (Mathf.Abs(delta.y) < Mathf.Abs(delta.x) * verticalDominanceRatio) return;

        if (delta.y > 0f)
        {
            upRequested = true;
        }
        else
        {
            downRequested = true;
        }
    }
}