using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DoorOpenOther : MonoBehaviour
{
    public Animator _animator;

    public void Open()
    {
        _animator.SetBool(name: "isOpen", value: true);
        Destroy(this.gameObject);
    }
}