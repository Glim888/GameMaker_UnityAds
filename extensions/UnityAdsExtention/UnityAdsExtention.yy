{
    "id": "1f678d1e-04d9-48b4-a350-3ceceda9f0f6",
    "modelName": "GMExtension",
    "mvc": "1.2",
    "name": "UnityAdsExtention",
    "IncludedResources": [
        
    ],
    "androidPermissions": [
        "android.permission.INTERNET",
        "android.permission.ACCESS_NETWORK_STATE"
    ],
    "androidProps": true,
    "androidactivityinject": "",
    "androidclassname": "UnityAdsExtention",
    "androidinject": "   <activity\\u000d\\u000a            android:name=\"com.unity3d.services.ads.adunit.AdUnitActivity\"\\u000d\\u000a            android:configChanges=\"fontScale|keyboard|keyboardHidden|locale|mnc|mcc|navigation|orientation|screenLayout|screenSize|smallestScreenSize|uiMode|touchscreen\"\\u000d\\u000a            android:hardwareAccelerated=\"true\"\\u000d\\u000a            android:theme=\"@android:style\/Theme.NoTitleBar.Fullscreen\" \/>\\u000d\\u000a        <activity\\u000d\\u000a            android:name=\"com.unity3d.services.ads.adunit.AdUnitTransparentActivity\"\\u000d\\u000a            android:configChanges=\"fontScale|keyboard|keyboardHidden|locale|mnc|mcc|navigation|orientation|screenLayout|screenSize|smallestScreenSize|uiMode|touchscreen\"\\u000d\\u000a            android:hardwareAccelerated=\"true\"\\u000d\\u000a            android:theme=\"@android:style\/Theme.Translucent.NoTitleBar.Fullscreen\" \/>\\u000d\\u000a        <activity\\u000d\\u000a            android:name=\"com.unity3d.services.ads.adunit.AdUnitTransparentSoftwareActivity\"\\u000d\\u000a            android:configChanges=\"fontScale|keyboard|keyboardHidden|locale|mnc|mcc|navigation|orientation|screenLayout|screenSize|smallestScreenSize|uiMode|touchscreen\"\\u000d\\u000a            android:hardwareAccelerated=\"false\"\\u000d\\u000a            android:theme=\"@android:style\/Theme.Translucent.NoTitleBar.Fullscreen\" \/>\\u000d\\u000a        <activity\\u000d\\u000a            android:name=\"com.unity3d.services.ads.adunit.AdUnitSoftwareActivity\"\\u000d\\u000a            android:configChanges=\"fontScale|keyboard|keyboardHidden|locale|mnc|mcc|navigation|orientation|screenLayout|screenSize|smallestScreenSize|uiMode|touchscreen\"\\u000d\\u000a            android:hardwareAccelerated=\"false\"\\u000d\\u000a            android:theme=\"@android:style\/Theme.NoTitleBar.Fullscreen\" \/>",
    "androidmanifestinject": "",
    "androidsourcedir": "",
    "author": "",
    "classname": "",
    "copyToTargets": -1,
    "date": "2020-23-06 07:03:26",
    "description": "",
    "exportToGame": true,
    "extensionName": "",
    "files": [
        {
            "id": "b8df2e86-6dfd-468c-a90e-0775a32ec966",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                {
                    "id": "db7c24b8-f875-4472-ae15-ea52c3eeb442",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "FinishState_ERROR",
                    "hidden": false,
                    "value": "\"ERROR\""
                },
                {
                    "id": "d1a1de74-7045-444e-a358-edee2c0ccd5f",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "FinishState_SKIPPED",
                    "hidden": false,
                    "value": "\"SKIPPED\""
                },
                {
                    "id": "fc5447e0-5346-40d1-a4d0-b285c19ecbef",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "FinishState_COMPLETED",
                    "hidden": false,
                    "value": "\"COMPLETED\""
                },
                {
                    "id": "755bcbcc-7b4e-4fd8-88da-67062f6c6b9e",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "UnityAdsError_NOT_INITIALIZED",
                    "hidden": false,
                    "value": "\"NOT_INITIALIZED\""
                },
                {
                    "id": "975e6d89-f954-4f81-b345-078458b78917",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "UnityAdsError_kINITIALIZE_FAILED",
                    "hidden": false,
                    "value": "\"kINITIALIZE_FAILED\""
                },
                {
                    "id": "224184d5-6aad-41a9-9908-caa402f3ef06",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "UnityAdsError_INVALID_ARGUMENT",
                    "hidden": false,
                    "value": "\"INVALID_ARGUMENT\""
                },
                {
                    "id": "613d33fb-66fb-43db-a50a-3de3dc64ce0f",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "UnityAdsError_VIDEO_PLAYER_ERROR",
                    "hidden": false,
                    "value": "\"VIDEO_PLAYER_ERROR\""
                },
                {
                    "id": "a90cdd0f-6504-4fa2-8f3b-3678cd862206",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "UnityAdsError_INIT_SANITY_CHECK_FAIL",
                    "hidden": false,
                    "value": "\"INIT_SANITY_CHECK_FAIL\""
                },
                {
                    "id": "e71f6787-9d31-4a7f-837f-053f9ff8c59a",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "UnityAdsError_AD_BLOCKER_DETECTED",
                    "hidden": false,
                    "value": "\"AD_BLOCKER_DETECTED\""
                },
                {
                    "id": "5cb5352c-d6e0-49dc-8699-3ff9bba2739f",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "UnityAdsError_FILE_IO_ERROR",
                    "hidden": false,
                    "value": "\"FILE_IO_ERROR\""
                },
                {
                    "id": "bd57a544-de49-45ac-97a2-98322f2a48b9",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "UnityAdsError_DEVICE_ID_ERROR",
                    "hidden": false,
                    "value": "\"DEVICE_ID_ERROR\""
                },
                {
                    "id": "f97d4265-d8b5-4138-be2d-d8a8f0e89076",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "UnityAdsError_SHOW_ERROR",
                    "hidden": false,
                    "value": "\"SHOW_ERROR\""
                },
                {
                    "id": "82d2f66a-aee6-41b8-870f-994df7dc777b",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "UnityAdsError_INTERNAL_ERROR",
                    "hidden": false,
                    "value": "\"INTERNAL_ERROR\""
                }
            ],
            "copyToTargets": -1,
            "filename": "UnityAdsExtention.ext",
            "final": "",
            "functions": [
                {
                    "id": "29de9cd8-f178-4e25-9d47-f79159e9cf79",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        1,
                        1,
                        1,
                        2
                    ],
                    "externalName": "Init",
                    "help": "UnityAds_init(String unityGameID, String rewardedID, String interstitialID, double isTest)",
                    "hidden": false,
                    "kind": 4,
                    "name": "UnityAds_Init",
                    "returnType": 1
                },
                {
                    "id": "5e08229c-6b79-4c0c-867c-6753e612a760",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "DisplayReward",
                    "help": "DisplayReward()",
                    "hidden": false,
                    "kind": 4,
                    "name": "UnityAds_DisplayReward",
                    "returnType": 1
                },
                {
                    "id": "13ec7d06-0038-4fec-a429-f3ee2baaa843",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "DisplayInterstitial",
                    "help": "DisplayInterstitial()",
                    "hidden": false,
                    "kind": 4,
                    "name": "UnityAds_DisplayInterstitial",
                    "returnType": 1
                }
            ],
            "init": "",
            "kind": 4,
            "order": [
                "29de9cd8-f178-4e25-9d47-f79159e9cf79",
                "5e08229c-6b79-4c0c-867c-6753e612a760",
                "13ec7d06-0038-4fec-a429-f3ee2baaa843"
            ],
            "origname": "",
            "uncompress": false
        }
    ],
    "gradleinject": "",
    "helpfile": "",
    "installdir": "",
    "iosProps": false,
    "iosSystemFrameworkEntries": [
        
    ],
    "iosThirdPartyFrameworkEntries": [
        
    ],
    "iosdelegatename": "",
    "iosplistinject": "",
    "license": "",
    "maccompilerflags": "",
    "maclinkerflags": "",
    "macsourcedir": "",
    "options": null,
    "optionsFile": "options.json",
    "packageID": "",
    "productID": "",
    "sourcedir": "",
    "supportedTargets": -1,
    "tvosProps": false,
    "tvosSystemFrameworkEntries": [
        
    ],
    "tvosThirdPartyFrameworkEntries": [
        
    ],
    "tvosclassname": "",
    "tvosdelegatename": "",
    "tvosmaccompilerflags": "",
    "tvosmaclinkerflags": "",
    "tvosplistinject": "",
    "version": "0.0.1"
}
