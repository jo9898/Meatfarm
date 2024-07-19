using System.Collections.Generic;
using System.Linq;
using UnityEngine;
using UnityEngine.Playables;
using UnityEngine.Rendering.UI;

public class GameState : MonoBehaviour
{
    private readonly Dictionary<ItemType, uint> _items = new();
    private readonly List<QuestState> _questStates = new();

    public static void AddItem(ItemType type, uint amount)
    {
        if (amount == 0 || type == null)
        {
            return;
        }
        
        
        var instance = FindObjectOfType<GameState>();
        if (!instance._items.TryAdd(type, amount))
        {
            instance._items[type] += amount;
            Debug.Log(type + "collected");
        }

        QuestSystem.UpdateQuests();
       
    }

    public static bool TryRemoveItem(ItemType type, uint amount)
    {

        if (amount == 0 || type == null)
        {
            return true;
        }
        var instance = FindObjectOfType<GameState>();
        if (instance._items.TryGetValue(type, out var ownedAmount))
        {
            if (ownedAmount < amount)
            {
                return false;
            }

            instance._items[type] -= amount;
            return true;
        }

        return false;
    }

    public static bool HasEnoughItems(ItemType type, uint amount)
    {
        if (amount == 0 || type == null)
        {
            return true;
        }

        var instance = FindObjectOfType<GameState>();
        if (instance._items.TryGetValue(type, out var ownedAmount))
        {
            return ownedAmount >= amount;
        }

        return false;
    }

    public static IReadOnlyDictionary<ItemType, uint> GetAllItems()
    {
        var instance = FindObjectOfType<GameState>();
        return instance._items;
    }

    public static void StartQuest(IQuest quest)
    {
        var instance = FindObjectOfType<GameState>();

        if (instance._questStates.Any(q => q.Quest.GetId() == quest.GetId()))
        {
            Debug.LogWarning($"Quest{quest.GetId()} already started - not starting it again");
            return;
        }

        var state = new QuestState()
        {
            Quest = quest,
            Status = QuestStatus.Started,
        };
        instance._questStates.Add(state);
        Debug.Log(quest.GetId() + "started");
    }

    public static void RemoveQuest(string questId)
    {
        var instance = FindObjectOfType<GameState>();
        var match = instance._questStates.Find(q => q.Quest.GetId() == questId);
        instance._questStates.Remove(match);
        Debug.Log(questId + "removed");
    }

    public static void CompleteQuest(string questId)
    {
        var instance = FindObjectOfType<GameState>();
        var match = instance._questStates.Find(q => q.Quest.GetId() == questId);
        match.Status = QuestStatus.Completed;
        var index = instance._questStates.FindIndex(q => q.Quest.GetId() == questId);
        if (index >= 0 && index < instance._questStates.Count)
        {
            instance._questStates[index] = match;
        }

        var uiPrefab = match.Quest.GetCompleteScreenPrefab();
        if (uiPrefab!= null)
        {
            var root = FindObjectOfType<UiRoot>().transform;
            Instantiate(uiPrefab, root);
        }


        var lockedGameObjects = FindObjectsOfType<LockedByQuest>(true);
        foreach (var lockedObject in lockedGameObjects)
        {
            if (lockedObject.Quest.GetId() == questId)
            {
                lockedObject.gameObject.SetActive(true);
                Destroy(lockedObject);
            }
        }

        Debug.Log("Quest" + questId + "completed");

        var playable = match.Quest.GetCompletePlayable();
        if (playable != null)
        {
            var director = FindObjectOfType<PlayableDirector>();
            director.playableAsset = playable;
            director.Play();
        }
    }
    public static void MarkQuestCompletable(IQuest quest)
    {
        var instance = FindObjectOfType<GameState>();
        var match = instance._questStates.Find(q => q.Quest.GetId() == quest.GetId());
        if (match.Status == QuestStatus.Completed)
        {
            return;
        }
        match.Status = QuestStatus.Completable;
        var index = instance._questStates.FindIndex(q => q.Quest.GetId() == quest.GetId());
        if (index >= 0 && index < instance._questStates.Count)
        {
            instance._questStates[index] = match;
            Debug.Log(quest.GetId() + "is now completable");
        }
    }

    public static IReadOnlyList<QuestState> GetCompletableQuests()
    {
        var instance = FindObjectOfType<GameState>();
        return instance._questStates.Where(x => x.Status == QuestStatus.Completable).ToList();
    }

    public static IReadOnlyList<QuestState> GetCompletedQuests()
    {
        var instance = FindObjectOfType<GameState>();
        return instance._questStates.Where(x => x.Status == QuestStatus.Completed).ToList();
    }

    public static IReadOnlyList<QuestState> GetActiveQuests()
    {
        var instance = FindObjectOfType<GameState>();
        return instance._questStates;
    }
}

public struct QuestState
{
    public IQuest Quest;
    public QuestStatus Status;
};

public enum QuestStatus
{
    Started,
    Completable,
    Completed
}