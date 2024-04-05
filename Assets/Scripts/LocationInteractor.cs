using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class LocationInteractor : MonoBehaviour
{
    // Liebe Gr��e an Valli
    private void OnTriggerEnter(Collider other)
    {
        if (other.TryGetComponent<IInteractable>(out var interactable))
        {
            interactable.Interact();
        }
    }
}