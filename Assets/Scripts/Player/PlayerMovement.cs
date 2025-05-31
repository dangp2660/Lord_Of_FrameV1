using System.Collections;
using System.Collections.Generic;
using Unity.Mathematics;
using UnityEngine;

public class PlayerMovement : MonoBehaviour, IUpdatable
{
    [Header("Movement")]
    [SerializeField] private float moveSpeed = 10f;
    [SerializeField] private float jumpForce = 10f;
    [SerializeField] private float gravity = 9.8f;


    [Header("References")]
    [SerializeField] private Transform cameraTransform;

    //private variables
    //variables for moving
    private Vector2 moveInput;
    private CharacterController characterController;
    private float smoothVelocity; // Renamed from velocity to be more specific
    
    // Variables for jumping
    private float verticalVelocity = 0f;
    private bool isGrounded;


    private void Awake()
    {
        characterController = GetComponent<CharacterController>();
        cameraTransform = cameraTransform != null ? cameraTransform : Camera.main.transform;
    }

    // Register with UpdateManager
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
        HandleMovement();
    }

    public void OnMove(Vector2 input)
    {
        moveInput = input;
    }
    
    public void OnJump()
    {
        if (isGrounded)
        {
            verticalVelocity = jumpForce;
        }
    }

    private void HandleMovement()
    {
        isGrounded = characterController.isGrounded;

        // Apply gravity
        if (isGrounded && verticalVelocity < 0)
        {
            verticalVelocity = -0.5f;
        }
        else
        {
            verticalVelocity -= gravity * Time.deltaTime;
        }

        // Di chuyển theo hướng nhập từ người chơi
        Vector3 inputDir = new Vector3(moveInput.x, 0, moveInput.y).normalized;
        Vector3 moveDir = Vector3.zero;

        if (inputDir.sqrMagnitude >= 0.1f)
        {
            float targetAngle = Mathf.Atan2(inputDir.x, inputDir.z) * Mathf.Rad2Deg + cameraTransform.eulerAngles.y;
            float angle = Mathf.SmoothDampAngle(transform.eulerAngles.y, targetAngle, ref smoothVelocity, 0.1f);
            transform.rotation = Quaternion.Euler(0, angle, 0);

            moveDir = Quaternion.Euler(0, targetAngle, 0) * Vector3.forward;
        }

        // Gộp chuyển động ngang và dọc
        Vector3 totalMove = moveDir.normalized * moveSpeed + Vector3.up * verticalVelocity;
        characterController.Move(totalMove * Time.deltaTime);
    }

}