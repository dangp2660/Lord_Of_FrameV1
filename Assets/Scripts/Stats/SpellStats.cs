using UnityEngine;

[CreateAssetMenu(fileName = "New Spell", menuName = "RPG/Magic/Spell")]
public class SpellStats : ScriptableObject
{
    [Header("Basic Information")]
    public string spellName;
    public string description;
    public Sprite icon;
    public GameObject spellEffect;
    public int mindCost;
    
    [Header("Spell Type")]
    public SpellType spellType;
    
    [Header("Requirements")]
    public int intelligenceRequirement;
    public int fpCost;
    public int staminaCost;
    
    [Header("Damage")]
    public int baseDamage;
    public DamageType damageType;
    public statScaling intelligenceScaling;

    [Header("Properties")]
    public float castTime;
    public float range;
    public float duration;
    public int maxUses = -1; // -1 for unlimited
}

public enum SpellType
{
    Attack, Buff, Debuf
}

public enum DamageType
{
    Physical, Magic, Fire, Lightning, Holy
}
