using UnityEngine;
using System.Collections;
using UnityEngine.UI;
public class OnTimer : MonoBehaviour {
    Text text;
    public float myTimer = 30;
    public Text winlose;
    bool a;
    // Use this for initialization
	void Start () {
        text = gameObject.GetComponent<Text>();
        winlose = GameObject.Find("winlose").GetComponent<Text>();
	}
	
	// Update is called once per frame
	void Update () {
        if (a) { }
        else { myTimerFN(); }
        

    }
    public void myTimerFN() {
        if (myTimer < 0)
        {
            a = true;
            myTimer = 0;
            text.text = "Timer：" + myTimer.ToString();
            winlose.text = "lose";
        }
        else {
            myTimer -= Time.deltaTime;
            text.text = "Timer：" + myTimer.ToString();
        }

    }
}
