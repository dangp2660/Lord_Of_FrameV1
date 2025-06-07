using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class UIStatBarManager : MonoBehaviour
{
    [Header("Bar")]
    public UIStatBar vigor;
    public UIStatBar mind;
    public UIStatBar endurance;

    public void setMaxValue()
    {
        vigor?.setMax();
        mind?.setMax();
        endurance?.setMax();

    }



    public void updateBarWith(int Vigor, int Mind, int Endurance)
    {
        vigor?.updateBarWith(Vigor);
        mind?.updateBarWith(Mind);
        endurance?.updateBarWith(Endurance);
    }
}
