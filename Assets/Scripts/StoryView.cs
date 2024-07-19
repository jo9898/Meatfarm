using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.CompilerServices;
using DG.Tweening;
using Ink.Runtime;
using TMPro;
using UnityEditor;
using UnityEngine;
using UnityEngine.Events;
using UnityEngine.InputSystem;
using UnityEngine.SearchService;
using UnityEngine.UI;

public class StoryView : MonoBehaviour
{
    private Story story;
    public ItemType item;
    public uint count;
    

    [SerializeField] private RectTransform choiceHolder;
    [SerializeField] private TextMeshProUGUI storyText;
    [SerializeField] private TextMeshProUGUI speakerName;
    [SerializeField] private Button buttonPrefab;
    [SerializeField] private GameObject normalHudGroup;
    [SerializeField] private List<SpeakerConfig> speakerConfigs;
    [SerializeField] private Image speakerImage;



    [Serializable]
    public class SpeakerConfig
    {
        public string name;
        public Sprite sprite;
    }

    
    private List<IQuest> _quests;
    private PlayerInput _playerInput;

    private void Awake()
    {
        DestroyOldChoices();
        gameObject.SetActive(false);
        _playerInput = FindAnyObjectByType<PlayerInput>();

        CollectionQuest[] collectionQuests = Resources.LoadAll<CollectionQuest>("Quests");
        _quests = new List<IQuest>();
        foreach (var collectionQuest in collectionQuests)
        {
            _quests.Add(collectionQuest);
        }
       
    }

    private void Update()
    {
        if (gameObject.activeSelf.Equals(true) && Input.GetKeyDown(KeyCode.Escape))
        {
            CloseStory();
        }
    }

    public void StartStory(TextAsset textAsset, ItemType type, uint amount)
    {
        item = type;
        count = amount;

        normalHudGroup.SetActive(false);
        _playerInput.currentActionMap = _playerInput.actions.FindActionMap("UI");
        gameObject.SetActive(true);
        story = new Story(textAsset.text);

     

        Cursor.visible = true;
        Cursor.lockState = CursorLockMode.None;
        
        ShowStory();
    }

    private void CloseStory()
    {
        Cursor.visible = false;
        Cursor.lockState = CursorLockMode.Locked;
        gameObject.SetActive(false);
        normalHudGroup.SetActive(true) ;
        _playerInput.currentActionMap = _playerInput.actions.FindActionMap("Player");
    }

    private void ShowStory()
    {
        DestroyOldChoices();

        // Read all the content until we can't continue any more
        while (story.canContinue)
        {
            UpdateQuests();
            // Continue gets the next line of the story
            string text = story.Continue();
            // This removes any white space from the text.
            text = text.Trim();
            // Display the text on screen!
            CreateContentView(text);
            HandleTags();
        }

        if (story.currentChoices.Count > 0)
        {
            for (int i = 0; i < story.currentChoices.Count; i++)
            {
                Choice choice = story.currentChoices[i];
                Button button = CreateChoiceView(choice.text.Trim(), i);
                // Tell the button what to do when we press it
                button.onClick.AddListener(() => OnClickChoiceButton(choice));
            }
        }
        else
        {
            Button choice = CreateChoiceView("Continue", 0);
            choice.onClick.AddListener(CloseStory);
        }
    }


    
    private void HandleTags()
    {
        if (story.currentTags.Count <= 0)
        {
            return;
        }

        foreach (var currentTag in story.currentTags)
        {
            if (currentTag.Contains("addQuest"))
            {
                var questName = currentTag.Split(' ')[1];
                var quest = _quests.First(q => q.GetId().ToLower() == questName.ToLower());
                GameState.StartQuest(quest);
                FindObjectOfType<QuestLogView>(true).ShowActiveQuests();
            }

            if (currentTag.Contains("removeQuest"))
            {
                var questName = currentTag.Split(' ')[1];
                GameState.RemoveQuest(questName);
                FindObjectOfType<QuestLogView>(true).ShowActiveQuests();
            }

            if (currentTag.Contains("completeQuest"))
            {
                var questName = currentTag.Split(' ')[1];
                GameState.CompleteQuest(questName);
                FindObjectOfType<QuestLogView>(true).ShowActiveQuests();
            }

            if (currentTag.Contains("giveItem"))
            {
                var questName = currentTag.Split(' ')[1];
                GameState.AddItem(item, count);
                FindObjectOfType<QuestLogView>(true).ShowActiveQuests();
            }
        }
    }

    private void UpdateQuests()
    {
        foreach (var quest in GameState.GetCompletedQuests())
        {
            var varName = "completed_" + quest.Quest.GetId().ToLower();
            if (story.variablesState.Contains(varName))
            {
                story.variablesState["completed_" + quest.Quest.GetId().ToLower()] = true;
            }
        }
        foreach (var quest in GameState.GetCompletableQuests())
        {
            var varName = "completable_" + quest.Quest.GetId().ToLower();
            if (story.variablesState.Contains(varName))
            {
                story.variablesState["completable_" + quest.Quest.GetId().ToLower()] = true;
            }
        }

        foreach (var quest in GameState.GetActiveQuests())
        {
            var varName = "active_" + quest.Quest.GetId().ToLower();
            if (story.variablesState.Contains(varName))
            {
                story.variablesState["active_" + quest.Quest.GetId().ToLower()] = true;
            }
        }
    }

    private void OnClickChoiceButton(Choice choice)
    {
        story.ChooseChoiceIndex(choice.index);
        ShowStory();
    }

    private void CreateContentView(string text)
    {
    
        var speaker = story.globalTags.FirstOrDefault(t => t.Contains("speaker"))?.Split(' ')[1];
        speakerName.text = speaker;
        speakerImage.sprite = GetSpeakerImage(speaker);
        StartCoroutine(ShowTextLetterByLetter(text));
    
    }
    IEnumerator ShowTextLetterByLetter(string text)
    {
        storyText.text = text;
        storyText.maxVisibleCharacters = 0;
        for (int i = 0; i <= text.Length; i++)
        {
            storyText.maxVisibleCharacters = i;
            if (Keyboard.current.spaceKey.wasPressedThisFrame)
            {
                storyText.maxVisibleCharacters = text.Length;
                yield break;
            }
            yield return new WaitForSeconds(0.0020f);

        }
    }

    private Sprite GetSpeakerImage(string speaker)
    {
        return speakerConfigs.FirstOrDefault(s => s.name == speaker)?.sprite;
    }
    private void DestroyOldChoices()
    {
        foreach (Transform child in choiceHolder)
        {
            Destroy(child.gameObject);
        }
    }

    private Button CreateChoiceView(string text, int index)
    {
        var choice = Instantiate(buttonPrefab, choiceHolder.transform, false);
        if (index == 0)
        {
            choice.Select();
        }
        choice.transform
            .DOScale(1f, 0.35f).SetEase(Ease.OutQuart).From(0f).SetDelay(index * 0.1f);

        var choiceText = choice.GetComponentInChildren<TextMeshProUGUI>();
        choiceText.text = text;

        return choice;
    }

    internal void CloseStory(TextAsset story)
    {
        throw new NotImplementedException();
    }
}
