using UnityEngine;
using System.Collections;
using UnityEngine.UI;
public class onIceBearForAniControll : MonoBehaviour {
    public int myAniMod;
    public Animator myAniam;
    public Text mytextGroup;
    public Text mytextAnimMod;
    public GameObject myFatherObject;//父物件
    [Header("耳朵滿血血量")]
    public float myEarFullHP;
    [Header("耳朵血量")]
    public float myEarHP;
    [Header("耳朵復原時間")]
    public float myEarResumeTime;
    public float myEarResumeTimer;

    [Header("嘴巴滿血血量")]
    public float myMouthFullHP;
    [Header("嘴巴血量")]
    public float myMouthHP;
    [Header("嘴巴復原時間")]
    public float myMouthResumeTime;
    public float myMouthResumeTimer;

    [Header("腳滿血血量")]
    public float myFeetFullHP;
    [Header("腳血量")]
    public float myFeetHP;
    [Header("腳復原時間")]
    public float myFeetResumeTime;
    public float myFeetResumeTimer;

    public bool isEargood;
    public bool isMouthgood;
    public bool isBellygood;
    public bool isFeetgood;

    public int myIdleRandom;

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
    public float myskillCDTimer_eatfish;
    public float myEatFishLoopTime;
    public float myEatFishLoopTimer;
    [Header("迴旋斬CD時間")]
    public float myskillCDTime_gyrohit;
    float myskillCDTimer_grohit;
    public float myGrohitLoopTime;
    public float myGrohitLoopTimer;


    public bool isQTETime;
    public int myQTECount;
    public int myQTETargetValue;
    public float fadoutinSpeed;
    public void myBearSkill_BC_FishWave() { myAniMod = 11; }
    public void myBearSkill_BC_JumpHit() { myAniMod = 10; }
    public void myBearSkill_SP_EatFish() {
        if (myAniMod == 13) { }
        else if (myAniMod == 14) { }
        else {
            myAniMod = 12;
            
        }
    }
    public void myBearSkill_SP_GyroHit() {
        if (myAniMod == 16) { }
        else if (myAniMod == 17) { }
        else if (myAniMod == 20) { }
        else { myAniMod = 15; }


    }


    public void myBearAttackMod()
    {
        if (GameObject.Find("Morale_Monster").GetComponent<Image>().fillAmount < 0.2 && isFeetgood)//20%以下時
        {
            if (isCDTtime_gyrohit)
            {
                if (myskillCDTimer_grohit > myskillCDTimer_grohit)
                {
                    myskillCDTimer_grohit = 0;
                    isCDTtime_gyrohit = false;
                }
                else {
                    myskillCDTimer_grohit += Time.deltaTime;
                    if (isCDTtime_eatfish)
                    {
                        if (myskillCDTimer_eatfish > myskillCDTime_eatfish)
                        {
                            myskillCDTimer_eatfish = 0;
                            isCDTtime_eatfish = false;
                        }
                        else {
                            myskillCDTimer_eatfish += Time.deltaTime;
                            if (isCDTtime_jumphit)
                            {
                                if (myskillCDTimer_jumphit > myskillCDTime_jumphit)
                                {
                                    myskillCDTimer_jumphit = 0;
                                    isCDTtime_jumphit = false;
                                }
                                else {
                                    myskillCDTimer_jumphit += Time.deltaTime;
                                    myBearModControll();
                                }
                                if (isCDTtime_wave)
                                {
                                    if (myskillCDTimer_wave > myskillCDTime_wave)
                                    {
                                        isCDTtime_wave = false;
                                        myskillCDTimer_wave = 0;
                                    }
                                    else {
                                        myskillCDTimer_wave += Time.deltaTime;
                                        myBearModControll();
                                    }
                                }
                                else { myBearSkill_BC_FishWave(); }
                            }
                            else { myBearSkill_BC_JumpHit(); }
                        }
                    }
                    else {
                        myBearSkill_SP_EatFish();
                    }
                }
            }
            else {
                myBearSkill_SP_GyroHit();
            }
        }
        else if (GameObject.Find("Morale_Monster").GetComponent<Image>().fillAmount < 0.4 && isMouthgood)//40%以下時
        {
            myBearAttackHPMore20();
        }
        else {//40%以上時
            myBearAttackHPMore40();
        }
    }
    public void myBearAttackHPMore20()
    {
        print("be call");
        if (isCDTtime_eatfish)
        {
            if (myskillCDTimer_eatfish > myskillCDTime_eatfish)
            {
                myskillCDTimer_eatfish = 0;
                isCDTtime_eatfish = false;
            }
            else {
                myskillCDTimer_eatfish += Time.deltaTime;
                myBearAttackHPMore40();
            }
        }
        else {
            myBearSkill_SP_EatFish();
        }
    }
    public void myBearAttackHPMore40() {
        if (isCDTtime_jumphit)
        {
            if (myskillCDTimer_jumphit > myskillCDTime_jumphit)
            {
                myskillCDTimer_jumphit = 0;
                isCDTtime_jumphit = false;
            }
            else {
                myskillCDTimer_jumphit += Time.deltaTime;
                myBearModControll();
            }
            if (isCDTtime_wave)
            {
                if (myskillCDTimer_wave > myskillCDTime_wave)
                {
                    isCDTtime_wave = false;
                    myskillCDTimer_wave = 0;
                }
                else {
                    myskillCDTimer_wave += Time.deltaTime;
                    myBearModControll();
                }
            }
            else {myBearSkill_BC_FishWave();}
        }
        else {myBearSkill_BC_JumpHit();}
    }
    void Start()
    {

        isEargood = true;
        isMouthgood = true;
        isBellygood = true;
        isFeetgood = true;

        myEarHP = myEarFullHP;
        myFeetHP = myFeetFullHP;
        myMouthHP = myMouthFullHP;

        myAniam = gameObject.GetComponent<Animator>();
        //print("hehehaha");
    }
    void Update()
    {
        //print("HP = "+myFatherObject.GetComponent<onMonsterVer3>().myHP / myFatherObject.GetComponent<onMonsterVer3>().myFullHP);
        //mytextGroup.text = "第「" + myModControll + "」組的組合動畫";
        //mytextAnimMod.text = "動畫編號「" + myAniMod + "」";
        /* if (Input.GetKeyDown("."))
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
         }*/
        if (Input.GetKeyDown(KeyCode.Space))
        {
            myQTETouchCountFN();
        }
        if (isQTETime) { if (GameObject.Find("MainCamera").GetComponent<Camera>().fieldOfView > 30) { GameObject.Find("MainCamera").GetComponent<Camera>().fieldOfView -= Time.deltaTime * fadoutinSpeed; } }
        else {
            if (GameObject.Find("MainCamera").GetComponent<Camera>().fieldOfView < 60) { GameObject.Find("MainCamera").GetComponent<Camera>().fieldOfView += Time.deltaTime * fadoutinSpeed; }
        }
        
        myAniControll();
        myBearAttackMod();
        //myBearModControll();


    }
    public void myBearModControll()
    {//腿好嘴好-------------------------------------------------------------------1
        if (isFeetgood && isMouthgood) {
            if (myFeetHP <= 0)//如果腿的血沒有了，播放腿殘動畫
            {
                myAniMod = 25;
            }
            else if (myMouthHP <= 0)//如果嘴巴的血沒有了，播放嘴殘動畫
            {
                isMouthgood = false;
                //myAniMod = 61;
            }
            else if (myEarHP <= 0)//播放耳朵壞掉動畫
            {
                if (myAniMod == 20) { }
                else if (myAniMod == 21) { }
                else { myAniMod = 19; }
            }
            else {//播放好腳好嘴的待機動作
                if (isUnderAttack)
                {

                }
                else { }
                myAniMod = 0;
            }
        }
        else if (isFeetgood && !isMouthgood) {
            if (myMouthResumeTimer > myMouthResumeTime)
            {
                myMouthResumeTimer = 0;
                myMouthHP = myMouthFullHP;
                isMouthgood = true;
            }
            else if (myFeetHP <= 0)//如果腳的血沒了，播放腳殘動畫
            {
                myAniMod = 25;
            }
            else {
                myMouthResumeTimer += Time.deltaTime;
                myAniMod = 0;
            }

        }
        else if (!isFeetgood && isMouthgood) {
            if (myFeetResumeTimer > myFeetResumeTime)
            {
                myAniMod = 28;
            }
            else if (myMouthHP <= 0)//如果嘴的血沒了，播放嘴殘動畫
            {
                isMouthgood = false;
                //myAniMod = 62;
            }
            else {
                myFeetResumeTimer += Time.deltaTime;
                myAniMod = 29;
            }
        }
        else if (!isFeetgood && !isMouthgood) {
            if (myFeetResumeTimer > myFeetResumeTime)
            {
                myAniMod = 28;
            }
            else if (myMouthResumeTimer > myMouthResumeTime)//如果嘴的血沒了，播放嘴殘動畫
            {
                myMouthResumeTimer = 0;
                myMouthHP = myMouthFullHP;
                isMouthgood = true;
            }
            else {
                myFeetResumeTimer += Time.deltaTime;
                myMouthResumeTimer += Time.deltaTime;
                myAniMod = 23;
            }
        }
    }
    public void myAniControll()
    {
        switch (myAniMod)
        {
            case 0:
                if (!isMouthgood&&isBellygood) {
                    if (myIdleRandom > 50) { myAniam.Play("idle_attack"); }
                    else { myAniam.Play("breaking_mouth"); }
                }
                else if (!isMouthgood&&!isBellygood) {
                    if (myIdleRandom > 33) { myAniam.Play("idle_attack"); }
                    else if (myIdleRandom > 66) { myAniam.Play("breaking_belly"); }
                    else { myAniam.Play("breaking_mouth"); }
                }
                else if (isMouthgood&&!isBellygood) {
                    if (myIdleRandom > 50) { myAniam.Play("idle_attack"); }
                    else { myAniam.Play("breaking_belly"); }
                }
                else {
                    myAniam.Play("idle_attack");
                }
                /*
                 
                
                */
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
                //myAniam.speed = 0.1f;
                myAniam.Play("sk_sp_eatfigh_ready");
                break;
            case 13:
                if (myEatFishLoopTimer > myEatFishLoopTime) {
                    myEatFishLoopTimer = 0;
                    myAniMod = 14;
                }
                else {
                    myAniam.Play("sk_sp_eatfigh_eating");
                    myEatFishLoopTimer += Time.deltaTime;
                }               
                break;
            case 14:
                myAniam.Play("sk_sp_eatfigh_end");
                break;
            case 15:
                myAniam.Play("sk_sp_rollcut_ready");
                break;
            case 16:
                if (myGrohitLoopTimer > myGrohitLoopTime) {
                    myGrohitLoopTimer = 0;
                    myAniMod = 17;
                }
                else {
                    myGrohitLoopTimer += Time.deltaTime;
                    myAniam.Play("sk_sp_rollcut_rolling");
                }
                
                break;
            case 17:
                myAniam.Play("sk_sp_rollcut_dizzing");
                break;
            case 18:
                myAniam.Play("sk_sp_rollcut_dizzing_resume");
                break;
                //---------------------------------
            case 19:
                myAniam.Play("breaking_head_fighthitheadtodizzing");
                break;
            case 20:
                if (myEarResumeTimer > myEarResumeTime) {
                    myEarResumeTimer = 0;
                    myAniMod = 21;
                }
                else {
                    myAniam.Play("breaking_head_fighthithead_land_dizzing");
                    myEarResumeTimer += Time.deltaTime;
                    //myBearAttackHPMore20();
                }
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
            case 29:
                if (!isMouthgood && isBellygood)
                {
                    if (myIdleRandom > 50) { myAniam.Play("idle_LBs"); }
                    else { myAniam.Play("breaking_LBs_mouth"); }
                }
                else if (!isMouthgood && !isBellygood)
                {
                    if (myIdleRandom > 33) { myAniam.Play("idle_LBs"); }
                    else if (myIdleRandom > 66) { myAniam.Play("breaking_LBs_belly"); }
                    else { myAniam.Play("breaking_LBs_mouth"); }
                }
                else if (isMouthgood && !isBellygood)
                {
                    if (myIdleRandom > 50) { myAniam.Play("idle_LBs"); }
                    else { myAniam.Play("breaking_LBs_belly"); }
                }
                else {
                    myAniam.Play("idle_LBs");
                }

                break;
            default:
                break;
        }
    }
    public void LastFram_10_FN() { isCDTtime_jumphit = true; }
    public void LastFram_11_FN() { isCDTtime_wave = true; }
    public void FirstFram_12_FN() {
        myAniam.speed = 0.1f;
        isQTETime = true;
    }
    public void LastFram_12_FN() {
        isQTETime = false;
        if (myQTECount > myQTETargetValue) {
            isCDTtime_eatfish = true;
            myAniam.speed = 1;
            myQTECount = 0;
        }
        else {
            myAniam.speed = 1;
            myAniMod = 13;
        }
        
    }
    public void LastFram_14_FN() { isCDTtime_eatfish = true; }
    public void LastFram_15_FN() { myAniMod = 16; }
    public void LastFram_17_FN() { myAniMod = 20; }
    //public void LastFram_18_FN() { isCDTtime_gyrohit = true; }
    public void LastFram_19_FN() { myAniMod = 20; }
    public void LastFram_21_FN() {
        isCDTtime_gyrohit = true;
        isEargood = true;
        myEarHP = myEarFullHP;
        myAniMod = 0;
    }
    public void LastFram_LGIdle_FN() { myIdleRandom = Random.RandomRange(0, 101); }
    public void LastFram_25_FN() { isFeetgood = false; }
    public void LastFram_28_FN() { isFeetgood = true;
        myFeetResumeTimer = 0;
        myFeetHP = myFeetFullHP;
    }

    public void myFindAllMQAndAttack()
    {
        GameObject[] myMQ = GameObject.FindGameObjectsWithTag("MQ");
        for (int a = 0; a < myMQ.Length; a++)
        {
            myMQ[a].GetComponent<onMQVer3>().myHP--;
        }
    }
    public void myQTETouchCountFN() {
        if (isQTETime) {
            myQTECount++;
        }
    }
}
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
