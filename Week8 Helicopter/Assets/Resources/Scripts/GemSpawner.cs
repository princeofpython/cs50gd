using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GemSpawner : MonoBehaviour {

	public GameObject gem;

	// Use this for initialization
	void Start () {
		StartCoroutine(SpawnGems());
	}
	
	// Update is called once per frame
	void Update () {
		
	}
	IEnumerator SpawnGems() {
		while (true) {

			// number of coins we could spawn vertically
			

			// instantiate all coins in this row separated by some random amount of space
			
			Instantiate(gem, new Vector3(26, Random.Range(-10, 10), 10), Quaternion.identity);
			

			// pause 1-5 seconds until the next coin spawns
			yield return new WaitForSeconds(Random.Range(5, 10));
		}
	}
}
