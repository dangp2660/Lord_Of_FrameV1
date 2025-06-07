using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class UIStatBar : MonoBehaviour
{
    // Start is called before the first frame update
    [SerializeField] private Slider bar;
    [SerializeField] private RectTransform barContainer;
    private float widthPerUnit = 20f;

    public void setMax()
    {
        bar.maxValue = 1;
    }

    public void setCurrent(int current, int max)
    {
        bar.maxValue = 1f; // Set max to 1 for percentage
        bar.value = (float)current / max; // Calculate percentage (remove division by index)
    }

    public void updateBarWith(int index)
    {
        if (barContainer != null)
        {
            Vector2 size = barContainer.sizeDelta;
            size.x = index * widthPerUnit;
            barContainer.sizeDelta = size;
        }
    }
}
