using JetBrains.Annotations;
using System.Collections;
using System.Collections.Generic;
using UnityEngine.InputSystem;
using UnityEngine;


public class LocationInteractor : MonoBehaviour
{
    private IInteractable _currentInteractable;
    private PlayerInput _playerInput;


    private void Awake()
    {
        _playerInput = FindObjectOfType<PlayerInput>();
    }
    private void Update()
    {
        if (_playerInput.actions["Interact"].WasPressedThisFrame())
        {
            _currentInteractable?.Interact();
        }
    }
    private void OnTriggerStay(Collider other)
    {
        if (other.TryGetComponent<IInteractable>(out var interactable))
        {
            _currentInteractable = interactable;
        }
    }
    private void OnTriggerEnter(Collider other)
    { 
        if (other.TryGetComponent<Outline>(out var outline))
        {
            outline.enabled = true;
        }
    }
    private void OnTriggerExit(Collider other)
    {
        if (other.TryGetComponent<IInteractable>(out var interactable))
        {
            if (interactable == _currentInteractable) 
            {
                _currentInteractable = null;
            }
            if (other.TryGetComponent<Outline>(out var outline))
            {
                outline.enabled = false;
            }
        }
    }
}


