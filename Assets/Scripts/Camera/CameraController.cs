using UnityEngine;

public class CameraController : MonoBehaviour
{
    public static CameraController instance;
    [SerializeField] private PlayerManager playerManager;

    public Camera mainCam;
    [Header("Camera setting")]
    private Vector3 cameraValocity;
    private float cameraSmoothSpeed = 1f;

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
    }

    public void handleAllCameraActions()
    {
        if (playerManager != null)
        {
            followPlayer();
        }
    }

    private void followPlayer()
    {
        Vector3 targetCameraPosition = Vector3.SmoothDamp(transform.position, playerManager.transform.position
            , ref cameraValocity, cameraSmoothSpeed *Time.deltaTime);
        transform.position = targetCameraPosition;
    }

}//CameraController

