using UnityEngine;

public class CharacterManager : MonoBehaviour, IUpdatable
{

    [HideInInspector] public CharacterController characterController;
    [HideInInspector] public Animator animator;

    [Header("Stats")]
    [SerializeField] protected CharacterStatsManager stats;
    [Header("Runtime Stats")]
    [HideInInspector] public int currentVigor;
    [HideInInspector] public int currentMind;
    [HideInInspector] public int currentEndurance;

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
        if (animator == null)
        {
            animator = GetComponentInChildren<Animator>();
        }
    }

    protected virtual void Start()
    {
        currentVigor = stats.maxVirgo;
        currentMind = stats.maxMind;
        currentEndurance = stats.maxEndurance; // Fixed: was stats.maxVirgo
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

    protected virtual void LateUpdate() { }

    public virtual void takeDame(int amount)
    {
        currentVigor -= amount;
        PlayerUIManager.instance.statBar.vigor.setCurrent(currentVigor, stats.maxVirgo);
        if (currentVigor < 0)
        {
            die();
        }
    }

    public virtual void UpdateStatUI() { }

    public virtual void die()
    {
        Debug.Log($"{gameObject.name}: die");
    }

    //get set
    public bool getCanMove() => canMove;
    public void setCanMove(bool CanMove) => canMove = CanMove;
    public bool getCanRotate() => canRotate;
    public void setCanRotate(bool CanRotate) => canRotate = CanRotate;
    public bool getIsPerformingAction() => isPerformingAction;
    public void setIsPerformingAction(bool isPerforming) => isPerformingAction = isPerforming;
    public CharacterStatsManager GetCharacterStatsManager() => stats;

}
