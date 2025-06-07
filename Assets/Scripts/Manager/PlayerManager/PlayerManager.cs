using UnityEngine;

public class PlayerManager : CharacterManager
{
    [HideInInspector] public PlayerMovementManager movementManager;
    [HideInInspector] public PlayerAnimationManager animationManager;
    [HideInInspector] public PlayerUIManager UIManager;
    
    // Remove the endurance restoration variables - they're now in PlayerUIManager
    // [SerializeField] protected int restoreEnduranceSpeed = 3; // Remove this


    protected override void Start()
    {
        base.Start();
        UpdateStatUI();
    }

    public override void UpdateStatUI()
    {
        UIManager.statBar.vigor.setCurrent(currentVigor, stats.maxVirgo);
        UIManager.statBar.vigor.updateBarWith(stats.vigor);
        UIManager.statBar.mind.setCurrent(currentMind, stats.maxMind);
        UIManager.statBar.mind.updateBarWith(stats.mind);
        UIManager.statBar.endurance.setCurrent(currentEndurance, stats.endurance);
        UIManager.statBar.endurance.updateBarWith(stats.endurance);
    }

    protected override void Awake()
    {
        base.Awake();
        UIManager = GameObject.FindGameObjectWithTag(TagStringList.PlayerUI).GetComponent<PlayerUIManager>();
        movementManager = GetComponent<PlayerMovementManager>();
        animationManager = GetComponent<PlayerAnimationManager>();
    }

    public override void OnUpdate()
    {
        base.OnUpdate();
        movementManager.handleAllMovements();
        UIManager.HandleEnduranceRestore();
    }

    protected override void LateUpdate()
    {
        base.LateUpdate();

        CameraController.instance.HandleAllCameraActions();
    }
    public virtual void useMind(int amount)
    {
        currentMind -= amount;
        if (PlayerUIManager.instance?.statBar?.mind != null)
            PlayerUIManager.instance.statBar.mind.setCurrent(currentMind, stats.maxMind);

    }

    public virtual void restoreEndurance(int amount)
    {
        currentEndurance += amount;
        // Ensure endurance doesn't exceed maximum
        if (currentEndurance > stats.maxEndurance)
        {
            currentEndurance = stats.maxEndurance;
        }
        
        // Update UI
        if (PlayerUIManager.instance?.statBar?.endurance != null)
        {
            PlayerUIManager.instance.statBar.endurance.setCurrent(currentEndurance, stats.maxEndurance);
        }
    }


}

