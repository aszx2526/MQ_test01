using UnityEngine;
using System.Collections;

public class onBear_Anicontroller : MonoBehaviour {
    Animator anima;
    public int myAniMod = 0;
    public float myAniTimer;
    public float myMoveSpeed;
    public GameObject myMod;
    public Renderer[] myRenderMash;//取得所有模型物件，被打到的時候要閃一下
    public Material[] m;
    void Start()
    {
        myMod = transform.parent.gameObject;
        anima = GetComponent<Animator>();
        myMoveSpeed = myMod.GetComponent<OnMonster>().mymovespeed;
    }
    void Update()
    {
        //funsue.material.color.r = 255;
        switch (GetComponentInParent<OnMonster>().myMod)//取得怪物現在的狀態然後進行表演
        {
            case 1://idle
                ani_idle();
                break;
            /*case 1://move
                ani_move();
                break;*/
            case 2://move
                ani_move();
                break;
            case 3://chase追
                ani_move();
                break;
            case 4://attack
                ani_attack();
                break;
            case 5://death
                ani_die();
                break;
            case 6://injured
                ani_injured();
                break;
            default:
                break;
        }
        /*if (GetComponentInParent<OnMonster>().isMyMobIdle) { myAniMod = 1; }
        else { myAniMod = 0; }*/
        myAnimationController();
       /* if (myBIV.pauseCheck) { }//暫停不做事情
        else {
            //myAnimationController();
        }*/
    }
    public void ani_attack()
    {
        myMod.GetComponent<NavMeshAgent>().speed = 0;
        myAniMod = 5;
    }
    public void ani_die()
    {
        myMod.GetComponent<NavMeshAgent>().speed = 0;
        myAniMod = 6;
    }
    public void ani_idle()
    {
        myAniMod = 1;
    }
    public void ani_injured()
    {
        myMod.GetComponent<NavMeshAgent>().speed = 0;
        myAniMod = 4;
    }
    public void ani_move()
    {
        myAniMod = 0;
    }
    void myAnimationController()
    {
        switch (myAniMod)
        {
            case 0:
                anima.Play("walk");
                meshTurnBack();
                break;
            case 1:
                if (GetComponentInParent<OnMonster>().myMod == 2)
                {
                    ani_attack();
                }
                else {
                    anima.Play("idle", 0);
                    if (myAniTimer >= GetComponentInParent<OnMonster>().myidletimer_now)
                    {
                        myAniMod = 0;
                        myAniTimer = 0;
                    }
                    else {
                        meshTurnBack();
                        myAniTimer += Time.deltaTime;
                    }
                }
                break;
            case 4:
                anima.Play("injured", 0);
                if (myAniTimer >= 0.73)
                {
                    meshTurnBack();
                    //GetComponentInParent<OnMonster>().isInjuredFinish=true;
                    GetComponentInParent<OnMonster>().myMod = 4;
                    myAniTimer = 0;
                    myMod.GetComponent<NavMeshAgent>().speed = myMoveSpeed;
                }
                else {
                    meshTurnRed();
                    myAniTimer += Time.deltaTime;
                }
                break;
            case 5:
                anima.Play("attack");
                if (myAniTimer >= 1.5)
                {
                    GetComponentInParent<OnMonster>().myMod = 4;
                    GetComponentInParent<OnMonster>().isAttackFinish = true;
                    myAniTimer = 0;
                    //myMod.GetComponent<NavMeshAgent>().speed = myMoveSpeed;
                }
                else {
                    meshTurnBack();
                    myAniTimer += Time.deltaTime;
                }
                break;
            case 6:
                anima.Play("death", 0);
                if (myAniTimer >= 2.667)
                {
                    myAniMod = 0;
                    myAniTimer = 0;
                    Destroy(myMod);
                }
                else { myAniTimer += Time.deltaTime; }
                break;
            default:
                break;
        }
    }
    public void meshTurnRed()
    {
        for (int a = 0; a < myRenderMash.Length; a++)
        {
            myRenderMash[a].material = m[1];
        }
    }
    public void meshTurnBack()
    {
        for (int a = 0; a < myRenderMash.Length; a++)
        {
            myRenderMash[a].material = m[0];
        }
    }
}
