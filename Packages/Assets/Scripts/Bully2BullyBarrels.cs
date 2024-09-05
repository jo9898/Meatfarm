using System.Collections;
using UnityEngine;
using UnityEngine.Device;


public class Bully2BullyBarreks : MonoBehaviour
{
    public GameObject SpawnpointBully;
    public GameObject Bully2;
    public ItemType _requiredItem;
    public uint _requiredAmount;
    public GameObject screen;
    public void Open()

    {
        if (GameState.HasEnoughItems(_requiredItem, _requiredAmount))
        {
            Bully2.transform.position = SpawnpointBully.transform.position;
        }
    }
    IEnumerator Waiter()
    {
        var uiRoot = FindObjectOfType<UiRoot>();
        Instantiate(screen, uiRoot.transform);
        yield return new WaitForSeconds(0.4f);
        Bully2.transform.position = SpawnpointBully.transform.position;
    }
}
