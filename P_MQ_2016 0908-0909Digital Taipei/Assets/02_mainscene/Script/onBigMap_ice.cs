using UnityEngine;
using System.Collections;
using UnityEngine.UI;
using UnityEngine.SceneManagement;
public class onBigMap_ice : MonoBehaviour {
     public int inwhichlevelmod;
    // Use this for initialization
    void Start () {
         //gameObject.SetActive(false);
    }
	
	// Update is called once per frame
	void Update () {
	
	}
    public void level1() {
        /*
        if (PlayerPrefs.GetInt("TeamASetting") == 0 || PlayerPrefs.GetInt("TeamBSetting") == 0) //|| PlayerPrefs.GetInt("TeamCSetting") == 0 || PlayerPrefs.GetInt("TeamDSetting") == 0 || PlayerPrefs.GetInt("TeamESetting") == 0)
        {
            GameObject.Find("Map").GetComponent<onMap>().TeamNotSetting.SetActive(true);
        }
        else {
            inwhichlevelmod = 1;
            GameObject.Find("Map").GetComponent<onMap>().beforeIntoGameScene.SetActive(true);
            GameObject.Find("Map").GetComponent<onMap>().forgetSpend();
        }*/
        SceneManager.LoadScene("Ver3_Prototype_");
        //Application.LoadLevel("Ver3_Prototype_");
    }

    public void BTN_forFight() {
        switch (inwhichlevelmod) {
            case 1:
                SceneManager.LoadScene("test1");
                //Application.LoadLevel("test1");
                break;
        }
    }
    public void BTN_forBack() {
        inwhichlevelmod = 0;
        //GameObject.Find("Map").GetComponent<onMap>().beforeIntoGameScene.SetActive(false);
    }
    public void BTN_forFTS() {
        GameObject.Find("Map").GetComponent<onMap>().TeamNotSetting.SetActive(false);
    }
}
