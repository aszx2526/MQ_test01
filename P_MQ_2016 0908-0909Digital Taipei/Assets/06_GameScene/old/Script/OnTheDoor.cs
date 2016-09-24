using UnityEngine;
using System.Collections;
using UnityEngine.SceneManagement;
public class OnTheDoor : MonoBehaviour {
    public GameObject a;
    public int myLevel;
    public bool isWin;
	// Use this for initialization
	void Start () {
        a.SetActive(false);
	}
	
	// Update is called once per frame
	void Update () {
        if (isWin) {
            LoadNextLevel();
        }
	}
    public void OnTriggerEnter(Collider somethingInTrigger) {
        if (somethingInTrigger.name == "Player") {
            a.SetActive(true);
            isWin = true;
            //print("銀拉！！");
        }
    }
    public void LoadNextLevel() {
        switch (myLevel) {
            case 1:
                SceneManager.LoadScene("GameScene02");
                //Application.LoadLevel("GameScene02");
                break;
            case 2:
                SceneManager.LoadScene("GameScene03");
                //Application.LoadLevel("GameScene03");
                break;
            case 3:
                SceneManager.LoadScene("GameScene04");
                //Application.LoadLevel("");
                break;
            case 4:
                SceneManager.LoadScene("GameScene01");
                //Application.LoadLevel("");
                break;
        }
    }
}
