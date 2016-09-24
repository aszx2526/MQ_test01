using UnityEngine;
using System.Collections;

public class OnPlayer : MonoBehaviour {
    public NavMeshAgent agent;
    public GameObject playersGoal;
    public GameObject whoIsChaseMe;
    public string mytitle;
    public int myHP;
    public int myAttack;
    public float myTimer;
    public float myAttackTimer;
    public bool willBeAttack;
    public int myMod;//1=走向終點站 2=被追擊了 3=進入戰鬥 4=死掉
    public float myMoveSpeed;

	// Use this for initialization
	void Start () {
        agent = GetComponent<NavMeshAgent>();
        myMod = 1;
    }
	
	// Update is called once per frame
	void Update () {
        myPlayerModController();
    }
    public void myPlayerModController() {
        switch (myMod) {
            case 1://move to goal
                forMod1();
                break;
            case 2:// be chase
                forMod2();
                break;
            case 3:// fighting
                forMod3();
                break;
            case 4://game over
                forMod4();
                break;
        }
    }
    public void forMod1() {
        agent.speed = myMoveSpeed;
        agent.destination = playersGoal.transform.position;
    }
    public void forMod2() {
        if (Vector3.Distance(gameObject.transform.position, whoIsChaseMe.transform.position) <= 1.5f) {
            print("被抓到了，進入戰鬥");
            myMod = 3;
        }
    }
    public void forMod3() {//fight
        if (whoIsChaseMe == null) { myMod = 1; }
        else {
            agent.speed = 0;
            gameObject.transform.LookAt(whoIsChaseMe.transform);
            myTimer += Time.deltaTime;
            if (myTimer >= myAttackTimer)
            {
                if (whoIsChaseMe.GetComponent<OnMonster>().willBeAttack) {
                    whoIsChaseMe.GetComponent<OnMonster>().forHitEffect(0, myAttack.ToString(), "B");
                    whoIsChaseMe.GetComponent<OnMonster>().myHP -= myAttack;
                    if (whoIsChaseMe.GetComponent<OnMonster>().myHP <= 0)
                    {
                        whoIsChaseMe.GetComponent<OnMonster>().myMod = 5;
                        whoIsChaseMe = null;
                        myMod = 1;
                    }
                    print("主角打追我的人一下拉！哼哼！！");
                    myTimer = 0;
                }
                else {

                }
                
            }
        }
        
    }
    public void forMod4() {
        print("GG主角屎惹");
    }
    public void forMod5() {

    }
    public void OnTriggerEnter(Collider someOneInTrigger) {
        if (someOneInTrigger.tag == "Monster")
        {
            someOneInTrigger.GetComponent<OnMonster>().willBeAttack = true;
        }
    }
    public void OnTriggerStay(Collider someOneInTrigger) {
        if (someOneInTrigger.tag == "Monster") {
            whoIsChaseMe = someOneInTrigger.gameObject;
            myMod = 3;
        }
    }
    public void OnTriggerExit(Collider someOneInTrigger) {
        if (someOneInTrigger.tag == "Monster")
        {
            someOneInTrigger.GetComponent<OnMonster>().willBeAttack = false;
        }
        
    }
}
