using UnityEngine;

public class PlayerMovementManager : CharacterMovementManager
{
    PlayerManager Player;

    [Header("Movement")]
    [SerializeField] private float walkingSpeed = 5;
    [SerializeField] private float runSpeed = 10;
    private float verticalMovement;
    private float horizontalMovement;
    private float moveAmount;
    [SerializeField] private float rotationSpeed = 15f;
    private Vector3 targetRotationDirection;
    private Vector3 moveDirection;
    [Header("Dodge")]
    private Vector3 rollDirection;
    protected override void Awake()
    {
        base.Awake();
        Player = GetComponent<PlayerManager>();
    }

    public void handleAllMovements()
    {
        handleGroundMovement();
        handleRotation();
       
    }
    private void getVerticalHorizontalFromInput()
    {
        verticalMovement = PlayerInputManager.Instance.movementInput.y;
        horizontalMovement = PlayerInputManager.Instance.movementInput.x;
    }
    private void handleGroundMovement()
    {
        //nếu đang trong trạng thái roll thì k thể di chuyển

        if(!Player.getCanMove()) return;

        getVerticalHorizontalFromInput();
        //Check on camera facing
        moveDirection = CameraController.instance.transform.forward * verticalMovement;
        moveDirection += CameraController.instance.transform.right * horizontalMovement;
        moveDirection.Normalize();
        moveDirection.y = 0;

        if (PlayerInputManager.Instance.getMoveAmount() > 0.5f)
        {
            Player.characterController.Move(moveDirection * runSpeed * Time.deltaTime);
        }
        else if (PlayerInputManager.Instance.getMoveAmount() <= 0.5f)
        {
            Player.characterController.Move(moveDirection * walkingSpeed * Time.deltaTime);
        }

    }

    private void handleRotation()
    {
        // nếu đang trong roll thì k điều chỉnh hướng theo cam
        if(!Player.getCanMove() ) return;

        targetRotationDirection = Vector3.zero;
        targetRotationDirection = CameraController.instance.cameraObject.transform.forward * verticalMovement;
        targetRotationDirection += CameraController.instance.cameraObject.transform.transform.right * horizontalMovement;
        targetRotationDirection.Normalize();
        targetRotationDirection.y = 0;

        if (targetRotationDirection == Vector3.zero)
        {
            targetRotationDirection = transform.forward;
        }

        Quaternion newRotation = Quaternion.LookRotation(targetRotationDirection);
        Quaternion targetRotation = Quaternion.Slerp(transform.rotation, newRotation, rotationSpeed * Time.deltaTime);
        transform.rotation = targetRotation;

        
    }

    public void AttempToPerformDodge()
    {
        
        if(PlayerInputManager.Instance.getMoveAmount() >0)
        {

            //Tính góc quay trước khi roll
            rollDirection = CameraController.instance.transform.forward * PlayerInputManager.Instance.movementInput.y;
            rollDirection += CameraController.instance.transform.right * PlayerInputManager.Instance.movementInput.x;
            rollDirection.y = 0;
            rollDirection.Normalize();

            Quaternion playerDirection = Quaternion.LookRotation(rollDirection);
            Player.transform.rotation = playerDirection;
            Player.animationManager.PlayerTargetActionAnimation(AnimationStringList.Roll, true, true);

        }
        else
        {
            Player.animationManager.PlayerTargetActionAnimation(AnimationStringList.BackStep, true, true);
        }
    }

}
