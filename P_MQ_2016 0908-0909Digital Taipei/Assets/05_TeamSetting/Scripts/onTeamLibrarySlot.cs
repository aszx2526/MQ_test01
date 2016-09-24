using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class onTeamLibrarySlot : MonoBehaviour {

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}
    public void myTeamSettingPickUp()
    {
        if (!onTeam_left_forTeamControl.whichTeamIPickUp) { }
        else {
            //如果最後是L表是鎖起來，不做事情
            if (onTeam_left_forTeamControl.whichTeamIPickUp.name.Substring(onTeam_left_forTeamControl.whichTeamIPickUp.name.Length - 1) == "L") { }
            else {
                //這個物件被選取了
                if (!onTeam_left_forTeamControl.whichCharacterPickUp)
                {
                    onTeam_left_forTeamControl.whichCharacterPickUp = this.gameObject;
                    myTeamPickUp(onTeam_left_forTeamControl.whichCharacterPickUp.name);

                }
                else
                {
                    onTeam_left_forTeamControl.whichCharacterPickUp = this.gameObject;
                    myTeamPickUp(onTeam_left_forTeamControl.whichCharacterPickUp.name);
                }
            }
        }
    }
    public void myTeamPickUp(string myPickUpName) {
        if (myPickUpName.Substring(myPickUpName.Length - 1) == "X")//字尾X表示不可以選
        {
            print("這個角色被選取了");
        }
        else if(myPickUpName.Substring(myPickUpName.Length - 1) == "O")//字尾O表示可以選
        {
            onTeam_left_forTeamControl.myLetyoufocus = true;
            myGetBasicValue();
            onTeam_left_forTeamControl.whichTeamIPickUp.GetComponent<Image>().sprite = this.GetComponent<Image>().sprite;//把圖片灌到左邊隊伍欄位
            onTeam_left_forTeamControl.myInformationImage.GetComponent<Image>().sprite = this.GetComponent<Image>().sprite;//把圖片灌到資訊欄位
            this.gameObject.GetComponent<Image>().color = Color.grey;//資料庫中的角色已被選取，所以變成灰色
            onTeam_left_forTeamControl.myTeamLibrary.SetActive(false);//關掉資料庫視窗
            onTeam_left_forTeamControl.myInformation.SetActive(true);//顯示設定視窗
            onTeam_left_forTeamControl.st_myInformation = true;

        }
    }
    public void myGetBasicValue() {//取得最初設定數值，灌入資訊列表

        GameObject.Find("Team_left").GetComponent<onTeam_left_forTeamControl>().txt_myname.GetComponent<Text>().text = onTeam_left_forTeamControl.whichCharacterPickUp.GetComponent<onSlot>().setting.Name.ToString();
        onTeam_left_forTeamControl.float_myblood = onTeam_left_forTeamControl.whichCharacterPickUp.GetComponent<onSlot>().setting.hps.myMinBloodValue;
        onTeam_left_forTeamControl.float_myhurt = onTeam_left_forTeamControl.whichCharacterPickUp.GetComponent<onSlot>().setting.hts.myMinHurtValue;
        onTeam_left_forTeamControl.float_mymovespeed = onTeam_left_forTeamControl.whichCharacterPickUp.GetComponent<onSlot>().setting.mss.myMinMoveSpeedValue;
        onTeam_left_forTeamControl.float_myattackspeed = onTeam_left_forTeamControl.whichCharacterPickUp.GetComponent<onSlot>().setting.atkss.myMinAttackSpeedValue;

        onTeam_left_forTeamControl.float_myMinblood = onTeam_left_forTeamControl.whichCharacterPickUp.GetComponent<onSlot>().setting.hps.myMinBloodValue;
        onTeam_left_forTeamControl.float_myMaxblood = onTeam_left_forTeamControl.whichCharacterPickUp.GetComponent<onSlot>().setting.hps.myMaxBloodValue;
        onTeam_left_forTeamControl.float_mybloodAMP = onTeam_left_forTeamControl.whichCharacterPickUp.GetComponent<onSlot>().setting.hps.myBloodAMP;

        onTeam_left_forTeamControl.float_myMinhurt = onTeam_left_forTeamControl.whichCharacterPickUp.GetComponent<onSlot>().setting.hts.myMinHurtValue;
        onTeam_left_forTeamControl.float_myMaxhurt = onTeam_left_forTeamControl.whichCharacterPickUp.GetComponent<onSlot>().setting.hts.myMaxHurtValue;
        onTeam_left_forTeamControl.float_myhurtAMP = onTeam_left_forTeamControl.whichCharacterPickUp.GetComponent<onSlot>().setting.hts.myHurtAMP;

        onTeam_left_forTeamControl.float_myMinmovespeed = onTeam_left_forTeamControl.whichCharacterPickUp.GetComponent<onSlot>().setting.mss.myMinMoveSpeedValue;
        onTeam_left_forTeamControl.float_myMaxmovespeed = onTeam_left_forTeamControl.whichCharacterPickUp.GetComponent<onSlot>().setting.mss.myMaxMoveSpeedValue;
        onTeam_left_forTeamControl.float_mymovespeedAMP = onTeam_left_forTeamControl.whichCharacterPickUp.GetComponent<onSlot>().setting.mss.myMoveSpeedAMP;

        onTeam_left_forTeamControl.float_myMinattackspeed = onTeam_left_forTeamControl.whichCharacterPickUp.GetComponent<onSlot>().setting.atkss.myMinAttackSpeedValue;
        onTeam_left_forTeamControl.float_myMaxattackspeed = onTeam_left_forTeamControl.whichCharacterPickUp.GetComponent<onSlot>().setting.atkss.myMaxAttackSpeedValue;
        onTeam_left_forTeamControl.float_myattackspeedAMP = onTeam_left_forTeamControl.whichCharacterPickUp.GetComponent<onSlot>().setting.atkss.myAttackSpeedAMP;

        onTeam_left_forTeamControl.float_mysurprise = onTeam_left_forTeamControl.whichCharacterPickUp.GetComponent<onSlot>().setting.mySurpriseValue;
        onTeam_left_forTeamControl.float_mysurprisehurt = onTeam_left_forTeamControl.whichCharacterPickUp.GetComponent<onSlot>().setting.mySurpriseHurtValue;

        onTeam_left_forTeamControl.int_myMaxAmount = onTeam_left_forTeamControl.whichCharacterPickUp.GetComponent<onSlot>().setting.myAmount.myMaxAmountValue;
        onTeam_left_forTeamControl.int_myamountAMP = onTeam_left_forTeamControl.whichCharacterPickUp.GetComponent<onSlot>().setting.myAmount.myAmountAMP;
    }
}
