using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CharacterManager : MonoBehaviour, IUpdatable
{

    public CharacterController characterController;
    protected virtual void Awake()
    {
        DontDestroyOnLoad(gameObject);
        characterController = GetComponent<CharacterController>();
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


}
