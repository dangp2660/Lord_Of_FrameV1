using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CharacterManager : MonoBehaviour, IUpdatable
{

    [HideInInspector] public CharacterController characterController;
    [HideInInspector] public Animator animator;

    [Header("Flag")]
    [SerializeField] private bool canRotate = true;
    [SerializeField] private bool canMove = true;
    [SerializeField] private bool isPerformingAction = false;
    public bool applyRootMotion = false;


    protected virtual void Awake()
    {
        DontDestroyOnLoad(gameObject);
        characterController = GetComponent<CharacterController>();
        animator = GetComponent<Animator>();
        if(animator ==  null)
        {
            animator = GetComponentInChildren<Animator>();
        }
    }
    private void OnEnable()
    {
        UpdateManager.Register(this);
    }

    private void OnDisable()
    {
        UpdateManager.Unregister(this);
    }

    public virtual void OnUpdate()
    {

    }

    protected virtual void LateUpdate()
    {

    }


    //get set
    public bool getCanMove() => canMove;
    public void setCanMove(bool CanMove) => canMove = CanMove;
    public bool getCanRotate() => canRotate;
    public void setCanRotate(bool CanRotate) => canRotate = CanRotate;
    public bool getIsPerformingAction() => isPerformingAction;
    public void setIsPerformingAction(bool isPerforming) => isPerformingAction = isPerforming;




}
