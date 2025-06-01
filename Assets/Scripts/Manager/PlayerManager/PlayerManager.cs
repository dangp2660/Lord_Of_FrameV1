using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerManager : CharacterManager
{
    [HideInInspector] public PlayerMovementManager movementManager;
    [HideInInspector] public PlayerAnimationManager animationManager;
    protected override void Awake()
    {
        base.Awake();

        movementManager = GetComponent<PlayerMovementManager>();
        animationManager = GetComponent<PlayerAnimationManager>();
    }

    public override void OnUpdate()
    {
        base.OnUpdate();

        movementManager.handleAllMovements();
    }

    protected override void LateUpdate()
    {
        base.LateUpdate();

        CameraController.instance.handleAllCameraActions();
    }

}
