using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.InputSystem;

public class PlayerController : MonoBehaviour
{
    private PlayerMovement movement;
    private void Awake()
    {

        movement = GetComponent<PlayerMovement>();
    }

    public void OnMove(InputAction.CallbackContext context)
    {
        Vector2 input = context.ReadValue<Vector2>();
        movement.OnMove(input);
    }
    public void OnJump(InputAction.CallbackContext context)
    {
        if(context.performed)
        {
            movement.OnJump();
        }
    }
}
