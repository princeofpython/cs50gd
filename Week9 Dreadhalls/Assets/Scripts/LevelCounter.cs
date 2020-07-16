using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class LevelCounter : MonoBehaviour {

	// Use this for initialization
	private Text text;
	private int level;
	void Start () {
		text = GetComponent<Text>();
	}
	
	// Update is called once per frame
	void Update () {
		level = Level.grabs;
		text.text = "Level :" + level;
	}
}
