using Unity.VisualScripting;
using UnityEngine;

public class CameraController : MonoBehaviour
{
    public static CameraController instance;
    [SerializeField] private PlayerManager playerManager;
    [SerializeField] private Transform cameraPivotTransform;

    public Camera mainCam;
    [Header("Camera setting")]
    private float cameraSmoothSpeed = 1f;
    private Vector3 mainCamPos;
    [SerializeField] private float leftAndRightRotationSpeed = 220f;
    [SerializeField] private float upAndDownRotationSpeed = 220f;
    [SerializeField] private float miniumPivot = -30;// lowest point look down  
    [SerializeField] private float maxiumPivot = 60;// highest point look up
    [SerializeField] private float cameraCollisionOffset = 0.2f;
    [SerializeField] private LayerMask colliderWithLayer;

    [Header("Camera value")]
    private Vector3 cameraValocity;
    [SerializeField] private float leftAndRightLookAngle;
    [SerializeField] private float upAndDownLookAngle;
    private float defaultCameraPosition;//Used for camera colliion
    private float targetCameraPostion;//Used for camera collistion

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
        defaultCameraPosition = mainCam.transform.position.z;

        Cursor.lockState = CursorLockMode.Locked;
        Cursor.visible = false;


    }


    public void handleAllCameraActions()
    {
        if (playerManager != null)
        {
            followPlayer();
            hanndleRotation();
            handelCollistion();
        }
    }

    private void followPlayer()
    {
        Vector3 targetCameraPosition = Vector3.SmoothDamp(transform.position, playerManager.transform.position
            , ref cameraValocity, cameraSmoothSpeed * Time.deltaTime);
        transform.position = targetCameraPosition;
    }

    private void hanndleRotation()
    {
        //rotate left and right base on horizontal
        leftAndRightLookAngle += (PlayerInputManager.Instance.cameraInput.x * leftAndRightRotationSpeed) * Time.deltaTime;
        //rotate up and down base on vertical
        upAndDownLookAngle -= (PlayerInputManager.Instance.cameraInput.y * upAndDownRotationSpeed) * Time.deltaTime;
        //clamp up and down look angle between min and max
        upAndDownLookAngle = Mathf.Clamp(upAndDownLookAngle, miniumPivot, maxiumPivot);

        Vector3 cameraRotation = Vector3.zero;
        Quaternion targetRotation;
        //rotate this GO left and right
        cameraRotation.y = leftAndRightLookAngle;
        targetRotation = Quaternion.Euler(cameraRotation);
        transform.rotation = targetRotation;


        cameraRotation = Vector3.zero;
        cameraRotation.x = upAndDownLookAngle;
        targetRotation = Quaternion.Euler(cameraRotation);
        cameraPivotTransform.localRotation = targetRotation;
    }

    private void handelCollistion()
    {
        targetCameraPostion = defaultCameraPosition;
        RaycastHit hit;
        Vector3 direction = mainCam.transform.position - cameraPivotTransform.position;
        direction.Normalize();
        if (Physics.SphereCast(cameraPivotTransform.position, cameraCollisionOffset, direction, out hit, Mathf.Abs(targetCameraPostion), colliderWithLayer))
        {
            float distanceFromHitObj = Vector3.Distance(cameraPivotTransform.position, hit.point);
            targetCameraPostion = - (distanceFromHitObj - cameraCollisionOffset);
        }

        if (Mathf.Abs(targetCameraPostion) < cameraCollisionOffset)
        {
            targetCameraPostion = - cameraCollisionOffset;
        }

        mainCamPos.z = Mathf.Lerp(mainCam.transform.localPosition.z, targetCameraPostion, cameraCollisionOffset);
        mainCam.transform.localPosition = mainCamPos;

    }

}//CameraController

