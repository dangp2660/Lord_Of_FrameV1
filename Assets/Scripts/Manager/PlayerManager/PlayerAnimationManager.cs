using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerAnimationManager : CharacterAnimationManager, IUpdatable
{
    PlayerManager player;

    private void Awake()
    {
        player = GetComponent<PlayerManager>();
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
        updateGround();
        
    }
    
    private void updateGround() => updateIsGrounded(player.movementManager.getIsGrounded());

    private void OnAnimatorMove()
    {
        if (player.applyRootMotion)
        {
            Vector3 velocity = player.animator.deltaPosition;
            player.characterController.Move(velocity);
            player.transform.rotation *= player.animator.deltaRotation;
        }
    }



}
