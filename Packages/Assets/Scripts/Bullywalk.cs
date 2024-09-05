using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
public class NPCMovementScript : MonoBehaviour
{
    public float speed = 2.0f;
    public List<Transform> listOfWaypoints;
    private int currentIndexOfWaypoint;
    private bool walk;

    void Start()
    {
        currentIndexOfWaypoint = 0;
    }

    void Update()
    {
        if (walk == true)
        {
            if (Vector3.Distance(transform.position, listOfWaypoints[currentIndexOfWaypoint].position) < 0.001f)
            {
                {
                    currentIndexOfWaypoint++;
                }
                if (currentIndexOfWaypoint == listOfWaypoints.Count)
                {
                    currentIndexOfWaypoint = 0;
                }
            }

            var step = speed * Time.deltaTime;
            transform.position = Vector3.MoveTowards(transform.position, listOfWaypoints[currentIndexOfWaypoint].position, step);
        }
        StartCoroutine(waiter());
        
        IEnumerator waiter()
        {
            yield return new WaitForSeconds(4.5f);
            walk = true;
        }
    }
}

