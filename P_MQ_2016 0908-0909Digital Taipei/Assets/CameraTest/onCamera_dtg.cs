using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class onCamera_dtg : MonoBehaviour {
    public float myCameraRotationSpeed;
    public int myCameraMod;
    public Camera myMainCamera;
    public GameObject[] myMonsterList;
    public int myPickUpNum;
    public GameObject[] theLookAtPointOnMonster;
    public GameObject myLookAtPoint;
    public bool isMoveTime;
    public float myZoonSpeed;

    public float myPosY;
    // Use this for initialization
    void Start () {
        myMainCamera = GameObject.Find("MainCamera").gameObject.GetComponent<Camera>();
        transform.position = myMonsterList[myPickUpNum].transform.position;
        theLookAtPointOnMonster = myMonsterList[myPickUpNum].GetComponent<onMonsterVer3>().MyHitpointList;
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
    public float testy;
    public void CameraRotationFN() {

        switch (myCameraMod) {
            case 0:
                //3.8>6.3
                myCameraRotateFN(0,30, 6.3f);
                break;
            case 1:
                myCameraRotateFN(-1.3f,15,7f);
                break;
            case 2:
                myCameraRotateFN(1f, 15, 7.5f);
                break;
            case 3:
                myCameraRotateFN(0.5f, 23, 5.5f);
                break;
            case 4:
                myCameraRotateFN(-0.5f, 23, 5.5f);
                break;
        }
        myCameraLookAtPointMoveFN();
    }
    public void myCameraRotateFN(float rotateValue,float myfieldOfView, float myPosYTrimming) {
        //旋轉
        Quaternion a = myMonsterList[myPickUpNum].transform.rotation;
        a.y = rotateValue;
        transform.rotation = Quaternion.Lerp(transform.rotation, a, Time.deltaTime * myCameraRotationSpeed);

        //縮放鏡頭
        if (myMainCamera.fieldOfView > myfieldOfView) { myMainCamera.fieldOfView -= Time.deltaTime * myZoonSpeed; }
        else if (myMainCamera.fieldOfView < myfieldOfView-1) { myMainCamera.fieldOfView += Time.deltaTime * myZoonSpeed; }
        else { myMainCamera.fieldOfView = myfieldOfView; }

        Vector3 myPos = myMonsterList[myPickUpNum].transform.position;
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
 