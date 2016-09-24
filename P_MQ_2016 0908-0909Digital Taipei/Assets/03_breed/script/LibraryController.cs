using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class LibraryController : MonoBehaviour {

    Vector2 m_screenPos = new Vector2();
    public GameObject target;
    Vector3 oldPos, newPos;
    
    public Text hpText;
    public Text attackText;
    public Text speedText;
    public Text attackSpeedText;
    public Text criticalChanceText;
    public Text criticalHitText;
    public Text introdutionText;
    public Text titleText;

    public GameObject scrollView;
    public GameObject view;
    public GameObject backBtn;
    public GameObject sceneChangeBtn;

    private int hp;
    private int attack;
    private int speed;
    private int attackSpeed;
    private int criticalChance;
    private int criticalHit;
    private string type;

    // Use this for initialization
    void Start () {
        //Debug.Log(target.transform.localPosition.y);
	
	}
	
	// Update is called once per frame
	void Update () {

#if UNITY_EDITOR_WIN
        MouseInput();
#endif
        MobileInput();
    }
    
    public void ChangeMosquito(GameObject playername) {
        type = playername.name;
        Debug.Log(type);
        ChangePlayerType();
        UIChangeToView();
    }
    void UIChangeToView() {
        scrollView.SetActive(false);
        sceneChangeBtn.SetActive(false);
        view.SetActive(true);
        backBtn.SetActive(true);        
    }
    public void UIChangeToScrollView()
    {
        view.SetActive(false);
        backBtn.SetActive(false);
        scrollView.SetActive(true);
        sceneChangeBtn.SetActive(true);
        titleText.text = "品種大全";
    }
    void ChangePlayerType() {
        //type = titleText.ToString();
        switch(type) {
            case ("1"):
                hpText.text = hp.ToString();
                attackText.text = attack.ToString();
                speedText.text = speed.ToString() + "%";
                attackSpeedText.text = attackSpeed.ToString() + "%";
                criticalChanceText.text = criticalChance.ToString() + "%";
                criticalHitText.text = criticalHit.ToString() + "%";
                introdutionText.text = "這個是介紹，可以寫三行";
                titleText.text = "角色名字";
                break;
        }
    }


    void MouseInput() {
        if(Input.GetMouseButton(0)) {
            if (target.transform.localPosition.y >= 0 && target.transform.localPosition.y <= 750){
               // var muoseX = Input.mousePosition;
                //target.transform.Translate(new Vector3(0, muoseX.y * Time.deltaTime, 0));               

            }
        }
    }

    void MobileInput()
    {
        if (Input.touchCount <= 0)
            return;

        //1個手指觸碰螢幕
        if (Input.touchCount == 1)
        {

            //開始觸碰
            if (Input.touches[0].phase == TouchPhase.Began)
            {

                //紀錄觸碰位置
                m_screenPos = Input.touches[0].position;

                //手指移動
            }
            else if (Input.touches[0].phase == TouchPhase.Moved)
            {
                if(target.transform.localPosition.y >= 0 && target.transform.localPosition.y <= 750) {
                //移動攝影機
                //Camera.main.transform.Translate(new Vector3(-Input.touches[0].deltaPosition.x * Time.deltaTime, -Input.touches[0].deltaPosition.y * Time.deltaTime, 0));
                    /*if (m_screenPos.y > 0)
                    {
                        //手指向下滑動
                        target.transform.Translate(new Vector3(0, Input.touches[0].deltaPosition.y * Time.deltaTime, 0));
                    }
                    else
                    {*/
                        //手指向上滑動
                        target.transform.Translate(new Vector3(0, Input.touches[0].deltaPosition.y * Time.deltaTime,0));
                    //}
                }
            }


            //手指離開螢幕
            if (Input.touches[0].phase == TouchPhase.Ended && Input.touches[0].phase == TouchPhase.Canceled)
            {

                Vector2 pos = Input.touches[0].position;

                //手指水平移動
                if (Mathf.Abs(m_screenPos.x - pos.x) > Mathf.Abs(m_screenPos.y - pos.y))
                {
                    if (m_screenPos.x > pos.x)
                    {
                        //手指向左滑動
                    }
                    else
                    {
                        //手指向右滑動
                    }
                }
                else
                {
                    if (m_screenPos.y > pos.y)
                    {
                        //手指向下滑動
                        target.transform.Translate(new Vector3(0, Input.touches[0].deltaPosition.y * Time.deltaTime, 0));
                    }
                    else
                    {
                        target.transform.Translate(new Vector3(0, Input.touches[0].deltaPosition.y * Time.deltaTime, 0));
                        //手指向上滑動
                        //target.GetComponent<RectTransform>().localPosition = new Vector3(0, Input.touches[0].deltaPosition.y * Time.deltaTime, 0);
                    }
                }
            }
            //攝影機縮放，如果1個手指以上觸碰螢幕
        }
        else if (Input.touchCount > 1)
        {

            //記錄兩個手指位置
            Vector2 finger1 = new Vector2();
            Vector2 finger2 = new Vector2();

            //記錄兩個手指移動距離
            Vector2 move1 = new Vector2();
            Vector2 move2 = new Vector2();

            //是否是小於2點觸碰
            for (int i = 0; i < 2; i++)
            {
                Touch touch = Input.touches[i];

                if (touch.phase == TouchPhase.Ended)
                    break;

                if (touch.phase == TouchPhase.Moved)
                {
                    //每次都重置
                    float move = 0;

                    //觸碰一點
                    if (i == 0)
                    {
                        finger1 = touch.position;
                        move1 = touch.deltaPosition;
                        //另一點
                    }
                    else
                    {
                        finger2 = touch.position;
                        move2 = touch.deltaPosition;

                        //取最大X
                        if (finger1.x > finger2.x)
                        {
                            move = move1.x;
                        }
                        else
                        {
                            move = move2.x;
                        }

                        //取最大Y，並與取出的X累加
                        if (finger1.y > finger2.y)
                        {
                            move += move1.y;
                        }
                        else
                        {
                            move += move2.y;
                        }

                        //當兩指距離越遠，Z位置加的越多，相反之
                        Camera.main.transform.Translate(0, 0, move * Time.deltaTime);
                    }
                }
            }//end for
        }//end else if 
    }//end void
    
    GameObject target2;

    float moveY;
    
    float tempX, tempY;
    bool swX = false, swY = false;

    void MoveControl()
    {
        Vector2 posi = Input.GetTouch(0).position;
        float x = posi.x;
        float y = posi.y;

        float moveX = x - tempX;
        moveY = y - tempY;

        if (swX)
        {
            target2.transform.eulerAngles = new Vector3(target2.transform.eulerAngles.x, target2.transform.eulerAngles.y + (moveX / 5), target2.transform.eulerAngles.z);
        }

        if (swY)
        {
            target2.transform.eulerAngles = new Vector3(Mathf.Clamp(target2.transform.eulerAngles.x - (moveY / 5), 1, 80), target2.transform.eulerAngles.y, target2.transform.eulerAngles.z);
        }

        swX = true;
        swY = true;

        tempX = x;
        tempY = y;
    }
}
