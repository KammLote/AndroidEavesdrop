.class public Lcom/unity3d/ads/android/data/UnityAdsAdvertisingId;
.super Ljava/lang/Object;
.source "UnityAdsAdvertisingId.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x9
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/ads/android/data/UnityAdsAdvertisingId$GoogleAdvertisingServiceConnection;,
        Lcom/unity3d/ads/android/data/UnityAdsAdvertisingId$GoogleAdvertisingInfo;
    }
.end annotation


# static fields
.field private static impl:Lcom/unity3d/ads/android/data/UnityAdsAdvertisingId;


# instance fields
.field private advertisingIdentifier:Ljava/lang/String;

.field private limitedAdvertisingTracking:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    sput-object v0, Lcom/unity3d/ads/android/data/UnityAdsAdvertisingId;->impl:Lcom/unity3d/ads/android/data/UnityAdsAdvertisingId;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unity3d/ads/android/data/UnityAdsAdvertisingId;->advertisingIdentifier:Ljava/lang/String;

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unity3d/ads/android/data/UnityAdsAdvertisingId;->limitedAdvertisingTracking:Z

    return-void
.end method

.method private fetchAdvertisingId(Landroid/app/Activity;)Z
    .locals 13
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    .line 54
    :try_start_0
    const-string v9, "com.google.android.gms.common.GooglePlayServicesUtil"

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 55
    .local v1, "GooglePlayServicesUtil":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v9, "isGooglePlayServicesAvailable"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Landroid/content/Context;

    aput-object v12, v10, v11

    invoke-virtual {v1, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 56
    .local v7, "isGooglePlayServicesAvailable":Ljava/lang/reflect/Method;
    const/4 v9, 0x0

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object p1, v10, v11

    invoke-virtual {v7, v9, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 57
    const-string v9, "com.google.android.gms.ads.identifier.AdvertisingIdClient"

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 58
    .local v0, "AdvertisingClientId":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v9, "getAdvertisingIdInfo"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Landroid/content/Context;

    aput-object v12, v10, v11

    invoke-virtual {v0, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 59
    .local v5, "getAdvertisingIdInfo":Ljava/lang/reflect/Method;
    const/4 v9, 0x0

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object p1, v10, v11

    invoke-virtual {v5, v9, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 61
    .local v3, "advertisingTrackingInfo":Ljava/lang/Object;
    const-string v9, "com.google.android.gms.ads.identifier.AdvertisingIdClient$Info"

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 62
    .local v2, "Info":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v9, "getId"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Class;

    invoke-virtual {v2, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 63
    .local v6, "getId":Ljava/lang/reflect/Method;
    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v6, v3, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    iput-object v9, p0, Lcom/unity3d/ads/android/data/UnityAdsAdvertisingId;->advertisingIdentifier:Ljava/lang/String;

    .line 65
    const-string v9, "isLimitAdTrackingEnabled"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Class;

    invoke-virtual {v2, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 66
    .local v8, "isLimitAdTrackingEnabled":Ljava/lang/reflect/Method;
    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v8, v3, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    iput-boolean v9, p0, Lcom/unity3d/ads/android/data/UnityAdsAdvertisingId;->limitedAdvertisingTracking:Z

    .line 68
    const/4 v9, 0x1

    .line 75
    .end local v0    # "AdvertisingClientId":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "GooglePlayServicesUtil":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "Info":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "advertisingTrackingInfo":Ljava/lang/Object;
    .end local v5    # "getAdvertisingIdInfo":Ljava/lang/reflect/Method;
    .end local v6    # "getId":Ljava/lang/reflect/Method;
    .end local v7    # "isGooglePlayServicesAvailable":Ljava/lang/reflect/Method;
    .end local v8    # "isLimitAdTrackingEnabled":Ljava/lang/reflect/Method;
    :goto_0
    return v9

    .line 70
    .restart local v1    # "GooglePlayServicesUtil":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v7    # "isGooglePlayServicesAvailable":Ljava/lang/reflect/Method;
    :cond_0
    const-string v9, "Google Play Services not integrated, using fallback"

    invoke-static {v9}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    const/4 v9, 0x0

    goto :goto_0

    .line 73
    .end local v1    # "GooglePlayServicesUtil":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "isGooglePlayServicesAvailable":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v4

    .line 74
    .local v4, "e":Ljava/lang/Exception;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception while trying to access Google Play Services "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 75
    const/4 v9, 0x0

    goto :goto_0
.end method

.method private fetchAdvertisingIdFallback(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    .line 82
    new-instance v1, Lcom/unity3d/ads/android/data/UnityAdsAdvertisingId$GoogleAdvertisingServiceConnection;

    const/4 v4, 0x0

    invoke-direct {v1, p0, v4}, Lcom/unity3d/ads/android/data/UnityAdsAdvertisingId$GoogleAdvertisingServiceConnection;-><init>(Lcom/unity3d/ads/android/data/UnityAdsAdvertisingId;Lcom/unity3d/ads/android/data/UnityAdsAdvertisingId$1;)V

    .line 83
    .local v1, "connection":Lcom/unity3d/ads/android/data/UnityAdsAdvertisingId$GoogleAdvertisingServiceConnection;
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.google.android.gms.ads.identifier.service.START"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 84
    .local v3, "localIntent":Landroid/content/Intent;
    const-string v4, "com.google.android.gms"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 85
    invoke-virtual {p1, v3, v1, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 87
    :try_start_0
    invoke-virtual {v1}, Lcom/unity3d/ads/android/data/UnityAdsAdvertisingId$GoogleAdvertisingServiceConnection;->getBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/unity3d/ads/android/data/UnityAdsAdvertisingId$GoogleAdvertisingInfo$GoogleAdvertisingInfoBinder;->Create(Landroid/os/IBinder;)Lcom/unity3d/ads/android/data/UnityAdsAdvertisingId$GoogleAdvertisingInfo;

    move-result-object v0

    .line 88
    .local v0, "advertisingInfo":Lcom/unity3d/ads/android/data/UnityAdsAdvertisingId$GoogleAdvertisingInfo;
    invoke-interface {v0}, Lcom/unity3d/ads/android/data/UnityAdsAdvertisingId$GoogleAdvertisingInfo;->getId()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/unity3d/ads/android/data/UnityAdsAdvertisingId;->advertisingIdentifier:Ljava/lang/String;

    .line 89
    const/4 v4, 0x1

    invoke-interface {v0, v4}, Lcom/unity3d/ads/android/data/UnityAdsAdvertisingId$GoogleAdvertisingInfo;->getEnabled(Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/unity3d/ads/android/data/UnityAdsAdvertisingId;->limitedAdvertisingTracking:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    invoke-virtual {p1, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 96
    .end local v0    # "advertisingInfo":Lcom/unity3d/ads/android/data/UnityAdsAdvertisingId$GoogleAdvertisingInfo;
    :cond_0
    :goto_0
    return-void

    .line 90
    :catch_0
    move-exception v2

    .line 91
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v4, "Couldn\'t get advertising info"

    invoke-static {v4}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    invoke-virtual {p1, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    goto :goto_0

    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-virtual {p1, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    throw v4
.end method

.method public static getAdvertisingTrackingId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    invoke-static {}, Lcom/unity3d/ads/android/data/UnityAdsAdvertisingId;->getImpl()Lcom/unity3d/ads/android/data/UnityAdsAdvertisingId;

    move-result-object v0

    iget-object v0, v0, Lcom/unity3d/ads/android/data/UnityAdsAdvertisingId;->advertisingIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method private static getImpl()Lcom/unity3d/ads/android/data/UnityAdsAdvertisingId;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/unity3d/ads/android/data/UnityAdsAdvertisingId;->impl:Lcom/unity3d/ads/android/data/UnityAdsAdvertisingId;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/unity3d/ads/android/data/UnityAdsAdvertisingId;

    invoke-direct {v0}, Lcom/unity3d/ads/android/data/UnityAdsAdvertisingId;-><init>()V

    sput-object v0, Lcom/unity3d/ads/android/data/UnityAdsAdvertisingId;->impl:Lcom/unity3d/ads/android/data/UnityAdsAdvertisingId;

    .line 33
    :cond_0
    sget-object v0, Lcom/unity3d/ads/android/data/UnityAdsAdvertisingId;->impl:Lcom/unity3d/ads/android/data/UnityAdsAdvertisingId;

    return-object v0
.end method

.method public static getLimitedAdTracking()Z
    .locals 1

    .prologue
    .line 47
    invoke-static {}, Lcom/unity3d/ads/android/data/UnityAdsAdvertisingId;->getImpl()Lcom/unity3d/ads/android/data/UnityAdsAdvertisingId;

    move-result-object v0

    iget-boolean v0, v0, Lcom/unity3d/ads/android/data/UnityAdsAdvertisingId;->limitedAdvertisingTracking:Z

    return v0
.end method

.method public static init(Landroid/app/Activity;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 37
    invoke-static {}, Lcom/unity3d/ads/android/data/UnityAdsAdvertisingId;->getImpl()Lcom/unity3d/ads/android/data/UnityAdsAdvertisingId;

    move-result-object v0

    invoke-direct {v0, p0}, Lcom/unity3d/ads/android/data/UnityAdsAdvertisingId;->fetchAdvertisingId(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 38
    invoke-static {}, Lcom/unity3d/ads/android/data/UnityAdsAdvertisingId;->getImpl()Lcom/unity3d/ads/android/data/UnityAdsAdvertisingId;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/unity3d/ads/android/data/UnityAdsAdvertisingId;->fetchAdvertisingIdFallback(Landroid/content/Context;)V

    .line 40
    :cond_0
    return-void
.end method
