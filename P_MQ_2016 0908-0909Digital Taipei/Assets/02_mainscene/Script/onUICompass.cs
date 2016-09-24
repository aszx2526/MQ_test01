using UnityEngine;
using System.Collections;
using UnityEngine.UI;
public class onUICompass : MonoBehaviour {
    public RectTransform a;
    public Quaternion b;
	// Use this for initialization
	void Start () {
        a = gameObject.GetComponentInParent<RectTransform>();
        b = a.rotation;
    }

    // Update is called once per frame
    void Update () {
        //Quaternion a = a.GetComponentInParent<RectTransform>().transform.rotation;
        //a.transform.rotation = ;
        //gameObject.GetComponent<RectTransform>().rotation.z = 
    }
}
