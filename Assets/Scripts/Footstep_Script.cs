/*using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Footstep_Script : MonoBehaviour
{
    public AudioSource Audiosource;

    public AudioClip concrete;
    public AudioClip Metall;
    public AudioClip Hay;

    RaycastHit hit;
    public Transform RayStart;
    public float range;
    public LayerMask layerMask;

    public void Footstep()
    {
        if(Physics.Raycast(RayStart.position, RayStart.transform.up * -1, out hit, range, layerMask))
        {
            if(hit.collider.CompareTag("concrete"))
            {
                PlayFootstepSoundL(concrete);
            }
            if (hit.collider.CompareTag("Metall"))
            {
                PlayFootstepSoundL(Metall);
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
}*/

