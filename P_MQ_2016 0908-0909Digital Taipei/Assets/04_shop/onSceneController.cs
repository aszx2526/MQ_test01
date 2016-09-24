using UnityEngine;
using System.Collections;
using UnityEngine.UI;
public class onSceneController : MonoBehaviour {
    public GameObject mine1;
    public GameObject mine2;
    public GameObject mine3;
    public GameObject mine4;
    public Text myCoin;
    // Use this for initialization
    void Start () {
        myMineUpdate();
    }
    
    // Update is called once per frame
    void Update () {
	
	}
    public void btn01() {
        PlayerPrefs.SetInt("Mine_blue", PlayerPrefs.GetInt("Mine_blue") + 10);
        myMineUpdate();
    }
    public void btn02() {
        PlayerPrefs.SetInt("Mine_yello", PlayerPrefs.GetInt("Mine_yello") + 10);
        myMineUpdate();
    }
    public void btn03() {
        PlayerPrefs.SetInt("Mine_green", PlayerPrefs.GetInt("Mine_green") + 10);
        myMineUpdate();
    }
    public void btn04() {
        PlayerPrefs.SetInt("Mine_red", PlayerPrefs.GetInt("Mine_red") + 10);
        myMineUpdate();
    }
    public void btn05() {
        PlayerPrefs.SetInt("myCoinValue", PlayerPrefs.GetInt("myCoinValue") + 100);
        myMineUpdate();
    }
    public void myMineUpdate()
    {
        mine1.GetComponent<SourceManager>().maxSource = PlayerPrefs.GetInt("MaxMine_blue");
        mine2.GetComponent<SourceManager>().maxSource = PlayerPrefs.GetInt("MaxMine_yello");
        mine3.GetComponent<SourceManager>().maxSource = PlayerPrefs.GetInt("MaxMine_green");
        mine4.GetComponent<SourceManager>().maxSource = PlayerPrefs.GetInt("MaxMine_red");

        mine1.GetComponent<SourceManager>().source = PlayerPrefs.GetInt("Mine_blue");
        mine2.GetComponent<SourceManager>().source = PlayerPrefs.GetInt("Mine_yello");
        mine3.GetComponent<SourceManager>().source = PlayerPrefs.GetInt("Mine_green");
        mine4.GetComponent<SourceManager>().source = PlayerPrefs.GetInt("Mine_red");

        myCoin.text = PlayerPrefs.GetInt("myCoinValue").ToString();
    }
}
