using UnityEngine;

public class CameraController : MonoBehaviour
{
    public static CameraController instance;

    [Header("References")]
    [SerializeField] private PlayerManager playerManager;
    [SerializeField] private Transform cameraPivotTransform; // Xoay lên/xuống
    public Camera cameraObject; // Camera chính

    [Header("Camera Settings")]
    [SerializeField] private float cameraSmoothSpeed = 1f;
    [SerializeField] private float leftAndRightRotationSpeed = 220f;
    [SerializeField] private float upAndDownRotationSpeed = 220f;
    [SerializeField] private float miniumPivot = -30f;
    [SerializeField] private float maxiumPivot = 60f;
    [SerializeField] private float cameraCollisionRadius = 0.2f;
    [SerializeField] private LayerMask colliderWithLayer;

    [Header("Camera Position Offsets")]
    [SerializeField] private float defaultCameraZOffset = -4f;
    [SerializeField] private float cameraPivotHeight = 1.8f;

    [Header("Debug/State Values")]
    [SerializeField] private float leftAndRightLookAngle;
    [SerializeField] private float upAndDownLookAngle;

    private Vector3 cameraVelocity;
    private Vector3 cameraPos;
    private float targetCameraZPosition;
    private float currentCameraZPosition;

    private void Awake()
    {
        if (instance == null)
        {
            instance = this;
        }
        else
        {
            Destroy(gameObject);
        }
    }

    private void Start()
    {
        DontDestroyOnLoad(gameObject);

        // Đặt pivot chiều cao và camera offset ban đầu
        cameraPivotTransform.localPosition = new Vector3(0, cameraPivotHeight, 0);
        cameraObject.transform.localPosition = new Vector3(0, 0, defaultCameraZOffset);
        currentCameraZPosition = defaultCameraZOffset;

        Cursor.lockState = CursorLockMode.Locked;
        Cursor.visible = false;
    }

    public void HandleAllCameraActions()
    {
        if (playerManager != null)
        {
            FollowPlayer();
            HandleRotation();
            HandleCollisions();
        }
    }

    private void FollowPlayer()
    {
        Vector3 targetCameraPosition = Vector3.SmoothDamp(
            transform.position,
            playerManager.transform.position,
            ref cameraVelocity,
            cameraSmoothSpeed * Time.deltaTime);

        transform.position = targetCameraPosition;
    }

    private void HandleRotation()
    {
        // Xoay trái/phải (yaw)
        leftAndRightLookAngle += PlayerInputManager.Instance.cameraInput.x * leftAndRightRotationSpeed * Time.deltaTime;

        // Xoay lên/xuống (pitch)
        upAndDownLookAngle -= PlayerInputManager.Instance.cameraInput.y * upAndDownRotationSpeed * Time.deltaTime;
        upAndDownLookAngle = Mathf.Clamp(upAndDownLookAngle, miniumPivot, maxiumPivot);

        // Xoay rig theo yaw
        transform.rotation = Quaternion.Euler(0, leftAndRightLookAngle, 0);

        // Xoay pivot theo pitch
        cameraPivotTransform.localRotation = Quaternion.Euler(upAndDownLookAngle, 0, 0);
    }

    private void HandleCollisions()
    {
        targetCameraZPosition = defaultCameraZOffset;

        RaycastHit hit;
        Vector3 direction = cameraObject.transform.position - cameraPivotTransform.position;
        direction.Normalize();

        if (Physics.SphereCast(
            cameraPivotTransform.position,
            cameraCollisionRadius,
            direction,
            out hit,
            Mathf.Abs(targetCameraZPosition),
            colliderWithLayer))
        {
            float distanceFromHitObject = Vector3.Distance(cameraPivotTransform.position, hit.point);
            targetCameraZPosition = -(distanceFromHitObject - cameraCollisionRadius);
        }

        if (Mathf.Abs(targetCameraZPosition) < cameraCollisionRadius)
        {
            targetCameraZPosition = -cameraCollisionRadius;
        }

        currentCameraZPosition = Mathf.Lerp(cameraObject.transform.localPosition.z, targetCameraZPosition, 0.2f);
        cameraPos = cameraObject.transform.localPosition;
        cameraPos.z = currentCameraZPosition;
        cameraObject.transform.localPosition = cameraPos;
    }
}
