using UnityEngine;
using System.Collections;

public class OnMonsterATTG : MonoBehaviour {
    public void OnTriggerEnter(Collider TargetInMyTrigger)
    {
        if (TargetInMyTrigger.tag == "Player")
        {
            TargetInMyTrigger.GetComponent<OnPlayer>().willBeAttack = true;
        }
        else if(TargetInMyTrigger.tag == "MQ") {
            TargetInMyTrigger.GetComponent<OnMQ>().willBeAttack = true;
        }
    }
    public void OnTriggerExit(Collider TargetInMyTrigger)
    {
        if (TargetInMyTrigger.tag == "Player")
        {
            TargetInMyTrigger.GetComponent<OnPlayer>().willBeAttack = false;
        }
        else if (TargetInMyTrigger.tag == "MQ")
        {
            TargetInMyTrigger.GetComponent<OnMQ>().willBeAttack = false;
        }
    }
}
