using UnityEngine;
using UnityEngine.InputSystem;

/// <summary>
/// Close (destroy) this UI view when the player presses Escape or whatever on a controller.
/// </summary>
public class CloseableView : MonoBehaviour
{
    private PlayerInput _playerInput;

    private void Awake()
    {
        _playerInput = FindObjectOfType<PlayerInput>();
    }

    private void Update()
    {
        if (_playerInput.actions["Cancel"].WasPressedThisFrame())
        {
            Destroy(gameObject);
        }
    }
}