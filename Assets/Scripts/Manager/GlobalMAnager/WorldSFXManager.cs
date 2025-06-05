using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class WorldSFXManager : MonoBehaviour
{
    public static WorldSFXManager Instance;

    [Header("Action Sound")]
    public AudioClip roll;
    private void Awake()
    {
        if(Instance == null)
        {
            Instance = this;
        }
        else
        {
            Destroy(gameObject);
        }
    }

    private void Start()
    {
        DontDestroyOnLoad(gameObject);
    }
}
