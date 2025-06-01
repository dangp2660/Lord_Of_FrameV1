using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class WorldSaveManager : MonoBehaviour
{
    public static WorldSaveManager instance;
    [SerializeField] private int worldIndex = 0;
    private void Awake()
    {
        if (instance == null)
        {
            instance = this;
            DontDestroyOnLoad(gameObject);
        }
        else
        {
            Destroy(gameObject);
        }
    }
    // Start is called before the first frame update
    void Start()
    {
        DontDestroyOnLoad (gameObject);
    }

    // Update is called once per frame
    public IEnumerator loadNewGame()
    {
        AsyncOperation loadOperation = SceneManager.LoadSceneAsync(worldIndex);
        yield return null;
    }

    public int getSceneIndex()
    {
        return worldIndex;
    }
}
