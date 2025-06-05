using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CharacterSFXManager : MonoBehaviour
{
    private AudioSource audioSource;
    private void Awake()
    {
        audioSource = GetComponent<AudioSource>();
    }

    public void PlayRollSFX()
    {
        Debug.Log("PlayRollSFX triggered!");
        audioSource.PlayOneShot(WorldSFXManager.Instance.roll);
    }

}
