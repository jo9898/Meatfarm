using System;
using UnityEditor;
using UnityEngine;
using UnityEngine.EventSystems;
using UnityEngine.UI;

public class PauseMenu : MonoBehaviour
{
    [SerializeField] private Button continueButton;
    [SerializeField] private Button optionsButton;
    [SerializeField] private OptionsMenu optionsMenuPrefab;

    private void Awake()
    {
        Pause();
        continueButton.onClick.AddListener(Continue);
        optionsButton.onClick.AddListener(OpenOptions);
        continueButton.Select();
    }

    private void Update()
    {
        if (Input.GetButtonDown("Menu"))
        {
            Continue();
        }
    }

    private void Pause()
    {
        Time.timeScale = 0;
        Cursor.visible = true;
        Cursor.lockState = CursorLockMode.None;
    }

    private void Continue()
    {
        Time.timeScale = 1;
        Cursor.visible = false;
        Cursor.lockState = CursorLockMode.Locked;
        /* var instance = FindObjectOfType<StoryView>();
        if (instance != null)
        {
            var NewButton = FindObjectOfType<Button>();
           
        }*/
        Destroy(gameObject);
    }

    private void OpenOptions()
    {
        UiService.Open(optionsMenuPrefab.gameObject);
        Destroy(gameObject);
    }
}