using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class onCamera_dtg : MonoBehaviour {
    public float myCameraRotationSpeed;
    public int myCameraMod;
    public GameObject myFather;
    // Use this for initialization
    void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
        if (Input.GetMouseButtonDown(0)) {
            if (myCameraMod > 3) { myCameraMod = 0; }
            else {
                Quaternion rotate = myFather.transform.rotation;
                print("rotate to vector3 = " + Quaternion.ToEulerAngles(rotate));
                
                myCameraMod++;
            }
            //iTween.RotateTo(gameObject, new Vector3(0, 10, 0), 1);
            //transform.Rotate(new Vector3(0, 1, 0));

        }
        if (Input.GetMouseButton(1)) {
            transform.Rotate(new Vector3(0, -1, 0));
        }
        CameraRotationFN();
    }

    /*
    大眼   ->rotation(0,0,0)      position(0,0.035,0)   camera Fild of View:30
    左副眼 ->rotation(0,-115,0)   position(0,,0)   camera Fild of View: 15
    左翅膀 ->rotation(0,-48,0)       position(0,,0)   camera Fild of View:
    右副眼 ->rotation(0,98,0)       position(0,,0)   camera Fild of View:
    右翅膀 ->rotation(0,60,0)       position(0,,0)   camera Fild of View:
        
        */
    public void CameraRotationFN() {
        Quaternion rotate = myFather.transform.rotation;
        
        switch (myCameraMod) {
            case 0:
                //rotate = Quaternion.Euler(0, 0, 0);
                //gameObject.transform.rotation = Quaternion.Lerp(gameObject.transform.rotation, rotate, Time.deltaTime * myCameraRotationSpeed);
                Vector3 aa = Quaternion.ToEulerAngles(rotate);
                iTween.RotateTo(gameObject, aa, 1);
                break;
            case 1:
                //rotate = Quaternion.Euler(0, -115, 0);
                //rotate.y = Quaternion.
                gameObject.transform.rotation = Quaternion.Lerp(gameObject.transform.rotation, rotate, Time.deltaTime * myCameraRotationSpeed);
                //iTween.RotateTo(gameObject, new Vector3(0, -115, 0), 1);
                break;
            case 2:
                rotate = Quaternion.Euler(0, -48, 0);
                gameObject.transform.rotation = Quaternion.Lerp(gameObject.transform.rotation, rotate, Time.deltaTime * myCameraRotationSpeed);
                //iTween.RotateTo(gameObject, new Vector3(0, -48, 0), 1);
                break;
            case 3:
                rotate = Quaternion.Euler(0, 98, 0);
                gameObject.transform.rotation = Quaternion.Lerp(gameObject.transform.rotation, rotate, Time.deltaTime * myCameraRotationSpeed);
                //iTween.RotateTo(gameObject, new Vector3(0, 98, 0), 1);
                break;
            case 4:
                rotate = Quaternion.Euler(0, 60, 0);
                gameObject.transform.rotation = Quaternion.Lerp(gameObject.transform.rotation, rotate, Time.deltaTime * myCameraRotationSpeed);
                //iTween.RotateTo(gameObject, new Vector3(0, 60, 0), 1);
                break;
        }
    }
}
 