using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class StoryNPC : MonoBehaviour, IInteractable
{ 
    [SerializeField] private TextAsset story;
    [SerializeField] public ItemType type;
    [SerializeField] public uint amount;


        public void Interact()
    {
        var storyView = FindObjectOfType<StoryView>(includeInactive: true);
        if (storyView.isActiveAndEnabled)
        {
            return;     
        }

        storyView.StartStory(story, type, amount);
    }
   
}
