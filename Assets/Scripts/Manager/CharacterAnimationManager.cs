using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CharacterAnimationManager : MonoBehaviour
{
    [SerializeField] protected Animator characterAnimator;
    private void Start()
    {
        if(characterAnimator == null)
        {
            // Try to get the Animator component if not assigned
            characterAnimator = GetComponent<Animator>();
            
            if(characterAnimator == null)
            {
                Debug.LogError("Animator is null and couldn't be found on this GameObject");
            }
        }
    }
    public void updateAnimatorMovementParamaters(float horizontal, float vertical)
    {
        if(characterAnimator != null)
        {
            characterAnimator.SetFloat(AnimationStringList.Horizontal, horizontal); 
            characterAnimator.SetFloat(AnimationStringList.Vertical, vertical); 
        }
    }
}
