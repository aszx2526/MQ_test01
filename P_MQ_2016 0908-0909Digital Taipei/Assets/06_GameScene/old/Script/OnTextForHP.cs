using UnityEngine;
using System.Collections;
using UnityEngine.UI;
public class OnTextForHP : MonoBehaviour
{
    public GameObject target;
    public Text ShowHPText;
    public Vector3 Offset;
    public int myTextMod;//0=player 1=MQ 2=monster
    // Use this for initialization
    void Start()
    {
        ShowHPText = GetComponent<Text>();
    }
    // Update is called once per frame
    void Update()
    {
        if (target.gameObject)
        {
            ShowHPText.transform.position = Camera.main.WorldToScreenPoint(target.GetComponent<Transform>().transform.position) + Offset;
            if (myTextMod == 0) {
                ShowHPText.text = target.gameObject.GetComponent<OnPlayer>().mytitle + target.gameObject.GetComponent<OnPlayer>().myHP.ToString();
            }
            else if (myTextMod == 1)
            {
                ShowHPText.text = target.gameObject.GetComponent<OnMQ>().mytitle + target.gameObject.GetComponent<OnMQ>().myHP.ToString();
            }
            else {
                ShowHPText.text = target.gameObject.GetComponent<OnMonster>().mytitle + target.gameObject.GetComponent<OnMonster>().myHP.ToString();
            }
        }
        else
        {
            Destroy(gameObject);
        }
    }
}
