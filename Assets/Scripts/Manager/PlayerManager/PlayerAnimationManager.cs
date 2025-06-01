using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerAnimationManager : CharacterAnimationManager, IUpdatable
{
    //Variables to animation

    private void Awake()
    {

    }
    private void OnEnable()
    {
        UpdateManager.Register(this);
    }

    private void OnDisable()
    {
        UpdateManager.Unregister(this);
    }

    public void OnUpdate()
    {
    }


}
