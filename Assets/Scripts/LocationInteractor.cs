using System.Collections;
using System.Collections.Generic;
using UnityEngine;


public class LocationInteractor : MonoBehaviour
{
    private IInteractable currentInteractable;

    private void Update()
    {
        if(Input.GetKeyDown(KeyCode.E))
        {
            try
            {
                currentInteractable.Interact();
            }
            catch 
            {
            }
        }
    }
    private void OnTriggerStay(Collider other)
    {
        if (other.TryGetComponent<IInteractable>(out var interactable))
        {
            currentInteractable = interactable;
        }
    }

    private void OnTriggerExit(Collider other)
    {
        if (other.TryGetComponent<IInteractable>(out var interacable))
        {
            if (interacable == currentInteractable) 
            {
                currentInteractable = null;
            }
        }
    }
}