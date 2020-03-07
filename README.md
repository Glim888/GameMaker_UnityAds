# Unity Ads for GameMaker Studio 2 (March 2020) - very simple

This small extension, which lets you show UnityAds ads in your Android App.

## Installation



```bash
Just clone this repository, or download the .zip file. 
a) In the downloaded folder you will find UnityAds.yymp. You can import this package.
b) Or you open the downloaded project in GMS. 
```

## Usage

Init UnityAds:
```cpp
myInterstitialID = "video"; // by default its video
myRewardedID = "rewardedVideo"; // by default its rewardedVideo

UnityAds_Init("YOUR GAME ID", myRewardedID, myInterstitialID, true);
```

Show Rewarded Ad or Interstitial:
```
UnityAds_DisplayReward();
UnityAds_DisplayInterstitial();
```

Wait for callbacks:
``` 
look into obj_unityAds -> social Event for more infos
```
