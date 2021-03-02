.class public Lcom/unity3d/ads/android/data/UnityAdsDevice;
.super Ljava/lang/Object;
.source "UnityAdsDevice.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x9
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAdvertisingTrackingId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    invoke-static {}, Lcom/unity3d/ads/android/data/UnityAdsAdvertisingId;->getAdvertisingTrackingId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAndroidId(Z)Ljava/lang/String;
    .locals 4
    .param p0, "md5hashed"    # Z
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .prologue
    .line 44
    :try_start_0
    sget-object v2, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->APPLICATION_CONTEXT:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "android_id"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, "androidID":Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 47
    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsUtils;->Md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 48
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 56
    :cond_0
    :goto_0
    return-object v0

    .line 51
    .end local v0    # "androidID":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 52
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Problems fetching androidId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    .line 53
    const-string v0, "unknown"

    .restart local v0    # "androidID":Ljava/lang/String;
    goto :goto_0
.end method

.method public static getConnectionType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    invoke-static {}, Lcom/unity3d/ads/android/data/UnityAdsDevice;->isUsingWifi()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    const-string v0, "wifi"

    .line 72
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "cellular"

    goto :goto_0
.end method

.method public static getDeviceType()I
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->APPLICATION_CONTEXT:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    return v0
.end method

.method public static getHardwareVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNetworkType()I
    .locals 3

    .prologue
    .line 96
    sget-object v1, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->APPLICATION_CONTEXT:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 98
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    return v1
.end method

.method public static getPackageDataJson(Ljava/util/Map;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p0, "whitelist":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 142
    invoke-static {p0}, Lcom/unity3d/ads/android/data/UnityAdsDevice;->getPackageJsonArray(Ljava/util/Map;)Lorg/json/JSONArray;

    move-result-object v1

    .line 143
    .local v1, "packages":Lorg/json/JSONArray;
    if-nez v1, :cond_0

    .line 151
    :goto_0
    return-object v3

    .line 145
    :cond_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 147
    .local v2, "wrapper":Lorg/json/JSONObject;
    :try_start_0
    const-string v4, "games"

    invoke-virtual {v2, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 148
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 149
    :catch_0
    move-exception v0

    .line 150
    .local v0, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception in getPackageDataJson"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static getPackageJsonArray(Ljava/util/Map;)Lorg/json/JSONArray;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .prologue
    .line 110
    .local p0, "whitelist":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v7

    if-nez v7, :cond_2

    :cond_0
    const/4 v4, 0x0

    .line 138
    :cond_1
    return-object v4

    .line 112
    :cond_2
    sget-object v7, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->APPLICATION_CONTEXT:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 113
    .local v6, "pm":Landroid/content/pm/PackageManager;
    const/4 v4, 0x0

    .line 115
    .local v4, "pkgList":Lorg/json/JSONArray;
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    .line 117
    .local v3, "pkg":Landroid/content/pm/PackageInfo;
    :try_start_0
    iget-object v8, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    if-eqz v8, :cond_3

    iget-object v8, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_3

    .line 118
    iget-object v8, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v8}, Lcom/unity3d/ads/android/UnityAdsUtils;->Md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 120
    .local v2, "md5pkg":Ljava/lang/String;
    invoke-interface {p0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 121
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 124
    .local v1, "jsonEntry":Lorg/json/JSONObject;
    const-string v8, "id"

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 125
    iget-wide v8, v3, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-lez v8, :cond_4

    .line 126
    const-string v8, "timestamp"

    iget-wide v10, v3, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    invoke-virtual {v1, v8, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 129
    :cond_4
    if-nez v4, :cond_5

    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .end local v4    # "pkgList":Lorg/json/JSONArray;
    .local v5, "pkgList":Lorg/json/JSONArray;
    move-object v4, v5

    .line 130
    .end local v5    # "pkgList":Lorg/json/JSONArray;
    .restart local v4    # "pkgList":Lorg/json/JSONArray;
    :cond_5
    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 133
    .end local v1    # "jsonEntry":Lorg/json/JSONObject;
    .end local v2    # "md5pkg":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 134
    .local v0, "e":Ljava/lang/Exception;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception when processing package "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getScreenDensity()I
    .locals 1

    .prologue
    .line 102
    sget-object v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->APPLICATION_CONTEXT:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    return v0
.end method

.method public static getScreenSize()I
    .locals 1

    .prologue
    .line 106
    invoke-static {}, Lcom/unity3d/ads/android/data/UnityAdsDevice;->getDeviceType()I

    move-result v0

    return v0
.end method

.method public static getSoftwareVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isActiveNetworkConnected()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 157
    sget-object v3, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->APPLICATION_CONTEXT:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 159
    .local v1, "cm":Landroid/net/ConnectivityManager;
    if-eqz v1, :cond_0

    .line 160
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 161
    .local v0, "activeNetwork":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 164
    .end local v0    # "activeNetwork":Landroid/net/NetworkInfo;
    :cond_0
    return v2
.end method

.method public static isLimitAdTrackingEnabled()Z
    .locals 1

    .prologue
    .line 64
    invoke-static {}, Lcom/unity3d/ads/android/data/UnityAdsAdvertisingId;->getLimitedAdTracking()Z

    move-result v0

    return v0
.end method

.method public static isUsingWifi()Z
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 79
    sget-object v6, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->APPLICATION_CONTEXT:Landroid/content/Context;

    const-string v7, "connectivity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 80
    .local v1, "mConnectivity":Landroid/net/ConnectivityManager;
    if-nez v1, :cond_1

    .line 92
    :cond_0
    :goto_0
    return v5

    .line 83
    :cond_1
    sget-object v6, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->APPLICATION_CONTEXT:Landroid/content/Context;

    const-string v7, "phone"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 86
    .local v2, "mTelephony":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 87
    .local v0, "info":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getBackgroundDataSetting()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_0

    if-eqz v2, :cond_0

    .line 91
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    .line 92
    .local v3, "netType":I
    if-ne v3, v4, :cond_2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_2

    :goto_1
    move v5, v4

    goto :goto_0

    :cond_2
    move v4, v5

    goto :goto_1
.end method
