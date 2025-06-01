using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CharacterMovementManager : MonoBehaviour,IUpdatable
{
    protected virtual void Awake()
    {
        DontDestroyOnLoad(gameObject);

    }

    public virtual void OnUpdate()
    {

    }
}
