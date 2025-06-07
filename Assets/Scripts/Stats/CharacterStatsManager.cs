using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[CreateAssetMenu(fileName = "New Character Stats", menuName = "RPG/Character Stats")]
public class CharacterStatsManager : ScriptableObject
{
    [Header("Character Information")]
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
    public int maxVirgo;
    public int maxMind;//max mana
    public int maxEndurance;
    public int physicalDefense;
    public int magicDefense;
    public void CalculateDerivedStats()
    {
        // Health calculation 
        maxVirgo = (int)(300 + (vigor * 25) + ((vigor - 10) * (vigor - 10) * 0.5f));

        // Mana calculation
        maxMind = (int)(50 + (mind * 15) + ((mind - 10) * (mind - 10) * 0.3f));

        // Stamina calculation
        maxEndurance = (int)(80 + (endurance * 8) + ((endurance - 10) * (endurance - 10) * 0.2f));

        // Defense calculations
        physicalDefense = (int)((strength + endurance) * 0.5f);
        magicDefense = (int)(intelligence * 0.8f);
    }

    private void OnValidate()
    {
        CalculateDerivedStats();
    }

}
