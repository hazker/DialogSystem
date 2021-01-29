using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Ink.Runtime;
using UnityEngine.UI;
using System;

public class BranchingDialogController : MonoBehaviour
{
    [SerializeField] private GameObject dialogCanvas;
    [SerializeField] private GameObject dialogPrefab;
    [SerializeField] private GameObject choicePrefab;
    [SerializeField] private TextAssetValue dialogValue;
    [SerializeField] private Notification branchingDilogNotification;
    [SerializeField] private Story myStory;
    [SerializeField] private GameObject dialogHolder;
    [SerializeField] private GameObject choiceHolder;
    [SerializeField] private ScrollRect dialogScroll;
    [SerializeField] private Image characterHolder;
    [SerializeField] private Sprite placeHolder;

    public List<Sprite> spritesMainChar;
    public List<Sprite> spritesSecondChar;

    List<string> tags;
    Color color;
    List<int> num;

    // Start is called before the first frame update
    void Start()
    {

        tags = new List<string>();
        num = new List<int>();
        EnableCanvas();
    }

    // Update is called once per frame
    void Update()
    {

    }

    public void EnableCanvas()
    {
        dialogCanvas.SetActive(true);
        //branchingDilogNotification.Raise();
        SetStory();
        RefreshView();
    }

    public void SetStory()
    {
        if (dialogValue.value)
        {
            DeleteOldDilogs();
            myStory = new Story(dialogValue.value.text);
        }
        else
        {
            Debug.Log("Story error");
        }
    }

    void DeleteOldDilogs()
    {
        for (int i = 0; i < dialogHolder.transform.childCount; i++)
        {
            Destroy(dialogHolder.transform.GetChild(i).gameObject);
        }
    }

    public void RefreshView()
    {
        while (myStory.canContinue)
        {
            MakeNewDialog(myStory.Continue());
            characterHolder.sprite = placeHolder;
            color = Color.white;
            ParseTags();
        }
        if (myStory.currentChoices.Count > 0)
        {
            MakeNewChoices();
        }
        else
        {
            dialogCanvas.SetActive(false);
        }
        StartCoroutine(ScrollCor());
    }

    IEnumerator ScrollCor()
    {
        yield return null;
        dialogScroll.verticalNormalizedPosition = 0f;
    }

    void MakeNewDialog(string newDialog)
    {
        DialogObject newDilogObject = Instantiate(dialogPrefab, dialogHolder.transform).GetComponent<DialogObject>();
        newDilogObject.Setup(newDialog);
    }



    void MakeNewResponce(string newDialog, int choiceValue, Color col)
    {
        ResponceObject newResponceObject = Instantiate(choicePrefab, choiceHolder.transform).GetComponent<ResponceObject>();

        newResponceObject.Setup(newDialog, choiceValue, col);
        Button responceButton = newResponceObject.gameObject.GetComponent<Button>();
        if (responceButton)
        {
            responceButton.onClick.AddListener(delegate { ChooseChoice(choiceValue); });
        }
    }

    void MakeNewChoices()
    {
        bool t = false;
        for (int i = 0; i < choiceHolder.transform.childCount; i++)
        {
            Destroy(choiceHolder.transform.GetChild(i).gameObject);
        }
        for (int i = 0; i < myStory.currentChoices.Count; i++)
        {
            foreach (var item in num)
            {
                if (item == i)
                {

                    MakeNewResponce(myStory.currentChoices[i].text, i, color);
                    t = true;
                }

            }
            if (!t)
                MakeNewResponce(myStory.currentChoices[i].text, i, Color.white);
            t = false;
        }
    }

    public void ChooseChoice(int choice)
    {
        myStory.ChooseChoiceIndex(choice);
        RefreshView();
    }

    void ParseTags()
    {
        tags = myStory.currentTags;
        foreach (string t in tags)
        {
            string prefix = t.Split(' ')[0];
            string param = t.Split(' ')[1];

            switch (prefix.ToLower())
            {
                case "color":
                    string col = param.Split('_')[0];
                    string num = param.Split('_')[1];
                    SetTextColor(col.ToLower());
                    SetResponceNumberToCol(num.ToLower());
                    break;
                case "char":
                    SetCharPic(param);
                    break;
                case "otherchar":
                    SetOtherCharPic(param);
                    break;
            }
        }
    }

    void SetTextColor(string _color)
    {
        switch (_color)
        {
            case "red":
                color = Color.red;
                break;
            case "blue":
                color = Color.cyan;
                break;
            case "green":
                color = Color.green;
                break;
            case "white":
                color = Color.white;
                break;
            default:
                Debug.Log($"{_color} is not available as a text color");
                break;
        }
    }

    void SetResponceNumberToCol(string _num)
    {
        num.Clear();
        foreach (var item in _num)
        {
            num.Add(Int32.Parse(item.ToString())-1);
        }
    }

    void SetCharPic(string character)
    {
        characterHolder.sprite = spritesMainChar[Int32.Parse(character)-1];
    }

    void SetOtherCharPic(string character)
    {
        characterHolder.sprite = spritesSecondChar[Int32.Parse(character) - 1];
    }
}
