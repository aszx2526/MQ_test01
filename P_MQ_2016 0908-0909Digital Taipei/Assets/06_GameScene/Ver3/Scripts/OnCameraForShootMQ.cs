using UnityEngine;
using System.Collections;
using UnityEngine.UI;
public class OnCameraForShootMQ : MonoBehaviour
{
    public GameObject[] myFirePoint;
    public GameObject[] myBullet;
    public int myTeamBTNClick;
    float myTimer;
    public Text MQCount;
    public int myHowManyMQOnScene;
    public Text winlose;
    public Text youlose;
    //-----------------
    public int myABulletCount;
    public int myBBulletCount;
    public int myCBulletCount;
    public int myDBulletCount;
    public int myEBulletCount;
    public GameObject Text_myTeamAAmount;
    public GameObject Text_myTeamBAmount;
    public GameObject Text_myTeamCAmount;
    public GameObject Text_myTeamDAmount;
    public GameObject Text_myTeamEAmount;
    //---------------
    public bool[] myWhichTeam;
    public float myBTNHoldTimer;
    public bool[] isTeamSkillCD;
    public float[] isTeamSkillCDTimer;
    public float[] isTeamSkillCdTime;
    public GameObject[] myCDBlack;
    /* public int myTeamABTNMod;
     public int myTeamBBTNMod;
     public int myTeamCBTNMod;
     public int myTeamDBTNMod;
     public int myTeamEBTNMod;*/

    //-----------
    public bool isSuperStarTime;
    float isSuperStarTimer;

    public bool[] isTeamSkillReady;
    public GameObject[] mySkillBTN;
    public GameObject[] myskillUI;
    public AudioClip[] mySoundEffectData;
    public AudioSource myAudioSource;

    //-----auto fire
    public bool isAutoFire;
    public float myAutoFireTime;
    public float myAutoFireTimer;
    public int myAutoFireRandom;
    public GameObject myBasicMQ;
    void Start()
    {
        myAudioSource = gameObject.GetComponent<AudioSource>();
        winlose = GameObject.Find("winlose").GetComponent<Text>();
        winlose.gameObject.SetActive(false);
        youlose = GameObject.Find("youlose").GetComponent<Text>();
        youlose.gameObject.SetActive(false);
        for (int a = 0; a < myCDBlack.Length; a++)
        {
            myCDBlack[a].GetComponent<Image>().fillAmount = 1;
            //mySkillBTN[a].SetActive(false);
        }
    }

    // Update is called once per frame
    void Update()
    {
        
        if (isSuperStarTime)
        {
            if (isSuperStarTimer >= 5)
            {
                isSuperStarTimer = 0;
                isSuperStarTime = false;
            }
            else {
                isSuperStarTimer += Time.deltaTime;
            }
        }


        MQCount.text = "場上蚊子數量：" + myHowManyMQOnScene.ToString();
        if (gameObject.GetComponent<onMainCameraVer2>().isNeedToFollow)
        {
            if (myABulletCount == 0 && myBBulletCount == 0 && myCBulletCount == 0 && myDBulletCount == 0 && myEBulletCount == 0 && myHowManyMQOnScene == 0)
            {
                youlose.gameObject.SetActive(true);
                print("all MQ is over so you are lose!!!!!!!!!!");
            }
        }
        if (GameObject.Find("Canvas").GetComponent<onCanvasForUIControll>().isGameStart) {
            if (myAutoFireTimer > myAutoFireTime) {
                myAutoCreatMQ();
                myAutoFireTimer = 0;
            }
            else {
                myAutoFireTimer += Time.deltaTime;
            }
        }

        
        //PlayerFunction();
        //CheckIsWin();
        
        myCheckIsWhichTeam();
        myTeamCDController();
        myAmountUpdate();//看看各隊伍剩下多少蚊子
        mySkillCheck();//看看各隊伍有多少蚊子
    }
    //生蚊子的韓式
    public int a;
    public void myAutoCreatMQ()
    {
                a = Random.Range(0, 14);
                Instantiate(myBasicMQ, myFirePoint[a].transform.position, Quaternion.identity);//生蚊子
                
    }
    public void myCreatAMQ()
    {
        if (myABulletCount > 0)
        {
            myTimer += Time.deltaTime;
            if (myTimer >= 0.1)
            {
                myTimer = 0;
                a = Random.Range(0, 14);
                Instantiate(myBullet[myTeamBTNClick - 1], myFirePoint[a].transform.position, Quaternion.identity);//生蚊子
                //Instantiate(myBullet[0], myFirePoint[a].transform.position, Quaternion.identity);//生蚊子
                myHowManyMQOnScene++;//數蚊子
                myABulletCount--;

            }
        }
        else { print("沒MQ...."); }
    }
    public void myCreatBMQ()
    {
        if (myBBulletCount > 0)
        {
            myTimer += Time.deltaTime;
            if (myTimer >= 0.1)
            {
                myTimer = 0;
                /*Vector3 a = myFirePoint.transform.forward;
                a.y = Random.Range(myFirePoint.transform.position.y - 5, myFirePoint.transform.position.y + 5);
                a.x = Random.Range(myFirePoint.transform.position.x - 5, myFirePoint.transform.position.x + 5);*/
                int a = Random.Range(0, 6);
                Instantiate(myBullet[myTeamBTNClick - 1], myFirePoint[a].transform.position, Quaternion.identity);//生蚊子
                myHowManyMQOnScene++;//數蚊子
                myBBulletCount--;
            }
        }
        else { print("沒MQ...."); }
    }
    public void myCreatCMQ()
    {
        if (myCBulletCount > 0)
        {
            myTimer += Time.deltaTime;
            if (myTimer >= 0.1)
            {
                myTimer = 0;
                /* Vector3 a = myFirePoint.transform.forward;
                 a.y = Random.Range(myFirePoint.transform.position.y - 5, myFirePoint.transform.position.y + 5);
                 a.x = Random.Range(myFirePoint.transform.position.x - 5, myFirePoint.transform.position.x + 5);*/
                int a = Random.Range(0, 6);
                Instantiate(myBullet[myTeamBTNClick - 1], myFirePoint[a].transform.position, Quaternion.identity);//生蚊子
                myHowManyMQOnScene++;//數蚊子
                myCBulletCount--;
            }
        }
        else { print("沒MQ...."); }
    }
    public void myCreatDMQ()
    {
        if (myDBulletCount > 0)
        {
            myTimer += Time.deltaTime;
            if (myTimer >= 0.1)
            {
                myTimer = 0;
                /*Vector3 a = myFirePoint.transform.forward;
                a.y = Random.Range(myFirePoint.transform.position.y - 5, myFirePoint.transform.position.y + 5);
                a.x = Random.Range(myFirePoint.transform.position.x - 5, myFirePoint.transform.position.x + 5);*/
                int a = Random.Range(0, 6);
                Instantiate(myBullet[myTeamBTNClick - 1],myFirePoint[a].transform.position , Quaternion.identity);//生蚊子
                myHowManyMQOnScene++;//數蚊子
                myDBulletCount--;
            }
        }
        else { print("沒MQ...."); }
    }
    public void myCreatEMQ()
    {
        if (myEBulletCount > 0)
        {
            myTimer += Time.deltaTime;
            if (myTimer >= 0.1)
            {
                myTimer = 0;
                /*Vector3 a = myFirePoint.transform.forward;
                a.y = Random.Range(myFirePoint.transform.position.y - 5, myFirePoint.transform.position.y + 5);
                a.x = Random.Range(myFirePoint.transform.position.x - 5, myFirePoint.transform.position.x + 5);*/
                int a = Random.Range(0, 6);
                Instantiate(myBullet[myTeamBTNClick - 1], myFirePoint[a].transform.position, Quaternion.identity);//生蚊子
                myHowManyMQOnScene++;//數蚊子
                myEBulletCount--;
            }
        }
        else { print("沒MQ...."); }
    }
    //檢查輸贏
    public void CheckIsWin()
    {
        /*   bool a = GameObject.Find("lookatPointA").GetComponent<OnLookAtPoint>().isGG;
           bool b = GameObject.Find("lookatPointB").GetComponent<OnLookAtPoint>().isGG;
           bool c = GameObject.Find("lookatPointC").GetComponent<OnLookAtPoint>().isGG;
           if (a == true && b == true && c == true) {
               //print("win");
               
           }*/
        winlose.gameObject.SetActive(true);
        //winlose.text = "You win"+ "/n"+ "Thanks for Playing";
    }
    public void BTN_TeamADown() { myWhichTeam[0] = true; myTeamBTNClick = 1; }
    public void BTN_TeamBDown() { myWhichTeam[1] = true; myTeamBTNClick = 2; }
    public void BTN_TeamCDown() { myWhichTeam[2] = true; myTeamBTNClick = 3; }
    public void BTN_TeamDDown() { myWhichTeam[3] = true; myTeamBTNClick = 4; }
    public void BTN_TeamEDown() { myWhichTeam[4] = true; myTeamBTNClick = 5; }
    public void BTN_TeamAUp()
    {
        if (isTeamSkillCD[0]) { }
        else {
            myWhichTeam[0] = false;
            /* if (myBTNHoldTimer < 0.2)
             {
                 myTeamASkill();
                 myBTNHoldTimer = 0;
             }
             else { myBTNHoldTimer = 0; }*/
        }
    }
    public void BTN_TeamBUp()
    {
        if (isTeamSkillCD[1]) { }
        else {
            myWhichTeam[1] = false;
            /* if (myBTNHoldTimer < 0.2)
             {
                 myTeamBSkill();
                 myBTNHoldTimer = 0;
             }
             else { myBTNHoldTimer = 0; }*/
        }
    }
    public void BTN_TeamCUp()
    {
        if (isTeamSkillCD[2]) { }
        else {
            myWhichTeam[2] = false;
            /*   if (myBTNHoldTimer < 0.2)
               {
                   myTeamCSkill();
                   myBTNHoldTimer = 0;
               }
               else { myBTNHoldTimer = 0; }*/
        }
    }
    public void BTN_TeamDUp()
    {
        if (isTeamSkillCD[3]) { }
        else {
            myWhichTeam[3] = false;
            /* if (myBTNHoldTimer < 0.2)
             {
                 myTeamDSkill();
                 myBTNHoldTimer = 0;
             }
             else { myBTNHoldTimer = 0; }*/
        }
    }
    public void BTN_TeamEUp()
    {
        if (isTeamSkillCD[4]) { }
        else {
            myWhichTeam[4] = false;
            /* if (myBTNHoldTimer < 0.2)
             {
                 myTeamESkill();
                 myBTNHoldTimer = 0;
             }
             else { myBTNHoldTimer = 0; }*/
        }
    }

    public void myCheckIsWhichTeam()
    {
        if (myWhichTeam[0])
        {
            myBTNHoldTimer += Time.deltaTime;
            if (myBTNHoldTimer > 0.3) { myCreatAMQ(); }
        }
        if (myWhichTeam[1])
        {
            myBTNHoldTimer += Time.deltaTime;
            if (myBTNHoldTimer > 0.3) { myCreatBMQ(); }
        }
        if (myWhichTeam[2])
        {
            myBTNHoldTimer += Time.deltaTime;
            if (myBTNHoldTimer > 0.3) { myCreatCMQ(); }
        }
        if (myWhichTeam[3])
        {
            myBTNHoldTimer += Time.deltaTime;
            if (myBTNHoldTimer > 0.3) { myCreatDMQ(); }
        }
        if (myWhichTeam[4])
        {
            myBTNHoldTimer += Time.deltaTime;
            if (myBTNHoldTimer > 0.3) { myCreatEMQ(); }
        }
    }
    //放技能
    //public GameObject[] MQ;
    public void mySkillCheck()
    {
        if (!isTeamSkillCD[0]) myASkillCheck();
        if (!isTeamSkillCD[1]) myBSkillCheck();
        if (!isTeamSkillCD[2]) myCSkillCheck();
        if (!isTeamSkillCD[3]) myDSkillCheck();
        if (!isTeamSkillCD[4]) myESkillCheck();
    }
    public void myASkillCheck()
    {
        GameObject[] MQA = GameObject.FindGameObjectsWithTag("MQA");
        if (MQA.Length > 29)
        {
            isTeamSkillReady[0] = true;
            myCDBlack[0].GetComponent<Image>().fillAmount = 0;
            myCDBlack[0].GetComponent<Image>().raycastTarget = false;
            //mySkillBTN[0].SetActive(true);
        }
    }
    public void myBSkillCheck()
    {
        GameObject[] MQB = GameObject.FindGameObjectsWithTag("MQB");
        if (MQB != null && MQB.Length > 19)
        {
            isTeamSkillReady[1] = true;
            myCDBlack[1].GetComponent<Image>().fillAmount = 0;
            myCDBlack[1].GetComponent<Image>().raycastTarget = false;
        }
    }
    public void myCSkillCheck()
    {
        GameObject[] MQC = GameObject.FindGameObjectsWithTag("MQC");
        if (MQC != null && MQC.Length > 19)
        {
            isTeamSkillReady[2] = true;
            myCDBlack[2].GetComponent<Image>().fillAmount = 0;
            myCDBlack[2].GetComponent<Image>().raycastTarget = false;
        }
    }
    public void myDSkillCheck()
    {
        GameObject[] MQD = GameObject.FindGameObjectsWithTag("MQD");
        if (MQD != null && MQD.Length > 19)
        {
            isTeamSkillReady[3] = true;
            myCDBlack[3].GetComponent<Image>().fillAmount = 0;
            myCDBlack[3].GetComponent<Image>().raycastTarget = false;
        }
    }
    public void myESkillCheck()
    {
        GameObject[] MQE = GameObject.FindGameObjectsWithTag("MQE");
        if (MQE != null && MQE.Length > 19)
        {
            isTeamSkillReady[4] = true;
            myCDBlack[4].GetComponent<Image>().fillAmount = 0;
            myCDBlack[4].GetComponent<Image>().raycastTarget = false;
        }
    }
    public void myTeamASkill()
    {
        /*myAudioSource.clip = mySoundEffectData[0];
        myAudioSource.enabled = false;
        myAudioSource.enabled = true;*/
        print("team a be call");
        isTeamSkillCD[0] = true;
        isSuperStarTime = true;
        isTeamSkillReady[0] = false;
        myCDBlack[0].GetComponent<Image>().fillAmount = 1;
        //mySkillBTN[0].SetActive(false);

        GameObject[] MQ = GameObject.FindGameObjectsWithTag("MQ");
        GameObject UI =  Instantiate(myskillUI[0], transform.position, Quaternion.identity) as GameObject;
        UI.transform.parent = GameObject.Find("Canvas").transform;
        UI.GetComponent<RectTransform>().anchoredPosition = Vector2.zero;
        //if (MQ != null) {
        for (int a = 0; a < MQ.Length; a++)
        {
            print("發動技能-無敵星星3秒鐘");
            //MQ[a].GetComponent<onMQVer3>().SendMessage("myMQSkill");
            MQ[a].GetComponent<onMQVer3>().isSuperStarTime = true;
        }//*/

    }
    public void myTeamBSkill()
    {
       /* myAudioSource.clip = mySoundEffectData[1];
        myAudioSource.enabled = false;
        myAudioSource.enabled = true;*/

        isTeamSkillCD[1] = true;
        isTeamSkillReady[1] = false;
        myCDBlack[1].GetComponent<Image>().fillAmount = 1;
        //   mySkillBTN[1].SetActive(false);
        GameObject[] MQ = GameObject.FindGameObjectsWithTag("MQ");
        GameObject UI = Instantiate(myskillUI[1], transform.position, Quaternion.identity) as GameObject;
        UI.transform.parent = GameObject.Find("Canvas").transform;
        UI.GetComponent<RectTransform>().anchoredPosition = Vector2.zero;
        for (int a = 0; a < MQ.Length; a++)
        {
            print("發動技能-我的血又變滿囉！");
            //MQ[a].GetComponent<onMQVer3>().SendMessage("myMQSkill");
            MQ[a].GetComponent<onMQVer3>().myHP = MQ[a].GetComponent<onMQVer3>().myFullHP;
        }

    }
    public void myTeamCSkill()
    {
        /*myAudioSource.clip = mySoundEffectData[2];
        myAudioSource.enabled = false;
        myAudioSource.enabled = true;*/

        isTeamSkillCD[2] = true;
        isTeamSkillReady[2] = false;
        myCDBlack[2].GetComponent<Image>().fillAmount = 1;
        // mySkillBTN[2].SetActive(false);
        print("發動技能-5倍的傷害");
        GameObject[] MQ = GameObject.FindGameObjectsWithTag("MQ");
        GameObject UI = Instantiate(myskillUI[2], transform.position, Quaternion.identity) as GameObject;
        UI.transform.parent = GameObject.Find("Canvas").transform;
        UI.GetComponent<RectTransform>().anchoredPosition = Vector2.zero;
        for (int a = 0; a < MQ.Length; a++) { MQ[a].GetComponent<onMQVer3>().myAttack = MQ[a].GetComponent<onMQVer3>().myAttack * 5; }

    }
    public void myTeamDSkill()
    {
      /*  myAudioSource.clip = mySoundEffectData[3];
        myAudioSource.enabled = false;
        myAudioSource.enabled = true;*/

        isTeamSkillCD[3] = true;
        isTeamSkillReady[3] = false;
        myCDBlack[3].GetComponent<Image>().fillAmount = 1;
        //mySkillBTN[3].SetActive(false);
        print("發動技能-公訴加倍");
        GameObject[] MQ = GameObject.FindGameObjectsWithTag("MQ");
        GameObject UI = Instantiate(myskillUI[3], transform.position, Quaternion.identity) as GameObject;
        UI.transform.parent = GameObject.Find("Canvas").transform;
        UI.GetComponent<RectTransform>().anchoredPosition = Vector2.zero;
        for (int a = 0; a < MQ.Length; a++) { MQ[a].GetComponent<onMQVer3>().myAttackTimerTarget = (int)MQ[a].GetComponent<onMQVer3>().myAttackTimerTarget * 0.5f; }

    }
    public void myTeamESkill()
    {
      /*  myAudioSource.clip = mySoundEffectData[4];
        myAudioSource.enabled = false;
        myAudioSource.enabled = true;*/

        isTeamSkillCD[4] = true;
        isTeamSkillReady[4] = false;
        myCDBlack[4].GetComponent<Image>().fillAmount = 1;
        //mySkillBTN[4].SetActive(false);
        print("發動技能-爆告加倍");
        GameObject[] MQ = GameObject.FindGameObjectsWithTag("MQ");
        GameObject UI = Instantiate(myskillUI[4], transform.position, Quaternion.identity) as GameObject;
        UI.transform.parent = GameObject.Find("Canvas").transform;
        UI.GetComponent<RectTransform>().anchoredPosition = Vector2.zero;
        for (int a = 0; a < MQ.Length; a++) { MQ[a].GetComponent<onMQVer3>().myCritHit = (int)MQ[a].GetComponent<onMQVer3>().myCritHit * 2; }

    }
    //技能CD
    public void myTeamCDController()
    {
        if (isTeamSkillCD[0])
        {
            if (isTeamSkillCDTimer[0] > isTeamSkillCdTime[0])//cd秒數
            {
                myCDBlack[0].GetComponent<Image>().fillAmount = 0;
                isTeamSkillCDTimer[0] = 0;
                isTeamSkillCD[0] = false;
                mySkillBTN[0].GetComponent<Image>().raycastTarget = true;
            }
            else {
                myCDBlack[0].GetComponent<Image>().raycastTarget = true;
                mySkillBTN[0].GetComponent<Image>().raycastTarget = false;
                myCDBlack[0].GetComponent<Image>().fillAmount =(isTeamSkillCDTimer[0]/ isTeamSkillCdTime[0]);
                isTeamSkillCDTimer[0] += Time.deltaTime;
            }
        }
        if (isTeamSkillCD[1])
        {
            if (isTeamSkillCDTimer[1] > isTeamSkillCdTime[1])
            {
                //myCDBlack[1].SetActive(false);
                myCDBlack[1].GetComponent<Image>().fillAmount = 0;
                isTeamSkillCDTimer[1] = 0;
                isTeamSkillCD[1] = false;
            }
            else {
                //myCDBlack[1].SetActive(true);
                myCDBlack[1].GetComponent<Image>().raycastTarget = true;
                myCDBlack[1].GetComponent<Image>().fillAmount = (isTeamSkillCDTimer[1] / isTeamSkillCdTime[1]);
                isTeamSkillCDTimer[1] += Time.deltaTime;
            }
        }
        if (isTeamSkillCD[2])
        {
            if (isTeamSkillCDTimer[2] > isTeamSkillCdTime[2])
            {
                //myCDBlack[2].SetActive(false);
                myCDBlack[2].GetComponent<Image>().fillAmount = 0;
                isTeamSkillCDTimer[2] = 0;
                isTeamSkillCD[2] = false;
            }
            else {
                //myCDBlack[2].SetActive(true);
                myCDBlack[2].GetComponent<Image>().raycastTarget = true;
                myCDBlack[2].GetComponent<Image>().fillAmount = (isTeamSkillCDTimer[2] / isTeamSkillCdTime[2]);
                isTeamSkillCDTimer[2] += Time.deltaTime;
            }
        }
        if (isTeamSkillCD[3])
        {
            if (isTeamSkillCDTimer[3] > isTeamSkillCdTime[3])
            {
                //myCDBlack[3].SetActive(false);
                myCDBlack[3].GetComponent<Image>().fillAmount = 0;
                isTeamSkillCDTimer[3] = 0;
                isTeamSkillCD[3] = false;
            }
            else {
                //myCDBlack[3].SetActive(true);
                myCDBlack[3].GetComponent<Image>().raycastTarget = true;
                myCDBlack[3].GetComponent<Image>().fillAmount = (isTeamSkillCDTimer[3] / isTeamSkillCdTime[3]);
                isTeamSkillCDTimer[3] += Time.deltaTime;
            }
        }
        if (isTeamSkillCD[4])
        {
            if (isTeamSkillCDTimer[4] > isTeamSkillCdTime[4])
            {
                //myCDBlack[4].SetActive(false);
                myCDBlack[4].GetComponent<Image>().fillAmount = 0;
                isTeamSkillCDTimer[4] = 0;
                isTeamSkillCD[4] = false;
            }
            else {
                //myCDBlack[4].SetActive(true);
                myCDBlack[4].GetComponent<Image>().raycastTarget = true;
                myCDBlack[4].GetComponent<Image>().fillAmount = (isTeamSkillCDTimer[4] / isTeamSkillCdTime[4]);
                isTeamSkillCDTimer[4] += Time.deltaTime;
            }
        }
    }
    public void myAmountUpdate()
    {
        /* Text_myTeamAAmount.text = myABulletCount.ToString();//TeamAAmount.ToString();
         Text_myTeamBAmount.text = myBBulletCount.ToString();
         Text_myTeamCAmount.text = myCBulletCount.ToString();
         Text_myTeamDAmount.text = myDBulletCount.ToString();
         Text_myTeamEAmount.text = myEBulletCount.ToString();*/
      
        for (int a = 0; a < 10; a++)
        {
            if (myABulletCount.ToString().Substring(0, 1) == a.ToString()) { Text_myTeamAAmount.GetComponent<onAmount_UI>().myAmountString[0].GetComponent<Image>().sprite = Text_myTeamAAmount.GetComponent<onAmount_UI>().myNumSprite[a]; }
            if (myABulletCount.ToString().Substring(1, 1) == a.ToString()) { Text_myTeamAAmount.GetComponent<onAmount_UI>().myAmountString[1].GetComponent<Image>().sprite = Text_myTeamAAmount.GetComponent<onAmount_UI>().myNumSprite[a]; }
            if (myABulletCount.ToString().Substring(2, 1) == a.ToString()) { Text_myTeamAAmount.GetComponent<onAmount_UI>().myAmountString[2].GetComponent<Image>().sprite = Text_myTeamAAmount.GetComponent<onAmount_UI>().myNumSprite[a]; }
            if (myBBulletCount.ToString().Substring(0, 1) == a.ToString()) { Text_myTeamBAmount.GetComponent<onAmount_UI>().myAmountString[0].GetComponent<Image>().sprite = Text_myTeamBAmount.GetComponent<onAmount_UI>().myNumSprite[a]; }
            if (myBBulletCount.ToString().Substring(1, 1) == a.ToString()) { Text_myTeamBAmount.GetComponent<onAmount_UI>().myAmountString[1].GetComponent<Image>().sprite = Text_myTeamBAmount.GetComponent<onAmount_UI>().myNumSprite[a]; }
            if (myBBulletCount.ToString().Substring(2, 1) == a.ToString()) { Text_myTeamBAmount.GetComponent<onAmount_UI>().myAmountString[2].GetComponent<Image>().sprite = Text_myTeamBAmount.GetComponent<onAmount_UI>().myNumSprite[a]; }
            if (myCBulletCount.ToString().Substring(0, 1) == a.ToString()) { Text_myTeamCAmount.GetComponent<onAmount_UI>().myAmountString[0].GetComponent<Image>().sprite = Text_myTeamCAmount.GetComponent<onAmount_UI>().myNumSprite[a]; }
            if (myCBulletCount.ToString().Substring(1, 1) == a.ToString()) { Text_myTeamCAmount.GetComponent<onAmount_UI>().myAmountString[1].GetComponent<Image>().sprite = Text_myTeamCAmount.GetComponent<onAmount_UI>().myNumSprite[a]; }
            if (myCBulletCount.ToString().Substring(2, 1) == a.ToString()) { Text_myTeamCAmount.GetComponent<onAmount_UI>().myAmountString[2].GetComponent<Image>().sprite = Text_myTeamCAmount.GetComponent<onAmount_UI>().myNumSprite[a]; }
            if (myDBulletCount.ToString().Substring(0, 1) == a.ToString()) { Text_myTeamDAmount.GetComponent<onAmount_UI>().myAmountString[0].GetComponent<Image>().sprite = Text_myTeamDAmount.GetComponent<onAmount_UI>().myNumSprite[a]; }
            if (myDBulletCount.ToString().Substring(1, 1) == a.ToString()) { Text_myTeamDAmount.GetComponent<onAmount_UI>().myAmountString[1].GetComponent<Image>().sprite = Text_myTeamDAmount.GetComponent<onAmount_UI>().myNumSprite[a]; }
            if (myDBulletCount.ToString().Substring(2, 1) == a.ToString()) { Text_myTeamDAmount.GetComponent<onAmount_UI>().myAmountString[2].GetComponent<Image>().sprite = Text_myTeamDAmount.GetComponent<onAmount_UI>().myNumSprite[a]; }
            if (myEBulletCount.ToString().Substring(0, 1) == a.ToString()) { Text_myTeamEAmount.GetComponent<onAmount_UI>().myAmountString[0].GetComponent<Image>().sprite = Text_myTeamEAmount.GetComponent<onAmount_UI>().myNumSprite[a]; }
            if (myEBulletCount.ToString().Substring(1, 1) == a.ToString()) { Text_myTeamEAmount.GetComponent<onAmount_UI>().myAmountString[1].GetComponent<Image>().sprite = Text_myTeamEAmount.GetComponent<onAmount_UI>().myNumSprite[a]; }
            if (myEBulletCount.ToString().Substring(2, 1) == a.ToString()) { Text_myTeamEAmount.GetComponent<onAmount_UI>().myAmountString[2].GetComponent<Image>().sprite = Text_myTeamEAmount.GetComponent<onAmount_UI>().myNumSprite[a]; }
        }
    }
}
