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
using UnityEngine.InputSystem;
using UnityEngine.SearchService;
using UnityEngine.UI;

public class StoryView : MonoBehaviour
{
    public static event Action<Story> OnCreateStory;
    private Story story;

    [SerializeField] private RectTransform choiceHolder;
    [SerializeField] private TextMeshProUGUI storyText;
    [SerializeField] private TextMeshProUGUI speakerName;
    [SerializeField] private Button buttonPrefab;
    [SerializeField] private QuestsConfig questConfig;
    [SerializeField] private GameObject normalHudGroup;
    [SerializeField] private List<SpeakerConfig> speakerConfigs;
    [SerializeField] private Image speakerImage;

    [Serializable]
    public class SpeakerConfig
    {
        public string name;
        public Sprite sprite;
    }
    // TODO add later [SerializeField] private QuestsConfig questConfig;

    private void Awake()
    {
        DestroyOldChoices();
        gameObject.SetActive(false);
    }

    public void StartStory(TextAsset textAsset)
    {
        FindObjectOfType<PlayerInput>().enabled = false;
        gameObject.SetActive(true);
        story = new Story(textAsset.text);

        Cursor.visible = true;
        Cursor.lockState = CursorLockMode.None;

        foreach (var quest in GameState.GetCompletableQuests())
        {
            story.variablesState["finished_"+quest.Quest.GetId().ToLower()] = true;
        }

        ShowStory();
    }

    private void CloseStory()
    {
        Cursor.visible = false;
        Cursor.lockState = CursorLockMode.Locked;
        gameObject.SetActive(false);
        FindObjectOfType<PlayerInput>().enabled = true;
    }

    private void ShowStory()
    {
        DestroyOldChoices();

        // Read all the content until we can't continue any more
        while (story.canContinue)
        {
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
        if (story.currentTags.Count < 1)
        {
            return;
        }

        foreach (var currentTag in story.currentTags)
        {
            if (currentTag.Contains("addQuest"))
            {
                var questName = currentTag.Split(' ')[1];
                var quest = questConfig.quests.First(q => q.GetId() == questName);
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
        }
    }

    private void OnClickChoiceButton(Choice choice)
    {
        story.ChooseChoiceIndex(choice.index);
        ShowStory();
    }

    private void CreateContentView(string text)
    {
        {
            var speaker = story.globalTags.FirstOrDefault(t => t.Contains("speaker"))?.Split(' ')[1];
            speakerName.text = speaker;
            speakerImage.sprite = GetSpeakerImage(speaker);
            StartCoroutine(ShowTextLetterByLetter(text));
        }
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
            yield return new WaitForSeconds(0.0025f);

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
            .DOScale(1f, 0.4f)
            .SetEase(Ease.OutBack)
            .From(0f)
            .SetDelay(index * 0.1f);

        var choiceText = choice.GetComponentInChildren<TextMeshProUGUI>();
        choiceText.text = text;

        return choice;
    }
}
