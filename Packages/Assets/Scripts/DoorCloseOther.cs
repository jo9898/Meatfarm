using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DoorCloseOther : MonoBehaviour
{
    public Animator _animator;

    public void Close()
    {
        _animator.SetBool(name: "isOpen", value: false);
        Destroy(this.gameObject);
    }
}
