using System;
using System.Collections;
using System.Collections.Generic;
using TMPro;
using Unity.VisualScripting;
using UnityEngine;
using UnityEngine.Device;
using UnityEngine.InputSystem;
using StarterAssets;
using UnityEngine.InputSystem.LowLevel;


public class Shakeable : MonoBehaviour, IInteractable
{
    [SerializeField] private Animator _animator;
    [SerializeField] private ItemType _requiredItem;
    [SerializeField] private uint _requiredAmount;

    public ItemType type;
    public uint amount = 1;
    private bool _shaken;
    public ItemType TypeCans;
    public uint NumberCans;
    public GameObject CanspiracyT;
    public GameObject _Can;

    public void Interact()

    {
        

        if (GameState.HasEnoughItems(_requiredItem, _requiredAmount))
            if(_shaken == false && NumberCans != 10)
                {
                 StartCoroutine(waiter());
                }
            else
            {
                return;
            }
    }

    private void Disable()
    {
        _shaken = true;
    }

    IEnumerator waiter()
    {
        if (GameState.HasEnoughItems(TypeCans, NumberCans))
        {
            var uiRoot = FindObjectOfType<UiRoot>();
            Instantiate(CanspiracyT, uiRoot.transform);
            yield return new WaitForSeconds(0.1f);
        }
        else
        {
            _Can = GameObject.Find("HumansBest");
            GetComponent<MeshRenderer>().enabled = false;
            GameState.AddItem(type, amount);
            FindObjectOfType<PlayerInput>().enabled = false;
            _animator.SetTrigger("Shaking");
            yield return new WaitForSeconds(0.4f);
            _Can.GetComponent<MeshRenderer>().enabled = true;
            yield return new WaitForSeconds(0.9f);
            _Can.GetComponent<MeshRenderer>().enabled = false;
            yield return new WaitForSeconds(0.3f);
            FindObjectOfType<PlayerInput>().enabled = true;
            GetComponent<MeshRenderer>().enabled = true;
            Disable();

            Debug.Log("shaked" + name);
        }
    }

}


