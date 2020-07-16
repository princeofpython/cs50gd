﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Gem : MonoBehaviour {

	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
		if (transform.position.x < -25) {
			Destroy(gameObject);
		}
		else {

			// ensure coin moves at the same rate as the skyscrapers do
			transform.Translate(-SkyscraperSpawner.speed * Time.deltaTime, 0, 0, Space.World);
		}
	}

	void OnTriggerEnter(Collider other) {

		// trigger coin pickup function if a helicopter collides with this

		other.transform.parent.GetComponent<HeliController>().PickupGem();
		
		Destroy(gameObject);
	}
	
}
