using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Device;
using UnityEngine.SceneManagement;
using UnityEngine.UI;

public class BacktoMainMenu: MonoBehaviour
{
    [SerializeField]
    private int buildIndex;

    private void Awake()
    {
        GetComponent<Button>().onClick.AddListener(LoadScene);
    }

    private void LoadScene()
    {
        Time.timeScale = 1f;
        SceneManager.LoadScene(buildIndex);
    }
}