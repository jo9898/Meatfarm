using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AddItem : MonoBehaviour
{
    public ItemType type;
    public uint amount;
    // Start is called before the first frame update
    public void Add()
    {
        GameState.AddItem(type, amount);
    }
}
