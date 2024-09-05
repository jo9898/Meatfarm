using StarterAssets;
using System.Collections;
using System.Collections.Generic;
using TMPro;
using Unity.VisualScripting;
using UnityEngine;
using UnityEngine.InputSystem.LowLevel;

public class Openable : MonoBehaviour, IInteractable
{
    [SerializeField] private Animator _animator;
    [SerializeField] public ItemType _givenItem;
    [SerializeField] private ItemType _requiredItem;
    [SerializeField] private uint _requiredAmount;
    [SerializeField] private uint _givenAmount;
    [SerializeField] private bool _shouldConsume;
    [SerializeField] private bool stayOpen = true;
    [SerializeField]
    private string _playerAnimationTrigger = "Interact";
    private bool _isOpen;

    public void Interact()

    {
        if (_isOpen)
        {
            return;
        }

        if (_shouldConsume)
        {
            if (GameState.TryRemoveItem(_requiredItem, _requiredAmount))
            {
                Open();
            }
        }
        else
        {
            if (GameState.HasEnoughItems(_requiredItem, _requiredAmount))
            {
                Open();
            }
        }
    }

    private void Open()
    {
        _isOpen = true;
        _animator.SetBool(name: "isOpen", value: true);

        GameState.AddItem(_givenItem, _givenAmount);
        FindObjectOfType<ThirdPersonController>().GetComponent<Animator>().SetTrigger(_playerAnimationTrigger);

        if (stayOpen)
        {
            Destroy(this);
        }
    }
}