using UnityEngine;
using System.Collections;

public class OnTargetCreater : MonoBehaviour {
    [Header("敵人物件")]
    public GameObject myEnemy;
    [Header("多久產生(秒)")]
    public float creatTimer;
    [Header("產生範圍")]
    public float creatAreaRange;
    private float myTimer;
	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
        myTimer += Time.deltaTime;
        if (myTimer >= creatTimer) {
            myTimer = 0;
            Vector3 a = gameObject.transform.position;
            a.x = Random.Range(a.x - creatAreaRange, a.x + creatAreaRange);
            gameObject.transform.position = a;
            Instantiate(myEnemy, gameObject.transform.position, Quaternion.identity);
        }


    }
}
