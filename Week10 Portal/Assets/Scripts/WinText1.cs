using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.SceneManagement;

public class WinText1 : MonoBehaviour
{
    // Start is called before the first frame update

    public GameObject plane;

    public bool reach;
    private Text text;

    
    void Start()
    {
        reach = false;
        text = GetComponent<Text>();

		// start text off as completely transparent black
		text.color = new Color(0, 0, 0, 0);
    }

    // Update is called once per frame
    void Update()
    {
        reach = plane.GetComponent<trig>().reached;

        if (reach) {
            text.text = "You Won!! \n Press Space to Restart";
            text.color = new Color(0, 0, 0, 1);
            if (Input.GetButtonDown("Jump")) {
                SceneManager.LoadScene("SampleScene");
            }
        }
    }
}
