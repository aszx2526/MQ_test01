using UnityEngine;
using System.Collections;

public class onImage_two : MonoBehaviour {
    //public GameObject target;
    public GameObject myCenter;
    public bool isChoseMe;
    public float mySetSize;
    public int myid;
    // Use this for initialization
    void Start()
    {

    }

    // Update is called once per frame
    void Update()
    {
        Vector3 c = myCenter.transform.position;

        if (transform.position.x >= c.x - 50 && transform.position.x <= c.x + 50)
        {
            isChoseMe = true;
            transform.localScale = new Vector3(mySetSize, mySetSize, mySetSize);
            GameObject.Find("ScrollView").GetComponent<onBreed_ScrollView>().WhichOneSelect = myid;
        }
        else {
            isChoseMe = false;
            transform.localScale = new Vector3(1, 1, 1);
        }
    }
}
