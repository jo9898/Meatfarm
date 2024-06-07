using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class QuestLogView : MonoBehaviour

{
    [SerializeField] private RectTransform questsHolder;
    [SerializeField] private QuestStatusView questViewPrefab;

    public void ShowActiveQuests()
    {
        return;
        foreach (Transform child in questsHolder)
        {
            Destroy(child.gameObject);
        }

        var activeQuests = GameState.GetActiveQuests();
        foreach (var quest in activeQuests)
        {
            var questView = Instantiate(questViewPrefab, questsHolder);
            questView.Set(quest.Quest);
        }
    }
}