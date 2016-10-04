﻿using UnityEngine;
using System.Collections;
using UnityEngine.UI;
public class onHitUI : MonoBehaviour {
    public float riseSpeed;
    public float fadeSpeed;
    public float beBigSpeed;
    public GameObject[] myBigHitNumString;
    public GameObject[] myBigHitNumString1_Child;
    public GameObject[] myBigHitNumString2_Child;
    public Sprite[] myNumSprite;

    public int myBigHitValue;

    public int s;
    public float b;

	// Use this for initialization
	void Start () {
        //s = gameObject.GetComponentInChildren<Text>().fontSize;
        myBigHitValueCheckFN();
    }

    // Update is called once per frame
    void Update () {

        Vector2 Posy =  gameObject.GetComponent<RectTransform>().anchoredPosition;
        Posy.y += Time.deltaTime* Random.Range(riseSpeed,riseSpeed+5);
        gameObject.GetComponent<RectTransform>().anchoredPosition = Posy;

        Color c = gameObject.GetComponent<Image>().color;
        //Color c2 = gameObject.GetComponentInChildren<Text>().color;
        float f = Random.Range(fadeSpeed, fadeSpeed + 2);
        c.a -= Time.deltaTime * f;
        //c2.a -= Time.deltaTime * f;
        gameObject.GetComponent<Image>().color = c;
//        gameObject.GetComponentInChildren<Text>().color = c2;

        //gameObject.GetComponentInChildren<Text>().fontSize=0;
        //b += Time.deltaTime*beBigSpeed;
        /*if (b >= s) { gameObject.GetComponentInChildren<Text>().fontSize = s; }
        else {
            gameObject.GetComponentInChildren<Text>().fontSize = (int)b;
        }*/
       /* if (c2.a <= 0) {
            Destroy(gameObject);
        }*/
    }
    public void myBigHitValueCheckFN() {
        if (myBigHitValue > 99) {//三位數
            myBigHitNumString[0].SetActive(false);//把另外一個位數的關掉
            //string numcheck = myBigHitValue.ToString();
            for (int a = 0; a < 10; a++) {
                if (myBigHitValue.ToString().Substring(0, 1) == a.ToString()) { myBigHitNumString2_Child[0].GetComponent<Image>().sprite = myNumSprite[a]; }
                if (myBigHitValue.ToString().Substring(1, 1) == a.ToString()) { myBigHitNumString2_Child[1].GetComponent<Image>().sprite = myNumSprite[a]; }
                if (myBigHitValue.ToString().Substring(2, 1) == a.ToString()) { myBigHitNumString2_Child[2].GetComponent<Image>().sprite = myNumSprite[a]; }
            }
        }
        else {//兩位數
            myBigHitNumString[1].SetActive(false);
            for (int a = 0; a < 10; a++)
            {
                if (myBigHitValue.ToString().Substring(0, 1) == a.ToString()) { myBigHitNumString1_Child[0].GetComponent<Image>().sprite = myNumSprite[a]; }
                if (myBigHitValue.ToString().Substring(1, 1) == a.ToString()) { myBigHitNumString1_Child[1].GetComponent<Image>().sprite = myNumSprite[a]; }
               
            }
        }
    }
}
