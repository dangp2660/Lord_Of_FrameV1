using System.Collections.Generic;
using UnityEngine;

public class UpdateManager : MonoBehaviour
{
    private static List<IUpdatable> updatables = new List<IUpdatable>();

    public static void Register(IUpdatable updatable)
    {
        if (!updatables.Contains(updatable))
        {
            updatables.Add(updatable);
        }
    }

    public static void Unregister(IUpdatable updatable)
    {
        if (updatables.Contains(updatable))
        {
            updatables.Remove(updatable);
        }
    }

    // Update is called once per frame
    void Update()
    {
        foreach (var updatable in updatables)
        {
            updatable.OnUpdate();
        }
    }
}
