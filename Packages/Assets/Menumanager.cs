using UnityEngine;
using UnityEngine.UI;
using UnityEngine.EventSystems;

public class MenuManager : MonoBehaviour
{
    public Canvas mainMenuCanvas;
    public Canvas optionsMenuCanvas;

    public Button mainMenuOptionsButton;
    public Button optionsMenuBackButton;
    public Button optionsMenuFirstButton;
    public Button mainMenuFirstButton;

    void Start()
    {

        ShowMainMenu();
    }

    public void ShowMainMenu()
    {
        mainMenuCanvas.gameObject.SetActive(true);
        optionsMenuCanvas.gameObject.SetActive(false);
        HighlightButton(mainMenuFirstButton);
    }

    public void ShowOptionsMenu()
    {
        optionsMenuCanvas.gameObject.SetActive(true);
        mainMenuCanvas.gameObject.SetActive(false);
        HighlightButton(optionsMenuFirstButton);
    }

    void HighlightButton(Button button)
    {

        EventSystem.current.SetSelectedGameObject(button.gameObject);
    }


    public void OnMainMenuOptionsButton()
    {
        ShowOptionsMenu();
    }


    public void OnOptionsMenuBackButton()
    {
        ShowMainMenu();
    }
}