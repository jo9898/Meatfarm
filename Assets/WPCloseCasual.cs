using UnityEditor;
using UnityEngine;
using UnityEngine.UI;

[RequireComponent(typeof(Button))]
public class WPCloseCasual : MonoBehaviour
{
    private void Awake()
    {
        GetComponent<Button>().onClick.AddListener(CloseWallpaper);
    }
    private void CloseWallpaper()
    {
        {
            Cursor.visible = false;
            Cursor.lockState = CursorLockMode.Locked;
        }
        Destroy(transform.parent.gameObject);
    }
}
