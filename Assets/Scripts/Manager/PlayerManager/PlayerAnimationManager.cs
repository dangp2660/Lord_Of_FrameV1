using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerAnimationManager : CharacterAnimationManager, IUpdatable
{

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
        updateMove();
    }

    private void updateMove()
    {
        updateAnimatorMovementParamaters(0, PlayerInputManager.Instance.getMoveAmount());
        
    }



}
