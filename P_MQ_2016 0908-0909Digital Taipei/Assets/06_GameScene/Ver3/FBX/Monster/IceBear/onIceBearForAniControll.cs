using UnityEngine;
using System.Collections;
using UnityEngine.UI;
public class onIceBearForAniControll : MonoBehaviour {
    public int myAniMod;
    public Animator myAniam;
    public Text mytextGroup;
    public Text mytextAnimMod;
    public GameObject myFatherObject;//父物件
    [Header("大眼血量")]
    public float myBigeyeHP;
    [Header("大眼復原時間")]
    public float myBigeyeResumeTimer;
    [Header("翅膀血量")]
    public float myWingHP;
    [Header("翅膀復原時間")]
    public float myWingResumeTimer;
    [Header("複眼血量")]
    public float myOtherEyeHP;
    [Header("複眼復原時間")]
    public float myOtherEyeResumeTimer;


    public bool isBigEyegood;
    public bool isWinggood;

    public bool isUnderAttack;

    public float mySkill1CDTimer;
    public float mySkill1Timer;
    public bool is26CD;
    public float mySkill2CDTimer;
    public float mySkill2Timer;
    public bool is27CD;
    public float mySkill3CDTimer;
    public float mySkill3Timer;
    public bool is21CD;
    public void myBigeyeSkill1_basic_BigeyeAttack()
    {//技能1眼撞
        if (isBigEyegood) { myAniMod = 26; }
        else { myAniMod = 28; }
    }
    public void myBigeyeSkill2_basic_BigeyeRotate()
    {//技能2迴旋
        if (is27CD)
        {
            if (mySkill2Timer > mySkill2CDTimer)
            {
                mySkill2Timer = 0;
                is27CD = false;
            }
            else { mySkill2Timer += Time.deltaTime; }
        }
        if (isBigEyegood) { myAniMod = 27; }
        else { myAniMod = 29; }
    }
    public void myBigeyeSkill3_Special_BigeyeMagic_Air()
    {//技能3空中大眼魔法
        myAniMod = 21;
    }
    public void myBigeyeSkill3_Special_BigeyeMagic_Ground()
    {//技能4地上大眼魔法
        myAniMod = 24;
    }
    public void myBigeyeAttackMod()
    {
        if (myFatherObject.GetComponent<onMonsterVer3>().myHP / 1000 < 0.2 && isBigEyegood)//20%以下時
        {
            if (is21CD)
            {
                if (mySkill3Timer > mySkill3CDTimer)
                {
                    mySkill3Timer = 0;
                    is21CD = false;
                }
                else {
                    myBigeyeModControll();
                    mySkill3Timer += Time.deltaTime;
                }
                //--
                if (isWinggood)
                {
                    if (is27CD)
                    {
                        if (mySkill2Timer > mySkill2CDTimer)
                        {
                            mySkill2Timer = 0;
                            is27CD = false;
                        }
                        else {
                            myBigeyeModControll();
                            mySkill2Timer += Time.deltaTime;
                        }
                        if (is26CD)
                        {
                            if (mySkill1Timer > mySkill1CDTimer)
                            {
                                mySkill1Timer = 0;
                                is26CD = false;
                            }
                            else {
                                myBigeyeModControll();
                                mySkill1Timer += Time.deltaTime;
                            }
                        }
                        else {
                            myBigeyeSkill1_basic_BigeyeAttack();
                        }
                    }
                    else {
                        myBigeyeSkill2_basic_BigeyeRotate();
                    }
                }
                else {
                    if (is26CD)
                    {
                        if (mySkill1Timer > mySkill1CDTimer)
                        {
                            mySkill1Timer = 0;
                            is26CD = false;
                        }
                        else {
                            myBigeyeModControll();
                            mySkill1Timer += Time.deltaTime;
                        }
                    }
                    else {
                        myBigeyeSkill1_basic_BigeyeAttack();
                    }
                }
                //--
            }
            else {//放大招
                if (isWinggood) { myBigeyeSkill3_Special_BigeyeMagic_Air(); }
                else { myBigeyeSkill3_Special_BigeyeMagic_Ground(); }
            }
        }
        else {//20%以上時
            if (isWinggood)
            {
                if (is27CD)
                {
                    if (mySkill2Timer > mySkill2CDTimer)
                    {
                        mySkill2Timer = 0;
                        is27CD = false;
                    }
                    else {
                        myBigeyeModControll();
                        mySkill2Timer += Time.deltaTime;
                    }
                    if (is26CD)
                    {
                        if (mySkill1Timer > mySkill1CDTimer)
                        {
                            mySkill1Timer = 0;
                            is26CD = false;
                        }
                        else {
                            myBigeyeModControll();
                            mySkill1Timer += Time.deltaTime;
                        }
                    }
                    else {
                        myBigeyeSkill1_basic_BigeyeAttack();
                    }
                }
                else {
                    myBigeyeSkill2_basic_BigeyeRotate();
                }
            }
            else {
                if (is26CD)
                {
                    if (mySkill1Timer > mySkill1CDTimer)
                    {
                        mySkill1Timer = 0;
                        is26CD = false;
                    }
                    else {
                        myBigeyeModControll();
                        mySkill1Timer += Time.deltaTime;
                    }
                }
                else {
                    myBigeyeSkill1_basic_BigeyeAttack();
                }
            }
        }
    }
    void Start()
    {
        isWinggood = true;
        isBigEyegood = true;
        myAniam = gameObject.GetComponent<Animator>();
    }
    void Update()
    {
        //mytextGroup.text = "第「" + myModControll + "」組的組合動畫";
        //mytextAnimMod.text = "動畫編號「" + myAniMod + "」";
        if (Input.GetKeyDown("."))
        {
            // myAniMod = 999;
            myAniMod++;
            if (myAniMod > 24) { myAniMod = 0; }
        }
        if (Input.GetKeyDown(","))
        {
            //myAniMod = 999;
            myAniMod--;
            if (myAniMod < 0) { myAniMod = 24; }
        }

        myAniControll();
        //myBigeyeAttackMod();
        //myBigeyeModControll();


    }
    public void myBigeyeModControll()
    {
        if (isBigEyegood && isWinggood)
        {//眼好翅好-------------------------------------------------------------------1
            if (myWingHP <= 0)
            {
                myAniMod = 22;
            }
            else if (myBigeyeHP <= 0)
            {
                myAniMod = 61;
            }
            else {
                if (isUnderAttack)
                {

                }
                else { }
                myAniMod = 13;
            }
        }
        else if (isBigEyegood && !isWinggood)
        {//眼好翅壞-------------------------------------------------------------------2
            if (myWingResumeTimer > 10)
            {
                //myWingResumeTimer = 0;
                myWingHP = 100;
                myAniMod = 25;
            }
            else if (myBigeyeHP <= 0)
            {
                myAniMod = 62;
            }
            else {
                myWingResumeTimer += Time.deltaTime;
                myAniMod = 23;
            }
        }
        else if (!isBigEyegood && isWinggood)
        {//眼壞翅好-------------------------------------------------------------------3

            if (myBigeyeResumeTimer > 10)
            {
                //myBigeyeResumeTimer = 0;
                myBigeyeHP = 100;
                myAniMod = 16;
            }
            else if (myWingHP <= 0)
            {
                myAniMod = 08;
            }
            else {
                myBigeyeResumeTimer += Time.deltaTime;
                myAniMod = 00;
            }
        }
        else if (!isBigEyegood && !isWinggood)
        {//眼壞翅壞-------------------------------------------------------------------4
            if (myWingResumeTimer > 10)
            {
                //myWingResumeTimer = 0;
                myWingHP = 100;
                myAniMod = 07;
            }
            else if (myBigeyeResumeTimer > 10)
            {
                //myBigeyeResumeTimer = 0;
                myBigeyeHP = 100;
                myAniMod = 10;
            }
            else {
                myWingResumeTimer += Time.deltaTime;
                myBigeyeResumeTimer += Time.deltaTime;
                myAniMod = 03;
            }
        }
    }
    public void myAniControll()
    {
        switch (myAniMod)
        {
            case 0:
                myAniam.Play("basic_dead");
                break;
            case 1:
                myAniam.Play("idle_attack");
                break;
            case 2:
                myAniam.Play("idle_basic");
                break;
            case 3:
                myAniam.Play("idle_turning");
                break;
            case 4:
                myAniam.Play("run_ready");
                break;
            case 5:
                myAniam.Play("run_ing");
                break;
            case 6:
                print("run stop");
                myAniam.Play("run_stop");
                break;
            case 7:
                myAniam.Play("walk_ready");
                break;
            case 8:
                myAniam.Play("walk_ing");
                break;
            case 9:
                myAniam.Play("walk_stop");
                break;
            case 10:
                myAniam.Play("skill1_fishHit");
                break;
            case 11:
                myAniam.Play("skill2_jumpHit");
                break;
            case 12:
                myAniam.Play("skill3_readyeatfish");
                break;
            case 13:
                myAniam.Play("skill3_eatfishfinish");
                break;
            case 14:
                myAniam.Play("skill3_eatingfish");
                break;
            case 15:
                myAniam.Play("break_belly");
                break;
            case 16:
                myAniam.Play("break_feet");
                break;
            case 17:
                myAniam.Play("break_mouth");
                break;
            case 18:
                myAniam.Play("dead_feetbreakdead");
                break;
            case 19:
                myAniam.Play("fishhithead");
                break;
            case 20:
                myAniam.Play("idle_feedandbellybreak");
                break;
            case 21:
                myAniam.Play("idle_feedandmouthbreak");
                break;
            case 22:
                myAniam.Play("resume_feed");
                break;
            case 23:
                myAniam.Play("SP");
                break;
            case 24:
                myAniam.Play("SP_2");
                break;
            default:
                break;
        }
    }
   
    public void myFindAllMQAndAttack()
    {
        GameObject[] myMQ = GameObject.FindGameObjectsWithTag("MQ");
        for (int a = 0; a < myMQ.Length; a++)
        {
            myMQ[a].GetComponent<onMQVer3>().myHP--;
        }
    }
}
