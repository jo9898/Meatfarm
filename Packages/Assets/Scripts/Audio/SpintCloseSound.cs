using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SpintCloseSound : MonoBehaviour
{
    public void OpenSound()
    {
        FMODUnity.RuntimeManager.PlayOneShot("event:/Open Spint");
    }
}
