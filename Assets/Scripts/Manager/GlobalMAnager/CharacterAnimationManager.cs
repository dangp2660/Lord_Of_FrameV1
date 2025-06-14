﻿using UnityEngine;

public class CharacterAnimationManager : MonoBehaviour
{
    [SerializeField] private CharacterManager characterManager;
    private void Start()
    {
        characterManager = GetComponent<CharacterManager>();
    }
    public void updateAnimatorMovementParamaters(float horizontal, float vertical)
    {

            characterManager.animator.SetFloat(AnimationStringList.Horizontal, horizontal,0.1f,Time.deltaTime);
            characterManager.animator.SetFloat(AnimationStringList.Vertical, vertical, 0.1f, Time.deltaTime); 
    }

    public void updateIsGrounded(bool isGrounded) => characterManager.animator.SetBool(AnimationStringList.isGrounded, isGrounded);

    public virtual void PlayerTargetActionAnimation(string targetAnimation, float duration,bool isPerformingAction, 
        bool applyRotion, bool canRotate = false, bool canMove =false)
    {
        characterManager.applyRootMotion = applyRotion;
        characterManager.animator.CrossFade(targetAnimation, duration);
        characterManager.setIsPerformingAction(isPerformingAction);
        characterManager.setCanMove(canMove);
        characterManager.setCanRotate(canRotate);
    }


}
