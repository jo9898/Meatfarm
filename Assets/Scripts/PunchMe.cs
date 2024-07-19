using StarterAssets;
using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Device;
using UnityEngine.Events;
using UnityEngine.InputSystem;
using Object = UnityEngine.Object;

public class Punchable : MonoBehaviour, IInteractable
{
    [SerializeField]
    private UnityEvent _onInteract;

    [SerializeField]
    private string _playerAnimationTrigger = "Punch";
    public ItemType type;
    public uint amount = 1;
    public GameObject Bully;
    public GameObject Spawnpoint;
    public GameObject Spawnpoint2;
    public GameObject screen;
    public ParticleSystem Green;
    public ParticleSystem Dust;
    public ItemType stype;
    public uint samount;



    private void Start()
    {
        Green = FindObjectOfType<ParticleSystem>(Green);
        Dust = GetComponent<ParticleSystem>();
    }
    public void Interact()
    {
        if (GameState.HasEnoughItems(type, amount))
        {
            FindObjectOfType<ThirdPersonController>().GetComponent<Animator>().SetTrigger(_playerAnimationTrigger);
            _onInteract?.Invoke();
            GameState.TryRemoveItem(type, amount);
            StartCoroutine(waiter());
        }
    }
    IEnumerator waiter()
    {
        yield return new WaitForSeconds(2f);
        var uiRoot = Object.FindObjectOfType<UiRoot>();
        Instantiate(screen, uiRoot.transform);
        yield return new WaitForSeconds(0.5f);
        Bully.transform.position = Spawnpoint.transform.position;
        Bully.GetComponent<Animator>().SetTrigger("Punch");
        GameState.AddItem(stype, samount);
        yield return new WaitForSeconds(7f);
        Green.Play();
        Dust.Play();
        yield return new WaitForSeconds(3.5f);
        Instantiate(screen, uiRoot.transform);
        yield return new WaitForSeconds(0.5f);
        Bully.transform.position = Spawnpoint2.transform.position;
        Destroy(this);
    }
}
