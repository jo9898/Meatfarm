using FMODUnity;
using System.Collections;
using System.Collections.Generic;
using Unity.VisualScripting;
using UnityEngine;

public class Firee : MonoBehaviour
{
    [SerializeField] private ItemType _requiredItem;
    [SerializeField] private uint _requiredAmount;
    [SerializeField] public ParticleSystem Fire;
    [SerializeField] public ParticleSystem Fire1;
    [SerializeField] public ParticleSystem Fire2;
    public GameObject SpawnpointNob2;
    public GameObject SpawnpointHigh;
    public GameObject Spawnpointhigh;
    public GameObject SpawnpointLamb;
    public GameObject SpawnpointBully;
    public GameObject SpawnpointPriest;
    public GameObject SpawnpointWolf;
    public GameObject Nob2;
    public GameObject Highgene2;
    public GameObject Lamb2;
    public GameObject Bully2;
    public GameObject Priest2;
    public GameObject Wolf2;
    public GameObject highgene;
    private StudioEventEmitter emitter;
    private StudioEventEmitter emitter2;
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
        Fire = GameObject.Find("Fire").GetComponent<ParticleSystem>();
        Fire.Play();
        Fire1 = GameObject.Find("Fire1").GetComponent<ParticleSystem>();
        Fire1.Play();
        Fire2 = GameObject.Find("Fire2").GetComponent<ParticleSystem>();
        Fire2.Play();
        yield return new WaitForSeconds(0.4f);
        Nob2.transform.position = SpawnpointNob2.transform.position;
        Highgene2.transform.position = SpawnpointHigh.transform.position;
        highgene.transform.position = Spawnpointhigh.transform.position;
        Lamb2.transform.position = SpawnpointLamb.transform.position;
        Bully2.transform.position = SpawnpointBully.transform.position;
        Instantiate(Priest2, SpawnpointPriest.transform.position, SpawnpointPriest.transform.rotation);
        Nob2.GetComponent<Animator>().SetTrigger("Idle");
        emitter = GameObject.Find("Meater_Rig").GetComponent<StudioEventEmitter>();
        emitter2 = GetComponent<StudioEventEmitter>();
        Destroy(GameObject.Find("Barrelpile"));
        yield return new WaitForSeconds(2);
        emitter.Play();
        emitter2.Play();
        Destroy(this);
    }
}
