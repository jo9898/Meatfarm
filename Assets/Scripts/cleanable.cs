using System;
using System.Collections;
using System.Collections.Generic;
using TMPro;
using Unity.VisualScripting;
using UnityEngine;
using UnityEngine.InputSystem.LowLevel;

public class Cleanable : MonoBehaviour, IInteractable
{
    [SerializeField] private Animator _animator;
    [SerializeField] private ItemType _requiredItem;
    [SerializeField] private uint _requiredAmount;

    public void Interact()

    {

        if (GameState.HasEnoughItems(_requiredItem, _requiredAmount))
        {
            StartCoroutine(waiter());
        }
        TryCatch();
    }

    private void TryCatch()
    {
        throw new NotImplementedException();
    }

    IEnumerator waiter()
    {
        yield return new WaitForSeconds(1);
        Destroy(this.gameObject);
    }

  
}