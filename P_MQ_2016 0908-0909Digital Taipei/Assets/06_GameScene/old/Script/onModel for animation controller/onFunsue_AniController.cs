using UnityEngine;
using System.Collections;

public class onFunsue_AniController : MonoBehaviour {
    Animator anima;
    public int myAniMod = 0;
    public float myAniTimer;
    public float mymovespeed;
    public GameObject myMod;
    public Renderer[] myRenderMash;//取得所有模型物件，被打到的時候要閃一下
    public Material[] m;
    void Start()
    {
        myMod = transform.parent.gameObject;
        anima = GetComponent<Animator>();
        mymovespeed = myMod.GetComponent<OnPlayer>().myMoveSpeed;
    }
    void Update()
    {
        //funsue.material.color.r = 255;
        switch (GetComponentInParent<OnPlayer>().myMod)//取得怪物現在的狀態然後進行表演
        {
            case 1://0=move
                ani_move();
                break;
            case 2://1=idle
                ani_move();
                break;
            case 3://2=attack
                ani_attack();
                break;
            case 5://3=injured
                ani_injured();
                break;
            case 4://death
                ani_die();
                break;
            default:
                break;
        }
        /*if (GetComponentInParent<OnPlayer>().isMyMobIdle) { myAniMod = 1; }
        else { myAniMod = 0; }*/
        myAnimationController();
        /*if (myBIV.pauseCheck) { }//暫停不做事情
        else {
            //myAnimationController();
        }*/
    }
    public void ani_attack() {
        myMod.GetComponent<UnityEngine.AI.NavMeshAgent>().speed = 0;
        myAniMod = 5;
    }
    public void ani_die() {
        myMod.GetComponent<UnityEngine.AI.NavMeshAgent>().speed = 0;
        myAniMod = 6;
    }
    public void ani_idle() {
        myAniMod = 1;
    }
    public void ani_injured() {
        myMod.GetComponent<UnityEngine.AI.NavMeshAgent>().speed = 0;
        myAniMod = 4;
    }
    public void ani_move()
    {
        myAniMod = 0;
    }
    void myAnimationController() {
        switch (myAniMod) {
            case 0:
                anima.Play("walk");
                meshTurnBack();
                break;
            case 1:
                if (GetComponentInParent<OnPlayer>().myMod == 2) {
                    ani_attack();
                }
                else {
                    //float a;
                    //a = Random.Range(1, 3);//0, 1);
                    //if (a > 1) {
                        anima.Play("idle1", 0);
                    //} else {
                      //  anima.Play("idle2", 0);
                    //}
                   /* if (myAniTimer >= GetComponentInParent<OnPlayer>().myidletimer_now) {
                        myAniMod = 0;
                        myAniTimer = 0;
                    }
                    else {
                        meshTurnBack();
                        myAniTimer += Time.deltaTime;
                    }*/
                }
                break;
            case 3:
                anima.Play("run", 0);
                if (myAniTimer >= 0.93) {
                    GetComponentInParent<OnPlayer>().myMod = 0;
                    myAniTimer = 0; }
                else { myAniTimer += Time.deltaTime; }
                break;
            case 4:
                anima.Play("injured", 0);
                if (myAniTimer >= 0.66) {
                    meshTurnBack();
                    GetComponentInParent<OnPlayer>().myMod = 0;
                    myAniTimer = 0;
                    myMod.GetComponent<UnityEngine.AI.NavMeshAgent>().speed = mymovespeed;
                }
                else {
                    meshTurnRed();
                    myAniTimer += Time.deltaTime;
                }
                break;
            case 5:
                anima.Play("attack");
                if (myAniTimer >= 2.167/2) {
                    GetComponentInParent<OnPlayer>().myMod = 0;
                    //GetComponentInParent<OnPlayer>().isAttackFinish = true;
                    myAniTimer = 0;
                    myMod.GetComponent<UnityEngine.AI.NavMeshAgent>().speed = mymovespeed;
                }
                else {
                    meshTurnBack();
                    myAniTimer += Time.deltaTime;
                }
                break;
            case 6:
                anima.Play("death", 0);
                if (myAniTimer >= 0.83) {
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
    public void meshTurnRed() {
        for (int a = 0; a < myRenderMash.Length; a++)
        {
            myRenderMash[a].material = m[1];
        }
    }
    public void meshTurnBack() {
        for (int a = 0; a < myRenderMash.Length; a++)
        {
            myRenderMash[a].material = m[0];
        }
    }
}
