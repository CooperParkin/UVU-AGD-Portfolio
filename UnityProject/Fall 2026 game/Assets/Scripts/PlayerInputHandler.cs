using System.Collections.Generic;
using UnityEngine;
using UnityEngine.InputSystem;
using UnityEngine.InputSystem.EnhancedTouch;
using Finger = UnityEngine.InputSystem.EnhancedTouch.Finger;
using Touch = UnityEngine.InputSystem.EnhancedTouch.Touch;

/// <summary>
/// Handles the player's four directional actions: Up, Down, Left, Right.
/// Reads keyboard arrow keys via the New Input System, and swipes via touch
/// (with proper per-finger tracking for multi-touch). Routes whichever
/// direction was input to the single universal HitZone.
///
/// All directions requested in a frame (from keyboard, every finger, or a
/// mix) are collected and resolved once at the end of the frame: only if
/// exactly one direction was requested does it fire. Two or more
/// simultaneous directions cancel each other out, closing off cheesing a
/// single zone target with multiple inputs at once.
///
/// Requires the Input System package, and Project Settings > Player >
/// Active Input Handling set to "Input System Package (New)" or "Both".
/// </summary>
public class PlayerInputHandler : MonoBehaviour
{
    private enum SwipeDirection { None, Up, Down, Left, Right }

    [Header("Zone")]
    [SerializeField] private HitZone zone;

    [Header("Swipe Settings")]
    [Tooltip("Minimum distance (in pixels) a touch must move to count as a swipe.")]
    [SerializeField] private float minSwipeDistance = 50f;
    [Tooltip("How much more the dominant axis must move than the other axis, to avoid diagonal swipes misfiring.")]
    [SerializeField] private float axisDominanceRatio = 1.5f;

    // Tracks each finger's start position independently by finger index,
    // so simultaneous multi-touch swipes don't clobber each other's data.
    private readonly Dictionary<int, Vector2> fingerStartPositions = new Dictionary<int, Vector2>();

    // Aggregated per-frame requests from all input sources, resolved once
    // in LateUpdate after everything for the frame has been gathered.
    private bool upRequested;
    private bool downRequested;
    private bool leftRequested;
    private bool rightRequested;

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
        int requestCount = (upRequested ? 1 : 0) + (downRequested ? 1 : 0)
                          + (leftRequested ? 1 : 0) + (rightRequested ? 1 : 0);

        if (requestCount == 1)
        {
            if (upRequested) zone?.TryUp();
            else if (downRequested) zone?.TryDown();
            else if (leftRequested) zone?.TryLeft();
            else if (rightRequested) zone?.TryRight();
        }
        // requestCount == 0: nothing happened. requestCount > 1: conflicting
        // simultaneous input, ignore all of it.

        upRequested = false;
        downRequested = false;
        leftRequested = false;
        rightRequested = false;
    }

    private void HandleKeyboardInput()
    {
        if (Keyboard.current == null) return;

        if (Keyboard.current.upArrowKey.wasPressedThisFrame) upRequested = true;
        if (Keyboard.current.downArrowKey.wasPressedThisFrame) downRequested = true;
        if (Keyboard.current.leftArrowKey.wasPressedThisFrame) leftRequested = true;
        if (Keyboard.current.rightArrowKey.wasPressedThisFrame) rightRequested = true;
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

        Vector2 delta = finger.screenPosition - startPos;
        SwipeDirection direction = ClassifySwipe(delta);

        switch (direction)
        {
            case SwipeDirection.Up: upRequested = true; break;
            case SwipeDirection.Down: downRequested = true; break;
            case SwipeDirection.Left: leftRequested = true; break;
            case SwipeDirection.Right: rightRequested = true; break;
        }
    }

    private SwipeDirection ClassifySwipe(Vector2 delta)
    {
        float absX = Mathf.Abs(delta.x);
        float absY = Mathf.Abs(delta.y);

        bool verticalDominant = absY > absX * axisDominanceRatio;
        bool horizontalDominant = absX > absY * axisDominanceRatio;

        if (verticalDominant && absY >= minSwipeDistance)
        {
            return delta.y > 0f ? SwipeDirection.Up : SwipeDirection.Down;
        }

        if (horizontalDominant && absX >= minSwipeDistance)
        {
            return delta.x > 0f ? SwipeDirection.Right : SwipeDirection.Left;
        }

        // Too short, or too diagonal to confidently classify.
        return SwipeDirection.None;
    }
}