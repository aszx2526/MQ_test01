using UnityEngine;
using System.Collections;

public class OnBullet : MonoBehaviour {
    public float myMoveSpeed;
    public GameObject myTargetPoint;
    public float myScaleControl;
    public int beHitCounter;
    public float mydisAtoBis;
    // Use this for initialization
    void Start () {
        gameObject.transform.localScale =new Vector3(myScaleControl, myScaleControl, myScaleControl);
        myTargetPoint = GameObject.Find("MainCamera").GetComponent<OnCameraLookAt>().lookatTargetList[GameObject.Find("MainCamera").GetComponent<OnCameraLookAt>().cameraMod];
        gameObject.transform.rotation = GameObject.Find("MainCamera").transform.rotation;
    }

    // Update is called once per frame
    void Update () {
        if (beHitCounter > 3) {
            GameObject.Find("MainCamera").GetComponent<OnCameraForShootMQ>().myHowManyMQOnScene--;
            Destroy(gameObject);
        }
        mydisAtoBis = Vector3.Distance(gameObject.transform.position, myTargetPoint.transform.position);
        if (Vector3.Distance(gameObject.transform.position, myTargetPoint.transform.position) < 0.03f) {
            print("夠近拉，不飛了");
        }
        else {
            Vector3 a = myTargetPoint.transform.position;
            a.x = Random.Range(myTargetPoint.transform.position.x - 1, myTargetPoint.transform.position.x + 1);
            a.y = Random.Range(myTargetPoint.transform.position.y - 1, myTargetPoint.transform.position.y + 1);
            gameObject.transform.position = Vector3.Lerp(gameObject.transform.position, a, Time.deltaTime * myMoveSpeed);
            print("move to target");
        }
    }
}
