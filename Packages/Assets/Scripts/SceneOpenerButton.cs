using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Device;
using UnityEngine.SceneManagement;
using UnityEngine.UI;

public class SceneOpenerButton : MonoBehaviour
{
    [SerializeField]
    private int buildIndex;
    public GameObject screen;

    private void Awake()
    {
        GetComponent<Button>().onClick.AddListener(Go);
    }

    private void Go()
    {
        StartCoroutine(waiter());
    }
    IEnumerator waiter()
    {
        
        var uiRoot = Object.FindObjectOfType<UiRoot>();
        Instantiate(screen, uiRoot.transform);
        yield return new WaitForSeconds(0.5f);
        LoadScene();
    }

private void LoadScene()
    {
        Time.timeScale = 1f;
        SceneManager.LoadScene(buildIndex);
    }
}