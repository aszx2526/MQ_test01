using UnityEngine;
using System.Collections;
using UnityEngine.EventSystems;

public class DragHandeler : MonoBehaviour {//,IBeginDragHandler,IDragHandler,IEndDragHandler {
    public static  GameObject itemBeingDragged;
    public Vector3 startPosition;
    Transform startParent;


	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}
    
    #region IBeginDragHandler implementation
    public void OnBeginDrag(PointerEventData eventData) {
        Debug.Log("DragHandeler's OnBeginDrag be Call");
        itemBeingDragged = gameObject;
        startPosition = transform.position;
        startParent = transform.parent;
        GetComponent<CanvasGroup>().blocksRaycasts = false;
    }
    #endregion
    #region IdragHandler implementation
    public void OnDrag(PointerEventData eventData) {
        //Debug.Log("DragHandeler's OnDrag be Call");
        transform.position = Input.mousePosition;
    }
    #endregion
    #region IEndDragHandler implementation
    public void OnEndDrag(PointerEventData eventData) {
        Debug.Log("DragHandeler's OnEndDrag be Call");
        itemBeingDragged = null;
        GetComponent<CanvasGroup>().blocksRaycasts = true;
        if (transform.parent == startParent) {
            transform.position = startPosition;
        }
    }
    #endregion

}
