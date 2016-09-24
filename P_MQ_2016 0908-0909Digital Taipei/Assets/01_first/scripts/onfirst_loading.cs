using UnityEngine;
using System.Collections;
using UnityEngine.SceneManagement;
public class onfirst_loading : MonoBehaviour {
    public float howlongtoloadnextscene = 3;
    public float mytimer;
	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
        myConter();
    }
    public void myConter() {
        if (mytimer >= howlongtoloadnextscene) {
            Debug.Log("Debug log by LT:讀取下一關");
            SceneManager.LoadScene("MainScene");
            //Application.LoadLevel("MainScene");
            mytimer = -10000000000;
        }
        else {
            mytimer += Time.deltaTime;
        }
    }
}
