using UnityEngine;
using System.Collections;

public class OnIceBearForTest : MonoBehaviour {
    public Animator anima;
    //public int myAniMod = 0;
    //public float myAniTimer;
    //public float mymovespeed;
    //public GameObject myMod;
    //public Renderer[] myRenderMash;//取得所有模型物件，被打到的時候要閃一下
    //public Material[] m;
    //BattleInfoView myBIV;
    void Start()
    {
        anima.Play("attack");
        //myMod = transform.parent.gameObject;
        //anima = GetComponent<Animator>();
        //mymovespeed = myMod.GetComponent<OnMonster>().mymovespeed;
    }
    void Update()
    {
        //anima.Play("attack");
    }
    public void aniBeSlow() {
        //anima.anim("attack");
        anima.speed = 0.05f;
    }
    public void aniBeNormal() { /*anima.speed = 1f;*/ }




}
