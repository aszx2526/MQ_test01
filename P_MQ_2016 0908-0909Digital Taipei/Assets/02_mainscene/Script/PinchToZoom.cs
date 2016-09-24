using UnityEngine;
using System.Collections;

public class PinchToZoom : MonoBehaviour {
    public float perspectiveZoomSpeed = .5f;
    public float orthoZoomSpeed = .5f;
    
	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
        if (Input.touchCount == 2) {
         /*   Touch touch0 = Input.GetTouch(0);
            Touch touch1 = Input.GetTouch(1);

            Vector2 touch0PrevPos = touch0.position - touch0.deltaPosition;
            Vector2 touch1PrevPos = touch1.position - touch1.deltaPosition;

            float prevTouchDeltaMag = (touch0PrevPos - touch1PrevPos).magnitude;
            float touchDeltaMag = (touch0.position - touch1.position).magnitude;

            float deltaMagnitudediff = prevTouchDeltaMag - touchDeltaMag;*/

            //;
            /*if () {
                //camera.
            }
            else {

            }*/

        }
    }
}
