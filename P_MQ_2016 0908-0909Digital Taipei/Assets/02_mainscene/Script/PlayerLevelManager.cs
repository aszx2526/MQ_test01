using UnityEngine;
using System.Collections;

public class PlayerLevelManager : MonoBehaviour {

    public int playerLevel;
    public int levelUpNeedExp;    
    public float parametricVariation;//變化參數
    public float basisParametric;//基礎參數
    
    public float haveExp;
    public int sumOfExp;
    int oldSumOfExp;
    public int newSumOfExp;

    // Use this for initialization
    void Start () {
        Debug.Log("PlayerLV： "+playerLevel);
        Debug.Log("升級所需經驗： "+levelUpNeedExp);
    }
	
	// Update is called once per frame
	void Update () {
        if (Input.GetKeyDown(KeyCode.KeypadPlus)) haveExp += levelUpNeedExp;

        ExpFormulas();

    }

    void ExpFormulas()
    {
        if (haveExp >= sumOfExp)
        {
            //if (playerLevel == 1) { sumOfExp = 150; newSumOfExp = 150; }

            playerLevel++;

            ExpSum();

            oldSumOfExp = newSumOfExp;
            newSumOfExp = sumOfExp;
            levelUpNeedExp = newSumOfExp - oldSumOfExp;



            Debug.Log("PlayerLV： " + playerLevel);
            Debug.Log("升級所需經驗： " + levelUpNeedExp);
            Debug.Log("總經驗： " + sumOfExp);

        }
    }

    void ExpSum()
    {
        sumOfExp = Mathf.FloorToInt(parametricVariation * (sumOfExp + (((playerLevel + 1) * basisParametric)))) + 1;
    }
}
