using UnityEngine;
using System.Collections;

public class OnShooterForPlayer : MonoBehaviour {
    [Header("↓↓↓發射器說明↓↓↓")]
    public int a;
    [Header("自動發射")]
    public bool isAutoShoot;
    [Header("發射頻率")]
    public float shootTimer;
    private float myTimer;
    [Header("滑鼠右鍵連射")]
    public bool isMouseClickKeepShoot;
    [Header("滑鼠右鍵點射")]
    public bool isMouseClickShoot;
    [Header("是否可控制")]
    public bool isCanControll;

    public GameObject bullet;
    public float movespeed;
    // Use this for initialization
    void Start()
    {

    }
    // Update is called once per frame
    void Update()
    {
        if (isAutoShoot)
        {
            myTimer += Time.deltaTime;
            if (myTimer >= shootTimer)
            {
                Instantiate(bullet, gameObject.transform.position, gameObject.transform.rotation);
                myTimer = 0;
            }
        }
        else
        {
            forShoot();
        }
        //else { }
        if (isCanControll) forControll();
        //forShoot();
    }
    public void forControll()
    {
        if (Input.GetKey("right"))
        {
            Vector3 a = gameObject.transform.position;
            a.x += Time.deltaTime * movespeed;
            gameObject.transform.position = a;
        }
        if (Input.GetKey("left"))
        {
            Vector3 a = gameObject.transform.position;
            a.x -= Time.deltaTime * movespeed;
            gameObject.transform.position = a;
        }
    }
    public void forShoot()
    {
        if (Input.GetMouseButtonUp(0) && isMouseClickShoot)
        {
            Instantiate(bullet, gameObject.transform.position, Quaternion.identity);
        }
        else if (Input.GetMouseButton(0) && isMouseClickKeepShoot)
        {
            Instantiate(bullet, gameObject.transform.position, Quaternion.identity);
        }
    }
}
