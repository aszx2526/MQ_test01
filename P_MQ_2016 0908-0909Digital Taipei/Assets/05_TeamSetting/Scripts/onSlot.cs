using UnityEngine;
using System.Collections;

public class onSlot : MonoBehaviour {
    [System.Serializable]
    public struct HPstuff{
        [Header("輸入最小血量")]
        public float myMinBloodValue;
        [Header("輸入最大血量")]
        public float myMaxBloodValue;
        [Header("輸入血量增幅變數")]
        public float myBloodAMP;
    }
    [System.Serializable]
    public struct Hurtstuff{
        [Header("輸入最小傷害")]
        public float myMinHurtValue;
        [Header("輸入最大傷害")]
        public float myMaxHurtValue;
        [Header("輸入傷害增幅變數")]
        public float myHurtAMP;
    }
    [System.Serializable]
    public struct MoveSpeedstuff{
        [Header("輸入最小移動速度")]
        public float myMinMoveSpeedValue;
        [Header("輸入最大移動速度")]
        public float myMaxMoveSpeedValue;
        [Header("輸入跑速增幅變數")]
        public float myMoveSpeedAMP;
    }
    [System.Serializable]
    public struct AttackSpeedstuff
    {
        [Header("輸入最小攻擊速度")]
        public float myMinAttackSpeedValue;
        [Header("輸入最大攻擊速度")]
        public float myMaxAttackSpeedValue;
        [Header("輸入攻速增幅變數")]
        public float myAttackSpeedAMP;
    }
    [System.Serializable]
    public struct Amountstuff
    {
        [Header("輸入金錢數量比")]
        public int myAmountAMP;
        [Header("輸入最大出戰數量")]
        public int myMaxAmountValue;
    }
    [System.Serializable]
    public struct stuff {
        [Header("↓↓↓蚊子名稱↓↓↓")]
        public string Name;
        [Header("↓↓↓血量相關↓↓↓")]
        public HPstuff hps;
        [Header("↓↓↓傷害相關↓↓↓")]
        public Hurtstuff hts;
        [Header("↓↓↓移動速度相關↓↓↓")]
        public MoveSpeedstuff mss;
        [Header("↓↓↓攻擊速度相關↓↓↓")]
        public AttackSpeedstuff atkss;
        [Header("輸入爆擊機率")]
        public float mySurpriseValue;
        [Header("輸入爆擊加成")]
        public float mySurpriseHurtValue;
        [Header("↓↓↓出戰數量相關↓↓↓")]
        public Amountstuff myAmount;
    }
    [Header("血、攻、走速、攻速設定欄位")]
    public stuff setting;
    // Use this for initialization
    void Start () {

    }

    // Update is called once per frame
    void Update () {
	
	}
}
