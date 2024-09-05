using UnityEditor;
using UnityEngine;
using UnityEngine.UI;

[RequireComponent(typeof(Button))]
public class WallpaperCloseButton : MonoBehaviour
{

    public ItemType type;
    public uint amount = 1;
    private void Awake()
    {
        GetComponent<Button>().onClick.AddListener(CloseWallpaper);
    }

    private void CloseWallpaper()
    {
        {
            Cursor.visible = false;
            Cursor.lockState = CursorLockMode.Locked;
            Debug.Log("Collected" + name);
            GameState.AddItem(type, amount);
            Time.timeScale = 1;
        }
        Destroy(transform.parent.gameObject);
    }
}
