using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CharacterSFXManager : MonoBehaviour
{
    protected AudioSource audioSource;
    protected virtual void Awake()
    {
        audioSource = GetComponent<AudioSource>();
    }

    public void PlayRollSFX()
    {
        //Debug.Log("PlayRollSFX triggered!");
        audioSource.PlayOneShot(WorldSFXManager.Instance.roll);
    }

}
