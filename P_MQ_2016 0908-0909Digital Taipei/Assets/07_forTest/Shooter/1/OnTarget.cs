using UnityEngine;
using System.Collections;

public class OnTarget : MonoBehaviour {

	// Use this for initialization
	void Start () {
        transform.LookAt(GameObject.Find("Player").transform);
	}
	
	// Update is called once per frame
	void Update () {
	
	}
    void OnTriggerEnter(Collider somethingin) {
        if (somethingin.tag == "bullet") {
            Destroy(somethingin.gameObject);
            Destroy(gameObject);
        }
    }
}
