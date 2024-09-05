using System.Collections;
using System.Collections.Generic;
using UnityEngine;
public class CanteenEvent : MonoBehaviour
{ 
   
    public ItemType _requiredItem;
    public uint _requiredAmount;
    public GameObject SpawnpointCons;
    public GameObject SpawnpointHigh;
    public GameObject SpawnpointLamb;
    public GameObject SpawnpointBully;
    public GameObject SpawnpointPriest;
    public GameObject SpawnpointMess;
    public GameObject SpawnpointTrough;
    public GameObject SpawnpointEvidence;
    public GameObject SpawnpointCons2;
    public GameObject Cons;
    public GameObject Highgene;
    public GameObject Lamb;
    public GameObject Bully;
    public GameObject Priest;
    public GameObject screen;
    public GameObject Mess;
    public GameObject Trough;
    public GameObject Evidence;
    public GameObject Broomactive;
    public GameObject Cons2;

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
        Cons.transform.position = SpawnpointCons.transform.position;
        Cons2.transform.position = SpawnpointCons2.transform.position;
        Highgene.transform.position = SpawnpointHigh.transform.position;
        Lamb.transform.position = SpawnpointLamb.transform.position;
        Bully.transform.position = SpawnpointBully.transform.position;
        Priest.transform.position = SpawnpointPriest.transform.position;
        Trough.transform.position = SpawnpointTrough.transform.position;
        Instantiate(Mess, SpawnpointMess.transform.position, SpawnpointMess.transform.rotation);
        Instantiate(Evidence, SpawnpointEvidence.transform.position, SpawnpointEvidence.transform.rotation);
        Lamb.GetComponent<Animator>().SetTrigger("Brushing");
        Broomactive.GetComponent<MeshRenderer>().enabled = true;
        yield return new WaitForSeconds(0.1f);
        Destroy(this.gameObject);

    }

}
