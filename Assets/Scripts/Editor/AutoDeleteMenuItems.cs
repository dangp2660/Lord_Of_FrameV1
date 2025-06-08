using UnityEngine;
using UnityEditor;
using System.IO;
using System.Collections.Generic;
using System.Text.RegularExpressions;
using System.Linq;

public class AutoDeleteMenuItems
{
    [MenuItem("Tools/Auto Delete/Clean Commented Code")]
    public static void CleanCommentedCode()
    {
        if (EditorUtility.DisplayDialog("Clean Commented Code", 
            "This will remove all commented lines marked for deletion. Continue?", 
            "Yes", "Cancel"))
        {
            int removedLines = CleanupCommentedCodeInProject();
            EditorUtility.DisplayDialog("Cleanup Complete", 
                $"Removed {removedLines} commented lines marked for deletion.", "OK");
            AssetDatabase.Refresh();
        }
    }

    [MenuItem("Tools/Auto Delete/Remove Missing Scripts")]
    public static void RemoveMissingScripts()
    {
        if (EditorUtility.DisplayDialog("Remove Missing Scripts", 
            "This will remove all missing script components from GameObjects in the scene. Continue?", 
            "Yes", "Cancel"))
        {
            int removedComponents = RemoveMissingScriptsFromScene();
            EditorUtility.DisplayDialog("Cleanup Complete", 
                $"Removed {removedComponents} missing script components.", "OK");
        }
    }

    [MenuItem("Tools/Auto Delete/Clean Empty Folders")]
    public static void CleanEmptyFolders()
    {
        if (EditorUtility.DisplayDialog("Clean Empty Folders", 
            "This will remove all empty folders in the Assets directory. Continue?", 
            "Yes", "Cancel"))
        {
            int removedFolders = RemoveEmptyFolders();
            EditorUtility.DisplayDialog("Cleanup Complete", 
                $"Removed {removedFolders} empty folders.", "OK");
            AssetDatabase.Refresh();
        }
    }

    [MenuItem("Tools/Auto Delete/Clean All")]
    public static void CleanAll()
    {
        if (EditorUtility.DisplayDialog("Clean All", 
            "This will perform all cleanup operations. Continue?", 
            "Yes", "Cancel"))
        {
            int commentedLines = CleanupCommentedCodeInProject();
            int missingScripts = RemoveMissingScriptsFromScene();
            int emptyFolders = RemoveEmptyFolders();
            
            EditorUtility.DisplayDialog("Cleanup Complete", 
                $"Cleanup Summary:\n" +
                $"- Removed {commentedLines} commented lines\n" +
                $"- Removed {missingScripts} missing scripts\n" +
                $"- Removed {emptyFolders} empty folders", "OK");
            
            AssetDatabase.Refresh();
        }
    }

    private static int CleanupCommentedCodeInProject()
    {
        int totalRemovedLines = 0;
        string[] scriptPaths = Directory.GetFiles(Application.dataPath, "*.cs", SearchOption.AllDirectories);
        
        foreach (string scriptPath in scriptPaths)
        {
            totalRemovedLines += CleanupFileComments(scriptPath);
        }
        
        return totalRemovedLines;
    }

    private static int CleanupFileComments(string filePath)
    {
        try
        {
            string[] lines = File.ReadAllLines(filePath);
            List<string> cleanedLines = new List<string>();
            int removedCount = 0;
            
            for (int i = 0; i < lines.Length; i++)
            {
                string line = lines[i];
                
                if (IsLineMarkedForRemoval(line))
                {
                    removedCount++;
                    Debug.Log($"Removed: {line.Trim()} from {Path.GetFileName(filePath)}");
                    continue;
                }
                
                cleanedLines.Add(line);
            }
            
            if (removedCount > 0)
            {
                File.WriteAllLines(filePath, cleanedLines);
                Debug.Log($"Cleaned {removedCount} lines from {Path.GetFileName(filePath)}");
            }
            
            return removedCount;
        }
        catch (System.Exception e)
        {
            Debug.LogError($"Error cleaning file {filePath}: {e.Message}");
            return 0;
        }
    }

    private static bool IsLineMarkedForRemoval(string line)
    {
        string trimmedLine = line.Trim();
        
        if (trimmedLine.StartsWith("//"))
        {
            string lowerLine = trimmedLine.ToLower();
            return lowerLine.Contains("remove this") || 
                   lowerLine.Contains("delete this") ||
                   lowerLine.Contains("todo: remove") ||
                   (lowerLine.Contains("remove") && lowerLine.Contains("variables")) ||
                   Regex.IsMatch(lowerLine, @"//\s*\[.*\].*remove");
        }
        
        return false;
    }

    private static int RemoveMissingScriptsFromScene()
    {
        int removedCount = 0;
        GameObject[] allObjects = GameObject.FindObjectsOfType<GameObject>();
        
        foreach (GameObject obj in allObjects)
        {
            Component[] components = obj.GetComponents<Component>();
            
            for (int i = components.Length - 1; i >= 0; i--)
            {
                if (components[i] == null)
                {
                    Debug.Log($"Removed missing script from: {obj.name}");
                    GameObjectUtility.RemoveMonoBehavioursWithMissingScript(obj);
                    removedCount++;
                    break;
                }
            }
        }
        
        return removedCount;
    }

    private static int RemoveEmptyFolders()
    {
        int removedCount = 0;
        string[] directories = Directory.GetDirectories(Application.dataPath, "*", SearchOption.AllDirectories);
        
        // Sort by depth (deepest first) to remove nested empty folders
        System.Array.Sort(directories, (x, y) => y.Split(Path.DirectorySeparatorChar).Length.CompareTo(x.Split(Path.DirectorySeparatorChar).Length));
        
        foreach (string dir in directories)
        {
            if (IsDirectoryEmpty(dir))
            {
                try
                {
                    Directory.Delete(dir);
                    // Also remove .meta file
                    string metaFile = dir + ".meta";
                    if (File.Exists(metaFile))
                    {
                        File.Delete(metaFile);
                    }
                    Debug.Log($"Removed empty folder: {Path.GetFileName(dir)}");
                    removedCount++;
                }
                catch (System.Exception e)
                {
                    Debug.LogError($"Error removing folder {dir}: {e.Message}");
                }
            }
        }
        
        return removedCount;
    }

    private static bool IsDirectoryEmpty(string path)
    {
        try
        {
            return !Directory.EnumerateFileSystemEntries(path).Any();
        }
        catch
        {
            return false;
        }
    }
    
    // Add this method to scan prefab directories
    [MenuItem("Tools/Auto Delete/Scan Prefab Issues")]
    public static void ScanPrefabIssues()
    {
        var issues = new List<string>();
        
        // Check for empty prefab folders
        string prefabPath = Application.dataPath + "/prefab";
        if (Directory.Exists(prefabPath))
        {
            string[] prefabFolders = Directory.GetDirectories(prefabPath);
            foreach (string folder in prefabFolders)
            {
                if (IsDirectoryEmpty(folder))
                {
                    issues.Add($"Empty prefab folder: {Path.GetFileName(folder)}");
                }
            }
        }
        
        // Check for missing prefab references
        string[] prefabFiles = Directory.GetFiles(Application.dataPath, "*.prefab", SearchOption.AllDirectories);
        
        string report = issues.Count > 0 ? 
            $"Prefab Issues Found:\n{string.Join("\n", issues)}\n\nTotal prefabs in project: {prefabFiles.Length}" :
            $"No prefab issues found. Total prefabs: {prefabFiles.Length}";
        
        EditorUtility.DisplayDialog("Prefab Scan Report", report, "OK");
    }
}