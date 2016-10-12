using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class onCamera_dtg : MonoBehaviour {
    public float myCameraRotationSpeed;//攝影機旋轉速度
    public int myCameraMod;//攝影機的模式，簡單講就是攝影機現在看哪裡啦
    public Camera myMainCamera;//抓我的主攝影機
    public GameObject[] myMonsterList;//怪物清單
    public int myPickUpNum;//我選到哪一隻怪物 for mini map
    public GameObject[] theLookAtPointOnMonster;//hitpoint on monster
    public GameObject[] theHotPointOnMonster;
    public GameObject myLookAtPoint;//攝影機的焦點
    public bool isMoveTime;//是否為移動時間
    public float myZoonSpeed;//放大縮小的速度

    // Use this for initialization
    void Start () {
        myMainCamera = GameObject.Find("MainCamera").gameObject.GetComponent<Camera>();
       /* transform.position = myMonsterList[myPickUpNum-1].transform.position;
        theLookAtPointOnMonster = myMonsterList[myPickUpNum-1].GetComponent<onMonsterVer3>().MyHitpointList;*/
    }
	
	// Update is called once per frame
	void Update () {
        if (myPickUpNum != 0) {
            if (GameObject.Find("Canvas").GetComponent<onCanvasForUIControll>().isGameStart) { }
            else {
                transform.position = myMonsterList[myPickUpNum - 1].transform.position;
                theLookAtPointOnMonster = myMonsterList[myPickUpNum - 1].GetComponent<onMonsterVer3>().MyHitpointList;
                theHotPointOnMonster = myMonsterList[myPickUpNum - 1].GetComponent<onMonsterVer3>().myHotPointList;
            }
        }
        if (GameObject.Find("Canvas").GetComponent<onCanvasForUIControll>().isGameStart) { CameraRotationFN(); }
    }
    public void CameraRotationFN() {
        switch (myMonsterList[myPickUpNum - 1].tag) {
            case "monster_bigeye":
                if (myMonsterList[myPickUpNum - 1].gameObject.transform.GetChild(0).GetComponent<onBigeyeForAniControllVer2>().isWinggood == false) {
                    print("oncamera_dtg wing break");
                    switch (myCameraMod)
                    {
                        case 0:
                            //3.8>6.3
                            myCameraFN(0, 60, 2.3f);
                            break;
                        case 1:
                            myCameraFN(-1.3f, 40, 4.8f);
                            break;
                        case 2:
                            myCameraFN(1f, 30, 4.8f);
                            break;
                        case 3:
                            myCameraFN(0.5f, 47, 2.8f);
                            break;
                        case 4:
                            myCameraFN(-0.5f, 45, 2.8f);
                            break;
                    }
                }
                else {
                    switch (myCameraMod)
                    {
                        case 0:
                            //3.8>6.3
                            myCameraFN(0, 60, 2.3f);
                            break;
                        case 1:
                            myCameraFN(-1.3f, 40, 4.8f);
                            break;
                        case 2:
                            myCameraFN(1f, 30, 4.8f);
                            break;
                        case 3:
                            myCameraFN(0.5f, 47, 2.8f);
                            break;
                        case 4:
                            myCameraFN(-0.5f, 45, 2.8f);
                            break;
                    }
                }

                break;
            default:
                print("攝影機旋轉怪物清單為 null");
                break;
        }
        
        myCameraLookAtPointMoveFN();
    }
    //鏡頭相關的韓式，縮放阿，旋轉，移動座標等等
    public void myCameraFN(float rotateValue,float myfieldOfView, float myPosYTrimming) {
        //旋轉
        Quaternion a = myMonsterList[myPickUpNum-1].transform.rotation;
        a.y = rotateValue;
        transform.rotation = Quaternion.Lerp(transform.rotation, a, Time.deltaTime * myCameraRotationSpeed);

        //縮放鏡頭
        if (myMainCamera.fieldOfView > myfieldOfView) { myMainCamera.fieldOfView -= Time.deltaTime * myZoonSpeed; }
        else if (myMainCamera.fieldOfView < myfieldOfView-1) { myMainCamera.fieldOfView += Time.deltaTime * myZoonSpeed; }
        else { myMainCamera.fieldOfView = myfieldOfView; }

        Vector3 myPos = myMonsterList[myPickUpNum-1].transform.position;
        myPos.y = myPos.y+myPosYTrimming;
        transform.position = Vector3.Lerp(transform.position, myPos, Time.deltaTime * myCameraRotationSpeed);
    }
    //焦點移動韓式，如果焦點距離hitpoint 小於0.1就不要動啦，不然鏡頭一直晃不舒服
    public void myCameraLookAtPointMoveFN() {
        //if (Vector3.Distance(myLookAtPoint.transform.position, theHotPointOnMonster[myCameraMod].transform.position) < 0.1)
        if (myLookAtPoint.transform.position == theHotPointOnMonster[myCameraMod].transform.position)
        {
            isMoveTime = false;
        }
        else {
            if (isMoveTime) {
                myLookAtPoint.transform.position = Vector3.Lerp(myLookAtPoint.transform.position,
                                                                theHotPointOnMonster[myCameraMod].transform.position,
                                                                Time.deltaTime * myCameraRotationSpeed * 3.5f);
                /*myLookAtPoint.transform.position = Vector3.Lerp(myLookAtPoint.transform.position,
                                                                theLookAtPointOnMonster[myCameraMod].transform.position,
                                                                Time.deltaTime * myCameraRotationSpeed * 3.5f);*/
            }
            
        }
    }
    //控制看下一個可攻擊點或者上一個可攻擊點
    public void ScrollViewLeftControllFN()
    {
        isMoveTime = true;
        if (myCameraMod > 3) { myCameraMod = 0; }
        else { myCameraMod++; }
    }
    public void ScrollViewRightControllFN()
    {
        isMoveTime = true;
        if (myCameraMod < 1) { myCameraMod = 4; }
        else { myCameraMod--; }
    }
    public void BTN_onBigeye1()
    {
        //isNeedToFollow = true;
        /*gameObject.GetComponent<OnCameraForShootMQ>().myABulletCount = GameObject.Find("MiniMap").GetComponent<OnMiniMap>().TeamAAmount;
        gameObject.GetComponent<OnCameraForShootMQ>().myBBulletCount = GameObject.Find("MiniMap").GetComponent<OnMiniMap>().TeamBAmount;
        gameObject.GetComponent<OnCameraForShootMQ>().myCBulletCount = GameObject.Find("MiniMap").GetComponent<OnMiniMap>().TeamCAmount;
        gameObject.GetComponent<OnCameraForShootMQ>().myDBulletCount = GameObject.Find("MiniMap").GetComponent<OnMiniMap>().TeamDAmount;
        gameObject.GetComponent<OnCameraForShootMQ>().myEBulletCount = GameObject.Find("MiniMap").GetComponent<OnMiniMap>().TeamEAmount;*/
        myPickUpNum = 1;
    }
    public void BTN_onBigeye2() { myPickUpNum = 2; }
    public void BTN_onBigeye3() { myPickUpNum = 3; }
}
 