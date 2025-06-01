using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerManager : CharacterManager
{
    PlayerMovementManager movementManager;
    protected override void Awake()
    {
        base.Awake();

        movementManager = GetComponent<PlayerMovementManager>();
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
