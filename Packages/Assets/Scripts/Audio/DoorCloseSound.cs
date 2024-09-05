using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DoorCloseSound : MonoBehaviour
{
    private FMOD.Studio.EventInstance instance;
    public void CloseSound()
    {
        instance = FMODUnity.RuntimeManager.CreateInstance("event:/SFX/Bully punch 2");
        instance.start();
        instance.release();
    }
}
