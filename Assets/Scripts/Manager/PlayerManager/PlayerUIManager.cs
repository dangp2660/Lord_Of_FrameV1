using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerUIManager : MonoBehaviour
{
    public static PlayerUIManager instance;
    [SerializeField] private UIStatBarManager statBar;
    private void Awake()
    {
        if(instance == null)
        {
            instance = this;
        }
        else
        {
            Destroy(gameObject);
        }
    }
    // Start is called before the first frame update
    void Start()
    {
        DontDestroyOnLoad(gameObject);
    }

    public void setMaxBar(int maxVirgo, int maxMind, int maxEndurance)
    {
        statBar.setMaxValue(maxVirgo, maxMind, maxEndurance);
    }

    public void setCurrentBar(int currentVirgo, int currentMind, int currentEndurance)
    {
        statBar.setCurrentValue(currentVirgo, currentMind, currentEndurance);   
    }

}
