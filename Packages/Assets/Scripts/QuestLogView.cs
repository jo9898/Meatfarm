using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class QuestLogView : MonoBehaviour

{
    private void Awake()
    {
        ShowActiveQuests();
    }
    [SerializeField] private RectTransform questsHolder;
    [SerializeField] private QuestStatusView questViewPrefab;

    public void ShowActiveQuests()
    {
        foreach (Transform child in questsHolder)
        {
            Destroy(child.gameObject);
        }

        var activeQuests = GameState.GetActiveQuests();
        if (activeQuests.Count == 0)
        {
            gameObject.SetActive(false);
            return;
        }

        gameObject.SetActive(true);
        foreach (var quest in activeQuests)
        {
            
            if (quest.Status == QuestStatus.Completed)
            {
                continue;
            }
            
            if (quest.Quest.IsHidden())
            {
                continue; // skip hidden quests
            }
            var questView = Instantiate(questViewPrefab, questsHolder);
            questView.Set(quest.Quest);
        }
    }
}

