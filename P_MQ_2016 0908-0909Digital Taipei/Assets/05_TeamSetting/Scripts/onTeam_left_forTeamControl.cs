using UnityEngine;
using System.Collections;
using UnityEngine.UI;
public class onTeam_left_forTeamControl : MonoBehaviour {
    public static GameObject whichTeamIPickUp;
    public GameObject look_whichTeamIPickUp;
    public static GameObject whichCharacterPickUp;
    public GameObject look_whichCharacterPickUp;

    public static GameObject myTeamLibrary;
    public static GameObject myInformation;
    public static GameObject myValueSetting;
    public static GameObject myInformationImage;
    public static GameObject myCharacterTurnBack;
    public GameObject lookmyCharacterTurnBack;
    public static bool myLetyoufocus = false;
   
    #region Information-資訊列表
    public  GameObject txt_myname;            //名子
    public  GameObject txt_myblood;           //血量
    public  GameObject txt_myhurt;            //傷害
    public  GameObject txt_mymovespeed;       //移動速度
    public  GameObject txt_myattackspeed;     //攻擊速度
    public  GameObject txt_mysurprise;
    public  GameObject txt_mysurprisehurt;
    public  GameObject txt_myamount;          //出戰數量
    #endregion    
    #region Information-資訊列表
    public static float float_myblood;              //血量
    public static float float_myMinblood;           //最小血量
    public static float float_myMaxblood;           //最大血量
    public static float float_mybloodAMP;           //血量增幅

    public static float float_myhurt;               //傷害
    public static float float_myMinhurt;            //最小傷害
    public static float float_myMaxhurt;            //最大傷害
    public static float float_myhurtAMP;            //傷害增幅

    public static float float_mymovespeed;          //移動速度
    public static float float_myMinmovespeed;       //最小移動速度
    public static float float_myMaxmovespeed;       //最大移動速度
    public static float float_mymovespeedAMP;       //移動速度增幅

    public static float float_myattackspeed;        //攻擊速度
    public static float float_myMinattackspeed;     //最小攻擊速度
    public static float float_myMaxattackspeed;     //最大攻擊速度
    public static float float_myattackspeedAMP;     //攻擊速度增幅

    public static float float_mysurprise;           //爆擊機率
    public static float float_mysurprisehurt;       //爆擊加成

    public static int int_myamount;                 //出戰數量
    public static int int_myMaxAmount;              //最大出戰數量
    public static int int_myamountAMP;              //出戰數量加成
    #endregion

    #region ValueSetting-數值設定
    public GameObject ValueSetting_myTitle_Texture;
    public GameObject ValueSetting_myTitle_text;
    public GameObject ValueSetting_myTitleValueNum_text;
    public GameObject ValueSetting_mySlider;
    public GameObject ValueSetting_myMine_texture;
    public GameObject ValueSetting_myMine_text;
    #endregion

    [System.Serializable]
    public struct MineSpritestuff
    {
        public Sprite MineA;
        public Sprite MineB;
        public Sprite MineC;
        public Sprite MineD;
        public Sprite Coin;
    }
    public MineSpritestuff myMineSprite;



    #region 隊伍設定準備灌值到PlayerPrefs 
    [System.Serializable]
    public struct TeamSetting{
        
        public string myName;
        public string myNickName;
        public float myHP;
        public float myAttack;
        public float myMoveSpeed;
        public float myAttackspeed;
        public float mySuprise;
        public float mySupriseadd;
        public int myAmount;
    }
    #endregion
    public TeamSetting TeamA, TeamB, TeamC, TeamD,TeamE;
    public Sprite myNothing;
    public static bool st_myInformation;
    public static float myAMPforCount;
    public static int myWunzLevel=0;
    [System.Serializable]
    public struct levelstuff {
        public int myHPLevel;//血等級
        public int myHPCost;
        public int myATLevel;//傷等級
        public int myATCost;
        public int mySPLevel;//速等級
        public int mySPCost;
        public int myASLevel;//傷速等級
        public int myASCost;
        public int myAmountCount;
        public int myCoinCost;
    }
    public levelstuff TeamAskilllevel, TeamBskilllevel, TeamCskilllevel, TeamDskilllevel, TeamEskilllevel;
    public int mySkillLevel;
    public int myMineCount;
    public static int myforsettingMOD = 0;//1血 2傷 3跑速 4攻速

    // Use this for initialization
    void Start () {
        
        myTeamLibrary = GameObject.Find("TeamLibrary");
        myInformation = GameObject.Find("Information");
        myValueSetting = GameObject.Find("ValueSetting");
        myInformationImage = GameObject.Find("myInformationImage");
        //------------------
        txt_myname = GameObject.Find("myName");
        txt_myblood = GameObject.Find("myBloodValue_Text");
        txt_myhurt = GameObject.Find("myHurtValue_Text");
        txt_mymovespeed = GameObject.Find("mySpeedValue_Text");
        txt_myattackspeed = GameObject.Find("myAttackSpeedValue_Text");
        txt_mysurprise = GameObject.Find("mySurprise%_Text");
        txt_mysurprisehurt = GameObject.Find("mySurpriseHurtValue_Text");
        txt_myamount = GameObject.Find("myAmountValue_Text");
        //--------------
        ValueSetting_myTitle_Texture = GameObject.Find("TitleImage");
        ValueSetting_myTitle_text = GameObject.Find("Title");
        ValueSetting_myTitleValueNum_text = GameObject.Find("myValueNumber");
        ValueSetting_mySlider = GameObject.Find("Slider");
        ValueSetting_myMine_texture = GameObject.Find("NeedImage");
        ValueSetting_myMine_text = GameObject.Find("myCoinNumber");

        forCheckOldTeamSettingData();

        myInformation.SetActive(false);
        st_myInformation = false;
        myValueSetting.SetActive(false);

        //GameObject a =  
        GameObject.Find("teamA").GetComponentInChildren<onInTeam_forTeamPickUp>().awakereset();
        GameObject.Find("teamB").GetComponentInChildren<onInTeam_forTeamPickUp>().awakereset();
        GameObject.Find("teamC").GetComponentInChildren<onInTeam_forTeamPickUp>().awakereset();
        GameObject.Find("teamD").GetComponentInChildren<onInTeam_forTeamPickUp>().awakereset();
        GameObject.Find("teamE").GetComponentInChildren<onInTeam_forTeamPickUp>().awakereset();
        

    }
    public void forCheckOldTeamSettingData() {
        print("TeamASetting = " + PlayerPrefs.GetInt("TeamASetting"));
        if (PlayerPrefs.GetInt("TeamASetting") == 1) {
            print("getteamAdata() be call");
            GetTeamAData();
        }
        if (PlayerPrefs.GetInt("TeamBSetting") == 1) { GetTeamBData(); }
        if (PlayerPrefs.GetInt("TeamCSetting") == 1) { GetTeamCData(); }
        if (PlayerPrefs.GetInt("TeamDSetting") == 1) { GetTeamDData(); }
        if (PlayerPrefs.GetInt("TeamESetting") == 1) { GetTeamEData(); }
    }
    // Update is called once per frame
    void Update () {
        if (Input.GetKeyUp("r")) {
            print("click R for reset");
            PlayerPrefs.DeleteAll();
        }
        look_whichTeamIPickUp = whichTeamIPickUp;//偷看我選到哪個隊伍
        look_whichCharacterPickUp = whichCharacterPickUp;//偷看我選到哪隻蚊子
        lookmyCharacterTurnBack = myCharacterTurnBack;
        if (st_myInformation)
        {
            txt_myblood.GetComponent<Text>().text = float_myblood.ToString();
            txt_myhurt.GetComponent<Text>().text = float_myhurt.ToString();
            txt_myattackspeed.GetComponent<Text>().text = float_myattackspeed.ToString();
            txt_mymovespeed.GetComponent<Text>().text = float_mymovespeed.ToString() + "％";
            txt_mysurprise.GetComponent<Text>().text = float_mysurprise.ToString() + "％";
            txt_mysurprisehurt.GetComponent<Text>().text = float_mysurprisehurt.ToString()+"％";
            txt_myamount.GetComponent<Text>().text = int_myamount.ToString();
        }
        else
        {
        }
    }
    public static void myReset()//在一次進入隊伍設定
    {
        print("static void myReset() be call");
        if (!whichCharacterPickUp) { }
        else {
            if (whichCharacterPickUp.name.Substring(whichCharacterPickUp.name.Length - 1) == "X") {//該品種已經被挑選過了
                whichCharacterPickUp = null;
                print("whichCharacterPickUp = null;");
                myInformation.SetActive(false);
                myTeamLibrary.SetActive(true);
            }
            else {
                // whichCharacterPickUp.GetComponent<Image>().color = Color.white;
                whichCharacterPickUp = null;
                print("whichCharacterPickUp = null;");
                //whichTeamIPickUp.GetComponent<Image>().sprite = onInTeam_forTeamPickUp.mySTNothingSprite;
                myInformation.SetActive(false);
                myTeamLibrary.SetActive(true);
            }
            
        }
        
    }
    
    public void myReset_forButton()
    {
        myLetyoufocus = false;
        //如果隊伍名稱后面為「F」表是設定完成
        //設定完成的「解除」與未設定完成的「解除」要做的事情不一樣
        //要做的事情比較多
        if (whichTeamIPickUp.name.Substring(whichTeamIPickUp.name.Length - 1) == "F") {
            forteamreset();
            whichTeamIPickUp.name = whichTeamIPickUp.name.Substring(0, 7) + "N";//隊伍名字後面「+N」表示這個隊伍是空的
            lookmyCharacterTurnBack.name = lookmyCharacterTurnBack.name.Substring(0, 6) + "O";//角色名子後面「+O」表示這個角色灰復程可以選擇的模式了
            lookmyCharacterTurnBack.GetComponent<Image>().color = Color.white;//被選擇後會變成灰色，沒有選了就要把它改回來
            whichTeamIPickUp.GetComponent<Image>().sprite = myNothing;//隊伍選擇要清空，讓它看起來沒有東西
            whichCharacterPickUp = null;//沒有設定角色了
            print("whichCharacterPickUp = null;");
            myValueSetting.SetActive(false);
            myInformation.SetActive(false);
            myTeamLibrary.SetActive(true);
        }
        else {
            forteamreset();
            print("whichTeamIPickUp.name.Substring(0, 7) = "+ whichTeamIPickUp.name.Substring(0, 7));
            whichCharacterPickUp.GetComponent<Image>().color = Color.white;
            whichTeamIPickUp.GetComponent<Image>().sprite = myNothing;
            whichCharacterPickUp = null;
            print("whichCharacterPickUp = null;");

            myValueSetting.SetActive(false);
            myInformation.SetActive(false);
            myTeamLibrary.SetActive(true);
        }
    }
    public void forteamreset() {
        switch (whichTeamIPickUp.name.Substring(0, 7))
        {
            case "inTeam1":
                PlayerPrefs.SetInt("TeamASetting", 0);//0=未設定 1=設定完成
                break;
            case "inTeam2":
                PlayerPrefs.SetInt("TeamBSetting", 0);
                break;
            case "inTeam3":
                PlayerPrefs.SetInt("TeamCSetting", 0);
                break;
            case "inTeam4":
                PlayerPrefs.SetInt("TeamDSetting", 0);
                break;
            case "inTeam5":
                PlayerPrefs.SetInt("TeamESetting", 0);
                break;
        }
    }
    public void mySettingFinish() {
        myLetyoufocus = false;
        whichCharacterPickUp.name = whichCharacterPickUp.name.Substring(0,6) + "X";
        PlayerPrefs.SetString(whichTeamIPickUp.name, whichCharacterPickUp.name);
        print("隊伍" + whichTeamIPickUp.name + "所設定的角色為" + whichCharacterPickUp.name);
        whichTeamIPickUp.name = whichTeamIPickUp.name.Substring(0,7) + "F";//名字後面+F表示finish完成設定
        whichTeamIPickUp.transform.GetChild(0).GetComponentInChildren<Image>().color = Color.clear;
        switch (whichTeamIPickUp.name.Substring(0, 7)) {
            case "inTeam1":
                myTeamASendMessage();
                break;
            case "inTeam2":
                myTeamBSendMessage();
                break;
            case "inTeam3":
                myTeamCSendMessage();
                break;
            case "inTeam4":
                myTeamDSendMessage();
                break;
            case "inTeam5":
                myTeamESendMessage();
                break;
        }
        whichTeamIPickUp = null;
        myInformation.SetActive(false);
        st_myInformation = false;
        myTeamLibrary.SetActive(true);
        
    }
    public void myBloodSettingButton() {//血量
        forSetBTN(1, true, "血量：", myMineSprite.MineA, myMineCount.ToString(), float_myMinblood, float_myMaxblood, float_myblood, float_myblood.ToString(), float_mybloodAMP);
    }
    public void myHurtSettingButton() {//傷害
        forSetBTN(2, true, "傷害：", myMineSprite.MineB, myMineCount.ToString(), float_myMinhurt, float_myMaxhurt, float_myhurt, float_myhurt.ToString(), float_myhurtAMP);
    }
    public void myMoveSpeedSettingButton(){//移動速度
        forSetBTN(3, true, "移動速度：", myMineSprite.MineD, myMineCount.ToString(), float_myMinmovespeed, float_myMaxmovespeed, float_mymovespeed, float_mymovespeed.ToString(), float_mymovespeedAMP);
    }
    public void myAttackSpeedSettingButton(){//攻擊速度
        forSetBTN(4, true, "攻擊速度：", myMineSprite.MineC, myMineCount.ToString(), float_myMinattackspeed, float_myMaxattackspeed, float_myattackspeed, float_myattackspeed.ToString(), float_myattackspeedAMP);
    }
    public void myHowManySettingButton() {//出戰數量
        forSetBTN(5, true, "出戰數量：", myMineSprite.Coin, myMineCount.ToString(), 0, int_myMaxAmount, int_myamount, int_myamount.ToString(), int_myamountAMP);
    }
    public void forSetBTN(int MOD, bool setActive, string myTitle_Text, Sprite mineSprite, string myMine_text,float sliderMin,float sliderMax, float sliderValue,string myTitleValueNum_text,float Amp) {
        myforsettingMOD = MOD;
        myValueSetting.SetActive(setActive);
        ValueSetting_myTitle_text.GetComponent<Text>().text = myTitle_Text;
        ValueSetting_myMine_texture.GetComponent<Image>().sprite = mineSprite;
        ValueSetting_myMine_text.GetComponent<Text>().text = myMine_text;
        ValueSetting_mySlider.GetComponent<Slider>().minValue = sliderMin;
        ValueSetting_mySlider.GetComponent<Slider>().maxValue = sliderMax;
        ValueSetting_mySlider.GetComponent<Slider>().value = sliderValue;
        ValueSetting_myTitleValueNum_text.GetComponent<Text>().text = myTitleValueNum_text;
        myAMPforCount = Amp;
    }
    //增加按鈕
    public void myValueAddButton() {
        switch (myforsettingMOD) {
            case 1:
                myHPCountadd();
                break;
            case 2:
                myAttackCountadd();
                break;
            case 3:
                myMoveSpeedCountadd();
                break;
            case 4:
                myAttackSpeedCountadd();
                break;
            case 5:
                myAmountCountadd();
                break;
        }
    }
    //減少按鈕
    public void myValueCutButton() {
        switch (myforsettingMOD)
        {
            case 1:
                myHPCountcost();
                break;
            case 2:
                myAttackCountcost();
                break;
            case 3:
                myMoveSpeedCountcost();
                break;
            case 4:
                myAttackSpeedCountcost();
                break;
            case 5:
                myAmountCountcost();
                break;
        }
    }
    //最大值按鈕
    public void myValueSettingMaxButton() {
        switch (myforsettingMOD)
        {
            case 1:
                myHPMax();
                break;
            case 2:
                myAttackMax();
                break;
            case 3:
                myMoveSpeedMax();
                break;
            case 4:
                myAttackSpeedMax();
                break;
            case 5:
                myAmountMax();
                break;
        }
    }
    //---------增加
    public void myHPCountadd() {
        if (mySkillLevel > 9) { }
        else {
            mySkillLevel++;//屬性等級提升
            float_myblood = float_myMinblood + (mySkillLevel * (float_myMaxblood - float_myMinblood) / 10); //計算升級之後的血量
            //myMineCount = (int)((float_myblood - float_myMinblood) + (mySkillLevel * float_mybloodAMP));                 //計算升級所要花費的礦石
            myMineCount = (int)((float_myblood * float_mybloodAMP));                 //計算升級所要花費的礦石
            ValueSetting_mySlider.GetComponent<Slider>().value = float_myblood;                             //把算好的血量灌進去slider.value
            ValueSetting_myTitleValueNum_text.GetComponent<Text>().text = float_myblood.ToString();         //把算好的血量灌進去顯示的text
            ValueSetting_myMine_text.GetComponent<Text>().text = myMineCount.ToString();                    //把算好的礦石灌進去礦石的text
            txt_myblood.GetComponent<Text>().text = float_myblood.ToString();                               //把算好的血量灌進去資訊面板的text
        }
    }
    public void myAttackCountadd() {
        if (mySkillLevel > 9) { }
        else {
            mySkillLevel++;//屬性等級提升
            float_myhurt = float_myMinhurt + (mySkillLevel * (float_myMaxhurt - float_myMinhurt) / 10); //計算升級之後的血量
            //myMineCount = (int)((float_myhurt - float_myMinhurt) + (mySkillLevel * float_myhurtAMP));                 //計算升級所要花費的礦石
            myMineCount = (int)((float_myhurt* float_myhurtAMP));                 //計算升級所要花費的礦石
            ValueSetting_mySlider.GetComponent<Slider>().value = float_myhurt;                             //把算好的血量灌進去slider.value
            ValueSetting_myTitleValueNum_text.GetComponent<Text>().text = float_myhurt.ToString();         //把算好的血量灌進去顯示的text
            ValueSetting_myMine_text.GetComponent<Text>().text = myMineCount.ToString();                    //把算好的礦石灌進去礦石的text
            txt_myhurt.GetComponent<Text>().text = float_myhurt.ToString();                               //把算好的血量灌進去資訊面板的text
        }
    }
    public void myMoveSpeedCountadd() {
        if (mySkillLevel > 9) { }
        else {
            mySkillLevel++;//屬性等級提升
            float_mymovespeed = float_myMinmovespeed + (mySkillLevel * (float_myMaxmovespeed - float_myMinmovespeed) / 10); //計算升級之後的血量
            //myMineCount = (int)((float_mymovespeed - float_myMinmovespeed) + (mySkillLevel * float_mymovespeedAMP));                 //計算升級所要花費的礦石
            myMineCount = (int)((float_mymovespeed* float_mymovespeedAMP));                 //計算升級所要花費的礦石
            ValueSetting_mySlider.GetComponent<Slider>().value = float_mymovespeed;                             //把算好的血量灌進去slider.value
            ValueSetting_myTitleValueNum_text.GetComponent<Text>().text = float_mymovespeed.ToString();         //把算好的血量灌進去顯示的text
            ValueSetting_myMine_text.GetComponent<Text>().text = myMineCount.ToString();                    //把算好的礦石灌進去礦石的text
            txt_mymovespeed.GetComponent<Text>().text = float_mymovespeed.ToString();                               //把算好的血量灌進去資訊面板的text
        }
    }
    public void myAttackSpeedCountadd() {
        if (mySkillLevel > 9) { }
        else {
            mySkillLevel++;//屬性等級提升
            float_myattackspeed = float_myMinattackspeed + (mySkillLevel * (float_myMaxattackspeed - float_myMinattackspeed) / 10); //計算升級之後的血量
            //myMineCount = (int)((float_myattackspeed - float_myMinattackspeed) + (mySkillLevel * float_myattackspeedAMP));                 //計算升級所要花費的礦石
            myMineCount = (int)((float_myattackspeed * float_myattackspeedAMP));                 //計算升級所要花費的礦石
            ValueSetting_mySlider.GetComponent<Slider>().value = float_myattackspeed;                             //把算好的血量灌進去slider.value
            ValueSetting_myTitleValueNum_text.GetComponent<Text>().text = float_myattackspeed.ToString();         //把算好的血量灌進去顯示的text
            ValueSetting_myMine_text.GetComponent<Text>().text = myMineCount.ToString();                    //把算好的礦石灌進去礦石的text
            txt_myattackspeed.GetComponent<Text>().text = float_myattackspeed.ToString();                               //把算好的血量灌進去資訊面板的text
        }
    }
    public void myAmountCountadd() {
        if (int_myamount > (int_myMaxAmount-50)) { int_myamount = int_myMaxAmount; }
        else {
            mySkillLevel++;
            int_myamount+=50;//屬性等級提升
            myMineCount = (int)(int_myamount*int_myamountAMP);                                         //計算升級所要花費的金幣
            ValueSetting_mySlider.GetComponent<Slider>().value = int_myamount;                             //把算好的血量灌進去slider.value
            ValueSetting_myTitleValueNum_text.GetComponent<Text>().text = int_myamount.ToString();         //把算好的血量灌進去顯示的text
            ValueSetting_myMine_text.GetComponent<Text>().text = myMineCount.ToString();                    //把算好的礦石灌進去礦石的text
            txt_myamount.GetComponent<Text>().text = int_myamount.ToString();                               //把算好的血量灌進去資訊面板的text
        }
    }
    ////-------減少-----------------------
    public void myHPCountcost() {
        if (mySkillLevel < 1) {}
        else {
            mySkillLevel--;
            float_myblood = float_myblood -( (float_myMaxblood - float_myMinblood) / 10);
            if (mySkillLevel == 0) {
                float_myblood = float_myMinblood;
                myMineCount = 0;
            }
            else {
                myMineCount = ((int)((float_myblood * float_mybloodAMP)));//計算升級所要花費的礦石
            }
            ValueSetting_mySlider.GetComponent<Slider>().value = float_myblood;
            ValueSetting_myTitleValueNum_text.GetComponent<Text>().text = float_myblood.ToString();
            ValueSetting_myMine_text.GetComponent<Text>().text = myMineCount.ToString();                    //把算好的礦石灌進去礦石的text
            txt_myblood.GetComponent<Text>().text = float_myblood.ToString();
        }
    }
    public void myAttackCountcost() {
        if (mySkillLevel < 1) { }
        else {
            mySkillLevel--;
            float_myhurt = float_myhurt - ((float_myMaxhurt - float_myMinhurt) / 10);
            if (mySkillLevel == 0)
            {
                float_myhurt = float_myMinhurt;
                myMineCount = 0;
            }
            else {
                myMineCount = ((int)((float_myhurt * float_myhurtAMP))) ;//計算升級所要花費的礦石
            }
            ValueSetting_mySlider.GetComponent<Slider>().value = float_myhurt;
            ValueSetting_myTitleValueNum_text.GetComponent<Text>().text = float_myhurt.ToString();
            ValueSetting_myMine_text.GetComponent<Text>().text = myMineCount.ToString();                    //把算好的礦石灌進去礦石的text
            txt_myhurt.GetComponent<Text>().text = float_myhurt.ToString();
        }
    }
    public void myMoveSpeedCountcost() {
        if (mySkillLevel < 1) { }
        else {
            mySkillLevel--;
            float_mymovespeed = float_mymovespeed - ((float_myMaxmovespeed - float_myMinmovespeed) / 10);
            if (mySkillLevel == 0)
            {
                float_mymovespeed = float_myMinmovespeed;
                myMineCount = 0;
            }
            else {
                myMineCount =  ((int)((float_mymovespeed * float_mymovespeedAMP))) ;//計算升級所要花費的礦石
            }
            ValueSetting_mySlider.GetComponent<Slider>().value = float_mymovespeed;
            ValueSetting_myTitleValueNum_text.GetComponent<Text>().text = float_mymovespeed.ToString();
            ValueSetting_myMine_text.GetComponent<Text>().text = myMineCount.ToString();                    //把算好的礦石灌進去礦石的text
            txt_mymovespeed.GetComponent<Text>().text = float_mymovespeed.ToString();
        }
    }
    public void myAttackSpeedCountcost() {
        if (mySkillLevel < 1) { }
        else {
            mySkillLevel--;
            float_myattackspeed = float_myattackspeed - ((float_myMaxattackspeed - float_myMinattackspeed) / 10);
            if (mySkillLevel == 0)
            {
                float_myattackspeed = float_myMinattackspeed;
                myMineCount = 0;
            }
            else {
                myMineCount = ((int)((float_myattackspeed * float_myattackspeedAMP))) ;//計算升級所要花費的礦石
            }
            ValueSetting_mySlider.GetComponent<Slider>().value = float_myattackspeed;
            ValueSetting_myTitleValueNum_text.GetComponent<Text>().text = float_myattackspeed.ToString();
            ValueSetting_myMine_text.GetComponent<Text>().text = myMineCount.ToString();                    //把算好的礦石灌進去礦石的text
            txt_myattackspeed.GetComponent<Text>().text = float_myattackspeed.ToString();
        }
    }
    public void myAmountCountcost() {
        if (int_myamount < 0) {
            mySkillLevel = 0;
            int_myamount = 0;
            myMineCount = 0;
            ValueSetting_mySlider.GetComponent<Slider>().value = int_myamount;                              //把算好的血量灌進去slider.value
            ValueSetting_myTitleValueNum_text.GetComponent<Text>().text = int_myamount.ToString();          //把算好的血量灌進去顯示的text
            ValueSetting_myMine_text.GetComponent<Text>().text = myMineCount.ToString();                    //把算好的礦石灌進去礦石的text
            txt_myamount.GetComponent<Text>().text = int_myamount.ToString();                               //把算好的血量灌進去資訊面板的text
            return;
        }
        else {
            mySkillLevel--;
            if ((int_myamount-50<0)!=true) int_myamount -= 50;
            if (int_myamount != 0) myMineCount =  (int)(int_myamount  * int_myamountAMP) ;       //計算升級所要花費的金幣
            else { myMineCount = 0; }
            ValueSetting_mySlider.GetComponent<Slider>().value = int_myamount;                              //把算好的血量灌進去slider.value
            ValueSetting_myTitleValueNum_text.GetComponent<Text>().text = int_myamount.ToString();          //把算好的血量灌進去顯示的text
            ValueSetting_myMine_text.GetComponent<Text>().text = myMineCount.ToString();                    //把算好的礦石灌進去礦石的text
            txt_myamount.GetComponent<Text>().text = int_myamount.ToString();                               //把算好的血量灌進去資訊面板的text
        }
    }
    //---------最大----------------------------
    public void myHPMax() {
        mySkillLevel = 10;
        float_myblood = float_myMaxblood;
        ValueSetting_myTitleValueNum_text.GetComponent<Text>().text = float_myblood.ToString();
        ValueSetting_mySlider.GetComponent<Slider>().value = float_myblood;
        txt_myblood.GetComponent<Text>().text = float_myblood.ToString();

        myMineCount = (int)((float_myblood  * float_mybloodAMP));                 //計算升級所要花費的礦石
        ValueSetting_myMine_text.GetComponent<Text>().text = myMineCount.ToString();                    //把算好的礦石灌進去礦石的text
    }
    public void myAttackMax() {
        mySkillLevel = 10;
        float_myhurt = float_myMaxhurt;
        ValueSetting_myTitleValueNum_text.GetComponent<Text>().text = float_myhurt.ToString();
        ValueSetting_mySlider.GetComponent<Slider>().value = float_myhurt;
        txt_myhurt.GetComponent<Text>().text = float_myhurt.ToString();

        myMineCount = (int)((float_myhurt  * float_myhurtAMP));                 //計算升級所要花費的礦石
        ValueSetting_myMine_text.GetComponent<Text>().text = myMineCount.ToString();                    //把算好的礦石灌進去礦石的text
    }
    public void myMoveSpeedMax() {
        mySkillLevel = 10;
        float_mymovespeed = float_myMaxmovespeed;
        ValueSetting_myTitleValueNum_text.GetComponent<Text>().text = float_mymovespeed.ToString();
        ValueSetting_mySlider.GetComponent<Slider>().value = float_mymovespeed;
        txt_mymovespeed.GetComponent<Text>().text = float_mymovespeed.ToString();

        myMineCount = (int)((float_mymovespeed  * float_mymovespeedAMP));                 //計算升級所要花費的礦石
        ValueSetting_myMine_text.GetComponent<Text>().text = myMineCount.ToString();                    //把算好的礦石灌進去礦石的text
    }
    public void myAttackSpeedMax() {
        mySkillLevel = 10;
        float_myattackspeed = float_myMaxattackspeed;
        ValueSetting_myTitleValueNum_text.GetComponent<Text>().text = float_myattackspeed.ToString();
        ValueSetting_mySlider.GetComponent<Slider>().value = float_myattackspeed;
        txt_myattackspeed.GetComponent<Text>().text = float_myattackspeed.ToString();

        myMineCount = (int)((float_myattackspeed * float_myattackspeedAMP));                 //計算升級所要花費的礦石
        ValueSetting_myMine_text.GetComponent<Text>().text = myMineCount.ToString();                    //把算好的礦石灌進去礦石的text
    }
    public void myAmountMax() {
        mySkillLevel = int_myMaxAmount / 50;
        int_myamount = int_myMaxAmount;
        ValueSetting_myTitleValueNum_text.GetComponent<Text>().text = int_myamount.ToString();
        ValueSetting_mySlider.GetComponent<Slider>().value = int_myamount;
        txt_myamount.GetComponent<Text>().text = int_myamount.ToString();

        myMineCount =int_myMaxAmount*int_myamountAMP;                 //計算升級所要花費的礦石
        ValueSetting_myMine_text.GetComponent<Text>().text = myMineCount.ToString();                    //把算好的礦石灌進去礦石的text
    }
    //-----------------------
    public void myValueSettingFinishButton()//按鈕-完成設定
    {
        switch (whichTeamIPickUp.name.Substring(0, 7)) {
            case "inTeam1":
                switch (myforsettingMOD)//++--礦石
                {
                    case 1:
                        TeamAskilllevel.myHPLevel = mySkillLevel;
                        TeamAskilllevel.myHPCost = myMineCount;
                        break;
                    case 2:
                        TeamAskilllevel.myATLevel = mySkillLevel;
                        TeamAskilllevel.myATCost = myMineCount;
                        break;
                    case 3:
                        TeamAskilllevel.mySPLevel = mySkillLevel;
                        TeamAskilllevel.mySPCost = myMineCount;
                        break;
                    case 4:
                        TeamAskilllevel.myASLevel = mySkillLevel;
                        TeamAskilllevel.myASCost = myMineCount;
                        break;
                    case 5:
                        TeamAskilllevel.myAmountCount = mySkillLevel;
                        TeamAskilllevel.myCoinCost = myMineCount;
                        break;
                }
                break;
            case "inTeam2":
                switch (myforsettingMOD)//++--礦石
                {
                    case 1:
                        TeamBskilllevel.myHPLevel = mySkillLevel;
                        TeamBskilllevel.myHPCost = myMineCount;
                        break;
                    case 2:
                        TeamBskilllevel.myATLevel = mySkillLevel;
                        TeamBskilllevel.myATCost = myMineCount;
                        break;
                    case 3:
                        TeamBskilllevel.mySPLevel = mySkillLevel;
                        TeamBskilllevel.mySPCost = myMineCount;
                        break;
                    case 4:
                        TeamBskilllevel.myASLevel = mySkillLevel;
                        TeamBskilllevel.myASCost = myMineCount;
                        break;
                    case 5:
                        TeamBskilllevel.myAmountCount = mySkillLevel;
                        TeamBskilllevel.myCoinCost = myMineCount;
                        break;
                }
                break;
            case "inTeam3":
                switch (myforsettingMOD)//++--礦石
                {
                    case 1:
                        TeamCskilllevel.myHPLevel = mySkillLevel;
                        TeamCskilllevel.myHPCost = myMineCount;
                        break;
                    case 2:
                        TeamCskilllevel.myATLevel = mySkillLevel;
                        TeamCskilllevel.myATCost = myMineCount;
                        break;
                    case 3:
                        TeamCskilllevel.mySPLevel = mySkillLevel;
                        TeamCskilllevel.mySPCost = myMineCount;
                        break;
                    case 4:
                        TeamCskilllevel.myASLevel = mySkillLevel;
                        TeamCskilllevel.myASCost = myMineCount;
                        break;
                    case 5:
                        TeamCskilllevel.myAmountCount = mySkillLevel;
                        TeamCskilllevel.myCoinCost = myMineCount;
                        break;
                }
                break;
            case "inTeam4":
                switch (myforsettingMOD)//++--礦石
                {
                    case 1:
                        TeamDskilllevel.myHPLevel = mySkillLevel;
                        TeamDskilllevel.myHPCost = myMineCount;
                        break;
                    case 2:
                        TeamDskilllevel.myATLevel = mySkillLevel;
                        TeamDskilllevel.myATCost = myMineCount;
                        break;
                    case 3:
                        TeamDskilllevel.mySPLevel = mySkillLevel;
                        TeamDskilllevel.mySPCost = myMineCount;
                        break;
                    case 4:
                        TeamDskilllevel.myASLevel = mySkillLevel;
                        TeamDskilllevel.myASCost = myMineCount;
                        break;
                    case 5:
                        TeamDskilllevel.myAmountCount = mySkillLevel;
                        TeamDskilllevel.myCoinCost = myMineCount;
                        break;
                }
                break;
            case "inTeam5":
                switch (myforsettingMOD)//++--礦石
                {
                    case 1:
                        TeamEskilllevel.myHPLevel = mySkillLevel;
                        TeamEskilllevel.myHPCost = myMineCount;
                        break;
                    case 2:
                        TeamEskilllevel.myATLevel = mySkillLevel;
                        TeamEskilllevel.myATCost = myMineCount;
                        break;
                    case 3:
                        TeamEskilllevel.mySPLevel = mySkillLevel;
                        TeamEskilllevel.mySPCost = myMineCount;
                        break;
                    case 4:
                        TeamEskilllevel.myASLevel = mySkillLevel;
                        TeamEskilllevel.myASCost = myMineCount;
                        break;
                    case 5:
                        TeamEskilllevel.myAmountCount = mySkillLevel;
                        TeamEskilllevel.myCoinCost = myMineCount;
                        break;
                }
                break;
        }
        myforsettingMOD = 0;
        mySkillLevel = 0;
        myMineCount = 0;
        myValueSetting.SetActive(false);
    }
    public void myTeamASendMessage()
    {
        TeamA.myName = whichCharacterPickUp.name.Substring(0, 6);
        TeamA.myNickName = whichCharacterPickUp.GetComponent<onSlot>().setting.Name;
        TeamA.myHP = float_myblood;
        TeamA.myAttack = float_myhurt;
        TeamA.myAttackspeed = float_myattackspeed;
        TeamA.myMoveSpeed = float_mymovespeed;
        TeamA.mySuprise = float_mysurprise;
        TeamA.mySupriseadd = float_mysurprisehurt;
        TeamA.myAmount = int_myamount;
        PlayerPrefs.SetInt("TeamASetting", 1);
        PlayerPrefs.SetString("nickNameA", whichCharacterPickUp.GetComponent<onSlot>().setting.Name);
        PlayerPrefs.SetString("TeamAName", TeamA.myName);
        PlayerPrefs.SetFloat("TeamAHP", TeamA.myHP);
        PlayerPrefs.SetFloat("TeamAAttack", TeamA.myAttack);
        PlayerPrefs.SetFloat("TeamAMoveSpeed", TeamA.myMoveSpeed);
        PlayerPrefs.SetFloat("TeamAAttackSpeed", TeamA.myAttackspeed);
        PlayerPrefs.SetFloat("TeamASprise", TeamA.mySuprise);
        PlayerPrefs.SetFloat("TeamASpriseadd", TeamA.mySupriseadd);
        PlayerPrefs.SetInt("TeamAAmount", TeamA.myAmount);
    }
    public void myTeamBSendMessage()
    {
        TeamB.myName = whichCharacterPickUp.name.Substring(0, 6);
        TeamB.myNickName = whichCharacterPickUp.GetComponent<onSlot>().setting.Name;
        TeamB.myHP = float_myblood;
        TeamB.myAttack = float_myhurt;
        TeamB.myAttackspeed = float_myattackspeed;
        TeamB.myMoveSpeed = float_mymovespeed;
        TeamB.mySuprise = float_mysurprise;
        TeamB.mySupriseadd = float_mysurprisehurt;
        TeamB.myAmount = int_myamount;
        PlayerPrefs.SetInt("TeamBSetting", 1);
        PlayerPrefs.SetString("nickNameB", whichCharacterPickUp.GetComponent<onSlot>().setting.Name);
        PlayerPrefs.SetString("TeamBName", TeamB.myName);
        PlayerPrefs.SetFloat("TeamBHP", TeamB.myHP);
        PlayerPrefs.SetFloat("TeamBAttack", TeamB.myAttack);
        PlayerPrefs.SetFloat("TeamBMoveSpeed", TeamB.myMoveSpeed);
        PlayerPrefs.SetFloat("TeamBAttackSpeed", TeamB.myAttackspeed);
        PlayerPrefs.SetFloat("TeamBSprise", TeamB.mySuprise);
        PlayerPrefs.SetFloat("TeamBSpriseadd", TeamB.mySupriseadd);
        PlayerPrefs.SetInt("TeamBAmount", TeamB.myAmount);
    }
    public void myTeamCSendMessage()
    {
        TeamC.myName = whichCharacterPickUp.name.Substring(0, 6);
        TeamC.myNickName = whichCharacterPickUp.GetComponent<onSlot>().setting.Name;
        TeamC.myHP = float_myblood;
        TeamC.myAttack = float_myhurt;
        TeamC.myAttackspeed = float_myattackspeed;
        TeamC.myMoveSpeed = float_mymovespeed;
        TeamC.mySuprise = float_mysurprise;
        TeamC.mySupriseadd = float_mysurprisehurt;
        TeamC.myAmount = int_myamount;
        PlayerPrefs.SetInt("TeamCSetting", 1);
        PlayerPrefs.SetString("nickNameC", whichCharacterPickUp.GetComponent<onSlot>().setting.Name);
        PlayerPrefs.SetString("TeamCName", TeamC.myName);
        PlayerPrefs.SetFloat("TeamCHP", TeamC.myHP);
        PlayerPrefs.SetFloat("TeamCAttack", TeamC.myAttack);
        PlayerPrefs.SetFloat("TeamCMoveSpeed", TeamC.myMoveSpeed);
        PlayerPrefs.SetFloat("TeamCAttackSpeed", TeamC.myAttackspeed);
        PlayerPrefs.SetFloat("TeamCSprise", TeamC.mySuprise);
        PlayerPrefs.SetFloat("TeamCSpriseadd", TeamC.mySupriseadd);
        PlayerPrefs.SetInt("TeamCAmount", TeamC.myAmount);
    }
    public void myTeamDSendMessage()
    {
        TeamD.myName = whichCharacterPickUp.name.Substring(0, 6);
        TeamD.myNickName = whichCharacterPickUp.GetComponent<onSlot>().setting.Name;
        TeamD.myHP = float_myblood;
        TeamD.myAttack = float_myhurt;
        TeamD.myAttackspeed = float_myattackspeed;
        TeamD.myMoveSpeed = float_mymovespeed;
        TeamD.mySuprise = float_mysurprise;
        TeamD.mySupriseadd = float_mysurprisehurt;
        TeamD.myAmount = int_myamount;
        PlayerPrefs.SetInt("TeamDSetting", 1);
        PlayerPrefs.SetString("nickNameD", whichCharacterPickUp.GetComponent<onSlot>().setting.Name);
        PlayerPrefs.SetString("TeamDName", TeamD.myName);
        PlayerPrefs.SetFloat("TeamDHP", TeamD.myHP);
        PlayerPrefs.SetFloat("TeamDAttack", TeamD.myAttack);
        PlayerPrefs.SetFloat("TeamDMoveSpeed", TeamD.myMoveSpeed);
        PlayerPrefs.SetFloat("TeamDAttackSpeed", TeamD.myAttackspeed);
        PlayerPrefs.SetFloat("TeamDSprise", TeamD.mySuprise);
        PlayerPrefs.SetFloat("TeamDSpriseadd", TeamD.mySupriseadd);
        PlayerPrefs.SetInt("TeamDAmount", TeamD.myAmount);
    }
    public void myTeamESendMessage()
    {
        TeamE.myName = whichCharacterPickUp.name.Substring(0, 6);
        TeamE.myNickName = whichCharacterPickUp.GetComponent<onSlot>().setting.Name;
        TeamE.myHP = float_myblood;
        TeamE.myAttack = float_myhurt;
        TeamE.myAttackspeed = float_myattackspeed;
        TeamE.myMoveSpeed = float_mymovespeed;
        TeamE.mySuprise = float_mysurprise;
        TeamE.mySupriseadd = float_mysurprisehurt;
        TeamE.myAmount = int_myamount;
        PlayerPrefs.SetInt("TeamESetting", 1);
        PlayerPrefs.SetString("nickNameE", whichCharacterPickUp.GetComponent<onSlot>().setting.Name);
        PlayerPrefs.SetString("TeamEName", TeamE.myName);
        PlayerPrefs.SetFloat("TeamEHP", TeamE.myHP);
        PlayerPrefs.SetFloat("TeamEAttack", TeamE.myAttack);
        PlayerPrefs.SetFloat("TeamEMoveSpeed", TeamE.myMoveSpeed);
        PlayerPrefs.SetFloat("TeamEAttackSpeed", TeamE.myAttackspeed);
        PlayerPrefs.SetFloat("TeamESprise", TeamE.mySuprise);
        PlayerPrefs.SetFloat("TeamESpriseadd", TeamE.mySupriseadd);
        PlayerPrefs.SetInt("TeamEAmount", TeamE.myAmount);
    }
    public void GetTeamAData()
    {
        if (GameObject.Find("inTeam1N") && GameObject.Find(TeamA.myName.ToString() + "O"))
        {
            print("1");
            GameObject.Find("inTeam1N").GetComponent<Image>().sprite = GameObject.Find(TeamA.myName.ToString() + "O").GetComponent<Image>().sprite;
        }
        else if (GameObject.Find("inTeam1F") && GameObject.Find(TeamA.myName.ToString() + "O"))
        {
            print("2");
            GameObject.Find("inTeam1F").GetComponent<Image>().sprite = GameObject.Find(TeamA.myName.ToString() + "O").GetComponent<Image>().sprite;
        }
        else if (GameObject.Find("inTeam1N") && GameObject.Find(TeamA.myName.ToString() + "X"))
        {
            print("3");
            GameObject.Find("inTeam1N").GetComponent<Image>().sprite = GameObject.Find(TeamA.myName.ToString() + "X").GetComponent<Image>().sprite;
        }
        else if (GameObject.Find("inTeam1F") && GameObject.Find(TeamA.myName.ToString() + "X"))
        {
            print("4");
            GameObject.Find("inTeam1F").GetComponent<Image>().sprite = GameObject.Find(TeamA.myName.ToString() + "X").GetComponent<Image>().sprite;
        }
        else { print("GG"); }

        TeamA.myNickName = PlayerPrefs.GetString("nickNameA");
        TeamA.myName = PlayerPrefs.GetString("TeamAName");
        TeamA.myHP = PlayerPrefs.GetFloat("TeamAHP");
        TeamA.myAttack = PlayerPrefs.GetFloat("TeamAAttack");
        TeamA.myAttackspeed = PlayerPrefs.GetFloat("TeamAAttackSpeed");
        TeamA.myMoveSpeed = PlayerPrefs.GetFloat("TeamAMoveSpeed");
        TeamA.mySuprise = PlayerPrefs.GetFloat("TeamASprise");
        TeamA.mySupriseadd = PlayerPrefs.GetFloat("TeamASpriseadd");
        TeamA.myAmount = PlayerPrefs.GetInt("TeamAAmount");
    }
    public void GetTeamBData()
    {
        TeamB.myNickName = PlayerPrefs.GetString("nickNameB");
        TeamB.myName = PlayerPrefs.GetString("TeamBName");
        TeamB.myHP = PlayerPrefs.GetFloat("TeamBHP");
        TeamB.myAttack = PlayerPrefs.GetFloat("TeamBAttack");
        TeamB.myAttackspeed = PlayerPrefs.GetFloat("TeamBAttackSpeed");
        TeamB.myMoveSpeed = PlayerPrefs.GetFloat("TeamBMoveSpeed");
        TeamB.mySuprise = PlayerPrefs.GetFloat("TeamBSprise");
        TeamB.mySupriseadd = PlayerPrefs.GetFloat("TeamBSpriseadd");
        TeamB.myAmount = PlayerPrefs.GetInt("TeamBAmount");
    }
    public void GetTeamCData()
    {
        TeamC.myNickName = PlayerPrefs.GetString("nickNameC");
        TeamC.myName = PlayerPrefs.GetString("TeamCName");
        TeamC.myHP = PlayerPrefs.GetFloat("TeamCHP");
        TeamC.myAttack = PlayerPrefs.GetFloat("TeamCAttack");
        TeamC.myAttackspeed = PlayerPrefs.GetFloat("TeamCAttackSpeed");
        TeamC.myMoveSpeed = PlayerPrefs.GetFloat("TeamCMoveSpeed");
        TeamC.mySuprise = PlayerPrefs.GetFloat("TeamCSprise");
        TeamC.mySupriseadd = PlayerPrefs.GetFloat("TeamCSpriseadd");
        TeamC.myAmount = PlayerPrefs.GetInt("TeamCAmount");
    }
    public void GetTeamDData()
    {
        TeamD.myNickName = PlayerPrefs.GetString("nickNameD");
        TeamD.myName = PlayerPrefs.GetString("TeamDName");
        TeamD.myHP = PlayerPrefs.GetFloat("TeamDHP");
        TeamD.myAttack = PlayerPrefs.GetFloat("TeamDAttack");
        TeamD.myAttackspeed = PlayerPrefs.GetFloat("TeamDAttackSpeed");
        TeamD.myMoveSpeed = PlayerPrefs.GetFloat("TeamDMoveSpeed");
        TeamD.mySuprise = PlayerPrefs.GetFloat("TeamDSprise");
        TeamD.mySupriseadd = PlayerPrefs.GetFloat("TeamDSpriseadd");
        TeamD.myAmount = PlayerPrefs.GetInt("TeamDAmount");
    }
    public void GetTeamEData()
    {
        TeamE.myNickName = PlayerPrefs.GetString("nickNameE");
        TeamE.myName = PlayerPrefs.GetString("TeamEName");
        TeamE.myHP = PlayerPrefs.GetFloat("TeamEHP");
        TeamE.myAttack = PlayerPrefs.GetFloat("TeamEAttack");
        TeamE.myAttackspeed = PlayerPrefs.GetFloat("TeamEAttackSpeed");
        TeamE.myMoveSpeed = PlayerPrefs.GetFloat("TeamEMoveSpeed");
        TeamE.mySuprise = PlayerPrefs.GetFloat("TeamESprise");
        TeamE.mySupriseadd = PlayerPrefs.GetFloat("TeamESpriseadd");
        TeamE.myAmount = PlayerPrefs.GetInt("TeamEAmount");
    }
    public void forsaveskilllevelandcost()
    {
        PlayerPrefs.SetInt("TeamAHPLevel", TeamAskilllevel.myHPLevel);// = mySkillLevel;
        PlayerPrefs.SetInt("TeamAHPCost", TeamAskilllevel.myHPCost);
        PlayerPrefs.SetInt("TeamAATLevel", TeamAskilllevel.myATLevel);
        PlayerPrefs.SetInt("TeamAATCost", TeamAskilllevel.myATCost);
        PlayerPrefs.SetInt("TeamASPLevel", TeamAskilllevel.mySPLevel);
        PlayerPrefs.SetInt("TeamASPCost", TeamAskilllevel.mySPCost);
        PlayerPrefs.SetInt("TeamAASLevel", TeamAskilllevel.myASLevel);
        PlayerPrefs.SetInt("TeamAASCost", TeamAskilllevel.myASCost);
        PlayerPrefs.SetInt("TeamALevel", TeamAskilllevel.myAmountCount);
        PlayerPrefs.SetInt("TeamACoinCost", TeamAskilllevel.myCoinCost);

        PlayerPrefs.SetInt("TeamBHPLevel", TeamBskilllevel.myHPLevel);
        PlayerPrefs.SetInt("TeamBHPCost", TeamBskilllevel.myHPCost);
        PlayerPrefs.SetInt("TeamBATLevel", TeamBskilllevel.myATLevel);
        PlayerPrefs.SetInt("TeamBATCost", TeamBskilllevel.myATCost);
        PlayerPrefs.SetInt("TeamBSPLevel", TeamBskilllevel.mySPLevel);
        PlayerPrefs.SetInt("TeamBSPCost", TeamBskilllevel.mySPCost);
        PlayerPrefs.SetInt("TeamBASLevel", TeamBskilllevel.myASLevel);
        PlayerPrefs.SetInt("TeamBASCost", TeamBskilllevel.myASCost);
        PlayerPrefs.SetInt("TeamBLevel", TeamBskilllevel.myAmountCount);
        PlayerPrefs.SetInt("TeamBCoinCost", TeamBskilllevel.myCoinCost);

        PlayerPrefs.SetInt("TeamCHPLevel", TeamCskilllevel.myHPLevel);
        PlayerPrefs.SetInt("TeamCHPCost", TeamCskilllevel.myHPCost);
        PlayerPrefs.SetInt("TeamCATLevel", TeamCskilllevel.myATLevel);
        PlayerPrefs.SetInt("TeamCATCost", TeamCskilllevel.myATCost);
        PlayerPrefs.SetInt("TeamCSPLevel", TeamCskilllevel.mySPLevel);
        PlayerPrefs.SetInt("TeamCSPCost", TeamCskilllevel.mySPCost);
        PlayerPrefs.SetInt("TeamCASLevel", TeamCskilllevel.myASLevel);
        PlayerPrefs.SetInt("TeamCASCost", TeamCskilllevel.myASCost);
        PlayerPrefs.SetInt("TeamCLevel", TeamCskilllevel.myAmountCount);
        PlayerPrefs.SetInt("TeamCCoinCost", TeamCskilllevel.myCoinCost);

        PlayerPrefs.SetInt("TeamDHPLevel", TeamDskilllevel.myHPLevel);
        PlayerPrefs.SetInt("TeamDHPCost", TeamDskilllevel.myHPCost);
        PlayerPrefs.SetInt("TeamDATLevel", TeamDskilllevel.myATLevel);
        PlayerPrefs.SetInt("TeamDATCost", TeamDskilllevel.myATCost);
        PlayerPrefs.SetInt("TeamDSPLevel", TeamDskilllevel.mySPLevel);
        PlayerPrefs.SetInt("TeamDSPCost", TeamDskilllevel.mySPCost);
        PlayerPrefs.SetInt("TeamDASLevel", TeamDskilllevel.myASLevel);
        PlayerPrefs.SetInt("TeamDASCost", TeamDskilllevel.myASCost);
        PlayerPrefs.SetInt("TeamDLevel", TeamDskilllevel.myAmountCount);
        PlayerPrefs.SetInt("TeamDCoinCost", TeamDskilllevel.myCoinCost);

        PlayerPrefs.SetInt("TeamEHPLevel", TeamEskilllevel.myHPLevel);
        PlayerPrefs.SetInt("TeamEHPCost", TeamEskilllevel.myHPCost);
        PlayerPrefs.SetInt("TeamEATLevel", TeamEskilllevel.myATLevel);
        PlayerPrefs.SetInt("TeamEATCost", TeamEskilllevel.myATCost);
        PlayerPrefs.SetInt("TeamESPLevel", TeamEskilllevel.mySPLevel);
        PlayerPrefs.SetInt("TeamESPCost", TeamEskilllevel.mySPCost);
        PlayerPrefs.SetInt("TeamEASLevel", TeamEskilllevel.myASLevel);
        PlayerPrefs.SetInt("TeamEASCost", TeamEskilllevel.myASCost);
        PlayerPrefs.SetInt("TeamELevel", TeamEskilllevel.myAmountCount);
        PlayerPrefs.SetInt("TeamECoinCost", TeamEskilllevel.myCoinCost);
    }
}
