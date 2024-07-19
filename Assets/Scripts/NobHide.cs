using System;
using System.Collections;
using Unity.VisualScripting;
using UnityEngine;
using UnityEngine.Device;
using UnityEngine.InputSystem;
using Object = UnityEngine.Object;

public class NobHide : MonoBehaviour
{
    public ItemType _requiredItem;
    public uint _requiredAmount;
    public GameObject Spawnpoint;
    public GameObject Nob;
    public GameObject screen;

    public void Open()

    {

        if (GameState.HasEnoughItems(_requiredItem, _requiredAmount))
        {
                StartCoroutine(Waiter());
        }

    }
    IEnumerator Waiter()
    {
        var uiRoot = Object.FindObjectOfType<UiRoot>();
        Instantiate(screen, uiRoot.transform);
        yield return new WaitForSeconds(0.5f);
        Nob.transform.position = Spawnpoint.transform.position;
        Nob.GetComponent<Animator>().SetTrigger("Eating");
    }

}