using UnityEngine;
using System.Collections;

public class OnITNFOT : MonoBehaviour {
    public Transform Target;
	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
        if (!Target) { Destroy(gameObject); }
        else {
            gameObject.transform.position = Target.position;
        }
        
	}
    void OnTriggerEnter(Collider a) {
        if (a.tag == "Wall") {
            a.GetComponent<OnThreeAsWall>().shouldIFadeOut = true;
            //print("three!");
        }
    }
    void OnTriggerExit(Collider a) {
        if (a.tag == "Wall")
        {
            a.GetComponent<OnThreeAsWall>().shouldIFadeOut = false;
        }
    }

}
