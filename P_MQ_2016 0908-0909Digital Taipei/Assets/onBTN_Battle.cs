using UnityEngine;
using System.Collections;

public class onBTN_Battle : MonoBehaviour {
    public GameObject myTargetPos;
    public GameObject myCameraLookControll_bigeye;
    // Use this for initialization
    void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
        if (myCameraLookControll_bigeye.GetComponent<onCameraLookController_Bigeye>().myPickUpNum != 0) {
            transform.position = Vector3.Lerp(transform.position, myTargetPos.transform.position, Time.deltaTime * 2);
        }
	}
}
