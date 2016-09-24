using UnityEngine;
using System.Collections;
public class gDefine {

	public enum Direction{
		Up,
		Down,
		Left,
		Right
	}
}

public class touchControll : MonoBehaviour {
	
	public float Xsix=Screen.width/6 ;
	public float Xin =310;
	public int slim =1;

	public GameObject Bone;
	public GameObject Btwo;
	public GameObject Btre;
	public GameObject Bfor;
	public GameObject Btri;
	//public GameObject Bstx;

	//紀錄手指觸碰位置
	private Vector2 m_screenPos = new Vector2 ();

	void start(){
		
	}
	void Update () {

		#if UNITY_EDITOR || UNITY_STANDALONE
		MouseInput();   // 滑鼠偵測
		#elif UNITY_ANDROID
		MobileInput();  // 觸碰偵測
		#endif



		Xin = slim * 36 + 274;

		if (Bone.transform.position.x <= Xin - 3)
		{
			Bone.transform.Translate(5,0,0);
		}else if(Bone.transform.position.x >= Xin + 2)
		{
			Bone.transform.Translate(-5,0,0);
		}

		if (slim == 1) {
			if (Btwo.transform.position.x <= Xin + 131) {
				Btwo.transform.Translate (5, 0, 0);
			} else if (Btwo.transform.position.x >= Xin + 136) {
				Btwo.transform.Translate (-5, 0, 0);
			}

		} else {
			if (Btwo.transform.position.x <= Xin - 39) {
				Btwo.transform.Translate (5, 0, 0);
			} else if (Btwo.transform.position.x >= Xin - 34) {
				Btwo.transform.Translate (-5, 0, 0);
			}
		}

		if (slim <= 2) {
			if (Btre.transform.position.x <= Xin + 96) {
				Btre.transform.Translate (5, 0, 0);
			} else if (Btre.transform.position.x >= Xin + 101) {
				Btre.transform.Translate (-5, 0, 0);
			}

		} else {
			if (Btre.transform.position.x <= Xin - 75) {
				Btre.transform.Translate (5, 0, 0);
			} else if (Btre.transform.position.x >= Xin - 70) {
				Btre.transform.Translate (-5, 0, 0);
			}
		}

		if (slim <= 3) {
			if (Bfor.transform.position.x <= Xin + 59) {
				Bfor.transform.Translate (5, 0, 0);
			} else if (Bfor.transform.position.x >= Xin + 64) {
				Bfor.transform.Translate (-5, 0, 0);
			}

		} else {
			if (Bfor.transform.position.x <= Xin - 111) {
				Bfor.transform.Translate (5, 0, 0);
			} else if (Bfor.transform.position.x >= Xin - 106) {
				Bfor.transform.Translate (-5, 0, 0);
			}
		}

		if (slim <= 4) {
			if (Btri.transform.position.x <= Xin + 33) {
				Btri.transform.Translate (5, 0, 0);
			} else if (Btri.transform.position.x >= Xin + 38) {
				Btri.transform.Translate (-5, 0, 0);
			}

		} else {
			if (Btri.transform.position.x <= Xin - 147) {
				Btri.transform.Translate (5, 0, 0);
			} else if (Btri.transform.position.x >= Xin - 142) {
				Btri.transform.Translate (-5, 0, 0);
			}
		}



	}

	void MouseInput()
	{
		if (Input.GetMouseButtonDown(0))
		{
			m_screenPos = new Vector2(Input.mousePosition.x, Input.mousePosition.y);
		}

		if(Input.GetMouseButtonUp(0))
		{
			Vector2 pos = new Vector2(Input.mousePosition.x, Input.mousePosition.y);

			gDefine.Direction mDirection = HandDirection(m_screenPos, pos);
			Debug.Log("mDirection: " + mDirection.ToString());
			Debug.Log(Xsix);

		}
	}

	void MobileInput ()
	{
		if (Input.touchCount <= 0)
			return;

		//1個手指觸碰螢幕
		if (Input.touchCount == 1) {

			//開始觸碰
			if (Input.touches [0].phase == TouchPhase.Began) {
				Debug.Log("Began");
				//紀錄觸碰位置
				m_screenPos = Input.touches [0].position;

				//手指移動
			} else if (Input.touches [0].phase == TouchPhase.Moved) {
				Debug.Log("Moved");
				//移動攝影機
				//Camera.main.transform.Translate (new Vector3 (-Input.touches [0].deltaPosition.x * Time.deltaTime, -Input.touches [0].deltaPosition.y * Time.deltaTime, 0));
			}


			//手指離開螢幕
			if (Input.touches [0].phase == TouchPhase.Ended || Input.touches [0].phase == TouchPhase.Canceled) {
				Debug.Log("Ended");
				Vector2 pos = Input.touches [0].position;

				gDefine.Direction mDirection = HandDirection(m_screenPos, pos);
				Debug.Log("mDirection: " + mDirection.ToString());
			}
			//攝影機縮放，如果1個手指以上觸碰螢幕
		} 	
		/*else if (Input.touchCount > 1) {

			//記錄兩個手指位置
			Vector2 finger1 = new Vector2 ();
			Vector2 finger2 = new Vector2 ();

			//記錄兩個手指移動距離
			Vector2 move1 = new Vector2 ();
			Vector2 move2 = new Vector2 ();

			//是否是小於2點觸碰
			for (int i=0; i<2; i++) {
				UnityEngine.Touch touch = UnityEngine.Input.touches [i];

				if (touch.phase == TouchPhase.Ended)
					break;

				if (touch.phase == TouchPhase.Moved) {
					//每次都重置
					float move = 0;

					//觸碰一點
					if (i == 0) {
						finger1 = touch.position;
						move1 = touch.deltaPosition;
						//另一點
					} else {
						finger2 = touch.position;
						move2 = touch.deltaPosition;

						//取最大X
						if (finger1.x > finger2.x) {
							move = move1.x;
						} else {
							move = move2.x;
						}

						//取最大Y，並與取出的X累加
						if (finger1.y > finger2.y) {
							move += move1.y;
						} else {
							move += move2.y;
						}

						//當兩指距離越遠，Z位置加的越多，相反之
						Camera.main.transform.Translate (0, 0, move * Time.deltaTime);
					}
				}
			}//end for
		}//end else if 
		*/
	}//end void

	gDefine.Direction HandDirection(Vector2 StartPos, Vector2 EndPos)
	{
		gDefine.Direction mDirection;

		//手指水平移動
		if (Mathf.Abs (StartPos.x - EndPos.x) > Mathf.Abs (StartPos.y - EndPos.y)) {

		
			if (StartPos.x > EndPos.x) {
				if (slim>=2) {
					slim -= 1;
				}else if(slim==1)
				{
					slim = 5;
				}

				//手指向左滑動
				mDirection = gDefine.Direction.Left;

			} else {

				if (slim <= 4) {
					slim += 1;
				}else if(slim==5)
				{
					slim = 1;
				}
				//手指向右滑動
				mDirection = gDefine.Direction.Right;
			}
			Debug.Log(slim);
		}else {
			if (m_screenPos.y > EndPos.y) {
				//手指向下滑動
				mDirection = gDefine.Direction.Down;
			} else {
				//手指向上滑動
				mDirection = gDefine.Direction.Up;
			}
		}

		return mDirection;
	}
}