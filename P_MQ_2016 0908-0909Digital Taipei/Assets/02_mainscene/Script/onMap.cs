using UnityEngine;
using System.Collections;
using UnityEngine.UI;
using UnityEngine.SceneManagement;
public class onMap : MonoBehaviour {
    public GameObject[] mybigmap;
    public GameObject mywhitelight;
    //public GameObject beforeIntoGameScene;
    public GameObject TeamNotSetting;
    public Text MainACost;
    public Text MainBCost;
    public Text MainCCost;
    public Text MainDCost;
    public Text MainECost;


    // Use this for initialization
    void Start () {
      /*  MainACost = GameObject.Find("MATXT").GetComponent<Text>();
        MainBCost = GameObject.Find("MBTXT").GetComponent<Text>();
        MainCCost = GameObject.Find("MCTXT").GetComponent<Text>();
        MainDCost = GameObject.Find("MDTXT").GetComponent<Text>();
        MainECost = GameObject.Find("CoinTXT").GetComponent<Text>();*/


        mywhitelight.SetActive(false);
        //beforeIntoGameScene = GameObject.Find("beforeIntoGameScene");
        //TeamNotSetting = GameObject.Find("TeamNotSetting");
        //beforeIntoGameScene.SetActive(false);
        //TeamNotSetting.SetActive(false);

    }

    // Update is called once per frame
    void Update () {
	
	}
    public void btn_01_iceisland() {
        mywhitelight.SetActive(true);
        mybigmap[2].SetActive(true);
    }
    public void btn_island1() {
    //    SceneManager.LoadScene(3);
       /* mywhitelight.SetActive(true);
        mybigmap[1].SetActive(true);*/
    }
    public void btn_island2() {
        mywhitelight.SetActive(true);
        mybigmap[2].SetActive(true);
    }
    public void btn_island3() {
        mywhitelight.SetActive(true);
        mybigmap[3].SetActive(true);
    }
    public void btn_island4() {
        mywhitelight.SetActive(true);
        mybigmap[4].SetActive(true);
    }
    public void btn_whitelight() {
        mywhitelight.SetActive(false);
        for (int a = 1; a < mybigmap.Length; a++) {
            mybigmap[a].SetActive(false);
        }   
    }
    public void forgetSpend()
    {
        MainACost.text = PlayerPrefs.GetInt("MineACost").ToString();
        MainBCost.text = PlayerPrefs.GetInt("MineBCost").ToString();
        MainCCost.text = PlayerPrefs.GetInt("MineCCost").ToString();
        MainDCost.text = PlayerPrefs.GetInt("MineDCost").ToString();
        MainECost.text = PlayerPrefs.GetInt("CoinCost").ToString();
    }
}
