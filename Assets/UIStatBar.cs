using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class UIStatBar : MonoBehaviour
{
    private Slider bar;

    protected virtual void Awake()
    {
        bar = GetComponent<Slider>();   
    }

    public virtual void setStat() { }

    public virtual void setMaxStat() { }
}
