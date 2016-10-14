using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class onPlanefortest : MonoBehaviour {
    public int myAmount;
    public string[] mystring;
	// Use this for initialization
	void Start () {
        print("123");
          /* Debug.Log("a.ToString().Substring(0, 1) = " + a.ToString().Substring(0, 1));
           Debug.Log("a.ToString().Substring(1, 1) = " + a.ToString().Substring(1, 1));
           Debug.Log("a.ToString().Substring(2, 1) = " + a.ToString().Substring(2, 1));*/
        for (int b = 0; b < mystring.Length; b++) {
         /*   string myst = myAmount.ToString();
            if (myst.Length == 3) { mystring[b] = myAmount.ToString().Substring(b, 1); }
            else if (myst.Length == 2) { mystring[b] = myAmount.ToString().Substring(b, 1); }
            else if (myst.Length == 1) { mystring[b] = myAmount.ToString().Substring(b, 1); }*/
            myAmount.ToString().Substring(b, 1);
        }
        
    }
	
	// Update is called once per frame
	void Update () {
		
	}
}
