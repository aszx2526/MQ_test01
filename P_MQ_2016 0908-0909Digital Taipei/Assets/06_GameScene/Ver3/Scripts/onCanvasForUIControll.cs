using UnityEngine;
using System.Collections;
using UnityEngine.SceneManagement;
public class onCanvasForUIControll : MonoBehaviour {
    public GameObject myMainUI;
    public GameObject myMiniMap;
    public GameObject myMission;
    public GameObject myArmyInfo;
    public GameObject myAddMQ;
    public GameObject myChangeArmy;
    public GameObject mySupplyStation;
    public AudioClip[] mySoundEffectData;
    public AudioSource myAudioSource;
    public bool isGameStart;
    // Use this for initialization
    void Start () {
        isGameStart = false;
        myAudioSource = gameObject.GetComponent<AudioSource>();
        myMiniMap.SetActive(true);
        myMission.SetActive(false);
        myArmyInfo.SetActive(false);
        myAddMQ.SetActive(false);
        myChangeArmy.SetActive(false);
        mySupplyStation.SetActive(false);
    }
	
	// Update is called once per frame
	void Update () {
	
	}
    public void BTN_Left1() {

        mySoundEffectFN();
        myMiniMap.SetActive(true);
        myMission.SetActive(false);
        myArmyInfo.SetActive(false);
        myAddMQ.SetActive(false);
        myChangeArmy.SetActive(false);
        mySupplyStation.SetActive(false);
        mySoundEffectFN();
    }
    public void BTN_Left2() {
        mySoundEffectFN();
        myMiniMap.SetActive(false);
        myMission.SetActive(true);
        myArmyInfo.SetActive(false);
        myAddMQ.SetActive(false);
        myChangeArmy.SetActive(false);
        mySupplyStation.SetActive(false);
        
    }
    public void BTN_Left3() {
        mySoundEffectFN();
        myMiniMap.SetActive(false);
        myMission.SetActive(false);
        myArmyInfo.SetActive(true);
        myAddMQ.SetActive(false);
        myChangeArmy.SetActive(false);
        mySupplyStation.SetActive(false);
        
    }
    public void BTN_Left4() {
        mySoundEffectFN();
        myMiniMap.SetActive(false);
        myMission.SetActive(false);
        myArmyInfo.SetActive(false);
        myAddMQ.SetActive(false);
        myChangeArmy.SetActive(false);
        mySupplyStation.SetActive(true);
        
    }
    public void BTN_Left5() {
        //回大地圖
        mySoundEffectFN();
        SceneManager.LoadScene(4);
        
    }
    public void BTN_Left6() {
        //大地圖戰鬥
        mySoundEffectFN();
        isGameStart = true;
        GameObject.Find("MainCamera").GetComponent<OnCameraLookAt>().isNeedToFollow = true;
        GameObject.Find("MainCamera").GetComponent<OnCameraForShootMQ>().myABulletCount = GameObject.Find("MiniMap").GetComponent<OnMiniMap>().TeamAAmount;
        GameObject.Find("MainCamera").GetComponent<OnCameraForShootMQ>().myBBulletCount = GameObject.Find("MiniMap").GetComponent<OnMiniMap>().TeamBAmount;
        GameObject.Find("MainCamera").GetComponent<OnCameraForShootMQ>().myCBulletCount = GameObject.Find("MiniMap").GetComponent<OnMiniMap>().TeamCAmount;
        GameObject.Find("MainCamera").GetComponent<OnCameraForShootMQ>().myDBulletCount = GameObject.Find("MiniMap").GetComponent<OnMiniMap>().TeamDAmount;
        GameObject.Find("MainCamera").GetComponent<OnCameraForShootMQ>().myEBulletCount = GameObject.Find("MiniMap").GetComponent<OnMiniMap>().TeamEAmount;
        myMainUI.SetActive(false);
        
    }
    public void BTN_forAddMQ() {
        mySoundEffectFN();
        myAddMQ.SetActive(true);
        
    }
    public void BTN_forAddMQExit() {
        mySoundEffectFN();
        myAddMQ.SetActive(false);
        
    }
    public void BTN_forChangeArmy() {
        mySoundEffectFN();
        myChangeArmy.SetActive(true);
        
    }
    public void BTN_forChangeArmyExit() {
        mySoundEffectFN();
        myChangeArmy.SetActive(false);
        
    }
    public void BTN_forSetting() {
        //if (GameObject.Find("Canvas").GetComponent<onCanvasForUIControll>().isGameStart) { }
        isGameStart = false;
        mySoundEffectFN();
        myMainUI.SetActive(true);
        if (GameObject.Find("winlose")) { GameObject.Find("winlose").gameObject.SetActive(false); }
        if (GameObject.Find("youlose")) { GameObject.Find("youlose").gameObject.SetActive(false); }


    }

    public void mySoundEffectFN() {
       // print("UI sound");
        myAudioSource.clip = mySoundEffectData[0];
        myAudioSource.enabled = false;
        myAudioSource.enabled = true;
    }
}
