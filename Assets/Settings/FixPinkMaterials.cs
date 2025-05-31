using UnityEngine;
using UnityEditor;
using System.Collections.Generic;
using System.IO;

public class FixPinkMaterials : EditorWindow
{
    private bool fixAllMaterials = true;
    private bool fixSelectedMaterials = false;
    private bool showLog = true;
    private Vector2 scrollPosition;
    private List<string> logMessages = new List<string>();

    [MenuItem("Tools/Fix Pink Materials")]
    public static void ShowWindow()
    {
        GetWindow<FixPinkMaterials>("Fix Pink Materials");
    }

    private void OnGUI()
    {
        GUILayout.Label("Fix Pink Materials in URP", EditorStyles.boldLabel);
        EditorGUILayout.Space();

        fixAllMaterials = EditorGUILayout.Toggle("Fix All Materials in Project", fixAllMaterials);
        fixSelectedMaterials = EditorGUILayout.Toggle("Fix Selected Materials Only", fixSelectedMaterials);
        showLog = EditorGUILayout.Toggle("Show Log", showLog);

        EditorGUILayout.Space();

        if (GUILayout.Button("Fix Materials"))
        {
            if (fixAllMaterials)
            {
                FixAllMaterialsInProject();
            }
            else if (fixSelectedMaterials)
            {
                FixSelectedMaterialsOnly();
            }
        }

        if (showLog && logMessages.Count > 0)
        {
            EditorGUILayout.Space();
            EditorGUILayout.LabelField("Log:", EditorStyles.boldLabel);
            
            scrollPosition = EditorGUILayout.BeginScrollView(scrollPosition, GUILayout.Height(200));
            foreach (string message in logMessages)
            {
                EditorGUILayout.HelpBox(message, MessageType.Info);
            }
            EditorGUILayout.EndScrollView();
            
            if (GUILayout.Button("Clear Log"))
            {
                logMessages.Clear();
            }
        }
    }

    private void FixAllMaterialsInProject()
    {
        logMessages.Clear();
        string[] materialGuids = AssetDatabase.FindAssets("t:Material");
        int fixedCount = 0;

        foreach (string guid in materialGuids)
        {
            string path = AssetDatabase.GUIDToAssetPath(guid);
            Material material = AssetDatabase.LoadAssetAtPath<Material>(path);

            if (material != null && FixMaterial(material))
            {
                fixedCount++;
                LogMessage($"Fixed material: {path}");
            }
        }

        LogMessage($"Completed! Fixed {fixedCount} materials.");
        AssetDatabase.SaveAssets();
        AssetDatabase.Refresh();
    }

    private void FixSelectedMaterialsOnly()
    {
        logMessages.Clear();
        int fixedCount = 0;

        foreach (Object obj in Selection.objects)
        {
            if (obj is Material material)
            {
                if (FixMaterial(material))
                {
                    fixedCount++;
                    LogMessage($"Fixed material: {AssetDatabase.GetAssetPath(material)}");
                }
            }
        }

        LogMessage($"Completed! Fixed {fixedCount} materials.");
        AssetDatabase.SaveAssets();
        AssetDatabase.Refresh();
    }

    private bool FixMaterial(Material material)
    {
        if (material == null) return false;

        Shader shader = material.shader;
        if (shader == null) return false;

        string shaderName = shader.name;
        bool wasFixed = false;
    
        // Add this condition to fix materials with error shaders
        if (shaderName == "Hidden/InternalErrorShader")
        {
            // Upgrade to URP Lit shader
            Shader urpShader = Shader.Find("Universal Render Pipeline/Lit");
            if (urpShader != null)
            {
                material.shader = urpShader;
                wasFixed = true;
                LogMessage($"Fixed material with error shader: {AssetDatabase.GetAssetPath(material)}");
            }
            return wasFixed;
        }
    
        // Check if it's a Standard shader that needs to be upgraded to URP
        if (shaderName == "Standard" || shaderName == "Standard (Specular setup)" || 
            shaderName.StartsWith("Standard ") || shaderName.Contains("Legacy Shaders/"))
        {
            // Get the main texture and color
            Texture mainTexture = material.mainTexture;
            Color mainColor = material.color;

            // Store other important texture references
            Texture normalMap = null;
            Texture metallicMap = null;
            Texture occlusionMap = null;
            Texture emissionMap = null;
            Color emissionColor = Color.black;

            if (material.HasProperty("_BumpMap"))
                normalMap = material.GetTexture("_BumpMap");
            
            if (material.HasProperty("_MetallicGlossMap"))
                metallicMap = material.GetTexture("_MetallicGlossMap");
            
            if (material.HasProperty("_OcclusionMap"))
                occlusionMap = material.GetTexture("_OcclusionMap");
            
            if (material.HasProperty("_EmissionMap"))
                emissionMap = material.GetTexture("_EmissionMap");
            
            if (material.HasProperty("_EmissionColor"))
                emissionColor = material.GetColor("_EmissionColor");

            // Get smoothness value
            float smoothness = 0.5f;
            if (material.HasProperty("_Glossiness"))
                smoothness = material.GetFloat("_Glossiness");

            // Get metallic value
            float metallic = 0f;
            if (material.HasProperty("_Metallic"))
                metallic = material.GetFloat("_Metallic");

            // Check if material is transparent
            bool isTransparent = false;
            if (material.HasProperty("_Mode"))
            {
                float mode = material.GetFloat("_Mode");
                isTransparent = mode > 0;
            }

            // Upgrade to URP Lit shader
            Shader urpShader = Shader.Find("Universal Render Pipeline/Lit");
            if (urpShader != null)
            {
                material.shader = urpShader;

                // Restore main texture and color
                if (mainTexture != null)
                {
                    material.SetTexture("_BaseMap", mainTexture);
                    material.SetTexture("_MainTex", mainTexture); // For compatibility
                }

                material.SetColor("_BaseColor", mainColor);
                material.SetColor("_Color", mainColor); // For compatibility

                // Restore other textures
                if (normalMap != null)
                    material.SetTexture("_BumpMap", normalMap);
                
                if (metallicMap != null)
                    material.SetTexture("_MetallicGlossMap", metallicMap);
                
                if (occlusionMap != null)
                    material.SetTexture("_OcclusionMap", occlusionMap);
                
                if (emissionMap != null)
                {
                    material.SetTexture("_EmissionMap", emissionMap);
                    material.EnableKeyword("_EMISSION");
                }
                
                material.SetColor("_EmissionColor", emissionColor);

                // Set smoothness and metallic values
                material.SetFloat("_Smoothness", smoothness);
                material.SetFloat("_Metallic", metallic);

                // Handle transparency
                if (isTransparent)
                {
                    material.SetFloat("_Surface", 1); // 0 = opaque, 1 = transparent
                    material.SetOverrideTag("RenderType", "Transparent");
                    material.SetInt("_SrcBlend", (int)UnityEngine.Rendering.BlendMode.SrcAlpha);
                    material.SetInt("_DstBlend", (int)UnityEngine.Rendering.BlendMode.OneMinusSrcAlpha);
                    material.SetInt("_ZWrite", 0);
                    material.renderQueue = 3000;
                    material.EnableKeyword("_ALPHAPREMULTIPLY_ON");
                }

                wasFixed = true;
            }
            else
            {
                LogMessage($"Error: URP Lit shader not found. Make sure URP is installed correctly.");
            }
        }
        // Check for custom double-sided shader
        else if (shaderName == "Standard Double Sided")
        {
            // Try to find URP equivalent
            Shader urpDoubleSidedShader = Shader.Find("Universal Render Pipeline/Lit");
            if (urpDoubleSidedShader != null)
            {
                material.shader = urpDoubleSidedShader;
                
                // Set double-sided rendering
                if (material.HasProperty("_Cull"))
                {
                    material.SetInt("_Cull", 0); // 0 = Off (double-sided), 1 = Front, 2 = Back
                }
                
                wasFixed = true;
            }
        }

        return wasFixed;
    }

    private void LogMessage(string message)
    {
        if (showLog)
        {
            logMessages.Add(message);
            Debug.Log(message);
        }
    }
}