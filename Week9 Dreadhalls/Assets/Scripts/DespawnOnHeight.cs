using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class DespawnOnHeight : MonoBehaviour {

	// Use this for initialization

	public GameObject FPSController;
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
		if(FPSController.transform.position.y < -10) {
			Level.grabs = 1;
			Destroy(GameObject.Find("WhisperSource"));
			SceneManager.LoadScene("GameOver");
		}
	}
}
