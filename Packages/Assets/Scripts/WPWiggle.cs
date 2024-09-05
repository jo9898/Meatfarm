using DG.Tweening;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Device;

public class WPWiggle : MonoBehaviour
{
    private void Awake()
    {
        this.transform.DOScale(1f, 0.8f).SetEase(Ease.InExpo).From(0f).SetDelay(0f);
    }
}