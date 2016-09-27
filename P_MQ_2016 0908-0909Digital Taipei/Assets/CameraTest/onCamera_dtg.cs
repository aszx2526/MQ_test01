using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class onCamera_dtg : MonoBehaviour {
    public float myCameraRotationSpeed;
    public int myCameraMod;
    public Camera myMainCamera;
    public GameObject myFather;
    public GameObject[] theLookAtPointOnMonster;
    public GameObject myLookAtPoint;
    public bool isMoveTime;
    public float myZoonSpeed;

    public float myPosY;
    // Use this for initialization
    void Start () {
        myMainCamera = GameObject.Find("MainCamera").gameObject.GetComponent<Camera>();
    }
	
	// Update is called once per frame
	void Update () {
        if (Input.GetMouseButtonDown(0)) {
            isMoveTime = true;
             if (myCameraMod > 3) { myCameraMod = 0; }
             else {
                 myCameraMod++;
             }
        }
        CameraRotationFN();
        /*print(transform.position);
        Vector3 aaa = transform.position;
        aaa.y = myPosY;
        transform.position = Vector3.Lerp(transform.position, aaa, Time.deltaTime * myCameraRotationSpeed);*/
    }
    public void CameraRotationFN() {

        switch (myCameraMod) {
            case 0:
                myCameraRotateFN(0,30,3.8f);
                break;
            case 1:
                myCameraRotateFN(-1.3f,15,4.5f);
                break;
            case 2:
                myCameraRotateFN(-0.5f,23,3);
                break;
            case 3:
                myCameraRotateFN(1f,15,5);
                break;
            case 4:
                myCameraRotateFN(0.5f,23,3);
                break;
        }
        myCameraLookAtPointMoveFN();
    }
    public void myCameraRotateFN(float rotateValue,float myfieldOfView, float myPosYTrimming) {
        //旋轉
        Quaternion a = myFather.transform.rotation;
        a.y = rotateValue;
        transform.rotation = Quaternion.Lerp(transform.rotation, a, Time.deltaTime * myCameraRotationSpeed);

        //縮放鏡頭
        if (myMainCamera.fieldOfView > myfieldOfView) { myMainCamera.fieldOfView -= Time.deltaTime * myZoonSpeed; }
        else if (myMainCamera.fieldOfView < myfieldOfView-1) { myMainCamera.fieldOfView += Time.deltaTime * myZoonSpeed; }
        else { myMainCamera.fieldOfView = myfieldOfView; }

        Vector3 myPos = myFather.transform.position;
        myPos.y = myPosYTrimming;
        transform.position = Vector3.Lerp(transform.position, myPos, Time.deltaTime * myCameraRotationSpeed);
    }
    public void myCameraLookAtPointMoveFN() {
        if (Vector3.Distance(myLookAtPoint.transform.position, theLookAtPointOnMonster[myCameraMod].transform.position) < 0.1)
        {
            isMoveTime = false;
        }
        else {
            if(isMoveTime)myLookAtPoint.transform.position = Vector3.Lerp(myLookAtPoint.transform.position, theLookAtPointOnMonster[myCameraMod].transform.position, Time.deltaTime * myCameraRotationSpeed);
        }
    }
}
 