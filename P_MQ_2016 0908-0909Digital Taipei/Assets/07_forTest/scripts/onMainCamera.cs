using UnityEngine;
using System.Collections;

public class onMainCamera : MonoBehaviour {

	// Use this for initialization
	void Start () {
        Screen.autorotateToLandscapeLeft = true;
        Screen.autorotateToLandscapeRight = true;
        Screen.autorotateToPortrait = false;
        Screen.autorotateToPortraitUpsideDown = false;
        /*Screen.autorotateToPortrait = true;

        Screen.autorotateToPortraitUpsideDown = true;

        Screen.orientation = ScreenOrientation.AutoRotation;*/
    }
	
	// Update is called once per frame
	void Update () {
	
	}
}
