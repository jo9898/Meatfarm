using System;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Playables;

[CreateAssetMenu]
public class CollectionQuest : ScriptableObject, IQuest
{
    public string displayName;
    public List<ItemRequirement> requirements;
    public bool isHidden;    // hide this quest in the quest log UI
    public GameObject completeScreenPrefab; // This is null by default. Optionally: a screen
    public bool hasDialog;
    public PlayableAsset completePlayable;

    public PlayableAsset GetCompletePlayable()
    {
        return completePlayable;
    }

    public string GetId()
    {
        return name;
    }

    public bool HasDialog()
    {
        return hasDialog;
    }
    public bool IsHidden()
    {
        return isHidden;
    }
    public string GetDisplayName()
    {
        return displayName;
    }

    public GameObject GetCompleteScreenPrefab()
    {
        return completeScreenPrefab;
    }

    [Serializable]
    public class ItemRequirement
    {
        public ItemType type;
    public uint amount = 1;
    }
}