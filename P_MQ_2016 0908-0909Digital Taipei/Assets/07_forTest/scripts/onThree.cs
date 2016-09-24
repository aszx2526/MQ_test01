using UnityEngine;
using System.Collections;

public class onThree : MonoBehaviour {
    public int myThreeteam;
    public Renderer rend;
    public float fadespeed;
    public Color a;
	public float mytimer;
    // Use this for initialization
    void Start () {
        rend = GetComponent<Renderer>();
        a = rend.material.color;
        a.r = a.g = a.b = 0;

    }

    // Update is called once per frame
    void Update () {
        mytimer += Time.deltaTime;
        switch (myThreeteam) {
            case 1:
                if (mytimer >= 0) {
                    a.r += Time.deltaTime * fadespeed;
                    print("a.r = " + a.r);
                    a.g = a.b = a.r;
                    rend.material.color = a;
                }
                break;
            case 2:
                if (mytimer >= 5)
                {
                    a.r += Time.deltaTime * fadespeed;
                    print("a.r = " + a.r);
                    a.g = a.b = a.r;
                    rend.material.color = a;
                }
                break;
            case 3:
                if (mytimer >= 10)
                {
                    a.r += Time.deltaTime * fadespeed;
                    print("a.r = " + a.r);
                    a.g = a.b = a.r;
                    rend.material.color = a;
                }
                break;

        }
    }
}
