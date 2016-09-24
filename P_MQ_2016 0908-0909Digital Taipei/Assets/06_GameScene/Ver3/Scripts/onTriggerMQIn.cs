using UnityEngine;
using System.Collections;

public class onTriggerMQIn : MonoBehaviour {
    public GameObject myFather;
    public int myTriggerMod;
	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}
    void OnTriggerEnter(Collider other) {
        if (other.tag == "MQ") {
            if (myFather.GetComponent<OnLookAtPoint>().myHP <= 0) {
                if (myFather.name == "hitpoint-2" || myFather.name == "hitpoint-3") {
                    other.GetComponent<onMQVer3>().myMoveSpeed = 0;
                    other.GetComponent<onMQVer3>().isAttackTime = true;
                    other.GetComponent<onMQVer3>().isNeedToMoveToNextPoint = false;
                    other.transform.parent = myFather.transform;
                }
                else { }
            }
            else {
                if (myFather.name == other.GetComponent<onMQVer3>().myTargetPoint.name)
                {
                    other.GetComponent<onMQVer3>().myMoveSpeed = 0;
                    other.GetComponent<onMQVer3>().isAttackTime = true;
                    other.GetComponent<onMQVer3>().isNeedToMoveToNextPoint = false;
                    other.transform.parent = myFather.transform;
                }
            }
            
        }
    }
}
