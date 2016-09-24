using UnityEngine;
using System.Collections;

public class OnThreeAsWall : MonoBehaviour {
    public bool shouldIFadeOut;
    Color nowColor;
    Material mat;
	// Use this for initialization
	void Start () {
        mat = GetComponent<MeshRenderer>().material;
        //nowColor = mat.color;
	}
	
	// Update is called once per frame
	void Update () {
        if (nowColor.a > 0.2f && shouldIFadeOut)
        { // fade out
          //  SetAlpha(-.1f);
        }
        else if (nowColor.a < 1f && !shouldIFadeOut)
        { // fade in
          //  SetAlpha(.1f);
        }
    }
    void SetAlpha(float a)
    {
        nowColor = mat.color;
        nowColor.a += a;
        if (nowColor.a > 1f) nowColor.a = 1f;
        else if (nowColor.a < 0f) nowColor.a = 0f;
        /*
        if (a > 0) mat.SetInt("_ZWrite", 1);
        else mat.SetInt("_ZWrite", 0);
        */
        mat.color = nowColor;
        GetComponent<MeshRenderer>().material = mat;
    }
}
