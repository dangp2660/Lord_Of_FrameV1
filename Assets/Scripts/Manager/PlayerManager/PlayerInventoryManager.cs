using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerInventoryManager : MonoBehaviour
{
    public WeaponStatsManager currentRightWeapon;
    public WeaponStatsManager currentLeftWeapon;
    [Header("Quick Slot")]
    public WeaponStatsManager[] rightWeaponList = new WeaponStatsManager[3];
    public int rightWeaponIndex = 0;
    public WeaponStatsManager[] leftWeaponList = new WeaponStatsManager[3];
    public int leftWeaponIndex = 0;
}
