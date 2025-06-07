using UnityEngine;

[CreateAssetMenu(fileName = "New Armor", menuName = "RPG/Equipment/Armor")]
public class ArmorStatsManager : ScriptableObject
{
    [Header("Basic Information")]
    public string armorName;
    public string description;
    public Sprite icon;
    public GameObject armorPrefab;
    
    [Header("Armor Type")]
    public ArmorSlot armorSlot;
    public ArmorType armorType;
    
    [Header("Defense")]
    public float physicalDefense;
    public float magicDefense;
    

    [Header("Properties")]
    public float weight;
    public int poise;
    
    [Header("Special Effects")]
    public ArmorEffect[] specialEffects;
}

public enum ArmorSlot
{
    Helmet, ChestArmor, Gauntlets, Legwear
}

public enum ArmorType
{
    Light, Medium, Heavy
}

[System.Serializable]
public class ArmorEffect
{
    public string effectName;
    public string description;
    public float effectValue;
}