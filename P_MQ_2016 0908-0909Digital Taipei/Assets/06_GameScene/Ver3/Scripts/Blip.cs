using UnityEngine;
using System.Collections;

public class Blip : MonoBehaviour {
    public Transform miniTarget;
    public Transform Target;
    MiniMap map;
    public RectTransform myRectTransform;
    public float zoonlevel = 10f;
    void Star() {
    }
    void Update() {
        if (Target) {
            Vector3 offset = Target.position - miniTarget.position;
            Vector2 newPosition = new Vector2(offset.x, offset.z);
            newPosition *= zoonlevel;
            myRectTransform.anchoredPosition = newPosition;
        }
        
    }

    public void aa() {
      /*  Vector2 point;
        Rect mapRect = GetComponent<RectTransform>().rect;
        point = Vector2.Max(point, mapRect.min);
        point = Vector2.Min(point, mapRect.min);*/
    }
}
