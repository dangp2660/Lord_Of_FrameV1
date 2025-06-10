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
        
        // Import buttons
        GUILayout.Label("Import Options", EditorStyles.boldLabel);
        
        if (GUILayout.Button("Import Character Stats from CSV"))
        {
            ImportCharacterStatsFromCSV();
        }
        
        if (GUILayout.Button("Import Weapon Stats from CSV"))
        {
            ImportWeaponStatsFromCSV();
        }
        
        if (GUILayout.Button("Import Armor Stats from CSV"))
        {
            ImportArmorStatsFromCSV();
        }
        
        if (GUILayout.Button("Import Item Stats from CSV"))
        {
            ImportItemStatsFromCSV();
        }
        
        if (GUILayout.Button("Import Spell Stats from CSV"))
        {
            ImportSpellStatsFromCSV();
        }
        
        if (GUILayout.Button("Import All CSVs in Folder"))
        {
            ImportAllCSVsInFolder();
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

    private void ImportCharacterStatsFromCSV()
    {
        string path = EditorUtility.OpenFilePanel("Import Character Stats CSV", exportPath, "csv");
        if (string.IsNullOrEmpty(path)) return;
        string[] lines = File.ReadAllLines(path);
        if (lines.Length < 2) { EditorUtility.DisplayDialog("Import Failed", "CSV file is empty or missing data.", "OK"); return; }
        string assetFolder = "Assets/Data/Stats/Characters/";
        if (!Directory.Exists(assetFolder)) Directory.CreateDirectory(assetFolder);
        int imported = 0;
        for (int i = 1; i < lines.Length; i++)
        {
            if (string.IsNullOrWhiteSpace(lines[i])) continue;
            string[] values = lines[i].Split(',');
            if (values.Length < 15) continue;
            string assetName = values[0];
            string assetPath = assetFolder + assetName + ".asset";
            CharacterStatsManager asset = AssetDatabase.LoadAssetAtPath<CharacterStatsManager>(assetPath);
            if (asset == null) { asset = ScriptableObject.CreateInstance<CharacterStatsManager>(); AssetDatabase.CreateAsset(asset, assetPath); }
            asset.name = assetName;
            int.TryParse(values[1], out asset.level);
            int.TryParse(values[2], out asset.souls);
            int.TryParse(values[3], out asset.soulsLevel);
            int.TryParse(values[4], out asset.vigor);
            int.TryParse(values[5], out asset.mind);
            int.TryParse(values[6], out asset.endurance);
            int.TryParse(values[7], out asset.strength);
            int.TryParse(values[8], out asset.dexterity);
            int.TryParse(values[9], out asset.intelligence);
            int.TryParse(values[10], out asset.maxVirgo);
            int.TryParse(values[11], out asset.maxMind);
            int.TryParse(values[12], out asset.maxEndurance);
            int.TryParse(values[13], out asset.physicalDefense);
            int.TryParse(values[14], out asset.magicDefense);
            EditorUtility.SetDirty(asset);
            imported++;
        }
        AssetDatabase.SaveAssets(); AssetDatabase.Refresh();
        EditorUtility.DisplayDialog("Import Complete", $"Imported {imported} Character Stats assets.", "OK");
    }

    private void ImportWeaponStatsFromCSV()
    {
        string path = EditorUtility.OpenFilePanel("Import Weapon Stats CSV", exportPath, "csv");
        if (string.IsNullOrEmpty(path)) return;
        string[] lines = File.ReadAllLines(path);
        if (lines.Length < 2) { EditorUtility.DisplayDialog("Import Failed", "CSV file is empty or missing data.", "OK"); return; }
        string assetFolder = "Assets/Data/Stats/Weapons/";
        if (!Directory.Exists(assetFolder)) Directory.CreateDirectory(assetFolder);
        int imported = 0;
        for (int i = 1; i < lines.Length; i++)
        {
            if (string.IsNullOrWhiteSpace(lines[i])) continue;
            string[] values = lines[i].Split(',');
            if (values.Length < 15) continue;
            string assetName = values[0];
            string assetPath = assetFolder + assetName + ".asset";
            WeaponStatsManager asset = AssetDatabase.LoadAssetAtPath<WeaponStatsManager>(assetPath);
            if (asset == null) { asset = ScriptableObject.CreateInstance<WeaponStatsManager>(); AssetDatabase.CreateAsset(asset, assetPath); }
            asset.weaponName = values[0];
            asset.description = values[1];
            System.Enum.TryParse(values[2], out asset.type);
            System.Enum.TryParse(values[3], out asset.category);
            int.TryParse(values[4], out asset.physicalDame);
            int.TryParse(values[5], out asset.magicDame);
            System.Enum.TryParse(values[6], out asset.strengthScaling);
            System.Enum.TryParse(values[7], out asset.dexterityScaling);
            System.Enum.TryParse(values[8], out asset.intelligenceScaling);
            int.TryParse(values[9], out asset.strengthRequirement);
            int.TryParse(values[10], out asset.dexterityRequirement);
            int.TryParse(values[11], out asset.intelligenceRequirement);
            float.TryParse(values[12], out asset.weight);
            float.TryParse(values[13], out asset.criticalRate);
            int.TryParse(values[14], out asset.range);
            bool.TryParse(values.Length > 15 ? values[15] : "true", out asset.canBeUpgraded);
            EditorUtility.SetDirty(asset);
            imported++;
        }
        AssetDatabase.SaveAssets(); AssetDatabase.Refresh();
        EditorUtility.DisplayDialog("Import Complete", $"Imported {imported} Weapon Stats assets.", "OK");
    }

    private void ImportArmorStatsFromCSV()  
    {
        string path = EditorUtility.OpenFilePanel("Import Armor Stats CSV", exportPath, "csv");
        if (string.IsNullOrEmpty(path)) return;
        string[] lines = File.ReadAllLines(path);
        if (lines.Length < 2) { EditorUtility.DisplayDialog("Import Failed", "CSV file is empty or missing data.", "OK"); return; }
        string assetFolder = "Assets/Data/Stats/Armors/";
        if (!Directory.Exists(assetFolder)) Directory.CreateDirectory(assetFolder);
        int imported = 0;
        for (int i = 1; i < lines.Length; i++)
        {
            if (string.IsNullOrWhiteSpace(lines[i])) continue;
            string[] values = lines[i].Split(',');
            if (values.Length < 8) continue;
            string assetName = values[0];
            string assetPath = assetFolder + assetName + ".asset";
            ArmorStatsManager asset = AssetDatabase.LoadAssetAtPath<ArmorStatsManager>(assetPath);
            if (asset == null) { asset = ScriptableObject.CreateInstance<ArmorStatsManager>(); AssetDatabase.CreateAsset(asset, assetPath); }
            asset.armorName = values[0];
            asset.description = values[1];
            System.Enum.TryParse(values[2], out asset.armorSlot);
            System.Enum.TryParse(values[3], out asset.armorType);
            float.TryParse(values[4], out asset.physicalDefense);
            float.TryParse(values[5], out asset.magicDefense);
            float.TryParse(values[6], out asset.weight);
            int.TryParse(values[7], out asset.poise);
            EditorUtility.SetDirty(asset);
            imported++;
        }
        AssetDatabase.SaveAssets(); AssetDatabase.Refresh();
        EditorUtility.DisplayDialog("Import Complete", $"Imported {imported} Armor Stats assets.", "OK");
    }

    private void ImportItemStatsFromCSV()
    {
        string path = EditorUtility.OpenFilePanel("Import Item Stats CSV", exportPath, "csv");
        if (string.IsNullOrEmpty(path)) return;
        string[] lines = File.ReadAllLines(path);
        if (lines.Length < 2) { EditorUtility.DisplayDialog("Import Failed", "CSV file is empty or missing data.", "OK"); return; }
        string assetFolder = "Assets/Data/Stats/Items/";
        if (!Directory.Exists(assetFolder)) Directory.CreateDirectory(assetFolder);
        int imported = 0;
        for (int i = 1; i < lines.Length; i++)
        {
            if (string.IsNullOrWhiteSpace(lines[i])) continue;
            string[] values = lines[i].Split(',');
            if (values.Length < 8) continue;
            string assetName = values[0];
            string assetPath = assetFolder + assetName + ".asset";
            ItemStats asset = AssetDatabase.LoadAssetAtPath<ItemStats>(assetPath);
            if (asset == null) { asset = ScriptableObject.CreateInstance<ItemStats>(); AssetDatabase.CreateAsset(asset, assetPath); }
            asset.itemName = values[0];
            asset.description = values[1];
            System.Enum.TryParse(values[2], out asset.itemType);
            System.Enum.TryParse(values[3], out asset.rarity);
            int.TryParse(values[4], out asset.maxStackSize);
            bool.TryParse(values[5], out asset.isConsumable);
            bool.TryParse(values[6], out asset.isKeyItem);
            bool.TryParse(values[7], out asset.canBeCrafted);
            EditorUtility.SetDirty(asset);
            imported++;
        }
        AssetDatabase.SaveAssets(); AssetDatabase.Refresh();
        EditorUtility.DisplayDialog("Import Complete", $"Imported {imported} Item Stats assets.", "OK");
    }

    private void ImportSpellStatsFromCSV()
    {
        string path = EditorUtility.OpenFilePanel("Import Spell Stats CSV", exportPath, "csv");
        if (string.IsNullOrEmpty(path)) return;
        string[] lines = File.ReadAllLines(path);
        if (lines.Length < 2) { EditorUtility.DisplayDialog("Import Failed", "CSV file is empty or missing data.", "OK"); return; }
        string assetFolder = "Assets/Data/Stats/Spells/";
        if (!Directory.Exists(assetFolder)) Directory.CreateDirectory(assetFolder);
        int imported = 0;
        for (int i = 1; i < lines.Length; i++)
        {
            if (string.IsNullOrWhiteSpace(lines[i])) continue;
            string[] values = lines[i].Split(',');
            if (values.Length < 13) continue;
            string assetName = values[0];
            string assetPath = assetFolder + assetName + ".asset";
            SpellStats asset = AssetDatabase.LoadAssetAtPath<SpellStats>(assetPath);
            if (asset == null) { asset = ScriptableObject.CreateInstance<SpellStats>(); AssetDatabase.CreateAsset(asset, assetPath); }
            asset.spellName = values[0];
            asset.description = values[1];
            System.Enum.TryParse(values[2], out asset.spellType);
            int.TryParse(values[3], out asset.intelligenceRequirement);
            int.TryParse(values[4], out asset.fpCost);
            int.TryParse(values[5], out asset.staminaCost);
            int.TryParse(values[6], out asset.baseDamage);
            System.Enum.TryParse(values[7], out asset.damageType);
            System.Enum.TryParse(values[8], out asset.intelligenceScaling);
            float.TryParse(values[9], out asset.castTime);
            float.TryParse(values[10], out asset.range);
            float.TryParse(values[11], out asset.duration);
            int.TryParse(values[12], out asset.maxUses);
            EditorUtility.SetDirty(asset);
            imported++;
        }
        AssetDatabase.SaveAssets(); AssetDatabase.Refresh();
        EditorUtility.DisplayDialog("Import Complete", $"Imported {imported} Spell Stats assets.", "OK");
    }

    private void ImportAllCSVsInFolder()
    {
        string folderPath = EditorUtility.OpenFolderPanel("Select Folder with CSVs", exportPath, "");
        if (string.IsNullOrEmpty(folderPath)) return;

        string[] csvFiles = Directory.GetFiles(folderPath, "*.csv");
        int totalImported = 0;
        foreach (string file in csvFiles)
        {
            string fileName = Path.GetFileName(file).ToLower();
            if (fileName == "characterstats.csv")
            {
                ImportCharacterStatsFromCSV(file);
                totalImported++;
            }
            else if (fileName == "weaponstats.csv")
            {
                ImportWeaponStatsFromCSV(file);
                totalImported++;
            }
            else if (fileName == "armorstats.csv")
            {
                ImportArmorStatsFromCSV(file);
                totalImported++;
            }
            else if (fileName == "itemstats.csv")
            {
                ImportItemStatsFromCSV(file);
                totalImported++;
            }
            else if (fileName == "spellstats.csv")
            {
                ImportSpellStatsFromCSV(file);
                totalImported++;
            }
        }
        AssetDatabase.SaveAssets(); AssetDatabase.Refresh();
        EditorUtility.DisplayDialog("Import Complete", $"Imported {totalImported} CSV files.", "OK");
    }

    // Overloads for direct file import
    private void ImportCharacterStatsFromCSV(string filePath)
    {
        string[] lines = File.ReadAllLines(filePath);
        if (lines.Length < 2) return;
        string assetFolder = "Assets/Data/Stats/Characters/";
        if (!Directory.Exists(assetFolder)) Directory.CreateDirectory(assetFolder);
        for (int i = 1; i < lines.Length; i++)
        {
            if (string.IsNullOrWhiteSpace(lines[i])) continue;
            string[] values = lines[i].Split(',');
            if (values.Length < 15) continue;
            string assetName = values[0];
            string assetPath = assetFolder + assetName + ".asset";
            CharacterStatsManager asset = AssetDatabase.LoadAssetAtPath<CharacterStatsManager>(assetPath);
            if (asset == null) { asset = ScriptableObject.CreateInstance<CharacterStatsManager>(); AssetDatabase.CreateAsset(asset, assetPath); }
            asset.name = assetName;
            int.TryParse(values[1], out asset.level);
            int.TryParse(values[2], out asset.souls);
            int.TryParse(values[3], out asset.soulsLevel);
            int.TryParse(values[4], out asset.vigor);
            int.TryParse(values[5], out asset.mind);
            int.TryParse(values[6], out asset.endurance);
            int.TryParse(values[7], out asset.strength);
            int.TryParse(values[8], out asset.dexterity);
            int.TryParse(values[9], out asset.intelligence);
            int.TryParse(values[10], out asset.maxVirgo);
            int.TryParse(values[11], out asset.maxMind);
            int.TryParse(values[12], out asset.maxEndurance);
            int.TryParse(values[13], out asset.physicalDefense);
            int.TryParse(values[14], out asset.magicDefense);
            EditorUtility.SetDirty(asset);
        }
    }
    private void ImportWeaponStatsFromCSV(string filePath)
    {
        string[] lines = File.ReadAllLines(filePath);
        if (lines.Length < 2) return;
        string assetFolder = "Assets/Data/Stats/Weapons/";
        if (!Directory.Exists(assetFolder)) Directory.CreateDirectory(assetFolder);
        for (int i = 1; i < lines.Length; i++)
        {
            if (string.IsNullOrWhiteSpace(lines[i])) continue;
            string[] values = lines[i].Split(',');
            if (values.Length < 15) continue;
            string assetName = values[0];
            string assetPath = assetFolder + assetName + ".asset";
            WeaponStatsManager asset = AssetDatabase.LoadAssetAtPath<WeaponStatsManager>(assetPath);
            if (asset == null) { asset = ScriptableObject.CreateInstance<WeaponStatsManager>(); AssetDatabase.CreateAsset(asset, assetPath); }
            asset.weaponName = values[0];
            asset.description = values[1];
            System.Enum.TryParse(values[2], out asset.type);
            System.Enum.TryParse(values[3], out asset.category);
            int.TryParse(values[4], out asset.physicalDame);
            int.TryParse(values[5], out asset.magicDame);
            System.Enum.TryParse(values[6], out asset.strengthScaling);
            System.Enum.TryParse(values[7], out asset.dexterityScaling);
            System.Enum.TryParse(values[8], out asset.intelligenceScaling);
            int.TryParse(values[9], out asset.strengthRequirement);
            int.TryParse(values[10], out asset.dexterityRequirement);
            int.TryParse(values[11], out asset.intelligenceRequirement);
            float.TryParse(values[12], out asset.weight);
            float.TryParse(values[13], out asset.criticalRate);
            int.TryParse(values[14], out asset.range);
            bool.TryParse(values.Length > 15 ? values[15] : "true", out asset.canBeUpgraded);
            EditorUtility.SetDirty(asset);
        }
    }
    private void ImportArmorStatsFromCSV(string filePath)
    {
        string[] lines = File.ReadAllLines(filePath);
        if (lines.Length < 2) return;
        string assetFolder = "Assets/Data/Stats/Armors/";
        if (!Directory.Exists(assetFolder)) Directory.CreateDirectory(assetFolder);
        for (int i = 1; i < lines.Length; i++)
        {
            if (string.IsNullOrWhiteSpace(lines[i])) continue;
            string[] values = lines[i].Split(',');
            if (values.Length < 8) continue;
            string assetName = values[0];
            string assetPath = assetFolder + assetName + ".asset";
            ArmorStatsManager asset = AssetDatabase.LoadAssetAtPath<ArmorStatsManager>(assetPath);
            if (asset == null) { asset = ScriptableObject.CreateInstance<ArmorStatsManager>(); AssetDatabase.CreateAsset(asset, assetPath); }
            asset.armorName = values[0];
            asset.description = values[1];
            System.Enum.TryParse(values[2], out asset.armorSlot);
            System.Enum.TryParse(values[3], out asset.armorType);
            float.TryParse(values[4], out asset.physicalDefense);
            float.TryParse(values[5], out asset.magicDefense);
            float.TryParse(values[6], out asset.weight);
            int.TryParse(values[7], out asset.poise);
            EditorUtility.SetDirty(asset);
        }
    }
    private void ImportItemStatsFromCSV(string filePath)
    {
        string[] lines = File.ReadAllLines(filePath);
        if (lines.Length < 2) return;
        string assetFolder = "Assets/Data/Stats/Items/";
        if (!Directory.Exists(assetFolder)) Directory.CreateDirectory(assetFolder);
        for (int i = 1; i < lines.Length; i++)
        {
            if (string.IsNullOrWhiteSpace(lines[i])) continue;
            string[] values = lines[i].Split(',');
            if (values.Length < 8) continue;
            string assetName = values[0];
            string assetPath = assetFolder + assetName + ".asset";
            ItemStats asset = AssetDatabase.LoadAssetAtPath<ItemStats>(assetPath);
            if (asset == null) { asset = ScriptableObject.CreateInstance<ItemStats>(); AssetDatabase.CreateAsset(asset, assetPath); }
            asset.itemName = values[0];
            asset.description = values[1];
            System.Enum.TryParse(values[2], out asset.itemType);
            System.Enum.TryParse(values[3], out asset.rarity);
            int.TryParse(values[4], out asset.maxStackSize);
            bool.TryParse(values[5], out asset.isConsumable);
            bool.TryParse(values[6], out asset.isKeyItem);
            bool.TryParse(values[7], out asset.canBeCrafted);
            EditorUtility.SetDirty(asset);
        }
    }
    private void ImportSpellStatsFromCSV(string filePath)
    {
        string[] lines = File.ReadAllLines(filePath);
        if (lines.Length < 2) return;
        string assetFolder = "Assets/Data/Stats/Spells/";
        if (!Directory.Exists(assetFolder)) Directory.CreateDirectory(assetFolder);
        for (int i = 1; i < lines.Length; i++)
        {
            if (string.IsNullOrWhiteSpace(lines[i])) continue;
            string[] values = lines[i].Split(',');
            if (values.Length < 13) continue;
            string assetName = values[0];
            string assetPath = assetFolder + assetName + ".asset";
            SpellStats asset = AssetDatabase.LoadAssetAtPath<SpellStats>(assetPath);
            if (asset == null) { asset = ScriptableObject.CreateInstance<SpellStats>(); AssetDatabase.CreateAsset(asset, assetPath); }
            asset.spellName = values[0];
            asset.description = values[1];
            System.Enum.TryParse(values[2], out asset.spellType);
            int.TryParse(values[3], out asset.intelligenceRequirement);
            int.TryParse(values[4], out asset.fpCost);
            int.TryParse(values[5], out asset.staminaCost);
            int.TryParse(values[6], out asset.baseDamage);
            System.Enum.TryParse(values[7], out asset.damageType);
            System.Enum.TryParse(values[8], out asset.intelligenceScaling);
            float.TryParse(values[9], out asset.castTime);
            float.TryParse(values[10], out asset.range);
            float.TryParse(values[11], out asset.duration);
            int.TryParse(values[12], out asset.maxUses);
            EditorUtility.SetDirty(asset);
        }
    }
}