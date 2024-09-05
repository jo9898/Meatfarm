using UnityEngine;
using UnityEngine.Playables;

public interface IQuest
{
    public string GetId();
    public bool IsHidden();
    string GetDisplayName();

    public bool HasDialog();
    GameObject GetCompleteScreenPrefab();

    PlayableAsset GetCompletePlayable();
}