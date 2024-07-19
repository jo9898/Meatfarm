using StarterAssets;
using System.Collections;
using System.Collections.Generic;
using TMPro;
using Unity.VisualScripting;
using UnityEngine;

public class ShowerEvent : MonoBehaviour
{
    public ParticleSystem Shower;
    public Animator EnteranceDoor;
    public Animator ExitDoor;
    public GameObject Light;
    public GameObject Spawnpoint;
    public GameObject Wolf;


    public void Go()
    {
        Shower = FindObjectOfType<ParticleSystem>(Shower);
        StartCoroutine(ShowerProcess());
    }
    IEnumerator ShowerProcess()
    {
        EnteranceDoor.SetBool(name: "isOpen", value: false);
        yield return new WaitForSeconds(1f);
        Shower.Play();
        Wolf.transform.position = Spawnpoint.transform.position;
        Wolf.GetComponent<Animator>().SetTrigger("Fear");
        yield return new WaitForSeconds(7f);
        ExitDoor.SetBool(name: "isOpen", value: true);
        Destroy(Light.gameObject);
        Destroy(this.gameObject);
    }

}
