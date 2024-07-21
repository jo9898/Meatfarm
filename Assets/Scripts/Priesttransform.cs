using System.Collections;
using System.Collections.Generic;
using Unity.VisualScripting;
using UnityEngine;

public class Priesttransform : MonoBehaviour
{

    public ItemType type;
    public uint amount = 1;
    public GameObject Priest;
    void Update()
    {
        if (GameState.HasEnoughItems(type, amount))
        {
            Priest.GetComponent<Animator>().SetTrigger("Transform");
        }
    }
}
