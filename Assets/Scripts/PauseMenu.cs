using System.Collections;
using System.Collections.Generic;
using UnityEngine;
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

    private void Update()
    {
        if (Input.GetKeyUp(KeyCode.Escape))
        {
            var wasPreviouslyPaused = PausePanel.activeSelf;
            SetPausedStatus(!wasPreviouslyPaused);
        }
    }

    private void SetPausedStatus(bool isPaused)
    {
        PausePanel.SetActive(isPaused);
        Time.timeScale = isPaused ? 0 : 1;
        Cursor.visible = isPaused;
        Cursor.lockState = isPaused ? CursorLockMode.None : CursorLockMode.Locked;
    }
}

