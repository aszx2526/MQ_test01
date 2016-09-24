using UnityEngine;
using System.Collections;

public class onImage : MonoBehaviour {
    public GameObject target;
    public GameObject myCenter;
    public bool isChoseMe;
    //public float dis;
	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
        Vector3 a = target.transform.position;
        a.x += GameObject.Find("chose").GetComponent<textmove>().mydis;
        transform.position = a;
        Vector3 c = myCenter.transform.position;
        if (transform.position.x >= c.x - 50 && transform.position.x <= c.x + 50)
        {
            isChoseMe = true;
        }
        else {
            isChoseMe = false;
        }
	}
}
