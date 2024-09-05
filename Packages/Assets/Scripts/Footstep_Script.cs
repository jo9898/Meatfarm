using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Footstep_Script : MonoBehaviour
{
    public AudioSource AudioSource;

    public AudioClip Concrete;
    public AudioClip Wood;
    public AudioClip Hay;

    RaycastHit hit;
    public Transform RayStart;
    public float range;
    public LayerMask layerMask;

    public void Footstep()
    {
        if(Physics.Raycast(RayStart.position, RayStart.transform.up * -1, out hit, range, layerMask))
        {
            if(hit.collider.CompareTag("Concrete"))
            {
                PlayFootstepSoundL(Concrete);
            }
            if (hit.collider.CompareTag("Wood"))
            {
                PlayFootstepSoundL(Wood);
            }
            if (hit.collider.CompareTag("Hay"))
            {
                PlayFootstepSoundL(Hay);
            }


        }
    }

    void PlayFootstepSoundL(AudioClip audio)
    {
        AudioSource.pitch = Random.Range(0.8f, 1f);
        AudioSource.PlayOneShot(audio);                 
    }

    private void Update()
    {
        Debug.DrawRay(RayStart.position, RayStart.transform.up * range * -1, Color.green);
    }
} 

