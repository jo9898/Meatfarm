using JetBrains.Annotations;
using StarterAssets;
using System.Collections;
using System.Collections.Generic;
using Unity.VisualScripting;
using UnityEngine;

public class Accesscard : MonoBehaviour
{
    public ItemType type;
    public uint amount;
    private bool Storyview;

    public void Update()
    {
        var storyView = FindObjectOfType<StoryView>();
        if (storyView.isActiveAndEnabled)
        {
            Storyview = true;
        }

        if (GameState.HasEnoughItems(type, amount) && Storyview == false)
        {
            FindObjectOfType<ThirdPersonController>().GetComponent<Animator>().SetTrigger("Pickup");
            Destroy(gameObject);
        }
    }
}
