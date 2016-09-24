using UnityEngine;
using System.Collections;
using UnityEngine.SceneManagement;
public class onUI_downright : MonoBehaviour {
    public int mysettingmod=0;
    public GameObject[] mysetting_btn;
    public GameObject[] mysetting_btn_target;
    public Vector3[] mybtnstartpos;
    public float mymovespeed;
    public float timer_roll;
    public float timer_durring;
	// Use this for initialization
	void Start () {
        mybtnstartpos[0] = mysetting_btn[0].transform.position;
        mybtnstartpos[1] = mysetting_btn[1].transform.position;
        mybtnstartpos[2] = mysetting_btn[2].transform.position;
        mybtnstartpos[3] = mysetting_btn[3].transform.position;

    }
	
	// Update is called once per frame
	void Update () {
        myshowbtnornot();

    }
    public void BTN_mysetting() {
        if (mysettingmod == 0) { timer_roll = 0; mysettingmod = 1; }
        else if (mysettingmod == 1) { timer_roll = 0; mysettingmod = 0; }
    }
    public void myshowbtnornot() {
        if (mysettingmod == 1)
        {
            /*
             timer_roll += Time.deltaTime;
             if (timer_roll >= timer_durring && timer_roll < timer_durring * 2) {
                 mysetting_btn[0].transform.position = Vector3.Lerp(mysetting_btn[0].transform.position, mysetting_btn_target[0].transform.position, Time.deltaTime * mymovespeed);
             }
             else if (timer_roll >= timer_durring*2 && timer_roll < timer_durring * 3) {
                 mysetting_btn[1].transform.position = Vector3.Lerp(mysetting_btn[1].transform.position, mysetting_btn_target[1].transform.position, Time.deltaTime * mymovespeed);
             }
             else if (timer_roll >= timer_durring*3 && timer_roll < timer_durring * 4) {
                 mysetting_btn[2].transform.position = Vector3.Lerp(mysetting_btn[2].transform.position, mysetting_btn_target[2].transform.position, Time.deltaTime * mymovespeed);
             }
             else if (timer_roll >= timer_durring*4 && timer_roll < timer_durring * 5) { mysetting_btn[3].transform.position = Vector3.Lerp(mysetting_btn[3].transform.position, mysetting_btn_target[3].transform.position, Time.deltaTime * mymovespeed); }
             */
            mysetting_btn[0].transform.position = Vector3.Lerp(mysetting_btn[0].transform.position, mysetting_btn_target[0].transform.position, Time.deltaTime * mymovespeed);
                mysetting_btn[1].transform.position = Vector3.Lerp(mysetting_btn[1].transform.position, mysetting_btn_target[1].transform.position, Time.deltaTime * mymovespeed);
                mysetting_btn[2].transform.position = Vector3.Lerp(mysetting_btn[2].transform.position, mysetting_btn_target[2].transform.position, Time.deltaTime * mymovespeed);
                mysetting_btn[3].transform.position = Vector3.Lerp(mysetting_btn[3].transform.position, mysetting_btn_target[3].transform.position, Time.deltaTime * mymovespeed);
            
        }
        if (mysettingmod == 0)
        {/*
            timer_roll += Time.deltaTime;
            if (timer_roll >= timer_durring && timer_roll < timer_durring * 2)
            {
                mysetting_btn[0].transform.position = Vector3.Lerp(mysetting_btn[0].transform.position, mybtnstartpos[0], Time.deltaTime * mymovespeed);
            }
            else if (timer_roll >= timer_durring * 2 && timer_roll < timer_durring * 3)
            {
                mysetting_btn[1].transform.position = Vector3.Lerp(mysetting_btn[1].transform.position, mybtnstartpos[1], Time.deltaTime * mymovespeed);
            }
            else if (timer_roll >= timer_durring * 3 && timer_roll < timer_durring * 4)
            {
                mysetting_btn[2].transform.position = Vector3.Lerp(mysetting_btn[2].transform.position, mybtnstartpos[2], Time.deltaTime * mymovespeed);
            }
            else if (timer_roll >= timer_durring * 4 && timer_roll < timer_durring * 5) {
                mysetting_btn[3].transform.position = Vector3.Lerp(mysetting_btn[3].transform.position, mybtnstartpos[3], Time.deltaTime * mymovespeed);
            }*/
            mysetting_btn[0].transform.position = Vector3.Lerp(mysetting_btn[0].transform.position, mybtnstartpos[0], Time.deltaTime * mymovespeed);
            mysetting_btn[1].transform.position = Vector3.Lerp(mysetting_btn[1].transform.position, mybtnstartpos[1], Time.deltaTime * mymovespeed);
            mysetting_btn[2].transform.position = Vector3.Lerp(mysetting_btn[2].transform.position, mybtnstartpos[2], Time.deltaTime * mymovespeed);
            mysetting_btn[3].transform.position = Vector3.Lerp(mysetting_btn[3].transform.position, mybtnstartpos[3], Time.deltaTime * mymovespeed);
        }
    }
    public void myToLibrary()
    {
        Debug.Log("debug log by LT:myToLibrary()");
        SceneManager.LoadScene("library");
        //Application.LoadLevel("library");
    }
    public void myToShop()
    {
        Debug.Log("debug log by LT:myToShop()");
        SceneManager.LoadScene("shop");
        //Application.LoadLevel("shop");
    }
    public void myToTeamSetting()
    {
        Debug.Log("debug log by LT:myToTeamSetting()");
        SceneManager.LoadScene("TeamSetting");
        //Application.LoadLevel("TeamSetting");
    }
}
