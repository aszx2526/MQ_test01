using UnityEngine;
using System.Collections;

public class OnCamera : MonoBehaviour {
    public GameObject myCameraMovePoint;
    public float myFollowSpeed;
	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
        gameObject.transform.position = Vector3.Lerp(gameObject.transform.position, myCameraMovePoint.transform.position, Time.deltaTime * myFollowSpeed);
	}
}
