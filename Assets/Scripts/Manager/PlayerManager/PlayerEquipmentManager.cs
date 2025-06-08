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
        // Add null checks for player and inventoryManager
        if (player == null || player.inventoryManager == null)
        {
            Debug.LogWarning("Player or InventoryManager is null in PlayerEquipmentManager");
            return;
        }
        
        if (player.inventoryManager.currentRightWeapon != null)
        {
            // Add null check for rightHandSlot
            if (rightHandSlot == null)
            {
                Debug.LogError("Right hand slot is not assigned in PlayerEquipmentManager");
                return;
            }
            
            RightHandWeapon = Instantiate(player.inventoryManager.currentRightWeapon.prefabs);
            rightHandSlot.LoadWeapon(RightHandWeapon);
        }
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
