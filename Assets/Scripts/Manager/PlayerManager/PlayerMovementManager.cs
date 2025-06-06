using System.Collections;
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
    [Header("Jump and Fall")]
    [SerializeField] private float gravity = -9.81f;
    [SerializeField] private float jumpHeight = 3f;
    [SerializeField] private float fallSpeed = -20f;
    [SerializeField] private LayerMask groundLayer;
    private float verticalVelocity;
    private bool isGrounded;
    private bool isJumping; // Trạng thái đang nhảy
    [SerializeField] private float groundCheckRadius = 0.2f; // Bán kính kiểm tra mặt đất
    [SerializeField] private float jumpCooldown = 0.5f; // Thời gian hồi nhảy
    private float lastJumpTime; // Thời điểm nhảy cuối cùng

    protected override void Awake()
    {
        base.Awake();
        Player = GetComponent<PlayerManager>();
    }

    public void handleAllMovements()
    {
        CheckGrounded(); // Kiểm tra xem nhân vật có đang đứng trên mặt đất không
        HandleGravity(); // Xử lý trọng lực
        handleGroundMovement();
        handleRotation();
    }
    
    private void CheckGrounded()
    {
        // Đặt vị trí của hình cầu ở dưới cùng của CharacterController
        Vector3 spherePosition = transform.position + new Vector3(0, -Player.characterController.height / 2 + Player.characterController.radius, 0);
        
        // Kiểm tra xem hình cầu có chồng lấn với bất kỳ thứ gì trên lớp mặt đất không
        isGrounded = Physics.CheckSphere(spherePosition, groundCheckRadius, groundLayer);
        
        // Đặt lại vận tốc theo chiều dọc khi đứng trên mặt đất
        if (isGrounded && verticalVelocity < 0)
        {
            verticalVelocity = -2f; // Giá trị âm nhỏ để giữ người chơi trên mặt đất
            isJumping = false;
        }
    }
    
    private void HandleGravity()
    {
        // Áp dụng trọng lực khi không đứng trên mặt đất
        if (!isGrounded)
        {
            verticalVelocity += gravity * Time.deltaTime;
            if (verticalVelocity < fallSpeed)
            {
                verticalVelocity = fallSpeed;
            }
        }
        
        // Áp dụng chuyển động theo chiều dọc
        Vector3 verticalMove = new Vector3(0, verticalVelocity * Time.deltaTime, 0);
        Player.characterController.Move(verticalMove);
    }
    
    private void getVerticalHorizontalFromInput()
    {
        verticalMovement = PlayerInputManager.Instance.movementInput.y;
        horizontalMovement = PlayerInputManager.Instance.movementInput.x;
    }
    private void handleGroundMovement()
    {
        //nếu đang trong trạng thái roll thì k thể di chuyển

        if (!Player.getCanMove()) return;

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
        if (!Player.getCanMove()) return;

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

        if (PlayerInputManager.Instance.getMoveAmount() > 0)
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

    public void AttempToPerformJump()
    {
        // Kiểm tra xem có thể nhảy không (đang đứng trên mặt đất và không trong thời gian hồi)
        if (!isGrounded || isJumping || Time.time - lastJumpTime < jumpCooldown)
            return;
            
        // Thiết lập trạng thái nhảy và thời gian hồi
        isJumping = true;
        lastJumpTime = Time.time;
        
        // Tính toán vận tốc nhảy sử dụng công thức vật lý: v = sqrt(2 * g * h)
        verticalVelocity = Mathf.Sqrt(jumpHeight * -2f * gravity);
        
        // Phát animation nhảy
        Player.animationManager.PlayerTargetActionAnimation(AnimationStringList.Jump, true, false);
    }


    //Debug kiểm tra mặt đất
    private void OnDrawGizmos()
    {
        if (Player != null && Player.characterController != null)
        {
            // Vẽ một hình cầu ở dưới cùng của CharacterController để hiển thị việc kiểm tra mặt đất
            Gizmos.color = isGrounded ? Color.green : Color.red;
            Vector3 spherePosition = transform.position + new Vector3(0, -Player.characterController.height / 2 + Player.characterController.radius, 0);
            Gizmos.DrawWireSphere(spherePosition, groundCheckRadius);
        }
    }

    //get set
    public bool getIsGrounded() => isGrounded;
}
