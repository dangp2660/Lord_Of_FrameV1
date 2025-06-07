using UnityEngine;

public class PlayerUIManager : MonoBehaviour
{
    public static PlayerUIManager instance;
    public UIStatBarManager statBar;

    [Header("Endurance Restoration")]
    [SerializeField] private float enduranceRestoreDelay = 2f; // 2 seconds delay
    [SerializeField] private float enduranceRestoreRate = 0.5f; // How often to restore (every 0.5 seconds)
    [SerializeField] private int restoreEnduranceSpeed = 3; // Amount to restore per tick

    private float lastEnduranceUseTime;
    private float lastEnduranceRestoreTime;
    private PlayerManager playerManager;
    //Endurance
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

    void Start()
    {
        DontDestroyOnLoad(gameObject);
        playerManager = FindObjectOfType<PlayerManager>();
    }

    //endurance

    public void HandleEnduranceRestore()
    {

        if (playerManager == null) return;
        // Only restore if endurance is not full
        if (playerManager.currentEndurance < playerManager.GetCharacterStatsManager().maxEndurance)
        {
            // Check if 2 seconds have passed since last endurance use
            if (Time.time - lastEnduranceUseTime >= enduranceRestoreDelay)
            {
                // Check if enough time has passed for the next restoration tick
                if (Time.time - lastEnduranceRestoreTime >= enduranceRestoreRate)
                {
                    RestoreEndurance(restoreEnduranceSpeed);
                    lastEnduranceRestoreTime = Time.time;
                }
            }
        }
    }

    public void OnEnduranceUsed()
    {
        lastEnduranceUseTime = Time.time; // Record when endurance was used
    }

    public void RestoreEndurance(int amount)
    {
        if (playerManager == null) return;

        playerManager.currentEndurance += amount;
        // Ensure endurance doesn't exceed maximum
        if (playerManager.currentEndurance > playerManager.GetCharacterStatsManager().maxEndurance)
        {
            playerManager.currentEndurance = playerManager.GetCharacterStatsManager().maxEndurance;
        }

        // Update UI
        if (statBar?.endurance != null)
        {
            statBar.endurance.setCurrent(playerManager.currentEndurance, playerManager.GetCharacterStatsManager().maxEndurance);
        }
    }
    public void useEndurence(int amount)
    {
        lastEnduranceUseTime = Time.time;
        playerManager.currentEndurance -= amount;
        if (PlayerUIManager.instance?.statBar?.endurance != null)
            PlayerUIManager.instance.statBar.endurance.setCurrent(playerManager.currentEndurance, playerManager.GetCharacterStatsManager().maxEndurance);
    }

    //Max value
    public void setMaxBar()
    {
        statBar.setMaxValue();
    }
}
