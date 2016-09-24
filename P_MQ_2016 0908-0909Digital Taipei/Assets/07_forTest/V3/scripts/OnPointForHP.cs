using UnityEngine;
using System.Collections;
using UnityEngine.UI;
public class OnPointForHP : MonoBehaviour {
    public GameObject target;
    public Text ShowHPText;
    public Vector3 Offset;
    public float myHP;
    // Use this for initialization
    void Start()
    {
        ShowHPText = GetComponent<Text>();
    }
    // Update is called once per frame
    void Update()
    {
        myHP = target.GetComponent<OnLookAtPoint>().myHP;
        ShowHPText.transform.position = Camera.main.WorldToScreenPoint(target.GetComponent<Transform>().transform.position) + Offset;
        ShowHPText.text = target.GetComponent<OnLookAtPoint>().myName + "：" + myHP.ToString();

        if(myHP<1) 
        {
            Destroy(gameObject);
        }
    }
}
