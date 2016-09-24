using UnityEngine;
using System.Collections;

public class OnShooterForEnemy : MonoBehaviour {
    [Header("↓↓↓敵人發射器設定↓↓↓")]
    public int a;
    [Header("發射頻率")]
    public float shootTimer;
    [Header("發射的物件")]
    public GameObject bullet;

    private float myTimer;

    // Use this for initialization
    void Start()
    {

    }
    // Update is called once per frame
    void Update()
    {
        myTimer += Time.deltaTime;
        if (myTimer >= shootTimer)
        {
            Instantiate(bullet, gameObject.transform.position, gameObject.transform.rotation);
            myTimer = 0;
        }
    }
}
