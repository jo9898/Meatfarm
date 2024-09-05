using FMODUnity;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlaySound : MonoBehaviour
{
    public bool PlayOnAwake;
    private StudioEventEmitter emitter;

    public void PlayOneShot()
    {
        emitter = GetComponent<StudioEventEmitter>();
        emitter.Play();
    }

    private void Start()
    {
        if (PlayOnAwake)
        {
            emitter = GetComponent<StudioEventEmitter>();
            emitter.Play();
        }
    }
}
