using UnityEngine;
using System.Collections;

public class onSlot_vtow : MonoBehaviour {
    //public GameObject target;
    public RectTransform myCenter;
    public bool isChoseMe;

    public int myid;
    // Use this for initialization
    void Start()
    {

    }

    // Update is called once per frame
    void Update()
    {
        Vector3 c = myCenter.transform.position;
        //print("myid = " + myid + " , c = " + c);
        if (transform.position.y >= c.y - 5 && transform.position.y <= c.y + 5)
        {
            isChoseMe = true;
            //print("myid = " + myid + "isChoseMe = true;");
            GameObject.Find("ScrollView").GetComponent<onArmy_ScrollView>().WhichOneSelect = myid;
            //GameObject.Find("ScrollView").GetComponent<onArmy_ScrollView>().myscrollmod = 0;
        }
        else {
            isChoseMe = false;

        }
    }
}
