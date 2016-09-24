using UnityEngine;
using System.Collections;
using UnityEngine.UI;
public class onSliderTestforUI : MonoBehaviour {
    public RectTransform uitest;
    //public Vector3 aa;
    public Scrollbar myscrollbarforui;
	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
        //aa = Vector3(0, 0, Time.deltaTime);
        //StartCoroutine(aac());
        aac();


    }
    public float _timer;
    public float cc = 0.5f;

    public void  aac() {
        //print("aac");
        if (myscrollbarforui.value < 0.5)
        {
            if (_timer < cc)
            {
                _timer = _timer + Time.deltaTime;
            }
            else {
                uitest.Rotate(0, 0, 20);
                _timer = 0;
                myscrollbarforui.value = 0.5f;
            }
            //yield return new WaitForSeconds(cc);


        }
        else if (myscrollbarforui.value > 0.5)
        {
            //yield return new WaitForSeconds(cc);
            if (_timer < cc)
            {
                _timer = _timer + Time.deltaTime;
            }
            else {
                uitest.Rotate(0, 0, -20);
                _timer = 0;
                myscrollbarforui.value = 0.5f;
            }
        }
    }
        


}
