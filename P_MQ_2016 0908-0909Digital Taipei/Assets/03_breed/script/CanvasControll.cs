using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class CanvasControll : MonoBehaviour {
  /*  public float baseWidth = 800;
    public float baseHeight = 600;
    public float baseOrthographicSize = 5;
    public Camera camera;*/
    void Awake()
    {
      //  float newOrthographicSize = (float)Screen.height / (float)Screen.width * this.baseWidth / this.baseHeight * this.baseOrthographicSize;
        //camera.orthographicSize = Mathf.Max(newOrthographicSize, this.baseOrthographicSize);

        /*CanvasScaler canvasScaler = GetComponent<CanvasScaler>();

        float screenWidthScale = Screen.width / canvasScaler.referenceResolution.x;
        float screenHeightScale = Screen.height / canvasScaler.referenceResolution.y;

        canvasScaler.matchWidthOrHeight = screenWidthScale > screenHeightScale ? 1 : 0;
        */
    }
    // Use this for initialization
    void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}
}
