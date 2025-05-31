using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CharacterAnimationManager : MonoBehaviour
{
    protected Animator characterAnimator;
    private void Start()
    {
        if(characterAnimator == null)
        {
            Debug.LogWarning("Animator is null");
        }
    }
    public void updateAnimatorMovementParamaters(float horizontal, float vertical)
    {
        characterAnimator.SetFloat(AnimationStringList.Horizontal, horizontal); 
        characterAnimator.SetFloat(AnimationStringList.Vertical, vertical); 
    }
}
