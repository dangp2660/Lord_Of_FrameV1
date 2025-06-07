using System.Collections;
using System.Collections.Generic;
using UnityEngine;


[CreateAssetMenu(fileName = "New Weapon", menuName = "RPG/Equipment/Weapon")]
public class WeaponStatsManager : ScriptableObject
{
    [Header("Basic Information")]
    public string weaponName;
    public string description;
    public Sprite icon;
    public GameObject prefabs;

    [Header("Weapon Type")]
    public weaponType type;
    public weaponCategory category;

    [Header("Damage")]
    public int physicalDame;
    public int magicDame;

    [Header("Scaling")]
    public statScaling strengthScaling = statScaling.None;
    public statScaling dexterityScaling = statScaling.None;
    public statScaling intelligenceScaling = statScaling.None;

    [Header("Requirements")]
    public int strengthRequirement;
    public int dexterityRequirement;
    public int intelligenceRequirement;

    [Header("Properties")]
    public float weight;
    public float criticalRate = 100f;
    public int range;

    [Header("Special Abilities")]
    public WeaponSkill weaponSkill;
    public bool canBeUpgraded = true;

    public int CalculateTotalDamage(CharacterStatsManager stats)
    {
        float totalDamage = physicalDame;

        // Add scaling damage
        totalDamage += CalculateScalingDamage(strengthScaling, stats.strength, physicalDame);
        totalDamage += CalculateScalingDamage(dexterityScaling, stats.dexterity, physicalDame);
        totalDamage += CalculateScalingDamage(intelligenceScaling, stats.intelligence, magicDame);
        return Mathf.RoundToInt(totalDamage);
    }

    private float CalculateScalingDamage(statScaling scaling, int statValue, int baseDamage)
    {
        float scalingMultiplier = GetScalingMultiplier(scaling);
        return baseDamage * (statValue / 100f) * scalingMultiplier;
    }

    private float GetScalingMultiplier(statScaling scaling)
    {
        switch (scaling)
        {
            case statScaling.S: return 1.0f;
            case statScaling.A: return 0.8f;
            case statScaling.B: return 0.6f;
            case statScaling.C: return 0.4f;
            case statScaling.D: return 0.2f;
            case statScaling.E: return 0.1f;
            default: return 0f;
        }
    }
}
public enum weaponType
{
    Dagger, Sword, GreatSword, Bow, CrossBow, Spear, Sheild,
}

public enum weaponCategory
{
    Melee, Ranged, Magic, Sheild
}

public enum statScaling
{
    None, E, D, C, B, A, S
}

[System.Serializable]
public class WeaponSkill
{
    public string skillName;
    public string description;
    public int fpCost;
}
