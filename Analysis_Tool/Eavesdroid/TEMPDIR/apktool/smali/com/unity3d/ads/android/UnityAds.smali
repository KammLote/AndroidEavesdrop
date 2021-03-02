.class public Lcom/unity3d/ads/android/UnityAds;
.super Ljava/lang/Object;
.source "UnityAds.java"

# interfaces
.implements Lcom/unity3d/ads/android/webapp/IUnityAdsWebDataListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x9
.end annotation


# static fields
.field public static final UNITY_ADS_OPTION_GAMERSID_KEY:Ljava/lang/String; = "sid"

.field public static final UNITY_ADS_OPTION_MUTE_VIDEO_SOUNDS:Ljava/lang/String; = "muteVideoSounds"

.field public static final UNITY_ADS_OPTION_NOOFFERSCREEN_KEY:Ljava/lang/String; = "noOfferScreen"

.field public static final UNITY_ADS_OPTION_OPENANIMATED_KEY:Ljava/lang/String; = "openAnimated"

.field public static final UNITY_ADS_OPTION_VIDEO_USES_DEVICE_ORIENTATION:Ljava/lang/String; = "useDeviceOrientationForVideo"

.field public static final UNITY_ADS_REWARDITEM_NAME_KEY:Ljava/lang/String; = "name"

.field public static final UNITY_ADS_REWARDITEM_PICTURE_KEY:Ljava/lang/String; = "picture"

.field private static _adsListener:Lcom/unity3d/ads/android/IUnityAdsListener;

.field private static _initialized:Z

.field private static _instance:Lcom/unity3d/ads/android/UnityAds;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 50
    const/4 v0, 0x0

    sput-boolean v0, Lcom/unity3d/ads/android/UnityAds;->_initialized:Z

    .line 53
    sput-object v1, Lcom/unity3d/ads/android/UnityAds;->_adsListener:Lcom/unity3d/ads/android/IUnityAdsListener;

    .line 55
    sput-object v1, Lcom/unity3d/ads/android/UnityAds;->_instance:Lcom/unity3d/ads/android/UnityAds;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    return-void
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 36
    sput-boolean p0, Lcom/unity3d/ads/android/UnityAds;->_initialized:Z

    return p0
.end method

.method public static canShow()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 242
    invoke-static {}, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->isAdsReadySent()Z

    move-result v3

    if-nez v3, :cond_1

    .line 243
    sget-object v3, Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsShowMsg;->WEBAPP_NOT_INITIALIZED:Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsShowMsg;

    invoke-static {v3}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->logShowStatus(Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsShowMsg;)V

    .line 279
    .local v1, "viewableCampaigns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;>;"
    :cond_0
    :goto_0
    return v2

    .line 247
    .end local v1    # "viewableCampaigns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;>;"
    :cond_1
    invoke-static {}, Lcom/unity3d/ads/android/UnityAds;->isShowingAds()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 248
    sget-object v3, Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsShowMsg;->SHOWING_ADS:Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsShowMsg;

    invoke-static {v3}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->logShowStatus(Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsShowMsg;)V

    goto :goto_0

    .line 252
    :cond_2
    invoke-static {}, Lcom/unity3d/ads/android/data/UnityAdsDevice;->isActiveNetworkConnected()Z

    move-result v3

    if-nez v3, :cond_3

    .line 253
    sget-object v3, Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsShowMsg;->NO_INTERNET:Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsShowMsg;

    invoke-static {v3}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->logShowStatus(Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsShowMsg;)V

    goto :goto_0

    .line 257
    :cond_3
    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->initInProgress()Z

    move-result v3

    if-nez v3, :cond_0

    .line 259
    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->getViewableVideoPlanCampaigns()Ljava/util/ArrayList;

    move-result-object v1

    .line 261
    .restart local v1    # "viewableCampaigns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;>;"
    if-nez v1, :cond_4

    .line 262
    sget-object v3, Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsShowMsg;->NO_ADS:Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsShowMsg;

    invoke-static {v3}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->logShowStatus(Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsShowMsg;)V

    goto :goto_0

    .line 266
    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_5

    .line 267
    sget-object v3, Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsShowMsg;->ZERO_ADS:Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsShowMsg;

    invoke-static {v3}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->logShowStatus(Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsShowMsg;)V

    goto :goto_0

    .line 272
    :cond_5
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    .line 273
    .local v0, "nextCampaign":Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;
    invoke-virtual {v0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->allowStreamingVideo()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-static {v0}, Lcom/unity3d/ads/android/cache/UnityAdsCache;->isCampaignCached(Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 274
    sget-object v3, Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsShowMsg;->VIDEO_NOT_CACHED:Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsShowMsg;

    invoke-static {v3}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->logShowStatus(Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsShowMsg;)V

    goto :goto_0

    .line 278
    :cond_6
    sget-object v2, Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsShowMsg;->READY:Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsShowMsg;

    invoke-static {v2}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->logShowStatus(Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsShowMsg;)V

    .line 279
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static canShowAds()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 234
    invoke-static {}, Lcom/unity3d/ads/android/UnityAds;->canShow()Z

    move-result v0

    return v0
.end method

.method public static changeActivity(Landroid/app/Activity;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 112
    if-nez p0, :cond_1

    .line 113
    const-string v0, "changeActivity: null, ignoring"

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 117
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changeActivity: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 118
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->CURRENT_ACTIVITY:Ljava/lang/ref/WeakReference;

    .line 119
    instance-of v0, p0, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;

    if-nez v0, :cond_0

    .line 120
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->BASE_ACTIVITY:Ljava/lang/ref/WeakReference;

    goto :goto_0
.end method

.method public static enableUnityDeveloperInternalTestMode()V
    .locals 1

    .prologue
    .line 97
    const-string v0, "https://impact.staging.applifier.com/mobile/campaigns"

    sput-object v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->CAMPAIGN_DATA_URL:Ljava/lang/String;

    .line 98
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->UNITY_DEVELOPER_INTERNAL_TEST:Ljava/lang/Boolean;

    .line 99
    return-void
.end method

.method public static getCurrentRewardItemKey()Ljava/lang/String;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 338
    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->getZoneManager()Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;->getCurrentZone()Lcom/unity3d/ads/android/zone/UnityAdsZone;

    move-result-object v1

    .line 339
    .local v1, "zone":Lcom/unity3d/ads/android/zone/UnityAdsZone;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/unity3d/ads/android/zone/UnityAdsZone;->isIncentivized()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 340
    check-cast v1, Lcom/unity3d/ads/android/zone/UnityAdsIncentivizedZone;

    .end local v1    # "zone":Lcom/unity3d/ads/android/zone/UnityAdsZone;
    invoke-virtual {v1}, Lcom/unity3d/ads/android/zone/UnityAdsIncentivizedZone;->itemManager()Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;

    move-result-object v0

    .line 341
    .local v0, "itemManager":Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;
    invoke-virtual {v0}, Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;->getCurrentItem()Lcom/unity3d/ads/android/item/UnityAdsRewardItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/unity3d/ads/android/item/UnityAdsRewardItem;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 343
    .end local v0    # "itemManager":Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;
    :goto_0
    return-object v2

    .restart local v1    # "zone":Lcom/unity3d/ads/android/zone/UnityAdsZone;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getDefaultRewardItemKey()Ljava/lang/String;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 324
    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->getZoneManager()Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;->getCurrentZone()Lcom/unity3d/ads/android/zone/UnityAdsZone;

    move-result-object v1

    .line 325
    .local v1, "zone":Lcom/unity3d/ads/android/zone/UnityAdsZone;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/unity3d/ads/android/zone/UnityAdsZone;->isIncentivized()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 326
    check-cast v1, Lcom/unity3d/ads/android/zone/UnityAdsIncentivizedZone;

    .end local v1    # "zone":Lcom/unity3d/ads/android/zone/UnityAdsZone;
    invoke-virtual {v1}, Lcom/unity3d/ads/android/zone/UnityAdsIncentivizedZone;->itemManager()Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;

    move-result-object v0

    .line 327
    .local v0, "itemManager":Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;
    invoke-virtual {v0}, Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;->getDefaultItem()Lcom/unity3d/ads/android/item/UnityAdsRewardItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/unity3d/ads/android/item/UnityAdsRewardItem;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 329
    .end local v0    # "itemManager":Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;
    :goto_0
    return-object v2

    .restart local v1    # "zone":Lcom/unity3d/ads/android/zone/UnityAdsZone;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getListener()Lcom/unity3d/ads/android/IUnityAdsListener;
    .locals 1

    .prologue
    .line 108
    sget-object v0, Lcom/unity3d/ads/android/UnityAds;->_adsListener:Lcom/unity3d/ads/android/IUnityAdsListener;

    return-object v0
.end method

.method public static getRewardItemDetailsWithKey(Ljava/lang/String;)Ljava/util/Map;
    .locals 5
    .param p0, "rewardItemKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 383
    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->getZoneManager()Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;->getCurrentZone()Lcom/unity3d/ads/android/zone/UnityAdsZone;

    move-result-object v2

    .line 384
    .local v2, "zone":Lcom/unity3d/ads/android/zone/UnityAdsZone;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/unity3d/ads/android/zone/UnityAdsZone;->isIncentivized()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 385
    check-cast v2, Lcom/unity3d/ads/android/zone/UnityAdsIncentivizedZone;

    .end local v2    # "zone":Lcom/unity3d/ads/android/zone/UnityAdsZone;
    invoke-virtual {v2}, Lcom/unity3d/ads/android/zone/UnityAdsIncentivizedZone;->itemManager()Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;

    move-result-object v0

    .line 386
    .local v0, "itemManager":Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;
    invoke-virtual {v0, p0}, Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;->getItem(Ljava/lang/String;)Lcom/unity3d/ads/android/item/UnityAdsRewardItem;

    move-result-object v1

    .line 387
    .local v1, "rewardItem":Lcom/unity3d/ads/android/item/UnityAdsRewardItem;
    if-eqz v1, :cond_0

    .line 388
    invoke-virtual {v1}, Lcom/unity3d/ads/android/item/UnityAdsRewardItem;->getDetails()Ljava/util/Map;

    move-result-object v3

    .line 393
    .end local v0    # "itemManager":Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;
    .end local v1    # "rewardItem":Lcom/unity3d/ads/android/item/UnityAdsRewardItem;
    :goto_0
    return-object v3

    .line 390
    .restart local v0    # "itemManager":Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;
    .restart local v1    # "rewardItem":Lcom/unity3d/ads/android/item/UnityAdsRewardItem;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not fetch reward item: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->info(Ljava/lang/String;)V

    .line 393
    .end local v0    # "itemManager":Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;
    .end local v1    # "rewardItem":Lcom/unity3d/ads/android/item/UnityAdsRewardItem;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static getRewardItemKeys()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 304
    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->getZoneManager()Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;->getCurrentZone()Lcom/unity3d/ads/android/zone/UnityAdsZone;

    move-result-object v4

    .line 305
    .local v4, "zone":Lcom/unity3d/ads/android/zone/UnityAdsZone;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/unity3d/ads/android/zone/UnityAdsZone;->isIncentivized()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 306
    check-cast v4, Lcom/unity3d/ads/android/zone/UnityAdsIncentivizedZone;

    .end local v4    # "zone":Lcom/unity3d/ads/android/zone/UnityAdsZone;
    invoke-virtual {v4}, Lcom/unity3d/ads/android/zone/UnityAdsIncentivizedZone;->itemManager()Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;

    move-result-object v0

    .line 307
    .local v0, "itemManager":Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;
    invoke-virtual {v0}, Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;->allItems()Ljava/util/ArrayList;

    move-result-object v3

    .line 308
    .local v3, "rewardItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/unity3d/ads/android/item/UnityAdsRewardItem;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 309
    .local v2, "rewardItemKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/unity3d/ads/android/item/UnityAdsRewardItem;

    .line 310
    .local v1, "rewardItem":Lcom/unity3d/ads/android/item/UnityAdsRewardItem;
    invoke-virtual {v1}, Lcom/unity3d/ads/android/item/UnityAdsRewardItem;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 315
    .end local v0    # "itemManager":Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;
    .end local v1    # "rewardItem":Lcom/unity3d/ads/android/item/UnityAdsRewardItem;
    .end local v2    # "rewardItemKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "rewardItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/unity3d/ads/android/item/UnityAdsRewardItem;>;"
    .restart local v4    # "zone":Lcom/unity3d/ads/android/zone/UnityAdsZone;
    :cond_0
    const/4 v2, 0x0

    .end local v4    # "zone":Lcom/unity3d/ads/android/zone/UnityAdsZone;
    :cond_1
    return-object v2
.end method

.method public static getSDKVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    const-string v0, "1506"

    return-object v0
.end method

.method public static getZone()Ljava/lang/String;
    .locals 3

    .prologue
    .line 157
    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->getZoneManager()Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;

    move-result-object v1

    .line 159
    .local v1, "zoneManager":Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;
    if-eqz v1, :cond_0

    .line 160
    invoke-virtual {v1}, Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;->getCurrentZone()Lcom/unity3d/ads/android/zone/UnityAdsZone;

    move-result-object v0

    .line 162
    .local v0, "currentZone":Lcom/unity3d/ads/android/zone/UnityAdsZone;
    if-eqz v0, :cond_0

    .line 163
    invoke-virtual {v0}, Lcom/unity3d/ads/android/zone/UnityAdsZone;->getZoneId()Ljava/lang/String;

    move-result-object v2

    .line 167
    .end local v0    # "currentZone":Lcom/unity3d/ads/android/zone/UnityAdsZone;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static hasMultipleRewardItems()Z
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 290
    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->getZoneManager()Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;->getCurrentZone()Lcom/unity3d/ads/android/zone/UnityAdsZone;

    move-result-object v1

    .line 291
    .local v1, "zone":Lcom/unity3d/ads/android/zone/UnityAdsZone;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/unity3d/ads/android/zone/UnityAdsZone;->isIncentivized()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 292
    check-cast v1, Lcom/unity3d/ads/android/zone/UnityAdsIncentivizedZone;

    .end local v1    # "zone":Lcom/unity3d/ads/android/zone/UnityAdsZone;
    invoke-virtual {v1}, Lcom/unity3d/ads/android/zone/UnityAdsIncentivizedZone;->itemManager()Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;

    move-result-object v0

    .line 293
    .local v0, "itemManager":Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;
    invoke-virtual {v0}, Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;->itemCount()I

    move-result v4

    if-le v4, v2, :cond_0

    .line 295
    :goto_0
    return v2

    :cond_0
    move v2, v3

    .line 293
    goto :goto_0

    .end local v0    # "itemManager":Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;
    .restart local v1    # "zone":Lcom/unity3d/ads/android/zone/UnityAdsZone;
    :cond_1
    move v2, v3

    .line 295
    goto :goto_0
.end method

.method public static hide()Z
    .locals 1

    .prologue
    .line 125
    sget-object v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->CURRENT_ACTIVITY:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;

    if-eqz v0, :cond_0

    .line 126
    sget-object v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->CURRENT_ACTIVITY:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 127
    const/4 v0, 0x1

    .line 130
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static init(Landroid/app/Activity;Ljava/lang/String;Lcom/unity3d/ads/android/IUnityAdsListener;)V
    .locals 13
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "gameId"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/unity3d/ads/android/IUnityAdsListener;

    .prologue
    .line 453
    sget-object v9, Lcom/unity3d/ads/android/UnityAds;->_instance:Lcom/unity3d/ads/android/UnityAds;

    if-nez v9, :cond_0

    sget-boolean v9, Lcom/unity3d/ads/android/UnityAds;->_initialized:Z

    if-eqz v9, :cond_1

    .line 544
    :cond_0
    :goto_0
    return-void

    .line 455
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_3

    .line 456
    :cond_2
    const-string v9, "Unity Ads init failed: gameId is empty"

    invoke-static {v9}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 460
    :cond_3
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 461
    .local v5, "gameIdInteger":I
    if-gtz v5, :cond_4

    .line 462
    const-string v9, "Unity Ads init failed: gameId is invalid"

    invoke-static {v9}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 465
    .end local v5    # "gameIdInteger":I
    :catch_0
    move-exception v4

    .line 466
    .local v4, "e":Ljava/lang/NumberFormatException;
    const-string v9, "Unity Ads init failed: gameId does not parse as an integer"

    invoke-static {v9}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 471
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    .restart local v5    # "gameIdInteger":I
    :cond_4
    sget-object v9, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->UNITY_VERSION:Ljava/lang/String;

    if-eqz v9, :cond_5

    sget-object v9, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->UNITY_VERSION:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_5

    .line 472
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Initializing Unity Ads version 1506 (Unity + "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->UNITY_VERSION:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ") with gameId "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->info(Ljava/lang/String;)V

    .line 477
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const-string v10, "unityads_view_video_play"

    const-string v11, "layout"

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v10, v11, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 478
    .local v8, "videoLayoutId":I
    if-nez v8, :cond_6

    .line 479
    const-string v9, "Unity Ads layout resources not found, check that you have properly merged Unity Ads resource files in your project"

    invoke-static {v9}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 474
    .end local v8    # "videoLayoutId":I
    :cond_5
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Initializing Unity Ads version 1506 with gameId "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->info(Ljava/lang/String;)V

    goto :goto_1

    .line 482
    .restart local v8    # "videoLayoutId":I
    :cond_6
    const-string v9, "Unity Ads layout resources ok"

    invoke-static {v9}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 486
    :try_start_1
    const-string v9, "com.unity3d.ads.android.webapp.UnityAdsWebBridge"

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    .line 487
    .local v7, "unityAdsWebBridge":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v9, "handleWebEvent"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-class v12, Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-virtual {v7, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 490
    .local v6, "handleWebEvent":Ljava/lang/reflect/Method;
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x11

    if-lt v9, v10, :cond_9

    .line 491
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v3

    .line 493
    .local v3, "annotations":[Ljava/lang/annotation/Annotation;
    const/4 v2, 0x1

    .line 494
    .local v2, "annotationMissing":Z
    if-eqz v3, :cond_7

    .line 495
    array-length v10, v3

    const/4 v9, 0x0

    :goto_2
    if-ge v9, v10, :cond_7

    aget-object v0, v3, v9

    .line 496
    .local v0, "a":Ljava/lang/annotation/Annotation;
    invoke-interface {v0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v1

    .line 497
    .local v1, "annotationClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/lang/Class;->isAnnotation()Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "android.webkit.JavascriptInterface"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 498
    const/4 v2, 0x0

    .line 504
    .end local v0    # "a":Ljava/lang/annotation/Annotation;
    .end local v1    # "annotationClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_7
    if-eqz v2, :cond_9

    .line 505
    const-string v9, "UnityAds ProGuard check fail: com.unity3d.ads.android.webapp.handleWebEvent lacks android.webkit.JavascriptInterface annotation"

    invoke-static {v9}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    goto/16 :goto_0

    .line 511
    .end local v2    # "annotationMissing":Z
    .end local v3    # "annotations":[Ljava/lang/annotation/Annotation;
    .end local v6    # "handleWebEvent":Ljava/lang/reflect/Method;
    .end local v7    # "unityAdsWebBridge":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_1
    move-exception v4

    .line 512
    .local v4, "e":Ljava/lang/ClassNotFoundException;
    const-string v9, "UnityAds ProGuard check fail: com.unity3d.ads.android.webapp.UnityAdsWebBridge class not found, check ProGuard settings"

    invoke-static {v9}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 495
    .end local v4    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v0    # "a":Ljava/lang/annotation/Annotation;
    .restart local v1    # "annotationClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v2    # "annotationMissing":Z
    .restart local v3    # "annotations":[Ljava/lang/annotation/Annotation;
    .restart local v6    # "handleWebEvent":Ljava/lang/reflect/Method;
    .restart local v7    # "unityAdsWebBridge":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_8
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 510
    .end local v0    # "a":Ljava/lang/annotation/Annotation;
    .end local v1    # "annotationClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "annotationMissing":Z
    .end local v3    # "annotations":[Ljava/lang/annotation/Annotation;
    :cond_9
    :try_start_2
    const-string v9, "UnityAds ProGuard check OK"

    invoke-static {v9}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 521
    .end local v6    # "handleWebEvent":Ljava/lang/reflect/Method;
    .end local v7    # "unityAdsWebBridge":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_3
    sget-object v9, Lcom/unity3d/ads/android/UnityAds;->_instance:Lcom/unity3d/ads/android/UnityAds;

    if-nez v9, :cond_a

    .line 522
    new-instance v9, Lcom/unity3d/ads/android/UnityAds;

    invoke-direct {v9}, Lcom/unity3d/ads/android/UnityAds;-><init>()V

    sput-object v9, Lcom/unity3d/ads/android/UnityAds;->_instance:Lcom/unity3d/ads/android/UnityAds;

    .line 525
    :cond_a
    invoke-static {p2}, Lcom/unity3d/ads/android/UnityAds;->setListener(Lcom/unity3d/ads/android/IUnityAdsListener;)V

    .line 527
    sput-object p1, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->UNITY_ADS_GAME_ID:Ljava/lang/String;

    .line 528
    new-instance v9, Ljava/lang/ref/WeakReference;

    invoke-direct {v9, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v9, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->BASE_ACTIVITY:Ljava/lang/ref/WeakReference;

    .line 529
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    sput-object v9, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->APPLICATION_CONTEXT:Landroid/content/Context;

    .line 530
    new-instance v9, Ljava/lang/ref/WeakReference;

    invoke-direct {v9, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v9, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->CURRENT_ACTIVITY:Ljava/lang/ref/WeakReference;

    .line 532
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Is debuggable="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Lcom/unity3d/ads/android/UnityAdsUtils;->isDebuggable()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 534
    sget-object v9, Lcom/unity3d/ads/android/UnityAds;->_instance:Lcom/unity3d/ads/android/UnityAds;

    invoke-static {v9}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->setWebDataListener(Lcom/unity3d/ads/android/webapp/IUnityAdsWebDataListener;)V

    .line 536
    new-instance v9, Ljava/lang/Thread;

    new-instance v10, Lcom/unity3d/ads/android/UnityAds$2;

    invoke-direct {v10, p0}, Lcom/unity3d/ads/android/UnityAds$2;-><init>(Landroid/app/Activity;)V

    invoke-direct {v9, v10}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 543
    invoke-virtual {v9}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 514
    :catch_2
    move-exception v4

    .line 515
    .local v4, "e":Ljava/lang/NoSuchMethodException;
    const-string v9, "UnityAds ProGuard check fail: com.unity3d.ads.android.webapp.handleWebEvent method not found, check ProGuard settings"

    invoke-static {v9}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 517
    .end local v4    # "e":Ljava/lang/NoSuchMethodException;
    :catch_3
    move-exception v4

    .line 518
    .local v4, "e":Ljava/lang/Exception;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "UnityAds ProGuard check: Unknown exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    goto :goto_3
.end method

.method private static initCache()V
    .locals 1

    .prologue
    .line 558
    invoke-static {}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->entered()V

    .line 559
    sget-boolean v0, Lcom/unity3d/ads/android/UnityAds;->_initialized:Z

    if-eqz v0, :cond_0

    .line 561
    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->getVideoPlanCampaigns()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/cache/UnityAdsCache;->initialize(Ljava/util/ArrayList;)V

    .line 563
    :cond_0
    return-void
.end method

.method private static isShowingAds()Z
    .locals 1

    .prologue
    .line 238
    invoke-static {}, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->isShowingAds()Z

    move-result v0

    return v0
.end method

.method public static isSupported()Z
    .locals 2

    .prologue
    .line 63
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setCampaignDataURL(Ljava/lang/String;)V
    .locals 0
    .param p0, "campaignDataURL"    # Ljava/lang/String;

    .prologue
    .line 93
    sput-object p0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->CAMPAIGN_DATA_URL:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public static setDebugMode(Z)V
    .locals 1
    .param p0, "debugModeEnabled"    # Z

    .prologue
    .line 68
    if-eqz p0, :cond_0

    .line 69
    const/16 v0, 0x8

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->setLogLevel(I)V

    .line 73
    :goto_0
    return-void

    .line 71
    :cond_0
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->setLogLevel(I)V

    goto :goto_0
.end method

.method public static setDefaultRewardItemAsRewardItem()V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 368
    invoke-static {}, Lcom/unity3d/ads/android/UnityAds;->canShow()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 369
    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->getZoneManager()Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;->getCurrentZone()Lcom/unity3d/ads/android/zone/UnityAdsZone;

    move-result-object v1

    .line 370
    .local v1, "zone":Lcom/unity3d/ads/android/zone/UnityAdsZone;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/unity3d/ads/android/zone/UnityAdsZone;->isIncentivized()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 371
    check-cast v1, Lcom/unity3d/ads/android/zone/UnityAdsIncentivizedZone;

    .end local v1    # "zone":Lcom/unity3d/ads/android/zone/UnityAdsZone;
    invoke-virtual {v1}, Lcom/unity3d/ads/android/zone/UnityAdsIncentivizedZone;->itemManager()Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;

    move-result-object v0

    .line 372
    .local v0, "itemManager":Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;
    invoke-virtual {v0}, Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;->getDefaultItem()Lcom/unity3d/ads/android/item/UnityAdsRewardItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/unity3d/ads/android/item/UnityAdsRewardItem;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;->setCurrentItem(Ljava/lang/String;)Z

    .line 375
    .end local v0    # "itemManager":Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;
    :cond_0
    return-void
.end method

.method public static setListener(Lcom/unity3d/ads/android/IUnityAdsListener;)V
    .locals 0
    .param p0, "listener"    # Lcom/unity3d/ads/android/IUnityAdsListener;

    .prologue
    .line 104
    sput-object p0, Lcom/unity3d/ads/android/UnityAds;->_adsListener:Lcom/unity3d/ads/android/IUnityAdsListener;

    .line 105
    return-void
.end method

.method public static setRewardItemKey(Ljava/lang/String;)Z
    .locals 3
    .param p0, "rewardItemKey"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 352
    invoke-static {}, Lcom/unity3d/ads/android/UnityAds;->canShow()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 353
    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->getZoneManager()Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;->getCurrentZone()Lcom/unity3d/ads/android/zone/UnityAdsZone;

    move-result-object v1

    .line 354
    .local v1, "zone":Lcom/unity3d/ads/android/zone/UnityAdsZone;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/unity3d/ads/android/zone/UnityAdsZone;->isIncentivized()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 355
    check-cast v1, Lcom/unity3d/ads/android/zone/UnityAdsIncentivizedZone;

    .end local v1    # "zone":Lcom/unity3d/ads/android/zone/UnityAdsZone;
    invoke-virtual {v1}, Lcom/unity3d/ads/android/zone/UnityAdsIncentivizedZone;->itemManager()Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;

    move-result-object v0

    .line 356
    .local v0, "itemManager":Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;
    invoke-virtual {v0, p0}, Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;->setCurrentItem(Ljava/lang/String;)Z

    move-result v2

    .line 359
    .end local v0    # "itemManager":Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static setTestDeveloperId(Ljava/lang/String;)V
    .locals 0
    .param p0, "testDeveloperId"    # Ljava/lang/String;

    .prologue
    .line 80
    sput-object p0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->TEST_DEVELOPER_ID:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public static setTestMode(Z)V
    .locals 1
    .param p0, "testModeEnabled"    # Z

    .prologue
    .line 76
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->TESTMODE_ENABLED:Ljava/lang/Boolean;

    .line 77
    return-void
.end method

.method public static setTestOptionsId(Ljava/lang/String;)V
    .locals 0
    .param p0, "testOptionsId"    # Ljava/lang/String;

    .prologue
    .line 84
    sput-object p0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->TEST_OPTIONS_ID:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public static setZone(Ljava/lang/String;)Z
    .locals 2
    .param p0, "zoneId"    # Ljava/lang/String;

    .prologue
    .line 134
    invoke-static {}, Lcom/unity3d/ads/android/UnityAds;->isShowingAds()Z

    move-result v0

    if-nez v0, :cond_1

    .line 135
    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->getZoneManager()Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 136
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unable to set zone before campaigns are available"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 139
    :cond_0
    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->getZoneManager()Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;->setCurrentZone(Ljava/lang/String;)Z

    move-result v0

    .line 141
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setZone(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "zoneId"    # Ljava/lang/String;
    .param p1, "rewardItemKey"    # Ljava/lang/String;

    .prologue
    .line 145
    invoke-static {}, Lcom/unity3d/ads/android/UnityAds;->isShowingAds()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p0}, Lcom/unity3d/ads/android/UnityAds;->setZone(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 146
    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->getZoneManager()Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;->getCurrentZone()Lcom/unity3d/ads/android/zone/UnityAdsZone;

    move-result-object v0

    .line 147
    .local v0, "currentZone":Lcom/unity3d/ads/android/zone/UnityAdsZone;
    invoke-virtual {v0}, Lcom/unity3d/ads/android/zone/UnityAdsZone;->isIncentivized()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 148
    check-cast v0, Lcom/unity3d/ads/android/zone/UnityAdsIncentivizedZone;

    .end local v0    # "currentZone":Lcom/unity3d/ads/android/zone/UnityAdsZone;
    invoke-virtual {v0}, Lcom/unity3d/ads/android/zone/UnityAdsIncentivizedZone;->itemManager()Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;

    move-result-object v1

    .line 149
    .local v1, "itemManager":Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;
    invoke-virtual {v1, p1}, Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;->setCurrentItem(Ljava/lang/String;)Z

    move-result v2

    .line 152
    .end local v1    # "itemManager":Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static setup()V
    .locals 1

    .prologue
    .line 547
    invoke-static {}, Lcom/unity3d/ads/android/UnityAds;->initCache()V

    .line 549
    new-instance v0, Lcom/unity3d/ads/android/UnityAds$3;

    invoke-direct {v0}, Lcom/unity3d/ads/android/UnityAds$3;-><init>()V

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 555
    return-void
.end method

.method public static show()Z
    .locals 1

    .prologue
    .line 203
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAds;->show(Ljava/util/Map;)Z

    move-result v0

    return v0
.end method

.method public static show(Ljava/util/Map;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p0, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v3, 0x0

    .line 171
    invoke-static {}, Lcom/unity3d/ads/android/UnityAds;->canShow()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 172
    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->getZoneManager()Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;->getCurrentZone()Lcom/unity3d/ads/android/zone/UnityAdsZone;

    move-result-object v0

    .line 174
    .local v0, "currentZone":Lcom/unity3d/ads/android/zone/UnityAdsZone;
    if-eqz v0, :cond_1

    .line 175
    invoke-static {}, Lcom/unity3d/ads/android/cache/UnityAdsCache;->stopAllDownloads()V

    .line 177
    invoke-virtual {v0, p0}, Lcom/unity3d/ads/android/zone/UnityAdsZone;->mergeOptions(Ljava/util/Map;)V

    .line 179
    invoke-virtual {v0}, Lcom/unity3d/ads/android/zone/UnityAdsZone;->noOfferScreen()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 180
    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->getViewableVideoPlanCampaigns()Ljava/util/ArrayList;

    move-result-object v1

    .line 182
    .local v1, "viewableCampaigns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 183
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    sput-object v2, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->SELECTED_CAMPAIGN:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    .line 187
    .end local v1    # "viewableCampaigns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;>;"
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Launching ad from \""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/unity3d/ads/android/zone/UnityAdsZone;->getZoneName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\", options: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/unity3d/ads/android/zone/UnityAdsZone;->getZoneOptions()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->info(Ljava/lang/String;)V

    .line 188
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sput-object v2, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->SELECTED_CAMPAIGN_CACHED:Ljava/lang/Boolean;

    .line 189
    invoke-static {}, Lcom/unity3d/ads/android/UnityAds;->startFullscreenActivity()V

    .line 190
    const/4 v2, 0x1

    .line 198
    .end local v0    # "currentZone":Lcom/unity3d/ads/android/zone/UnityAdsZone;
    :goto_0
    return v2

    .line 192
    .restart local v0    # "currentZone":Lcom/unity3d/ads/android/zone/UnityAdsZone;
    :cond_1
    const-string v2, "Unity Ads current zone is null"

    invoke-static {v2}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    .end local v0    # "currentZone":Lcom/unity3d/ads/android/zone/UnityAdsZone;
    :goto_1
    move v2, v3

    .line 198
    goto :goto_0

    .line 195
    :cond_2
    const-string v2, "Unity Ads not ready to show ads"

    invoke-static {v2}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static startFullscreenActivity()V
    .locals 7

    .prologue
    .line 207
    new-instance v4, Landroid/content/Intent;

    invoke-static {}, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v5

    const-class v6, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 208
    .local v4, "newIntent":Landroid/content/Intent;
    const/high16 v3, 0x10010000

    .line 210
    .local v3, "flags":I
    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->getZoneManager()Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;->getCurrentZone()Lcom/unity3d/ads/android/zone/UnityAdsZone;

    move-result-object v1

    .line 211
    .local v1, "currentZone":Lcom/unity3d/ads/android/zone/UnityAdsZone;
    invoke-virtual {v1}, Lcom/unity3d/ads/android/zone/UnityAdsZone;->openAnimated()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 212
    const/high16 v3, 0x10000000

    .line 215
    :cond_0
    invoke-virtual {v4, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 216
    invoke-static {}, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->getBaseActivity()Landroid/app/Activity;

    move-result-object v0

    .line 219
    .local v0, "baseActivity":Landroid/app/Activity;
    if-eqz v0, :cond_1

    :try_start_0
    invoke-virtual {v0, v4}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 225
    :cond_1
    :goto_0
    return-void

    .line 220
    :catch_0
    move-exception v2

    .line 221
    .local v2, "e":Landroid/content/ActivityNotFoundException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not find UnityAdsFullScreenActivity (failed Android manifest merging?): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 222
    .end local v2    # "e":Landroid/content/ActivityNotFoundException;
    :catch_1
    move-exception v2

    .line 223
    .local v2, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Weird error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onWebDataCompleted()V
    .locals 7

    .prologue
    .line 402
    invoke-static {}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->entered()V

    .line 403
    const/4 v3, 0x0

    .line 404
    .local v3, "jsonData":Lorg/json/JSONObject;
    const/4 v1, 0x0

    .line 405
    .local v1, "dataFetchFailed":Z
    const/4 v4, 0x1

    .line 407
    .local v4, "sdkIsCurrent":Z
    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->getData()Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->getData()Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "data"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 409
    :try_start_0
    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->getData()Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "data"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 414
    :goto_0
    if-nez v1, :cond_0

    .line 415
    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->setupCampaignRefreshTimer()V

    .line 417
    const-string v5, "sdkIsCurrent"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 419
    :try_start_1
    const-string v5, "sdkIsCurrent"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    .line 427
    :cond_0
    :goto_1
    if-nez v1, :cond_1

    if-nez v4, :cond_1

    invoke-static {}, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-static {}, Lcom/unity3d/ads/android/UnityAdsUtils;->isDebuggable()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 428
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 429
    .local v0, "alertDialog":Landroid/app/AlertDialog;
    const-string v5, "Unity Ads"

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 430
    const-string v5, "You are not running the latest version of Unity Ads android. Please update your version (this dialog won\'t appear in release builds)."

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 431
    const-string v5, "OK"

    new-instance v6, Lcom/unity3d/ads/android/UnityAds$1;

    invoke-direct {v6, p0, v0}, Lcom/unity3d/ads/android/UnityAds$1;-><init>(Lcom/unity3d/ads/android/UnityAds;Landroid/app/AlertDialog;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 438
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 441
    .end local v0    # "alertDialog":Landroid/app/AlertDialog;
    :cond_1
    invoke-static {}, Lcom/unity3d/ads/android/UnityAds;->setup()V

    .line 442
    return-void

    .line 410
    :catch_0
    move-exception v2

    .line 411
    .local v2, "e":Ljava/lang/Exception;
    const/4 v1, 0x1

    goto :goto_0

    .line 420
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 421
    .restart local v2    # "e":Ljava/lang/Exception;
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public onWebDataFailed()V
    .locals 1

    .prologue
    .line 446
    invoke-static {}, Lcom/unity3d/ads/android/UnityAds;->getListener()Lcom/unity3d/ads/android/IUnityAdsListener;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->UNITY_ADS_READY_SENT:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 447
    invoke-static {}, Lcom/unity3d/ads/android/UnityAds;->getListener()Lcom/unity3d/ads/android/IUnityAdsListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/unity3d/ads/android/IUnityAdsListener;->onFetchFailed()V

    .line 448
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->UNITY_ADS_READY_SENT:Ljava/lang/Boolean;

    .line 450
    :cond_0
    return-void
.end method
