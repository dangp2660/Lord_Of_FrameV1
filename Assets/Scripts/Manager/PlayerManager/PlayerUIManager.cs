using UnityEngine;
using UnityEngine.UI;

public class PlayerUIManager : MonoBehaviour
{
    public static PlayerUIManager instance;
    public UIStatBarManager statBar;

    [Header("Endurance Restoration")]
    [SerializeField] private float enduranceRestoreDelay = 2f; // 2 seconds delay
    [SerializeField] private float enduranceRestoreRate = 0.5f; // How often to restore (every 0.5 seconds)
    [SerializeField] private int restoreEnduranceSpeed = 3; // Amount to restore per tick

    [Header("Quick Slot")]
    [SerializeField] private Image rightWeapon;
    [SerializeField] private Image leftWeapon;
    [SerializeField] private Image item;
    [SerializeField] private Image spell;
    //data
    [Header("Quick Slot Data")]
    public WeaponStatsManager currentRightWeapon;
    public WeaponStatsManager currentLeftWeapon;
    public ItemStats currentItem;
    public SpellStats currentSpell;
    [SerializeField] private int currentItemQuantity = 0;
    [SerializeField] private Text itemQuantityText;

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
        
        // Add null check
        if (playerManager == null)
        {
            Debug.LogWarning("PlayerManager not found in scene. UI will not function properly.");
        }
        
        // Register for scene change events to refresh references
        UnityEngine.SceneManagement.SceneManager.sceneLoaded += OnSceneLoaded;
    }

    private void OnSceneLoaded(UnityEngine.SceneManagement.Scene scene, UnityEngine.SceneManagement.LoadSceneMode mode)
    {
        // Refresh player reference when new scene loads
        if (playerManager == null)
        {
            playerManager = FindObjectOfType<PlayerManager>();
        }
    }

    private void OnDestroy()
    {
        // Unregister from scene events
        UnityEngine.SceneManagement.SceneManager.sceneLoaded -= OnSceneLoaded;
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

    //Quick Slot

    public void setRightQuickSlot(WeaponStatsManager weapon)
    {
        currentRightWeapon = weapon;
        if (playerManager != null && playerManager.inventoryManager != null)
        {
            playerManager.inventoryManager.currentRightWeapon = weapon;
        }
        updateQuickSlotUI();
    }
    
    public void setLeftQuickSlot(WeaponStatsManager weapon)
    {
        currentLeftWeapon = weapon;
        if (playerManager != null && playerManager.inventoryManager != null)
        {
            playerManager.inventoryManager.currentLeftWeapon = weapon;
        }
        updateQuickSlotUI();
    }

    public void SetItemSlot(ItemStats itemStats, int quantity = 1)
    {
        currentItem = itemStats;
        currentItemQuantity = quantity;
        updateQuickSlotUI();
    }

    public void setSpellSlot(SpellStats spell)
    {
        currentSpell = spell;
        updateQuickSlotUI();
    }

    //update Ui 
    public void updateQuickSlotUI()
    {
        //set icon right weapons
        if (rightWeapon != null)
        {
            if(currentRightWeapon != null && currentRightWeapon.icon != null)
            {
                rightWeapon.enabled = true;
                rightWeapon.sprite = currentRightWeapon.icon;
                rightWeapon.color = Color.white;
            }
            else
            {
                rightWeapon.enabled = false;
                rightWeapon.sprite = null;
                rightWeapon.color = Color.clear;
            }
        }
        
        //set icon left weapon
        if (leftWeapon != null)
        {
            if(currentLeftWeapon != null && currentLeftWeapon.icon != null)
            {
                leftWeapon.enabled = true;
                leftWeapon.sprite = currentLeftWeapon.icon;
                leftWeapon.color = Color.white;
            }
            else
            {
                leftWeapon.enabled = false;
                leftWeapon.sprite = null;
                leftWeapon.color = Color.clear;
            }
        }
        
        //set icon spell
        if (spell != null)
        {
            if (currentSpell != null && currentSpell.icon != null)
            {
                spell.enabled = true;
                spell.sprite = currentSpell.icon;
                spell.color = Color.white;
            }
            else
            {
                spell.enabled = false;
                spell.sprite = null;
                spell.color = Color.clear;
            }
        }
        
        //set icon item
        if (item != null)
        {
            if (currentItem != null && currentItem.icon != null)
            {
                item.enabled = true;
                item.sprite = currentItem.icon;
                item.color = Color.white;
            }
            else
            {
                item.enabled = false;
                item.sprite = null;
                item.color = Color.clear;
            }
        }
        
        // Update item quantity text
        if (itemQuantityText != null)
        {
            if (currentItem != null && currentItemQuantity > 0)
            {
                itemQuantityText.text = currentItemQuantity.ToString();
                itemQuantityText.gameObject.SetActive(true);
            }
            else
            {
                itemQuantityText.gameObject.SetActive(false);
            }
        }
    }

}
