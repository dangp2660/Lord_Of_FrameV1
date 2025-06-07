using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[CreateAssetMenu(fileName = "New Character Stats", menuName = "RPG/Character Stats")]
public class CharacterStatsManager : ScriptableObject
{
    [Header("Character Information")]
    public string name;
    public int level = 1;
    public int souls = 0;
    public int soulsLevel = 1;

    [Header("Core Stats")]
    public int vigor = 10;// health
    public int mind = 10;// mana
    public int endurance = 10;//stanima
    public int strength = 10;//strength weapon
    public int dexterity = 10;//dex weapon
    public int intelligence = 10;//magic dame

    [Header("Derived Stats")]//spawn stats
    public float maxHealth;
    public float maxFP;//max mana
    public float maxStamina;
    public float equipLoad;//iteam load
    public float physicalDefense;
    public float magicDefense;
    public void CalculateDerivedStats()
    {
        // Health calculation 
        maxHealth = 300 + (vigor * 25) + ((vigor - 10) * (vigor - 10) * 0.5f);

        // Mana calculation
        maxFP = 50 + (mind * 15) + ((mind - 10) * (mind - 10) * 0.3f);

        // Stamina calculation
        maxStamina = 80 + (endurance * 8) + ((endurance - 10) * (endurance - 10) * 0.2f);

        // Equip load
        equipLoad = 40 + (strength * 2) + (endurance * 1.5f);

        // Defense calculations
        physicalDefense = (strength + endurance) * 0.5f;
        magicDefense = intelligence * 0.8f;
    }

    private void OnValidate()
    {
        CalculateDerivedStats();
    }

}
