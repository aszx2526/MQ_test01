using UnityEngine;
using System.Collections;
using UnityEngine.EventSystems;


public class Slot : MonoBehaviour, IDropHandler {
    public GameObject item {
        get {
            Debug.Log("Slot's Gameobject item get be Call");
            if (transform.childCount > 0) {
                Debug.Log("Slot's transform.childCount > 0 成真拉！！");
                Debug.Log(transform.name);
                return transform.GetChild(0).gameObject;
            }
            return null;
        }
    }

    #region IdragHandler implementation
    public void OnDrop(PointerEventData eventData)
    {
        Debug.Log("Slot's OnDrop be Call");
        if (!item)
        {

            //Debug.Log("如果 (!item)那就DragHandeler.itemBeingDragged.transform.SetParent(transform);");
            Debug.Log("transform的名子是" + transform.name);
           // Debug.Log("DragHandeler.itemBeingDragged.transform的名子" + DragHandeler.itemBeingDragged.transform.name);
         //   DragHandeler.itemBeingDragged.transform.SetParent(transform);
        }
    }
    #endregion

}
