using UnityEngine;
using System.Collections;

public class OnCameraForMainControll : MonoBehaviour {
    Ray ray;
    RaycastHit hit;
    public int myTeamMod;
    public GameObject[] myTeam;
    public GameObject[] myTeampoint;
    public GameObject mymousepoint;
    public bool isCameraCanMove;

    void Awake()
    {

    }
    void Start()
    {
    }
    void Update()
    {
        PlayerFunction();
        myTeamController();
    }
    public void PlayerFunction()
    {
        ray = Camera.main.ScreenPointToRay(Input.mousePosition);
        if (Input.GetMouseButton(0) && Physics.Raycast(ray, out hit, 100,9))
        {
            mymousepoint.transform.position = hit.point;
            Debug.DrawLine(ray.origin, hit.point, Color.red);
            //print("hit name is = " + hit.transform.name);
            switch (hit.transform.name)
            {
                case "MQ1":
                    isCameraCanMove = false;
                    myTeamMod = 1;
                    break;
                case "MQ2":
                    myTeamMod = 2;
                    isCameraCanMove = false;
                    break;
                case "MQ3":
                    myTeamMod = 3;
                    isCameraCanMove = false;
                    break;
            }
        }
        else {
            isCameraCanMove = true;
            myTeamMod = 0;
        }
    }
    
    public void myTeamController()
    {
         switch (myTeamMod)
         {
             case 1:
                 myTeampoint[1].transform.position = mymousepoint.transform.position;
                 if (hit.transform.tag == "Monster")
                 {
                    isCameraCanMove = false;
                    myTeam[1].GetComponent<OnMQ>().goal = hit.transform.gameObject;
                    myTeam[1].GetComponent<OnMQ>().myMod = 4;
                 }
                 else if (hit.transform.tag == "Player")
                 {
                    isCameraCanMove = false;
                    myTeam[1].GetComponent<OnMQ>().goal = hit.transform.gameObject;
                    myTeam[1].GetComponent<OnMQ>().myMod = 3;
                }
                 else {
                    isCameraCanMove = true;
                }
                 break;
             case 2:
                 myTeampoint[2].transform.position = mymousepoint.transform.position;
                 if (hit.transform.tag == "Monster")
                 {
                    isCameraCanMove = false;
                    myTeam[2].GetComponent<OnMQ>().goal = hit.transform.gameObject;
                    myTeam[2].GetComponent<OnMQ>().myMod = 4;
                }
                 else if (hit.transform.tag == "Player")
                 {
                    isCameraCanMove = false;
                    myTeam[2].GetComponent<OnMQ>().goal = hit.transform.gameObject;
                    myTeam[2].GetComponent<OnMQ>().myMod = 3;
                }
                 else {
                    isCameraCanMove = true;
                }
                 break;
             case 3:
                 myTeampoint[3].transform.position = mymousepoint.transform.position;
                 if (hit.transform.tag == "Monster")
                 {
                    isCameraCanMove = false;
                    myTeam[3].GetComponent<OnMQ>().goal = hit.transform.gameObject;
                    myTeam[3].GetComponent<OnMQ>().myMod = 4;
                }
                 else if (hit.transform.tag == "Player")
                 {
                    isCameraCanMove = false;
                    myTeam[3].GetComponent<OnMQ>().goal = hit.transform.gameObject;
                    myTeam[3].GetComponent<OnMQ>().myMod = 3;
                }
                 else {
                    isCameraCanMove = true;
                }
                 break;
         }    
    }
}
