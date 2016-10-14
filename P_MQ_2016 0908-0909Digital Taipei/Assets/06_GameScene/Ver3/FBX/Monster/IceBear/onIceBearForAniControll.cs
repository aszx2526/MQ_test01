using UnityEngine;
using System.Collections;
using UnityEngine.UI;
public class onIceBearForAniControll : MonoBehaviour {
    public int myAniMod;
    public Animator myAniam;
    public Text mytextGroup;
    public Text mytextAnimMod;
    public GameObject myFatherObject;//父物件
    [Header("耳朵血量")]
    public float myBigeyeHP;
    [Header("耳朵復原時間")]
    public float myBigeyeResumeTimer;
    [Header("嘴巴血量")]
    public float myWingHP;
    [Header("嘴巴復原時間")]
    public float myWingResumeTimer;
    [Header("腳血量")]
    public float myOtherEyeHP;
    [Header("腳復原時間")]
    public float myOtherEyeResumeTimer;
  
    public bool isEargood;
    public bool isMouthgood;
    public bool isBellygood;
    public bool isFeetgood;


    public bool isCDTtime_wave;
    public bool isCDTtime_jumphit;
    public bool isCDTtime_eatfish;
    public bool isCDTtime_gyrohit;
    
    public bool isUnderAttack;


    [Header("揮擊CD時間")]
    public float myskillCDTime_wave;
    float myskillCDTimer_wave;
    [Header("跳擊CD時間")]
    public float myskillCDTime_jumphit;
    float myskillCDTimer_jumphit;
    [Header("啃魚CD時間")]
    public float myskillCDTime_eatfish;
    float myskillCDTimer_eatfish;
    [Header("迴旋斬CD時間")]
    public float myskillCDTime_gyrohit;
    float myskillCDTimer_grohit;

   
    public void myBearSkill_BC_FishWave() { }
    public void myBearSkill_BC_JumpHit() { }
    public void myBearSkill_SP_EatFish() { }
    public void myBearSkill_SP_GyroHit() { }


    public void myBearAttackMod()
    {
      /*  if (myFatherObject.GetComponent<onMonsterVer3>().myHP / 1000 < 0.2 && isBigEyegood)//20%以下時
        {
        
        }
        else {//20%以上時
          
        }*/
    }
    void Start()
    {
       /* isWinggood = true;
        isBigEyegood = true;*/
        myAniam = gameObject.GetComponent<Animator>();
        //print("hehehaha");
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
    public void myBearModControll()
    {
      /*  if (isBigEyegood && isWinggood)
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
        }*/
    }
    public void myAniControll()
    {
        switch (myAniMod)
        {
            case 0:
                myAniam.Play("idle_attack");
                break;
            case 1:
                myAniam.Play("idle_basic");
                break;
            case 2:
                myAniam.Play("dead_basic");
                break;
            case 3:
                myAniam.Play("run_ready");
                break;
            case 4:
                myAniam.Play("run_loop");
                break;
            case 5:
                myAniam.Play("run_end");
                break;
            case 6:
                myAniam.Play("turning");
                break;
            case 7:
                myAniam.Play("walk_ready");
                break;
            case 8:
                myAniam.Play("walk_loop");
                break;
            case 9:
                myAniam.Play("walk_end");
                break;

                //-----------------
            case 10:
                myAniam.Play("sk_bc_jumphit");
                break;
            case 11:
                myAniam.Play("sk_bc_twohandwavefish");
                break;
            case 12:
                myAniam.Play("sk_sp_eatfigh_ready");
                break;
            case 13:
                myAniam.Play("sk_sp_eatfigh_eating");
                break;
            case 14:
                myAniam.Play("sk_sp_eatfigh_end");
                break;
            case 15:
                myAniam.Play("sk_sp_rollcut_dizzing");
                break;
            case 16:
                myAniam.Play("sk_sp_rollcut_dizzing_resume");
                break;
            case 17:
                myAniam.Play("sk_sp_rollcut_ready");
                break;
            case 18:
                myAniam.Play("sk_sp_rollcut_rolling");
                break;
            case 19:
                myAniam.Play("breaking_head_fighthitheadtodizzing");
                break;
            case 20:
                myAniam.Play("breaking_head_fighthithead_land_dizzing");
                break;
            case 21:
                myAniam.Play("breaking_head_fighthithead_dizzing_resume");
                break;
            case 22:
                myAniam.Play("breaking_belly");
                break;
            case 23:
                myAniam.Play("breaking_LBs_belly");
                break;
            case 24:
                myAniam.Play("breaking_LBs_mouth");
                break;
            case 25:
                myAniam.Play("breaking_leg");
                break;
            case 26:
                myAniam.Play("breaking_mouth");
                break;
            case 27:
                myAniam.Play("dead_LB");
                break;
            case 28:
                myAniam.Play("resume_leg");
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
