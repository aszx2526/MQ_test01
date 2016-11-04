using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
public class onUI_MonsterHpBar : MonoBehaviour {
    public Image myHPBar_image;
    public GameObject myCameraVer2_DTG;
	// Use this for initialization
	void Start () {
        myHPBar_image = GetComponent<Image>();
        myCameraVer2_DTG = GameObject.Find("CameraVer2_DTG").gameObject;

    }
	
	// Update is called once per frame
	void Update () {
        if (myCameraVer2_DTG.GetComponent<onCamera_dtg>().myPickUpNum != 0) {
            myHPBar_image.fillAmount = (float)myCameraVer2_DTG.GetComponent<onCamera_dtg>().myMonsterList[myCameraVer2_DTG.GetComponent<onCamera_dtg>().myPickUpNum - 1].GetComponent<onMonsterVer3>().myHP / (float)myCameraVer2_DTG.GetComponent<onCamera_dtg>().myMonsterList[myCameraVer2_DTG.GetComponent<onCamera_dtg>().myPickUpNum - 1].GetComponent<onMonsterVer3>().myFullHP;
        }
    }
}
