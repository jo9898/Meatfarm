using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ShaderTrigger : MonoBehaviour
{
  public void Activate()
    {
        Material renderer = GetComponent<Renderer>().material;

        renderer.SetFloat("_Scale", (float)1.1f);
    }

  public void Deactivate()
    {
        Material renderer = GetComponent<Renderer>().material;

        renderer.SetFloat("_Scale", (float)0f);
    }
}
