using FMODUnity;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class StoryNPC : MonoBehaviour, IInteractable
{ 
    [SerializeField] private TextAsset story;
    [SerializeField] public ItemType type;
    [SerializeField] public uint amount;
    private StudioEventEmitter emitter;

    public void Interact()
    {
        var storyView = FindObjectOfType<StoryView>(includeInactive: true);
        if (storyView.isActiveAndEnabled)
        {
            return;     
        }
        storyView.StartStory(story, type, amount);
        emitter = GetComponent<StudioEventEmitter>();
        if (emitter != null)
        {
            emitter.Play();
        }
        
    }
   
}
