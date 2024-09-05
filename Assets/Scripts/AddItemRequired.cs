using FMODUnity;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AddItemRequired : MonoBehaviour, IInteractable
{
    public ItemType _requiredItem;
    public uint _requiredAmount;
    public ItemType type;
    public uint amount;
    private StudioEventEmitter emitter;
    // Start is called before the first frame update
    public void Interact()
    {
        if (GameState.HasEnoughItems(_requiredItem, _requiredAmount))
        {
            Open();
        }
    }

    public void Open()
    {
        emitter = GetComponent<StudioEventEmitter>();
        GameState.AddItem(type, amount);
        if (emitter != null)
        {
            emitter.Play();
        }
        Destroy(this);
    }
}
