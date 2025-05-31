using UnityEditor;
using UnityEngine;

public class BatchConvertToHumanoid : MonoBehaviour
{
    [MenuItem("Tools/Convert FBX to Humanoid")]
    static void ConvertAllFBXToHumanoid()
    {
        string[] guids = AssetDatabase.FindAssets("t:Model", new[] { "Assets/Animations" });
        foreach (string guid in guids)
        {
            string path = AssetDatabase.GUIDToAssetPath(guid);
            ModelImporter importer = AssetImporter.GetAtPath(path) as ModelImporter;

            if (importer != null && importer.animationType != ModelImporterAnimationType.Human)
            {
                importer.animationType = ModelImporterAnimationType.Human;
                importer.avatarSetup = ModelImporterAvatarSetup.CopyFromOther;
                importer.sourceAvatar = AssetDatabase.LoadAssetAtPath<Avatar>("Assets/Model/ElfArden.fbx"); // avatar chính
                AssetDatabase.ImportAsset(path, ImportAssetOptions.ForceUpdate);
                Debug.Log("Converted: " + path);
            }
        }
        Debug.Log("✅ Done converting animations to Humanoid.");
    }
}
