using System.Collections;
using System.Collections.Generic;
using System.Runtime.CompilerServices;
using Unity.VisualScripting;
using UnityEditor;
using UnityEngine;


public class Fadedestroy : MonoBehaviour
{
    private void Awake()

    {
        StartCoroutine(waiter());
    }
    IEnumerator waiter()
    {
        yield return new WaitForSeconds(0.825f);
        Destroy(gameObject);
    }
}

