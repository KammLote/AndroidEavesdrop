## Baseball Strike



**Package: **com.augmentedreality.gp.baseball

**Version:** 1.0.4



## Static Analysis

Packages: *android.support, bitter.jnibridge, com, dagger, javax.inject, org.fmob, rrrrrr, tv.alphonso*



Presence of a **JNI Bridge**  (*genuine*)
Java Native Interface enables to executes code from other language inside the APK. 
Used to implement **Unity** games.

Presence of **Dagger **+ **javax.inject**(*genuine*)
Dependency Injector. Take the dependencies of a class and provide them rather than having the class instance obtain them itself.



**org.fmod**
Responsable of recording Audio
``` import android.media.AudioRecord; ```

**(Immersion) rrrrrrr**
Haptic playback



#### **com.immobi**
Ad containers ?? Investigate on that
Uses google Activity Recognition Manager
Uses ACCESS_WIFI_STATE permission to scan Wifi
**carb ??**

#### **com.jirbo.adcolony**

#### com.mopub

#### com.unity3d

#### com.mopub







### BASEBALL Implementation

`implements RewardedVideoAdListener`

#### RemoveAds Token - InterstitialAd

Token called `Baseball.RemoveAds` set to False at the beginning. 
(TO CONFIRM) Set to True if a purchased has been done.



This is implemented in a listener `AdListener`, from the google **AdMob** Library **InterstitialAd**

```java
if (!Baseball.RemovedAds) {
	Baseball.this.loadInterstitialAd();
	}
```

```   java
if (!Baseball.RemovedAds) {
		Baseball.analyticsEvent("Ads_Total Interstitial requests from game_Total Interstitial  	  requests from game", (Activity) null);
		if (Baseball.this.interstitial.isLoaded()) {
				Baseball.this.interstitial.show();
		} else {
				Baseball.this.loadInterstitialAd();
		}
}
```

Calls the function `loadInterstitialAd()`

``` java
public void loadInterstitialAd() { 
    if ((!this.interstitial.isLoading() || !this.interstitial.isLoaded()) && isNetworkAvailable()) {
    		this.interstitial.loadAd(new AdRequest.Builder().build());
    }
}
```

Requests for an Ad with `AdRequest.Builder()`







#### mRewardedVideoAd

In App advertisement rewards

```java
public void loadRewardedVideoAd() {
        if (!this.mRewardedVideoAd.isLoaded()) {
            Bundle extras = new Bundle();
            extras.putBoolean("_noRefresh", true);
            this.mRewardedVideoAd.loadAd(getString(R.string.admob_rewarded_video), new AdRequest.Builder().addNetworkExtrasBundle(AdMobAdapter.class, extras).build());
        }
    }
```





#### Alphonso Flag

`boolean alphonsoFlag;`

#### Alphonso + Mic Status

`this.sharedpreferences = getSharedPreferences("AlphonsoMicStatus", 0);`

First thing the activity does when started is **checking if Audio Recording is permitted**, and **setting up Alphonso Service** (and then load an Ad)



``` java
# CHECKING RecordAudio PERMISSIONS 
  
private static boolean checkPermission_RecordAudio() {
 	if (ContextCompat.checkSelfPermission(activity, "android.permission.RECORD_AUDIO") == 0) {
  	return true;
  }	
    return false;
}
```

```java
public void requestMicPermission() {
        if (!checkPermission_RecordAudio()) {
            ActivityCompat.requestPermissions(activity, new String[] {"android.permission.RECORD_AUDIO"}, 1);
        }
    }
```

If the Record_Audio permission is not granted, it requests it. If it is granted, it setups/starts Alphonso Service. 

*"AlphonsoService cannot be instantiated without microphone permissions"*
*"This app uses audio to detect TV ads and content and shows appropriate mobile ads"*
*"This App Would Like to Access the Microphone"*





```java
# START/STOP ALPHONSO SERVICE according to RecordAudio PERMISSIONS
  
if (checkPermission_RecordAudio()) {
		if (this.sharedpreferences.getBoolean(KEY_OPTOUT_CLICK, false)) {
				setupAlphonsoService();
    } else if (alphonsServiceInitialized) {
    		stopAlphonsoService();
    } else {
    		setOptoutOption(true);
    }
}
```

``` java
# SETUP ALPHONSO SERVICE
  
public void setupAlphonsoService() {
        if (!this.alphonsoFlag) {
            try {
                String API_KEY = getString(R.string.alphonso_key_playstore);
                ASAPI.init(API_KEY, this, getResultReceiver(), true);
                this.alphonsoFlag = true;
                Log.e("alphonso", "Key used" + API_KEY);
            } catch (Exception e) {
                Log.e("callback", "Exception: " + e);
                e.printStackTrace();
            }
        } else {
            Toast.makeText(this, "iniatialization inprogress", 0).show();
        }
    }
```

```java
# START ALPHONSO SERVICE

public void startAlphonsoService() {
        try {
            ASAPI.start(getIdentificationsReceiver());
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
```





#### Handle Messages

1. requestLocationPermission

2. run ()

3. setupAlphonsoService
4. stopAlphonsoService

5. *text*
6. Show **Interstitial** ads

7. Show Interstitial ads  +  exit 

12. Show **mRewardedVideoAd** ads (in App rewards)







#### Identification Receiver

Result Receivers, that contains the identified film/movie:

- Title *(log)*
- Date *(log)*
- Time *(log)*
- COMMERCIAL 
  - Title
  - Brand
  - Match_Offset ***key*** ?
- LIVE TV
  - Title
  - Network
  - Channel
  - TMS Info
    - Season Number
    - Episode number
    - Episode Title
  - Match_Offset
  - Live_Feed_Offset

```java
private ResultReceiver getIdentificationsReceiver() {
        if (this.mIdentificationReceiver == null) {
            this.mIdentificationReceiver = new ResultReceiver(new Handler()) {
                /* access modifiers changed from: protected */
                public void onReceiveResult(int resultCode, Bundle resultData) {
                    if (resultCode == 0) {
                        Log.e("callback", "title: " + resultData.getString("title"));
                        Log.e("callback", "date: " + resultData.getString("date"));
                        Log.e("callback", "time: " + resultData.getString("time"));
                        StringBuffer buf = new StringBuffer();
                        if (resultData.getString("type").equals("commercial")) {
                            buf.append("Title: ");
                            buf.append(resultData.getString("title") + "\n");
                            Log.e("callback", "brand: " + resultData.getString("brand"));
                            buf.append("Brand: ");
                            buf.append(resultData.getString("brand") + "\n");
                            if (resultData.containsKey("match_offset")) {
                                Log.e("callback", "Match-Offset: " + resultData.getLong("match_offset"));
                                buf.append("Match-Offset: ");
                                buf.append(resultData.getLong("match_offset") + "ms\n");
                            }
                        } else if (resultData.getString("type").equals("livetv")) {
                            buf.append("Title: ");
                            buf.append(resultData.getString("title") + "\n");
                            if (resultData.containsKey("network")) {
                                Log.e("callback", "Network: " + resultData.getString("network"));
                                buf.append("Network: ");
                                buf.append(resultData.getString("network") + "\n");
                            }
                            Log.e("callback", "Channel: " + resultData.getString("channel"));
                            buf.append("Channel: ");
                            buf.append(resultData.getString("channel") + "\n");
                            if (resultData.containsKey("tms_info")) {
                                Log.e("callback", "tms_info: " + resultData.getString("tms_info"));
                                try {
                                    JSONObject jObj = new JSONObject(resultData.getString("tms_info"));
                                    if (jObj.has("seasonNum")) {
                                        Log.e("callback", "Season : " + jObj.getInt("seasonNum"));
                                        buf.append("Season : ");
                                        buf.append(jObj.getInt("seasonNum") + "\n");
                                    }
                                    if (jObj.has("episodeNum")) {
                                        Log.e("callback", "Episode : " + jObj.getInt("episodeNum"));
                                        buf.append("Episode : ");
                                        buf.append(jObj.getInt("episodeNum") + "\n");
                                    }
                                    if (jObj.has("episodeTitle")) {
                                        Log.e("callback", "Episode Title: " + jObj.getString("episodeTitle"));
                                        buf.append("Episode Title: ");
                                        buf.append(jObj.getString("episodeTitle") + "\n");
                                    }
                                } catch (JSONException e) {
                                    e.printStackTrace();
                                }
                            }
                            if (resultData.containsKey("match_offset")) {
                                Log.e("callback", "Match-Offset: " + resultData.getLong("match_offset"));
                                buf.append("Match-Offset: ");
                                buf.append(resultData.getLong("match_offset") + "ms\n");
                            }
                            if (resultData.containsKey("live_feed_offset")) {
                                Log.e("callback", "Live-Feed-Offset: " + resultData.getLong("live_feed_offset"));
                                buf.append("Live-Feed-Offset: ");
                                buf.append(resultData.getLong("live_feed_offset") + "ms\n");
                            }
                        }
                    }
                }
            };
        }
        return this.mIdentificationReceiver;
    }
```

