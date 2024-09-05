using UnityEngine;
using UnityEngine.UI;

[RequireComponent(typeof(Button))]
public class CloseUiButton : MonoBehaviour
{
    [SerializeField] private GameObject screen;

    private void Awake()
    {
        Button button = GetComponent<Button>();
        GetComponent<Button>().onClick.AddListener(CloseUi);
        button.Select();
        
    }

    private void CloseUi()
    {
        Cursor.visible = false;
        Cursor.lockState = CursorLockMode.Locked;
        Destroy(screen);
    }
}