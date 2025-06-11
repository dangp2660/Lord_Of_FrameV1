using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class PlayerInputManager : MonoBehaviour, IUpdatable
{
    public static PlayerInputManager Instance;
    InputSystem inputActions;
    public Vector2 movementInput;
    public Vector2 cameraInput;
    public PlayerManager player;
    [SerializeField] private float moveAmount;

    [Header("Player Action")]
    [SerializeField] private bool dodgeInput = false;
    [SerializeField] private bool jumpInput = false;
    [SerializeField] private bool switchRightWeapon = false;

    private void Awake()
    {
        if (Instance == null)
        {
            Instance = this;
            DontDestroyOnLoad(gameObject);
        }
        else
        {
            Destroy(gameObject);
            return; // Add this to prevent further execution
        }

        // Find the PlayerManager in the scene
        player = FindObjectOfType<PlayerManager>();
        
        // Add null check and warning
        if (player == null)
        {
            Debug.LogWarning("PlayerManager not found in scene. PlayerInputManager will not function properly.");
        }
    }

    // Add method to refresh player reference when scene changes
    private void OnSceneChange(Scene old, Scene newScene)
    {
        if (newScene.buildIndex == WorldSaveManager.instance.getSceneIndex())
        {
            Instance.enabled = true;
            // Refresh player reference for new scene
            if (player == null)
            {
                player = FindObjectOfType<PlayerManager>();
            }
        }
        else
        {
            Instance.enabled = false;
        }
    }

    private void Start()
    {
        DontDestroyOnLoad(gameObject);
        //Instance.enabled = false;
    }

    public void OnUpdate()
    {
        HandleAllInputs();
    }

    private void OnEnable()
    {
        if (inputActions == null)
        {
            inputActions = new InputSystem();

            inputActions.PlayerMovement.Movement.performed += i => movementInput = i.ReadValue<Vector2>();
            inputActions.PlayerCamera.Movement.performed += i => cameraInput = i.ReadValue<Vector2>();
            inputActions.PlayerAction.Dodge.performed += i => dodgeInput = true;
            inputActions.PlayerAction.Jump.performed += i => jumpInput = true;
            inputActions.PlayerAction.SwitchRightWeapon.performed += inputActions => switchRightWeapon = true;

        }

        inputActions.Enable();

        // Register with UpdateManager
        UpdateManager.Register(this);
    }

    private void OnDisable()
    {
        // Unregister from UpdateManager
        UpdateManager.Unregister(this);

        SceneManager.activeSceneChanged -= OnSceneChange;
    }

    private void HandleAllInputs()
    {
        HandleMovementInput();
        HandleDodgeInput();
        HandleJumpAndFall();
        HandleSwitchWeapon();   
    }

    private void HandleMovementInput()
    {
        moveAmount = Mathf.Clamp01(Mathf.Abs(movementInput.y) + Mathf.Abs(movementInput.x));

        if (moveAmount <= 0.5f && moveAmount > 0)
        {
            moveAmount = 0.5f;
        }
        else if (moveAmount > 0.5f && moveAmount <= 1)
        {
            moveAmount = 1;
        }


    }

    private void HandleDodgeInput()
    {
        if (dodgeInput)
        {
            dodgeInput = false;
            if (player != null)
            {
                player.movementManager.AttempToPerformDodge();
            }
            else
            {
                Debug.LogError("Player reference is not set in PlayerInputManager");
            }
        }
    }

    private void HandleJumpAndFall()
    {
        if (jumpInput) 
        {
            jumpInput = false;
            if (player != null)
            {
                player.movementManager.AttempToPerformJump();
            }
            else
            {
                Debug.LogError("Player reference is not set in PlayerInputManager");
            }
        }

    }

    private void HandleSwitchWeapon()
    {
        if (switchRightWeapon)
        {
            switchRightWeapon = false;

            if(player != null)
            {
                player.equipmentManager.switchRightWeapon();
            } 
        }
    }
    //Get set
    public float getMoveAmount() => moveAmount;

}//PlayerInputManager
