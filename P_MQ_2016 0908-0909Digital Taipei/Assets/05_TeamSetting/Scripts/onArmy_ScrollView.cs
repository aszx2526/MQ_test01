using UnityEngine;
using System.Collections;

public class onArmy_ScrollView : MonoBehaviour {
    public RectTransform myContent;
    public float myscrollspeed;
    public int myscrollmod = 0;
    public int WhichOneSelect;
    public float mydis;
    // Use this for initialization
    public Vector2 v;
    public void Start()
    {
        v = myContent.localPosition;
       // v.y += 640;
    }
    public void Update()
    {
        if (myscrollmod == 0) { v.y = (WhichOneSelect - 1) * 50; }
        if (myscrollmod == 1)
        {
            if (myContent.anchoredPosition.y <= v.y + mydis && myContent.anchoredPosition.y >= v.y - mydis)
            {
                myscrollmod = 0;
                myContent.anchoredPosition = v;
            }
            else {
                myContent.anchoredPosition = Vector2.Lerp(myContent.anchoredPosition, v, Time.deltaTime * myscrollspeed);
            }
        }
        else if (myscrollmod == 2)
        {
            print("myContent.anchoredPosition.y = "+ myContent.anchoredPosition.y+ ", v.y = "+ v.y);

            if (myContent.anchoredPosition.y <= v.y + mydis && myContent.anchoredPosition.y >= v.y - mydis)
            {
                myscrollmod = 0;
                myContent.anchoredPosition = v;
            }
            else {
                myContent.anchoredPosition = Vector2.Lerp(myContent.anchoredPosition, v, Time.deltaTime * myscrollspeed);
            }
        }
    }
    public void myBTN_Up()
    {
        if (myContent.anchoredPosition.y <= 0) {
            v.y = 0;
            myContent.anchoredPosition = v;
        }
        else {
            v.y -= 50;
        }
        myscrollmod = 1;
    }
    public void myBTN_Down()
    {
        if (myContent.anchoredPosition.y >= 450)
        {
            v.y = 450;
            myContent.anchoredPosition = v;
        }
        else {
            v.y += 50;
        }
        myscrollmod = 2;
    }
}
