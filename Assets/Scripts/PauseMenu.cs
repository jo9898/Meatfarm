using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.EventSystems;
using UnityEngine.UI;

public class PauseMenu : MonoBehaviour
{
    [SerializeField] private GameObject PausePanel;
    [SerializeField] private Button continueButton;
        
    private void Awake()
    {
        PausePanel.SetActive(false);
        continueButton.onClick.AddListener(() => SetPausedStatus(false));
    }

    private void OnEnable()
    {
        continueButton.Select();
    }

    private void Update()
    {
        if (Input.GetKeyUp(KeyCode.Escape))
        {
            var wasPreviouslyPaused = PausePanel.activeSelf;
            SetPausedStatus(!wasPreviouslyPaused);
        }

        if (PausePanel.activeInHierarchy)
        {
            if (EventSystem.current.currentSelectedGameObject == null)
            {
                continueButton.Select();
            }
        }
    }

    private void SetPausedStatus(bool isPaused)
    {
        PausePanel.SetActive(isPaused);
        Time.timeScale = isPaused ? 0 : 1;
        Cursor.visible = isPaused;
        Cursor.lockState = isPaused ? CursorLockMode.None : CursorLockMode.Locked;

        if (isPaused)
        {
            continueButton.Select();
        }
    }
}

