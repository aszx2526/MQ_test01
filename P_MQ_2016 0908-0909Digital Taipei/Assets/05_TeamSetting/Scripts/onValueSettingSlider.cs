using UnityEngine;
using System.Collections;
using UnityEngine.UI;
public class onValueSettingSlider : MonoBehaviour {
    public Slider mySlider;
	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}
    public void myMaxButton() {
        mySlider.value = 10;
    }
    //"增加"按鈕+
    public void myHigherButton() {
    }
    //"減少"按鈕-
    public void myLowerButton() {
    }
}
