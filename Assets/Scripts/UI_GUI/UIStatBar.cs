using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class UIStatBar : MonoBehaviour
{
    // Start is called before the first frame update
    [SerializeField] private Slider bar;
    [SerializeField] private RectTransform barContainer;
    [SerializeField] private float widthPerUnit = 2f;

    public void setMax(int max)
    {
        bar.maxValue = max;
    }

    public void setCurrent(int current)
    {
        bar.value = current;
    }

    public void updateBarWith(int max)
    {
        if(barContainer != null)
        {
            Vector2 size = barContainer.sizeDelta;
            size.x = max * widthPerUnit;
            barContainer.sizeDelta = size;
        }
    }
}
