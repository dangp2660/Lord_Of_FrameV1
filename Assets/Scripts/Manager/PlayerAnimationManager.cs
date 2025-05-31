using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerAnimationManager : CharacterAnimationManager, IUpdatable
{
    //Variables to animation
    private PlayerMovement movement;

    private void Awake()
    {
        movement = GetComponent<PlayerMovement>();
        characterAnimator = GetComponentInChildren<Animator>();
        if(movement == null )
        {
            Debug.LogWarning("Movement in animation is null");
        }
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
        handleAnimationMovement();
    }

    private void handleAnimationMovement()
    {
        Vector2 input = movement.getVectorInput();
        this.updateAnimatorMovementParamaters(input.x, input.y);
    }
}
