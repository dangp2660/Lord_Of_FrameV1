using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class UIStatBarManager : MonoBehaviour
{
    [Header("Bar")]
    public UIStatBar virgo;
    public UIStatBar mind;
    public UIStatBar endurance;

    public void setMaxValue(int maxVirgo, int maxMind, int maxEndurance)
    {
        virgo?.setMax(maxVirgo);
        virgo?.updateBarWith(maxVirgo);
        mind?.setMax(maxMind);
        mind?.updateBarWith(maxMind);
        endurance?.setMax(maxEndurance);
        endurance?.updateBarWith(maxEndurance);

    }

    public void setCurrentValue(int currentVirgo, int  currentMind, int currentEndurance)
    {
        virgo?.setCurrent(currentVirgo);
        mind.setCurrent(currentMind);
        endurance?.setCurrent(currentEndurance);
    }
}
