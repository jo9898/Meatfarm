using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BaitCheck : MonoBehaviour
{
    public ItemType _requiredItem;
    public uint _requiredAmount;
    public GameObject Spawner;
    public GameObject Bait;
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
        Instantiate(Bait, Spawner.transform.position, Spawner.transform.rotation);
        yield return new WaitForSeconds(0.1f);
        Destroy(this);
    }

}
