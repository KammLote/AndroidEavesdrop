.class public Lcom/unity3d/ads/android/webapp/UnityAdsWebData;
.super Ljava/lang/Object;
.source "UnityAdsWebData.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x9
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;,
        Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsCancelUrlLoaderRunner;,
        Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoaderCreator;,
        Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsRequestType;,
        Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;
    }
.end annotation


# static fields
.field private static _campaignJson:Lorg/json/JSONObject;

.field private static _campaignRefreshTimer:Ljava/util/Timer;

.field private static _campaignRefreshTimerDeadline:J

.field private static _campaigns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;",
            ">;"
        }
    .end annotation
.end field

.field private static _initInProgress:Z

.field private static _isLoading:Z

.field private static _listener:Lcom/unity3d/ads/android/webapp/IUnityAdsWebDataListener;

.field private static _refreshAfterShowAds:Z

.field private static _totalLoadersCreated:I

.field private static _totalLoadersHaveRun:I

.field private static _totalUrlsSent:I

.field private static final _urlLoaderLock:Ljava/lang/Object;

.field private static _urlLoaders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;",
            ">;"
        }
    .end annotation
.end field

.field private static _zoneManager:Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;

.field private static installedAppsSent:Z

.field private static whitelistRequested:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 58
    sput-object v2, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_campaignJson:Lorg/json/JSONObject;

    .line 59
    sput-object v2, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_campaigns:Ljava/util/ArrayList;

    .line 60
    sput-object v2, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_listener:Lcom/unity3d/ads/android/webapp/IUnityAdsWebDataListener;

    .line 61
    sput-object v2, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_urlLoaders:Ljava/util/ArrayList;

    .line 62
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_urlLoaderLock:Ljava/lang/Object;

    .line 63
    sput-object v2, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_zoneManager:Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;

    .line 64
    sput v1, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_totalUrlsSent:I

    .line 65
    sput v1, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_totalLoadersCreated:I

    .line 66
    sput v1, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_totalLoadersHaveRun:I

    .line 68
    sput-boolean v1, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_isLoading:Z

    .line 69
    sput-boolean v1, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_initInProgress:Z

    .line 71
    sput-boolean v1, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_refreshAfterShowAds:Z

    .line 72
    sput-boolean v1, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->whitelistRequested:Z

    .line 73
    sput-boolean v1, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->installedAppsSent:Z

    .line 75
    sput-object v2, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_campaignRefreshTimer:Ljava/util/Timer;

    .line 76
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_campaignRefreshTimerDeadline:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()V
    .locals 0

    .prologue
    .line 56
    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->campaignDataFailed()V

    return-void
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 56
    sput-boolean p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_refreshAfterShowAds:Z

    return p0
.end method

.method static synthetic access$200(Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;)V
    .locals 0
    .param p0, "x0"    # Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;

    .prologue
    .line 56
    invoke-static {p0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->addLoader(Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;)V

    return-void
.end method

.method static synthetic access$300()V
    .locals 0

    .prologue
    .line 56
    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->startNextLoader()V

    return-void
.end method

.method static synthetic access$400()I
    .locals 1

    .prologue
    .line 56
    sget v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_totalLoadersCreated:I

    return v0
.end method

.method static synthetic access$408()I
    .locals 2

    .prologue
    .line 56
    sget v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_totalLoadersCreated:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_totalLoadersCreated:I

    return v0
.end method

.method static synthetic access$500()I
    .locals 1

    .prologue
    .line 56
    sget v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_totalLoadersHaveRun:I

    return v0
.end method

.method static synthetic access$508()I
    .locals 2

    .prologue
    .line 56
    sget v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_totalLoadersHaveRun:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_totalLoadersHaveRun:I

    return v0
.end method

.method static synthetic access$600(Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;)V
    .locals 0
    .param p0, "x0"    # Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;

    .prologue
    .line 56
    invoke-static {p0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->urlLoadFailed(Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;)V

    return-void
.end method

.method static synthetic access$700(Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;)V
    .locals 0
    .param p0, "x0"    # Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;

    .prologue
    .line 56
    invoke-static {p0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->urlLoadCompleted(Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;)V

    return-void
.end method

.method private static addLoader(Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;)V
    .locals 2
    .param p0, "loader"    # Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;

    .prologue
    .line 400
    sget-object v1, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_urlLoaderLock:Ljava/lang/Object;

    monitor-enter v1

    .line 401
    :try_start_0
    sget-object v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_urlLoaders:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 402
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_urlLoaders:Ljava/util/ArrayList;

    .line 404
    :cond_0
    sget-object v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_urlLoaders:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 405
    monitor-exit v1

    .line 406
    return-void

    .line 405
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static campaignDataFailed()V
    .locals 1

    .prologue
    .line 693
    sget-object v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_listener:Lcom/unity3d/ads/android/webapp/IUnityAdsWebDataListener;

    if-eqz v0, :cond_0

    .line 694
    sget-object v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_listener:Lcom/unity3d/ads/android/webapp/IUnityAdsWebDataListener;

    invoke-interface {v0}, Lcom/unity3d/ads/android/webapp/IUnityAdsWebDataListener;->onWebDataFailed()V

    .line 695
    :cond_0
    return-void
.end method

.method private static campaignDataReceived(Ljava/lang/String;)V
    .locals 14
    .param p0, "json"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 570
    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 571
    .local v7, "validData":Ljava/lang/Boolean;
    sput-boolean v9, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_initInProgress:Z

    .line 574
    :try_start_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Ad plan: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 576
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sput-object v10, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_campaignJson:Lorg/json/JSONObject;

    .line 579
    sget-object v10, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_campaignJson:Lorg/json/JSONObject;

    const-string v11, "data"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v10

    if-eqz v10, :cond_12

    .line 581
    :try_start_1
    sget-object v10, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_campaignJson:Lorg/json/JSONObject;

    const-string v11, "data"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    .line 588
    .local v2, "data":Lorg/json/JSONObject;
    :try_start_2
    const-string v10, "webViewUrl"

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 589
    :cond_0
    const-string v10, "analyticsUrl"

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 590
    :cond_1
    const-string v10, "impactUrl"

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_2

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 591
    :cond_2
    const-string v10, "gamerId"

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_3

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 592
    :cond_3
    const-string v10, "campaigns"

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_4

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 593
    :cond_4
    const-string v10, "zones"

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_5

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 596
    :cond_5
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_b

    .line 597
    const/4 v6, 0x0

    .line 599
    .local v6, "tmpCampaigns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;>;"
    const-string v10, "campaigns"

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 600
    .local v1, "campaigns":Lorg/json/JSONArray;
    if-eqz v1, :cond_6

    .line 601
    invoke-static {v1}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->deserializeCampaigns(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v6

    .line 604
    :cond_6
    const-string v10, "appFiltering"

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 605
    const-string v10, "appFiltering"

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 607
    .local v0, "appFiltering":Ljava/lang/String;
    if-eqz v0, :cond_a

    const-string v10, "simple"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_7

    const-string v10, "advanced"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 608
    :cond_7
    const-string v10, "advanced"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 609
    const-string v10, "installedAppsUrl"

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_8

    const-string v10, "appWhitelist"

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 610
    const-string v10, "installedAppsUrl"

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    sput-object v10, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->INSTALLED_APPS_URL:Ljava/lang/String;

    .line 611
    const-string v10, "appWhitelist"

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 613
    .local v8, "whitelistUrl":Ljava/lang/String;
    invoke-static {v8}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->requestAppWhitelist(Ljava/lang/String;)V

    .line 617
    .end local v8    # "whitelistUrl":Ljava/lang/String;
    :cond_8
    if-eqz v6, :cond_a

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_a

    .line 618
    invoke-static {v6}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->filterCampaigns(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v5

    .line 620
    .local v5, "filteredCampaigns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;>;"
    if-eqz v5, :cond_9

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-nez v10, :cond_9

    .line 621
    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->initCampaigns()Z

    .line 690
    .end local v0    # "appFiltering":Ljava/lang/String;
    .end local v1    # "campaigns":Lorg/json/JSONArray;
    .end local v2    # "data":Lorg/json/JSONObject;
    .end local v5    # "filteredCampaigns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;>;"
    .end local v6    # "tmpCampaigns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;>;"
    :goto_0
    return-void

    .line 583
    :catch_0
    move-exception v3

    .line 584
    .local v3, "e":Ljava/lang/Exception;
    const-string v10, "Malformed data JSON"

    invoke-static {v10}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 670
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 671
    .restart local v3    # "e":Ljava/lang/Exception;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Malformed JSON: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    .line 673
    invoke-virtual {v3}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v10

    if-eqz v10, :cond_13

    .line 674
    invoke-virtual {v3}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v10

    array-length v11, v10

    :goto_1
    if-ge v9, v11, :cond_13

    aget-object v4, v10, v9

    .line 675
    .local v4, "element":Ljava/lang/StackTraceElement;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Malformed JSON: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    .line 674
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 625
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "element":Ljava/lang/StackTraceElement;
    .restart local v0    # "appFiltering":Ljava/lang/String;
    .restart local v1    # "campaigns":Lorg/json/JSONArray;
    .restart local v2    # "data":Lorg/json/JSONObject;
    .restart local v5    # "filteredCampaigns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;>;"
    .restart local v6    # "tmpCampaigns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;>;"
    :cond_9
    move-object v6, v5

    .line 630
    .end local v0    # "appFiltering":Ljava/lang/String;
    .end local v5    # "filteredCampaigns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;>;"
    :cond_a
    :try_start_3
    sput-object v6, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_campaigns:Ljava/util/ArrayList;

    .line 634
    .end local v1    # "campaigns":Lorg/json/JSONArray;
    .end local v6    # "tmpCampaigns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;>;"
    :cond_b
    sget-object v10, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_campaigns:Ljava/util/ArrayList;

    if-nez v10, :cond_c

    .line 635
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    sput-object v10, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_campaigns:Ljava/util/ArrayList;

    .line 637
    :cond_c
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Parsed total of "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_campaigns:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " campaigns"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 640
    const-string v10, "webViewUrl"

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    sput-object v10, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->WEBVIEW_BASE_URL:Ljava/lang/String;

    .line 641
    const-string v10, "analyticsUrl"

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    sput-object v10, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->ANALYTICS_BASE_URL:Ljava/lang/String;

    .line 642
    const-string v10, "impactUrl"

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    sput-object v10, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->UNITY_ADS_BASE_URL:Ljava/lang/String;

    .line 643
    const-string v10, "gamerId"

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    sput-object v10, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->UNITY_ADS_GAMER_ID:Ljava/lang/String;

    .line 646
    const-string v10, "refreshCampaignsAfterViewed"

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 647
    const/4 v10, 0x0

    sput v10, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->CAMPAIGN_REFRESH_VIEWS_COUNT:I

    .line 648
    const-string v10, "refreshCampaignsAfterViewed"

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    sput v10, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->CAMPAIGN_REFRESH_VIEWS_MAX:I

    .line 652
    :cond_d
    const-string v10, "refreshCampaignsAfterSeconds"

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 653
    const-string v10, "refreshCampaignsAfterSeconds"

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    sput v10, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->CAMPAIGN_REFRESH_SECONDS:I

    .line 657
    :cond_e
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_10

    .line 658
    sget-object v10, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_zoneManager:Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;

    if-eqz v10, :cond_f

    .line 659
    sget-object v10, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_zoneManager:Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;

    invoke-virtual {v10}, Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;->clear()V

    .line 660
    const/4 v10, 0x0

    sput-object v10, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_zoneManager:Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;

    .line 662
    :cond_f
    new-instance v10, Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;

    const-string v11, "zones"

    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;-><init>(Lorg/json/JSONArray;)V

    sput-object v10, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_zoneManager:Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 683
    :cond_10
    sget-object v10, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_listener:Lcom/unity3d/ads/android/webapp/IUnityAdsWebDataListener;

    if-eqz v10, :cond_14

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_14

    sget-object v10, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_campaigns:Ljava/util/ArrayList;

    if-eqz v10, :cond_14

    sget-object v10, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_campaigns:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_14

    .line 684
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unity Ads initialized with "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_campaigns:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " campaigns and "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_zoneManager:Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;

    if-eqz v11, :cond_11

    sget-object v9, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_zoneManager:Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;

    invoke-virtual {v9}, Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;->zoneCount()I

    move-result v9

    :cond_11
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " zones"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->info(Ljava/lang/String;)V

    .line 685
    sget-object v9, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_listener:Lcom/unity3d/ads/android/webapp/IUnityAdsWebDataListener;

    invoke-interface {v9}, Lcom/unity3d/ads/android/webapp/IUnityAdsWebDataListener;->onWebDataCompleted()V

    goto/16 :goto_0

    .line 666
    .end local v2    # "data":Lorg/json/JSONObject;
    :cond_12
    :try_start_4
    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->campaignDataFailed()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 679
    .restart local v3    # "e":Ljava/lang/Exception;
    :cond_13
    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->campaignDataFailed()V

    goto/16 :goto_0

    .line 688
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v2    # "data":Lorg/json/JSONObject;
    :cond_14
    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->campaignDataFailed()V

    goto/16 :goto_0
.end method

.method private static checkFailedUrls()V
    .locals 14

    .prologue
    .line 477
    new-instance v10, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/unity3d/ads/android/cache/UnityAdsCache;->getCacheDirectory()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "UnityAds-pendingrequests.dat"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v10, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 479
    .local v10, "pendingRequestFile":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 482
    sget-object v2, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_urlLoaderLock:Ljava/lang/Object;

    monitor-enter v2

    .line 483
    const/4 v1, 0x1

    :try_start_0
    invoke-static {v10, v1}, Lcom/unity3d/ads/android/UnityAdsUtils;->readFile(Ljava/io/File;Z)Ljava/lang/String;

    move-result-object v6

    .line 484
    .local v6, "contents":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    move-result v13

    .line 485
    .local v13, "success":Z
    if-nez v13, :cond_0

    const-string v1, "Could not remove pending requests file"

    invoke-static {v1}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 486
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 492
    :try_start_1
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 493
    .local v12, "pendingRequestsJson":Lorg/json/JSONObject;
    const-string v1, "data"

    invoke-virtual {v12, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    .line 495
    .local v11, "pendingRequestsArray":Lorg/json/JSONArray;
    if-eqz v11, :cond_1

    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 496
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v9, v1, :cond_1

    .line 497
    invoke-virtual {v11, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 498
    .local v8, "failedUrl":Lorg/json/JSONObject;
    new-instance v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoaderCreator;

    const-string v1, "url"

    .line 499
    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "body"

    .line 500
    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "methodType"

    .line 501
    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "requestType"

    .line 502
    invoke-virtual {v8, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsRequestType;->getValueOf(Ljava/lang/String;)Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsRequestType;

    move-result-object v4

    const-string v5, "retries"

    .line 503
    invoke-virtual {v8, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoaderCreator;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsRequestType;I)V

    .line 505
    .local v0, "ulc":Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoaderCreator;
    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsUtils;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 496
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 486
    .end local v0    # "ulc":Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoaderCreator;
    .end local v6    # "contents":Ljava/lang/String;
    .end local v8    # "failedUrl":Lorg/json/JSONObject;
    .end local v9    # "i":I
    .end local v11    # "pendingRequestsArray":Lorg/json/JSONArray;
    .end local v12    # "pendingRequestsJson":Lorg/json/JSONObject;
    .end local v13    # "success":Z
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 509
    .restart local v6    # "contents":Ljava/lang/String;
    .restart local v13    # "success":Z
    :catch_0
    move-exception v7

    .line 510
    .local v7, "e":Ljava/lang/Exception;
    const-string v1, "Problems while sending some of the failed urls."

    invoke-static {v1}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    .line 514
    .end local v6    # "contents":Ljava/lang/String;
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v13    # "success":Z
    :cond_1
    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->startNextLoader()V

    .line 515
    return-void
.end method

.method private static deserializeCampaigns(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 6
    .param p0, "campaignsArray"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;",
            ">;"
        }
    .end annotation

    .prologue
    .line 698
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 700
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 702
    .local v4, "retList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v2, v5, :cond_2

    .line 704
    :try_start_0
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 705
    .local v3, "jsonCampaign":Lorg/json/JSONObject;
    new-instance v0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    invoke-direct {v0, v3}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;-><init>(Lorg/json/JSONObject;)V

    .line 707
    .local v0, "campaign":Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;
    invoke-virtual {v0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->hasValidData()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 708
    const-string v5, "Adding campaign to cache"

    invoke-static {v5}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 709
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 702
    .end local v0    # "campaign":Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;
    .end local v3    # "jsonCampaign":Lorg/json/JSONObject;
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 712
    :catch_0
    move-exception v1

    .line 713
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "Problem with the campaign, skipping."

    invoke-static {v5}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    goto :goto_1

    .line 720
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "i":I
    .end local v4    # "retList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;>;"
    :cond_1
    const/4 v4, 0x0

    :cond_2
    return-object v4
.end method

.method private static filterCampaigns(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;",
            ">;"
        }
    .end annotation

    .prologue
    .local p0, "campaigns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;>;"
    const/16 v13, 0x26

    const/4 v12, 0x0

    .line 724
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-nez v9, :cond_2

    :cond_0
    const/4 v5, 0x0

    .line 782
    :cond_1
    :goto_0
    return-object v5

    .line 726
    :cond_2
    sget-object v9, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->APPLICATION_CONTEXT:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 727
    .local v8, "pm":Landroid/content/pm/PackageManager;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 728
    .local v5, "newCampaigns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;>;"
    const/4 v4, 0x0

    .line 730
    .local v4, "installedCampaigns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_a

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    .line 731
    .local v0, "campaign":Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;
    invoke-virtual {v0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->getStoreId()Ljava/lang/String;

    move-result-object v6

    .line 734
    .local v6, "packageName":Ljava/lang/String;
    invoke-virtual {v6, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    const/4 v11, -0x1

    if-eq v10, v11, :cond_3

    .line 735
    invoke-virtual {v6, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    invoke-virtual {v6, v12, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 738
    :cond_3
    const/4 v3, 0x0

    .line 742
    .local v3, "installed":Z
    const/4 v10, 0x0

    :try_start_0
    invoke-virtual {v8, v6, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    .line 743
    .local v7, "pkgInfo":Landroid/content/pm/PackageInfo;
    if-eqz v7, :cond_4

    iget-object v10, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    if-eqz v10, :cond_4

    .line 744
    const/4 v3, 0x1

    .line 751
    .end local v7    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :cond_4
    :goto_2
    if-eqz v3, :cond_6

    .line 752
    if-nez v4, :cond_5

    .line 753
    new-instance v4, Ljava/util/ArrayList;

    .end local v4    # "installedCampaigns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 756
    .restart local v4    # "installedCampaigns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_5
    invoke-virtual {v0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->getGameId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 759
    :cond_6
    invoke-virtual {v0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->getFilterMode()Ljava/lang/String;

    move-result-object v2

    .line 761
    .local v2, "filterMode":Ljava/lang/String;
    if-eqz v2, :cond_8

    const-string v10, "whitelist"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 763
    if-eqz v3, :cond_7

    .line 764
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 746
    .end local v2    # "filterMode":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 747
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v3, 0x0

    goto :goto_2

    .line 766
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v2    # "filterMode":Ljava/lang/String;
    :cond_7
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Filtered game id "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->getGameId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " from ad plan (not installed)"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    goto :goto_1

    .line 770
    :cond_8
    if-eqz v3, :cond_9

    .line 771
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Filtered game id "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->getGameId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " from ad plan (already installed)"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 773
    :cond_9
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 778
    .end local v0    # "campaign":Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;
    .end local v2    # "filterMode":Ljava/lang/String;
    .end local v3    # "installed":Z
    .end local v6    # "packageName":Ljava/lang/String;
    :cond_a
    if-eqz v4, :cond_1

    .line 779
    const-string v9, ","

    invoke-static {v9, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v9

    sput-object v9, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->APPFILTER_LIST:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public static getCampaignById(Ljava/lang/String;)Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;
    .locals 2
    .param p0, "campaignId"    # Ljava/lang/String;

    .prologue
    .line 132
    if-eqz p0, :cond_1

    sget-object v1, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_campaigns:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 133
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_campaigns:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 134
    sget-object v1, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_campaigns:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_campaigns:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    invoke-virtual {v1}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->getCampaignId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_campaigns:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    invoke-virtual {v1}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->getCampaignId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 135
    sget-object v1, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_campaigns:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    .line 139
    .end local v0    # "i":I
    :goto_1
    return-object v1

    .line 133
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 139
    .end local v0    # "i":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static getData()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 328
    sget-object v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_campaignJson:Lorg/json/JSONObject;

    return-object v0
.end method

.method public static getVideoPlanCampaigns()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;",
            ">;"
        }
    .end annotation

    .prologue
    .line 128
    sget-object v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_campaigns:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static getViewableVideoPlanCampaigns()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;",
            ">;"
        }
    .end annotation

    .prologue
    .line 143
    const/4 v2, 0x0

    .line 146
    .local v2, "viewableCampaigns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;>;"
    sget-object v3, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_campaigns:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    .line 147
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "viewableCampaigns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 148
    .restart local v2    # "viewableCampaigns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v3, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_campaigns:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 149
    sget-object v3, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_campaigns:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    .line 150
    .local v0, "currentCampaign":Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->getCampaignStatus()Lcom/unity3d/ads/android/campaign/UnityAdsCampaign$UnityAdsCampaignStatus;

    move-result-object v3

    sget-object v4, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign$UnityAdsCampaignStatus;->VIEWED:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign$UnityAdsCampaignStatus;

    invoke-virtual {v3, v4}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign$UnityAdsCampaignStatus;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 151
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 155
    .end local v0    # "currentCampaign":Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;
    .end local v1    # "i":I
    :cond_1
    return-object v2
.end method

.method public static getZoneManager()Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;
    .locals 1

    .prologue
    .line 386
    sget-object v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_zoneManager:Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;

    return-object v0
.end method

.method public static hasViewableAds()Z
    .locals 1

    .prologue
    .line 120
    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->getViewableVideoPlanCampaigns()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->getViewableVideoPlanCampaigns()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static initCampaigns()Z
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/4 v5, 0x0

    .line 163
    sget-boolean v1, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_initInProgress:Z

    if-eqz v1, :cond_0

    .line 229
    .local v10, "isConnected":Z
    :goto_0
    return v13

    .line 167
    .end local v10    # "isConnected":Z
    :cond_0
    invoke-static {}, Lcom/unity3d/ads/android/UnityAdsUtils;->isDebuggable()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->TEST_DATA:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 168
    sget-object v1, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->TEST_DATA:Ljava/lang/String;

    invoke-static {v1}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->campaignDataReceived(Ljava/lang/String;)V

    goto :goto_0

    .line 172
    :cond_1
    sput-boolean v13, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_initInProgress:Z

    .line 175
    const/4 v10, 0x0

    .line 176
    .restart local v10    # "isConnected":Z
    :try_start_0
    sget-object v1, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->APPLICATION_CONTEXT:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/ConnectivityManager;

    .line 178
    .local v8, "cm":Landroid/net/ConnectivityManager;
    if-eqz v8, :cond_2

    .line 179
    invoke-virtual {v8}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v6

    .line 180
    .local v6, "activeNetwork":Landroid/net/NetworkInfo;
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_3

    move v10, v13

    .line 183
    .end local v6    # "activeNetwork":Landroid/net/NetworkInfo;
    :cond_2
    :goto_1
    if-nez v10, :cond_4

    .line 184
    const-string v1, "Device offline, can\'t init campaigns"

    invoke-static {v1}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    .line 185
    new-instance v1, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$1;

    invoke-direct {v1}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$1;-><init>()V

    invoke-static {v1}, Lcom/unity3d/ads/android/UnityAdsUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    move v13, v5

    .line 191
    goto :goto_0

    .restart local v6    # "activeNetwork":Landroid/net/NetworkInfo;
    :cond_3
    move v10, v5

    .line 180
    goto :goto_1

    .line 194
    .end local v6    # "activeNetwork":Landroid/net/NetworkInfo;
    :cond_4
    const-string v1, "impact.applifier.com"

    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v7

    .line 195
    .local v7, "adServer":Ljava/net/InetAddress;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ad server resolves to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 197
    invoke-virtual {v7}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 198
    const-string v1, "initCampaigns failed, ad server resolves to loopback address (due to ad blocker?)"

    invoke-static {v1}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    .line 199
    new-instance v1, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$2;

    invoke-direct {v1}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$2;-><init>()V

    invoke-static {v1}, Lcom/unity3d/ads/android/UnityAdsUtils;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move v13, v5

    .line 205
    goto :goto_0

    .line 208
    .end local v7    # "adServer":Ljava/net/InetAddress;
    .end local v8    # "cm":Landroid/net/ConnectivityManager;
    :catch_0
    move-exception v9

    .line 209
    .local v9, "e":Ljava/net/UnknownHostException;
    const-string v1, "initCampaigns failed due to DNS error, unable to resolve ad server address"

    invoke-static {v1}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    .line 210
    new-instance v1, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$3;

    invoke-direct {v1}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$3;-><init>()V

    invoke-static {v1}, Lcom/unity3d/ads/android/UnityAdsUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    move v13, v5

    .line 216
    goto :goto_0

    .line 218
    .end local v9    # "e":Ljava/net/UnknownHostException;
    :catch_1
    move-exception v9

    .line 219
    .local v9, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown exception during DNS test: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 222
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_5
    invoke-static {}, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->getCampaignQueryUrl()Ljava/lang/String;

    move-result-object v12

    .line 223
    .local v12, "url":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requesting Unity Ads ad plan from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->info(Ljava/lang/String;)V

    .line 224
    const-string v1, "\\?"

    invoke-virtual {v12, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 225
    .local v11, "parts":[Ljava/lang/String;
    new-instance v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoaderCreator;

    aget-object v1, v11, v5

    aget-object v2, v11, v13

    const-string v3, "GET"

    sget-object v4, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsRequestType;->VideoPlan:Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsRequestType;

    invoke-direct/range {v0 .. v5}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoaderCreator;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsRequestType;I)V

    .line 226
    .local v0, "ulc":Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoaderCreator;
    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 227
    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->checkFailedUrls()V

    goto/16 :goto_0
.end method

.method public static initInProgress()Z
    .locals 1

    .prologue
    .line 159
    sget-boolean v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_initInProgress:Z

    return v0
.end method

.method public static refreshCampaignsIfNeeded()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 332
    const/4 v0, 0x0

    .line 334
    .local v0, "refresh":Z
    sget-boolean v2, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_refreshAfterShowAds:Z

    if-eqz v2, :cond_2

    .line 335
    sput-boolean v1, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_refreshAfterShowAds:Z

    .line 336
    const-string v2, "Starting delayed ad plan refresh"

    invoke-static {v2}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 337
    const/4 v0, 0x1

    .line 350
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 351
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$4;

    invoke-direct {v2}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$4;-><init>()V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 355
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 356
    const/4 v1, 0x1

    .line 359
    :cond_1
    return v1

    .line 338
    :cond_2
    sget-wide v2, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_campaignRefreshTimerDeadline:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sget-wide v4, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_campaignRefreshTimerDeadline:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    .line 339
    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->removeCampaignRefreshTimer()V

    .line 340
    const-string v2, "Refreshing ad plan from server due to timer deadline"

    invoke-static {v2}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 341
    const/4 v0, 0x1

    goto :goto_0

    .line 342
    :cond_3
    sget v2, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->CAMPAIGN_REFRESH_VIEWS_MAX:I

    if-lez v2, :cond_4

    sget v2, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->CAMPAIGN_REFRESH_VIEWS_COUNT:I

    sget v3, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->CAMPAIGN_REFRESH_VIEWS_MAX:I

    if-lt v2, v3, :cond_4

    .line 343
    const-string v2, "Refreshing ad plan from server due to endscreen limit"

    invoke-static {v2}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 344
    const/4 v0, 0x1

    goto :goto_0

    .line 345
    :cond_4
    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->getVideoPlanCampaigns()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->getViewableVideoPlanCampaigns()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 346
    const-string v2, "All available videos watched, refreshing ad plan from server"

    invoke-static {v2}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 347
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static removeCampaignRefreshTimer()V
    .locals 2

    .prologue
    .line 392
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_campaignRefreshTimerDeadline:J

    .line 394
    sget-object v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_campaignRefreshTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 395
    sget-object v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_campaignRefreshTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 397
    :cond_0
    return-void
.end method

.method private static requestAppWhitelist(Ljava/lang/String;)V
    .locals 6
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 786
    sget-boolean v1, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->whitelistRequested:Z

    if-eqz v1, :cond_0

    .line 790
    :goto_0
    return-void

    .line 787
    :cond_0
    const/4 v1, 0x1

    sput-boolean v1, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->whitelistRequested:Z

    .line 788
    new-instance v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoaderCreator;

    const/4 v2, 0x0

    const-string v3, "GET"

    sget-object v4, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsRequestType;->AppWhitelist:Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsRequestType;

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoaderCreator;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsRequestType;I)V

    .line 789
    .local v0, "ulc":Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoaderCreator;
    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static sendAnalyticsRequest(Ljava/lang/String;Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;)V
    .locals 13
    .param p0, "eventType"    # Ljava/lang/String;
    .param p1, "campaign"    # Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v5, 0x0

    .line 305
    if-eqz p1, :cond_2

    .line 306
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%s"

    new-array v8, v10, [Ljava/lang/Object;

    sget-object v9, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->ANALYTICS_BASE_URL:Ljava/lang/String;

    aput-object v9, v8, v5

    invoke-static {v3, v4, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 307
    .local v1, "viewUrl":Ljava/lang/String;
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%s=%s"

    new-array v8, v11, [Ljava/lang/Object;

    const-string v9, "gameId"

    aput-object v9, v8, v5

    sget-object v9, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->UNITY_ADS_GAME_ID:Ljava/lang/String;

    aput-object v9, v8, v10

    invoke-static {v3, v4, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 308
    .local v2, "analyticsUrl":Ljava/lang/String;
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%s&%s=%s"

    new-array v8, v12, [Ljava/lang/Object;

    aput-object v2, v8, v5

    const-string v9, "type"

    aput-object v9, v8, v10

    aput-object p0, v8, v11

    invoke-static {v3, v4, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 309
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%s&%s=%s"

    new-array v8, v12, [Ljava/lang/Object;

    aput-object v2, v8, v5

    const-string v9, "trackingId"

    aput-object v9, v8, v10

    sget-object v9, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->UNITY_ADS_GAMER_ID:Ljava/lang/String;

    aput-object v9, v8, v11

    invoke-static {v3, v4, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 310
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%s&%s=%s"

    new-array v8, v12, [Ljava/lang/Object;

    aput-object v2, v8, v5

    const-string v9, "providerId"

    aput-object v9, v8, v10

    invoke-virtual {p1}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->getCampaignId()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {v3, v4, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 311
    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->getZoneManager()Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;->getCurrentZone()Lcom/unity3d/ads/android/zone/UnityAdsZone;

    move-result-object v6

    .line 312
    .local v6, "currentZone":Lcom/unity3d/ads/android/zone/UnityAdsZone;
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%s&%s=%s"

    new-array v8, v12, [Ljava/lang/Object;

    aput-object v2, v8, v5

    const-string v9, "zone"

    aput-object v9, v8, v10

    invoke-virtual {v6}, Lcom/unity3d/ads/android/zone/UnityAdsZone;->getZoneId()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {v3, v4, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 314
    invoke-virtual {v6}, Lcom/unity3d/ads/android/zone/UnityAdsZone;->isIncentivized()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v6

    .line 315
    check-cast v3, Lcom/unity3d/ads/android/zone/UnityAdsIncentivizedZone;

    invoke-virtual {v3}, Lcom/unity3d/ads/android/zone/UnityAdsIncentivizedZone;->itemManager()Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;

    move-result-object v7

    .line 316
    .local v7, "itemManager":Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%s&%s=%s"

    new-array v8, v12, [Ljava/lang/Object;

    aput-object v2, v8, v5

    const-string v9, "rewardItem"

    aput-object v9, v8, v10

    invoke-virtual {v7}, Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;->getCurrentItem()Lcom/unity3d/ads/android/item/UnityAdsRewardItem;

    move-result-object v9

    invoke-virtual {v9}, Lcom/unity3d/ads/android/item/UnityAdsRewardItem;->getKey()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {v3, v4, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 319
    .end local v7    # "itemManager":Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;
    :cond_0
    invoke-virtual {v6}, Lcom/unity3d/ads/android/zone/UnityAdsZone;->getGamerSid()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 320
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%s&%s=%s"

    new-array v8, v12, [Ljava/lang/Object;

    aput-object v2, v8, v5

    const-string v9, "sid"

    aput-object v9, v8, v10

    invoke-virtual {v6}, Lcom/unity3d/ads/android/zone/UnityAdsZone;->getGamerSid()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {v3, v4, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 322
    :cond_1
    new-instance v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoaderCreator;

    const-string v3, "GET"

    sget-object v4, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsRequestType;->Analytics:Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsRequestType;

    invoke-direct/range {v0 .. v5}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoaderCreator;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsRequestType;I)V

    .line 323
    .local v0, "ulc":Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoaderCreator;
    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 325
    .end local v0    # "ulc":Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoaderCreator;
    .end local v1    # "viewUrl":Ljava/lang/String;
    .end local v2    # "analyticsUrl":Ljava/lang/String;
    .end local v6    # "currentZone":Lcom/unity3d/ads/android/zone/UnityAdsZone;
    :cond_2
    return-void
.end method

.method public static sendCampaignViewProgress(Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;)Z
    .locals 16
    .param p0, "campaign"    # Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;
    .param p1, "position"    # Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;

    .prologue
    .line 233
    const/4 v11, 0x0

    .line 234
    .local v11, "progressSent":Z
    if-nez p0, :cond_0

    const/4 v3, 0x0

    .line 300
    :goto_0
    return v3

    .line 236
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unity Ads video position: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", gamer id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->UNITY_ADS_GAMER_ID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->info(Ljava/lang/String;)V

    .line 238
    sget-object v3, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->UNITY_ADS_GAMER_ID:Ljava/lang/String;

    if-eqz v3, :cond_6

    .line 239
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%s%s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v12, 0x0

    sget-object v13, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->UNITY_ADS_BASE_URL:Ljava/lang/String;

    aput-object v13, v5, v12

    const/4 v12, 0x1

    const-string v13, "gamers/"

    aput-object v13, v5, v12

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 240
    .local v1, "viewUrl":Ljava/lang/String;
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%s%s/video/%s/%s"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v1, v5, v12

    const/4 v12, 0x1

    sget-object v13, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->UNITY_ADS_GAMER_ID:Ljava/lang/String;

    aput-object v13, v5, v12

    const/4 v12, 0x2

    invoke-virtual/range {p1 .. p1}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v5, v12

    const/4 v12, 0x3

    invoke-virtual/range {p0 .. p0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->getCampaignId()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v5, v12

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 241
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%s/%s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v1, v5, v12

    const/4 v12, 0x1

    sget-object v13, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->UNITY_ADS_GAME_ID:Ljava/lang/String;

    aput-object v13, v5, v12

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 242
    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->getZoneManager()Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;->getCurrentZone()Lcom/unity3d/ads/android/zone/UnityAdsZone;

    move-result-object v8

    .line 243
    .local v8, "currentZone":Lcom/unity3d/ads/android/zone/UnityAdsZone;
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%s=%s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string v13, "zone"

    aput-object v13, v5, v12

    const/4 v12, 0x1

    invoke-virtual {v8}, Lcom/unity3d/ads/android/zone/UnityAdsZone;->getZoneId()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v5, v12

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 246
    .local v2, "queryParams":Ljava/lang/String;
    :try_start_0
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%s&%s=%s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v2, v5, v12

    const/4 v12, 0x1

    const-string v13, "platform"

    aput-object v13, v5, v12

    const/4 v12, 0x2

    const-string v13, "android"

    aput-object v13, v5, v12

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 247
    invoke-static {}, Lcom/unity3d/ads/android/data/UnityAdsDevice;->getAdvertisingTrackingId()Ljava/lang/String;

    move-result-object v6

    .line 249
    .local v6, "advertisingId":Ljava/lang/String;
    if-eqz v6, :cond_8

    .line 250
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "%s&%s=%d"

    const/4 v3, 0x3

    new-array v12, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v2, v12, v3

    const/4 v3, 0x1

    const-string v13, "trackingEnabled"

    aput-object v13, v12, v3

    const/4 v13, 0x2

    invoke-static {}, Lcom/unity3d/ads/android/data/UnityAdsDevice;->isLimitAdTrackingEnabled()Z

    move-result v3

    if-eqz v3, :cond_7

    const/4 v3, 0x0

    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v12, v13

    invoke-static {v4, v5, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 251
    invoke-static {v6}, Lcom/unity3d/ads/android/UnityAdsUtils;->Md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    .line 252
    .local v7, "advertisingIdMd5":Ljava/lang/String;
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%s&%s=%s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v2, v5, v12

    const/4 v12, 0x1

    const-string v13, "advertisingTrackingId"

    aput-object v13, v5, v12

    const/4 v12, 0x2

    const-string v13, "UTF-8"

    invoke-static {v7, v13}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v5, v12

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 253
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%s&%s=%s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v2, v5, v12

    const/4 v12, 0x1

    const-string v13, "rawAdvertisingTrackingId"

    aput-object v13, v5, v12

    const/4 v12, 0x2

    const-string v13, "UTF-8"

    invoke-static {v6, v13}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v5, v12

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 262
    .end local v7    # "advertisingIdMd5":Ljava/lang/String;
    :cond_1
    :goto_2
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%s&%s=%s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v2, v5, v12

    const/4 v12, 0x1

    const-string v13, "gameId"

    aput-object v13, v5, v12

    const/4 v12, 0x2

    sget-object v13, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->UNITY_ADS_GAME_ID:Ljava/lang/String;

    const-string v14, "UTF-8"

    invoke-static {v13, v14}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v5, v12

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 263
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%s&%s=%s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v2, v5, v12

    const/4 v12, 0x1

    const-string v13, "sdkVersion"

    aput-object v13, v5, v12

    const/4 v12, 0x2

    const-string v13, "1506"

    const-string v14, "UTF-8"

    invoke-static {v13, v14}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v5, v12

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 264
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%s&%s=%s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v2, v5, v12

    const/4 v12, 0x1

    const-string v13, "softwareVersion"

    aput-object v13, v5, v12

    const/4 v12, 0x2

    invoke-static {}, Lcom/unity3d/ads/android/data/UnityAdsDevice;->getSoftwareVersion()Ljava/lang/String;

    move-result-object v13

    const-string v14, "UTF-8"

    invoke-static {v13, v14}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v5, v12

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 265
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%s&%s=%s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v2, v5, v12

    const/4 v12, 0x1

    const-string v13, "hardwareVersion"

    aput-object v13, v5, v12

    const/4 v12, 0x2

    invoke-static {}, Lcom/unity3d/ads/android/data/UnityAdsDevice;->getHardwareVersion()Ljava/lang/String;

    move-result-object v13

    const-string v14, "UTF-8"

    invoke-static {v13, v14}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v5, v12

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 266
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%s&%s=%s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v2, v5, v12

    const/4 v12, 0x1

    const-string v13, "deviceType"

    aput-object v13, v5, v12

    const/4 v12, 0x2

    invoke-static {}, Lcom/unity3d/ads/android/data/UnityAdsDevice;->getDeviceType()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v5, v12

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 267
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%s&%s=%s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v2, v5, v12

    const/4 v12, 0x1

    const-string v13, "connectionType"

    aput-object v13, v5, v12

    const/4 v12, 0x2

    invoke-static {}, Lcom/unity3d/ads/android/data/UnityAdsDevice;->getConnectionType()Ljava/lang/String;

    move-result-object v13

    const-string v14, "UTF-8"

    invoke-static {v13, v14}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v5, v12

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 269
    invoke-static {}, Lcom/unity3d/ads/android/data/UnityAdsDevice;->isUsingWifi()Z

    move-result v3

    if-nez v3, :cond_2

    .line 270
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%s&%s=%d"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v2, v5, v12

    const/4 v12, 0x1

    const-string v13, "androidNetworkType"

    aput-object v13, v5, v12

    const/4 v12, 0x2

    invoke-static {}, Lcom/unity3d/ads/android/data/UnityAdsDevice;->getNetworkType()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v5, v12

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 273
    :cond_2
    sget-wide v4, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->CACHING_SPEED:J

    const-wide/16 v12, 0x0

    cmp-long v3, v4, v12

    if-lez v3, :cond_3

    .line 274
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%s&%s=%d"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v2, v5, v12

    const/4 v12, 0x1

    const-string v13, "cachingSpeed"

    aput-object v13, v5, v12

    const/4 v12, 0x2

    sget-wide v14, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->CACHING_SPEED:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v5, v12

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 277
    :cond_3
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%s&%s=%s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v2, v5, v12

    const/4 v12, 0x1

    const-string v13, "screenSize"

    aput-object v13, v5, v12

    const/4 v12, 0x2

    invoke-static {}, Lcom/unity3d/ads/android/data/UnityAdsDevice;->getScreenSize()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v5, v12

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 278
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%s&%s=%s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v2, v5, v12

    const/4 v12, 0x1

    const-string v13, "screenDensity"

    aput-object v13, v5, v12

    const/4 v12, 0x2

    invoke-static {}, Lcom/unity3d/ads/android/data/UnityAdsDevice;->getScreenDensity()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v5, v12

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 279
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "%s&%s=%s"

    const/4 v3, 0x3

    new-array v12, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v2, v12, v3

    const/4 v3, 0x1

    const-string v13, "cachedPlayback"

    aput-object v13, v12, v3

    const/4 v13, 0x2

    sget-object v3, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->SELECTED_CAMPAIGN_CACHED:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_9

    const-string v3, "true"

    :goto_3
    aput-object v3, v12, v13

    invoke-static {v4, v5, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 285
    .end local v6    # "advertisingId":Ljava/lang/String;
    :goto_4
    invoke-virtual {v8}, Lcom/unity3d/ads/android/zone/UnityAdsZone;->isIncentivized()Z

    move-result v3

    if-eqz v3, :cond_4

    move-object v3, v8

    .line 286
    check-cast v3, Lcom/unity3d/ads/android/zone/UnityAdsIncentivizedZone;

    invoke-virtual {v3}, Lcom/unity3d/ads/android/zone/UnityAdsIncentivizedZone;->itemManager()Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;

    move-result-object v10

    .line 287
    .local v10, "itemManager":Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%s&%s=%s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v2, v5, v12

    const/4 v12, 0x1

    const-string v13, "rewardItem"

    aput-object v13, v5, v12

    const/4 v12, 0x2

    invoke-virtual {v10}, Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;->getCurrentItem()Lcom/unity3d/ads/android/item/UnityAdsRewardItem;

    move-result-object v13

    invoke-virtual {v13}, Lcom/unity3d/ads/android/item/UnityAdsRewardItem;->getKey()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v5, v12

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 290
    .end local v10    # "itemManager":Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;
    :cond_4
    invoke-virtual {v8}, Lcom/unity3d/ads/android/zone/UnityAdsZone;->getGamerSid()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 291
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%s&%s=%s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v2, v5, v12

    const/4 v12, 0x1

    const-string v13, "sid"

    aput-object v13, v5, v12

    const/4 v12, 0x2

    invoke-virtual {v8}, Lcom/unity3d/ads/android/zone/UnityAdsZone;->getGamerSid()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v5, v12

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 294
    :cond_5
    new-instance v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoaderCreator;

    const-string v3, "POST"

    sget-object v4, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsRequestType;->VideoViewed:Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsRequestType;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoaderCreator;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsRequestType;I)V

    .line 295
    .local v0, "ulc":Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoaderCreator;
    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 297
    const/4 v11, 0x1

    .end local v0    # "ulc":Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoaderCreator;
    .end local v1    # "viewUrl":Ljava/lang/String;
    .end local v2    # "queryParams":Ljava/lang/String;
    .end local v8    # "currentZone":Lcom/unity3d/ads/android/zone/UnityAdsZone;
    :cond_6
    move v3, v11

    .line 300
    goto/16 :goto_0

    .line 250
    .restart local v1    # "viewUrl":Ljava/lang/String;
    .restart local v2    # "queryParams":Ljava/lang/String;
    .restart local v6    # "advertisingId":Ljava/lang/String;
    .restart local v8    # "currentZone":Lcom/unity3d/ads/android/zone/UnityAdsZone;
    :cond_7
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 256
    :cond_8
    const/4 v3, 0x0

    :try_start_1
    invoke-static {v3}, Lcom/unity3d/ads/android/data/UnityAdsDevice;->getAndroidId(Z)Ljava/lang/String;

    move-result-object v3

    const-string v4, "unknown"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 257
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%s&%s=%s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v2, v5, v12

    const/4 v12, 0x1

    const-string v13, "androidId"

    aput-object v13, v5, v12

    const/4 v12, 0x2

    const/4 v13, 0x1

    invoke-static {v13}, Lcom/unity3d/ads/android/data/UnityAdsDevice;->getAndroidId(Z)Ljava/lang/String;

    move-result-object v13

    const-string v14, "UTF-8"

    invoke-static {v13, v14}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v5, v12

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 258
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%s&%s=%s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v2, v5, v12

    const/4 v12, 0x1

    const-string v13, "rawAndroidId"

    aput-object v13, v5, v12

    const/4 v12, 0x2

    const/4 v13, 0x0

    invoke-static {v13}, Lcom/unity3d/ads/android/data/UnityAdsDevice;->getAndroidId(Z)Ljava/lang/String;

    move-result-object v13

    const-string v14, "UTF-8"

    invoke-static {v13, v14}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v5, v12

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2

    .line 279
    :cond_9
    const-string v3, "false"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3

    .line 281
    .end local v6    # "advertisingId":Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 282
    .local v9, "e":Ljava/lang/Exception;
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "Problems creating campaigns query: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v5, v12

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    goto/16 :goto_4
.end method

.method private static sendInstalledApps(Ljava/lang/String;Ljava/util/Map;)V
    .locals 7
    .param p0, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 819
    .local p1, "whitelist":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-boolean v1, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->installedAppsSent:Z

    if-eqz v1, :cond_0

    .line 830
    :goto_0
    return-void

    .line 820
    :cond_0
    const/4 v1, 0x1

    sput-boolean v1, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->installedAppsSent:Z

    .line 821
    invoke-static {p1}, Lcom/unity3d/ads/android/data/UnityAdsDevice;->getPackageDataJson(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v6

    .line 823
    .local v6, "appsJson":Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 824
    new-instance v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoaderCreator;

    invoke-static {}, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->getCampaignQueryArguments()Ljava/lang/String;

    move-result-object v2

    const-string v3, "POST"

    sget-object v4, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsRequestType;->InstalledApps:Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsRequestType;

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoaderCreator;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsRequestType;I)V

    .line 825
    .local v0, "ulc":Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoaderCreator;
    invoke-virtual {v0, v6}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoaderCreator;->setPostBody(Ljava/lang/String;)V

    .line 826
    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 828
    .end local v0    # "ulc":Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoaderCreator;
    :cond_1
    const-string v1, "Nothing to send for installed applications"

    invoke-static {v1}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setWebDataListener(Lcom/unity3d/ads/android/webapp/IUnityAdsWebDataListener;)V
    .locals 0
    .param p0, "listener"    # Lcom/unity3d/ads/android/webapp/IUnityAdsWebDataListener;

    .prologue
    .line 124
    sput-object p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_listener:Lcom/unity3d/ads/android/webapp/IUnityAdsWebDataListener;

    .line 125
    return-void
.end method

.method public static setupCampaignRefreshTimer()V
    .locals 6

    .prologue
    .line 363
    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->removeCampaignRefreshTimer()V

    .line 365
    sget v1, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->CAMPAIGN_REFRESH_SECONDS:I

    if-lez v1, :cond_0

    .line 366
    new-instance v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$5;

    invoke-direct {v0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$5;-><init>()V

    .line 379
    .local v0, "campaignRefreshTimerTask":Ljava/util/TimerTask;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sget v1, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->CAMPAIGN_REFRESH_SECONDS:I

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v4, v1

    add-long/2addr v2, v4

    sput-wide v2, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_campaignRefreshTimerDeadline:J

    .line 380
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    sput-object v1, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_campaignRefreshTimer:Ljava/util/Timer;

    .line 381
    sget-object v1, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_campaignRefreshTimer:Ljava/util/Timer;

    sget v2, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->CAMPAIGN_REFRESH_SECONDS:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 383
    :cond_0
    return-void
.end method

.method private static startNextLoader()V
    .locals 3

    .prologue
    .line 409
    sget-object v1, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_urlLoaderLock:Ljava/lang/Object;

    monitor-enter v1

    .line 410
    :try_start_0
    sget-object v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_urlLoaders:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_urlLoaders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    sget-boolean v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_isLoading:Z

    if-nez v0, :cond_0

    .line 411
    const-string v0, "Starting next URL loader"

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 412
    const/4 v0, 0x1

    sput-boolean v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_isLoading:Z

    .line 413
    sget-object v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_urlLoaders:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 415
    :cond_0
    monitor-exit v1

    .line 416
    return-void

    .line 415
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static urlLoadCompleted(Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;)V
    .locals 2
    .param p0, "loader"    # Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;

    .prologue
    .line 419
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->getRequestType()Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsRequestType;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 420
    sget-object v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$6;->$SwitchMap$com$unity3d$ads$android$webapp$UnityAdsWebData$UnityAdsRequestType:[I

    invoke-virtual {p0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->getRequestType()Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsRequestType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsRequestType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 436
    :goto_0
    :pswitch_0
    invoke-virtual {p0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->clear()V

    .line 442
    :goto_1
    sget v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_totalUrlsSent:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_totalUrlsSent:I

    .line 443
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Total urls sent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_totalUrlsSent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 444
    const/4 v0, 0x0

    sput-boolean v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_isLoading:Z

    .line 445
    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->startNextLoader()V

    .line 446
    return-void

    .line 422
    :pswitch_1
    invoke-virtual {p0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->getData()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->campaignDataReceived(Ljava/lang/String;)V

    goto :goto_0

    .line 431
    :pswitch_2
    invoke-virtual {p0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->getData()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->whitelistReceived(Ljava/lang/String;)V

    goto :goto_0

    .line 439
    :cond_0
    const-string v0, "Got broken urlLoader!"

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    goto :goto_1

    .line 420
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private static urlLoadFailed(Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;)V
    .locals 2
    .param p0, "loader"    # Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;

    .prologue
    .line 449
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->getRequestType()Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsRequestType;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 450
    sget-object v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$6;->$SwitchMap$com$unity3d$ads$android$webapp$UnityAdsWebData$UnityAdsRequestType:[I

    invoke-virtual {p0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->getRequestType()Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsRequestType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsRequestType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 466
    :goto_0
    :pswitch_0
    invoke-virtual {p0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->clear()V

    .line 472
    :goto_1
    const/4 v0, 0x0

    sput-boolean v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_isLoading:Z

    .line 473
    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->startNextLoader()V

    .line 474
    return-void

    .line 454
    :pswitch_1
    invoke-static {p0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->writeFailedUrl(Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;)V

    goto :goto_0

    .line 457
    :pswitch_2
    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->campaignDataFailed()V

    goto :goto_0

    .line 469
    :cond_0
    const-string v0, "Got broken urlLoader!"

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    goto :goto_1

    .line 450
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static whitelistReceived(Ljava/lang/String;)V
    .locals 8
    .param p0, "json"    # Ljava/lang/String;

    .prologue
    .line 793
    const-string v6, "Received whitelist"

    invoke-static {v6}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 796
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 797
    .local v1, "appWhitelist":Lorg/json/JSONObject;
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 798
    .local v4, "parsedWhitelist":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v6, "whitelist"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 800
    .local v5, "whitelistArray":Lorg/json/JSONArray;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-ge v3, v6, :cond_1

    .line 802
    :try_start_1
    invoke-virtual {v5, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 804
    .local v0, "appEntry":Lorg/json/JSONObject;
    const-string v6, "game"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "id"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 805
    const-string v6, "game"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "id"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 800
    .end local v0    # "appEntry":Lorg/json/JSONObject;
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 812
    :cond_1
    :try_start_2
    sget-object v6, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->INSTALLED_APPS_URL:Ljava/lang/String;

    invoke-static {v6, v4}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->sendInstalledApps(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 816
    .end local v1    # "appWhitelist":Lorg/json/JSONObject;
    .end local v3    # "i":I
    .end local v4    # "parsedWhitelist":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "whitelistArray":Lorg/json/JSONArray;
    :goto_2
    return-void

    .line 813
    :catch_0
    move-exception v2

    .line 814
    .local v2, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to parse app whitelist "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    goto :goto_2

    .line 807
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "appWhitelist":Lorg/json/JSONObject;
    .restart local v3    # "i":I
    .restart local v4    # "parsedWhitelist":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v5    # "whitelistArray":Lorg/json/JSONArray;
    :catch_1
    move-exception v6

    goto :goto_1
.end method

.method private static writeFailedUrl(Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;)V
    .locals 11
    .param p0, "loader"    # Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;

    .prologue
    .line 518
    if-nez p0, :cond_0

    .line 567
    :goto_0
    return-void

    .line 520
    :cond_0
    sget-object v9, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_urlLoaderLock:Ljava/lang/Object;

    monitor-enter v9

    .line 522
    :try_start_0
    new-instance v3, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/unity3d/ads/android/cache/UnityAdsCache;->getCacheDirectory()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "/"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "UnityAds-pendingrequests.dat"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 524
    .local v3, "pendingRequestFile":Ljava/io/File;
    const/4 v5, 0x0

    .line 525
    .local v5, "pendingRequestsJson":Lorg/json/JSONObject;
    const/4 v4, 0x0

    .line 527
    .local v4, "pendingRequestsArray":Lorg/json/JSONArray;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 528
    const/4 v8, 0x1

    invoke-static {v3, v8}, Lcom/unity3d/ads/android/UnityAdsUtils;->readFile(Ljava/io/File;Z)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 531
    .local v0, "contents":Ljava/lang/String;
    :try_start_1
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 532
    .end local v5    # "pendingRequestsJson":Lorg/json/JSONObject;
    .local v6, "pendingRequestsJson":Lorg/json/JSONObject;
    :try_start_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "JNIDEBUG read json: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 533
    const-string v8, "data"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 534
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "JNIDEBUG read array: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v5, v6

    .line 541
    .end local v0    # "contents":Ljava/lang/String;
    .end local v6    # "pendingRequestsJson":Lorg/json/JSONObject;
    .restart local v5    # "pendingRequestsJson":Lorg/json/JSONObject;
    :cond_1
    :goto_1
    if-nez v4, :cond_2

    .line 542
    :try_start_3
    new-instance v4, Lorg/json/JSONArray;

    .end local v4    # "pendingRequestsArray":Lorg/json/JSONArray;
    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 545
    .restart local v4    # "pendingRequestsArray":Lorg/json/JSONArray;
    :cond_2
    if-nez v5, :cond_3

    .line 546
    new-instance v5, Lorg/json/JSONObject;

    .end local v5    # "pendingRequestsJson":Lorg/json/JSONObject;
    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 549
    .restart local v5    # "pendingRequestsJson":Lorg/json/JSONObject;
    :cond_3
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 550
    .local v2, "failedUrl":Lorg/json/JSONObject;
    const-string v8, "url"

    invoke-virtual {p0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->getBaseUrl()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v8, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 551
    const-string v8, "requestType"

    invoke-virtual {p0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->getRequestType()Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsRequestType;

    move-result-object v10

    invoke-virtual {v2, v8, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 552
    const-string v8, "methodType"

    invoke-virtual {p0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->getHTTPMethod()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v8, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 553
    const-string v8, "body"

    invoke-virtual {p0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->getQueryParams()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v8, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 554
    const-string v8, "retries"

    invoke-virtual {p0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->getRetries()I

    move-result v10

    invoke-virtual {v2, v8, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 556
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 557
    const-string v8, "data"

    invoke-virtual {v5, v8, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 559
    invoke-static {}, Lcom/unity3d/ads/android/UnityAdsUtils;->canUseExternalStorage()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 560
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/unity3d/ads/android/UnityAdsUtils;->writeFile(Ljava/io/File;Ljava/lang/String;)Z

    move-result v7

    .line 561
    .local v7, "success":Z
    if-nez v7, :cond_4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error while writing: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 566
    .end local v2    # "failedUrl":Lorg/json/JSONObject;
    .end local v3    # "pendingRequestFile":Ljava/io/File;
    .end local v4    # "pendingRequestsArray":Lorg/json/JSONArray;
    .end local v5    # "pendingRequestsJson":Lorg/json/JSONObject;
    .end local v7    # "success":Z
    :cond_4
    :goto_2
    :try_start_4
    monitor-exit v9

    goto/16 :goto_0

    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v8

    .line 535
    .restart local v0    # "contents":Ljava/lang/String;
    .restart local v3    # "pendingRequestFile":Ljava/io/File;
    .restart local v4    # "pendingRequestsArray":Lorg/json/JSONArray;
    .restart local v5    # "pendingRequestsJson":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 536
    .local v1, "e":Lorg/json/JSONException;
    :goto_3
    const/4 v5, 0x0

    .line 537
    const/4 v4, 0x0

    goto :goto_1

    .line 563
    .end local v0    # "contents":Ljava/lang/String;
    .end local v1    # "e":Lorg/json/JSONException;
    .end local v3    # "pendingRequestFile":Ljava/io/File;
    .end local v4    # "pendingRequestsArray":Lorg/json/JSONArray;
    .end local v5    # "pendingRequestsJson":Lorg/json/JSONObject;
    :catch_1
    move-exception v1

    .line 564
    .local v1, "e":Ljava/lang/Exception;
    :try_start_5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception when writing failed url: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 535
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "contents":Ljava/lang/String;
    .restart local v3    # "pendingRequestFile":Ljava/io/File;
    .restart local v4    # "pendingRequestsArray":Lorg/json/JSONArray;
    .restart local v6    # "pendingRequestsJson":Lorg/json/JSONObject;
    :catch_2
    move-exception v1

    move-object v5, v6

    .end local v6    # "pendingRequestsJson":Lorg/json/JSONObject;
    .restart local v5    # "pendingRequestsJson":Lorg/json/JSONObject;
    goto :goto_3
.end method
