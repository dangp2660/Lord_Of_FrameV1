using UnityEngine;

[CreateAssetMenu(fileName = "New Item", menuName = "RPG/Items/Consumable")]
public class ItemStats : ScriptableObject
{
    [Header("Basic Information")]
    public string itemName;
    public string description;
    public Sprite icon;
    
    [Header("Item Properties")]
    public ItemType itemType;
    public ItemRarity rarity;
    public int maxStackSize = 1;
    public bool isConsumable = true;
    public bool isKeyItem = false;
    
    [Header("Effects")]
    public ItemEffect[] effects;
    
    [Header("Crafting")]
    public bool canBeCrafted = false;
    public CraftingRecipe craftingRecipe;
}

public enum ItemType
{
    Consumable, Material, KeyItem, Tool, Upgrade
}

public enum ItemRarity
{
    Common, Uncommon, Rare, Epic, Legendary
}

[System.Serializable]
public class ItemEffect
{
    public EffectType effectType;
    public float value;
    public float duration;
}

public enum EffectType
{
    HealHealth, RestoreFP, RestoreStamina, 
    BoostAttack, BoostDefense, CurePoison,
    TemporaryStatBoost, RemoveStatusEffect
}

[System.Serializable]
public class CraftingRecipe
{
    public CraftingMaterial[] materials;
    public int resultQuantity = 1;
}

[System.Serializable]
public class CraftingMaterial
{
    public ItemStats material;
    public int quantity;
}