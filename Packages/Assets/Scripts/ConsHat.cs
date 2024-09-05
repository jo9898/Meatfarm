using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ConsHat : MonoBehaviour
{
    private GameObject Hat;
    public ItemType _requiredItem;
    public uint _requiredAmount;
    public void Awake()
    {
        Hat = GameObject.Find("ConsTHat");
    }
    
    public void PutOn()
    {
        if (GameState.HasEnoughItems(_requiredItem, _requiredAmount))
        {
            Hat.GetComponent<MeshRenderer>().enabled = true;
        }
            
    }
    
}
