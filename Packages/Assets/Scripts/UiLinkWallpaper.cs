using Cinemachine;
using DG.Tweening;
using StarterAssets;
using System;
using System.Threading;
using UnityEngine;
using UnityEngine.ProBuilder.MeshOperations;

public class UiLinkWallpaper : MonoBehaviour
{
    [SerializeField] private ItemType _requiredItem;
    [SerializeField] private uint _requiredAmount;
    [SerializeField] public ItemType _blockingItem;
    [SerializeField] private GameObject screen;
    public uint _blockingAmount;
    private GameObject _screenInstance;
 
    public void Open()
    {
        if (GameState.HasEnoughItems(_blockingItem, _blockingAmount))
        {
            return;
        }
        else if (GameState.HasEnoughItems(_requiredItem, _requiredAmount))
            {
                 {
                         _screenInstance = UiService.Open(screen);
                         Cursor.visible = true;
                         Cursor.lockState = CursorLockMode.None;
                 }
            }
        else 
        {
            return;
        }
    }

    public void Close()
    {
        if (_screenInstance != null)
        {
            Cursor.visible = false;
            Cursor.lockState = CursorLockMode.Locked;
            Destroy(_screenInstance.gameObject);
        }
    }
}


// screen.transform.DOScale(1f, 0.5f).SetEase(Ease.OutBounce).From(0f).SetDelay(index * 0.2f);