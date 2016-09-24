using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class MainScreenController : MonoBehaviour {
    public Text playerLVText_topleft;
    public Text playerLVText;
    public Text playerExpText;
    public Text typeCountText;
    public Text partyCountText;
    [Header("這是測試")]
    public GameObject playerStatus;
    public GameObject targetPos;
    
    private int playerLV;
    private int playerExp;
    private int playerMaxExp;
    private int typeCount;
    private int partyCount;

    private bool playerStatusBtnCheck = false;
    private bool ignoreClick;
    Vector3 playerStatusPos;
    PlayerLevelManager playerLevelManager;

    [System.Serializable]
    public struct Minestuff {
        [Header("把物件拉上來")]
        public GameObject myMine;
        [Header("輸入礦的最大數量")]
        public int MaxMine;
        [Header("不用輸入(拿來計算用)")]
        public int Mine;
    }
    [System.Serializable]
    public struct MineSetting {
        public Text myCoin;
        public int myCoinValue;
        public Minestuff blueMine, yelloMine, greenMine, redMine;
    }
    public MineSetting minesetting;

    // Use this for initialization
    void Start () {
        playerLevelManager = FindObjectOfType<PlayerLevelManager>();
        playerStatusPos = playerStatus.transform.position;
        
    }
    void Awake() {
        myMineAwake();

    }
    public void myMineAwake() {
        print("PlayerPrefs.GetInt(Mine_blue)=" + PlayerPrefs.GetInt("Mine_blue"));
        if (PlayerPrefs.GetInt("Mine_blue") > 1)//表示有舊有資料了，不做事情
        {
            myMineUpdate();
        }
        else//初始化
        {
            print("mine初始化");
            //把最大值丟到PlayerPrefs讓其他場景可以抓取
            PlayerPrefs.SetInt("MaxMine_blue", minesetting.blueMine.MaxMine);
            PlayerPrefs.SetInt("MaxMine_yello", minesetting.yelloMine.MaxMine);
            PlayerPrefs.SetInt("MaxMine_green", minesetting.greenMine.MaxMine);
            PlayerPrefs.SetInt("MaxMine_red", minesetting.redMine.MaxMine);

            minesetting.blueMine.myMine.GetComponent<SourceManager>().maxSource = minesetting.blueMine.MaxMine;
            minesetting.yelloMine.myMine.GetComponent<SourceManager>().maxSource = minesetting.yelloMine.MaxMine;
            minesetting.greenMine.myMine.GetComponent<SourceManager>().maxSource = minesetting.greenMine.MaxMine;
            minesetting.redMine.myMine.GetComponent<SourceManager>().maxSource = minesetting.redMine.MaxMine;

            //把所有資源灌滿
            minesetting.blueMine.Mine = minesetting.blueMine.MaxMine/2;
            minesetting.yelloMine.Mine = minesetting.yelloMine.MaxMine/3;
            minesetting.greenMine.Mine = minesetting.greenMine.MaxMine/4;
            minesetting.redMine.Mine = minesetting.redMine.MaxMine/5;

            minesetting.blueMine.myMine.GetComponent<SourceManager>().source = minesetting.blueMine.Mine;
            minesetting.yelloMine.myMine.GetComponent<SourceManager>().source = minesetting.yelloMine.Mine;
            minesetting.greenMine.myMine.GetComponent<SourceManager>().source = minesetting.greenMine.Mine;
            minesetting.redMine.myMine.GetComponent<SourceManager>().source = minesetting.redMine.Mine;

            //把現在的資源總量灌到PlayerPrefs讓其他場景可以抓取
            PlayerPrefs.SetInt("Mine_blue", minesetting.blueMine.Mine);
            PlayerPrefs.SetInt("Mine_yello", minesetting.yelloMine.Mine);
            PlayerPrefs.SetInt("Mine_green", minesetting.greenMine.Mine);
            PlayerPrefs.SetInt("Mine_red", minesetting.redMine.Mine);
            PlayerPrefs.SetInt("myCoinValue", minesetting.myCoinValue);
            minesetting.myCoin.text = PlayerPrefs.GetInt("myCoinValue").ToString();
        }


    }
    
    // Update is called once per frame
    void Update ()
    {
        PlayerStatusBack();
        PlayerStatusMove();
        PlayerStatusInfo();
        myMineUpdate();
    }
    public void myMineUpdate() {

        minesetting.blueMine.myMine.GetComponent<SourceManager>().maxSource = PlayerPrefs.GetInt("MaxMine_blue");
        minesetting.yelloMine.myMine.GetComponent<SourceManager>().maxSource = PlayerPrefs.GetInt("MaxMine_yello");
        minesetting.greenMine.myMine.GetComponent<SourceManager>().maxSource = PlayerPrefs.GetInt("MaxMine_green");
        minesetting.redMine.myMine.GetComponent<SourceManager>().maxSource = PlayerPrefs.GetInt("MaxMine_red");

        minesetting.blueMine.myMine.GetComponent<SourceManager>().source = PlayerPrefs.GetInt("Mine_blue");
        minesetting.yelloMine.myMine.GetComponent<SourceManager>().source = PlayerPrefs.GetInt("Mine_yello");
        minesetting.greenMine.myMine.GetComponent<SourceManager>().source = PlayerPrefs.GetInt("Mine_green");
        minesetting.redMine.myMine.GetComponent<SourceManager>().source = PlayerPrefs.GetInt("Mine_red");
        minesetting.myCoin.text = PlayerPrefs.GetInt("myCoinValue").ToString();
    }
    void PlayerStatusMove() {
        if(playerStatusBtnCheck)
            playerStatus.transform.position = Vector3.Lerp(playerStatus.transform.position, targetPos.transform.position, Time.deltaTime * 10);
        else
            playerStatus.transform.position = Vector3.Lerp(playerStatus.transform.position, playerStatusPos, Time.deltaTime * 10);
    }

    public void PlayerStatusBtn() {
        playerStatusBtnCheck = !playerStatusBtnCheck;
    }

    void PlayerStatusInfo()
    {
        playerLV = playerLevelManager.playerLevel;
        playerExp = (int)playerLevelManager.haveExp;
        playerMaxExp = playerLevelManager.sumOfExp;

        playerLVText.text = playerLV.ToString();
        playerLVText_topleft.text = "LV："+playerLV.ToString();
        playerExpText.text = playerExp.ToString() + "/" + playerMaxExp.ToString();
    }

    void PlayerStatusBack()
    {
        if (ignoreClick)
        {
            return;
        }
        if (playerStatusBtnCheck)
        {
            if (Input.GetMouseButton(0)) playerStatusBtnCheck = false;
        }
    }
    public void On()
    {
        ignoreClick = true;
    }
    public void Off()
    {
        ignoreClick = false;
    }
}
