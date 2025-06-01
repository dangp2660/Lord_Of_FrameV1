using System.Collections;
using System.Collections.Generic;
using UnityEngine;

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
}
