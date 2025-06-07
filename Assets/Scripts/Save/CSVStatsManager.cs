using System.Collections.Generic;
using System.IO;
using System.Text;
using UnityEngine;

public class CSVStatsManager : MonoBehaviour
{
    [Header("CSV Settings")]
    public string csvFileName = "character_stats.csv";
    public bool saveOnLevelUp = true;
    public bool autoSaveInterval = false;
    public float saveIntervalSeconds = 60f;

    private string csvFilePath;
    private float lastSaveTime;

    private void Start()
    {
        // Create CSV file path in persistent data path
        csvFilePath = Path.Combine(Application.persistentDataPath, csvFileName);

        // Create CSV file with headers if it doesn't exist
        if (!File.Exists(csvFilePath))
        {
            CreateCSVWithHeaders();
        }
    }

    private void Update()
    {
        // Auto-save functionality
        if (autoSaveInterval && Time.time - lastSaveTime >= saveIntervalSeconds)
        {
            SaveCurrentStats();
            lastSaveTime = Time.time;
        }
    }

    private void CreateCSVWithHeaders()
    {
        StringBuilder csvContent = new StringBuilder();

        // Add headers
        csvContent.AppendLine("Timestamp,Level,Souls,SoulsLevel,Vigor,Mind,Endurance,Strength,Dexterity,Intelligence,MaxHealth,MaxMana,MaxStamina,PhysicalDefense,MagicDefense");

        File.WriteAllText(csvFilePath, csvContent.ToString());
        Debug.Log($"CSV file created at: {csvFilePath}");
    }

    public void SaveCurrentStats()
    {
        CharacterStatsManager characterStats = FindObjectOfType<CharacterStatsManager>();
        if (characterStats == null)
        {
            Debug.LogWarning("No CharacterStatsManager found in scene!");
            return;
        }

        SaveStatsToCSV(characterStats);
    }

    public void SaveStatsToCSV(CharacterStatsManager stats)
    {
        if (stats == null)
        {
            Debug.LogError("CharacterStatsManager is null!");
            return;
        }

        StringBuilder csvLine = new StringBuilder();

        // Add timestamp
        csvLine.Append(System.DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss"));
        csvLine.Append(",");

        // Add character stats
        csvLine.Append(stats.level).Append(",");
        csvLine.Append(stats.souls).Append(",");
        csvLine.Append(stats.soulsLevel).Append(",");
        csvLine.Append(stats.vigor).Append(",");
        csvLine.Append(stats.mind).Append(",");
        csvLine.Append(stats.endurance).Append(",");
        csvLine.Append(stats.strength).Append(",");
        csvLine.Append(stats.dexterity).Append(",");
        csvLine.Append(stats.intelligence).Append(",");

        // Add derived stats
        csvLine.Append(stats.maxVirgo).Append(",");
        csvLine.Append(stats.maxMind).Append(",");
        csvLine.Append(stats.maxEndurance).Append(",");
        csvLine.Append(stats.physicalDefense).Append(",");
        csvLine.Append(stats.magicDefense);

        // Append to file
        File.AppendAllText(csvFilePath, csvLine.ToString() + "\n");

        Debug.Log($"Stats saved to CSV: {csvFilePath}");
    }

    public List<CharacterStatsData> LoadStatsFromCSV()
    {
        List<CharacterStatsData> statsList = new List<CharacterStatsData>();

        if (!File.Exists(csvFilePath))
        {
            Debug.LogWarning($"CSV file not found: {csvFilePath}");
            return statsList;
        }

        string[] lines = File.ReadAllLines(csvFilePath);

        // Skip header line
        for (int i = 1; i < lines.Length; i++)
        {
            string[] values = lines[i].Split(',');

            if (values.Length >= 15)
            {
                CharacterStatsData statsData = new CharacterStatsData
                {
                    timestamp = values[0],
                    level = int.Parse(values[1]),
                    souls = int.Parse(values[2]),
                    soulsLevel = int.Parse(values[3]),
                    vigor = int.Parse(values[4]),
                    mind = int.Parse(values[5]),
                    endurance = int.Parse(values[6]),
                    strength = int.Parse(values[7]),
                    dexterity = int.Parse(values[8]),
                    intelligence = int.Parse(values[9]),
                    maxVirgo = int.Parse(values[10]),
                    maxMind = int.Parse(values[11]),
                    maxEndurance = int.Parse(values[12]),
                    physicalDefense = int.Parse(values[13]),
                    magicDefense = int.Parse(values[14])
                };

                statsList.Add(statsData);
            }
        }

        Debug.Log($"Loaded {statsList.Count} stat entries from CSV");
        return statsList;
    }

    public void SaveItemStatsToCSV(ItemStats itemStats)
    {
        string itemCsvPath = Path.Combine(Application.persistentDataPath, "item_stats.csv");

        // Create headers if file doesn't exist
        if (!File.Exists(itemCsvPath))
        {
            StringBuilder headers = new StringBuilder();
            headers.AppendLine("Timestamp,ItemName,Description,ItemType,Rarity,MaxStackSize,IsConsumable,IsKeyItem,CanBeCrafted");
            File.WriteAllText(itemCsvPath, headers.ToString());
        }

        StringBuilder csvLine = new StringBuilder();
        csvLine.Append(System.DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss")).Append(",");
        csvLine.Append($"\"{itemStats.itemName}\"").Append(",");
        csvLine.Append($"\"{itemStats.description}\"").Append(",");
        csvLine.Append(itemStats.itemType).Append(",");
        csvLine.Append(itemStats.rarity).Append(",");
        csvLine.Append(itemStats.maxStackSize).Append(",");
        csvLine.Append(itemStats.isConsumable).Append(",");
        csvLine.Append(itemStats.isKeyItem).Append(",");
        csvLine.Append(itemStats.canBeCrafted);

        File.AppendAllText(itemCsvPath, csvLine.ToString() + "\n");
        Debug.Log($"Item stats saved to CSV: {itemCsvPath}");
    }

    public void ExportAllStatsToCSV()
    {
        SaveCurrentStats();

        // Also save any item stats if needed
        ItemStats[] allItems = Resources.FindObjectsOfTypeAll<ItemStats>();
        foreach (ItemStats item in allItems)
        {
            SaveItemStatsToCSV(item);
        }

        Debug.Log("All stats exported to CSV files");
    }

    public string GetCSVFilePath()
    {
        return csvFilePath;
    }

    // Public methods for manual saving
    [ContextMenu("Save Stats Now")]
    public void SaveStatsManually()
    {
        SaveCurrentStats();
    }

    [ContextMenu("Export All Stats")]
    public void ExportAllStatsManually()
    {
        ExportAllStatsToCSV();
    }
}

[System.Serializable]
public class CharacterStatsData
{
    public string timestamp;
    public int level;
    public int souls;
    public int soulsLevel;
    public int vigor;
    public int mind;
    public int endurance;
    public int strength;
    public int dexterity;
    public int intelligence;
    public int maxVirgo;
    public int maxMind;
    public int maxEndurance;
    public int physicalDefense;
    public int magicDefense;
}