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
        }

        // Find the PlayerManager in the scene
        player = FindObjectOfType<PlayerManager>();
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

    private void OnSceneChange(Scene old, Scene newScene)
    {
        if (newScene.buildIndex == WorldSaveManager.instance.getSceneIndex())
        {
            Instance.enabled = true;
        }
        else
        {
            Instance.enabled = false;
        }
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
    //Get set
    public float getMoveAmount() => moveAmount;

}//PlayerInputManager
