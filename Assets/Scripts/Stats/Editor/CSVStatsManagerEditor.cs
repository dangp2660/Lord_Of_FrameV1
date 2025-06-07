using UnityEngine;
using UnityEditor;
using System.IO;

public class CSVStatsManagerEditor : EditorWindow
{
    private CSVStatsManager csvManager;
    private string exportPath = "Assets/Data/CSV/";
    private bool includeTimestamp = true;
    private bool scanProjectFiles = true;
    
    [MenuItem("RPG Tools/CSV Stats Manager")]
    public static void ShowWindow()
    {
        GetWindow<CSVStatsManagerEditor>("CSV Stats Manager");
    }
    
    private void OnGUI()
    {
        GUILayout.Label("CSV Stats Export Manager", EditorStyles.boldLabel);
        EditorGUILayout.Space();
        
        // Settings
        GUILayout.Label("Export Settings", EditorStyles.boldLabel);
        exportPath = EditorGUILayout.TextField("Export Path:", exportPath);
        includeTimestamp = EditorGUILayout.Toggle("Include Timestamp:", includeTimestamp);
        scanProjectFiles = EditorGUILayout.Toggle("Scan Project Files:", scanProjectFiles);
        
        EditorGUILayout.Space();
        
        // Export buttons
        GUILayout.Label("Export Options", EditorStyles.boldLabel);
        
        if (GUILayout.Button("Export All Stats to CSV"))
        {
            ExportAllStats();
        }
        
        EditorGUILayout.Space();
        
        if (GUILayout.Button("Export Character Stats"))
        {
            ExportCharacterStats();
        }
        
        if (GUILayout.Button("Export Weapon Stats"))
        {
            ExportWeaponStats();
        }
        
        if (GUILayout.Button("Export Armor Stats"))
        {
            ExportArmorStats();
        }
        
        if (GUILayout.Button("Export Item Stats"))
        {
            ExportItemStats();
        }
        
        if (GUILayout.Button("Export Spell Stats"))
        {
            ExportSpellStats();
        }
        
        EditorGUILayout.Space();
        
        // Utility buttons
        GUILayout.Label("Utilities", EditorStyles.boldLabel);
        
        if (GUILayout.Button("Open Export Folder"))
        {
            if (Directory.Exists(exportPath))
            {
                EditorUtility.RevealInFinder(exportPath);
            }
            else
            {
                Directory.CreateDirectory(exportPath);
                EditorUtility.RevealInFinder(exportPath);
            }
        }
        
        if (GUILayout.Button("Scan Project for Stats Files"))
        {
            ScanProjectForStatsFiles();
        }
    }
    
    private void ExportAllStats()
    {
        EnsureExportDirectory();
        
        ExportCharacterStats();
        ExportWeaponStats();
        ExportArmorStats();
        ExportItemStats();
        ExportSpellStats();
        
        EditorUtility.DisplayDialog("Export Complete", "All stats have been exported to CSV files successfully!", "OK");
    }
    
    private void ExportCharacterStats()
    {
        EnsureExportDirectory();
        var characterStats = GetAllAssetsOfType<CharacterStatsManager>();
        ExportToCSV(characterStats, "CharacterStats", GetCharacterStatsHeaders(), GetCharacterStatsData);
    }
    
    private void ExportWeaponStats()
    {
        EnsureExportDirectory();
        var weaponStats = GetAllAssetsOfType<WeaponStatsManager>();
        ExportToCSV(weaponStats, "WeaponStats", GetWeaponStatsHeaders(), GetWeaponStatsData);
    }
    
    private void ExportArmorStats()
    {
        EnsureExportDirectory();
        var armorStats = GetAllAssetsOfType<ArmorStatsManager>();
        ExportToCSV(armorStats, "ArmorStats", GetArmorStatsHeaders(), GetArmorStatsData);
    }
    
    private void ExportItemStats()
    {
        EnsureExportDirectory();
        var itemStats = GetAllAssetsOfType<ItemStats>();
        ExportToCSV(itemStats, "ItemStats", GetItemStatsHeaders(), GetItemStatsData);
    }
    
    private void ExportSpellStats()
    {
        EnsureExportDirectory();
        var spellStats = GetAllAssetsOfType<SpellStats>();
        ExportToCSV(spellStats, "SpellStats", GetSpellStatsHeaders(), GetSpellStatsData);
    }
    
    private T[] GetAllAssetsOfType<T>() where T : Object
    {
        string[] guids = AssetDatabase.FindAssets($"t:{typeof(T).Name}");
        T[] assets = new T[guids.Length];
        
        for (int i = 0; i < guids.Length; i++)
        {
            string path = AssetDatabase.GUIDToAssetPath(guids[i]);
            assets[i] = AssetDatabase.LoadAssetAtPath<T>(path);
        }
        
        return assets;
    }
    
    private void ExportToCSV<T>(T[] items, string fileName, string headers, System.Func<T, string> dataExtractor) where T : Object
    {
        if (items.Length == 0)
        {
            Debug.LogWarning($"No {typeof(T).Name} assets found in project.");
            return;
        }
        
        System.Text.StringBuilder csv = new System.Text.StringBuilder();
        csv.AppendLine(headers);
        
        foreach (var item in items)
        {
            csv.AppendLine(dataExtractor(item));
        }
        
        string timestamp = includeTimestamp ? $"_{System.DateTime.Now:yyyyMMdd_HHmmss}" : "";
        string fullFileName = $"{fileName}{timestamp}.csv";
        string fullPath = Path.Combine(exportPath, fullFileName);
        
        File.WriteAllText(fullPath, csv.ToString());
        AssetDatabase.Refresh();
        
        Debug.Log($"Exported {items.Length} {typeof(T).Name} items to {fullPath}");
    }
    
    private void EnsureExportDirectory()
    {
        if (!Directory.Exists(exportPath))
        {
            Directory.CreateDirectory(exportPath);
        }
    }
    
    private void ScanProjectForStatsFiles()
    {
        var characterStats = GetAllAssetsOfType<CharacterStatsManager>();
        var weaponStats = GetAllAssetsOfType<WeaponStatsManager>();
        var armorStats = GetAllAssetsOfType<ArmorStatsManager>();
        var itemStats = GetAllAssetsOfType<ItemStats>();
        var spellStats = GetAllAssetsOfType<SpellStats>();
        
        string message = $"Found in project:\n" +
                        $"Character Stats: {characterStats.Length}\n" +
                        $"Weapon Stats: {weaponStats.Length}\n" +
                        $"Armor Stats: {armorStats.Length}\n" +
                        $"Item Stats: {itemStats.Length}\n" +
                        $"Spell Stats: {spellStats.Length}";
        
        EditorUtility.DisplayDialog("Project Scan Results", message, "OK");
    }
    
    // Header and data extraction methods
    private string GetCharacterStatsHeaders()
    {
        return "Name,Level,Souls,SoulsLevel,Vigor,Mind,Endurance,Strength,Dexterity,Intelligence,MaxVirgo,MaxMind,MaxEndurance,PhysicalDefense,MagicDefense";
    }
    
    private string GetCharacterStatsData(CharacterStatsManager stats)
    {
        return $"{stats.name},{stats.level},{stats.souls},{stats.soulsLevel},{stats.vigor},{stats.mind},{stats.endurance},{stats.strength},{stats.dexterity},{stats.intelligence},{stats.maxVirgo},{stats.maxMind},{stats.maxEndurance},{stats.physicalDefense},{stats.magicDefense}";
    }
    
    private string GetWeaponStatsHeaders()
    {
        return "Name,Description,Type,Category,PhysicalDamage,MagicDamage,StrengthScaling,DexterityScaling,IntelligenceScaling,StrengthReq,DexterityReq,IntelligenceReq,Weight,CriticalRate,Range,CanBeUpgraded";
    }
    
    private string GetWeaponStatsData(WeaponStatsManager weapon)
    {
        return $"{weapon.weaponName},{weapon.description},{weapon.type},{weapon.category},{weapon.physicalDame},{weapon.magicDame},{weapon.strengthScaling},{weapon.dexterityScaling},{weapon.intelligenceScaling},{weapon.strengthRequirement},{weapon.dexterityRequirement},{weapon.intelligenceRequirement},{weapon.weight},{weapon.criticalRate},{weapon.range},{weapon.canBeUpgraded}";
    }
    
    private string GetArmorStatsHeaders()
    {
        return "Name,Description,ArmorSlot,ArmorType,PhysicalDefense,MagicDefense,Weight,Poise";
    }
    
    private string GetArmorStatsData(ArmorStatsManager armor)
    {
        return $"{armor.armorName},{armor.description},{armor.armorSlot},{armor.armorType},{armor.physicalDefense},{armor.magicDefense},{armor.weight},{armor.poise}";
    }
    
    private string GetItemStatsHeaders()
    {
        return "Name,Description,ItemType,Rarity,MaxStackSize,IsConsumable,IsKeyItem,CanBeCrafted";
    }
    
    private string GetItemStatsData(ItemStats item)
    {
        return $"{item.itemName},{item.description},{item.itemType},{item.rarity},{item.maxStackSize},{item.isConsumable},{item.isKeyItem},{item.canBeCrafted}";
    }
    
    private string GetSpellStatsHeaders()
    {
        return "Name,Description,SpellType,IntelligenceReq,FPCost,StaminaCost,BaseDamage,DamageType,IntelligenceScaling,CastTime,Range,Duration,MaxUses";
    }
    
    private string GetSpellStatsData(SpellStats spell)
    {
        return $"{spell.spellName},{spell.description},{spell.spellType},{spell.intelligenceRequirement},{spell.fpCost},{spell.staminaCost},{spell.baseDamage},{spell.damageType},{spell.intelligenceScaling},{spell.castTime},{spell.range},{spell.duration},{spell.maxUses}";
    }
}