using UnityEngine;
using System.Collections;
using UnityEngine.UI;
public class OnMQ : MonoBehaviour {
    public UnityEngine.AI.NavMeshAgent agent;
    public GameObject goal;
    public GameObject whoIsChaseMe;
    public ParticleSystem[] myPTS; 
    public string mytitle;
    public int myHP;
    public int myAttack;
    public float myTimer;
    public float myAttackTimer;
    public int myid;
    public int myMod;//1=待機 2=移動到指定目標 3=保護 4=指定攻擊怪物 5=被怪物追擊 6=戰鬥 7=死掉
    public float myMoveSpeed;
    public bool willBeAttack;
    public float mydis;
    // Use this for initialization
    void Start()
    {
        agent = GetComponent<UnityEngine.AI.NavMeshAgent>();
        goal = GameObject.Find("Player");
        myMod = 3;
        //print("1=待機");
    }

    // Update is called once per frame
    void Update()
    {
        if (myHP <= 0) {
            myHP = 0;
            myMod = 7;
        }
        isPickMeUp();
        myMQModController();
        myParticleControll();
        //if (goal = null) { }
    }
    public void myParticleControll()
    {
        for (int a = 0; a < myPTS.Length; a++) {
            myPTS[a].maxParticles = myHP;
            myPTS[a].emissionRate = myPTS[a].maxParticles *1 / 3;
        }
    }
    public void myMQModController()
    {
        switch (myMod)
        {
            case 1://idle
                forMod1();
                break;
            case 2://move to mouse point
                forMod2();
                break;
            case 3://protect player
                forMod3();
                break;
            case 4://is killing time
                forMod4();
                break;
            case 5://be chase
                forMod5();
                break;
            case 6://fighting
                forMod6();
                break;
            case 7://GG
                forMod7();
                break;
        }
    }
    public void forMod1() {//idle
        goal = gameObject;
        agent.destination = goal.transform.position;
    }
    public void forMod2() {//move to somewhere
        forMod3();
        /*        agent.speed = myMoveSpeed;
                agent.destination = goal.transform.position;
          */
    }
    public void forMod3() {//follow player
        if (goal.GetComponent<OnPlayer>().myMod == 3) {
            //print("MQ formod3 player mod = 3");
            if (goal.GetComponent<OnPlayer>().whoIsChaseMe == null) { }
            whoIsChaseMe = goal.GetComponent<OnPlayer>().whoIsChaseMe.gameObject;
            goal = whoIsChaseMe;
            myMod = 4;
            //print(gameObject.name + "'s mymod = " + myMod.ToString());
        }
        else if (Vector3.Distance(gameObject.transform.position, goal.transform.position) <= mydis)
        {
            agent.speed = 0;
        }
        else {
            agent.speed = myMoveSpeed;
            agent.destination = goal.transform.position;
        }
        
    }
    public void forMod4() {//attack monster
        //print(gameObject.name + "'s mymod = " + myMod.ToString());
        if (goal == null) { myMod = 3;
            goal = GameObject.Find("Player");
        }
        if (Vector3.Distance(gameObject.transform.position, goal.transform.position) <= 1.5)
        {
            if (GameObject.Find("Player").GetComponent<OnPlayer>().myMod == 3)
            {
                agent.speed = 0;
                myMod = 6;

            }
            else {
                agent.speed = 0;
                print(gameObject.name+" 離怪物 購進拉！！是時候打打了");
                print(gameObject.name + "'s mymod = " + myMod.ToString());
                goal.GetComponent<OnMonster>().myMod = 4;
                goal.GetComponent<OnMonster>().myChaseTarget = gameObject;
                myMod = 6;
                print("6=戰鬥");
            }

        }
        else {
            agent.speed = myMoveSpeed;
            agent.destination = goal.transform.position;
        }
    }
    public void forMod5() {//be chase
        //print(gameObject.name + "be chase");
        if (whoIsChaseMe == null) {
            myMod = 3;
            goal = GameObject.Find("Player");
        }
        else {
            if (Vector3.Distance(gameObject.transform.position, whoIsChaseMe.transform.position) <= 1.5)
            {
                goal = whoIsChaseMe;
                myMod = 6;
                //print(gameObject.name + "6=戰鬥");
            }
            else {
                //print(gameObject.name + "be chase but keep follow player");
                agent.destination = goal.transform.position;
            }
        }
        
    }
    public void forMod6() {//fight
        if (goal == null)
        {
            goal = GameObject.Find("Player");
            myMod = 3;
        }
        else {
            myTimer += Time.deltaTime;
            if (myTimer >= myAttackTimer)
            {
                goal.GetComponent<OnMonster>().forHitEffect(0, myAttack.ToString(), "B");
                goal.GetComponent<OnMonster>().myHP -= myAttack;
                goal.GetComponent<OnMonster>().myMod = 6;
                if (goal.GetComponent<OnMonster>().myHP <= 0)
                {
                    goal.GetComponent<OnMonster>().myHP = 0;
                    Destroy(goal.gameObject);
                    //goal.GetComponent<OnMonster>().myMod = 5;
                    goal = GameObject.Find("Player");
                    myMod = 3;
                }
                //print("蚊子攻擊打我的目標一下拉");
                myTimer = 0;
            }
        }

        
    }
    public void forMod7() {//die
        print("MQ is GG lo");
        Destroy(gameObject);
    }
    public void whenMQDead() { }
    public void whenMQAttack() { }
    public void whenMQUnderAttack() { }
    public void whenMQTimerWorking() { }
    public void isPickMeUp()
    {
        if (GameObject.Find("MainCamera").GetComponent<OnCameraForMainControll>().myTeamMod == myid)
        {
            //GameObject.Find(myid.ToString()).GetComponent<Text>().text = "!!!!!!!!!!!!!!!";
            if (Input.GetMouseButton(0))
            {
                GetComponent<LineRenderer>().SetPosition(0, gameObject.transform.position);
                GetComponent<LineRenderer>().SetPosition(1, GameObject.Find("MainCamera").GetComponent<OnCameraForMainControll>().mymousepoint.transform.position);
            }
            if (Input.GetMouseButtonUp(0))
            {
                GetComponent<LineRenderer>().SetPosition(0, gameObject.transform.position);
                GetComponent<LineRenderer>().SetPosition(1, gameObject.transform.position);
            }
        }
        else {
            //if (GameObject.Find(myid.ToString())) GameObject.Find(myid.ToString()).GetComponent<Text>().text = "";
            GetComponent<LineRenderer>().SetPosition(0, gameObject.transform.position);
            GetComponent<LineRenderer>().SetPosition(1, gameObject.transform.position);
        }
    }
}
