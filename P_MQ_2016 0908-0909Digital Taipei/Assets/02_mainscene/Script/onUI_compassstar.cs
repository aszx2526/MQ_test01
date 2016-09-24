using UnityEngine;
using System.Collections;

public class onUI_compassstar : MonoBehaviour {
    
	// Use this for initialization
	void Start () {
        Input.gyro.enabled = true;

    }

    // Update is called once per frame
    void Update () {
        RectTransform a = GetComponent<RectTransform>();
        //a.Rotate(0, 0, -Input.gyro.rotationRateUnbiased.z);
        Quaternion q = a.rotation;
        //q.z += Time.deltaTime;
        q.z = -Input.gyro.rotationRateUnbiased.x*0.5f;
        a.rotation = q;


    }
}
