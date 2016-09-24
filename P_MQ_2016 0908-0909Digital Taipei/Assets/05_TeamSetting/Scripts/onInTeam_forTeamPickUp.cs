using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class onInTeam_forTeamPickUp : MonoBehaviour
{
    public GameObject mySelectFrame;
    public GameObject myTLFTC;
    // Use this for initialization
    void Start()
    {

        //mySTNothingSprite = myNothingSprite;
        //if(onTeam_left_forTeamControl.myTeamSetting==1)
        //onTeam_left_forTeamControl.whichTeamIPickUp = GameObject.Find("inTeam1N");
        //onTeam_left_forTeamControl.whichTeamIPickUp.GetComponent<Image>().sprite = mySelectSprite;
        //onTeam_left_forTeamControl.whichTeamIPickUp.GetComponent<Image>().color = Color.white;
    }
    public void awakereset() {
        myTLFTC = GameObject.Find("Team_left");
        switch (gameObject.name.Substring(0, 7))
        {
            case "inTeam1":
                if (PlayerPrefs.GetInt("TeamASetting") == 1)
                {
                    GetComponent<Image>().sprite = GameObject.Find(PlayerPrefs.GetString("TeamAName") + "O").GetComponent<Image>().sprite;
                    GameObject.Find(PlayerPrefs.GetString("TeamAName") + "O").GetComponent<Image>().color = Color.gray;
                    GameObject.Find(PlayerPrefs.GetString("TeamAName") + "O").name = PlayerPrefs.GetString("TeamAName") + "X";
                    gameObject.name = gameObject.name.Substring(0, 7) + "F";
                    GetTeamAData();
                }
                break;
            case "inTeam2":
                if (PlayerPrefs.GetInt("TeamBSetting") == 1)
                {
                    print("onITFTPU awakerest switch inteam2");
                    GetComponent<Image>().sprite = GameObject.Find(PlayerPrefs.GetString("TeamBName") + "O").GetComponent<Image>().sprite;
                    GameObject.Find(PlayerPrefs.GetString("TeamBName") + "O").GetComponent<Image>().color = Color.gray;
                    GameObject.Find(PlayerPrefs.GetString("TeamBName") + "O").name = PlayerPrefs.GetString("TeamBName") + "X";
                    gameObject.name = gameObject.name.Substring(0, 7) + "F";
                    GetTeamBData();
                }
                break;
            case "inTeam3":
                if (PlayerPrefs.GetInt("TeamCSetting") == 1)
                {
                    GetComponent<Image>().sprite = GameObject.Find(PlayerPrefs.GetString("TeamCName") + "O").GetComponent<Image>().sprite;
                    GameObject.Find(PlayerPrefs.GetString("TeamCName") + "O").GetComponent<Image>().color = Color.gray;
                    GameObject.Find(PlayerPrefs.GetString("TeamCName") + "O").name = PlayerPrefs.GetString("TeamCName") + "X";
                    gameObject.name = gameObject.name.Substring(0, 7) + "F";
                    GetTeamCData();
                }
                break;
            case "inTeam4":
                if (PlayerPrefs.GetInt("TeamDSetting") == 1)
                {
                    GetComponent<Image>().sprite = GameObject.Find(PlayerPrefs.GetString("TeamDName") + "O").GetComponent<Image>().sprite;
                    GameObject.Find(PlayerPrefs.GetString("TeamDName") + "O").GetComponent<Image>().color = Color.gray;
                    GameObject.Find(PlayerPrefs.GetString("TeamDName") + "O").name = PlayerPrefs.GetString("TeamDName") + "X";
                    gameObject.name = gameObject.name.Substring(0, 7) + "F";
                    GetTeamDData();
                }
                break;
            case "inTeam5":
                if (PlayerPrefs.GetInt("TeamESetting") == 1)
                {
                    GetComponent<Image>().sprite = GameObject.Find(PlayerPrefs.GetString("TeamEName") + "O").GetComponent<Image>().sprite;
                    GameObject.Find(PlayerPrefs.GetString("TeamEName") + "O").GetComponent<Image>().color = Color.gray;
                    GameObject.Find(PlayerPrefs.GetString("TeamEName") + "O").name = PlayerPrefs.GetString("TeamEName") + "X";
                    gameObject.name = gameObject.name.Substring(0, 7) + "F";
                    GetTeamEData();
                }
                break;
        }//*/
    }
    // Update is called once per frame
    void Update()
    {

    }
    public void myTeamSettingOnClick()
    {
        if (onTeam_left_forTeamControl.myLetyoufocus == true) { }
        else {
            if (!onTeam_left_forTeamControl.whichTeamIPickUp)
            {
                Debug.Log("if (!onTea");
                onTeam_left_forTeamControl.whichTeamIPickUp = this.gameObject;
                onTeam_left_forTeamControl.whichTeamIPickUp.transform.GetChild(0).GetComponentInChildren<Image>().color = Color.white;
                //mySelectFrame.transform.SetParent(onTeam_left_forTeamControl.whichTeamIPickUp.transform);
                myTeamSelectFunction(onTeam_left_forTeamControl.whichTeamIPickUp.name);

            }
            else
            {
                Debug.Log("else");
                onTeam_left_forTeamControl.whichTeamIPickUp.transform.GetChild(0).GetComponentInChildren<Image>().color = Color.clear;
                onTeam_left_forTeamControl.whichTeamIPickUp = this.gameObject;
                onTeam_left_forTeamControl.whichTeamIPickUp.transform.GetChild(0).GetComponentInChildren<Image>().color = Color.white;
                //mySelectFrame.transform.SetParent(onTeam_left_forTeamControl.whichTeamIPickUp.transform);

                myTeamSelectFunction(onTeam_left_forTeamControl.whichTeamIPickUp.name);

            }
        }
    }
    public void myTeamSelectFunction(string myPickUpName) {
        if (myPickUpName.Substring(myPickUpName.Length - 1) == "L")//如果最後是L表是鎖起來，不做事情
        {
            Debug.Log("is lock");
        }
        else if (myPickUpName.Substring(myPickUpName.Length - 1) == "F")//如果最後是F表是設定完成，再次點即將可以重新設定
        {
            onTeam_left_forTeamControl.myLetyoufocus = true;
            Debug.Log("is FFF");
            switch (myPickUpName)
            {
                case "inTeam1F":
                    print("in team 1 f");
                    onTeam_left_forTeamControl.myInformationImage.GetComponent<Image>().sprite = onTeam_left_forTeamControl.whichTeamIPickUp.GetComponent<Image>().sprite;
                    onTeam_left_forTeamControl.whichCharacterPickUp = GameObject.Find(onTeam_left_forTeamControl.whichTeamIPickUp.GetComponent<Image>().sprite.name + "X");
                    onTeam_left_forTeamControl.myCharacterTurnBack = GameObject.Find(onTeam_left_forTeamControl.whichTeamIPickUp.GetComponent<Image>().sprite.name + "X");
                    GetTeamAData();
                    onTeam_left_forTeamControl.myTeamLibrary.SetActive(false);
                    onTeam_left_forTeamControl.myInformation.SetActive(true);
                    break;
                case "inTeam2F":
                    onTeam_left_forTeamControl.myInformationImage.GetComponent<Image>().sprite = onTeam_left_forTeamControl.whichTeamIPickUp.GetComponent<Image>().sprite;
                    onTeam_left_forTeamControl.whichCharacterPickUp = GameObject.Find(onTeam_left_forTeamControl.whichTeamIPickUp.GetComponent<Image>().sprite.name + "X");
                    onTeam_left_forTeamControl.myCharacterTurnBack = GameObject.Find(onTeam_left_forTeamControl.whichTeamIPickUp.GetComponent<Image>().sprite.name + "X");
                    GetTeamBData();
                    onTeam_left_forTeamControl.myTeamLibrary.SetActive(false);
                    onTeam_left_forTeamControl.myInformation.SetActive(true);
                    break;
                case "inTeam3F":
                    onTeam_left_forTeamControl.myInformationImage.GetComponent<Image>().sprite = onTeam_left_forTeamControl.whichTeamIPickUp.GetComponent<Image>().sprite;
                    onTeam_left_forTeamControl.whichCharacterPickUp = GameObject.Find(onTeam_left_forTeamControl.whichTeamIPickUp.GetComponent<Image>().sprite.name + "X");
                    onTeam_left_forTeamControl.myCharacterTurnBack = GameObject.Find(onTeam_left_forTeamControl.whichTeamIPickUp.GetComponent<Image>().sprite.name + "X");
                    GetTeamCData();
                    onTeam_left_forTeamControl.myTeamLibrary.SetActive(false);
                    onTeam_left_forTeamControl.myInformation.SetActive(true);
                    break;
                case "inTeam4F":
                    onTeam_left_forTeamControl.myInformationImage.GetComponent<Image>().sprite = onTeam_left_forTeamControl.whichTeamIPickUp.GetComponent<Image>().sprite;
                    onTeam_left_forTeamControl.whichCharacterPickUp = GameObject.Find(onTeam_left_forTeamControl.whichTeamIPickUp.GetComponent<Image>().sprite.name + "X");
                    onTeam_left_forTeamControl.myCharacterTurnBack = GameObject.Find(onTeam_left_forTeamControl.whichTeamIPickUp.GetComponent<Image>().sprite.name + "X");
                    GetTeamDData();
                    onTeam_left_forTeamControl.myTeamLibrary.SetActive(false);
                    onTeam_left_forTeamControl.myInformation.SetActive(true);
                    break;
                case "inTeam5F":
                    onTeam_left_forTeamControl.myInformationImage.GetComponent<Image>().sprite = onTeam_left_forTeamControl.whichTeamIPickUp.GetComponent<Image>().sprite;
                    onTeam_left_forTeamControl.whichCharacterPickUp = GameObject.Find(onTeam_left_forTeamControl.whichTeamIPickUp.GetComponent<Image>().sprite.name + "X");
                    onTeam_left_forTeamControl.myCharacterTurnBack = GameObject.Find(onTeam_left_forTeamControl.whichTeamIPickUp.GetComponent<Image>().sprite.name + "X");
                    GetTeamEData();
                    onTeam_left_forTeamControl.myTeamLibrary.SetActive(false);
                    onTeam_left_forTeamControl.myInformation.SetActive(true);
                    break;
                default:
                    Debug.Log("沒選隊伍");
                    break;
            }
        }
        else if(myPickUpName.Substring(myPickUpName.Length - 1) == "N")//如果最後是N表是空的，沒有東西，可以設定戰鬥怪物進來
        {
            Debug.Log("is NNN");
            switch (myPickUpName)
            {
                case "inTeam1N":
                    break;
                case "inTeam2N":
                    break;
                case "inTeam3N":
                    break;
                case "inTeam4N":
                    break;
                case "inTeam5N":
                    break;
                default:
                    Debug.Log("沒選隊伍");
                    break;
            }
        }
    }
    public void GetTeamAData()
    {
        //myTLFTC.GetComponent<onTeam_left_forTeamControl>().txt_my
        print("getteam A data() be call");
        myTLFTC.GetComponent<onTeam_left_forTeamControl>().txt_myname.GetComponent<Text>().text = PlayerPrefs.GetString("nickNameA");
        myTLFTC.GetComponent<onTeam_left_forTeamControl>().txt_myblood.GetComponent<Text>().text = PlayerPrefs.GetFloat("TeamAHP").ToString();
        myTLFTC.GetComponent<onTeam_left_forTeamControl>().txt_myhurt.GetComponent<Text>().text = PlayerPrefs.GetFloat("TeamAAttack").ToString();
        myTLFTC.GetComponent<onTeam_left_forTeamControl>().txt_mymovespeed.GetComponent<Text>().text = PlayerPrefs.GetFloat("TeamAMoveSpeed").ToString() + "％";
        myTLFTC.GetComponent<onTeam_left_forTeamControl>().txt_myattackspeed.GetComponent<Text>().text = PlayerPrefs.GetFloat("TeamAAttackSpeed").ToString();
        myTLFTC.GetComponent<onTeam_left_forTeamControl>().txt_mysurprise.GetComponent<Text>().text = PlayerPrefs.GetFloat("TeamASprise").ToString() + "％";
        myTLFTC.GetComponent<onTeam_left_forTeamControl>().txt_mysurprisehurt.GetComponent<Text>().text = PlayerPrefs.GetFloat("TeamASpriseadd").ToString() + "％";
        myTLFTC.GetComponent<onTeam_left_forTeamControl>().txt_myamount.GetComponent<Text>().text = PlayerPrefs.GetInt("TeamAAmount").ToString();
        myGetBasicValue(GameObject.Find(PlayerPrefs.GetString("TeamAName") + "X"));
        forGetTeamOldDateSetting("TeamAName");
    }
    public void GetTeamBData()
    {
        print("getteam B data() be call");
        myTLFTC.GetComponent<onTeam_left_forTeamControl>().txt_myname.GetComponent<Text>().text = PlayerPrefs.GetString("nickNameB");
        myTLFTC.GetComponent<onTeam_left_forTeamControl>().txt_myblood.GetComponent<Text>().text = PlayerPrefs.GetFloat("TeamBHP").ToString();
        myTLFTC.GetComponent<onTeam_left_forTeamControl>().txt_myhurt.GetComponent<Text>().text = PlayerPrefs.GetFloat("TeamBAttack").ToString();
        myTLFTC.GetComponent<onTeam_left_forTeamControl>().txt_mymovespeed.GetComponent<Text>().text = PlayerPrefs.GetFloat("TeamBMoveSpeed").ToString() + "％";
        myTLFTC.GetComponent<onTeam_left_forTeamControl>().txt_myattackspeed.GetComponent<Text>().text = PlayerPrefs.GetFloat("TeamBAttackSpeed").ToString();
        myTLFTC.GetComponent<onTeam_left_forTeamControl>().txt_mysurprise.GetComponent<Text>().text = PlayerPrefs.GetFloat("TeamBSprise").ToString() + "％";
        myTLFTC.GetComponent<onTeam_left_forTeamControl>().txt_mysurprisehurt.GetComponent<Text>().text = PlayerPrefs.GetFloat("TeamBSpriseadd").ToString() + "％";
        myTLFTC.GetComponent<onTeam_left_forTeamControl>().txt_myamount.GetComponent<Text>().text = PlayerPrefs.GetInt("TeamBAmount").ToString();

        myGetBasicValue(GameObject.Find(PlayerPrefs.GetString("TeamBName") + "X"));

        forGetTeamOldDateSetting("TeamBName");
    }
    public void GetTeamCData()
    {
        myTLFTC.GetComponent<onTeam_left_forTeamControl>().txt_myname.GetComponent<Text>().text = PlayerPrefs.GetString("nickNameC");
        myTLFTC.GetComponent<onTeam_left_forTeamControl>().txt_myblood.GetComponent<Text>().text = PlayerPrefs.GetFloat("TeamCHP").ToString();
        myTLFTC.GetComponent<onTeam_left_forTeamControl>().txt_myhurt.GetComponent<Text>().text = PlayerPrefs.GetFloat("TeamCAttack").ToString();
        myTLFTC.GetComponent<onTeam_left_forTeamControl>().txt_mymovespeed.GetComponent<Text>().text = PlayerPrefs.GetFloat("TeamCMoveSpeed").ToString() + "％";
        myTLFTC.GetComponent<onTeam_left_forTeamControl>().txt_myattackspeed.GetComponent<Text>().text = PlayerPrefs.GetFloat("TeamCAttackSpeed").ToString();
        myTLFTC.GetComponent<onTeam_left_forTeamControl>().txt_mysurprise.GetComponent<Text>().text = PlayerPrefs.GetFloat("TeamCSprise").ToString() + "％";
        myTLFTC.GetComponent<onTeam_left_forTeamControl>().txt_mysurprisehurt.GetComponent<Text>().text = PlayerPrefs.GetFloat("TeamCSpriseadd").ToString() + "％";
        myTLFTC.GetComponent<onTeam_left_forTeamControl>().txt_myamount.GetComponent<Text>().text = PlayerPrefs.GetInt("TeamCAmount").ToString();
        //myGetBasicValue(GameObject.Find(PlayerPrefs.GetString("TeamCName") + "X"));
        forGetTeamOldDateSetting("TeamCName");
    }
    public void GetTeamDData()
    {
        myTLFTC.GetComponent<onTeam_left_forTeamControl>().txt_myname.GetComponent<Text>().text = PlayerPrefs.GetString("nickNameD");
        myTLFTC.GetComponent<onTeam_left_forTeamControl>().txt_myblood.GetComponent<Text>().text = PlayerPrefs.GetFloat("TeamDHP").ToString();
        myTLFTC.GetComponent<onTeam_left_forTeamControl>().txt_myhurt.GetComponent<Text>().text = PlayerPrefs.GetFloat("TeamDAttack").ToString();
        myTLFTC.GetComponent<onTeam_left_forTeamControl>().txt_mymovespeed.GetComponent<Text>().text = PlayerPrefs.GetFloat("TeamDMoveSpeed").ToString() + "％";
        myTLFTC.GetComponent<onTeam_left_forTeamControl>().txt_myattackspeed.GetComponent<Text>().text = PlayerPrefs.GetFloat("TeamDAttackSpeed").ToString();
        myTLFTC.GetComponent<onTeam_left_forTeamControl>().txt_mysurprise.GetComponent<Text>().text = PlayerPrefs.GetFloat("TeamDSprise").ToString() + "％";
        myTLFTC.GetComponent<onTeam_left_forTeamControl>().txt_mysurprisehurt.GetComponent<Text>().text = PlayerPrefs.GetFloat("TeamDSpriseadd").ToString() + "％";
        myTLFTC.GetComponent<onTeam_left_forTeamControl>().txt_myamount.GetComponent<Text>().text = PlayerPrefs.GetInt("TeamDAmount").ToString();
        //myGetBasicValue(GameObject.Find(PlayerPrefs.GetString("TeamDName") + "X"));
        forGetTeamOldDateSetting("TeamDName");
    }
    public void GetTeamEData()
    {
        myTLFTC.GetComponent<onTeam_left_forTeamControl>().txt_myname.GetComponent<Text>().text = PlayerPrefs.GetString("nickNameE");
        myTLFTC.GetComponent<onTeam_left_forTeamControl>().txt_myblood.GetComponent<Text>().text = PlayerPrefs.GetFloat("TeamEHP").ToString();
        myTLFTC.GetComponent<onTeam_left_forTeamControl>().txt_myhurt.GetComponent<Text>().text = PlayerPrefs.GetFloat("TeamEAttack").ToString();
        myTLFTC.GetComponent<onTeam_left_forTeamControl>().txt_mymovespeed.GetComponent<Text>().text = PlayerPrefs.GetFloat("TeamEMoveSpeed").ToString() + "％";
        myTLFTC.GetComponent<onTeam_left_forTeamControl>().txt_myattackspeed.GetComponent<Text>().text = PlayerPrefs.GetFloat("TeamEAttackSpeed").ToString();
        myTLFTC.GetComponent<onTeam_left_forTeamControl>().txt_mysurprise.GetComponent<Text>().text = PlayerPrefs.GetFloat("TeamESprise").ToString() + "％";
        myTLFTC.GetComponent<onTeam_left_forTeamControl>().txt_mysurprisehurt.GetComponent<Text>().text = PlayerPrefs.GetFloat("TeamESpriseadd").ToString() + "％";
        myTLFTC.GetComponent<onTeam_left_forTeamControl>().txt_myamount.GetComponent<Text>().text = PlayerPrefs.GetInt("TeamEAmount").ToString();
        //myGetBasicValue(GameObject.Find(PlayerPrefs.GetString("TeamEName") + "X"));
        forGetTeamOldDateSetting("TeamEName");
    }
    public void myGetBasicValue(GameObject myslot)
    {//取得最初設定數值，灌入資訊列表

        GameObject.Find("Team_left").GetComponent<onTeam_left_forTeamControl>().txt_myname.GetComponent<Text>().text = myslot.GetComponent<onSlot>().setting.Name.ToString();
        onTeam_left_forTeamControl.float_myblood = myslot.GetComponent<onSlot>().setting.hps.myMinBloodValue;
        onTeam_left_forTeamControl.float_myhurt = myslot.GetComponent<onSlot>().setting.hts.myMinHurtValue;
        onTeam_left_forTeamControl.float_mymovespeed = myslot.GetComponent<onSlot>().setting.mss.myMinMoveSpeedValue;
        onTeam_left_forTeamControl.float_myattackspeed = myslot.GetComponent<onSlot>().setting.atkss.myMinAttackSpeedValue;

        onTeam_left_forTeamControl.float_myMinblood = myslot.GetComponent<onSlot>().setting.hps.myMinBloodValue;
        onTeam_left_forTeamControl.float_myMaxblood = myslot.GetComponent<onSlot>().setting.hps.myMaxBloodValue;
        onTeam_left_forTeamControl.float_mybloodAMP = myslot.GetComponent<onSlot>().setting.hps.myBloodAMP;

        onTeam_left_forTeamControl.float_myMinhurt = myslot.GetComponent<onSlot>().setting.hts.myMinHurtValue;
        onTeam_left_forTeamControl.float_myMaxhurt = myslot.GetComponent<onSlot>().setting.hts.myMaxHurtValue;
        onTeam_left_forTeamControl.float_myhurtAMP = myslot.GetComponent<onSlot>().setting.hts.myHurtAMP;

        onTeam_left_forTeamControl.float_myMinmovespeed = myslot.GetComponent<onSlot>().setting.mss.myMinMoveSpeedValue;
        onTeam_left_forTeamControl.float_myMaxmovespeed = myslot.GetComponent<onSlot>().setting.mss.myMaxMoveSpeedValue;
        onTeam_left_forTeamControl.float_mymovespeedAMP = myslot.GetComponent<onSlot>().setting.mss.myMoveSpeedAMP;

        onTeam_left_forTeamControl.float_myMinattackspeed = myslot.GetComponent<onSlot>().setting.atkss.myMinAttackSpeedValue;
        onTeam_left_forTeamControl.float_myMaxattackspeed = myslot.GetComponent<onSlot>().setting.atkss.myMaxAttackSpeedValue;
        onTeam_left_forTeamControl.float_myattackspeedAMP = myslot.GetComponent<onSlot>().setting.atkss.myAttackSpeedAMP;

        onTeam_left_forTeamControl.float_mysurprise = myslot.GetComponent<onSlot>().setting.mySurpriseValue;
        onTeam_left_forTeamControl.float_mysurprisehurt = myslot.GetComponent<onSlot>().setting.mySurpriseHurtValue;

        onTeam_left_forTeamControl.int_myMaxAmount = myslot.GetComponent<onSlot>().setting.myAmount.myMaxAmountValue;
        onTeam_left_forTeamControl.int_myamountAMP = myslot.GetComponent<onSlot>().setting.myAmount.myAmountAMP;
    }
    public void forGetTeamOldDateSetting(string WhichTeamName)
    {/*
        GetComponent<Image>().sprite = GameObject.Find(PlayerPrefs.GetString(WhichTeamName) + "O").GetComponent<Image>().sprite;
        GameObject.Find(PlayerPrefs.GetString(WhichTeamName) + "O").GetComponent<Image>().color = Color.gray;
        GameObject.Find(PlayerPrefs.GetString(WhichTeamName) + "O").name = PlayerPrefs.GetString(WhichTeamName) + "X";
        gameObject.name = gameObject.name.Substring(0, 7) + "F";*/
    }
    public void p(string a) {
        print(a);
    }
}
