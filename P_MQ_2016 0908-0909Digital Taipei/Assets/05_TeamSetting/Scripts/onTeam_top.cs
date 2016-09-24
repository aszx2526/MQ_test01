using UnityEngine;
using System.Collections;
using UnityEngine.SceneManagement;
public class onTeam_top : MonoBehaviour {
    public bool istest;
	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}
   public void myToMainScene() {
        if (istest)
        {
            SceneManager.LoadScene("MainScene");
            //Application.LoadLevel("MainScene");
        }
        else {
            GameObject.Find("Team_left").GetComponent<onTeam_left_forTeamControl>().SendMessage("forsaveskilllevelandcost");
            int a, b, c, d, e;
            a = PlayerPrefs.GetInt("TeamAHPCost") + PlayerPrefs.GetInt("TeamBHPCost") + PlayerPrefs.GetInt("TeamCHPCost") + PlayerPrefs.GetInt("TeamDHPCost") + PlayerPrefs.GetInt("TeamEHPCost");
            b = PlayerPrefs.GetInt("TeamAATCost") + PlayerPrefs.GetInt("TeamBATCost") + PlayerPrefs.GetInt("TeamCATCost") + PlayerPrefs.GetInt("TeamDATCost") + PlayerPrefs.GetInt("TeamEATCost");
            c = PlayerPrefs.GetInt("TeamASPCost") + PlayerPrefs.GetInt("TeamBSPCost") + PlayerPrefs.GetInt("TeamCSPCost") + PlayerPrefs.GetInt("TeamDSPCost") + PlayerPrefs.GetInt("TeamESPCost");
            d = PlayerPrefs.GetInt("TeamAASCost") + PlayerPrefs.GetInt("TeamBASCost") + PlayerPrefs.GetInt("TeamCASCost") + PlayerPrefs.GetInt("TeamDASCost") + PlayerPrefs.GetInt("TeamEASCost");
            e = PlayerPrefs.GetInt("TeamACoinCost") + PlayerPrefs.GetInt("TeamBCoinCost") + PlayerPrefs.GetInt("TeamCCoinCost") + PlayerPrefs.GetInt("TeamDCoinCost") + PlayerPrefs.GetInt("TeamECoinCost");
            PlayerPrefs.SetInt("MineACost", a);
            PlayerPrefs.SetInt("MineBCost", b);
            PlayerPrefs.SetInt("MineCCost", c);
            PlayerPrefs.SetInt("MineDCost", d);
            PlayerPrefs.SetInt("CoinCost", e);
            print("myToMainScene()");
            Application.LoadLevel("MainScene");
        }
        
    }
    void setTeamA()
    {
    }
    void setTeamB()
    {
    }
    void setTeamC()
    {
    }
    void setTeamD()
    {
    }
    void setTeamE()
    {
    }
}
