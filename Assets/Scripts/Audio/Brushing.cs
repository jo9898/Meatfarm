using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using FMODUnity;

public class Brushing : MonoBehaviour
{
    public void Brush()
    {
        RuntimeManager.PlayOneShot("event:/SFX/Brush sound");
    }
}
