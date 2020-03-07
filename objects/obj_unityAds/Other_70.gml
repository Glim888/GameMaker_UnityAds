/// @desc get Callbacks from UnityAds

if (ds_exists(async_load, ds_type_map)) {

	// get UnityAds_type
	var _type = ds_map_find_value(async_load, "UnityAds_type");
	show_debug_message(_type);
	
	// is there is no type (undefined)-> return
	if (is_undefined(_type)) return;
	
	switch (_type) {
	
		case "onUnityAdsReady": 
		
			// find placementID (it can be the rewarded or the interstitial ID)
			var _placement = ds_map_find_value(async_load, "UnityAds_placementID");
					
			// if there is no placementID -> return
			if (is_undefined(_placement)) return;
			
			// interstitialReady flag is set to true, if: 
			// interstitialReady is still true OR
			// the placementID is myInterstitialID
			//
			// for the rewardReady its the same, except that we check for myRewardedID
			// see here: https://docs2.yoyogames.com/source/_build/1_overview/3_additional_information/bitwise_operators.html
			
			global.interstitialReady |= _placement == myInterstitialID;
			global.rewardReady |= _placement == myRewardedID;
		
		break;
		
		case "onUnityAdsStart": show_debug_message ("Ads starts"); break;
		
		case "onUnityAdsFinish": 
		
			// see onUnityAdsReady for explanation
			var _placement = ds_map_find_value(async_load, "UnityAds_placementID");
			var _finishState = ds_map_find_value(async_load, "UnityAds_finishState");
			if (is_undefined(_placement) || is_undefined(_finishState)) return;
			
			// if the placementID is e.g. myInterstitialID then we know that a interstitial video was show -> so we set the flag to false
			global.interstitialReady = _placement == myInterstitialID ? false : global.interstitialReady;
			global.rewardReady = _placement == myRewardedID ? false : global.rewardReady;
			
			show_debug_message("Unity Ads has shown: " + _placement)
			
			// these 3 Callbacks you can get
			if (_finishState == FinishState_COMPLETED) { show_debug_message ("FinishState_COMPLETED"); }
			if (_finishState == FinishState_SKIPPED) { show_debug_message ("FinishState_SKIPPED"); }
			if (_finishState == FinishState_ERROR) { show_debug_message ("FinishState_ERROR"); }
		
		
		break;
		case "onUnityAdsError": 
		
			// see onUnityAdsReady for explanation
			var _error = ds_map_find_value(async_load, "UnityAds_error");
			var _message = ds_map_find_value(async_load, "UnityAds_message");
			if (is_undefined(_error) || is_undefined(_message)) return;
		
			// these 10 Callbacks you can get
			if (_finishState == UnityAdsError_NOT_INITIALIZED) {show_debug_message ("UnityAdsError_NOT_INITIALIZED");}
			if (_finishState == UnityAdsError_kINITIALIZE_FAILED) {show_debug_message ("UnityAdsError_kINITIALIZE_FAILED");}
			if (_finishState == UnityAdsError_INVALID_ARGUMENT) {show_debug_message ("UnityAdsError_INVALID_ARGUMENT");}
			if (_finishState == UnityAdsError_VIDEO_PLAYER_ERROR) {show_debug_message ("UnityAdsError_VIDEO_PLAYER_ERROR");}
			if (_finishState == UnityAdsError_INIT_SANITY_CHECK_FAIL) {show_debug_message ("UnityAdsError_INIT_SANITY_CHECK_FAIL");}
			if (_finishState == UnityAdsError_AD_BLOCKER_DETECTED) {show_debug_message ("UnityAdsError_AD_BLOCKER_DETECTED");}
			if (_finishState == UnityAdsError_FILE_IO_ERROR) {show_debug_message ("UnityAdsError_FILE_IO_ERROR");}
			if (_finishState == UnityAdsError_DEVICE_ID_ERROR) {show_debug_message ("UnityAdsError_DEVICE_ID_ERROR");}
			if (_finishState == UnityAdsError_SHOW_ERROR) {show_debug_message ("UnityAdsError_SHOW_ERROR");}
			if (_finishState == UnityAdsError_INTERNAL_ERROR) {show_debug_message ("UnityAdsError_INTERNAL_ERROR");}
		
		break;
	
	}

}
