using StarterAssets;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.InputSystem;
using UnityEngine.ProBuilder;

public class Canspiracy : MonoBehaviour
{
    [SerializeField] private TextAsset story;
    [SerializeField] public ItemType type;
    [SerializeField] public uint amount;
    private PlayerInput _playerInput;
    private bool CanBool;
    private GameObject _Can;
   
    void Awake()
    {
       
        CanBool = true;
        _playerInput = FindAnyObjectByType<PlayerInput>();

        var storyView = FindObjectOfType<StoryView>(includeInactive:true);
        if (storyView.isActiveAndEnabled)
        {
            return;
        }
        storyView.StartStory(story, type, amount);
    }
    void Update()
    {
        if (_playerInput.actions["Jump"].WasPressedThisFrame())
        {
            if (CanBool)
            {
                var storyView = FindObjectOfType<StoryView>(includeInactive: true);
                if (storyView.isActiveAndEnabled)
                {
                    return;
                }
                StartCoroutine(Waiter());
            }
        }



        IEnumerator Waiter()
        {
            _Can = GameObject.Find("HumansBest");
            var storyView = FindObjectOfType<StoryView>(includeInactive: true);
            FindObjectOfType<ThirdPersonController>().GetComponent<Animator>().SetTrigger("Shaking");
            yield return new WaitForSeconds(0.4f);
            _Can.GetComponent<MeshRenderer>().enabled = true;
            yield return new WaitForSeconds(0.9f);
            _Can.GetComponent<MeshRenderer>().enabled = false;
            yield return new WaitForSeconds(0.3f);
            storyView.StartStory(story, type, amount);
            
        }
    }
}
