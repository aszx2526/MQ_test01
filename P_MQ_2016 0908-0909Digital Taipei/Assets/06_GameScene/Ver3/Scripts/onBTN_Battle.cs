using UnityEngine;
using System.Collections;

public class onBTN_Battle : MonoBehaviour {
    public GameObject myTargetPos;
    public GameObject myBasicPos;
    public GameObject myCameraVer2_DTG;
    // Use this for initialization
    void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
        if (myCameraVer2_DTG.GetComponent<onCamera_dtg>().myPickUpNum != 0)
        {
            transform.position = Vector3.Lerp(transform.position, myTargetPos.transform.position, Time.deltaTime * 2);
        }
        else {
            transform.position = Vector3.Lerp(transform.position, myBasicPos.transform.position, Time.deltaTime * 2);
        }
	}
}
