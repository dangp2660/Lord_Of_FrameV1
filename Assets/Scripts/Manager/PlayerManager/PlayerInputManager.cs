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
    [SerializeField] private float moveAmount;
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
    }
    private void Start()
    {
        DontDestroyOnLoad(gameObject);
        //Instance.enabled = false;
    }

    public void OnUpdate()
    {
        HandleMovementInput();
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
        }

        inputActions.Enable();
    }

    private void OnDestroy()
    {
        SceneManager.activeSceneChanged -= OnSceneChange;
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
    public float getMoveAmount()
    {
        return moveAmount;
    }


}//PlayerInputManager
