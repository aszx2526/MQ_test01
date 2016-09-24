using UnityEngine;
using System.Collections;

public class onBreed_ScrollView : MonoBehaviour {
    public RectTransform myContent;
    public float myscrollspeed;
    public int myscrollmod=0;
    public int WhichOneSelect;
    // Use this for initialization
    public Vector2 v;
    public void Start() {
        v = myContent.localPosition;
    }
    public void Update() {
        if (myscrollmod == 0) { v.x = (WhichOneSelect - 1) * 160 * -1; }
        if (myscrollmod == 1) {
            if (myContent.anchoredPosition.x <= v.x + 50 && myContent.anchoredPosition.x >= v.x - 50)
            {
                myscrollmod = 0;
                myContent.anchoredPosition = v;
            }
            else {
                myContent.anchoredPosition = Vector2.Lerp(myContent.anchoredPosition, v, Time.deltaTime * myscrollspeed);
            }
        }
        else if (myscrollmod == 2) {
            if (myContent.anchoredPosition.x <= v.x + 50 && myContent.anchoredPosition.x >= v.x - 50)
            {
                myscrollmod = 0;
                myContent.anchoredPosition = v;
            }
            else {
                myContent.anchoredPosition = Vector2.Lerp(myContent.anchoredPosition, v, Time.deltaTime * myscrollspeed);
            }
        }
    }
    public void myBTN_left()
    {
        v.x -= 160;
        myscrollmod = 1;
    }
    public void myBTN_right()
    {
        v.x += 160;
        myscrollmod = 2;
    }
}
