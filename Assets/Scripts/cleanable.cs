using StarterAssets;
using System;
using System.Collections;
using System.Collections.Generic;
using TMPro;
using Unity.VisualScripting;
using UnityEngine;
using UnityEngine.InputSystem;
using UnityEngine.InputSystem.LowLevel;
using static Cinemachine.CinemachineFreeLook;

public class Cleanable : MonoBehaviour, IInteractable
{
    [SerializeField] private ItemType _requiredItem;
    [SerializeField] private uint _requiredAmount;
    

    public ItemType type;
    public uint amount = 1;
    private GameObject _GrandBroom;
    public ItemType enoughDirt;
    public uint numberDirt;
    public GameObject Tinfoilhat;
    private Animator _animator;
    


    private void Awake()
    {
        _GrandBroom = GameObject.Find("GrandBroom");
        _animator = FindObjectOfType<ThirdPersonController>().GetComponent<Animator>();
    }

    public void Interact()

    {

        if (GameState.HasEnoughItems(_requiredItem, _requiredAmount))
        {
            StartCoroutine(waiter());
        }
        return;
    }

   

IEnumerator waiter()
    {
        Transform spot = gameObject.transform;
        FindObjectOfType<PlayerInput>().enabled = false;
        _animator.SetBool("Cleaning", true);
        yield return new WaitForSeconds(0.3f);
        _GrandBroom.GetComponent<MeshRenderer>().enabled = true;
        yield return new WaitForSeconds(2.5f);
        _GrandBroom.GetComponent<MeshRenderer>().enabled = false;
        _animator.SetBool("Cleaning", false);
        FindObjectOfType<PlayerInput>().enabled = true;
        GameState.AddItem(type, amount);

        if (GameState.HasEnoughItems(enoughDirt, numberDirt))
        {
            Instantiate(Tinfoilhat, this.transform.position, this.transform.rotation);
        }

        Debug.Log("Collected" + name);
        yield return new WaitForSeconds(0.3f);
        Destroy(this.gameObject);
        
    }
}


