using System;
using System.Collections;
using Unity.VisualScripting;
using UnityEngine;
using UnityEngine.Device;
using UnityEngine.InputSystem;
using Object = UnityEngine.Object;

public class LambSFC : MonoBehaviour
{
    public ItemType _requiredItem;
    public uint _requiredAmount;
    public GameObject Spawnpoint;
    public GameObject Lamb;
    public GameObject screen;
    public GameObject Spawner;
    public GameObject Broom;
    public GameObject Broomactive;
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
        Lamb.transform.position = Spawnpoint.transform.position;
        Lamb.GetComponent<Animator>().SetTrigger("Idle");
        Broomactive.GetComponent<MeshRenderer>().enabled = false;
        Instantiate(Broom, Spawner.transform.position, Spawner.transform.rotation);
        Destroy(this);
    }

}