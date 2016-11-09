using UnityEngine;
using System.Collections;

public class Blip : MonoBehaviour {
    [Header("設定怪物編號：")]
    public int myMonsterID;
    [Header("設定怪物起始士氣值：")]
    public float myMonsterBasicMorale;
    [Header("設定怪物回氣值：")]
    public float myMonsterMoraleRestoreValue;
    [Header("設定原生蚊種類：")]
    public int myLocalMQ_Mob;//123 等阿龐給我對應表
    [Header("設定原生蚊數量：")]
    public int myLocalMQ_Amount;
    [Header("設定原生蚊1秒產出量")]
    public int myLocalMQ_CreateSpeed;
    public Transform miniTarget;// Main Camera
    public Transform Target;//場景上的怪物物件
    MiniMap map;
    public RectTransform myRectTransform;
    public float zoonlevel;// = 10f;
    
    void Star() {
    }
    void Update() {
        if (myMonsterID == GameObject.Find("CameraVer2_DTG").GetComponent<onCamera_dtg>().myPickUpNum) {
            onCanvasForUIControll myCFUIC = GameObject.Find("Canvas").GetComponent<onCanvasForUIControll>();
            myCFUIC.myMonsterBasicMorale = myMonsterBasicMorale;
            myCFUIC.myMonsterMoraleRestoreValue = myMonsterMoraleRestoreValue;
            myCFUIC.myLocalMQ_Mob = myLocalMQ_Mob;
            myCFUIC.myLocalMQ_Amount = myLocalMQ_Amount;
            myCFUIC.myLocalMQ_CreateSpeed = myLocalMQ_CreateSpeed;
        }
        if (Target) {
            Vector3 offset = Target.position - miniTarget.position;
            Vector2 newPosition = new Vector2(offset.x, offset.z);
            newPosition *= zoonlevel;
            myRectTransform.anchoredPosition = newPosition;
        }
        
    }
}
