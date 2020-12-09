# ALPHONSO SOFTWARE 

# Pattern Recognition



<br/>

<br/>

<br/>





## Known applications still on the Market

- Baseball shots (com.augmentedreality.gp.baseball) - Augmented Reality Games
  https://apkpure.com/baseball-slugfest-mspo-edition/com.augmentedreality.gp.baseballslugfestmsportsedition

- Basketball 3D (com.dumadugames.basketball.apk) - Dumadu Games / Chameleo Studio
  https://apkpure.com/basketball-3d/com.dumadugames.basketball

- Slog Cricket (com.dumadugames.gp.slogcricket ) - Dumadu Games / Chameleo Studio
  https://apkpure.com/slog-cricket/com.dumadugames.gp.slogcricket

- Impossible Escape 3D (Dumandu Games)

- Slot Machine+ (com.apostek.SlotMachine) - Apostek Software LLP
  https://apkpure.com/slot-machine-free-casino/com.apostek.SlotMachine

- Extreme Racing with Beats 3D (com.dumadugames.extremeracing) - Dumadu Games
  https://play.google.com/store/apps/details?id=com.dumadugames.extremeracing&hl=fr&gl=US

- Stunt Biker Extreme Trials (Dumadu Games)

- Honey Quest (com.dumadugames.honeyquest) - Dumadu Games
  https://apkpure.com/honey-quest/com.dumadugames.honeyquest

  



<br/>

<br/>

<br/>



## VirusTotal detection

Detected as `Android Privacy Risk Alphonso (PUA)` by Sophos.

Detected as `PUA.AndroidOS.Inmobi` by Ikarus (depends on the advertisers used).

Detected as `AdLibrary:MoPub` by Symantec  (depends on the advertisers used).

Detected as `Adware/AdColony!Android` by Fortinet  (depends on the advertisers used).



<br/>

<br/>

<br/>



## AndroidManifest.xml Categorization

All the applications using Alphonso Software share an equivalent set of permissions.
Also they all possess the same **Alphonso service**.



![ALPHONSO_AndroidManifest](/Images/ALPHONSO_AndroidManifest.png)



**Minimal set of permissions**

```java
<uses-permission android:name="android.permission.INTERNET"/>
<uses-permission android:name="android.permission.ACCESS_NETWORK_STATE"/>
<uses-permission android:name="com.android.vending.BILLING"/>
<uses-permission android:name="android.permission.RECORD_AUDIO"/>
<uses-permission android:name="android.permission.ACCESS_FINE_LOCATION"/>
<uses-permission android:name="android.permission.ACCESS_COARSE_LOCATION"/>
<uses-permission android:name="android.permission.INTERNET"/> 									(2nd time)
<uses-permission android:name="android.permission.WRITE_EXTERNAL_STORAGE"/>     (2nd time)
<uses-permission android:name="android.permission.ACCESS_NETWORK_STATE"/>
<uses-permission android:name="android.permission.WAKE_LOCK"/>
<uses-permission android:name="android.permission.READ_PHONE_STATE"/>
<uses-permission android:name="android.permission.READ_EXTERNAL_STORAGE"/>
<uses-permission android:name="com.google.android.c2dm.permission.RECEIVE"/>
<uses-permission android:name="com.dumadugames.xxxxxxxxxx.permission.C2D_MESSAGE"/>
```

**Additional permisions**

```java
<uses-permission android:name="android.permission.VIBRATE"/>
<uses-permission android:name="com.samsung.android.providers.context.permission. WRITE_USE_APP_FEATURE_SURVEY"/>
<uses-permission android:name="android.permission.ACCESS_WIFI_STATE"/>
<uses-permission android:name="android.permission.RECEIVE_BOOT_COMPLETED"/>
<uses-permission android:name="android.permission.GET_TASKS"/>      
```

**Alphonso Service**

```Java
<service android:name="tv.alphonso.service.AlphonsoService"android:process="tv.alphonso.service">
				<intent-filter>
        				<action android:name="tv.alphonso.service.AlphonsoService"/>
        </intent-filter>
</service>
```



**InMobi Broadcast Receiver**

```Java
<receiver android:name="com.inmobi.commons.core.utilities.uid.ImIdShareBroadCastReceiver" android:enabled="true" android:exported="true">
          <intent-filter>
                <action android:name="com.inmobi.share.id"/>
          </intent-filter>
</receiver>
```



<br/>

<br/>

<br/>







