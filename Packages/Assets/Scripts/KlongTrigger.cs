using FMODUnity;
using JetBrains.Annotations;
using StarterAssets;
using System.Collections;
using System.Collections.Generic;
using Unity.VisualScripting;
using UnityEngine;

public class KlongTrigger : MonoBehaviour
{
    public ItemType _requiredItem;
    public uint _requiredAmount;
    public GameObject SpawnpointCons;
    public GameObject SpawnpointHigh;
    public GameObject SpawnpointLamb;
    public GameObject SpawnpointLamb2;
    public GameObject SpawnpointBully;
    public GameObject SpawnpointBully2;
    public GameObject SpawnpointPriest;
    public GameObject Cons;
    public GameObject Highgene;
    public GameObject Lamb;
    public GameObject Lamb2;
    public GameObject Bully;
    public GameObject Bully2;
    public GameObject Priest;
    public GameObject screen;
    public GameObject Broomactive;
    public GameObject SpawnpointPlayer;
    public GameObject Player;
    public ThirdPersonController PlayerController;
    public GameObject AllDirt;
    public GameObject SpawnerDirt;
    private StudioEventEmitter emitter;


    private void Start()
    {
        PlayerController = Player.GetComponent<ThirdPersonController>();
    }
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
        emitter = GetComponent<StudioEventEmitter>();
        Cons.transform.position = SpawnpointCons.transform.position;
        Highgene.transform.position = SpawnpointHigh.transform.position;
        Highgene.GetComponent<Animator>().SetTrigger("Dizzy");
        Instantiate(AllDirt, SpawnerDirt.transform.position, SpawnerDirt.transform.rotation);
        Lamb.transform.position = SpawnpointLamb.transform.position;
        Lamb2.transform.position = SpawnpointLamb2.transform.position;
        Lamb2.GetComponent<Animator>().SetTrigger("Idle");
        Bully.transform.position = SpawnpointBully.transform.position;
        Bully2.transform.position = SpawnpointBully2.transform.position;
        Priest.transform.position = SpawnpointPriest.transform.position;
        Lamb.GetComponent<Animator>().SetTrigger("Idle");
        Broomactive.GetComponent<MeshRenderer>().enabled = false;
        PlayerController.enabled = false;
        yield return new WaitForSeconds(0.01f);
        Player.transform.position = SpawnpointPlayer.transform.position;
        yield return new WaitForSeconds(0.01f);
        PlayerController.enabled = true;
        yield return new WaitForSeconds(0.01f);
        Destroy(this);

    }
}
