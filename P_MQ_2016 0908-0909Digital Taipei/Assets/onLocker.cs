using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
public class onLocker : MonoBehaviour {
    public Image[] mylocker;
    Vector3 myrota;
    public float myRotateSpeed;
    public float myFadeinoutTimer;
    bool isBorS;
	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
       // if (GameObject.Find("Canvas").GetComponent<onCanvasForUIControll>().isGameStart) {
            Vector3 myrota = mylocker[0].gameObject.transform.eulerAngles;
            myrota.z += Time.deltaTime * -myRotateSpeed;
            mylocker[0].gameObject.transform.eulerAngles = myrota;


        myLokcerBSFN();


        //  }
    }
    public void myLokcerBSFN() {
        if (isBorS)
        {
            if (mylocker[0].gameObject.GetComponent<RectTransform>().localScale.x > 1.3) { isBorS = false; }
            else {
                Vector3 a = mylocker[0].gameObject.GetComponent<RectTransform>().localScale;
                a.x += Time.deltaTime * 0.5f;
                a.y += Time.deltaTime * 0.5f;
                mylocker[0].gameObject.GetComponent<RectTransform>().localScale = a;
            }

        }
        else {
            if (mylocker[0].gameObject.GetComponent<RectTransform>().localScale.x < 1) { isBorS = true; }
            else {
                Vector3 a = mylocker[0].gameObject.GetComponent<RectTransform>().localScale;
                a.x -= Time.deltaTime * 0.5f;
                a.y -= Time.deltaTime * 0.5f;
                mylocker[0].gameObject.GetComponent<RectTransform>().localScale = a;
            }
        }
    }
}
