using StarterAssets;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

public class BarrelPoisen : MonoBehaviour, IInteractable
{
    public ItemType type;
    public uint amount = 1;

    [SerializeField]
    private UnityEvent _onCollect;

    [SerializeField]
    private string _playerAnimationTrigger = "Interact";
  
    public void Interact()
    {
        Debug.Log("Collected" + name);
        GameState.AddItem(type, amount);
        FindObjectOfType<ThirdPersonController>().GetComponent<Animator>().SetTrigger(_playerAnimationTrigger);
        _onCollect?.Invoke();
        Destroy(this);
    }
}
