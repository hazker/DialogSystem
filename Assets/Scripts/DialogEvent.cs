using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DialogEvent : MonoBehaviour
{
    [SerializeField] private TextAssetValue dialogValue;
    [SerializeField] private TextAsset myDialog;


    // Start is called before the first frame update
    void Start()
    {
        dialogValue.value = myDialog;
    }

    // Update is called once per frame
    void Update()
    {
        
    }
}
