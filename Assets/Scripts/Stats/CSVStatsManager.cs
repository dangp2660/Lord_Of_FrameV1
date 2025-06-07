using System.Collections.Generic;
using System.IO;
using System.Text;
using UnityEngine;
using UnityEditor;

public class CSVStatsManager : MonoBehaviour
{
    [Header("CSV Export Settings")]
    public string exportPath = "Assets/Data/CSV/";
    public bool includeTimestamp = true;
    public float saveIntervalSeconds = 60f;
    
    [Header("Auto Save")]
    public bool autoSave = false;
    private float lastSaveTime;
    
    private void Start()
    {
        // Ensure export directory exists
        if (!Directory.Exists(exportPath))
        {
            Directory.CreateDirectory(exportPath);
        }
        
        lastSaveTime = Time.time;
    }
    
    private void Update()
    {
        if (autoSave && Time.time - lastSaveTime >= saveIntervalSeconds)
        {
            ExportAllStatsToCSV();
            lastSaveTime = Time.time;
        }
    }
    
    public void ExportAllStatsToCSV()
    {
        ExportCharacterStats();
        ExportWeaponStats();
        ExportArmorStats();
        ExportItemStats();
        ExportSpellStats();
        
        Debug.Log("All stats exported to CSV successfully!");
    }
    
    public void ExportCharacterStats()
    {
        var characterStats = Resources.FindObjectsOfTypeAll<CharacterStatsManager>();
        if (characterStats.Length == 0) return;
        
        StringBuilder csv = new StringBuilder();
        csv.AppendLine("Name,Level,Souls,SoulsLevel,Vigor,Mind,Endurance,Strength,Dexterity,Intelligence,MaxVirgo,MaxMind,MaxEndurance,PhysicalDefense,MagicDefense");
        
        foreach (var stats in characterStats)
        {
            csv.AppendLine($"{stats.name},{stats.level},{stats.souls},{stats.soulsLevel},{stats.vigor},{stats.mind},{stats.endurance},{stats.strength},{stats.dexterity},{stats.intelligence},{stats.maxVirgo},{stats.maxMind},{stats.maxEndurance},{stats.physicalDefense},{stats.magicDefense}");
        }
        
        string fileName = includeTimestamp ? $"CharacterStats_{System.DateTime.Now:yyyyMMdd_HHmmss}.csv" : "CharacterStats.csv";
        File.WriteAllText(Path.Combine(exportPath, fileName), csv.ToString());
    }
    
    public void ExportWeaponStats()
    {
        var weaponStats = Resources.FindObjectsOfTypeAll<WeaponStatsManager>();
        if (weaponStats.Length == 0) return;
        
        StringBuilder csv = new StringBuilder();
        csv.AppendLine("Name,Description,Type,Category,PhysicalDamage,MagicDamage,StrengthScaling,DexterityScaling,IntelligenceScaling,StrengthReq,DexterityReq,IntelligenceReq,Weight,CriticalRate,Range,CanBeUpgraded");
        
        foreach (var weapon in weaponStats)
        {
            csv.AppendLine($"{weapon.weaponName},{weapon.description},{weapon.type},{weapon.category},{weapon.physicalDame},{weapon.magicDame},{weapon.strengthScaling},{weapon.dexterityScaling},{weapon.intelligenceScaling},{weapon.strengthRequirement},{weapon.dexterityRequirement},{weapon.intelligenceRequirement},{weapon.weight},{weapon.criticalRate},{weapon.range},{weapon.canBeUpgraded}");
        }
        
        string fileName = includeTimestamp ? $"WeaponStats_{System.DateTime.Now:yyyyMMdd_HHmmss}.csv" : "WeaponStats.csv";
        File.WriteAllText(Path.Combine(exportPath, fileName), csv.ToString());
    }
    
    public void ExportArmorStats()
    {
        var armorStats = Resources.FindObjectsOfTypeAll<ArmorStatsManager>();
        if (armorStats.Length == 0) return;
        
        StringBuilder csv = new StringBuilder();
        csv.AppendLine("Name,Description,ArmorSlot,ArmorType,PhysicalDefense,MagicDefense,Weight,Poise");
        
        foreach (var armor in armorStats)
        {
            csv.AppendLine($"{armor.armorName},{armor.description},{armor.armorSlot},{armor.armorType},{armor.physicalDefense},{armor.magicDefense},{armor.weight},{armor.poise}");
        }
        
        string fileName = includeTimestamp ? $"ArmorStats_{System.DateTime.Now:yyyyMMdd_HHmmss}.csv" : "ArmorStats.csv";
        File.WriteAllText(Path.Combine(exportPath, fileName), csv.ToString());
    }
    
    public void ExportItemStats()
    {
        var itemStats = Resources.FindObjectsOfTypeAll<ItemStats>();
        if (itemStats.Length == 0) return;
        
        StringBuilder csv = new StringBuilder();
        csv.AppendLine("Name,Description,ItemType,Rarity,MaxStackSize,IsConsumable,IsKeyItem,CanBeCrafted");
        
        foreach (var item in itemStats)
        {
            csv.AppendLine($"{item.itemName},{item.description},{item.itemType},{item.rarity},{item.maxStackSize},{item.isConsumable},{item.isKeyItem},{item.canBeCrafted}");
        }
        
        string fileName = includeTimestamp ? $"ItemStats_{System.DateTime.Now:yyyyMMdd_HHmmss}.csv" : "ItemStats.csv";
        File.WriteAllText(Path.Combine(exportPath, fileName), csv.ToString());
    }
    
    public void ExportSpellStats()
    {
        var spellStats = Resources.FindObjectsOfTypeAll<SpellStats>();
        if (spellStats.Length == 0) return;
        
        StringBuilder csv = new StringBuilder();
        csv.AppendLine("Name,Description,SpellType,IntelligenceReq,FPCost,StaminaCost,BaseDamage,DamageType,IntelligenceScaling,CastTime,Range,Duration,MaxUses");
        
        foreach (var spell in spellStats)
        {
            csv.AppendLine($"{spell.spellName},{spell.description},{spell.spellType},{spell.intelligenceRequirement},{spell.fpCost},{spell.staminaCost},{spell.baseDamage},{spell.damageType},{spell.intelligenceScaling},{spell.castTime},{spell.range},{spell.duration},{spell.maxUses}");
        }
        
        string fileName = includeTimestamp ? $"SpellStats_{System.DateTime.Now:yyyyMMdd_HHmmss}.csv" : "SpellStats.csv";
        File.WriteAllText(Path.Combine(exportPath, fileName), csv.ToString());
    }
}