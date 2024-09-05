using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Device;

public class Barrelcheck : MonoBehaviour
{
    [SerializeField] private ItemType _requiredItem;
    [SerializeField] private uint _requiredAmount;
    [SerializeField] public GameObject Barrelpile;
    [SerializeField] public GameObject spawnerBarrel;

    public GameObject screen;
    public void Check()
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
        yield return new WaitForSeconds(0.4f);
        Destroy(GameObject.Find("Barrels"));
        Instantiate(Barrelpile, spawnerBarrel.transform.position, spawnerBarrel.transform.rotation);
    }
}
