using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CharacterManager : MonoBehaviour, IUpdatable
{

    [HideInInspector] public CharacterController characterController;
    [HideInInspector] public Animator animator;
    protected virtual void Awake()
    {
        DontDestroyOnLoad(gameObject);
        characterController = GetComponent<CharacterController>();
        animator = GetComponent<Animator>();
        if(animator ==  null)
        {
            animator = GetComponentInChildren<Animator>();
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

    public virtual void OnUpdate()
    {

    }

    protected virtual void LateUpdate()
    {

    }


}
