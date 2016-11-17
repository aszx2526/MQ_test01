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
    public GameObject myLevelClear;
    public AudioClip[] mySoundEffectData;
    public AudioSource myAudioSource;
    public bool isGameStart;
    public bool[] isLevelClear;
    public bool isPlayerLose;
    public int myAllLocalMQCount;

    [Header("怪物起始士氣值：")]
    public float myMonsterBasicMorale;
    [Header("設定怪物回氣值：")]
    public float myMonsterMoraleRestoreValue;
    [Header("蚊子傷害變數：")]
    public float myMonsterMoraleBloodValue;
    [Header("原生蚊種類：")]
    public int myLocalMQ_Mob;//123 等阿龐給我對應表
    [Header("原生蚊數量：")]
    public int myLocalMQ_Amount;
    [Header("原生蚊1秒產出量")]
    public float myLocalMQ_CreateSpeed;
    public int myLocalMQ_AmountFull;
    [Header("怪物士氣值：")]
    public float myMonsterMorale;
    //public float myMonsterMoraleBloodValue;
    public GameObject[] myMonsterMoraleCounter;
    public float myMonsterMoralCounterTimer;
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
        myLevelClear.SetActive(false);
        myAllLocalMQCount = myMonsterMoraleCounter[0].GetComponent<Blip>().myLocalMQ_Amount + myMonsterMoraleCounter[1].GetComponent<Blip>().myLocalMQ_Amount + myMonsterMoraleCounter[2].GetComponent<Blip>().myLocalMQ_Amount + myMonsterMoraleCounter[3].GetComponent<Blip>().myLocalMQ_Amount;
    }
	
	// Update is called once per frame
	void Update () {
        //關卡通關成功失敗判定
        if (isLevelClear[3]) {
            myLevelClear.SetActive(true);
        }
        else if (isPlayerLose) {
            myLevelClear.SetActive(true);
        }
        else if (myAllLocalMQCount<=0) {
            myLevelClear.SetActive(true);
        }




        if (myMonsterMoralCounterTimer >= 1) {
            myMonsterMoralCounterTimer = 0;
            for (int a = 0; a < myMonsterMoraleCounter.Length; a++) {
                myMonsterMoraleCounter[a].GetComponent<Blip>().myMonsterBasicMorale += myMonsterMoraleCounter[a].GetComponent<Blip>().myMonsterMoraleRestoreValue*0.1f;
            }
        }
        else {
            myMonsterMoralCounterTimer += Time.deltaTime;
        }

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
        GameObject.Find("MainCamera").GetComponent<onMainCameraVer2>().isNeedToFollow = true;
        GameObject.Find("MainCamera").GetComponent<OnCameraForShootMQ>().myTeamMQCount[0] = GameObject.Find("MiniMap").GetComponent<OnMiniMap>().TeamAAmount;
        GameObject.Find("MainCamera").GetComponent<OnCameraForShootMQ>().myTeamMQCount[1] = GameObject.Find("MiniMap").GetComponent<OnMiniMap>().TeamBAmount;
        GameObject.Find("MainCamera").GetComponent<OnCameraForShootMQ>().myTeamMQCount[2] = GameObject.Find("MiniMap").GetComponent<OnMiniMap>().TeamCAmount;
        GameObject.Find("MainCamera").GetComponent<OnCameraForShootMQ>().myTeamMQCount[3] = GameObject.Find("MiniMap").GetComponent<OnMiniMap>().TeamDAmount;
        GameObject.Find("MainCamera").GetComponent<OnCameraForShootMQ>().myTeamMQCount[4] = GameObject.Find("MiniMap").GetComponent<OnMiniMap>().TeamEAmount;
        GameObject.Find("MainCamera").GetComponent<OnCameraForShootMQ>().SendMessage("myGameAwakeTestFN");
        myLocalMQ_AmountFull = myLocalMQ_Amount;
        myMonsterMorale = myMonsterBasicMorale;
        //myMonsterMoraleBloodValue = myMonsterBasicMorale / (float)GameObject.Find("CameraVer2_DTG").GetComponent<onCamera_dtg>().myMonsterList[GameObject.Find("CameraVer2_DTG").GetComponent<onCamera_dtg>().myPickUpNum - 1].GetComponent<onMonsterVer3>().myFullHP;
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
    public void Testbtn1() { }// GameObject.Find("CameraVer2_DTG").GetComponent<onCamera_dtg>().SendMessage("changeViewControllFN"); }
    public void Testbtn2() { GameObject.Find("MainCamera").GetComponent<OnCameraForShootMQ>().SendMessage("myCreatAMQ"); }
}
