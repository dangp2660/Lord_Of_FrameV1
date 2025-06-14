// Made with Amplify Shader Editor v1.9.8
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "Polytope Studio/ PT_Medieval Armors Shader URP PBR"
{
	Properties
	{
		[HideInInspector] _EmissionColor("Emission Color", Color) = (1,1,1,1)
		[HideInInspector] _AlphaCutoff("Alpha Cutoff ", Range(0, 1)) = 0.5
		[HDR]_SKINCOLOR("SKIN COLOR", Color) = (2.02193,1.0081,0.6199315,0)
		_SKINSMOOTHNESS("SKIN SMOOTHNESS", Range( 0 , 1)) = 0.3
		[HDR]_EYESCOLOR("EYES COLOR", Color) = (0.0734529,0.1320755,0.05046281,1)
		_EYESSMOOTHNESS("EYES SMOOTHNESS", Range( 0 , 1)) = 0.7
		[HDR]_HAIRCOLOR("HAIR COLOR", Color) = (0.5943396,0.3518379,0.1093361,0)
		_HAIRSMOOTHNESS("HAIR SMOOTHNESS", Range( 0 , 1)) = 0.1
		[HDR]_SCLERACOLOR("SCLERA COLOR", Color) = (0.9056604,0.8159487,0.8159487,0)
		_SCLERASMOOTHNESS("SCLERA SMOOTHNESS", Range( 0 , 1)) = 0.5
		[HDR]_LIPSCOLOR("LIPS COLOR", Color) = (0.8301887,0.3185886,0.2780349,0)
		_LIPSSMOOTHNESS("LIPS SMOOTHNESS", Range( 0 , 1)) = 0.4
		[HDR]_SCARSCOLOR("SCARS COLOR", Color) = (0.8490566,0.5037117,0.3884835,0)
		_SCARSSMOOTHNESS("SCARS SMOOTHNESS", Range( 0 , 1)) = 0.3
		[HDR]_METAL1COLOR("METAL 1 COLOR", Color) = (2,0.682353,0.1960784,0)
		_METAL1METALLIC("METAL 1 METALLIC", Range( 0 , 1)) = 0.65
		_METAL1SMOOTHNESS("METAL 1 SMOOTHNESS", Range( 0 , 1)) = 0.7
		[HDR]_METAL2COLOR("METAL 2 COLOR", Color) = (0.4674706,0.4677705,0.5188679,0)
		_METAL2METALLIC("METAL 2 METALLIC", Range( 0 , 1)) = 0.65
		_METAL2SMOOTHNESS("METAL 2 SMOOTHNESS", Range( 0 , 1)) = 0.7
		[HDR]_METAL3COLOR("METAL 3 COLOR", Color) = (0.4383232,0.4383232,0.4716981,0)
		_METAL3METALLIC("METAL 3 METALLIC", Range( 0 , 1)) = 0.65
		_METAL3SMOOTHNESS("METAL 3 SMOOTHNESS", Range( 0 , 1)) = 0.7
		[HDR]_LEATHER1COLOR("LEATHER 1 COLOR", Color) = (0.4811321,0.2041155,0.08851016,1)
		_LEATHER1SMOOTHNESS("LEATHER 1 SMOOTHNESS", Range( 0 , 1)) = 0.3
		[HDR]_LEATHER2COLOR("LEATHER 2 COLOR", Color) = (0.4245283,0.190437,0.09011215,1)
		_LEATHER2SMOOTHNESS("LEATHER 2 SMOOTHNESS", Range( 0 , 1)) = 0.3
		[HDR]_LEATHER3COLOR("LEATHER 3 COLOR", Color) = (0.1698113,0.04637412,0.02963688,1)
		_LEATHER3SMOOTHNESS("LEATHER 3 SMOOTHNESS", Range( 0 , 1)) = 0.3
		[HDR]_CLOTH1COLOR("CLOTH 1 COLOR", Color) = (0.1465379,0.282117,0.3490566,0)
		[HDR]_CLOTH2COLOR("CLOTH 2 COLOR", Color) = (1,0,0,0)
		[HDR]_CLOTH3COLOR("CLOTH 3 COLOR", Color) = (0.8773585,0.6337318,0.3434941,0)
		[HDR]_GEMS1COLOR("GEMS 1 COLOR", Color) = (0.3773585,0,0.06650025,0)
		_GEMS1SMOOTHNESS("GEMS 1 SMOOTHNESS", Range( 0 , 1)) = 1
		[HDR]_GEMS2COLOR("GEMS 2 COLOR", Color) = (0.2023368,0,0.4339623,0)
		_GEMS2SMOOTHNESS("GEMS 2 SMOOTHNESS", Range( 0 , 1)) = 0
		[HDR]_GEMS3COLOR("GEMS 3 COLOR", Color) = (0,0.1132075,0.01206957,0)
		_GEMS3SMOOTHNESS("GEMS 3 SMOOTHNESS", Range( 0 , 1)) = 0
		[HDR]_FEATHERS1COLOR("FEATHERS 1 COLOR", Color) = (0.7735849,0.492613,0.492613,0)
		[HDR]_FEATHERS2COLOR("FEATHERS 2 COLOR", Color) = (0.6792453,0,0,0)
		[HDR]_FEATHERS3COLOR("FEATHERS 3 COLOR", Color) = (0,0.1793142,0.7264151,0)
		[HideInInspector]_Texture0("Texture 0", 2D) = "white" {}
		[HideInInspector]_Texture1("Texture 1", 2D) = "white" {}
		[HideInInspector]_Texture6("Texture 6", 2D) = "white" {}
		[HideInInspector]_Texture3("Texture 3", 2D) = "white" {}
		[HideInInspector]_Texture5("Texture 5", 2D) = "white" {}
		[HideInInspector][HDR]_Texture2("Texture 2", 2D) = "white" {}
		[HideInInspector]_Texture4("Texture 4", 2D) = "white" {}
		[HideInInspector]_Texture7("Texture 7", 2D) = "white" {}
		[HDR]_COATOFARMSCOLOR("COAT OF ARMS COLOR", Color) = (1,0,0,0)
		[NoScaleOffset]_COATOFARMSMASK("COAT OF ARMS MASK", 2D) = "black" {}
		_OCCLUSION("OCCLUSION", Range( 0 , 1)) = 0.5
		[Toggle]_MetalicOn("Metalic On", Float) = 1
		[Toggle]_SmoothnessOn("Smoothness On", Float) = 1
		[HideInInspector] _texcoord2( "", 2D ) = "white" {}
		[HideInInspector] _texcoord( "", 2D ) = "white" {}


		//_TransmissionShadow( "Transmission Shadow", Range( 0, 1 ) ) = 0.5
		//_TransStrength( "Trans Strength", Range( 0, 50 ) ) = 1
		//_TransNormal( "Trans Normal Distortion", Range( 0, 1 ) ) = 0.5
		//_TransScattering( "Trans Scattering", Range( 1, 50 ) ) = 2
		//_TransDirect( "Trans Direct", Range( 0, 1 ) ) = 0.9
		//_TransAmbient( "Trans Ambient", Range( 0, 1 ) ) = 0.1
		//_TransShadow( "Trans Shadow", Range( 0, 1 ) ) = 0.5
		//_TessPhongStrength( "Tess Phong Strength", Range( 0, 1 ) ) = 0.5
		//_TessValue( "Tess Max Tessellation", Range( 1, 32 ) ) = 16
		//_TessMin( "Tess Min Distance", Float ) = 10
		//_TessMax( "Tess Max Distance", Float ) = 25
		//_TessEdgeLength ( "Tess Edge length", Range( 2, 50 ) ) = 16
		//_TessMaxDisp( "Tess Max Displacement", Float ) = 25

		[HideInInspector][ToggleOff] _SpecularHighlights("Specular Highlights", Float) = 1
		[HideInInspector][ToggleOff] _EnvironmentReflections("Environment Reflections", Float) = 1
		[HideInInspector][ToggleOff] _ReceiveShadows("Receive Shadows", Float) = 1.0

		[HideInInspector] _QueueOffset("_QueueOffset", Float) = 0
        [HideInInspector] _QueueControl("_QueueControl", Float) = -1

        [HideInInspector][NoScaleOffset] unity_Lightmaps("unity_Lightmaps", 2DArray) = "" {}
        [HideInInspector][NoScaleOffset] unity_LightmapsInd("unity_LightmapsInd", 2DArray) = "" {}
        [HideInInspector][NoScaleOffset] unity_ShadowMasks("unity_ShadowMasks", 2DArray) = "" {}
	}

	SubShader
	{
		LOD 0

		

		Tags { "RenderPipeline"="UniversalPipeline" "RenderType"="Opaque" "Queue"="Geometry" "UniversalMaterialType"="Lit" }

		Cull Back
		ZWrite On
		ZTest LEqual
		Offset 0 , 0
		AlphaToMask Off

		

		HLSLINCLUDE
		#pragma target 4.5
		#pragma prefer_hlslcc gles
		// ensure rendering platforms toggle list is visible

		#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Common.hlsl"
		#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Filtering.hlsl"

		#ifndef ASE_TESS_FUNCS
		#define ASE_TESS_FUNCS
		float4 FixedTess( float tessValue )
		{
			return tessValue;
		}

		float CalcDistanceTessFactor (float4 vertex, float minDist, float maxDist, float tess, float4x4 o2w, float3 cameraPos )
		{
			float3 wpos = mul(o2w,vertex).xyz;
			float dist = distance (wpos, cameraPos);
			float f = clamp(1.0 - (dist - minDist) / (maxDist - minDist), 0.01, 1.0) * tess;
			return f;
		}

		float4 CalcTriEdgeTessFactors (float3 triVertexFactors)
		{
			float4 tess;
			tess.x = 0.5 * (triVertexFactors.y + triVertexFactors.z);
			tess.y = 0.5 * (triVertexFactors.x + triVertexFactors.z);
			tess.z = 0.5 * (triVertexFactors.x + triVertexFactors.y);
			tess.w = (triVertexFactors.x + triVertexFactors.y + triVertexFactors.z) / 3.0f;
			return tess;
		}

		float CalcEdgeTessFactor (float3 wpos0, float3 wpos1, float edgeLen, float3 cameraPos, float4 scParams )
		{
			float dist = distance (0.5 * (wpos0+wpos1), cameraPos);
			float len = distance(wpos0, wpos1);
			float f = max(len * scParams.y / (edgeLen * dist), 1.0);
			return f;
		}

		float DistanceFromPlane (float3 pos, float4 plane)
		{
			float d = dot (float4(pos,1.0f), plane);
			return d;
		}

		bool WorldViewFrustumCull (float3 wpos0, float3 wpos1, float3 wpos2, float cullEps, float4 planes[6] )
		{
			float4 planeTest;
			planeTest.x = (( DistanceFromPlane(wpos0, planes[0]) > -cullEps) ? 1.0f : 0.0f ) +
							(( DistanceFromPlane(wpos1, planes[0]) > -cullEps) ? 1.0f : 0.0f ) +
							(( DistanceFromPlane(wpos2, planes[0]) > -cullEps) ? 1.0f : 0.0f );
			planeTest.y = (( DistanceFromPlane(wpos0, planes[1]) > -cullEps) ? 1.0f : 0.0f ) +
							(( DistanceFromPlane(wpos1, planes[1]) > -cullEps) ? 1.0f : 0.0f ) +
							(( DistanceFromPlane(wpos2, planes[1]) > -cullEps) ? 1.0f : 0.0f );
			planeTest.z = (( DistanceFromPlane(wpos0, planes[2]) > -cullEps) ? 1.0f : 0.0f ) +
							(( DistanceFromPlane(wpos1, planes[2]) > -cullEps) ? 1.0f : 0.0f ) +
							(( DistanceFromPlane(wpos2, planes[2]) > -cullEps) ? 1.0f : 0.0f );
			planeTest.w = (( DistanceFromPlane(wpos0, planes[3]) > -cullEps) ? 1.0f : 0.0f ) +
							(( DistanceFromPlane(wpos1, planes[3]) > -cullEps) ? 1.0f : 0.0f ) +
							(( DistanceFromPlane(wpos2, planes[3]) > -cullEps) ? 1.0f : 0.0f );
			return !all (planeTest);
		}

		float4 DistanceBasedTess( float4 v0, float4 v1, float4 v2, float tess, float minDist, float maxDist, float4x4 o2w, float3 cameraPos )
		{
			float3 f;
			f.x = CalcDistanceTessFactor (v0,minDist,maxDist,tess,o2w,cameraPos);
			f.y = CalcDistanceTessFactor (v1,minDist,maxDist,tess,o2w,cameraPos);
			f.z = CalcDistanceTessFactor (v2,minDist,maxDist,tess,o2w,cameraPos);

			return CalcTriEdgeTessFactors (f);
		}

		float4 EdgeLengthBasedTess( float4 v0, float4 v1, float4 v2, float edgeLength, float4x4 o2w, float3 cameraPos, float4 scParams )
		{
			float3 pos0 = mul(o2w,v0).xyz;
			float3 pos1 = mul(o2w,v1).xyz;
			float3 pos2 = mul(o2w,v2).xyz;
			float4 tess;
			tess.x = CalcEdgeTessFactor (pos1, pos2, edgeLength, cameraPos, scParams);
			tess.y = CalcEdgeTessFactor (pos2, pos0, edgeLength, cameraPos, scParams);
			tess.z = CalcEdgeTessFactor (pos0, pos1, edgeLength, cameraPos, scParams);
			tess.w = (tess.x + tess.y + tess.z) / 3.0f;
			return tess;
		}

		float4 EdgeLengthBasedTessCull( float4 v0, float4 v1, float4 v2, float edgeLength, float maxDisplacement, float4x4 o2w, float3 cameraPos, float4 scParams, float4 planes[6] )
		{
			float3 pos0 = mul(o2w,v0).xyz;
			float3 pos1 = mul(o2w,v1).xyz;
			float3 pos2 = mul(o2w,v2).xyz;
			float4 tess;

			if (WorldViewFrustumCull(pos0, pos1, pos2, maxDisplacement, planes))
			{
				tess = 0.0f;
			}
			else
			{
				tess.x = CalcEdgeTessFactor (pos1, pos2, edgeLength, cameraPos, scParams);
				tess.y = CalcEdgeTessFactor (pos2, pos0, edgeLength, cameraPos, scParams);
				tess.z = CalcEdgeTessFactor (pos0, pos1, edgeLength, cameraPos, scParams);
				tess.w = (tess.x + tess.y + tess.z) / 3.0f;
			}
			return tess;
		}
		#endif //ASE_TESS_FUNCS
		ENDHLSL

		
		Pass
		{
			
			Name "Forward"
			Tags { "LightMode"="UniversalForwardOnly" }

			Blend One Zero, One Zero
			ZWrite On
			ZTest LEqual
			Offset 0 , 0
			ColorMask RGBA

			

			HLSLPROGRAM

			

			#pragma multi_compile_fragment _ALPHATEST_ON
			#define _NORMAL_DROPOFF_TS 1
			#pragma shader_feature_local _RECEIVE_SHADOWS_OFF
			#pragma multi_compile_fragment _ _SCREEN_SPACE_OCCLUSION
			#pragma multi_compile_instancing
			#pragma instancing_options renderinglayer
			#pragma multi_compile_fragment _ LOD_FADE_CROSSFADE
			#pragma multi_compile_fog
			#define ASE_FOG 1
			#define ASE_VERSION 19800
			#define ASE_SRP_VERSION 140011


			

			#pragma multi_compile _ _MAIN_LIGHT_SHADOWS _MAIN_LIGHT_SHADOWS_CASCADE _MAIN_LIGHT_SHADOWS_SCREEN
			#pragma multi_compile _ _ADDITIONAL_LIGHTS_VERTEX _ADDITIONAL_LIGHTS

			
            #pragma multi_compile _ EVALUATE_SH_MIXED EVALUATE_SH_VERTEX
		

			#pragma multi_compile_fragment _ _ADDITIONAL_LIGHT_SHADOWS
			#pragma multi_compile_fragment _ _REFLECTION_PROBE_BLENDING
			#pragma multi_compile_fragment _ _REFLECTION_PROBE_BOX_PROJECTION

			

			
			#pragma multi_compile_fragment _ _SHADOWS_SOFT _SHADOWS_SOFT_LOW _SHADOWS_SOFT_MEDIUM _SHADOWS_SOFT_HIGH
           

			#pragma multi_compile_fragment _ _DBUFFER_MRT1 _DBUFFER_MRT2 _DBUFFER_MRT3
			#pragma multi_compile _ _LIGHT_LAYERS
			#pragma multi_compile_fragment _ _LIGHT_COOKIES
			#pragma multi_compile _ _FORWARD_PLUS

			

			#pragma multi_compile _ LIGHTMAP_SHADOW_MIXING
			#pragma multi_compile _ SHADOWS_SHADOWMASK
			#pragma multi_compile _ DIRLIGHTMAP_COMBINED
			#pragma multi_compile _ LIGHTMAP_ON
			#pragma multi_compile _ DYNAMICLIGHTMAP_ON

			#pragma vertex vert
			#pragma fragment frag

			#if defined(_SPECULAR_SETUP) && defined(_ASE_LIGHTING_SIMPLE)
				#define _SPECULAR_COLOR 1
			#endif

			#define SHADERPASS SHADERPASS_FORWARD

			
            #if ASE_SRP_VERSION >=140007
			#include_with_pragmas "Packages/com.unity.render-pipelines.universal/ShaderLibrary/DOTS.hlsl"
			#endif
		

			
			#if ASE_SRP_VERSION >=140007
			#include_with_pragmas "Packages/com.unity.render-pipelines.universal/ShaderLibrary/RenderingLayers.hlsl"
			#endif
		

			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Color.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Texture.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Input.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/TextureStack.hlsl"

			
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/FoveatedRendering.hlsl"
           

			
            #if ASE_SRP_VERSION >=140009
			#include_with_pragmas "Packages/com.unity.render-pipelines.core/ShaderLibrary/FoveatedRenderingKeywords.hlsl"
			#endif
		

			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Shadows.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/ShaderGraphFunctions.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/DBuffer.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/ShaderPass.hlsl"

			#if defined(LOD_FADE_CROSSFADE)
            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/LODCrossFade.hlsl"
            #endif

			#if defined(UNITY_INSTANCING_ENABLED) && defined(_TERRAIN_INSTANCED_PERPIXEL_NORMAL)
				#define ENABLE_TERRAIN_PERPIXEL_NORMAL
			#endif

			

			#if defined(ASE_EARLY_Z_DEPTH_OPTIMIZE) && (SHADER_TARGET >= 45)
				#define ASE_SV_DEPTH SV_DepthLessEqual
				#define ASE_SV_POSITION_QUALIFIERS linear noperspective centroid
			#else
				#define ASE_SV_DEPTH SV_Depth
				#define ASE_SV_POSITION_QUALIFIERS
			#endif

			struct Attributes
			{
				float4 positionOS : POSITION;
				float3 normalOS : NORMAL;
				float4 tangentOS : TANGENT;
				float4 texcoord : TEXCOORD0;
				float4 texcoord1 : TEXCOORD1;
				float4 texcoord2 : TEXCOORD2;
				
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct PackedVaryings
			{
				ASE_SV_POSITION_QUALIFIERS float4 positionCS : SV_POSITION;
				float4 clipPosV : TEXCOORD0;
				float4 lightmapUVOrVertexSH : TEXCOORD1;
				#if defined(ASE_FOG) || defined(_ADDITIONAL_LIGHTS_VERTEX)
					half4 fogFactorAndVertexLight : TEXCOORD2;
				#endif
				float4 tSpace0 : TEXCOORD3;
				float4 tSpace1 : TEXCOORD4;
				float4 tSpace2 : TEXCOORD5;
				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR)
					float4 shadowCoord : TEXCOORD6;
				#endif
				#if defined(DYNAMICLIGHTMAP_ON)
					float2 dynamicLightmapUV : TEXCOORD7;
				#endif
				float4 ase_texcoord8 : TEXCOORD8;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

			CBUFFER_START(UnityPerMaterial)
			float4 _Texture2_ST;
			float4 _COATOFARMSCOLOR;
			float4 _SKINCOLOR;
			float4 _HAIRCOLOR;
			float4 _Texture0_ST;
			float4 _SCLERACOLOR;
			float4 _LIPSCOLOR;
			float4 _Texture1_ST;
			float4 _SCARSCOLOR;
			float4 _METAL1COLOR;
			float4 _METAL2COLOR;
			float4 _Texture6_ST;
			float4 _METAL3COLOR;
			float4 _LEATHER1COLOR;
			float4 _LEATHER2COLOR;
			float4 _EYESCOLOR;
			float4 _LEATHER3COLOR;
			float4 _Texture3_ST;
			float4 _GEMS3COLOR;
			float4 _Texture7_ST;
			float4 _GEMS1COLOR;
			float4 _FEATHERS3COLOR;
			float4 _Texture4_ST;
			float4 _GEMS2COLOR;
			float4 _FEATHERS1COLOR;
			float4 _CLOTH3COLOR;
			float4 _Texture5_ST;
			float4 _CLOTH2COLOR;
			float4 _CLOTH1COLOR;
			float4 _FEATHERS2COLOR;
			float _HAIRSMOOTHNESS;
			float _METAL3SMOOTHNESS;
			float _EYESSMOOTHNESS;
			float _SCLERASMOOTHNESS;
			float _LIPSSMOOTHNESS;
			float _SCARSSMOOTHNESS;
			float _METAL1SMOOTHNESS;
			float _METAL2SMOOTHNESS;
			float _LEATHER1SMOOTHNESS;
			float _METAL1METALLIC;
			float _LEATHER3SMOOTHNESS;
			float _GEMS1SMOOTHNESS;
			float _GEMS2SMOOTHNESS;
			float _GEMS3SMOOTHNESS;
			float _SmoothnessOn;
			float _METAL2METALLIC;
			float _METAL3METALLIC;
			float _MetalicOn;
			float _SKINSMOOTHNESS;
			float _LEATHER2SMOOTHNESS;
			float _OCCLUSION;
			#ifdef ASE_TRANSMISSION
				float _TransmissionShadow;
			#endif
			#ifdef ASE_TRANSLUCENCY
				float _TransStrength;
				float _TransNormal;
				float _TransScattering;
				float _TransDirect;
				float _TransAmbient;
				float _TransShadow;
			#endif
			#ifdef ASE_TESSELLATION
				float _TessPhongStrength;
				float _TessValue;
				float _TessMin;
				float _TessMax;
				float _TessEdgeLength;
				float _TessMaxDisp;
			#endif
			CBUFFER_END

			#ifdef SCENEPICKINGPASS
				float4 _SelectionID;
			#endif

			#ifdef SCENESELECTIONPASS
				int _ObjectId;
				int _PassValue;
			#endif

			sampler2D _Texture2;
			sampler2D _Texture7;
			sampler2D _Texture4;
			sampler2D _Texture5;
			sampler2D _Texture3;
			sampler2D _Texture6;
			sampler2D _Texture1;
			sampler2D _Texture0;
			sampler2D _COATOFARMSMASK;


			
			PackedVaryings VertexFunction( Attributes input  )
			{
				PackedVaryings output = (PackedVaryings)0;
				UNITY_SETUP_INSTANCE_ID(input);
				UNITY_TRANSFER_INSTANCE_ID(input, output);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(output);

				output.ase_texcoord8.xy = input.texcoord.xy;
				output.ase_texcoord8.zw = input.texcoord1.xy;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
					float3 defaultVertexValue = input.positionOS.xyz;
				#else
					float3 defaultVertexValue = float3(0, 0, 0);
				#endif

				float3 vertexValue = defaultVertexValue;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
					input.positionOS.xyz = vertexValue;
				#else
					input.positionOS.xyz += vertexValue;
				#endif
				input.normalOS = input.normalOS;
				input.tangentOS = input.tangentOS;

				VertexPositionInputs vertexInput = GetVertexPositionInputs( input.positionOS.xyz );
				VertexNormalInputs normalInput = GetVertexNormalInputs( input.normalOS, input.tangentOS );

				output.tSpace0 = float4( normalInput.normalWS, vertexInput.positionWS.x );
				output.tSpace1 = float4( normalInput.tangentWS, vertexInput.positionWS.y );
				output.tSpace2 = float4( normalInput.bitangentWS, vertexInput.positionWS.z );

				#if defined(LIGHTMAP_ON)
					OUTPUT_LIGHTMAP_UV( input.texcoord1, unity_LightmapST, output.lightmapUVOrVertexSH.xy );
				#endif

				#if !defined(LIGHTMAP_ON)
					OUTPUT_SH( normalInput.normalWS.xyz, output.lightmapUVOrVertexSH.xyz );
				#endif

				#if defined(DYNAMICLIGHTMAP_ON)
					output.dynamicLightmapUV.xy = input.texcoord2.xy * unity_DynamicLightmapST.xy + unity_DynamicLightmapST.zw;
				#endif

				#if defined(ENABLE_TERRAIN_PERPIXEL_NORMAL)
					output.lightmapUVOrVertexSH.zw = input.texcoord.xy;
					output.lightmapUVOrVertexSH.xy = input.texcoord.xy * unity_LightmapST.xy + unity_LightmapST.zw;
				#endif

				#if defined(ASE_FOG) || defined(_ADDITIONAL_LIGHTS_VERTEX)
					output.fogFactorAndVertexLight = 0;
					#if defined(ASE_FOG) && !defined(_FOG_FRAGMENT)
						output.fogFactorAndVertexLight.x = ComputeFogFactor(vertexInput.positionCS.z);
					#endif
					#ifdef _ADDITIONAL_LIGHTS_VERTEX
						half3 vertexLight = VertexLighting( vertexInput.positionWS, normalInput.normalWS );
						output.fogFactorAndVertexLight.yzw = vertexLight;
					#endif
				#endif

				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR)
					output.shadowCoord = GetShadowCoord( vertexInput );
				#endif

				output.positionCS = vertexInput.positionCS;
				output.clipPosV = vertexInput.positionCS;
				return output;
			}

			#if defined(ASE_TESSELLATION)
			struct VertexControl
			{
				float4 positionOS : INTERNALTESSPOS;
				float3 normalOS : NORMAL;
				float4 tangentOS : TANGENT;
				float4 texcoord : TEXCOORD0;
				float4 texcoord1 : TEXCOORD1;
				float4 texcoord2 : TEXCOORD2;
				
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl vert ( Attributes input )
			{
				VertexControl output;
				UNITY_SETUP_INSTANCE_ID(input);
				UNITY_TRANSFER_INSTANCE_ID(input, output);
				output.positionOS = input.positionOS;
				output.normalOS = input.normalOS;
				output.tangentOS = input.tangentOS;
				output.texcoord = input.texcoord;
				output.texcoord1 = input.texcoord1;
				output.texcoord2 = input.texcoord2;
				
				return output;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> input)
			{
				TessellationFactors output;
				float4 tf = 1;
				float tessValue = _TessValue; float tessMin = _TessMin; float tessMax = _TessMax;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(input[0].positionOS, input[1].positionOS, input[2].positionOS, tessValue, tessMin, tessMax, GetObjectToWorldMatrix(), _WorldSpaceCameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(input[0].positionOS, input[1].positionOS, input[2].positionOS, edgeLength, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(input[0].positionOS, input[1].positionOS, input[2].positionOS, edgeLength, tessMaxDisp, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams, unity_CameraWorldClipPlanes );
				#endif
				output.edge[0] = tf.x; output.edge[1] = tf.y; output.edge[2] = tf.z; output.inside = tf.w;
				return output;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
				return patch[id];
			}

			[domain("tri")]
			PackedVaryings DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				Attributes output = (Attributes) 0;
				output.positionOS = patch[0].positionOS * bary.x + patch[1].positionOS * bary.y + patch[2].positionOS * bary.z;
				output.normalOS = patch[0].normalOS * bary.x + patch[1].normalOS * bary.y + patch[2].normalOS * bary.z;
				output.tangentOS = patch[0].tangentOS * bary.x + patch[1].tangentOS * bary.y + patch[2].tangentOS * bary.z;
				output.texcoord = patch[0].texcoord * bary.x + patch[1].texcoord * bary.y + patch[2].texcoord * bary.z;
				output.texcoord1 = patch[0].texcoord1 * bary.x + patch[1].texcoord1 * bary.y + patch[2].texcoord1 * bary.z;
				output.texcoord2 = patch[0].texcoord2 * bary.x + patch[1].texcoord2 * bary.y + patch[2].texcoord2 * bary.z;
				
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = output.positionOS.xyz - patch[i].normalOS * (dot(output.positionOS.xyz, patch[i].normalOS) - dot(patch[i].positionOS.xyz, patch[i].normalOS));
				float phongStrength = _TessPhongStrength;
				output.positionOS.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * output.positionOS.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], output);
				return VertexFunction(output);
			}
			#else
			PackedVaryings vert ( Attributes input )
			{
				return VertexFunction( input );
			}
			#endif

			half4 frag ( PackedVaryings input
						#ifdef ASE_DEPTH_WRITE_ON
						,out float outputDepth : ASE_SV_DEPTH
						#endif
						#ifdef _WRITE_RENDERING_LAYERS
						, out float4 outRenderingLayers : SV_Target1
						#endif
						 ) : SV_Target
			{
				UNITY_SETUP_INSTANCE_ID(input);
				UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX(input);

				#if defined(LOD_FADE_CROSSFADE)
					LODFadeCrossFade( input.positionCS );
				#endif

				#if defined(ENABLE_TERRAIN_PERPIXEL_NORMAL)
					float2 sampleCoords = (input.lightmapUVOrVertexSH.zw / _TerrainHeightmapRecipSize.zw + 0.5f) * _TerrainHeightmapRecipSize.xy;
					float3 WorldNormal = TransformObjectToWorldNormal(normalize(SAMPLE_TEXTURE2D(_TerrainNormalmapTexture, sampler_TerrainNormalmapTexture, sampleCoords).rgb * 2 - 1));
					float3 WorldTangent = -cross(GetObjectToWorldMatrix()._13_23_33, WorldNormal);
					float3 WorldBiTangent = cross(WorldNormal, -WorldTangent);
				#else
					float3 WorldNormal = normalize( input.tSpace0.xyz );
					float3 WorldTangent = input.tSpace1.xyz;
					float3 WorldBiTangent = input.tSpace2.xyz;
				#endif

				float3 WorldPosition = float3(input.tSpace0.w,input.tSpace1.w,input.tSpace2.w);
				float3 WorldViewDirection = _WorldSpaceCameraPos.xyz  - WorldPosition;
				float4 ShadowCoords = float4( 0, 0, 0, 0 );
				float4 ClipPos = input.clipPosV;
				float4 ScreenPos = ComputeScreenPos( input.clipPosV );

				float2 NormalizedScreenSpaceUV = GetNormalizedScreenSpaceUV(input.positionCS);

				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR)
					ShadowCoords = input.shadowCoord;
				#elif defined(MAIN_LIGHT_CALCULATE_SHADOWS)
					ShadowCoords = TransformWorldToShadowCoord( WorldPosition );
				#endif

				WorldViewDirection = SafeNormalize( WorldViewDirection );

				float2 uv_Texture2 = input.ase_texcoord8.xy * _Texture2_ST.xy + _Texture2_ST.zw;
				float4 tex2DNode199 = tex2D( _Texture2, uv_Texture2 );
				float2 uv_Texture7 = input.ase_texcoord8.xy * _Texture7_ST.xy + _Texture7_ST.zw;
				float4 tex2DNode222 = tex2D( _Texture7, uv_Texture7 );
				float3 temp_cast_0 = (tex2DNode222.b).xxx;
				float temp_output_215_0 = saturate( ( 1.0 - ( ( distance( temp_cast_0 , float3( 0,0,0 ) ) - 0.1 ) / max( 0.0 , 1E-05 ) ) ) );
				float4 lerpResult219 = lerp( float4( 0,0,0,0 ) , ( tex2DNode199 * _GEMS3COLOR ) , temp_output_215_0);
				float3 temp_cast_1 = (tex2DNode222.g).xxx;
				float temp_output_216_0 = saturate( ( 1.0 - ( ( distance( temp_cast_1 , float3( 0,0,0 ) ) - 0.1 ) / max( 0.0 , 1E-05 ) ) ) );
				float4 lerpResult214 = lerp( lerpResult219 , ( tex2DNode199 * _GEMS2COLOR ) , temp_output_216_0);
				float3 temp_cast_2 = (tex2DNode222.r).xxx;
				float temp_output_213_0 = saturate( ( 1.0 - ( ( distance( temp_cast_2 , float3( 0,0,0 ) ) - 0.1 ) / max( 0.0 , 1E-05 ) ) ) );
				float4 lerpResult217 = lerp( lerpResult214 , ( tex2DNode199 * _GEMS1COLOR ) , temp_output_213_0);
				float2 uv_Texture4 = input.ase_texcoord8.xy * _Texture4_ST.xy + _Texture4_ST.zw;
				float4 tex2DNode181 = tex2D( _Texture4, uv_Texture4 );
				float3 temp_cast_3 = (tex2DNode181.b).xxx;
				float4 lerpResult182 = lerp( lerpResult217 , ( tex2DNode199 * _FEATHERS3COLOR ) , saturate( ( 1.0 - ( ( distance( temp_cast_3 , float3( 0,0,0 ) ) - 0.1 ) / max( 0.0 , 1E-05 ) ) ) ));
				float3 temp_cast_4 = (tex2DNode181.g).xxx;
				float4 lerpResult189 = lerp( lerpResult182 , ( tex2DNode199 * _FEATHERS2COLOR ) , saturate( ( 1.0 - ( ( distance( temp_cast_4 , float3( 0,0,0 ) ) - 0.1 ) / max( 0.0 , 1E-05 ) ) ) ));
				float3 temp_cast_5 = (tex2DNode181.r).xxx;
				float4 lerpResult184 = lerp( lerpResult189 , ( tex2DNode199 * _FEATHERS1COLOR ) , saturate( ( 1.0 - ( ( distance( temp_cast_5 , float3( 0,0,0 ) ) - 0.1 ) / max( 0.0 , 1E-05 ) ) ) ));
				float2 uv_Texture5 = input.ase_texcoord8.xy * _Texture5_ST.xy + _Texture5_ST.zw;
				float4 tex2DNode170 = tex2D( _Texture5, uv_Texture5 );
				float3 temp_cast_6 = (tex2DNode170.b).xxx;
				float4 lerpResult171 = lerp( lerpResult184 , ( tex2DNode199 * _CLOTH3COLOR ) , saturate( ( 1.0 - ( ( distance( temp_cast_6 , float3( 0,0,0 ) ) - 0.1 ) / max( 0.0 , 1E-05 ) ) ) ));
				float3 temp_cast_7 = (tex2DNode170.g).xxx;
				float4 lerpResult178 = lerp( lerpResult171 , ( tex2DNode199 * _CLOTH2COLOR ) , saturate( ( 1.0 - ( ( distance( temp_cast_7 , float3( 0,0,0 ) ) - 0.1 ) / max( 0.0 , 1E-05 ) ) ) ));
				float3 temp_cast_8 = (tex2DNode170.r).xxx;
				float4 lerpResult173 = lerp( lerpResult178 , ( tex2DNode199 * _CLOTH1COLOR ) , saturate( ( 1.0 - ( ( distance( temp_cast_8 , float3( 0,0,0 ) ) - 0.1 ) / max( 0.0 , 1E-05 ) ) ) ));
				float2 uv_Texture3 = input.ase_texcoord8.xy * _Texture3_ST.xy + _Texture3_ST.zw;
				float4 tex2DNode159 = tex2D( _Texture3, uv_Texture3 );
				float3 temp_cast_9 = (tex2DNode159.b).xxx;
				float temp_output_165_0 = saturate( ( 1.0 - ( ( distance( temp_cast_9 , float3( 0,0,0 ) ) - 0.1 ) / max( 0.0 , 1E-05 ) ) ) );
				float4 lerpResult160 = lerp( lerpResult173 , ( tex2DNode199 * _LEATHER3COLOR ) , temp_output_165_0);
				float3 temp_cast_10 = (tex2DNode159.g).xxx;
				float temp_output_158_0 = saturate( ( 1.0 - ( ( distance( temp_cast_10 , float3( 0,0,0 ) ) - 0.1 ) / max( 0.0 , 1E-05 ) ) ) );
				float4 lerpResult167 = lerp( lerpResult160 , ( tex2DNode199 * _LEATHER2COLOR ) , temp_output_158_0);
				float3 temp_cast_11 = (tex2DNode159.r).xxx;
				float temp_output_157_0 = saturate( ( 1.0 - ( ( distance( temp_cast_11 , float3( 0,0,0 ) ) - 0.1 ) / max( 0.0 , 1E-05 ) ) ) );
				float4 lerpResult162 = lerp( lerpResult167 , ( tex2DNode199 * _LEATHER1COLOR ) , temp_output_157_0);
				float2 uv_Texture6 = input.ase_texcoord8.xy * _Texture6_ST.xy + _Texture6_ST.zw;
				float4 tex2DNode121 = tex2D( _Texture6, uv_Texture6 );
				float3 temp_cast_12 = (tex2DNode121.b).xxx;
				float temp_output_117_0 = saturate( ( 1.0 - ( ( distance( temp_cast_12 , float3( 0,0,0 ) ) - 0.1 ) / max( 0.0 , 1E-05 ) ) ) );
				float4 lerpResult118 = lerp( lerpResult162 , ( tex2DNode199 * _METAL3COLOR ) , temp_output_117_0);
				float3 temp_cast_13 = (tex2DNode121.g).xxx;
				float temp_output_127_0 = saturate( ( 1.0 - ( ( distance( temp_cast_13 , float3( 0,0,0 ) ) - 0.1 ) / max( 0.0 , 1E-05 ) ) ) );
				float4 lerpResult128 = lerp( lerpResult118 , ( tex2DNode199 * _METAL2COLOR ) , temp_output_127_0);
				float3 temp_cast_14 = (tex2DNode121.r).xxx;
				float temp_output_123_0 = saturate( ( 1.0 - ( ( distance( temp_cast_14 , float3( 0,0,0 ) ) - 0.1 ) / max( 0.0 , 1E-05 ) ) ) );
				float4 lerpResult122 = lerp( lerpResult128 , ( tex2DNode199 * _METAL1COLOR ) , temp_output_123_0);
				float2 uv_Texture1 = input.ase_texcoord8.xy * _Texture1_ST.xy + _Texture1_ST.zw;
				float4 tex2DNode144 = tex2D( _Texture1, uv_Texture1 );
				float3 temp_cast_15 = (tex2DNode144.b).xxx;
				float temp_output_145_0 = saturate( ( 1.0 - ( ( distance( temp_cast_15 , float3( 0,0,0 ) ) - 0.1 ) / max( 0.0 , 1E-05 ) ) ) );
				float4 lerpResult148 = lerp( lerpResult122 , ( tex2DNode199 * _SCARSCOLOR ) , temp_output_145_0);
				float3 temp_cast_16 = (tex2DNode144.g).xxx;
				float temp_output_149_0 = saturate( ( 1.0 - ( ( distance( temp_cast_16 , float3( 0,0,0 ) ) - 0.1 ) / max( 0.0 , 1E-05 ) ) ) );
				float4 lerpResult151 = lerp( lerpResult148 , ( tex2DNode199 * _LIPSCOLOR ) , temp_output_149_0);
				float3 temp_cast_17 = (tex2DNode144.r).xxx;
				float temp_output_150_0 = saturate( ( 1.0 - ( ( distance( temp_cast_17 , float3( 0,0,0 ) ) - 0.1 ) / max( 0.0 , 1E-05 ) ) ) );
				float4 lerpResult153 = lerp( lerpResult151 , ( tex2DNode199 * _SCLERACOLOR ) , temp_output_150_0);
				float2 uv_Texture0 = input.ase_texcoord8.xy * _Texture0_ST.xy + _Texture0_ST.zw;
				float4 tex2DNode37 = tex2D( _Texture0, uv_Texture0 );
				float3 temp_cast_18 = (tex2DNode37.b).xxx;
				float temp_output_71_0 = saturate( ( 1.0 - ( ( distance( temp_cast_18 , float3( 0,0,0 ) ) - 0.1 ) / max( 0.0 , 1E-05 ) ) ) );
				float4 lerpResult73 = lerp( lerpResult153 , ( tex2DNode199 * _EYESCOLOR ) , temp_output_71_0);
				float3 temp_cast_19 = (tex2DNode37.g).xxx;
				float temp_output_67_0 = saturate( ( 1.0 - ( ( distance( temp_cast_19 , float3( 0,0,0 ) ) - 0.1 ) / max( 0.0 , 1E-05 ) ) ) );
				float4 lerpResult69 = lerp( lerpResult73 , ( tex2DNode199 * _HAIRCOLOR ) , temp_output_67_0);
				float3 temp_cast_20 = (tex2DNode37.r).xxx;
				float temp_output_63_0 = saturate( ( 1.0 - ( ( distance( temp_cast_20 , float3( 0,0,0 ) ) - 0.1 ) / max( 0.0 , 1E-05 ) ) ) );
				float4 lerpResult62 = lerp( lerpResult69 , ( tex2DNode199 * _SKINCOLOR ) , temp_output_63_0);
				float2 uv1_COATOFARMSMASK10 = input.ase_texcoord8.zw;
				float temp_output_9_0 = ( 1.0 - tex2D( _COATOFARMSMASK, uv1_COATOFARMSMASK10 ).a );
				float4 temp_cast_21 = (temp_output_9_0).xxxx;
				float4 temp_output_1_0_g93 = temp_cast_21;
				float4 color25 = IsGammaSpace() ? float4(0,0,0,0) : float4(0,0,0,0);
				float4 temp_output_2_0_g93 = color25;
				float temp_output_11_0_g93 = distance( temp_output_1_0_g93 , temp_output_2_0_g93 );
				float2 _Vector0 = float2(1.6,1);
				float4 lerpResult21_g93 = lerp( _COATOFARMSCOLOR , temp_output_1_0_g93 , saturate( ( ( temp_output_11_0_g93 - _Vector0.x ) / max( _Vector0.y , 1E-05 ) ) ));
				float4 lerpResult64 = lerp( lerpResult62 , lerpResult21_g93 , ( 1.0 - temp_output_9_0 ));
				
				float lerpResult315 = lerp( 0.0 , _METAL3METALLIC , temp_output_117_0);
				float lerpResult319 = lerp( lerpResult315 , _METAL2METALLIC , temp_output_127_0);
				float lerpResult316 = lerp( lerpResult319 , _METAL1METALLIC , temp_output_123_0);
				
				float lerpResult342 = lerp( 0.0 , _GEMS3SMOOTHNESS , temp_output_215_0);
				float lerpResult338 = lerp( lerpResult342 , _GEMS2SMOOTHNESS , temp_output_216_0);
				float lerpResult340 = lerp( lerpResult338 , _GEMS1SMOOTHNESS , temp_output_213_0);
				float lerpResult336 = lerp( lerpResult340 , _LEATHER3SMOOTHNESS , temp_output_165_0);
				float lerpResult332 = lerp( lerpResult336 , _LEATHER2SMOOTHNESS , temp_output_158_0);
				float lerpResult334 = lerp( lerpResult332 , _LEATHER1SMOOTHNESS , temp_output_157_0);
				float lerpResult327 = lerp( lerpResult334 , _METAL3SMOOTHNESS , temp_output_117_0);
				float lerpResult331 = lerp( lerpResult327 , _METAL2SMOOTHNESS , temp_output_127_0);
				float lerpResult328 = lerp( lerpResult331 , _METAL1SMOOTHNESS , temp_output_123_0);
				float lerpResult321 = lerp( lerpResult328 , _SCARSSMOOTHNESS , temp_output_145_0);
				float lerpResult325 = lerp( lerpResult321 , _LIPSSMOOTHNESS , temp_output_149_0);
				float lerpResult322 = lerp( lerpResult325 , _SCLERASMOOTHNESS , temp_output_150_0);
				float lerpResult306 = lerp( lerpResult322 , _EYESSMOOTHNESS , temp_output_71_0);
				float lerpResult304 = lerp( lerpResult306 , _HAIRSMOOTHNESS , temp_output_67_0);
				float lerpResult302 = lerp( lerpResult304 , _SKINSMOOTHNESS , temp_output_63_0);
				

				float3 BaseColor = lerpResult64.rgb;
				float3 Normal = float3(0, 0, 1);
				float3 Emission = 0;
				float3 Specular = 0.5;
				float Metallic = (( _MetalicOn )?( lerpResult316 ):( 0.0 ));
				float Smoothness = (( _SmoothnessOn )?( lerpResult302 ):( 0.0 ));
				float Occlusion = (1.0 + (_OCCLUSION - 0.0) * (0.5 - 1.0) / (1.0 - 0.0));
				float Alpha = 1;
				float AlphaClipThreshold = 0.5;
				float AlphaClipThresholdShadow = 0.5;
				float3 BakedGI = 0;
				float3 RefractionColor = 1;
				float RefractionIndex = 1;
				float3 Transmission = 1;
				float3 Translucency = 1;

				#ifdef ASE_DEPTH_WRITE_ON
					float DepthValue = input.positionCS.z;
				#endif

				#ifdef _CLEARCOAT
					float CoatMask = 0;
					float CoatSmoothness = 0;
				#endif

				#ifdef _ALPHATEST_ON
					clip(Alpha - AlphaClipThreshold);
				#endif

				InputData inputData = (InputData)0;
				inputData.positionWS = WorldPosition;
				inputData.positionCS = input.positionCS;
				inputData.viewDirectionWS = WorldViewDirection;

				#ifdef _NORMALMAP
						#if _NORMAL_DROPOFF_TS
							inputData.normalWS = TransformTangentToWorld(Normal, half3x3(WorldTangent, WorldBiTangent, WorldNormal));
						#elif _NORMAL_DROPOFF_OS
							inputData.normalWS = TransformObjectToWorldNormal(Normal);
						#elif _NORMAL_DROPOFF_WS
							inputData.normalWS = Normal;
						#endif
					inputData.normalWS = NormalizeNormalPerPixel(inputData.normalWS);
				#else
					inputData.normalWS = WorldNormal;
				#endif

				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR)
					inputData.shadowCoord = ShadowCoords;
				#elif defined(MAIN_LIGHT_CALCULATE_SHADOWS)
					inputData.shadowCoord = TransformWorldToShadowCoord(inputData.positionWS);
				#else
					inputData.shadowCoord = float4(0, 0, 0, 0);
				#endif

				#ifdef ASE_FOG
					inputData.fogCoord = InitializeInputDataFog(float4(inputData.positionWS, 1.0), input.fogFactorAndVertexLight.x);
				#endif
				#ifdef _ADDITIONAL_LIGHTS_VERTEX
					inputData.vertexLighting = input.fogFactorAndVertexLight.yzw;
				#endif

				#if defined(ENABLE_TERRAIN_PERPIXEL_NORMAL)
					float3 SH = SampleSH(inputData.normalWS.xyz);
				#else
					float3 SH = input.lightmapUVOrVertexSH.xyz;
				#endif

				#if defined(DYNAMICLIGHTMAP_ON)
					inputData.bakedGI = SAMPLE_GI(input.lightmapUVOrVertexSH.xy, input.dynamicLightmapUV.xy, SH, inputData.normalWS);
				#else
					inputData.bakedGI = SAMPLE_GI(input.lightmapUVOrVertexSH.xy, SH, inputData.normalWS);
				#endif

				#ifdef ASE_BAKEDGI
					inputData.bakedGI = BakedGI;
				#endif

				inputData.normalizedScreenSpaceUV = NormalizedScreenSpaceUV;
				inputData.shadowMask = SAMPLE_SHADOWMASK(input.lightmapUVOrVertexSH.xy);

				#if defined(DEBUG_DISPLAY)
					#if defined(DYNAMICLIGHTMAP_ON)
						inputData.dynamicLightmapUV = input.dynamicLightmapUV.xy;
					#endif
					#if defined(LIGHTMAP_ON)
						inputData.staticLightmapUV = input.lightmapUVOrVertexSH.xy;
					#else
						inputData.vertexSH = SH;
					#endif
				#endif

				SurfaceData surfaceData;
				surfaceData.albedo              = BaseColor;
				surfaceData.metallic            = saturate(Metallic);
				surfaceData.specular            = Specular;
				surfaceData.smoothness          = saturate(Smoothness),
				surfaceData.occlusion           = Occlusion,
				surfaceData.emission            = Emission,
				surfaceData.alpha               = saturate(Alpha);
				surfaceData.normalTS            = Normal;
				surfaceData.clearCoatMask       = 0;
				surfaceData.clearCoatSmoothness = 1;

				#ifdef _CLEARCOAT
					surfaceData.clearCoatMask       = saturate(CoatMask);
					surfaceData.clearCoatSmoothness = saturate(CoatSmoothness);
				#endif

				#ifdef _DBUFFER
					ApplyDecalToSurfaceData(input.positionCS, surfaceData, inputData);
				#endif

				#ifdef _ASE_LIGHTING_SIMPLE
					half4 color = UniversalFragmentBlinnPhong( inputData, surfaceData);
				#else
					half4 color = UniversalFragmentPBR( inputData, surfaceData);
				#endif

				#ifdef ASE_TRANSMISSION
				{
					float shadow = _TransmissionShadow;

					#define SUM_LIGHT_TRANSMISSION(Light)\
						float3 atten = Light.color * Light.distanceAttenuation;\
						atten = lerp( atten, atten * Light.shadowAttenuation, shadow );\
						half3 transmission = max( 0, -dot( inputData.normalWS, Light.direction ) ) * atten * Transmission;\
						color.rgb += BaseColor * transmission;

					SUM_LIGHT_TRANSMISSION( GetMainLight( inputData.shadowCoord ) );

					#if defined(_ADDITIONAL_LIGHTS)
						uint meshRenderingLayers = GetMeshRenderingLayer();
						uint pixelLightCount = GetAdditionalLightsCount();
						#if USE_FORWARD_PLUS
							for (uint lightIndex = 0; lightIndex < min(URP_FP_DIRECTIONAL_LIGHTS_COUNT, MAX_VISIBLE_LIGHTS); lightIndex++)
							{
								FORWARD_PLUS_SUBTRACTIVE_LIGHT_CHECK

								Light light = GetAdditionalLight(lightIndex, inputData.positionWS, inputData.shadowMask);
								#ifdef _LIGHT_LAYERS
								if (IsMatchingLightLayer(light.layerMask, meshRenderingLayers))
								#endif
								{
									SUM_LIGHT_TRANSMISSION( light );
								}
							}
						#endif
						LIGHT_LOOP_BEGIN( pixelLightCount )
							Light light = GetAdditionalLight(lightIndex, inputData.positionWS, inputData.shadowMask);
							#ifdef _LIGHT_LAYERS
							if (IsMatchingLightLayer(light.layerMask, meshRenderingLayers))
							#endif
							{
								SUM_LIGHT_TRANSMISSION( light );
							}
						LIGHT_LOOP_END
					#endif
				}
				#endif

				#ifdef ASE_TRANSLUCENCY
				{
					float shadow = _TransShadow;
					float normal = _TransNormal;
					float scattering = _TransScattering;
					float direct = _TransDirect;
					float ambient = _TransAmbient;
					float strength = _TransStrength;

					#define SUM_LIGHT_TRANSLUCENCY(Light)\
						float3 atten = Light.color * Light.distanceAttenuation;\
						atten = lerp( atten, atten * Light.shadowAttenuation, shadow );\
						half3 lightDir = Light.direction + inputData.normalWS * normal;\
						half VdotL = pow( saturate( dot( inputData.viewDirectionWS, -lightDir ) ), scattering );\
						half3 translucency = atten * ( VdotL * direct + inputData.bakedGI * ambient ) * Translucency;\
						color.rgb += BaseColor * translucency * strength;

					SUM_LIGHT_TRANSLUCENCY( GetMainLight( inputData.shadowCoord ) );

					#if defined(_ADDITIONAL_LIGHTS)
						uint meshRenderingLayers = GetMeshRenderingLayer();
						uint pixelLightCount = GetAdditionalLightsCount();
						#if USE_FORWARD_PLUS
							for (uint lightIndex = 0; lightIndex < min(URP_FP_DIRECTIONAL_LIGHTS_COUNT, MAX_VISIBLE_LIGHTS); lightIndex++)
							{
								FORWARD_PLUS_SUBTRACTIVE_LIGHT_CHECK

								Light light = GetAdditionalLight(lightIndex, inputData.positionWS, inputData.shadowMask);
								#ifdef _LIGHT_LAYERS
								if (IsMatchingLightLayer(light.layerMask, meshRenderingLayers))
								#endif
								{
									SUM_LIGHT_TRANSLUCENCY( light );
								}
							}
						#endif
						LIGHT_LOOP_BEGIN( pixelLightCount )
							Light light = GetAdditionalLight(lightIndex, inputData.positionWS, inputData.shadowMask);
							#ifdef _LIGHT_LAYERS
							if (IsMatchingLightLayer(light.layerMask, meshRenderingLayers))
							#endif
							{
								SUM_LIGHT_TRANSLUCENCY( light );
							}
						LIGHT_LOOP_END
					#endif
				}
				#endif

				#ifdef ASE_REFRACTION
					float4 projScreenPos = ScreenPos / ScreenPos.w;
					float3 refractionOffset = ( RefractionIndex - 1.0 ) * mul( UNITY_MATRIX_V, float4( WorldNormal,0 ) ).xyz * ( 1.0 - dot( WorldNormal, WorldViewDirection ) );
					projScreenPos.xy += refractionOffset.xy;
					float3 refraction = SHADERGRAPH_SAMPLE_SCENE_COLOR( projScreenPos.xy ) * RefractionColor;
					color.rgb = lerp( refraction, color.rgb, color.a );
					color.a = 1;
				#endif

				#ifdef ASE_FINAL_COLOR_ALPHA_MULTIPLY
					color.rgb *= color.a;
				#endif

				#ifdef ASE_FOG
					#ifdef TERRAIN_SPLAT_ADDPASS
						color.rgb = MixFogColor(color.rgb, half3(0,0,0), inputData.fogCoord);
					#else
						color.rgb = MixFog(color.rgb, inputData.fogCoord);
					#endif
				#endif

				#ifdef ASE_DEPTH_WRITE_ON
					outputDepth = DepthValue;
				#endif

				#ifdef _WRITE_RENDERING_LAYERS
					uint renderingLayers = GetMeshRenderingLayer();
					outRenderingLayers = float4( EncodeMeshRenderingLayer( renderingLayers ), 0, 0, 0 );
				#endif

				return color;
			}
			ENDHLSL
		}

		
		Pass
		{
			
			Name "ShadowCaster"
			Tags { "LightMode"="ShadowCaster" }

			ZWrite On
			ZTest LEqual
			AlphaToMask Off
			ColorMask 0

			HLSLPROGRAM

			

			#pragma multi_compile _ALPHATEST_ON
			#define _NORMAL_DROPOFF_TS 1
			#pragma multi_compile_instancing
			#pragma multi_compile_fragment _ LOD_FADE_CROSSFADE
			#define ASE_FOG 1
			#define ASE_VERSION 19800
			#define ASE_SRP_VERSION 140011


			

			#pragma multi_compile_vertex _ _CASTING_PUNCTUAL_LIGHT_SHADOW

			#pragma vertex vert
			#pragma fragment frag

			#if defined(_SPECULAR_SETUP) && defined(_ASE_LIGHTING_SIMPLE)
				#define _SPECULAR_COLOR 1
			#endif

			#define SHADERPASS SHADERPASS_SHADOWCASTER

			
            #if ASE_SRP_VERSION >=140007
			#include_with_pragmas "Packages/com.unity.render-pipelines.universal/ShaderLibrary/DOTS.hlsl"
			#endif
		

			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Color.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Texture.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Input.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/TextureStack.hlsl"

			
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/FoveatedRendering.hlsl"
           

			
            #if ASE_SRP_VERSION >=140009
			#include_with_pragmas "Packages/com.unity.render-pipelines.core/ShaderLibrary/FoveatedRenderingKeywords.hlsl"
			#endif
		

			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/ShaderGraphFunctions.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/ShaderPass.hlsl"

			#if defined(LOD_FADE_CROSSFADE)
            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/LODCrossFade.hlsl"
            #endif

			

			#if defined(ASE_EARLY_Z_DEPTH_OPTIMIZE) && (SHADER_TARGET >= 45)
				#define ASE_SV_DEPTH SV_DepthLessEqual
				#define ASE_SV_POSITION_QUALIFIERS linear noperspective centroid
			#else
				#define ASE_SV_DEPTH SV_Depth
				#define ASE_SV_POSITION_QUALIFIERS
			#endif

			struct Attributes
			{
				float4 positionOS : POSITION;
				float3 normalOS : NORMAL;
				
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct PackedVaryings
			{
				ASE_SV_POSITION_QUALIFIERS float4 positionCS : SV_POSITION;
				float4 clipPosV : TEXCOORD0;
				float3 positionWS : TEXCOORD1;
				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR) && defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					float4 shadowCoord : TEXCOORD2;
				#endif
				
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

			CBUFFER_START(UnityPerMaterial)
			float4 _Texture2_ST;
			float4 _COATOFARMSCOLOR;
			float4 _SKINCOLOR;
			float4 _HAIRCOLOR;
			float4 _Texture0_ST;
			float4 _SCLERACOLOR;
			float4 _LIPSCOLOR;
			float4 _Texture1_ST;
			float4 _SCARSCOLOR;
			float4 _METAL1COLOR;
			float4 _METAL2COLOR;
			float4 _Texture6_ST;
			float4 _METAL3COLOR;
			float4 _LEATHER1COLOR;
			float4 _LEATHER2COLOR;
			float4 _EYESCOLOR;
			float4 _LEATHER3COLOR;
			float4 _Texture3_ST;
			float4 _GEMS3COLOR;
			float4 _Texture7_ST;
			float4 _GEMS1COLOR;
			float4 _FEATHERS3COLOR;
			float4 _Texture4_ST;
			float4 _GEMS2COLOR;
			float4 _FEATHERS1COLOR;
			float4 _CLOTH3COLOR;
			float4 _Texture5_ST;
			float4 _CLOTH2COLOR;
			float4 _CLOTH1COLOR;
			float4 _FEATHERS2COLOR;
			float _HAIRSMOOTHNESS;
			float _METAL3SMOOTHNESS;
			float _EYESSMOOTHNESS;
			float _SCLERASMOOTHNESS;
			float _LIPSSMOOTHNESS;
			float _SCARSSMOOTHNESS;
			float _METAL1SMOOTHNESS;
			float _METAL2SMOOTHNESS;
			float _LEATHER1SMOOTHNESS;
			float _METAL1METALLIC;
			float _LEATHER3SMOOTHNESS;
			float _GEMS1SMOOTHNESS;
			float _GEMS2SMOOTHNESS;
			float _GEMS3SMOOTHNESS;
			float _SmoothnessOn;
			float _METAL2METALLIC;
			float _METAL3METALLIC;
			float _MetalicOn;
			float _SKINSMOOTHNESS;
			float _LEATHER2SMOOTHNESS;
			float _OCCLUSION;
			#ifdef ASE_TRANSMISSION
				float _TransmissionShadow;
			#endif
			#ifdef ASE_TRANSLUCENCY
				float _TransStrength;
				float _TransNormal;
				float _TransScattering;
				float _TransDirect;
				float _TransAmbient;
				float _TransShadow;
			#endif
			#ifdef ASE_TESSELLATION
				float _TessPhongStrength;
				float _TessValue;
				float _TessMin;
				float _TessMax;
				float _TessEdgeLength;
				float _TessMaxDisp;
			#endif
			CBUFFER_END

			#ifdef SCENEPICKINGPASS
				float4 _SelectionID;
			#endif

			#ifdef SCENESELECTIONPASS
				int _ObjectId;
				int _PassValue;
			#endif

			

			
			float3 _LightDirection;
			float3 _LightPosition;

			PackedVaryings VertexFunction( Attributes input )
			{
				PackedVaryings output;
				UNITY_SETUP_INSTANCE_ID(input);
				UNITY_TRANSFER_INSTANCE_ID(input, output);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO( output );

				

				#ifdef ASE_ABSOLUTE_VERTEX_POS
					float3 defaultVertexValue = input.positionOS.xyz;
				#else
					float3 defaultVertexValue = float3(0, 0, 0);
				#endif

				float3 vertexValue = defaultVertexValue;
				#ifdef ASE_ABSOLUTE_VERTEX_POS
					input.positionOS.xyz = vertexValue;
				#else
					input.positionOS.xyz += vertexValue;
				#endif

				input.normalOS = input.normalOS;

				float3 positionWS = TransformObjectToWorld( input.positionOS.xyz );
				float3 normalWS = TransformObjectToWorldDir(input.normalOS);

				#if _CASTING_PUNCTUAL_LIGHT_SHADOW
					float3 lightDirectionWS = normalize(_LightPosition - positionWS);
				#else
					float3 lightDirectionWS = _LightDirection;
				#endif

				float4 positionCS = TransformWorldToHClip(ApplyShadowBias(positionWS, normalWS, lightDirectionWS));

				#if UNITY_REVERSED_Z
					positionCS.z = min(positionCS.z, UNITY_NEAR_CLIP_VALUE);
				#else
					positionCS.z = max(positionCS.z, UNITY_NEAR_CLIP_VALUE);
				#endif

				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR) && defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					VertexPositionInputs vertexInput = (VertexPositionInputs)0;
					vertexInput.positionWS = positionWS;
					vertexInput.positionCS = positionCS;
					output.shadowCoord = GetShadowCoord( vertexInput );
				#endif

				output.positionCS = positionCS;
				output.clipPosV = positionCS;
				output.positionWS = positionWS;
				return output;
			}

			#if defined(ASE_TESSELLATION)
			struct VertexControl
			{
				float4 positionOS : INTERNALTESSPOS;
				float3 normalOS : NORMAL;
				
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl vert ( Attributes input )
			{
				VertexControl output;
				UNITY_SETUP_INSTANCE_ID(input);
				UNITY_TRANSFER_INSTANCE_ID(input, output);
				output.positionOS = input.positionOS;
				output.normalOS = input.normalOS;
				
				return output;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> input)
			{
				TessellationFactors output;
				float4 tf = 1;
				float tessValue = _TessValue; float tessMin = _TessMin; float tessMax = _TessMax;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(input[0].positionOS, input[1].positionOS, input[2].positionOS, tessValue, tessMin, tessMax, GetObjectToWorldMatrix(), _WorldSpaceCameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(input[0].positionOS, input[1].positionOS, input[2].positionOS, edgeLength, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(input[0].positionOS, input[1].positionOS, input[2].positionOS, edgeLength, tessMaxDisp, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams, unity_CameraWorldClipPlanes );
				#endif
				output.edge[0] = tf.x; output.edge[1] = tf.y; output.edge[2] = tf.z; output.inside = tf.w;
				return output;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
				return patch[id];
			}

			[domain("tri")]
			PackedVaryings DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				Attributes output = (Attributes) 0;
				output.positionOS = patch[0].positionOS * bary.x + patch[1].positionOS * bary.y + patch[2].positionOS * bary.z;
				output.normalOS = patch[0].normalOS * bary.x + patch[1].normalOS * bary.y + patch[2].normalOS * bary.z;
				
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = output.positionOS.xyz - patch[i].normalOS * (dot(output.positionOS.xyz, patch[i].normalOS) - dot(patch[i].positionOS.xyz, patch[i].normalOS));
				float phongStrength = _TessPhongStrength;
				output.positionOS.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * output.positionOS.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], output);
				return VertexFunction(output);
			}
			#else
			PackedVaryings vert ( Attributes input )
			{
				return VertexFunction( input );
			}
			#endif

			half4 frag(	PackedVaryings input
						#ifdef ASE_DEPTH_WRITE_ON
						,out float outputDepth : ASE_SV_DEPTH
						#endif
						 ) : SV_Target
			{
				UNITY_SETUP_INSTANCE_ID( input );
				UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX( input );

				float3 WorldPosition = input.positionWS;
				float4 ShadowCoords = float4( 0, 0, 0, 0 );
				float4 ClipPos = input.clipPosV;
				float4 ScreenPos = ComputeScreenPos( input.clipPosV );

				#if defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR)
						ShadowCoords = input.shadowCoord;
					#elif defined(MAIN_LIGHT_CALCULATE_SHADOWS)
						ShadowCoords = TransformWorldToShadowCoord( WorldPosition );
					#endif
				#endif

				

				float Alpha = 1;
				float AlphaClipThreshold = 0.5;
				float AlphaClipThresholdShadow = 0.5;

				#ifdef ASE_DEPTH_WRITE_ON
					float DepthValue = input.positionCS.z;
				#endif

				#ifdef _ALPHATEST_ON
					#ifdef _ALPHATEST_SHADOW_ON
						clip(Alpha - AlphaClipThresholdShadow);
					#else
						clip(Alpha - AlphaClipThreshold);
					#endif
				#endif

				#if defined(LOD_FADE_CROSSFADE)
					LODFadeCrossFade( input.positionCS );
				#endif

				#ifdef ASE_DEPTH_WRITE_ON
					outputDepth = DepthValue;
				#endif

				return 0;
			}
			ENDHLSL
		}

		
		Pass
		{
			
			Name "DepthOnly"
			Tags { "LightMode"="DepthOnly" }

			ZWrite On
			ColorMask 0
			AlphaToMask Off

			HLSLPROGRAM

			

			#pragma multi_compile _ALPHATEST_ON
			#define _NORMAL_DROPOFF_TS 1
			#pragma multi_compile_instancing
			#pragma multi_compile_fragment _ LOD_FADE_CROSSFADE
			#define ASE_FOG 1
			#define ASE_VERSION 19800
			#define ASE_SRP_VERSION 140011


			

			#pragma vertex vert
			#pragma fragment frag

			#if defined(_SPECULAR_SETUP) && defined(_ASE_LIGHTING_SIMPLE)
				#define _SPECULAR_COLOR 1
			#endif

			#define SHADERPASS SHADERPASS_DEPTHONLY

			
            #if ASE_SRP_VERSION >=140007
			#include_with_pragmas "Packages/com.unity.render-pipelines.universal/ShaderLibrary/DOTS.hlsl"
			#endif
		

			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Color.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Texture.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Input.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/TextureStack.hlsl"

			
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/FoveatedRendering.hlsl"
           

			
            #if ASE_SRP_VERSION >=140009
			#include_with_pragmas "Packages/com.unity.render-pipelines.core/ShaderLibrary/FoveatedRenderingKeywords.hlsl"
			#endif
		

			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/ShaderGraphFunctions.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/ShaderPass.hlsl"

			#if defined(LOD_FADE_CROSSFADE)
            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/LODCrossFade.hlsl"
            #endif

			

			#if defined(ASE_EARLY_Z_DEPTH_OPTIMIZE) && (SHADER_TARGET >= 45)
				#define ASE_SV_DEPTH SV_DepthLessEqual
				#define ASE_SV_POSITION_QUALIFIERS linear noperspective centroid
			#else
				#define ASE_SV_DEPTH SV_Depth
				#define ASE_SV_POSITION_QUALIFIERS
			#endif

			struct Attributes
			{
				float4 positionOS : POSITION;
				float3 normalOS : NORMAL;
				
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct PackedVaryings
			{
				ASE_SV_POSITION_QUALIFIERS float4 positionCS : SV_POSITION;
				float4 clipPosV : TEXCOORD0;
				float3 positionWS : TEXCOORD1;
				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR) && defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					float4 shadowCoord : TEXCOORD2;
				#endif
				
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

			CBUFFER_START(UnityPerMaterial)
			float4 _Texture2_ST;
			float4 _COATOFARMSCOLOR;
			float4 _SKINCOLOR;
			float4 _HAIRCOLOR;
			float4 _Texture0_ST;
			float4 _SCLERACOLOR;
			float4 _LIPSCOLOR;
			float4 _Texture1_ST;
			float4 _SCARSCOLOR;
			float4 _METAL1COLOR;
			float4 _METAL2COLOR;
			float4 _Texture6_ST;
			float4 _METAL3COLOR;
			float4 _LEATHER1COLOR;
			float4 _LEATHER2COLOR;
			float4 _EYESCOLOR;
			float4 _LEATHER3COLOR;
			float4 _Texture3_ST;
			float4 _GEMS3COLOR;
			float4 _Texture7_ST;
			float4 _GEMS1COLOR;
			float4 _FEATHERS3COLOR;
			float4 _Texture4_ST;
			float4 _GEMS2COLOR;
			float4 _FEATHERS1COLOR;
			float4 _CLOTH3COLOR;
			float4 _Texture5_ST;
			float4 _CLOTH2COLOR;
			float4 _CLOTH1COLOR;
			float4 _FEATHERS2COLOR;
			float _HAIRSMOOTHNESS;
			float _METAL3SMOOTHNESS;
			float _EYESSMOOTHNESS;
			float _SCLERASMOOTHNESS;
			float _LIPSSMOOTHNESS;
			float _SCARSSMOOTHNESS;
			float _METAL1SMOOTHNESS;
			float _METAL2SMOOTHNESS;
			float _LEATHER1SMOOTHNESS;
			float _METAL1METALLIC;
			float _LEATHER3SMOOTHNESS;
			float _GEMS1SMOOTHNESS;
			float _GEMS2SMOOTHNESS;
			float _GEMS3SMOOTHNESS;
			float _SmoothnessOn;
			float _METAL2METALLIC;
			float _METAL3METALLIC;
			float _MetalicOn;
			float _SKINSMOOTHNESS;
			float _LEATHER2SMOOTHNESS;
			float _OCCLUSION;
			#ifdef ASE_TRANSMISSION
				float _TransmissionShadow;
			#endif
			#ifdef ASE_TRANSLUCENCY
				float _TransStrength;
				float _TransNormal;
				float _TransScattering;
				float _TransDirect;
				float _TransAmbient;
				float _TransShadow;
			#endif
			#ifdef ASE_TESSELLATION
				float _TessPhongStrength;
				float _TessValue;
				float _TessMin;
				float _TessMax;
				float _TessEdgeLength;
				float _TessMaxDisp;
			#endif
			CBUFFER_END

			#ifdef SCENEPICKINGPASS
				float4 _SelectionID;
			#endif

			#ifdef SCENESELECTIONPASS
				int _ObjectId;
				int _PassValue;
			#endif

			

			
			PackedVaryings VertexFunction( Attributes input  )
			{
				PackedVaryings output = (PackedVaryings)0;
				UNITY_SETUP_INSTANCE_ID(input);
				UNITY_TRANSFER_INSTANCE_ID(input, output);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(output);

				

				#ifdef ASE_ABSOLUTE_VERTEX_POS
					float3 defaultVertexValue = input.positionOS.xyz;
				#else
					float3 defaultVertexValue = float3(0, 0, 0);
				#endif

				float3 vertexValue = defaultVertexValue;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
					input.positionOS.xyz = vertexValue;
				#else
					input.positionOS.xyz += vertexValue;
				#endif

				input.normalOS = input.normalOS;

				VertexPositionInputs vertexInput = GetVertexPositionInputs( input.positionOS.xyz );

				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR) && defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					output.shadowCoord = GetShadowCoord( vertexInput );
				#endif

				output.positionCS = vertexInput.positionCS;
				output.clipPosV = vertexInput.positionCS;
				output.positionWS = vertexInput.positionWS;
				return output;
			}

			#if defined(ASE_TESSELLATION)
			struct VertexControl
			{
				float4 positionOS : INTERNALTESSPOS;
				float3 normalOS : NORMAL;
				
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl vert ( Attributes input )
			{
				VertexControl output;
				UNITY_SETUP_INSTANCE_ID(input);
				UNITY_TRANSFER_INSTANCE_ID(input, output);
				output.positionOS = input.positionOS;
				output.normalOS = input.normalOS;
				
				return output;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> input)
			{
				TessellationFactors output;
				float4 tf = 1;
				float tessValue = _TessValue; float tessMin = _TessMin; float tessMax = _TessMax;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(input[0].positionOS, input[1].positionOS, input[2].positionOS, tessValue, tessMin, tessMax, GetObjectToWorldMatrix(), _WorldSpaceCameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(input[0].positionOS, input[1].positionOS, input[2].positionOS, edgeLength, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(input[0].positionOS, input[1].positionOS, input[2].positionOS, edgeLength, tessMaxDisp, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams, unity_CameraWorldClipPlanes );
				#endif
				output.edge[0] = tf.x; output.edge[1] = tf.y; output.edge[2] = tf.z; output.inside = tf.w;
				return output;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
				return patch[id];
			}

			[domain("tri")]
			PackedVaryings DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				Attributes output = (Attributes) 0;
				output.positionOS = patch[0].positionOS * bary.x + patch[1].positionOS * bary.y + patch[2].positionOS * bary.z;
				output.normalOS = patch[0].normalOS * bary.x + patch[1].normalOS * bary.y + patch[2].normalOS * bary.z;
				
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = output.positionOS.xyz - patch[i].normalOS * (dot(output.positionOS.xyz, patch[i].normalOS) - dot(patch[i].positionOS.xyz, patch[i].normalOS));
				float phongStrength = _TessPhongStrength;
				output.positionOS.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * output.positionOS.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], output);
				return VertexFunction(output);
			}
			#else
			PackedVaryings vert ( Attributes input )
			{
				return VertexFunction( input );
			}
			#endif

			half4 frag(	PackedVaryings input
						#ifdef ASE_DEPTH_WRITE_ON
						,out float outputDepth : ASE_SV_DEPTH
						#endif
						 ) : SV_Target
			{
				UNITY_SETUP_INSTANCE_ID(input);
				UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX( input );

				float3 WorldPosition = input.positionWS;
				float4 ShadowCoords = float4( 0, 0, 0, 0 );
				float4 ClipPos = input.clipPosV;
				float4 ScreenPos = ComputeScreenPos( input.clipPosV );

				#if defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR)
						ShadowCoords = input.shadowCoord;
					#elif defined(MAIN_LIGHT_CALCULATE_SHADOWS)
						ShadowCoords = TransformWorldToShadowCoord( WorldPosition );
					#endif
				#endif

				

				float Alpha = 1;
				float AlphaClipThreshold = 0.5;

				#ifdef ASE_DEPTH_WRITE_ON
					float DepthValue = input.positionCS.z;
				#endif

				#ifdef _ALPHATEST_ON
					clip(Alpha - AlphaClipThreshold);
				#endif

				#if defined(LOD_FADE_CROSSFADE)
					LODFadeCrossFade( input.positionCS );
				#endif

				#ifdef ASE_DEPTH_WRITE_ON
					outputDepth = DepthValue;
				#endif

				return 0;
			}
			ENDHLSL
		}

		
		Pass
		{
			
			Name "Meta"
			Tags { "LightMode"="Meta" }

			Cull Off

			HLSLPROGRAM
			#pragma multi_compile_fragment _ALPHATEST_ON
			#define _NORMAL_DROPOFF_TS 1
			#define ASE_FOG 1
			#define ASE_VERSION 19800
			#define ASE_SRP_VERSION 140011

			#pragma shader_feature EDITOR_VISUALIZATION

			#pragma vertex vert
			#pragma fragment frag

			#if defined(_SPECULAR_SETUP) && defined(_ASE_LIGHTING_SIMPLE)
				#define _SPECULAR_COLOR 1
			#endif

			#define SHADERPASS SHADERPASS_META

			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Color.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Texture.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Input.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/TextureStack.hlsl"

			
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/FoveatedRendering.hlsl"
           

			
            #if ASE_SRP_VERSION >=140009
			#include_with_pragmas "Packages/com.unity.render-pipelines.core/ShaderLibrary/FoveatedRenderingKeywords.hlsl"
			#endif
		

			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/ShaderGraphFunctions.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/MetaInput.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/ShaderPass.hlsl"

			

			struct Attributes
			{
				float4 positionOS : POSITION;
				float3 normalOS : NORMAL;
				float4 texcoord0 : TEXCOORD0;
				float4 texcoord1 : TEXCOORD1;
				float4 texcoord2 : TEXCOORD2;
				
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct PackedVaryings
			{
				float4 positionCS : SV_POSITION;
				#if defined(ASE_NEEDS_FRAG_WORLD_POSITION)
					float3 positionWS : TEXCOORD0;
				#endif
				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR) && defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					float4 shadowCoord : TEXCOORD1;
				#endif
				#ifdef EDITOR_VISUALIZATION
					float4 VizUV : TEXCOORD2;
					float4 LightCoord : TEXCOORD3;
				#endif
				float4 ase_texcoord4 : TEXCOORD4;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

			CBUFFER_START(UnityPerMaterial)
			float4 _Texture2_ST;
			float4 _COATOFARMSCOLOR;
			float4 _SKINCOLOR;
			float4 _HAIRCOLOR;
			float4 _Texture0_ST;
			float4 _SCLERACOLOR;
			float4 _LIPSCOLOR;
			float4 _Texture1_ST;
			float4 _SCARSCOLOR;
			float4 _METAL1COLOR;
			float4 _METAL2COLOR;
			float4 _Texture6_ST;
			float4 _METAL3COLOR;
			float4 _LEATHER1COLOR;
			float4 _LEATHER2COLOR;
			float4 _EYESCOLOR;
			float4 _LEATHER3COLOR;
			float4 _Texture3_ST;
			float4 _GEMS3COLOR;
			float4 _Texture7_ST;
			float4 _GEMS1COLOR;
			float4 _FEATHERS3COLOR;
			float4 _Texture4_ST;
			float4 _GEMS2COLOR;
			float4 _FEATHERS1COLOR;
			float4 _CLOTH3COLOR;
			float4 _Texture5_ST;
			float4 _CLOTH2COLOR;
			float4 _CLOTH1COLOR;
			float4 _FEATHERS2COLOR;
			float _HAIRSMOOTHNESS;
			float _METAL3SMOOTHNESS;
			float _EYESSMOOTHNESS;
			float _SCLERASMOOTHNESS;
			float _LIPSSMOOTHNESS;
			float _SCARSSMOOTHNESS;
			float _METAL1SMOOTHNESS;
			float _METAL2SMOOTHNESS;
			float _LEATHER1SMOOTHNESS;
			float _METAL1METALLIC;
			float _LEATHER3SMOOTHNESS;
			float _GEMS1SMOOTHNESS;
			float _GEMS2SMOOTHNESS;
			float _GEMS3SMOOTHNESS;
			float _SmoothnessOn;
			float _METAL2METALLIC;
			float _METAL3METALLIC;
			float _MetalicOn;
			float _SKINSMOOTHNESS;
			float _LEATHER2SMOOTHNESS;
			float _OCCLUSION;
			#ifdef ASE_TRANSMISSION
				float _TransmissionShadow;
			#endif
			#ifdef ASE_TRANSLUCENCY
				float _TransStrength;
				float _TransNormal;
				float _TransScattering;
				float _TransDirect;
				float _TransAmbient;
				float _TransShadow;
			#endif
			#ifdef ASE_TESSELLATION
				float _TessPhongStrength;
				float _TessValue;
				float _TessMin;
				float _TessMax;
				float _TessEdgeLength;
				float _TessMaxDisp;
			#endif
			CBUFFER_END

			#ifdef SCENEPICKINGPASS
				float4 _SelectionID;
			#endif

			#ifdef SCENESELECTIONPASS
				int _ObjectId;
				int _PassValue;
			#endif

			sampler2D _Texture2;
			sampler2D _Texture7;
			sampler2D _Texture4;
			sampler2D _Texture5;
			sampler2D _Texture3;
			sampler2D _Texture6;
			sampler2D _Texture1;
			sampler2D _Texture0;
			sampler2D _COATOFARMSMASK;


			
			PackedVaryings VertexFunction( Attributes input  )
			{
				PackedVaryings output = (PackedVaryings)0;
				UNITY_SETUP_INSTANCE_ID(input);
				UNITY_TRANSFER_INSTANCE_ID(input, output);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(output);

				output.ase_texcoord4.xy = input.texcoord0.xy;
				output.ase_texcoord4.zw = input.texcoord1.xy;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
					float3 defaultVertexValue = input.positionOS.xyz;
				#else
					float3 defaultVertexValue = float3(0, 0, 0);
				#endif

				float3 vertexValue = defaultVertexValue;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
					input.positionOS.xyz = vertexValue;
				#else
					input.positionOS.xyz += vertexValue;
				#endif

				input.normalOS = input.normalOS;

				float3 positionWS = TransformObjectToWorld( input.positionOS.xyz );

				#if defined(ASE_NEEDS_FRAG_WORLD_POSITION)
					output.positionWS = positionWS;
				#endif

				output.positionCS = MetaVertexPosition( input.positionOS, input.texcoord1.xy, input.texcoord1.xy, unity_LightmapST, unity_DynamicLightmapST );

				#ifdef EDITOR_VISUALIZATION
					float2 VizUV = 0;
					float4 LightCoord = 0;
					UnityEditorVizData(input.positionOS.xyz, input.texcoord0.xy, input.texcoord1.xy, input.texcoord2.xy, VizUV, LightCoord);
					output.VizUV = float4(VizUV, 0, 0);
					output.LightCoord = LightCoord;
				#endif

				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR) && defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					VertexPositionInputs vertexInput = (VertexPositionInputs)0;
					vertexInput.positionWS = positionWS;
					vertexInput.positionCS = output.positionCS;
					output.shadowCoord = GetShadowCoord( vertexInput );
				#endif

				return output;
			}

			#if defined(ASE_TESSELLATION)
			struct VertexControl
			{
				float4 positionOS : INTERNALTESSPOS;
				float3 normalOS : NORMAL;
				float4 texcoord0 : TEXCOORD0;
				float4 texcoord1 : TEXCOORD1;
				float4 texcoord2 : TEXCOORD2;
				
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl vert ( Attributes input )
			{
				VertexControl output;
				UNITY_SETUP_INSTANCE_ID(input);
				UNITY_TRANSFER_INSTANCE_ID(input, output);
				output.positionOS = input.positionOS;
				output.normalOS = input.normalOS;
				output.texcoord0 = input.texcoord0;
				output.texcoord1 = input.texcoord1;
				output.texcoord2 = input.texcoord2;
				
				return output;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> input)
			{
				TessellationFactors output;
				float4 tf = 1;
				float tessValue = _TessValue; float tessMin = _TessMin; float tessMax = _TessMax;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(input[0].positionOS, input[1].positionOS, input[2].positionOS, tessValue, tessMin, tessMax, GetObjectToWorldMatrix(), _WorldSpaceCameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(input[0].positionOS, input[1].positionOS, input[2].positionOS, edgeLength, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(input[0].positionOS, input[1].positionOS, input[2].positionOS, edgeLength, tessMaxDisp, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams, unity_CameraWorldClipPlanes );
				#endif
				output.edge[0] = tf.x; output.edge[1] = tf.y; output.edge[2] = tf.z; output.inside = tf.w;
				return output;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
				return patch[id];
			}

			[domain("tri")]
			PackedVaryings DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				Attributes output = (Attributes) 0;
				output.positionOS = patch[0].positionOS * bary.x + patch[1].positionOS * bary.y + patch[2].positionOS * bary.z;
				output.normalOS = patch[0].normalOS * bary.x + patch[1].normalOS * bary.y + patch[2].normalOS * bary.z;
				output.texcoord0 = patch[0].texcoord0 * bary.x + patch[1].texcoord0 * bary.y + patch[2].texcoord0 * bary.z;
				output.texcoord1 = patch[0].texcoord1 * bary.x + patch[1].texcoord1 * bary.y + patch[2].texcoord1 * bary.z;
				output.texcoord2 = patch[0].texcoord2 * bary.x + patch[1].texcoord2 * bary.y + patch[2].texcoord2 * bary.z;
				
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = output.positionOS.xyz - patch[i].normalOS * (dot(output.positionOS.xyz, patch[i].normalOS) - dot(patch[i].positionOS.xyz, patch[i].normalOS));
				float phongStrength = _TessPhongStrength;
				output.positionOS.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * output.positionOS.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], output);
				return VertexFunction(output);
			}
			#else
			PackedVaryings vert ( Attributes input )
			{
				return VertexFunction( input );
			}
			#endif

			half4 frag(PackedVaryings input  ) : SV_Target
			{
				UNITY_SETUP_INSTANCE_ID(input);
				UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX( input );

				#if defined(ASE_NEEDS_FRAG_WORLD_POSITION)
					float3 WorldPosition = input.positionWS;
				#endif

				float4 ShadowCoords = float4( 0, 0, 0, 0 );

				#if defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR)
						ShadowCoords = input.shadowCoord;
					#elif defined(MAIN_LIGHT_CALCULATE_SHADOWS)
						ShadowCoords = TransformWorldToShadowCoord( WorldPosition );
					#endif
				#endif

				float2 uv_Texture2 = input.ase_texcoord4.xy * _Texture2_ST.xy + _Texture2_ST.zw;
				float4 tex2DNode199 = tex2D( _Texture2, uv_Texture2 );
				float2 uv_Texture7 = input.ase_texcoord4.xy * _Texture7_ST.xy + _Texture7_ST.zw;
				float4 tex2DNode222 = tex2D( _Texture7, uv_Texture7 );
				float3 temp_cast_0 = (tex2DNode222.b).xxx;
				float temp_output_215_0 = saturate( ( 1.0 - ( ( distance( temp_cast_0 , float3( 0,0,0 ) ) - 0.1 ) / max( 0.0 , 1E-05 ) ) ) );
				float4 lerpResult219 = lerp( float4( 0,0,0,0 ) , ( tex2DNode199 * _GEMS3COLOR ) , temp_output_215_0);
				float3 temp_cast_1 = (tex2DNode222.g).xxx;
				float temp_output_216_0 = saturate( ( 1.0 - ( ( distance( temp_cast_1 , float3( 0,0,0 ) ) - 0.1 ) / max( 0.0 , 1E-05 ) ) ) );
				float4 lerpResult214 = lerp( lerpResult219 , ( tex2DNode199 * _GEMS2COLOR ) , temp_output_216_0);
				float3 temp_cast_2 = (tex2DNode222.r).xxx;
				float temp_output_213_0 = saturate( ( 1.0 - ( ( distance( temp_cast_2 , float3( 0,0,0 ) ) - 0.1 ) / max( 0.0 , 1E-05 ) ) ) );
				float4 lerpResult217 = lerp( lerpResult214 , ( tex2DNode199 * _GEMS1COLOR ) , temp_output_213_0);
				float2 uv_Texture4 = input.ase_texcoord4.xy * _Texture4_ST.xy + _Texture4_ST.zw;
				float4 tex2DNode181 = tex2D( _Texture4, uv_Texture4 );
				float3 temp_cast_3 = (tex2DNode181.b).xxx;
				float4 lerpResult182 = lerp( lerpResult217 , ( tex2DNode199 * _FEATHERS3COLOR ) , saturate( ( 1.0 - ( ( distance( temp_cast_3 , float3( 0,0,0 ) ) - 0.1 ) / max( 0.0 , 1E-05 ) ) ) ));
				float3 temp_cast_4 = (tex2DNode181.g).xxx;
				float4 lerpResult189 = lerp( lerpResult182 , ( tex2DNode199 * _FEATHERS2COLOR ) , saturate( ( 1.0 - ( ( distance( temp_cast_4 , float3( 0,0,0 ) ) - 0.1 ) / max( 0.0 , 1E-05 ) ) ) ));
				float3 temp_cast_5 = (tex2DNode181.r).xxx;
				float4 lerpResult184 = lerp( lerpResult189 , ( tex2DNode199 * _FEATHERS1COLOR ) , saturate( ( 1.0 - ( ( distance( temp_cast_5 , float3( 0,0,0 ) ) - 0.1 ) / max( 0.0 , 1E-05 ) ) ) ));
				float2 uv_Texture5 = input.ase_texcoord4.xy * _Texture5_ST.xy + _Texture5_ST.zw;
				float4 tex2DNode170 = tex2D( _Texture5, uv_Texture5 );
				float3 temp_cast_6 = (tex2DNode170.b).xxx;
				float4 lerpResult171 = lerp( lerpResult184 , ( tex2DNode199 * _CLOTH3COLOR ) , saturate( ( 1.0 - ( ( distance( temp_cast_6 , float3( 0,0,0 ) ) - 0.1 ) / max( 0.0 , 1E-05 ) ) ) ));
				float3 temp_cast_7 = (tex2DNode170.g).xxx;
				float4 lerpResult178 = lerp( lerpResult171 , ( tex2DNode199 * _CLOTH2COLOR ) , saturate( ( 1.0 - ( ( distance( temp_cast_7 , float3( 0,0,0 ) ) - 0.1 ) / max( 0.0 , 1E-05 ) ) ) ));
				float3 temp_cast_8 = (tex2DNode170.r).xxx;
				float4 lerpResult173 = lerp( lerpResult178 , ( tex2DNode199 * _CLOTH1COLOR ) , saturate( ( 1.0 - ( ( distance( temp_cast_8 , float3( 0,0,0 ) ) - 0.1 ) / max( 0.0 , 1E-05 ) ) ) ));
				float2 uv_Texture3 = input.ase_texcoord4.xy * _Texture3_ST.xy + _Texture3_ST.zw;
				float4 tex2DNode159 = tex2D( _Texture3, uv_Texture3 );
				float3 temp_cast_9 = (tex2DNode159.b).xxx;
				float temp_output_165_0 = saturate( ( 1.0 - ( ( distance( temp_cast_9 , float3( 0,0,0 ) ) - 0.1 ) / max( 0.0 , 1E-05 ) ) ) );
				float4 lerpResult160 = lerp( lerpResult173 , ( tex2DNode199 * _LEATHER3COLOR ) , temp_output_165_0);
				float3 temp_cast_10 = (tex2DNode159.g).xxx;
				float temp_output_158_0 = saturate( ( 1.0 - ( ( distance( temp_cast_10 , float3( 0,0,0 ) ) - 0.1 ) / max( 0.0 , 1E-05 ) ) ) );
				float4 lerpResult167 = lerp( lerpResult160 , ( tex2DNode199 * _LEATHER2COLOR ) , temp_output_158_0);
				float3 temp_cast_11 = (tex2DNode159.r).xxx;
				float temp_output_157_0 = saturate( ( 1.0 - ( ( distance( temp_cast_11 , float3( 0,0,0 ) ) - 0.1 ) / max( 0.0 , 1E-05 ) ) ) );
				float4 lerpResult162 = lerp( lerpResult167 , ( tex2DNode199 * _LEATHER1COLOR ) , temp_output_157_0);
				float2 uv_Texture6 = input.ase_texcoord4.xy * _Texture6_ST.xy + _Texture6_ST.zw;
				float4 tex2DNode121 = tex2D( _Texture6, uv_Texture6 );
				float3 temp_cast_12 = (tex2DNode121.b).xxx;
				float temp_output_117_0 = saturate( ( 1.0 - ( ( distance( temp_cast_12 , float3( 0,0,0 ) ) - 0.1 ) / max( 0.0 , 1E-05 ) ) ) );
				float4 lerpResult118 = lerp( lerpResult162 , ( tex2DNode199 * _METAL3COLOR ) , temp_output_117_0);
				float3 temp_cast_13 = (tex2DNode121.g).xxx;
				float temp_output_127_0 = saturate( ( 1.0 - ( ( distance( temp_cast_13 , float3( 0,0,0 ) ) - 0.1 ) / max( 0.0 , 1E-05 ) ) ) );
				float4 lerpResult128 = lerp( lerpResult118 , ( tex2DNode199 * _METAL2COLOR ) , temp_output_127_0);
				float3 temp_cast_14 = (tex2DNode121.r).xxx;
				float temp_output_123_0 = saturate( ( 1.0 - ( ( distance( temp_cast_14 , float3( 0,0,0 ) ) - 0.1 ) / max( 0.0 , 1E-05 ) ) ) );
				float4 lerpResult122 = lerp( lerpResult128 , ( tex2DNode199 * _METAL1COLOR ) , temp_output_123_0);
				float2 uv_Texture1 = input.ase_texcoord4.xy * _Texture1_ST.xy + _Texture1_ST.zw;
				float4 tex2DNode144 = tex2D( _Texture1, uv_Texture1 );
				float3 temp_cast_15 = (tex2DNode144.b).xxx;
				float temp_output_145_0 = saturate( ( 1.0 - ( ( distance( temp_cast_15 , float3( 0,0,0 ) ) - 0.1 ) / max( 0.0 , 1E-05 ) ) ) );
				float4 lerpResult148 = lerp( lerpResult122 , ( tex2DNode199 * _SCARSCOLOR ) , temp_output_145_0);
				float3 temp_cast_16 = (tex2DNode144.g).xxx;
				float temp_output_149_0 = saturate( ( 1.0 - ( ( distance( temp_cast_16 , float3( 0,0,0 ) ) - 0.1 ) / max( 0.0 , 1E-05 ) ) ) );
				float4 lerpResult151 = lerp( lerpResult148 , ( tex2DNode199 * _LIPSCOLOR ) , temp_output_149_0);
				float3 temp_cast_17 = (tex2DNode144.r).xxx;
				float temp_output_150_0 = saturate( ( 1.0 - ( ( distance( temp_cast_17 , float3( 0,0,0 ) ) - 0.1 ) / max( 0.0 , 1E-05 ) ) ) );
				float4 lerpResult153 = lerp( lerpResult151 , ( tex2DNode199 * _SCLERACOLOR ) , temp_output_150_0);
				float2 uv_Texture0 = input.ase_texcoord4.xy * _Texture0_ST.xy + _Texture0_ST.zw;
				float4 tex2DNode37 = tex2D( _Texture0, uv_Texture0 );
				float3 temp_cast_18 = (tex2DNode37.b).xxx;
				float temp_output_71_0 = saturate( ( 1.0 - ( ( distance( temp_cast_18 , float3( 0,0,0 ) ) - 0.1 ) / max( 0.0 , 1E-05 ) ) ) );
				float4 lerpResult73 = lerp( lerpResult153 , ( tex2DNode199 * _EYESCOLOR ) , temp_output_71_0);
				float3 temp_cast_19 = (tex2DNode37.g).xxx;
				float temp_output_67_0 = saturate( ( 1.0 - ( ( distance( temp_cast_19 , float3( 0,0,0 ) ) - 0.1 ) / max( 0.0 , 1E-05 ) ) ) );
				float4 lerpResult69 = lerp( lerpResult73 , ( tex2DNode199 * _HAIRCOLOR ) , temp_output_67_0);
				float3 temp_cast_20 = (tex2DNode37.r).xxx;
				float temp_output_63_0 = saturate( ( 1.0 - ( ( distance( temp_cast_20 , float3( 0,0,0 ) ) - 0.1 ) / max( 0.0 , 1E-05 ) ) ) );
				float4 lerpResult62 = lerp( lerpResult69 , ( tex2DNode199 * _SKINCOLOR ) , temp_output_63_0);
				float2 uv1_COATOFARMSMASK10 = input.ase_texcoord4.zw;
				float temp_output_9_0 = ( 1.0 - tex2D( _COATOFARMSMASK, uv1_COATOFARMSMASK10 ).a );
				float4 temp_cast_21 = (temp_output_9_0).xxxx;
				float4 temp_output_1_0_g93 = temp_cast_21;
				float4 color25 = IsGammaSpace() ? float4(0,0,0,0) : float4(0,0,0,0);
				float4 temp_output_2_0_g93 = color25;
				float temp_output_11_0_g93 = distance( temp_output_1_0_g93 , temp_output_2_0_g93 );
				float2 _Vector0 = float2(1.6,1);
				float4 lerpResult21_g93 = lerp( _COATOFARMSCOLOR , temp_output_1_0_g93 , saturate( ( ( temp_output_11_0_g93 - _Vector0.x ) / max( _Vector0.y , 1E-05 ) ) ));
				float4 lerpResult64 = lerp( lerpResult62 , lerpResult21_g93 , ( 1.0 - temp_output_9_0 ));
				

				float3 BaseColor = lerpResult64.rgb;
				float3 Emission = 0;
				float Alpha = 1;
				float AlphaClipThreshold = 0.5;

				#ifdef _ALPHATEST_ON
					clip(Alpha - AlphaClipThreshold);
				#endif

				MetaInput metaInput = (MetaInput)0;
				metaInput.Albedo = BaseColor;
				metaInput.Emission = Emission;
				#ifdef EDITOR_VISUALIZATION
					metaInput.VizUV = input.VizUV.xy;
					metaInput.LightCoord = input.LightCoord;
				#endif

				return UnityMetaFragment(metaInput);
			}
			ENDHLSL
		}

		
		Pass
		{
			
			Name "Universal2D"
			Tags { "LightMode"="Universal2D" }

			Blend One Zero, One Zero
			ZWrite On
			ZTest LEqual
			Offset 0 , 0
			ColorMask RGBA

			HLSLPROGRAM

			#pragma multi_compile_fragment _ALPHATEST_ON
			#define _NORMAL_DROPOFF_TS 1
			#define ASE_FOG 1
			#define ASE_VERSION 19800
			#define ASE_SRP_VERSION 140011


			#pragma vertex vert
			#pragma fragment frag

			#if defined(_SPECULAR_SETUP) && defined(_ASE_LIGHTING_SIMPLE)
				#define _SPECULAR_COLOR 1
			#endif

			#define SHADERPASS SHADERPASS_2D

			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Color.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Texture.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Input.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/TextureStack.hlsl"

			
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/FoveatedRendering.hlsl"
           

			
            #if ASE_SRP_VERSION >=140009
			#include_with_pragmas "Packages/com.unity.render-pipelines.core/ShaderLibrary/FoveatedRenderingKeywords.hlsl"
			#endif
		

			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/ShaderGraphFunctions.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/ShaderPass.hlsl"

			

			struct Attributes
			{
				float4 positionOS : POSITION;
				float3 normalOS : NORMAL;
				float4 ase_texcoord : TEXCOORD0;
				float4 ase_texcoord1 : TEXCOORD1;
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct PackedVaryings
			{
				float4 positionCS : SV_POSITION;
				#if defined(ASE_NEEDS_FRAG_WORLD_POSITION)
					float3 positionWS : TEXCOORD0;
				#endif
				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR) && defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					float4 shadowCoord : TEXCOORD1;
				#endif
				float4 ase_texcoord2 : TEXCOORD2;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

			CBUFFER_START(UnityPerMaterial)
			float4 _Texture2_ST;
			float4 _COATOFARMSCOLOR;
			float4 _SKINCOLOR;
			float4 _HAIRCOLOR;
			float4 _Texture0_ST;
			float4 _SCLERACOLOR;
			float4 _LIPSCOLOR;
			float4 _Texture1_ST;
			float4 _SCARSCOLOR;
			float4 _METAL1COLOR;
			float4 _METAL2COLOR;
			float4 _Texture6_ST;
			float4 _METAL3COLOR;
			float4 _LEATHER1COLOR;
			float4 _LEATHER2COLOR;
			float4 _EYESCOLOR;
			float4 _LEATHER3COLOR;
			float4 _Texture3_ST;
			float4 _GEMS3COLOR;
			float4 _Texture7_ST;
			float4 _GEMS1COLOR;
			float4 _FEATHERS3COLOR;
			float4 _Texture4_ST;
			float4 _GEMS2COLOR;
			float4 _FEATHERS1COLOR;
			float4 _CLOTH3COLOR;
			float4 _Texture5_ST;
			float4 _CLOTH2COLOR;
			float4 _CLOTH1COLOR;
			float4 _FEATHERS2COLOR;
			float _HAIRSMOOTHNESS;
			float _METAL3SMOOTHNESS;
			float _EYESSMOOTHNESS;
			float _SCLERASMOOTHNESS;
			float _LIPSSMOOTHNESS;
			float _SCARSSMOOTHNESS;
			float _METAL1SMOOTHNESS;
			float _METAL2SMOOTHNESS;
			float _LEATHER1SMOOTHNESS;
			float _METAL1METALLIC;
			float _LEATHER3SMOOTHNESS;
			float _GEMS1SMOOTHNESS;
			float _GEMS2SMOOTHNESS;
			float _GEMS3SMOOTHNESS;
			float _SmoothnessOn;
			float _METAL2METALLIC;
			float _METAL3METALLIC;
			float _MetalicOn;
			float _SKINSMOOTHNESS;
			float _LEATHER2SMOOTHNESS;
			float _OCCLUSION;
			#ifdef ASE_TRANSMISSION
				float _TransmissionShadow;
			#endif
			#ifdef ASE_TRANSLUCENCY
				float _TransStrength;
				float _TransNormal;
				float _TransScattering;
				float _TransDirect;
				float _TransAmbient;
				float _TransShadow;
			#endif
			#ifdef ASE_TESSELLATION
				float _TessPhongStrength;
				float _TessValue;
				float _TessMin;
				float _TessMax;
				float _TessEdgeLength;
				float _TessMaxDisp;
			#endif
			CBUFFER_END

			#ifdef SCENEPICKINGPASS
				float4 _SelectionID;
			#endif

			#ifdef SCENESELECTIONPASS
				int _ObjectId;
				int _PassValue;
			#endif

			sampler2D _Texture2;
			sampler2D _Texture7;
			sampler2D _Texture4;
			sampler2D _Texture5;
			sampler2D _Texture3;
			sampler2D _Texture6;
			sampler2D _Texture1;
			sampler2D _Texture0;
			sampler2D _COATOFARMSMASK;


			
			PackedVaryings VertexFunction( Attributes input  )
			{
				PackedVaryings output = (PackedVaryings)0;
				UNITY_SETUP_INSTANCE_ID( input );
				UNITY_TRANSFER_INSTANCE_ID( input, output );
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO( output );

				output.ase_texcoord2.xy = input.ase_texcoord.xy;
				output.ase_texcoord2.zw = input.ase_texcoord1.xy;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
					float3 defaultVertexValue = input.positionOS.xyz;
				#else
					float3 defaultVertexValue = float3(0, 0, 0);
				#endif

				float3 vertexValue = defaultVertexValue;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
					input.positionOS.xyz = vertexValue;
				#else
					input.positionOS.xyz += vertexValue;
				#endif

				input.normalOS = input.normalOS;

				VertexPositionInputs vertexInput = GetVertexPositionInputs( input.positionOS.xyz );

				#if defined(ASE_NEEDS_FRAG_WORLD_POSITION)
					output.positionWS = vertexInput.positionWS;
				#endif

				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR) && defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					output.shadowCoord = GetShadowCoord( vertexInput );
				#endif

				output.positionCS = vertexInput.positionCS;
				return output;
			}

			#if defined(ASE_TESSELLATION)
			struct VertexControl
			{
				float4 positionOS : INTERNALTESSPOS;
				float3 normalOS : NORMAL;
				float4 ase_texcoord : TEXCOORD0;
				float4 ase_texcoord1 : TEXCOORD1;

				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl vert ( Attributes input )
			{
				VertexControl output;
				UNITY_SETUP_INSTANCE_ID(input);
				UNITY_TRANSFER_INSTANCE_ID(input, output);
				output.positionOS = input.positionOS;
				output.normalOS = input.normalOS;
				output.ase_texcoord = input.ase_texcoord;
				output.ase_texcoord1 = input.ase_texcoord1;
				return output;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> input)
			{
				TessellationFactors output;
				float4 tf = 1;
				float tessValue = _TessValue; float tessMin = _TessMin; float tessMax = _TessMax;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(input[0].positionOS, input[1].positionOS, input[2].positionOS, tessValue, tessMin, tessMax, GetObjectToWorldMatrix(), _WorldSpaceCameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(input[0].positionOS, input[1].positionOS, input[2].positionOS, edgeLength, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(input[0].positionOS, input[1].positionOS, input[2].positionOS, edgeLength, tessMaxDisp, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams, unity_CameraWorldClipPlanes );
				#endif
				output.edge[0] = tf.x; output.edge[1] = tf.y; output.edge[2] = tf.z; output.inside = tf.w;
				return output;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
				return patch[id];
			}

			[domain("tri")]
			PackedVaryings DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				Attributes output = (Attributes) 0;
				output.positionOS = patch[0].positionOS * bary.x + patch[1].positionOS * bary.y + patch[2].positionOS * bary.z;
				output.normalOS = patch[0].normalOS * bary.x + patch[1].normalOS * bary.y + patch[2].normalOS * bary.z;
				output.ase_texcoord = patch[0].ase_texcoord * bary.x + patch[1].ase_texcoord * bary.y + patch[2].ase_texcoord * bary.z;
				output.ase_texcoord1 = patch[0].ase_texcoord1 * bary.x + patch[1].ase_texcoord1 * bary.y + patch[2].ase_texcoord1 * bary.z;
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = output.positionOS.xyz - patch[i].normalOS * (dot(output.positionOS.xyz, patch[i].normalOS) - dot(patch[i].positionOS.xyz, patch[i].normalOS));
				float phongStrength = _TessPhongStrength;
				output.positionOS.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * output.positionOS.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], output);
				return VertexFunction(output);
			}
			#else
			PackedVaryings vert ( Attributes input )
			{
				return VertexFunction( input );
			}
			#endif

			half4 frag(PackedVaryings input  ) : SV_Target
			{
				UNITY_SETUP_INSTANCE_ID( input );
				UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX( input );

				#if defined(ASE_NEEDS_FRAG_WORLD_POSITION)
					float3 WorldPosition = input.positionWS;
				#endif

				float4 ShadowCoords = float4( 0, 0, 0, 0 );

				#if defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR)
						ShadowCoords = input.shadowCoord;
					#elif defined(MAIN_LIGHT_CALCULATE_SHADOWS)
						ShadowCoords = TransformWorldToShadowCoord( WorldPosition );
					#endif
				#endif

				float2 uv_Texture2 = input.ase_texcoord2.xy * _Texture2_ST.xy + _Texture2_ST.zw;
				float4 tex2DNode199 = tex2D( _Texture2, uv_Texture2 );
				float2 uv_Texture7 = input.ase_texcoord2.xy * _Texture7_ST.xy + _Texture7_ST.zw;
				float4 tex2DNode222 = tex2D( _Texture7, uv_Texture7 );
				float3 temp_cast_0 = (tex2DNode222.b).xxx;
				float temp_output_215_0 = saturate( ( 1.0 - ( ( distance( temp_cast_0 , float3( 0,0,0 ) ) - 0.1 ) / max( 0.0 , 1E-05 ) ) ) );
				float4 lerpResult219 = lerp( float4( 0,0,0,0 ) , ( tex2DNode199 * _GEMS3COLOR ) , temp_output_215_0);
				float3 temp_cast_1 = (tex2DNode222.g).xxx;
				float temp_output_216_0 = saturate( ( 1.0 - ( ( distance( temp_cast_1 , float3( 0,0,0 ) ) - 0.1 ) / max( 0.0 , 1E-05 ) ) ) );
				float4 lerpResult214 = lerp( lerpResult219 , ( tex2DNode199 * _GEMS2COLOR ) , temp_output_216_0);
				float3 temp_cast_2 = (tex2DNode222.r).xxx;
				float temp_output_213_0 = saturate( ( 1.0 - ( ( distance( temp_cast_2 , float3( 0,0,0 ) ) - 0.1 ) / max( 0.0 , 1E-05 ) ) ) );
				float4 lerpResult217 = lerp( lerpResult214 , ( tex2DNode199 * _GEMS1COLOR ) , temp_output_213_0);
				float2 uv_Texture4 = input.ase_texcoord2.xy * _Texture4_ST.xy + _Texture4_ST.zw;
				float4 tex2DNode181 = tex2D( _Texture4, uv_Texture4 );
				float3 temp_cast_3 = (tex2DNode181.b).xxx;
				float4 lerpResult182 = lerp( lerpResult217 , ( tex2DNode199 * _FEATHERS3COLOR ) , saturate( ( 1.0 - ( ( distance( temp_cast_3 , float3( 0,0,0 ) ) - 0.1 ) / max( 0.0 , 1E-05 ) ) ) ));
				float3 temp_cast_4 = (tex2DNode181.g).xxx;
				float4 lerpResult189 = lerp( lerpResult182 , ( tex2DNode199 * _FEATHERS2COLOR ) , saturate( ( 1.0 - ( ( distance( temp_cast_4 , float3( 0,0,0 ) ) - 0.1 ) / max( 0.0 , 1E-05 ) ) ) ));
				float3 temp_cast_5 = (tex2DNode181.r).xxx;
				float4 lerpResult184 = lerp( lerpResult189 , ( tex2DNode199 * _FEATHERS1COLOR ) , saturate( ( 1.0 - ( ( distance( temp_cast_5 , float3( 0,0,0 ) ) - 0.1 ) / max( 0.0 , 1E-05 ) ) ) ));
				float2 uv_Texture5 = input.ase_texcoord2.xy * _Texture5_ST.xy + _Texture5_ST.zw;
				float4 tex2DNode170 = tex2D( _Texture5, uv_Texture5 );
				float3 temp_cast_6 = (tex2DNode170.b).xxx;
				float4 lerpResult171 = lerp( lerpResult184 , ( tex2DNode199 * _CLOTH3COLOR ) , saturate( ( 1.0 - ( ( distance( temp_cast_6 , float3( 0,0,0 ) ) - 0.1 ) / max( 0.0 , 1E-05 ) ) ) ));
				float3 temp_cast_7 = (tex2DNode170.g).xxx;
				float4 lerpResult178 = lerp( lerpResult171 , ( tex2DNode199 * _CLOTH2COLOR ) , saturate( ( 1.0 - ( ( distance( temp_cast_7 , float3( 0,0,0 ) ) - 0.1 ) / max( 0.0 , 1E-05 ) ) ) ));
				float3 temp_cast_8 = (tex2DNode170.r).xxx;
				float4 lerpResult173 = lerp( lerpResult178 , ( tex2DNode199 * _CLOTH1COLOR ) , saturate( ( 1.0 - ( ( distance( temp_cast_8 , float3( 0,0,0 ) ) - 0.1 ) / max( 0.0 , 1E-05 ) ) ) ));
				float2 uv_Texture3 = input.ase_texcoord2.xy * _Texture3_ST.xy + _Texture3_ST.zw;
				float4 tex2DNode159 = tex2D( _Texture3, uv_Texture3 );
				float3 temp_cast_9 = (tex2DNode159.b).xxx;
				float temp_output_165_0 = saturate( ( 1.0 - ( ( distance( temp_cast_9 , float3( 0,0,0 ) ) - 0.1 ) / max( 0.0 , 1E-05 ) ) ) );
				float4 lerpResult160 = lerp( lerpResult173 , ( tex2DNode199 * _LEATHER3COLOR ) , temp_output_165_0);
				float3 temp_cast_10 = (tex2DNode159.g).xxx;
				float temp_output_158_0 = saturate( ( 1.0 - ( ( distance( temp_cast_10 , float3( 0,0,0 ) ) - 0.1 ) / max( 0.0 , 1E-05 ) ) ) );
				float4 lerpResult167 = lerp( lerpResult160 , ( tex2DNode199 * _LEATHER2COLOR ) , temp_output_158_0);
				float3 temp_cast_11 = (tex2DNode159.r).xxx;
				float temp_output_157_0 = saturate( ( 1.0 - ( ( distance( temp_cast_11 , float3( 0,0,0 ) ) - 0.1 ) / max( 0.0 , 1E-05 ) ) ) );
				float4 lerpResult162 = lerp( lerpResult167 , ( tex2DNode199 * _LEATHER1COLOR ) , temp_output_157_0);
				float2 uv_Texture6 = input.ase_texcoord2.xy * _Texture6_ST.xy + _Texture6_ST.zw;
				float4 tex2DNode121 = tex2D( _Texture6, uv_Texture6 );
				float3 temp_cast_12 = (tex2DNode121.b).xxx;
				float temp_output_117_0 = saturate( ( 1.0 - ( ( distance( temp_cast_12 , float3( 0,0,0 ) ) - 0.1 ) / max( 0.0 , 1E-05 ) ) ) );
				float4 lerpResult118 = lerp( lerpResult162 , ( tex2DNode199 * _METAL3COLOR ) , temp_output_117_0);
				float3 temp_cast_13 = (tex2DNode121.g).xxx;
				float temp_output_127_0 = saturate( ( 1.0 - ( ( distance( temp_cast_13 , float3( 0,0,0 ) ) - 0.1 ) / max( 0.0 , 1E-05 ) ) ) );
				float4 lerpResult128 = lerp( lerpResult118 , ( tex2DNode199 * _METAL2COLOR ) , temp_output_127_0);
				float3 temp_cast_14 = (tex2DNode121.r).xxx;
				float temp_output_123_0 = saturate( ( 1.0 - ( ( distance( temp_cast_14 , float3( 0,0,0 ) ) - 0.1 ) / max( 0.0 , 1E-05 ) ) ) );
				float4 lerpResult122 = lerp( lerpResult128 , ( tex2DNode199 * _METAL1COLOR ) , temp_output_123_0);
				float2 uv_Texture1 = input.ase_texcoord2.xy * _Texture1_ST.xy + _Texture1_ST.zw;
				float4 tex2DNode144 = tex2D( _Texture1, uv_Texture1 );
				float3 temp_cast_15 = (tex2DNode144.b).xxx;
				float temp_output_145_0 = saturate( ( 1.0 - ( ( distance( temp_cast_15 , float3( 0,0,0 ) ) - 0.1 ) / max( 0.0 , 1E-05 ) ) ) );
				float4 lerpResult148 = lerp( lerpResult122 , ( tex2DNode199 * _SCARSCOLOR ) , temp_output_145_0);
				float3 temp_cast_16 = (tex2DNode144.g).xxx;
				float temp_output_149_0 = saturate( ( 1.0 - ( ( distance( temp_cast_16 , float3( 0,0,0 ) ) - 0.1 ) / max( 0.0 , 1E-05 ) ) ) );
				float4 lerpResult151 = lerp( lerpResult148 , ( tex2DNode199 * _LIPSCOLOR ) , temp_output_149_0);
				float3 temp_cast_17 = (tex2DNode144.r).xxx;
				float temp_output_150_0 = saturate( ( 1.0 - ( ( distance( temp_cast_17 , float3( 0,0,0 ) ) - 0.1 ) / max( 0.0 , 1E-05 ) ) ) );
				float4 lerpResult153 = lerp( lerpResult151 , ( tex2DNode199 * _SCLERACOLOR ) , temp_output_150_0);
				float2 uv_Texture0 = input.ase_texcoord2.xy * _Texture0_ST.xy + _Texture0_ST.zw;
				float4 tex2DNode37 = tex2D( _Texture0, uv_Texture0 );
				float3 temp_cast_18 = (tex2DNode37.b).xxx;
				float temp_output_71_0 = saturate( ( 1.0 - ( ( distance( temp_cast_18 , float3( 0,0,0 ) ) - 0.1 ) / max( 0.0 , 1E-05 ) ) ) );
				float4 lerpResult73 = lerp( lerpResult153 , ( tex2DNode199 * _EYESCOLOR ) , temp_output_71_0);
				float3 temp_cast_19 = (tex2DNode37.g).xxx;
				float temp_output_67_0 = saturate( ( 1.0 - ( ( distance( temp_cast_19 , float3( 0,0,0 ) ) - 0.1 ) / max( 0.0 , 1E-05 ) ) ) );
				float4 lerpResult69 = lerp( lerpResult73 , ( tex2DNode199 * _HAIRCOLOR ) , temp_output_67_0);
				float3 temp_cast_20 = (tex2DNode37.r).xxx;
				float temp_output_63_0 = saturate( ( 1.0 - ( ( distance( temp_cast_20 , float3( 0,0,0 ) ) - 0.1 ) / max( 0.0 , 1E-05 ) ) ) );
				float4 lerpResult62 = lerp( lerpResult69 , ( tex2DNode199 * _SKINCOLOR ) , temp_output_63_0);
				float2 uv1_COATOFARMSMASK10 = input.ase_texcoord2.zw;
				float temp_output_9_0 = ( 1.0 - tex2D( _COATOFARMSMASK, uv1_COATOFARMSMASK10 ).a );
				float4 temp_cast_21 = (temp_output_9_0).xxxx;
				float4 temp_output_1_0_g93 = temp_cast_21;
				float4 color25 = IsGammaSpace() ? float4(0,0,0,0) : float4(0,0,0,0);
				float4 temp_output_2_0_g93 = color25;
				float temp_output_11_0_g93 = distance( temp_output_1_0_g93 , temp_output_2_0_g93 );
				float2 _Vector0 = float2(1.6,1);
				float4 lerpResult21_g93 = lerp( _COATOFARMSCOLOR , temp_output_1_0_g93 , saturate( ( ( temp_output_11_0_g93 - _Vector0.x ) / max( _Vector0.y , 1E-05 ) ) ));
				float4 lerpResult64 = lerp( lerpResult62 , lerpResult21_g93 , ( 1.0 - temp_output_9_0 ));
				

				float3 BaseColor = lerpResult64.rgb;
				float Alpha = 1;
				float AlphaClipThreshold = 0.5;

				half4 color = half4(BaseColor, Alpha );

				#ifdef _ALPHATEST_ON
					clip(Alpha - AlphaClipThreshold);
				#endif

				return color;
			}
			ENDHLSL
		}

		
		Pass
		{
			
			Name "DepthNormals"
			Tags { "LightMode"="DepthNormalsOnly" }

			ZWrite On
			Blend One Zero
			ZTest LEqual
			ZWrite On

			HLSLPROGRAM

			

			

			#pragma multi_compile _ALPHATEST_ON
			#define _NORMAL_DROPOFF_TS 1
			#pragma multi_compile_instancing
			#pragma multi_compile_fragment _ LOD_FADE_CROSSFADE
			#define ASE_FOG 1
			#define ASE_VERSION 19800
			#define ASE_SRP_VERSION 140011


			

			

			#pragma vertex vert
			#pragma fragment frag

			#if defined(_SPECULAR_SETUP) && defined(_ASE_LIGHTING_SIMPLE)
				#define _SPECULAR_COLOR 1
			#endif

			#define SHADERPASS SHADERPASS_DEPTHNORMALSONLY
			//#define SHADERPASS SHADERPASS_DEPTHNORMALS

			
            #if ASE_SRP_VERSION >=140007
			#include_with_pragmas "Packages/com.unity.render-pipelines.universal/ShaderLibrary/DOTS.hlsl"
			#endif
		

			
			#if ASE_SRP_VERSION >=140007
			#include_with_pragmas "Packages/com.unity.render-pipelines.universal/ShaderLibrary/RenderingLayers.hlsl"
			#endif
		

			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Color.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Texture.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Input.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/TextureStack.hlsl"

			
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/FoveatedRendering.hlsl"
           

			
            #if ASE_SRP_VERSION >=140009
			#include_with_pragmas "Packages/com.unity.render-pipelines.core/ShaderLibrary/FoveatedRenderingKeywords.hlsl"
			#endif
		

			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/ShaderGraphFunctions.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/ShaderPass.hlsl"

			#if defined(LOD_FADE_CROSSFADE)
            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/LODCrossFade.hlsl"
            #endif

			

			#if defined(ASE_EARLY_Z_DEPTH_OPTIMIZE) && (SHADER_TARGET >= 45)
				#define ASE_SV_DEPTH SV_DepthLessEqual
				#define ASE_SV_POSITION_QUALIFIERS linear noperspective centroid
			#else
				#define ASE_SV_DEPTH SV_Depth
				#define ASE_SV_POSITION_QUALIFIERS
			#endif

			struct Attributes
			{
				float4 positionOS : POSITION;
				float3 normalOS : NORMAL;
				float4 tangentOS : TANGENT;
				
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct PackedVaryings
			{
				ASE_SV_POSITION_QUALIFIERS float4 positionCS : SV_POSITION;
				float4 clipPosV : TEXCOORD0;
				float3 positionWS : TEXCOORD1;
				float3 normalWS : TEXCOORD2;
				float4 tangentWS : TEXCOORD3;
				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR) && defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					float4 shadowCoord : TEXCOORD4;
				#endif
				
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

			CBUFFER_START(UnityPerMaterial)
			float4 _Texture2_ST;
			float4 _COATOFARMSCOLOR;
			float4 _SKINCOLOR;
			float4 _HAIRCOLOR;
			float4 _Texture0_ST;
			float4 _SCLERACOLOR;
			float4 _LIPSCOLOR;
			float4 _Texture1_ST;
			float4 _SCARSCOLOR;
			float4 _METAL1COLOR;
			float4 _METAL2COLOR;
			float4 _Texture6_ST;
			float4 _METAL3COLOR;
			float4 _LEATHER1COLOR;
			float4 _LEATHER2COLOR;
			float4 _EYESCOLOR;
			float4 _LEATHER3COLOR;
			float4 _Texture3_ST;
			float4 _GEMS3COLOR;
			float4 _Texture7_ST;
			float4 _GEMS1COLOR;
			float4 _FEATHERS3COLOR;
			float4 _Texture4_ST;
			float4 _GEMS2COLOR;
			float4 _FEATHERS1COLOR;
			float4 _CLOTH3COLOR;
			float4 _Texture5_ST;
			float4 _CLOTH2COLOR;
			float4 _CLOTH1COLOR;
			float4 _FEATHERS2COLOR;
			float _HAIRSMOOTHNESS;
			float _METAL3SMOOTHNESS;
			float _EYESSMOOTHNESS;
			float _SCLERASMOOTHNESS;
			float _LIPSSMOOTHNESS;
			float _SCARSSMOOTHNESS;
			float _METAL1SMOOTHNESS;
			float _METAL2SMOOTHNESS;
			float _LEATHER1SMOOTHNESS;
			float _METAL1METALLIC;
			float _LEATHER3SMOOTHNESS;
			float _GEMS1SMOOTHNESS;
			float _GEMS2SMOOTHNESS;
			float _GEMS3SMOOTHNESS;
			float _SmoothnessOn;
			float _METAL2METALLIC;
			float _METAL3METALLIC;
			float _MetalicOn;
			float _SKINSMOOTHNESS;
			float _LEATHER2SMOOTHNESS;
			float _OCCLUSION;
			#ifdef ASE_TRANSMISSION
				float _TransmissionShadow;
			#endif
			#ifdef ASE_TRANSLUCENCY
				float _TransStrength;
				float _TransNormal;
				float _TransScattering;
				float _TransDirect;
				float _TransAmbient;
				float _TransShadow;
			#endif
			#ifdef ASE_TESSELLATION
				float _TessPhongStrength;
				float _TessValue;
				float _TessMin;
				float _TessMax;
				float _TessEdgeLength;
				float _TessMaxDisp;
			#endif
			CBUFFER_END

			#ifdef SCENEPICKINGPASS
				float4 _SelectionID;
			#endif

			#ifdef SCENESELECTIONPASS
				int _ObjectId;
				int _PassValue;
			#endif

			

			
			PackedVaryings VertexFunction( Attributes input  )
			{
				PackedVaryings output = (PackedVaryings)0;
				UNITY_SETUP_INSTANCE_ID(input);
				UNITY_TRANSFER_INSTANCE_ID(input, output);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(output);

				
				#ifdef ASE_ABSOLUTE_VERTEX_POS
					float3 defaultVertexValue = input.positionOS.xyz;
				#else
					float3 defaultVertexValue = float3(0, 0, 0);
				#endif

				float3 vertexValue = defaultVertexValue;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
					input.positionOS.xyz = vertexValue;
				#else
					input.positionOS.xyz += vertexValue;
				#endif

				input.normalOS = input.normalOS;
				input.tangentOS = input.tangentOS;

				VertexPositionInputs vertexInput = GetVertexPositionInputs( input.positionOS.xyz );

				float3 normalWS = TransformObjectToWorldNormal( input.normalOS );
				float4 tangentWS = float4( TransformObjectToWorldDir( input.tangentOS.xyz ), input.tangentOS.w );

				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR) && defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					output.shadowCoord = GetShadowCoord( vertexInput );
				#endif

				output.positionCS = vertexInput.positionCS;
				output.clipPosV = vertexInput.positionCS;
				output.positionWS = vertexInput.positionWS;
				output.normalWS = normalWS;
				output.tangentWS = tangentWS;
				return output;
			}

			#if defined(ASE_TESSELLATION)
			struct VertexControl
			{
				float4 positionOS : INTERNALTESSPOS;
				float3 normalOS : NORMAL;
				float4 tangentOS : TANGENT;
				
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl vert ( Attributes input )
			{
				VertexControl output;
				UNITY_SETUP_INSTANCE_ID(input);
				UNITY_TRANSFER_INSTANCE_ID(input, output);
				output.positionOS = input.positionOS;
				output.normalOS = input.normalOS;
				output.tangentOS = input.tangentOS;
				
				return output;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> input)
			{
				TessellationFactors output;
				float4 tf = 1;
				float tessValue = _TessValue; float tessMin = _TessMin; float tessMax = _TessMax;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(input[0].positionOS, input[1].positionOS, input[2].positionOS, tessValue, tessMin, tessMax, GetObjectToWorldMatrix(), _WorldSpaceCameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(input[0].positionOS, input[1].positionOS, input[2].positionOS, edgeLength, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(input[0].positionOS, input[1].positionOS, input[2].positionOS, edgeLength, tessMaxDisp, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams, unity_CameraWorldClipPlanes );
				#endif
				output.edge[0] = tf.x; output.edge[1] = tf.y; output.edge[2] = tf.z; output.inside = tf.w;
				return output;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
				return patch[id];
			}

			[domain("tri")]
			PackedVaryings DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				Attributes output = (Attributes) 0;
				output.positionOS = patch[0].positionOS * bary.x + patch[1].positionOS * bary.y + patch[2].positionOS * bary.z;
				output.normalOS = patch[0].normalOS * bary.x + patch[1].normalOS * bary.y + patch[2].normalOS * bary.z;
				output.tangentOS = patch[0].tangentOS * bary.x + patch[1].tangentOS * bary.y + patch[2].tangentOS * bary.z;
				
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = output.positionOS.xyz - patch[i].normalOS * (dot(output.positionOS.xyz, patch[i].normalOS) - dot(patch[i].positionOS.xyz, patch[i].normalOS));
				float phongStrength = _TessPhongStrength;
				output.positionOS.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * output.positionOS.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], output);
				return VertexFunction(output);
			}
			#else
			PackedVaryings vert ( Attributes input )
			{
				return VertexFunction( input );
			}
			#endif

			void frag(	PackedVaryings input
						, out half4 outNormalWS : SV_Target0
						#ifdef ASE_DEPTH_WRITE_ON
						,out float outputDepth : ASE_SV_DEPTH
						#endif
						#ifdef _WRITE_RENDERING_LAYERS
						, out float4 outRenderingLayers : SV_Target1
						#endif
						 )
			{
				UNITY_SETUP_INSTANCE_ID(input);
				UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX( input );

				float4 ShadowCoords = float4( 0, 0, 0, 0 );
				float3 WorldNormal = input.normalWS;
				float4 WorldTangent = input.tangentWS;
				float3 WorldPosition = input.positionWS;
				float4 ClipPos = input.clipPosV;
				float4 ScreenPos = ComputeScreenPos( input.clipPosV );

				#if defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR)
						ShadowCoords = input.shadowCoord;
					#elif defined(MAIN_LIGHT_CALCULATE_SHADOWS)
						ShadowCoords = TransformWorldToShadowCoord( WorldPosition );
					#endif
				#endif

				

				float3 Normal = float3(0, 0, 1);
				float Alpha = 1;
				float AlphaClipThreshold = 0.5;

				#ifdef ASE_DEPTH_WRITE_ON
					float DepthValue = input.positionCS.z;
				#endif

				#ifdef _ALPHATEST_ON
					clip(Alpha - AlphaClipThreshold);
				#endif

				#if defined(LOD_FADE_CROSSFADE)
					LODFadeCrossFade( input.positionCS );
				#endif

				#ifdef ASE_DEPTH_WRITE_ON
					outputDepth = DepthValue;
				#endif

				#if defined(_GBUFFER_NORMALS_OCT)
					float2 octNormalWS = PackNormalOctQuadEncode(WorldNormal);
					float2 remappedOctNormalWS = saturate(octNormalWS * 0.5 + 0.5);
					half3 packedNormalWS = PackFloat2To888(remappedOctNormalWS);
					outNormalWS = half4(packedNormalWS, 0.0);
				#else
					#if defined(_NORMALMAP)
						#if _NORMAL_DROPOFF_TS
							float crossSign = (WorldTangent.w > 0.0 ? 1.0 : -1.0) * GetOddNegativeScale();
							float3 bitangent = crossSign * cross(WorldNormal.xyz, WorldTangent.xyz);
							float3 normalWS = TransformTangentToWorld(Normal, half3x3(WorldTangent.xyz, bitangent, WorldNormal.xyz));
						#elif _NORMAL_DROPOFF_OS
							float3 normalWS = TransformObjectToWorldNormal(Normal);
						#elif _NORMAL_DROPOFF_WS
							float3 normalWS = Normal;
						#endif
					#else
						float3 normalWS = WorldNormal;
					#endif
					outNormalWS = half4(NormalizeNormalPerPixel(normalWS), 0.0);
				#endif

				#ifdef _WRITE_RENDERING_LAYERS
					uint renderingLayers = GetMeshRenderingLayer();
					outRenderingLayers = float4(EncodeMeshRenderingLayer(renderingLayers), 0, 0, 0);
				#endif
			}
			ENDHLSL
		}

		
		Pass
		{
			
			Name "GBuffer"
			Tags { "LightMode"="UniversalGBuffer" }

			Blend One Zero, One Zero
			ZWrite On
			ZTest LEqual
			Offset 0 , 0
			ColorMask RGBA
			

			HLSLPROGRAM

			

			#pragma multi_compile_fragment _ALPHATEST_ON
			#define _NORMAL_DROPOFF_TS 1
			#pragma shader_feature_local _RECEIVE_SHADOWS_OFF
			#pragma multi_compile_instancing
			#pragma instancing_options renderinglayer
			#pragma multi_compile_fragment _ LOD_FADE_CROSSFADE
			#pragma multi_compile_fog
			#define ASE_FOG 1
			#define ASE_VERSION 19800
			#define ASE_SRP_VERSION 140011


			

			#pragma multi_compile _ _MAIN_LIGHT_SHADOWS _MAIN_LIGHT_SHADOWS_CASCADE _MAIN_LIGHT_SHADOWS_SCREEN
			#pragma multi_compile_fragment _ _REFLECTION_PROBE_BLENDING
			#pragma multi_compile_fragment _ _REFLECTION_PROBE_BOX_PROJECTION

			

			
			#pragma multi_compile_fragment _ _SHADOWS_SOFT _SHADOWS_SOFT_LOW _SHADOWS_SOFT_MEDIUM _SHADOWS_SOFT_HIGH
           

			#pragma multi_compile_fragment _ _DBUFFER_MRT1 _DBUFFER_MRT2 _DBUFFER_MRT3
			#pragma multi_compile_fragment _ _GBUFFER_NORMALS_OCT
			#pragma multi_compile_fragment _ _RENDER_PASS_ENABLED
      
			

			#pragma multi_compile _ LIGHTMAP_SHADOW_MIXING
			#pragma multi_compile _ _MIXED_LIGHTING_SUBTRACTIVE
			#pragma multi_compile _ SHADOWS_SHADOWMASK
			#pragma multi_compile _ DIRLIGHTMAP_COMBINED
			#pragma multi_compile _ LIGHTMAP_ON
			#pragma multi_compile _ DYNAMICLIGHTMAP_ON

			#pragma vertex vert
			#pragma fragment frag

			#if defined(_SPECULAR_SETUP) && defined(_ASE_LIGHTING_SIMPLE)
				#define _SPECULAR_COLOR 1
			#endif

			#define SHADERPASS SHADERPASS_GBUFFER

			
            #if ASE_SRP_VERSION >=140007
			#include_with_pragmas "Packages/com.unity.render-pipelines.universal/ShaderLibrary/DOTS.hlsl"
			#endif
		

			
			#if ASE_SRP_VERSION >=140007
			#include_with_pragmas "Packages/com.unity.render-pipelines.universal/ShaderLibrary/RenderingLayers.hlsl"
			#endif
		

			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Color.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Texture.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Input.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/TextureStack.hlsl"

			
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/FoveatedRendering.hlsl"
           

			
            #if ASE_SRP_VERSION >=140009
			#include_with_pragmas "Packages/com.unity.render-pipelines.core/ShaderLibrary/FoveatedRenderingKeywords.hlsl"
			#endif
		

			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Shadows.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/ShaderGraphFunctions.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/DBuffer.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/ShaderPass.hlsl"

			#if defined(LOD_FADE_CROSSFADE)
            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/LODCrossFade.hlsl"
            #endif
			
			#if defined(UNITY_INSTANCING_ENABLED) && defined(_TERRAIN_INSTANCED_PERPIXEL_NORMAL)
				#define ENABLE_TERRAIN_PERPIXEL_NORMAL
			#endif

			

			#if defined(ASE_EARLY_Z_DEPTH_OPTIMIZE) && (SHADER_TARGET >= 45)
				#define ASE_SV_DEPTH SV_DepthLessEqual
				#define ASE_SV_POSITION_QUALIFIERS linear noperspective centroid
			#else
				#define ASE_SV_DEPTH SV_Depth
				#define ASE_SV_POSITION_QUALIFIERS
			#endif

			struct Attributes
			{
				float4 positionOS : POSITION;
				float3 normalOS : NORMAL;
				float4 tangentOS : TANGENT;
				float4 texcoord : TEXCOORD0;
				float4 texcoord1 : TEXCOORD1;
				float4 texcoord2 : TEXCOORD2;
				
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct PackedVaryings
			{
				ASE_SV_POSITION_QUALIFIERS float4 positionCS : SV_POSITION;
				float4 clipPosV : TEXCOORD0;
				float4 lightmapUVOrVertexSH : TEXCOORD1;
				#if defined(ASE_FOG) || defined(_ADDITIONAL_LIGHTS_VERTEX)
					half4 fogFactorAndVertexLight : TEXCOORD2;
				#endif
				float4 tSpace0 : TEXCOORD3;
				float4 tSpace1 : TEXCOORD4;
				float4 tSpace2 : TEXCOORD5;
				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR)
				float4 shadowCoord : TEXCOORD6;
				#endif
				#if defined(DYNAMICLIGHTMAP_ON)
				float2 dynamicLightmapUV : TEXCOORD7;
				#endif
				float4 ase_texcoord8 : TEXCOORD8;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

			CBUFFER_START(UnityPerMaterial)
			float4 _Texture2_ST;
			float4 _COATOFARMSCOLOR;
			float4 _SKINCOLOR;
			float4 _HAIRCOLOR;
			float4 _Texture0_ST;
			float4 _SCLERACOLOR;
			float4 _LIPSCOLOR;
			float4 _Texture1_ST;
			float4 _SCARSCOLOR;
			float4 _METAL1COLOR;
			float4 _METAL2COLOR;
			float4 _Texture6_ST;
			float4 _METAL3COLOR;
			float4 _LEATHER1COLOR;
			float4 _LEATHER2COLOR;
			float4 _EYESCOLOR;
			float4 _LEATHER3COLOR;
			float4 _Texture3_ST;
			float4 _GEMS3COLOR;
			float4 _Texture7_ST;
			float4 _GEMS1COLOR;
			float4 _FEATHERS3COLOR;
			float4 _Texture4_ST;
			float4 _GEMS2COLOR;
			float4 _FEATHERS1COLOR;
			float4 _CLOTH3COLOR;
			float4 _Texture5_ST;
			float4 _CLOTH2COLOR;
			float4 _CLOTH1COLOR;
			float4 _FEATHERS2COLOR;
			float _HAIRSMOOTHNESS;
			float _METAL3SMOOTHNESS;
			float _EYESSMOOTHNESS;
			float _SCLERASMOOTHNESS;
			float _LIPSSMOOTHNESS;
			float _SCARSSMOOTHNESS;
			float _METAL1SMOOTHNESS;
			float _METAL2SMOOTHNESS;
			float _LEATHER1SMOOTHNESS;
			float _METAL1METALLIC;
			float _LEATHER3SMOOTHNESS;
			float _GEMS1SMOOTHNESS;
			float _GEMS2SMOOTHNESS;
			float _GEMS3SMOOTHNESS;
			float _SmoothnessOn;
			float _METAL2METALLIC;
			float _METAL3METALLIC;
			float _MetalicOn;
			float _SKINSMOOTHNESS;
			float _LEATHER2SMOOTHNESS;
			float _OCCLUSION;
			#ifdef ASE_TRANSMISSION
				float _TransmissionShadow;
			#endif
			#ifdef ASE_TRANSLUCENCY
				float _TransStrength;
				float _TransNormal;
				float _TransScattering;
				float _TransDirect;
				float _TransAmbient;
				float _TransShadow;
			#endif
			#ifdef ASE_TESSELLATION
				float _TessPhongStrength;
				float _TessValue;
				float _TessMin;
				float _TessMax;
				float _TessEdgeLength;
				float _TessMaxDisp;
			#endif
			CBUFFER_END

			#ifdef SCENEPICKINGPASS
				float4 _SelectionID;
			#endif

			#ifdef SCENESELECTIONPASS
				int _ObjectId;
				int _PassValue;
			#endif

			sampler2D _Texture2;
			sampler2D _Texture7;
			sampler2D _Texture4;
			sampler2D _Texture5;
			sampler2D _Texture3;
			sampler2D _Texture6;
			sampler2D _Texture1;
			sampler2D _Texture0;
			sampler2D _COATOFARMSMASK;


			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/UnityGBuffer.hlsl"

			
			PackedVaryings VertexFunction( Attributes input  )
			{
				PackedVaryings output = (PackedVaryings)0;
				UNITY_SETUP_INSTANCE_ID(input);
				UNITY_TRANSFER_INSTANCE_ID(input, output);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(output);

				output.ase_texcoord8.xy = input.texcoord.xy;
				output.ase_texcoord8.zw = input.texcoord1.xy;
				#ifdef ASE_ABSOLUTE_VERTEX_POS
					float3 defaultVertexValue = input.positionOS.xyz;
				#else
					float3 defaultVertexValue = float3(0, 0, 0);
				#endif

				float3 vertexValue = defaultVertexValue;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
					input.positionOS.xyz = vertexValue;
				#else
					input.positionOS.xyz += vertexValue;
				#endif

				input.normalOS = input.normalOS;
				input.tangentOS = input.tangentOS;

				VertexPositionInputs vertexInput = GetVertexPositionInputs( input.positionOS.xyz );
				VertexNormalInputs normalInput = GetVertexNormalInputs( input.normalOS, input.tangentOS );

				output.tSpace0 = float4( normalInput.normalWS, vertexInput.positionWS.x);
				output.tSpace1 = float4( normalInput.tangentWS, vertexInput.positionWS.y);
				output.tSpace2 = float4( normalInput.bitangentWS, vertexInput.positionWS.z);

				#if defined(LIGHTMAP_ON)
					OUTPUT_LIGHTMAP_UV(input.texcoord1, unity_LightmapST, output.lightmapUVOrVertexSH.xy);
				#endif

				#if defined(DYNAMICLIGHTMAP_ON)
					output.dynamicLightmapUV.xy = input.texcoord2.xy * unity_DynamicLightmapST.xy + unity_DynamicLightmapST.zw;
				#endif

				#if !defined(LIGHTMAP_ON)
					OUTPUT_SH(normalInput.normalWS.xyz, output.lightmapUVOrVertexSH.xyz);
				#endif

				#if defined(ENABLE_TERRAIN_PERPIXEL_NORMAL)
					output.lightmapUVOrVertexSH.zw = input.texcoord.xy;
					output.lightmapUVOrVertexSH.xy = input.texcoord.xy * unity_LightmapST.xy + unity_LightmapST.zw;
				#endif

				#if defined(ASE_FOG) || defined(_ADDITIONAL_LIGHTS_VERTEX)
					output.fogFactorAndVertexLight = 0;
					#if defined(ASE_FOG) && !defined(_FOG_FRAGMENT)
						// @diogo: no fog applied in GBuffer
					#endif
					#ifdef _ADDITIONAL_LIGHTS_VERTEX
						half3 vertexLight = VertexLighting( vertexInput.positionWS, normalInput.normalWS );
						output.fogFactorAndVertexLight.yzw = vertexLight;
					#endif
				#endif

				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR)
					output.shadowCoord = GetShadowCoord( vertexInput );
				#endif

				output.positionCS = vertexInput.positionCS;
				output.clipPosV = vertexInput.positionCS;
				return output;
			}

			#if defined(ASE_TESSELLATION)
			struct VertexControl
			{
				float4 positionOS : INTERNALTESSPOS;
				float3 normalOS : NORMAL;
				float4 tangentOS : TANGENT;
				float4 texcoord : TEXCOORD0;
				float4 texcoord1 : TEXCOORD1;
				float4 texcoord2 : TEXCOORD2;
				
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl vert ( Attributes input )
			{
				VertexControl output;
				UNITY_SETUP_INSTANCE_ID(input);
				UNITY_TRANSFER_INSTANCE_ID(input, output);
				output.positionOS = input.positionOS;
				output.normalOS = input.normalOS;
				output.tangentOS = input.tangentOS;
				output.texcoord = input.texcoord;
				output.texcoord1 = input.texcoord1;
				output.texcoord2 = input.texcoord2;
				
				return output;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> input)
			{
				TessellationFactors output;
				float4 tf = 1;
				float tessValue = _TessValue; float tessMin = _TessMin; float tessMax = _TessMax;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(input[0].positionOS, input[1].positionOS, input[2].positionOS, tessValue, tessMin, tessMax, GetObjectToWorldMatrix(), _WorldSpaceCameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(input[0].positionOS, input[1].positionOS, input[2].positionOS, edgeLength, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(input[0].positionOS, input[1].positionOS, input[2].positionOS, edgeLength, tessMaxDisp, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams, unity_CameraWorldClipPlanes );
				#endif
				output.edge[0] = tf.x; output.edge[1] = tf.y; output.edge[2] = tf.z; output.inside = tf.w;
				return output;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
				return patch[id];
			}

			[domain("tri")]
			PackedVaryings DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				Attributes output = (Attributes) 0;
				output.positionOS = patch[0].positionOS * bary.x + patch[1].positionOS * bary.y + patch[2].positionOS * bary.z;
				output.normalOS = patch[0].normalOS * bary.x + patch[1].normalOS * bary.y + patch[2].normalOS * bary.z;
				output.tangentOS = patch[0].tangentOS * bary.x + patch[1].tangentOS * bary.y + patch[2].tangentOS * bary.z;
				output.texcoord = patch[0].texcoord * bary.x + patch[1].texcoord * bary.y + patch[2].texcoord * bary.z;
				output.texcoord1 = patch[0].texcoord1 * bary.x + patch[1].texcoord1 * bary.y + patch[2].texcoord1 * bary.z;
				output.texcoord2 = patch[0].texcoord2 * bary.x + patch[1].texcoord2 * bary.y + patch[2].texcoord2 * bary.z;
				
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = output.positionOS.xyz - patch[i].normalOS * (dot(output.positionOS.xyz, patch[i].normalOS) - dot(patch[i].positionOS.xyz, patch[i].normalOS));
				float phongStrength = _TessPhongStrength;
				output.positionOS.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * output.positionOS.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], output);
				return VertexFunction(output);
			}
			#else
			PackedVaryings vert ( Attributes input )
			{
				return VertexFunction( input );
			}
			#endif

			FragmentOutput frag ( PackedVaryings input
								#ifdef ASE_DEPTH_WRITE_ON
								,out float outputDepth : ASE_SV_DEPTH
								#endif
								 )
			{
				UNITY_SETUP_INSTANCE_ID(input);
				UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX(input);

				#if defined(LOD_FADE_CROSSFADE)
					LODFadeCrossFade( input.positionCS );
				#endif

				#if defined(ENABLE_TERRAIN_PERPIXEL_NORMAL)
					float2 sampleCoords = (input.lightmapUVOrVertexSH.zw / _TerrainHeightmapRecipSize.zw + 0.5f) * _TerrainHeightmapRecipSize.xy;
					float3 WorldNormal = TransformObjectToWorldNormal(normalize(SAMPLE_TEXTURE2D(_TerrainNormalmapTexture, sampler_TerrainNormalmapTexture, sampleCoords).rgb * 2 - 1));
					float3 WorldTangent = -cross(GetObjectToWorldMatrix()._13_23_33, WorldNormal);
					float3 WorldBiTangent = cross(WorldNormal, -WorldTangent);
				#else
					float3 WorldNormal = normalize( input.tSpace0.xyz );
					float3 WorldTangent = input.tSpace1.xyz;
					float3 WorldBiTangent = input.tSpace2.xyz;
				#endif

				float3 WorldPosition = float3(input.tSpace0.w,input.tSpace1.w,input.tSpace2.w);
				float3 WorldViewDirection = _WorldSpaceCameraPos.xyz  - WorldPosition;
				float4 ShadowCoords = float4( 0, 0, 0, 0 );
				float4 ClipPos = input.clipPosV;
				float4 ScreenPos = ComputeScreenPos( input.clipPosV );

				float2 NormalizedScreenSpaceUV = GetNormalizedScreenSpaceUV(input.positionCS);

				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR)
					ShadowCoords = input.shadowCoord;
				#elif defined(MAIN_LIGHT_CALCULATE_SHADOWS)
					ShadowCoords = TransformWorldToShadowCoord( WorldPosition );
				#else
					ShadowCoords = float4(0, 0, 0, 0);
				#endif

				WorldViewDirection = SafeNormalize( WorldViewDirection );

				float2 uv_Texture2 = input.ase_texcoord8.xy * _Texture2_ST.xy + _Texture2_ST.zw;
				float4 tex2DNode199 = tex2D( _Texture2, uv_Texture2 );
				float2 uv_Texture7 = input.ase_texcoord8.xy * _Texture7_ST.xy + _Texture7_ST.zw;
				float4 tex2DNode222 = tex2D( _Texture7, uv_Texture7 );
				float3 temp_cast_0 = (tex2DNode222.b).xxx;
				float temp_output_215_0 = saturate( ( 1.0 - ( ( distance( temp_cast_0 , float3( 0,0,0 ) ) - 0.1 ) / max( 0.0 , 1E-05 ) ) ) );
				float4 lerpResult219 = lerp( float4( 0,0,0,0 ) , ( tex2DNode199 * _GEMS3COLOR ) , temp_output_215_0);
				float3 temp_cast_1 = (tex2DNode222.g).xxx;
				float temp_output_216_0 = saturate( ( 1.0 - ( ( distance( temp_cast_1 , float3( 0,0,0 ) ) - 0.1 ) / max( 0.0 , 1E-05 ) ) ) );
				float4 lerpResult214 = lerp( lerpResult219 , ( tex2DNode199 * _GEMS2COLOR ) , temp_output_216_0);
				float3 temp_cast_2 = (tex2DNode222.r).xxx;
				float temp_output_213_0 = saturate( ( 1.0 - ( ( distance( temp_cast_2 , float3( 0,0,0 ) ) - 0.1 ) / max( 0.0 , 1E-05 ) ) ) );
				float4 lerpResult217 = lerp( lerpResult214 , ( tex2DNode199 * _GEMS1COLOR ) , temp_output_213_0);
				float2 uv_Texture4 = input.ase_texcoord8.xy * _Texture4_ST.xy + _Texture4_ST.zw;
				float4 tex2DNode181 = tex2D( _Texture4, uv_Texture4 );
				float3 temp_cast_3 = (tex2DNode181.b).xxx;
				float4 lerpResult182 = lerp( lerpResult217 , ( tex2DNode199 * _FEATHERS3COLOR ) , saturate( ( 1.0 - ( ( distance( temp_cast_3 , float3( 0,0,0 ) ) - 0.1 ) / max( 0.0 , 1E-05 ) ) ) ));
				float3 temp_cast_4 = (tex2DNode181.g).xxx;
				float4 lerpResult189 = lerp( lerpResult182 , ( tex2DNode199 * _FEATHERS2COLOR ) , saturate( ( 1.0 - ( ( distance( temp_cast_4 , float3( 0,0,0 ) ) - 0.1 ) / max( 0.0 , 1E-05 ) ) ) ));
				float3 temp_cast_5 = (tex2DNode181.r).xxx;
				float4 lerpResult184 = lerp( lerpResult189 , ( tex2DNode199 * _FEATHERS1COLOR ) , saturate( ( 1.0 - ( ( distance( temp_cast_5 , float3( 0,0,0 ) ) - 0.1 ) / max( 0.0 , 1E-05 ) ) ) ));
				float2 uv_Texture5 = input.ase_texcoord8.xy * _Texture5_ST.xy + _Texture5_ST.zw;
				float4 tex2DNode170 = tex2D( _Texture5, uv_Texture5 );
				float3 temp_cast_6 = (tex2DNode170.b).xxx;
				float4 lerpResult171 = lerp( lerpResult184 , ( tex2DNode199 * _CLOTH3COLOR ) , saturate( ( 1.0 - ( ( distance( temp_cast_6 , float3( 0,0,0 ) ) - 0.1 ) / max( 0.0 , 1E-05 ) ) ) ));
				float3 temp_cast_7 = (tex2DNode170.g).xxx;
				float4 lerpResult178 = lerp( lerpResult171 , ( tex2DNode199 * _CLOTH2COLOR ) , saturate( ( 1.0 - ( ( distance( temp_cast_7 , float3( 0,0,0 ) ) - 0.1 ) / max( 0.0 , 1E-05 ) ) ) ));
				float3 temp_cast_8 = (tex2DNode170.r).xxx;
				float4 lerpResult173 = lerp( lerpResult178 , ( tex2DNode199 * _CLOTH1COLOR ) , saturate( ( 1.0 - ( ( distance( temp_cast_8 , float3( 0,0,0 ) ) - 0.1 ) / max( 0.0 , 1E-05 ) ) ) ));
				float2 uv_Texture3 = input.ase_texcoord8.xy * _Texture3_ST.xy + _Texture3_ST.zw;
				float4 tex2DNode159 = tex2D( _Texture3, uv_Texture3 );
				float3 temp_cast_9 = (tex2DNode159.b).xxx;
				float temp_output_165_0 = saturate( ( 1.0 - ( ( distance( temp_cast_9 , float3( 0,0,0 ) ) - 0.1 ) / max( 0.0 , 1E-05 ) ) ) );
				float4 lerpResult160 = lerp( lerpResult173 , ( tex2DNode199 * _LEATHER3COLOR ) , temp_output_165_0);
				float3 temp_cast_10 = (tex2DNode159.g).xxx;
				float temp_output_158_0 = saturate( ( 1.0 - ( ( distance( temp_cast_10 , float3( 0,0,0 ) ) - 0.1 ) / max( 0.0 , 1E-05 ) ) ) );
				float4 lerpResult167 = lerp( lerpResult160 , ( tex2DNode199 * _LEATHER2COLOR ) , temp_output_158_0);
				float3 temp_cast_11 = (tex2DNode159.r).xxx;
				float temp_output_157_0 = saturate( ( 1.0 - ( ( distance( temp_cast_11 , float3( 0,0,0 ) ) - 0.1 ) / max( 0.0 , 1E-05 ) ) ) );
				float4 lerpResult162 = lerp( lerpResult167 , ( tex2DNode199 * _LEATHER1COLOR ) , temp_output_157_0);
				float2 uv_Texture6 = input.ase_texcoord8.xy * _Texture6_ST.xy + _Texture6_ST.zw;
				float4 tex2DNode121 = tex2D( _Texture6, uv_Texture6 );
				float3 temp_cast_12 = (tex2DNode121.b).xxx;
				float temp_output_117_0 = saturate( ( 1.0 - ( ( distance( temp_cast_12 , float3( 0,0,0 ) ) - 0.1 ) / max( 0.0 , 1E-05 ) ) ) );
				float4 lerpResult118 = lerp( lerpResult162 , ( tex2DNode199 * _METAL3COLOR ) , temp_output_117_0);
				float3 temp_cast_13 = (tex2DNode121.g).xxx;
				float temp_output_127_0 = saturate( ( 1.0 - ( ( distance( temp_cast_13 , float3( 0,0,0 ) ) - 0.1 ) / max( 0.0 , 1E-05 ) ) ) );
				float4 lerpResult128 = lerp( lerpResult118 , ( tex2DNode199 * _METAL2COLOR ) , temp_output_127_0);
				float3 temp_cast_14 = (tex2DNode121.r).xxx;
				float temp_output_123_0 = saturate( ( 1.0 - ( ( distance( temp_cast_14 , float3( 0,0,0 ) ) - 0.1 ) / max( 0.0 , 1E-05 ) ) ) );
				float4 lerpResult122 = lerp( lerpResult128 , ( tex2DNode199 * _METAL1COLOR ) , temp_output_123_0);
				float2 uv_Texture1 = input.ase_texcoord8.xy * _Texture1_ST.xy + _Texture1_ST.zw;
				float4 tex2DNode144 = tex2D( _Texture1, uv_Texture1 );
				float3 temp_cast_15 = (tex2DNode144.b).xxx;
				float temp_output_145_0 = saturate( ( 1.0 - ( ( distance( temp_cast_15 , float3( 0,0,0 ) ) - 0.1 ) / max( 0.0 , 1E-05 ) ) ) );
				float4 lerpResult148 = lerp( lerpResult122 , ( tex2DNode199 * _SCARSCOLOR ) , temp_output_145_0);
				float3 temp_cast_16 = (tex2DNode144.g).xxx;
				float temp_output_149_0 = saturate( ( 1.0 - ( ( distance( temp_cast_16 , float3( 0,0,0 ) ) - 0.1 ) / max( 0.0 , 1E-05 ) ) ) );
				float4 lerpResult151 = lerp( lerpResult148 , ( tex2DNode199 * _LIPSCOLOR ) , temp_output_149_0);
				float3 temp_cast_17 = (tex2DNode144.r).xxx;
				float temp_output_150_0 = saturate( ( 1.0 - ( ( distance( temp_cast_17 , float3( 0,0,0 ) ) - 0.1 ) / max( 0.0 , 1E-05 ) ) ) );
				float4 lerpResult153 = lerp( lerpResult151 , ( tex2DNode199 * _SCLERACOLOR ) , temp_output_150_0);
				float2 uv_Texture0 = input.ase_texcoord8.xy * _Texture0_ST.xy + _Texture0_ST.zw;
				float4 tex2DNode37 = tex2D( _Texture0, uv_Texture0 );
				float3 temp_cast_18 = (tex2DNode37.b).xxx;
				float temp_output_71_0 = saturate( ( 1.0 - ( ( distance( temp_cast_18 , float3( 0,0,0 ) ) - 0.1 ) / max( 0.0 , 1E-05 ) ) ) );
				float4 lerpResult73 = lerp( lerpResult153 , ( tex2DNode199 * _EYESCOLOR ) , temp_output_71_0);
				float3 temp_cast_19 = (tex2DNode37.g).xxx;
				float temp_output_67_0 = saturate( ( 1.0 - ( ( distance( temp_cast_19 , float3( 0,0,0 ) ) - 0.1 ) / max( 0.0 , 1E-05 ) ) ) );
				float4 lerpResult69 = lerp( lerpResult73 , ( tex2DNode199 * _HAIRCOLOR ) , temp_output_67_0);
				float3 temp_cast_20 = (tex2DNode37.r).xxx;
				float temp_output_63_0 = saturate( ( 1.0 - ( ( distance( temp_cast_20 , float3( 0,0,0 ) ) - 0.1 ) / max( 0.0 , 1E-05 ) ) ) );
				float4 lerpResult62 = lerp( lerpResult69 , ( tex2DNode199 * _SKINCOLOR ) , temp_output_63_0);
				float2 uv1_COATOFARMSMASK10 = input.ase_texcoord8.zw;
				float temp_output_9_0 = ( 1.0 - tex2D( _COATOFARMSMASK, uv1_COATOFARMSMASK10 ).a );
				float4 temp_cast_21 = (temp_output_9_0).xxxx;
				float4 temp_output_1_0_g93 = temp_cast_21;
				float4 color25 = IsGammaSpace() ? float4(0,0,0,0) : float4(0,0,0,0);
				float4 temp_output_2_0_g93 = color25;
				float temp_output_11_0_g93 = distance( temp_output_1_0_g93 , temp_output_2_0_g93 );
				float2 _Vector0 = float2(1.6,1);
				float4 lerpResult21_g93 = lerp( _COATOFARMSCOLOR , temp_output_1_0_g93 , saturate( ( ( temp_output_11_0_g93 - _Vector0.x ) / max( _Vector0.y , 1E-05 ) ) ));
				float4 lerpResult64 = lerp( lerpResult62 , lerpResult21_g93 , ( 1.0 - temp_output_9_0 ));
				
				float lerpResult315 = lerp( 0.0 , _METAL3METALLIC , temp_output_117_0);
				float lerpResult319 = lerp( lerpResult315 , _METAL2METALLIC , temp_output_127_0);
				float lerpResult316 = lerp( lerpResult319 , _METAL1METALLIC , temp_output_123_0);
				
				float lerpResult342 = lerp( 0.0 , _GEMS3SMOOTHNESS , temp_output_215_0);
				float lerpResult338 = lerp( lerpResult342 , _GEMS2SMOOTHNESS , temp_output_216_0);
				float lerpResult340 = lerp( lerpResult338 , _GEMS1SMOOTHNESS , temp_output_213_0);
				float lerpResult336 = lerp( lerpResult340 , _LEATHER3SMOOTHNESS , temp_output_165_0);
				float lerpResult332 = lerp( lerpResult336 , _LEATHER2SMOOTHNESS , temp_output_158_0);
				float lerpResult334 = lerp( lerpResult332 , _LEATHER1SMOOTHNESS , temp_output_157_0);
				float lerpResult327 = lerp( lerpResult334 , _METAL3SMOOTHNESS , temp_output_117_0);
				float lerpResult331 = lerp( lerpResult327 , _METAL2SMOOTHNESS , temp_output_127_0);
				float lerpResult328 = lerp( lerpResult331 , _METAL1SMOOTHNESS , temp_output_123_0);
				float lerpResult321 = lerp( lerpResult328 , _SCARSSMOOTHNESS , temp_output_145_0);
				float lerpResult325 = lerp( lerpResult321 , _LIPSSMOOTHNESS , temp_output_149_0);
				float lerpResult322 = lerp( lerpResult325 , _SCLERASMOOTHNESS , temp_output_150_0);
				float lerpResult306 = lerp( lerpResult322 , _EYESSMOOTHNESS , temp_output_71_0);
				float lerpResult304 = lerp( lerpResult306 , _HAIRSMOOTHNESS , temp_output_67_0);
				float lerpResult302 = lerp( lerpResult304 , _SKINSMOOTHNESS , temp_output_63_0);
				

				float3 BaseColor = lerpResult64.rgb;
				float3 Normal = float3(0, 0, 1);
				float3 Emission = 0;
				float3 Specular = 0.5;
				float Metallic = (( _MetalicOn )?( lerpResult316 ):( 0.0 ));
				float Smoothness = (( _SmoothnessOn )?( lerpResult302 ):( 0.0 ));
				float Occlusion = (1.0 + (_OCCLUSION - 0.0) * (0.5 - 1.0) / (1.0 - 0.0));
				float Alpha = 1;
				float AlphaClipThreshold = 0.5;
				float AlphaClipThresholdShadow = 0.5;
				float3 BakedGI = 0;
				float3 RefractionColor = 1;
				float RefractionIndex = 1;
				float3 Transmission = 1;
				float3 Translucency = 1;

				#ifdef ASE_DEPTH_WRITE_ON
					float DepthValue = input.positionCS.z;
				#endif

				#ifdef _ALPHATEST_ON
					clip(Alpha - AlphaClipThreshold);
				#endif

				InputData inputData = (InputData)0;
				inputData.positionWS = WorldPosition;
				inputData.positionCS = input.positionCS;
				inputData.shadowCoord = ShadowCoords;

				#ifdef _NORMALMAP
					#if _NORMAL_DROPOFF_TS
						inputData.normalWS = TransformTangentToWorld(Normal, half3x3( WorldTangent, WorldBiTangent, WorldNormal ));
					#elif _NORMAL_DROPOFF_OS
						inputData.normalWS = TransformObjectToWorldNormal(Normal);
					#elif _NORMAL_DROPOFF_WS
						inputData.normalWS = Normal;
					#endif
				#else
					inputData.normalWS = WorldNormal;
				#endif

				inputData.normalWS = NormalizeNormalPerPixel(inputData.normalWS);
				inputData.viewDirectionWS = SafeNormalize( WorldViewDirection );

				#ifdef ASE_FOG
					// @diogo: no fog applied in GBuffer
				#endif
				#ifdef _ADDITIONAL_LIGHTS_VERTEX
					inputData.vertexLighting = input.fogFactorAndVertexLight.yzw;
				#endif

				#if defined(ENABLE_TERRAIN_PERPIXEL_NORMAL)
					float3 SH = SampleSH(inputData.normalWS.xyz);
				#else
					float3 SH = input.lightmapUVOrVertexSH.xyz;
				#endif

				#ifdef ASE_BAKEDGI
					inputData.bakedGI = BakedGI;
				#else
					#if defined(DYNAMICLIGHTMAP_ON)
						inputData.bakedGI = SAMPLE_GI( input.lightmapUVOrVertexSH.xy, input.dynamicLightmapUV.xy, SH, inputData.normalWS);
					#else
						inputData.bakedGI = SAMPLE_GI( input.lightmapUVOrVertexSH.xy, SH, inputData.normalWS );
					#endif
				#endif

				inputData.normalizedScreenSpaceUV = NormalizedScreenSpaceUV;
				inputData.shadowMask = SAMPLE_SHADOWMASK(input.lightmapUVOrVertexSH.xy);

				#if defined(DEBUG_DISPLAY)
					#if defined(DYNAMICLIGHTMAP_ON)
						inputData.dynamicLightmapUV = input.dynamicLightmapUV.xy;
						#endif
					#if defined(LIGHTMAP_ON)
						inputData.staticLightmapUV = input.lightmapUVOrVertexSH.xy;
					#else
						inputData.vertexSH = SH;
					#endif
				#endif

				#ifdef _DBUFFER
					ApplyDecal(input.positionCS,
						BaseColor,
						Specular,
						inputData.normalWS,
						Metallic,
						Occlusion,
						Smoothness);
				#endif

				BRDFData brdfData;
				InitializeBRDFData
				(BaseColor, Metallic, Specular, Smoothness, Alpha, brdfData);

				Light mainLight = GetMainLight(inputData.shadowCoord, inputData.positionWS, inputData.shadowMask);
				half4 color;
				MixRealtimeAndBakedGI(mainLight, inputData.normalWS, inputData.bakedGI, inputData.shadowMask);
				color.rgb = GlobalIllumination(brdfData, inputData.bakedGI, Occlusion, inputData.positionWS, inputData.normalWS, inputData.viewDirectionWS);
				color.a = Alpha;

				#ifdef ASE_FINAL_COLOR_ALPHA_MULTIPLY
					color.rgb *= color.a;
				#endif

				#ifdef ASE_DEPTH_WRITE_ON
					outputDepth = DepthValue;
				#endif

				return BRDFDataToGbuffer(brdfData, inputData, Smoothness, Emission + color.rgb, Occlusion);
			}

			ENDHLSL
		}

		
		Pass
		{
			
			Name "SceneSelectionPass"
			Tags { "LightMode"="SceneSelectionPass" }

			Cull Off
			AlphaToMask Off

			HLSLPROGRAM

			

			#define _NORMAL_DROPOFF_TS 1
			#define ASE_FOG 1
			#define ASE_VERSION 19800
			#define ASE_SRP_VERSION 140011


			

			#pragma vertex vert
			#pragma fragment frag

			#if defined(_SPECULAR_SETUP) && defined(_ASE_LIGHTING_SIMPLE)
				#define _SPECULAR_COLOR 1
			#endif

			#define SCENESELECTIONPASS 1

			#define ATTRIBUTES_NEED_NORMAL
			#define ATTRIBUTES_NEED_TANGENT
			#define SHADERPASS SHADERPASS_DEPTHONLY

			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Color.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Texture.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Input.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/TextureStack.hlsl"

			
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/FoveatedRendering.hlsl"
           

			
            #if ASE_SRP_VERSION >=140009
			#include_with_pragmas "Packages/com.unity.render-pipelines.core/ShaderLibrary/FoveatedRenderingKeywords.hlsl"
			#endif
		

			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/ShaderGraphFunctions.hlsl"

			
            #if ASE_SRP_VERSION >=140007
			#include_with_pragmas "Packages/com.unity.render-pipelines.universal/ShaderLibrary/DOTS.hlsl"
			#endif
		

			#include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/ShaderPass.hlsl"

			

			struct Attributes
			{
				float4 positionOS : POSITION;
				float3 normalOS : NORMAL;
				
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct PackedVaryings
			{
				float4 positionCS : SV_POSITION;
				
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

			CBUFFER_START(UnityPerMaterial)
			float4 _Texture2_ST;
			float4 _COATOFARMSCOLOR;
			float4 _SKINCOLOR;
			float4 _HAIRCOLOR;
			float4 _Texture0_ST;
			float4 _SCLERACOLOR;
			float4 _LIPSCOLOR;
			float4 _Texture1_ST;
			float4 _SCARSCOLOR;
			float4 _METAL1COLOR;
			float4 _METAL2COLOR;
			float4 _Texture6_ST;
			float4 _METAL3COLOR;
			float4 _LEATHER1COLOR;
			float4 _LEATHER2COLOR;
			float4 _EYESCOLOR;
			float4 _LEATHER3COLOR;
			float4 _Texture3_ST;
			float4 _GEMS3COLOR;
			float4 _Texture7_ST;
			float4 _GEMS1COLOR;
			float4 _FEATHERS3COLOR;
			float4 _Texture4_ST;
			float4 _GEMS2COLOR;
			float4 _FEATHERS1COLOR;
			float4 _CLOTH3COLOR;
			float4 _Texture5_ST;
			float4 _CLOTH2COLOR;
			float4 _CLOTH1COLOR;
			float4 _FEATHERS2COLOR;
			float _HAIRSMOOTHNESS;
			float _METAL3SMOOTHNESS;
			float _EYESSMOOTHNESS;
			float _SCLERASMOOTHNESS;
			float _LIPSSMOOTHNESS;
			float _SCARSSMOOTHNESS;
			float _METAL1SMOOTHNESS;
			float _METAL2SMOOTHNESS;
			float _LEATHER1SMOOTHNESS;
			float _METAL1METALLIC;
			float _LEATHER3SMOOTHNESS;
			float _GEMS1SMOOTHNESS;
			float _GEMS2SMOOTHNESS;
			float _GEMS3SMOOTHNESS;
			float _SmoothnessOn;
			float _METAL2METALLIC;
			float _METAL3METALLIC;
			float _MetalicOn;
			float _SKINSMOOTHNESS;
			float _LEATHER2SMOOTHNESS;
			float _OCCLUSION;
			#ifdef ASE_TRANSMISSION
				float _TransmissionShadow;
			#endif
			#ifdef ASE_TRANSLUCENCY
				float _TransStrength;
				float _TransNormal;
				float _TransScattering;
				float _TransDirect;
				float _TransAmbient;
				float _TransShadow;
			#endif
			#ifdef ASE_TESSELLATION
				float _TessPhongStrength;
				float _TessValue;
				float _TessMin;
				float _TessMax;
				float _TessEdgeLength;
				float _TessMaxDisp;
			#endif
			CBUFFER_END

			#ifdef SCENEPICKINGPASS
				float4 _SelectionID;
			#endif

			#ifdef SCENESELECTIONPASS
				int _ObjectId;
				int _PassValue;
			#endif

			

			
			struct SurfaceDescription
			{
				float Alpha;
				float AlphaClipThreshold;
			};

			PackedVaryings VertexFunction(Attributes input  )
			{
				PackedVaryings output;
				ZERO_INITIALIZE(PackedVaryings, output);

				UNITY_SETUP_INSTANCE_ID(input);
				UNITY_TRANSFER_INSTANCE_ID(input, output);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(output);

				

				#ifdef ASE_ABSOLUTE_VERTEX_POS
					float3 defaultVertexValue = input.positionOS.xyz;
				#else
					float3 defaultVertexValue = float3(0, 0, 0);
				#endif

				float3 vertexValue = defaultVertexValue;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
					input.positionOS.xyz = vertexValue;
				#else
					input.positionOS.xyz += vertexValue;
				#endif

				input.normalOS = input.normalOS;

				float3 positionWS = TransformObjectToWorld( input.positionOS.xyz );

				output.positionCS = TransformWorldToHClip(positionWS);

				return output;
			}

			#if defined(ASE_TESSELLATION)
			struct VertexControl
			{
				float4 positionOS : INTERNALTESSPOS;
				float3 normalOS : NORMAL;
				
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl vert ( Attributes input )
			{
				VertexControl output;
				UNITY_SETUP_INSTANCE_ID(input);
				UNITY_TRANSFER_INSTANCE_ID(input, output);
				output.positionOS = input.positionOS;
				output.normalOS = input.normalOS;
				
				return output;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> input)
			{
				TessellationFactors output;
				float4 tf = 1;
				float tessValue = _TessValue; float tessMin = _TessMin; float tessMax = _TessMax;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(input[0].positionOS, input[1].positionOS, input[2].positionOS, tessValue, tessMin, tessMax, GetObjectToWorldMatrix(), _WorldSpaceCameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(input[0].positionOS, input[1].positionOS, input[2].positionOS, edgeLength, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(input[0].positionOS, input[1].positionOS, input[2].positionOS, edgeLength, tessMaxDisp, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams, unity_CameraWorldClipPlanes );
				#endif
				output.edge[0] = tf.x; output.edge[1] = tf.y; output.edge[2] = tf.z; output.inside = tf.w;
				return output;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
				return patch[id];
			}

			[domain("tri")]
			PackedVaryings DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				Attributes output = (Attributes) 0;
				output.positionOS = patch[0].positionOS * bary.x + patch[1].positionOS * bary.y + patch[2].positionOS * bary.z;
				output.normalOS = patch[0].normalOS * bary.x + patch[1].normalOS * bary.y + patch[2].normalOS * bary.z;
				
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = output.positionOS.xyz - patch[i].normalOS * (dot(output.positionOS.xyz, patch[i].normalOS) - dot(patch[i].positionOS.xyz, patch[i].normalOS));
				float phongStrength = _TessPhongStrength;
				output.positionOS.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * output.positionOS.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], output);
				return VertexFunction(output);
			}
			#else
			PackedVaryings vert ( Attributes input )
			{
				return VertexFunction( input );
			}
			#endif

			half4 frag(PackedVaryings input ) : SV_Target
			{
				SurfaceDescription surfaceDescription = (SurfaceDescription)0;

				

				surfaceDescription.Alpha = 1;
				surfaceDescription.AlphaClipThreshold = 0.5;

				#if _ALPHATEST_ON
					float alphaClipThreshold = 0.01f;
					#if ALPHA_CLIP_THRESHOLD
						alphaClipThreshold = surfaceDescription.AlphaClipThreshold;
					#endif
					clip(surfaceDescription.Alpha - alphaClipThreshold);
				#endif

				half4 outColor = 0;

				#ifdef SCENESELECTIONPASS
					outColor = half4(_ObjectId, _PassValue, 1.0, 1.0);
				#elif defined(SCENEPICKINGPASS)
					outColor = _SelectionID;
				#endif

				return outColor;
			}

			ENDHLSL
		}

		
		Pass
		{
			
			Name "ScenePickingPass"
			Tags { "LightMode"="Picking" }

			AlphaToMask Off

			HLSLPROGRAM

			

			#define _NORMAL_DROPOFF_TS 1
			#define ASE_FOG 1
			#define ASE_VERSION 19800
			#define ASE_SRP_VERSION 140011


			

			#pragma vertex vert
			#pragma fragment frag

			#if defined(_SPECULAR_SETUP) && defined(_ASE_LIGHTING_SIMPLE)
				#define _SPECULAR_COLOR 1
			#endif

		    #define SCENEPICKINGPASS 1

			#define ATTRIBUTES_NEED_NORMAL
			#define ATTRIBUTES_NEED_TANGENT
			#define SHADERPASS SHADERPASS_DEPTHONLY

			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Color.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Texture.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Input.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/TextureStack.hlsl"

			
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/FoveatedRendering.hlsl"
           

			
            #if ASE_SRP_VERSION >=140009
			#include_with_pragmas "Packages/com.unity.render-pipelines.core/ShaderLibrary/FoveatedRenderingKeywords.hlsl"
			#endif
		

			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/ShaderGraphFunctions.hlsl"

			
            #if ASE_SRP_VERSION >=140007
			#include_with_pragmas "Packages/com.unity.render-pipelines.universal/ShaderLibrary/DOTS.hlsl"
			#endif
		

			#include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/ShaderPass.hlsl"

			

			struct Attributes
			{
				float4 positionOS : POSITION;
				float3 normalOS : NORMAL;
				
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct PackedVaryings
			{
				float4 positionCS : SV_POSITION;
				
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

			CBUFFER_START(UnityPerMaterial)
			float4 _Texture2_ST;
			float4 _COATOFARMSCOLOR;
			float4 _SKINCOLOR;
			float4 _HAIRCOLOR;
			float4 _Texture0_ST;
			float4 _SCLERACOLOR;
			float4 _LIPSCOLOR;
			float4 _Texture1_ST;
			float4 _SCARSCOLOR;
			float4 _METAL1COLOR;
			float4 _METAL2COLOR;
			float4 _Texture6_ST;
			float4 _METAL3COLOR;
			float4 _LEATHER1COLOR;
			float4 _LEATHER2COLOR;
			float4 _EYESCOLOR;
			float4 _LEATHER3COLOR;
			float4 _Texture3_ST;
			float4 _GEMS3COLOR;
			float4 _Texture7_ST;
			float4 _GEMS1COLOR;
			float4 _FEATHERS3COLOR;
			float4 _Texture4_ST;
			float4 _GEMS2COLOR;
			float4 _FEATHERS1COLOR;
			float4 _CLOTH3COLOR;
			float4 _Texture5_ST;
			float4 _CLOTH2COLOR;
			float4 _CLOTH1COLOR;
			float4 _FEATHERS2COLOR;
			float _HAIRSMOOTHNESS;
			float _METAL3SMOOTHNESS;
			float _EYESSMOOTHNESS;
			float _SCLERASMOOTHNESS;
			float _LIPSSMOOTHNESS;
			float _SCARSSMOOTHNESS;
			float _METAL1SMOOTHNESS;
			float _METAL2SMOOTHNESS;
			float _LEATHER1SMOOTHNESS;
			float _METAL1METALLIC;
			float _LEATHER3SMOOTHNESS;
			float _GEMS1SMOOTHNESS;
			float _GEMS2SMOOTHNESS;
			float _GEMS3SMOOTHNESS;
			float _SmoothnessOn;
			float _METAL2METALLIC;
			float _METAL3METALLIC;
			float _MetalicOn;
			float _SKINSMOOTHNESS;
			float _LEATHER2SMOOTHNESS;
			float _OCCLUSION;
			#ifdef ASE_TRANSMISSION
				float _TransmissionShadow;
			#endif
			#ifdef ASE_TRANSLUCENCY
				float _TransStrength;
				float _TransNormal;
				float _TransScattering;
				float _TransDirect;
				float _TransAmbient;
				float _TransShadow;
			#endif
			#ifdef ASE_TESSELLATION
				float _TessPhongStrength;
				float _TessValue;
				float _TessMin;
				float _TessMax;
				float _TessEdgeLength;
				float _TessMaxDisp;
			#endif
			CBUFFER_END

			#ifdef SCENEPICKINGPASS
				float4 _SelectionID;
			#endif

			#ifdef SCENESELECTIONPASS
				int _ObjectId;
				int _PassValue;
			#endif

			

			
			struct SurfaceDescription
			{
				float Alpha;
				float AlphaClipThreshold;
			};

			PackedVaryings VertexFunction(Attributes input  )
			{
				PackedVaryings output;
				ZERO_INITIALIZE(PackedVaryings, output);

				UNITY_SETUP_INSTANCE_ID(input);
				UNITY_TRANSFER_INSTANCE_ID(input, output);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(output);

				

				#ifdef ASE_ABSOLUTE_VERTEX_POS
					float3 defaultVertexValue = input.positionOS.xyz;
				#else
					float3 defaultVertexValue = float3(0, 0, 0);
				#endif

				float3 vertexValue = defaultVertexValue;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
					input.positionOS.xyz = vertexValue;
				#else
					input.positionOS.xyz += vertexValue;
				#endif

				input.normalOS = input.normalOS;

				float3 positionWS = TransformObjectToWorld( input.positionOS.xyz );
				output.positionCS = TransformWorldToHClip(positionWS);

				return output;
			}

			#if defined(ASE_TESSELLATION)
			struct VertexControl
			{
				float4 positionOS : INTERNALTESSPOS;
				float3 normalOS : NORMAL;
				
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl vert ( Attributes input )
			{
				VertexControl output;
				UNITY_SETUP_INSTANCE_ID(input);
				UNITY_TRANSFER_INSTANCE_ID(input, output);
				output.positionOS = input.positionOS;
				output.normalOS = input.normalOS;
				
				return output;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> input)
			{
				TessellationFactors output;
				float4 tf = 1;
				float tessValue = _TessValue; float tessMin = _TessMin; float tessMax = _TessMax;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(input[0].positionOS, input[1].positionOS, input[2].positionOS, tessValue, tessMin, tessMax, GetObjectToWorldMatrix(), _WorldSpaceCameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(input[0].positionOS, input[1].positionOS, input[2].positionOS, edgeLength, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(input[0].positionOS, input[1].positionOS, input[2].positionOS, edgeLength, tessMaxDisp, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams, unity_CameraWorldClipPlanes );
				#endif
				output.edge[0] = tf.x; output.edge[1] = tf.y; output.edge[2] = tf.z; output.inside = tf.w;
				return output;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
				return patch[id];
			}

			[domain("tri")]
			PackedVaryings DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				Attributes output = (Attributes) 0;
				output.positionOS = patch[0].positionOS * bary.x + patch[1].positionOS * bary.y + patch[2].positionOS * bary.z;
				output.normalOS = patch[0].normalOS * bary.x + patch[1].normalOS * bary.y + patch[2].normalOS * bary.z;
				
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = output.positionOS.xyz - patch[i].normalOS * (dot(output.positionOS.xyz, patch[i].normalOS) - dot(patch[i].positionOS.xyz, patch[i].normalOS));
				float phongStrength = _TessPhongStrength;
				output.positionOS.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * output.positionOS.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], output);
				return VertexFunction(output);
			}
			#else
			PackedVaryings vert ( Attributes input )
			{
				return VertexFunction( input );
			}
			#endif

			half4 frag(PackedVaryings input ) : SV_Target
			{
				SurfaceDescription surfaceDescription = (SurfaceDescription)0;

				

				surfaceDescription.Alpha = 1;
				surfaceDescription.AlphaClipThreshold = 0.5;

				#if _ALPHATEST_ON
					float alphaClipThreshold = 0.01f;
					#if ALPHA_CLIP_THRESHOLD
						alphaClipThreshold = surfaceDescription.AlphaClipThreshold;
					#endif
						clip(surfaceDescription.Alpha - alphaClipThreshold);
				#endif

				half4 outColor = 0;

				#ifdef SCENESELECTIONPASS
					outColor = half4(_ObjectId, _PassValue, 1.0, 1.0);
				#elif defined(SCENEPICKINGPASS)
					outColor = _SelectionID;
				#endif

				return outColor;
			}

			ENDHLSL
		}
		
	}
	
	CustomEditor "UnityEditor.ShaderGraphLitGUI"
	FallBack "Hidden/Shader Graph/FallbackError"
	
	Fallback "Hidden/InternalErrorShader"
}
/*ASEBEGIN
Version=19800
Node;AmplifyShaderEditor.CommentaryNode;228;-18395.06,107.5165;Inherit;False;2305.307;694.8573;Comment;14;223;219;218;222;221;215;216;214;213;217;220;229;230;231;GEMS COLORS;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;200;-19433.26,111.1713;Inherit;False;680.9902;282.8338;Comment;2;198;199;BASE TEXTURE;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;212;-15940.94,100.0198;Inherit;False;2305.3;694.8572;Comment;14;183;185;182;188;184;180;181;187;189;186;179;224;225;226;FEATHERS COLORS;0.735849,0.7152051,0.3158597,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;208;-13458.26,101.9824;Inherit;False;2359.399;695.7338;Comment;14;168;175;173;178;170;172;169;174;176;177;171;209;211;210;CLOTH COLORS;0.4690726,0.7830189,0.47128,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;204;-10950.96,81.85144;Inherit;False;2342.301;700.673;Comment;14;163;159;203;166;165;202;160;161;201;158;164;167;162;157;LEATHER COLORS;0.7735849,0.5371538,0.1788003,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;194;-8397.117,81.08585;Inherit;False;2305.301;694.8571;Comment;14;130;121;126;117;118;127;120;128;119;122;123;195;196;197;METAL COLORS;0.259434,0.8569208,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;190;-5786.208,60.18156;Inherit;False;2305.296;707.5152;Comment;14;143;144;156;145;155;148;149;150;154;151;153;191;192;193;LIPS - SCARS - SCLERA COLORS;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;102;-3284.644,71.51185;Inherit;False;2305.298;694.8571;Comment;14;77;37;74;71;75;67;41;73;69;63;62;581;582;583;SKIN - HAIR - EYES COLORS;1,0,0,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;24;-1812.858,-1400.5;Inherit;False;1262.249;589.4722;;7;16;18;26;25;17;9;10;COAT OF ARMS;1,0,0.7651567,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;345;-10281.75,1639.19;Inherit;False;1768.502;211.4459;Comment;6;337;336;335;332;333;334;LEATHER SMOOTHNESS;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;347;-5204.773,1621.108;Inherit;False;1768.499;211.4459;Comment;6;324;320;325;322;321;323;LIPS - SCARS - SCLERA SMOOTHNESS;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;354;-7862.719,1064.29;Inherit;False;1768.498;211.4463;Comment;6;317;314;315;318;319;316;METAL METALLIC;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;313;-2711.574,1613.886;Inherit;False;1768.499;211.4464;Comment;6;307;302;306;305;303;304;SKIN - EYES - HAIR SMOOTHNESS;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;346;-7837.468,1617.395;Inherit;False;1768.499;211.4459;Comment;6;329;330;327;326;331;328;METAL SMOOTHNESS;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;344;-17794.08,1639.719;Inherit;False;1768.5;211.4459;Comment;6;342;343;341;338;339;340;GEMS SMOOTHNESS;1,1,1,1;0;0
Node;AmplifyShaderEditor.TexturePropertyNode;220;-18345.06,572.19;Inherit;True;Property;_Texture7;Texture 7;46;1;[HideInInspector];Create;True;0;0;0;False;0;False;7d388dc79e41c6f498271666b30c0630;7d388dc79e41c6f498271666b30c0630;False;white;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.TexturePropertyNode;198;-19429.26,160.0049;Inherit;True;Property;_Texture2;Texture 2;44;2;[HideInInspector];[HDR];Create;True;0;0;0;False;0;False;004b7cabc9421734bb88a754e99fd641;004b7cabc9421734bb88a754e99fd641;False;white;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.ColorNode;231;-17873.24,175.481;Inherit;False;Property;_GEMS3COLOR;GEMS 3 COLOR;34;1;[HDR];Create;True;0;0;0;False;0;False;0,0.1132075,0.01206957,0;0,0.1132075,0.01206957,0;True;True;0;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.SamplerNode;199;-19085.27,161.1711;Inherit;True;Property;_TextureSample2;Texture Sample 2;14;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.SamplerNode;222;-18051.41,572.374;Inherit;True;Property;_TextureSample6;Texture Sample 6;4;1;[HideInInspector];Create;True;0;0;0;False;0;False;10;b76fe68d69ca53f43a4e6f66d135dd90;b76fe68d69ca53f43a4e6f66d135dd90;True;0;False;black;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.FunctionNode;215;-17678.19,625.9382;Inherit;False;Color Mask;-1;;45;eec747d987850564c95bde0e5a6d1867;0;4;1;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0.1;False;5;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;223;-17646.8,157.5165;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;230;-17263.86,180.9097;Inherit;False;Property;_GEMS2COLOR;GEMS 2 COLOR;32;1;[HDR];Create;True;0;0;0;False;0;False;0.2023368,0,0.4339623,0;0.2023368,0,0.4339623,0;True;True;0;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;221;-17033.94,159.8954;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;229;-16691.28,179.7326;Inherit;False;Property;_GEMS1COLOR;GEMS 1 COLOR;30;1;[HDR];Create;True;0;0;0;False;0;False;0.3773585,0,0.06650025,0;0.3773585,0,0.06650025,0;True;True;0;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.FunctionNode;216;-17085.2,615.1951;Inherit;False;Color Mask;-1;;46;eec747d987850564c95bde0e5a6d1867;0;4;1;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0.1;False;5;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.TexturePropertyNode;185;-15890.94,564.6931;Inherit;True;Property;_Texture4;Texture 4;45;1;[HideInInspector];Create;True;0;0;0;False;0;False;ae91646efc13ec44f8ccc5b5db2d6a8d;ae91646efc13ec44f8ccc5b5db2d6a8d;False;white;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.LerpOp;219;-17470.98,377.9008;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;218;-16457.13,164.9575;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.FunctionNode;213;-16544.81,586.8638;Inherit;False;Color Mask;-1;;47;eec747d987850564c95bde0e5a6d1867;0;4;1;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0.1;False;5;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;224;-15434.72,169.3589;Inherit;False;Property;_FEATHERS3COLOR;FEATHERS 3 COLOR;38;1;[HDR];Create;True;0;0;0;False;0;False;0,0.1793142,0.7264151,0;0,0.1793142,0.7264151,0;True;True;0;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.SamplerNode;181;-15597.29,564.877;Inherit;True;Property;_TextureSample5;Texture Sample 5;4;1;[HideInInspector];Create;True;0;0;0;False;0;False;10;b76fe68d69ca53f43a4e6f66d135dd90;b76fe68d69ca53f43a4e6f66d135dd90;True;0;False;black;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.LerpOp;214;-16850.53,363.3687;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;188;-15192.68,150.0198;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp;217;-16273.75,372.6839;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;225;-14843.42,170.8393;Inherit;False;Property;_FEATHERS2COLOR;FEATHERS 2 COLOR;37;1;[HDR];Create;True;0;0;0;False;0;False;0.6792453,0,0,0;0.6792453,0,0,0;True;True;0;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.FunctionNode;187;-15219.39,613.759;Inherit;False;Color Mask;-1;;48;eec747d987850564c95bde0e5a6d1867;0;4;1;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0.1;False;5;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;226;-14298.42,166.8393;Inherit;False;Property;_FEATHERS1COLOR;FEATHERS 1 COLOR;36;1;[HDR];Create;True;0;0;0;False;0;False;0.7735849,0.492613,0.492613,0;0.7775454,0.9510008,0.9528302,0;True;True;0;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;183;-14579.82,152.3987;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.TexturePropertyNode;174;-13408.26,567.7161;Inherit;True;Property;_Texture5;Texture 5;43;1;[HideInInspector];Create;True;0;0;0;False;0;False;e4f1621d61032d045964d463b3806afe;e4f1621d61032d045964d463b3806afe;False;white;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.FunctionNode;180;-14617.37,604.2701;Inherit;False;Color Mask;-1;;49;eec747d987850564c95bde0e5a6d1867;0;4;1;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0.1;False;5;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;182;-15016.86,370.4042;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SamplerNode;170;-13060.51,566.8392;Inherit;True;Property;_TextureSample4;Texture Sample 4;4;1;[HideInInspector];Create;True;0;0;0;False;0;False;10;b76fe68d69ca53f43a4e6f66d135dd90;b76fe68d69ca53f43a4e6f66d135dd90;True;0;False;black;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.FunctionNode;179;-14110.04,589.8252;Inherit;False;Color Mask;-1;;50;eec747d987850564c95bde0e5a6d1867;0;4;1;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0.1;False;5;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;211;-12946.7,169.5253;Inherit;False;Property;_CLOTH3COLOR;CLOTH 3 COLOR;29;1;[HDR];Create;True;0;0;0;False;0;False;0.8773585,0.6337318,0.3434941,0;0.5471698,0.5471122,0.5187789,0;True;True;0;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.LerpOp;189;-14396.41,355.8722;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;186;-14003.01,157.4608;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;210;-12318.56,167.2369;Inherit;False;Property;_CLOTH2COLOR;CLOTH 2 COLOR;28;1;[HDR];Create;True;0;0;0;False;0;False;1,0,0,0;0.6226415,0,0,0;True;True;0;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.FunctionNode;176;-12682.61,615.7213;Inherit;False;Color Mask;-1;;63;eec747d987850564c95bde0e5a6d1867;0;4;1;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0.1;False;5;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;184;-13819.64,365.1873;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;177;-12655.9,151.9825;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.TexturePropertyNode;163;-10900.96,552.5245;Inherit;True;Property;_Texture3;Texture 3;42;1;[HideInInspector];Create;True;0;0;0;False;0;False;9c0e067347abba2489817b3ce813c911;9c0e067347abba2489817b3ce813c911;False;white;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;172;-12043.04,154.3614;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.FunctionNode;169;-12080.59,606.2324;Inherit;False;Color Mask;-1;;71;eec747d987850564c95bde0e5a6d1867;0;4;1;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0.1;False;5;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;171;-12480.08,372.3667;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;209;-11733.9,176.3902;Inherit;False;Property;_CLOTH1COLOR;CLOTH 1 COLOR;27;1;[HDR];Create;True;0;0;0;False;0;False;0.1465379,0.282117,0.3490566,0;0.1465379,0.282117,0.3490566,0;True;True;0;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.ColorNode;203;-10437.53,161.7001;Inherit;False;Property;_LEATHER3COLOR;LEATHER 3 COLOR;25;1;[HDR];Create;True;0;0;0;False;0;False;0.1698113,0.04637412,0.02963688,1;0.1226415,0.07025669,0.04570131,0;True;True;0;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.LerpOp;178;-11859.63,357.8348;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SamplerNode;159;-10570.31,546.7085;Inherit;True;Property;_TextureSample3;Texture Sample 3;4;1;[HideInInspector];Create;True;0;0;0;False;0;False;10;b76fe68d69ca53f43a4e6f66d135dd90;b76fe68d69ca53f43a4e6f66d135dd90;True;0;False;black;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.FunctionNode;168;-11557.34,584.7573;Inherit;False;Color Mask;-1;;78;eec747d987850564c95bde0e5a6d1867;0;4;1;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0.1;False;5;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;175;-11466.22,159.4234;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.FunctionNode;165;-10186.82,595.5906;Inherit;False;Color Mask;-1;;79;eec747d987850564c95bde0e5a6d1867;0;4;1;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0.1;False;5;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;202;-9846.154,165.072;Inherit;False;Property;_LEATHER2COLOR;LEATHER 2 COLOR;23;1;[HDR];Create;True;0;0;0;False;0;False;0.4245283,0.190437,0.09011215,1;0.2358491,0.05549391,0,0;True;True;0;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.LerpOp;173;-11282.86,367.1498;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;166;-10170.95,137.1077;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.FunctionNode;158;-9590.39,586.1017;Inherit;False;Color Mask;-1;;80;eec747d987850564c95bde0e5a6d1867;0;4;1;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0.1;False;5;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;161;-9552.838,134.2304;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;201;-9256.154,158.072;Inherit;False;Property;_LEATHER1COLOR;LEATHER 1 COLOR;21;1;[HDR];Create;True;0;0;0;False;0;False;0.4811321,0.2041155,0.08851016,1;0.3867925,0.2276603,0.129539,0;True;True;0;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.LerpOp;160;-9989.884,352.2355;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.TexturePropertyNode;130;-8347.117,545.759;Inherit;True;Property;_Texture6;Texture 6;41;1;[HideInInspector];Create;True;0;0;0;False;0;False;47efbf030a9bb7f428ba51b46a2fdd03;47efbf030a9bb7f428ba51b46a2fdd03;False;white;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.LerpOp;167;-9369.433,349.9297;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SamplerNode;121;-8053.467,545.9429;Inherit;True;Property;_TextureSample8;Texture Sample 8;4;1;[HideInInspector];Create;True;0;0;0;False;0;False;10;b76fe68d69ca53f43a4e6f66d135dd90;b76fe68d69ca53f43a4e6f66d135dd90;True;0;False;black;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.FunctionNode;157;-9067.14,564.4523;Inherit;False;Color Mask;-1;;81;eec747d987850564c95bde0e5a6d1867;0;4;1;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0.1;False;5;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;164;-8976.024,139.2924;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;197;-7959.427,149.6947;Inherit;False;Property;_METAL3COLOR;METAL 3 COLOR;18;1;[HDR];Create;True;0;0;0;False;0;False;0.4383232,0.4383232,0.4716981,0;0.6320754,0.6320754,0.6320754,0;True;True;0;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.ColorNode;196;-7295.61,136.1474;Inherit;False;Property;_METAL2COLOR;METAL 2 COLOR;15;1;[HDR];Create;True;0;0;0;False;0;False;0.4674706,0.4677705,0.5188679,0;0.1946867,0.2850214,0.3301887,0;True;True;0;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;126;-7648.856,131.0858;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp;162;-8792.659,347.0186;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.FunctionNode;117;-7672.317,594.8251;Inherit;False;Color Mask;-1;;82;eec747d987850564c95bde0e5a6d1867;0;4;1;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0.1;False;5;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;127;-7100.835,576.2403;Inherit;False;Color Mask;-1;;83;eec747d987850564c95bde0e5a6d1867;0;4;1;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0.1;False;5;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;120;-7035.995,133.4648;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;195;-6732.036,154.556;Inherit;False;Property;_METAL1COLOR;METAL 1 COLOR;12;1;[HDR];Create;True;0;0;0;False;0;False;2,0.682353,0.1960784,0;0.8117647,0.3651657,0,0;True;True;0;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.LerpOp;118;-7473.041,351.4701;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.TexturePropertyNode;143;-5736.208,537.5127;Inherit;True;Property;_Texture1;Texture 1;40;1;[HideInInspector];Create;True;0;0;0;False;0;False;9a688ecd3c6cbee4cb2a528bf72399d4;9a688ecd3c6cbee4cb2a528bf72399d4;False;white;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.ColorNode;193;-5276.292,135.8387;Inherit;False;Property;_SCARSCOLOR;SCARS COLOR;10;1;[HDR];Create;True;0;0;0;False;0;False;0.8490566,0.5037117,0.3884835,0;0.8490566,0.5037117,0.3884835,0;True;True;0;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;119;-6459.181,138.5268;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp;128;-6852.589,336.9381;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SamplerNode;144;-5442.563,537.6968;Inherit;True;Property;_TextureSample1;Texture Sample 1;4;1;[HideInInspector];Create;True;0;0;0;False;0;False;10;b76fe68d69ca53f43a4e6f66d135dd90;b76fe68d69ca53f43a4e6f66d135dd90;True;0;False;black;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.FunctionNode;123;-6546.868,560.433;Inherit;False;Color Mask;-1;;84;eec747d987850564c95bde0e5a6d1867;0;4;1;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0.1;False;5;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;156;-5031.696,161.4115;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.FunctionNode;145;-5054.38,579.723;Inherit;False;Color Mask;-1;;85;eec747d987850564c95bde0e5a6d1867;0;4;1;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0.1;False;5;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;192;-4663.813,130.0028;Inherit;False;Property;_LIPSCOLOR;LIPS COLOR;8;1;[HDR];Create;True;0;0;0;False;0;False;0.8301887,0.3185886,0.2780349,0;0.8301887,0.3185886,0.2780349,0;True;True;0;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.LerpOp;122;-6275.816,346.2531;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.FunctionNode;149;-4462.642,577.0893;Inherit;True;Color Mask;-1;;86;eec747d987850564c95bde0e5a6d1867;0;4;1;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0.1;False;5;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;10;-1769.44,-1325.746;Inherit;True;Property;_COATOFARMSMASK;COAT OF ARMS MASK;48;1;[NoScaleOffset];Create;True;0;0;0;False;0;False;10;d294e9544b9eca64188ea9d2482ea8a1;d294e9544b9eca64188ea9d2482ea8a1;True;1;False;black;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.ColorNode;191;-4083.874,145.6415;Inherit;False;Property;_SCLERACOLOR;SCLERA COLOR;6;1;[HDR];Create;True;0;0;0;False;0;False;0.9056604,0.8159487,0.8159487,0;0.8490566,0.6928622,0.6928622,0;True;True;0;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.LerpOp;148;-4849.282,337.5115;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;155;-4388.793,157.3194;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.TexturePropertyNode;77;-3234.644,536.1849;Inherit;True;Property;_Texture0;Texture 0;39;1;[HideInInspector];Create;True;0;0;0;False;0;False;b76fe68d69ca53f43a4e6f66d135dd90;b76fe68d69ca53f43a4e6f66d135dd90;False;white;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.FunctionNode;150;-3935.964,552.1868;Inherit;True;Color Mask;-1;;87;eec747d987850564c95bde0e5a6d1867;0;4;1;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0.1;False;5;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;37;-2944.998,538.3689;Inherit;True;Property;_TextureSample0;Texture Sample 0;4;1;[HideInInspector];Create;True;0;0;0;False;0;False;10;b76fe68d69ca53f43a4e6f66d135dd90;b76fe68d69ca53f43a4e6f66d135dd90;True;0;False;black;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.ColorNode;26;-1063.837,-1185.19;Inherit;False;Property;_COATOFARMSCOLOR;COAT OF ARMS COLOR;47;1;[HDR];Create;True;0;0;0;False;0;False;1,0,0,0;0.3631096,2.217881,0,0;True;True;0;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.OneMinusNode;9;-1435.856,-1221.265;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.Vector2Node;18;-1043.557,-1002.802;Inherit;False;Constant;_Vector0;Vector 0;1;0;Create;True;0;0;0;False;0;False;1.6,1;0,0;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.ColorNode;74;-2838.578,169.5337;Inherit;False;Property;_EYESCOLOR;EYES COLOR;2;1;[HDR];Create;True;0;0;0;False;0;False;0.0734529,0.1320755,0.05046281,1;0.0734529,0.1320755,0.05046281,1;True;True;0;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;154;-3812.454,162.3207;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp;151;-4243.684,339.6917;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;25;-1067.646,-1364.901;Inherit;False;Constant;_Color4;Color 4;1;0;Create;True;0;0;0;False;0;False;0,0,0,0;0,0,0,0;True;True;0;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.FunctionNode;71;-2621.529,582.2063;Inherit;False;Color Mask;-1;;92;eec747d987850564c95bde0e5a6d1867;0;4;1;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0.1;False;5;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.OneMinusNode;16;-1243.999,-947.4095;Inherit;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;153;-3664.912,338.0065;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;583;-2528.904,148.7538;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.FunctionNode;17;-814.7589,-1227.691;Inherit;False;Replace Color;-1;;93;896dccb3016c847439def376a728b869;1,12,0;5;1;COLOR;0,0,0,0;False;2;COLOR;0,0,0,0;False;3;COLOR;0,0,0,0;False;4;FLOAT;0;False;5;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;75;-2198.202,182.6123;Inherit;False;Property;_HAIRCOLOR;HAIR COLOR;4;1;[HDR];Create;True;0;0;0;False;0;False;0.5943396,0.3518379,0.1093361,0;1,1,1,0;True;True;0;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.WireNode;574;-328.0893,-1201.828;Inherit;False;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;41;-1631.331,169.188;Inherit;False;Property;_SKINCOLOR;SKIN COLOR;0;1;[HDR];Create;True;0;0;0;False;0;False;2.02193,1.0081,0.6199315,0;0.8490566,0.6739655,0.4605732,0;True;True;0;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.LerpOp;73;-2347.718,336.1837;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;582;-1841.327,158.4496;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.WireNode;576;-386.0649,-898.4222;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;67;-2015.839,572.2539;Inherit;False;Color Mask;-1;;94;eec747d987850564c95bde0e5a6d1867;0;4;1;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0.1;False;5;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;69;-1747.119,334.3638;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;581;-1361.772,158.7538;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.FunctionNode;63;-1434.398,550.8591;Inherit;False;Color Mask;-1;;95;eec747d987850564c95bde0e5a6d1867;0;4;1;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0.1;False;5;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode;575;-357.1902,-846.472;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode;573;-296.0682,-1167.712;Inherit;False;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.WireNode;578;-316.0852,310.8136;Inherit;False;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp;62;-1163.346,336.6786;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.WireNode;577;-363.4679,348.5246;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;322;-3620.273,1671.108;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;323;-5156.341,1698.426;Inherit;False;Property;_SCARSSMOOTHNESS;SCARS SMOOTHNESS;11;0;Create;True;0;0;0;False;0;False;0.3;0.608;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;343;-17744.08,1717.038;Inherit;False;Property;_GEMS3SMOOTHNESS;GEMS 3 SMOOTHNESS;35;0;Create;True;0;0;0;False;0;False;0;0.794;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;64;-240.9823,333.7983;Inherit;True;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp;325;-4229.366,1676.554;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;316;-6278.221,1114.29;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;306;-2362.446,1668.34;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;321;-4855.645,1675.562;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;315;-7513.59,1118.744;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;327;-7488.34,1671.849;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;307;-2661.574,1691.204;Inherit;False;Property;_EYESSMOOTHNESS;EYES SMOOTHNESS;3;0;Create;True;0;0;0;False;0;False;0.7;0.671;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;337;-10231.75,1716.508;Inherit;False;Property;_LEATHER3SMOOTHNESS;LEATHER 3 SMOOTHNESS;26;0;Create;True;0;0;0;False;0;False;0.3;0.35;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;317;-7812.719,1142.608;Inherit;False;Property;_METAL3METALLIC;METAL 3 METALLIC;19;0;Create;True;0;0;0;False;0;False;0.65;0.5;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;302;-1127.075,1663.886;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;328;-6252.969,1667.395;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;341;-17111.68,1717.219;Inherit;False;Property;_GEMS2SMOOTHNESS;GEMS 2 SMOOTHNESS;33;0;Create;True;0;0;0;False;0;False;0;0.762;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;320;-4522.371,1698.607;Inherit;False;Property;_LIPSSMOOTHNESS;LIPS SMOOTHNESS;9;0;Create;True;0;0;0;False;0;False;0.4;0.529;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;333;-9017.06,1711.679;Inherit;False;Property;_LEATHER1SMOOTHNESS;LEATHER 1 SMOOTHNESS;22;0;Create;True;0;0;0;False;0;False;0.3;0.1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;330;-6572.781,1689.884;Inherit;False;Property;_METAL1SMOOTHNESS;METAL 1 SMOOTHNESS;14;0;Create;True;0;0;0;False;0;False;0.7;0.683;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;324;-3940.084,1693.597;Inherit;False;Property;_SCLERASMOOTHNESS;SCLERA SMOOTHNESS;7;0;Create;True;0;0;0;False;0;False;0.5;0.816;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;314;-7180.316,1141.789;Inherit;False;Property;_METAL2METALLIC;METAL 2 METALLIC;16;0;Create;True;0;0;0;False;0;False;0.65;0.5;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;332;-9306.341,1694.636;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;331;-6862.062,1672.841;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;340;-16258.63,1696.486;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;252;544.83,1759.57;Inherit;False;Property;_OCCLUSION;OCCLUSION;49;0;Create;True;0;0;0;False;0;False;0.5;0.5;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;303;-1444.887,1686.375;Inherit;False;Property;_SKINSMOOTHNESS;SKIN SMOOTHNESS;1;0;Create;True;0;0;0;False;0;False;0.3;0.357;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;319;-6887.312,1119.736;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;334;-8697.249,1689.19;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;336;-9932.623,1693.644;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ToggleSwitchNode;584;754.506,1097.701;Inherit;False;Property;_MetalicOn;Metalic On;50;0;Create;True;0;0;0;False;0;False;1;True;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.TFHCRemapNode;579;854.0571,1759.464;Inherit;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;1;False;3;FLOAT;1;False;4;FLOAT;0.5;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;338;-16818.67,1695.166;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;342;-17444.96,1694.174;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;339;-16578.44,1718.975;Inherit;False;Property;_GEMS1SMOOTHNESS;GEMS 1 SMOOTHNESS;31;0;Create;True;0;0;0;False;0;False;1;0.755;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;304;-1736.166,1669.332;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;335;-9599.346,1716.689;Inherit;False;Property;_LEATHER2SMOOTHNESS;LEATHER 2 SMOOTHNESS;24;0;Create;True;0;0;0;False;0;False;0.3;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;326;-7155.065,1694.894;Inherit;False;Property;_METAL2SMOOTHNESS;METAL 2 SMOOTHNESS;17;0;Create;True;0;0;0;False;0;False;0.7;0.651;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;318;-6599.226,1160.631;Inherit;False;Property;_METAL1METALLIC;METAL 1 METALLIC;13;0;Create;True;0;0;0;False;0;False;0.65;0.5;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;305;-2029.171,1691.385;Inherit;False;Property;_HAIRSMOOTHNESS;HAIR SMOOTHNESS;5;0;Create;True;0;0;0;False;0;False;0.1;0.52;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.ToggleSwitchNode;585;788.8135,1603.558;Inherit;False;Property;_SmoothnessOn;Smoothness On;51;0;Create;True;0;0;0;False;0;False;1;True;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;329;-7789.468,1695.713;Inherit;False;Property;_METAL3SMOOTHNESS;METAL 3 SMOOTHNESS;20;0;Create;True;0;0;0;False;0;False;0.7;0.677;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;605;1178.721,338.6894;Float;False;False;-1;2;UnityEditor.ShaderGraphLitGUI;0;2;New Amplify Shader;94348b07e5e8bab40bd6c8a1e3df54cd;True;Universal2D;0;5;Universal2D;0;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;;False;True;0;False;;False;False;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;True;True;0;False;;0;False;;True;4;RenderPipeline=UniversalPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;UniversalMaterialType=Lit;True;5;True;12;all;0;False;True;1;1;False;;0;False;;1;1;False;;0;False;;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;True;True;True;True;0;False;;False;False;False;False;False;False;False;False;False;True;1;False;;True;3;False;;True;True;0;False;;0;False;;True;1;LightMode=Universal2D;False;False;0;Hidden/InternalErrorShader;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;602;1178.721,338.6894;Float;False;False;-1;2;UnityEditor.ShaderGraphLitGUI;0;2;New Amplify Shader;94348b07e5e8bab40bd6c8a1e3df54cd;True;ShadowCaster;0;2;ShadowCaster;0;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;;False;True;0;False;;False;False;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;True;True;0;False;;0;False;;True;4;RenderPipeline=UniversalPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;UniversalMaterialType=Lit;True;5;True;12;all;0;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;;False;False;False;True;False;False;False;False;0;False;;False;False;False;False;False;False;False;False;False;True;1;False;;True;3;False;;False;True;1;LightMode=ShadowCaster;False;False;0;Hidden/InternalErrorShader;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;603;1178.721,338.6894;Float;False;False;-1;2;UnityEditor.ShaderGraphLitGUI;0;2;New Amplify Shader;94348b07e5e8bab40bd6c8a1e3df54cd;True;DepthOnly;0;3;DepthOnly;0;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;;False;True;0;False;;False;False;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;True;True;0;False;;0;False;;True;4;RenderPipeline=UniversalPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;UniversalMaterialType=Lit;True;5;True;12;all;0;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;;False;False;False;True;False;False;False;False;0;False;;False;False;False;False;False;False;False;False;False;True;1;False;;False;False;True;1;LightMode=DepthOnly;False;False;0;Hidden/InternalErrorShader;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;601;1178.721,338.6894;Float;False;True;-1;2;UnityEditor.ShaderGraphLitGUI;0;12;Polytope Studio/ PT_Medieval Armors Shader URP PBR;94348b07e5e8bab40bd6c8a1e3df54cd;True;Forward;0;1;Forward;21;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;;False;True;0;False;;False;False;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;True;True;0;False;;0;False;;True;4;RenderPipeline=UniversalPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;UniversalMaterialType=Lit;True;5;True;12;all;0;False;True;1;1;False;;0;False;;1;1;False;;0;False;;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;True;True;True;True;0;False;;False;False;False;False;False;False;False;True;False;255;False;;255;False;;255;False;;7;False;;1;False;;1;False;;1;False;;7;False;;1;False;;1;False;;1;False;;False;True;1;False;;True;3;False;;True;True;0;False;;0;False;;True;1;LightMode=UniversalForwardOnly;False;False;0;Hidden/InternalErrorShader;0;0;Standard;43;Lighting Model;0;0;Workflow;1;0;Surface;0;638156812238327626;  Refraction Model;0;0;  Blend;0;0;Two Sided;1;0;Alpha Clipping;1;0;  Use Shadow Threshold;0;0;Fragment Normal Space,InvertActionOnDeselection;0;0;Forward Only;1;0;Transmission;0;0;  Transmission Shadow;0.5,False,;0;Translucency;0;638156812743291104;  Translucency Strength;1,False,;0;  Normal Distortion;0.5,False,;0;  Scattering;2,False,;0;  Direct;0.9,False,;0;  Ambient;0.1,False,;0;  Shadow;0.5,False,;0;Cast Shadows;1;0;Receive Shadows;1;0;Receive SSAO;1;0;GPU Instancing;1;0;LOD CrossFade;1;0;Built-in Fog;1;0;_FinalColorxAlpha;0;0;Meta Pass;1;0;Override Baked GI;0;0;Extra Pre Pass;0;0;Tessellation;0;0;  Phong;0;0;  Strength;0.5,False,;0;  Type;0;0;  Tess;16,False,;0;  Min;10,False,;0;  Max;25,False,;0;  Edge Length;16,False,;0;  Max Displacement;25,False,;0;Write Depth;0;0;  Early Z;0;0;Vertex Position,InvertActionOnDeselection;1;0;Debug Display;0;0;Clear Coat;0;0;0;10;False;True;True;True;True;True;True;True;True;True;False;;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;600;1178.721,338.6894;Float;False;False;-1;2;UnityEditor.ShaderGraphLitGUI;0;2;New Amplify Shader;94348b07e5e8bab40bd6c8a1e3df54cd;True;ExtraPrePass;0;0;ExtraPrePass;5;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;;False;True;0;False;;False;False;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;True;True;0;False;;0;False;;True;4;RenderPipeline=UniversalPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;UniversalMaterialType=Lit;True;5;True;12;all;0;False;True;1;1;False;;0;False;;0;1;False;;0;False;;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;;False;True;True;True;True;True;0;False;;False;False;False;False;False;False;False;True;False;255;False;;255;False;;255;False;;7;False;;1;False;;1;False;;1;False;;7;False;;1;False;;1;False;;1;False;;False;True;1;False;;True;3;False;;True;True;0;False;;0;False;;True;0;False;False;0;Hidden/InternalErrorShader;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;604;1178.721,338.6894;Float;False;False;-1;2;UnityEditor.ShaderGraphLitGUI;0;2;New Amplify Shader;94348b07e5e8bab40bd6c8a1e3df54cd;True;Meta;0;4;Meta;0;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;;False;True;0;False;;False;False;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;True;True;0;False;;0;False;;True;4;RenderPipeline=UniversalPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;UniversalMaterialType=Lit;True;5;True;12;all;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;False;;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;LightMode=Meta;False;False;0;Hidden/InternalErrorShader;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;606;1178.721,398.6894;Float;False;False;-1;2;UnityEditor.ShaderGraphLitGUI;0;1;New Amplify Shader;94348b07e5e8bab40bd6c8a1e3df54cd;True;DepthNormals;0;6;DepthNormals;0;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;;False;True;0;False;;False;False;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;True;True;0;False;;0;False;;True;4;RenderPipeline=UniversalPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;UniversalMaterialType=Lit;True;5;True;12;all;0;False;True;1;1;False;;0;False;;0;1;False;;0;False;;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;False;;True;3;False;;False;True;1;LightMode=DepthNormalsOnly;False;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;607;1178.721,398.6894;Float;False;False;-1;2;UnityEditor.ShaderGraphLitGUI;0;1;New Amplify Shader;94348b07e5e8bab40bd6c8a1e3df54cd;True;GBuffer;0;7;GBuffer;0;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;;False;True;0;False;;False;False;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;True;True;0;False;;0;False;;True;4;RenderPipeline=UniversalPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;UniversalMaterialType=Lit;True;5;True;12;all;0;False;True;1;1;False;;0;False;;1;1;False;;0;False;;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;True;True;True;True;0;False;;False;False;False;False;False;False;False;True;False;255;False;;255;False;;255;False;;7;False;;1;False;;1;False;;1;False;;7;False;;1;False;;1;False;;1;False;;False;True;1;False;;True;3;False;;True;True;0;False;;0;False;;True;1;LightMode=UniversalGBuffer;False;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;608;1178.721,398.6894;Float;False;False;-1;2;UnityEditor.ShaderGraphLitGUI;0;1;New Amplify Shader;94348b07e5e8bab40bd6c8a1e3df54cd;True;SceneSelectionPass;0;8;SceneSelectionPass;0;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;;False;True;0;False;;False;False;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;True;True;0;False;;0;False;;True;4;RenderPipeline=UniversalPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;UniversalMaterialType=Lit;True;5;True;12;all;0;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;;False;True;2;False;;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;LightMode=SceneSelectionPass;False;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;609;1178.721,398.6894;Float;False;False;-1;2;UnityEditor.ShaderGraphLitGUI;0;1;New Amplify Shader;94348b07e5e8bab40bd6c8a1e3df54cd;True;ScenePickingPass;0;9;ScenePickingPass;0;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;;False;True;0;False;;False;False;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;True;True;0;False;;0;False;;True;4;RenderPipeline=UniversalPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;UniversalMaterialType=Lit;True;5;True;12;all;0;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;LightMode=Picking;False;False;0;;0;0;Standard;0;False;0
WireConnection;199;0;198;0
WireConnection;222;0;220;0
WireConnection;215;3;222;3
WireConnection;223;0;199;0
WireConnection;223;1;231;0
WireConnection;221;0;199;0
WireConnection;221;1;230;0
WireConnection;216;3;222;2
WireConnection;219;1;223;0
WireConnection;219;2;215;0
WireConnection;218;0;199;0
WireConnection;218;1;229;0
WireConnection;213;3;222;1
WireConnection;181;0;185;0
WireConnection;214;0;219;0
WireConnection;214;1;221;0
WireConnection;214;2;216;0
WireConnection;188;0;199;0
WireConnection;188;1;224;0
WireConnection;217;0;214;0
WireConnection;217;1;218;0
WireConnection;217;2;213;0
WireConnection;187;3;181;3
WireConnection;183;0;199;0
WireConnection;183;1;225;0
WireConnection;180;3;181;2
WireConnection;182;0;217;0
WireConnection;182;1;188;0
WireConnection;182;2;187;0
WireConnection;170;0;174;0
WireConnection;179;3;181;1
WireConnection;189;0;182;0
WireConnection;189;1;183;0
WireConnection;189;2;180;0
WireConnection;186;0;199;0
WireConnection;186;1;226;0
WireConnection;176;3;170;3
WireConnection;184;0;189;0
WireConnection;184;1;186;0
WireConnection;184;2;179;0
WireConnection;177;0;199;0
WireConnection;177;1;211;0
WireConnection;172;0;199;0
WireConnection;172;1;210;0
WireConnection;169;3;170;2
WireConnection;171;0;184;0
WireConnection;171;1;177;0
WireConnection;171;2;176;0
WireConnection;178;0;171;0
WireConnection;178;1;172;0
WireConnection;178;2;169;0
WireConnection;159;0;163;0
WireConnection;168;3;170;1
WireConnection;175;0;199;0
WireConnection;175;1;209;0
WireConnection;165;3;159;3
WireConnection;173;0;178;0
WireConnection;173;1;175;0
WireConnection;173;2;168;0
WireConnection;166;0;199;0
WireConnection;166;1;203;0
WireConnection;158;3;159;2
WireConnection;161;0;199;0
WireConnection;161;1;202;0
WireConnection;160;0;173;0
WireConnection;160;1;166;0
WireConnection;160;2;165;0
WireConnection;167;0;160;0
WireConnection;167;1;161;0
WireConnection;167;2;158;0
WireConnection;121;0;130;0
WireConnection;157;3;159;1
WireConnection;164;0;199;0
WireConnection;164;1;201;0
WireConnection;126;0;199;0
WireConnection;126;1;197;0
WireConnection;162;0;167;0
WireConnection;162;1;164;0
WireConnection;162;2;157;0
WireConnection;117;3;121;3
WireConnection;127;3;121;2
WireConnection;120;0;199;0
WireConnection;120;1;196;0
WireConnection;118;0;162;0
WireConnection;118;1;126;0
WireConnection;118;2;117;0
WireConnection;119;0;199;0
WireConnection;119;1;195;0
WireConnection;128;0;118;0
WireConnection;128;1;120;0
WireConnection;128;2;127;0
WireConnection;144;0;143;0
WireConnection;123;3;121;1
WireConnection;156;0;199;0
WireConnection;156;1;193;0
WireConnection;145;3;144;3
WireConnection;122;0;128;0
WireConnection;122;1;119;0
WireConnection;122;2;123;0
WireConnection;149;3;144;2
WireConnection;148;0;122;0
WireConnection;148;1;156;0
WireConnection;148;2;145;0
WireConnection;155;0;199;0
WireConnection;155;1;192;0
WireConnection;150;3;144;1
WireConnection;37;0;77;0
WireConnection;9;0;10;4
WireConnection;154;0;199;0
WireConnection;154;1;191;0
WireConnection;151;0;148;0
WireConnection;151;1;155;0
WireConnection;151;2;149;0
WireConnection;71;3;37;3
WireConnection;16;0;9;0
WireConnection;153;0;151;0
WireConnection;153;1;154;0
WireConnection;153;2;150;0
WireConnection;583;0;199;0
WireConnection;583;1;74;0
WireConnection;17;1;9;0
WireConnection;17;2;25;0
WireConnection;17;3;26;0
WireConnection;17;4;18;1
WireConnection;17;5;18;2
WireConnection;574;0;17;0
WireConnection;73;0;153;0
WireConnection;73;1;583;0
WireConnection;73;2;71;0
WireConnection;582;0;199;0
WireConnection;582;1;75;0
WireConnection;576;0;16;0
WireConnection;67;3;37;2
WireConnection;69;0;73;0
WireConnection;69;1;582;0
WireConnection;69;2;67;0
WireConnection;581;0;199;0
WireConnection;581;1;41;0
WireConnection;63;3;37;1
WireConnection;575;0;576;0
WireConnection;573;0;574;0
WireConnection;578;0;573;0
WireConnection;62;0;69;0
WireConnection;62;1;581;0
WireConnection;62;2;63;0
WireConnection;577;0;575;0
WireConnection;322;0;325;0
WireConnection;322;1;324;0
WireConnection;322;2;150;0
WireConnection;64;0;62;0
WireConnection;64;1;578;0
WireConnection;64;2;577;0
WireConnection;325;0;321;0
WireConnection;325;1;320;0
WireConnection;325;2;149;0
WireConnection;316;0;319;0
WireConnection;316;1;318;0
WireConnection;316;2;123;0
WireConnection;306;0;322;0
WireConnection;306;1;307;0
WireConnection;306;2;71;0
WireConnection;321;0;328;0
WireConnection;321;1;323;0
WireConnection;321;2;145;0
WireConnection;315;1;317;0
WireConnection;315;2;117;0
WireConnection;327;0;334;0
WireConnection;327;1;329;0
WireConnection;327;2;117;0
WireConnection;302;0;304;0
WireConnection;302;1;303;0
WireConnection;302;2;63;0
WireConnection;328;0;331;0
WireConnection;328;1;330;0
WireConnection;328;2;123;0
WireConnection;332;0;336;0
WireConnection;332;1;335;0
WireConnection;332;2;158;0
WireConnection;331;0;327;0
WireConnection;331;1;326;0
WireConnection;331;2;127;0
WireConnection;340;0;338;0
WireConnection;340;1;339;0
WireConnection;340;2;213;0
WireConnection;319;0;315;0
WireConnection;319;1;314;0
WireConnection;319;2;127;0
WireConnection;334;0;332;0
WireConnection;334;1;333;0
WireConnection;334;2;157;0
WireConnection;336;0;340;0
WireConnection;336;1;337;0
WireConnection;336;2;165;0
WireConnection;584;1;316;0
WireConnection;579;0;252;0
WireConnection;338;0;342;0
WireConnection;338;1;341;0
WireConnection;338;2;216;0
WireConnection;342;1;343;0
WireConnection;342;2;215;0
WireConnection;304;0;306;0
WireConnection;304;1;305;0
WireConnection;304;2;67;0
WireConnection;585;1;302;0
WireConnection;601;0;64;0
WireConnection;601;3;584;0
WireConnection;601;4;585;0
WireConnection;601;5;579;0
ASEEND*/
//CHKSM=E38C5F90C4FD4ECFD55CF5E4E4935ED87FC8317C