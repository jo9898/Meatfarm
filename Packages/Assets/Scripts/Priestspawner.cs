using System.Collections;
using UnityEngine;


public class Priestspawner : MonoBehaviour
{
    public GameObject SpawnpointPriest;
    public GameObject Priest;
    public ItemType _requiredItem;
    public uint _requiredAmount;
    public void Open()

    {
        if (GameState.HasEnoughItems(_requiredItem, _requiredAmount))
        {
            Priest.transform.position = SpawnpointPriest.transform.position;
        }
    }
    
}
