﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BonusArea : MLarea {

   	MiceAgent miceAgent;
    BasicBonus bonus;
    void Start()
	{
        bonus = GetComponentInChildren<BasicBonus>();
        miceAgent = GetComponentInChildren<MiceAgent>();
    }
	public override void ResetArea()
	{
		bonus.GetComponent<Rigidbody2D>().velocity = Vector2.zero;		
        miceAgent.transform.localPosition = new Vector2(10f, -10f) + new Vector2(
            Random.Range(-8f, 8f),
			Random.Range(-8f, 8f));

        bool valid = false;
        do
        {
            bonus.transform.localPosition = new Vector2(10f, -10f) + new Vector2(
            Random.Range(-8f, 8f),
            Random.Range(-8f, 8f));

            valid = true;
            Collider2D[] coll = Physics2D.OverlapCircleAll(bonus.transform.position, 3f);
            foreach (Collider2D c in coll)
            {
                if (c.name == "Agent")
                    valid = false;
            }
        } while (!valid);
        GetComponentInChildren<PaintBrush>().Clear();
    }
	
}