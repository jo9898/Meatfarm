using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DoorOpenSound : MonoBehaviour
{
    public void OpenSound()
    {
        FMODUnity.RuntimeManager.PlayOneShot("event:/SFX/Door rusty open");
    }
}
