using UnityEngine;
using System.Collections;

public class onMudBoss_AniController : MonoBehaviour {
    public Animator anima;
    public int myAniMod = 0;//0攻 1撞 2死 3待一 4待二 5擊 6備 7丟 8走
    public float myAniTimer;
    public GameObject myMod;
    //BattleInfoView myBIV;
    void Start()
    {

        GameObject myBattle = GameObject.Find("UIcontroller");
        //myBIV = myBattle.GetComponent<BattleInfoView>();
        anima = GetComponent<Animator>();
    }
    void Update()
    {
        if (Input.GetKeyUp("q")) { if (myAniMod > 7) { myAniMod = 0; } else { myAniMod++; } }
        myAnimationController();
        /*if (myBIV.pauseCheck) { }
        else {
            //myAnimationController();
        }*/
    }
    public void attack()
    {
        Debug.Log("企鵝attack be call");
        //myMod.GetComponent<NavMeshAgent>().speed = 0;
        myAniMod = 0;
    }
    public void die()
    {
        //Debug.Log("onFunsue die be call");
        //myMod.GetComponent<NavMeshAgent>().speed = 0;
        myAniMod = 2;
    }
    void myAnimationController()
    {
        switch (myAniMod)
        {

            case 0:
                anima.Play("attack", 0);
                break;
            case 1:

                anima.Play("charge", 0);
                /*
                if (myAniTimer >= 4) { myAniMod = 0; myAniTimer = 0; }
                else { myAniTimer += Time.deltaTime; }*/
                //myAnilength = this.GetComponent<Animation>()["idle1"].length;

                break;
            case 2:
                anima.Play("death", 0);
                /*  if (myAniTimer >= 1.66) { myAniMod = 0; myAniTimer = 0; }
                  else { myAniTimer += Time.deltaTime; }*/
                break;
            case 3:
                anima.Play("idle1", 0);
                /* if (myAniTimer >= 0.93) { myAniMod = 0; myAniTimer = 0; }
                 else { myAniTimer += Time.deltaTime; }*/
                break;
            case 4:
                anima.Play("idle2", 0);
                /* if (myAniTimer >= 0.66) { myAniMod = 0; myAniTimer = 0; }
                 else { myAniTimer += Time.deltaTime; }*/
                break;
            case 5:
                anima.Play("ready", 0);
                /* if (myAniTimer >= 0.83)
                 {
                     myAniMod = 0;
                     myAniTimer = 0;
                     Destroy(myMod);
                 }
                 else { myAniTimer += Time.deltaTime; }*/
                break;
            case 6:
                anima.Play("punching", 0);
                /* if (myAniTimer >= 2.167)
                 {
                     myAniMod = 0;
                     myAniTimer = 0;
                     myMod.GetComponent<NavMeshAgent>().speed = 2;
                 }
                 else { myAniTimer += Time.deltaTime; }*/
                break;

            case 7:
                anima.Play("throw", 0);
                /* if (myAniTimer >= 0.83)
                 {
                     myAniMod = 0;
                     myAniTimer = 0;
                     Destroy(myMod);
                 }
                 else { myAniTimer += Time.deltaTime; }*/
                break;
            case 8:
                anima.Play("walk", 0);
                /* if (myAniTimer >= 0.83)
                 {
                     myAniMod = 0;
                     myAniTimer = 0;
                     Destroy(myMod);
                 }
                 else { myAniTimer += Time.deltaTime; }*/
                break;
            default:
                break;
        }
    }
}
