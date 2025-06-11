using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerEquipmentManager : CharacterEquipmentManager
{
    PlayerManager player;

    public WeaponModelInstantiationSlot rightHandSlot;
    public WeaponModelInstantiationSlot leftHandSlot;

    public GameObject RightHandWeapon;
    public GameObject LeftHandWeapon;

    protected override void Awake()
    {

        base.Awake();
        player = GetComponent<PlayerManager>();
        IntializeWeaponSlot();
    }

    protected override void Start()
    {
        base.Start();
        LoadBothWeapon();
    }

    private void IntializeWeaponSlot()
    {
        WeaponModelInstantiationSlot[] weaponSlot = GetComponentsInChildren<WeaponModelInstantiationSlot>();

        foreach (var weapon in weaponSlot)
        {
            if (weapon.Slot == WeaponModelSlot.RightHand)
            {
                rightHandSlot = weapon;
            }
            else if (weapon.Slot == WeaponModelSlot.LeftHand)
            {
                leftHandSlot = weapon;
            }
        }
    }


    public void LoadBothWeapon()
    {
        LoadLeftWeapon();
        LoadRightWeapon();
    }

    public void LoadRightWeapon()
    {


        if (player.inventoryManager.currentRightWeapon != null)
        {
            RightHandWeapon = Instantiate(player.inventoryManager.currentRightWeapon.prefabs);
            rightHandSlot.LoadWeapon(RightHandWeapon);
            player.UIManager.setRightQuickSlot(player.inventoryManager.currentRightWeapon);
        }
        else
        {
            player.UIManager.setRightQuickSlot(null);
        }
    }
    public void switchRightWeapon()
    {
        player.animationManager.PlayerTargetActionAnimation(AnimationStringList.SwitchRightWeapon, 0.2f, false, true);
        //unload current weapon
        if(RightHandWeapon != null)
        {
            rightHandSlot.UnLoadWeapon();
        }
        //cycle weapon index
        player.inventoryManager.rightWeaponIndex += 1; 
        if (player.inventoryManager.rightWeaponIndex < 0 || 
            player.inventoryManager.rightWeaponIndex >= player.inventoryManager.rightWeaponList.Length)
        {
            player.inventoryManager.rightWeaponIndex = 0;
        }
        if (player.inventoryManager.currentRightWeapon == null)
        {
            player.inventoryManager.rightWeaponIndex = 0;
        }
        
        WeaponStatsManager selectedWeapon = player.inventoryManager.rightWeaponList[player.inventoryManager.rightWeaponIndex];
        //upload new weapon
        player.inventoryManager.currentRightWeapon = selectedWeapon;
        LoadRightWeapon(); 
    }
    public void LoadLeftWeapon()
    {
        // Add null checks for player and inventoryManager
        if (player == null || player.inventoryManager == null)
        {
            Debug.LogWarning("Player or InventoryManager is null in PlayerEquipmentManager");
            return;
        }
        
        if (player.inventoryManager.currentLeftWeapon != null)
        {
            // Add null check for leftHandSlot
            if (leftHandSlot == null)
            {
                Debug.LogError("Left hand slot is not assigned in PlayerEquipmentManager");
                return;
            }
            
            LeftHandWeapon = Instantiate(player.inventoryManager.currentLeftWeapon.prefabs);
            leftHandSlot.LoadWeapon(LeftHandWeapon);
        }
    }

}//PlayerEquipmentManager
