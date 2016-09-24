using UnityEngine;
using System.Collections;

public class textmove : MonoBehaviour {
    public GameObject[] a;
    public int mymod=1;
    public float myspeed;
    public Vector3 targetpos;
    public float mydis;
    public float bechosesize;
	// Use this for initialization
	void Start () {
        targetpos = a[0].transform.position;

    }
	
	// Update is called once per frame
	void Update () {
        if (Input.GetKeyUp("right")) {
            if (mymod < 2) { mymod = 1; }
            else {
                mymod--;
                targetpos.x += mydis;
                a[mymod+1].gameObject.transform.localScale = new Vector3(1f, 1f, 1f);
            }
        }
        else if(Input.GetKeyUp("left")){
            if (mymod >= a.Length-1) {
                mymod = a.Length-1;
            }
            else {
                mymod++;
                targetpos.x -= mydis;
                a[mymod - 1].gameObject.transform.localScale = new Vector3(1f, 1f, 1f);
            }
        }
        a[1].transform.position = Vector3.Lerp(a[1].transform.position, targetpos, Time.deltaTime * myspeed);
        a[mymod].gameObject.transform.localScale = new Vector3(bechosesize, bechosesize, bechosesize);
    }
    public void myBTN_left() {
        if (mymod >= a.Length - 1)
        {
            mymod = a.Length - 1;
        }
        else {
            mymod++;
            targetpos.x -= mydis;
            a[mymod - 1].gameObject.transform.localScale = new Vector3(1f, 1f, 1f);
        }
    }
    public void myBTN_right() {
        if (mymod < 2) { mymod = 1; }
        else {
            mymod--;
            targetpos.x += mydis;
            a[mymod + 1].gameObject.transform.localScale = new Vector3(1f, 1f, 1f);
        }
    }
}
