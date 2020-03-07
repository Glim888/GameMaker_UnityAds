package ${YYAndroidPackageName};

//Game Maker Studio 2 Packages
import ${YYAndroidPackageName}.R;
import com.yoyogames.runner.RunnerJNILib;
import ${YYAndroidPackageName}.RunnerActivity;

//Android Packages
import java.lang.String;
import android.app.Activity;
import android.os.Bundle;
import android.content.Intent;
import android.util.Log;
import android.content.Context;


// Mediation
import com.unity3d.ads.IUnityAdsListener;
import com.unity3d.ads.UnityAds;


public class UnityAdsExtention {


    String interstitialID, rewardedID;
    boolean isTest = false;

    public void Init(String unityGameID, String rewardedID, String interstitialID, double isTest) {

        this.interstitialID = interstitialID;
        this.rewardedID = rewardedID;
        this.isTest = isTest >= 1;

        final UnityAdsListener myAdsListener = new UnityAdsListener ();
        UnityAds.initialize (RunnerActivity.CurrentActivity, unityGameID, myAdsListener,  this.isTest);
        Log.i("yoyo", "UnityAds init done");

    }

    public void DisplayReward() {

        if (UnityAds.isReady (rewardedID)) {     
            UnityAds.show (RunnerActivity.CurrentActivity, rewardedID);
        }else{
            Log.i("yoyo", "UnityAds Reward not loeaded yet!");
        }
    }

    public void DisplayInterstitial () {
        if (UnityAds.isReady (interstitialID)) {
            Log.i("yoyo", interstitialID);
            UnityAds.show (RunnerActivity.CurrentActivity, interstitialID);                 
        }else{
            Log.i("yoyo", "UnityAds Interstitial not loeaded yet!");
        }
    }

    // Implement the IUnityAdsListener interface methods:
    private class UnityAdsListener implements IUnityAdsListener {

        @Override
        public void onUnityAdsReady (String placementId) {
            int dsMapIndex = RunnerJNILib.jCreateDsMap(null, null, null);
            RunnerJNILib.DsMapAddString(dsMapIndex, "UnityAds_type", "onUnityAdsReady");
            RunnerJNILib.DsMapAddString(dsMapIndex, "UnityAds_placementID", placementId);
            RunnerJNILib.CreateAsynEventWithDSMap(dsMapIndex, 70);

        }

        @Override
        public void onUnityAdsStart (String placementId) {
            int dsMapIndex = RunnerJNILib.jCreateDsMap(null, null, null);
            RunnerJNILib.DsMapAddString(dsMapIndex, "UnityAds_type", "onUnityAdsStart");
            RunnerJNILib.DsMapAddString(dsMapIndex, "UnityAds_placementID", placementId);
            RunnerJNILib.CreateAsynEventWithDSMap(dsMapIndex, 70);
        }

        @Override
        public void onUnityAdsFinish (String placementId, UnityAds.FinishState finishState) {

            int dsMapIndex = RunnerJNILib.jCreateDsMap(null, null, null);
            RunnerJNILib.DsMapAddString(dsMapIndex, "UnityAds_type", "onUnityAdsFinish");
            RunnerJNILib.DsMapAddString(dsMapIndex, "UnityAds_placementID", placementId);
            RunnerJNILib.DsMapAddString(dsMapIndex, "UnityAds_finishState", finishState.toString());
            RunnerJNILib.CreateAsynEventWithDSMap(dsMapIndex, 70);
        }

        @Override
        public void onUnityAdsError (UnityAds.UnityAdsError error, String message) {

            int dsMapIndex = RunnerJNILib.jCreateDsMap(null, null, null);
            RunnerJNILib.DsMapAddString(dsMapIndex, "UnityAds_type", "onUnityAdsError");
            RunnerJNILib.DsMapAddString(dsMapIndex, "UnityAds_error", error.toString());
            RunnerJNILib.DsMapAddString(dsMapIndex, "UnityAds_message", message);
            RunnerJNILib.CreateAsynEventWithDSMap(dsMapIndex, 70);
        }
    }
 
}
