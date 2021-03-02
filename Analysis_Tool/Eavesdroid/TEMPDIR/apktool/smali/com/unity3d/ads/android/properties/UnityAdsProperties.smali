.class public Lcom/unity3d/ads/android/properties/UnityAdsProperties;
.super Ljava/lang/Object;
.source "UnityAdsProperties.java"


# static fields
.field public static ANALYTICS_BASE_URL:Ljava/lang/String; = null

.field public static APPFILTER_LIST:Ljava/lang/String; = null

.field public static APPLICATION_CONTEXT:Landroid/content/Context; = null

.field public static BASE_ACTIVITY:Ljava/lang/ref/WeakReference; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field public static CACHING_SPEED:J = 0x0L

.field public static CAMPAIGN_DATA_URL:Ljava/lang/String; = null

.field public static CAMPAIGN_REFRESH_SECONDS:I = 0x0

.field public static CAMPAIGN_REFRESH_VIEWS_COUNT:I = 0x0

.field public static CAMPAIGN_REFRESH_VIEWS_MAX:I = 0x0

.field public static CURRENT_ACTIVITY:Ljava/lang/ref/WeakReference; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field public static INSTALLED_APPS_URL:Ljava/lang/String; = null

.field public static final MAX_BUFFERING_WAIT_SECONDS:I = 0x14

.field public static final MAX_NUMBER_OF_ANALYTICS_RETRIES:I = 0x5

.field public static RUN_WEBVIEW_TESTS:Ljava/lang/Boolean;

.field public static SELECTED_CAMPAIGN:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

.field public static SELECTED_CAMPAIGN_CACHED:Ljava/lang/Boolean;

.field private static SEND_INTERNAL_DETAILS:Ljava/lang/Boolean;

.field public static TESTMODE_ENABLED:Ljava/lang/Boolean;

.field public static TEST_DATA:Ljava/lang/String;

.field public static TEST_DEVELOPER_ID:Ljava/lang/String;

.field private static TEST_EXTRA_PARAMS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static TEST_JAVASCRIPT:Ljava/lang/String;

.field public static TEST_OPTIONS_ID:Ljava/lang/String;

.field public static UNITY_ADS_BASE_URL:Ljava/lang/String;

.field public static UNITY_ADS_GAMER_ID:Ljava/lang/String;

.field public static UNITY_ADS_GAME_ID:Ljava/lang/String;

.field public static UNITY_ADS_READY_SENT:Ljava/lang/Boolean;

.field public static UNITY_DEVELOPER_INTERNAL_TEST:Ljava/lang/Boolean;

.field public static UNITY_VERSION:Ljava/lang/String;

.field public static WEBVIEW_BASE_URL:Ljava/lang/String;

.field private static _campaignQueryString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 19
    const-string v0, "https://impact.applifier.com/mobile/campaigns"

    sput-object v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->CAMPAIGN_DATA_URL:Ljava/lang/String;

    .line 20
    sput-object v2, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->WEBVIEW_BASE_URL:Ljava/lang/String;

    .line 21
    sput-object v2, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->ANALYTICS_BASE_URL:Ljava/lang/String;

    .line 22
    sput-object v2, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->UNITY_ADS_BASE_URL:Ljava/lang/String;

    .line 23
    sput-object v2, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->UNITY_ADS_GAME_ID:Ljava/lang/String;

    .line 24
    sput-object v2, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->UNITY_ADS_GAMER_ID:Ljava/lang/String;

    .line 25
    sput-object v2, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->APPFILTER_LIST:Ljava/lang/String;

    .line 26
    sput-object v2, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->INSTALLED_APPS_URL:Ljava/lang/String;

    .line 27
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->TESTMODE_ENABLED:Ljava/lang/Boolean;

    .line 28
    sput-object v2, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->BASE_ACTIVITY:Ljava/lang/ref/WeakReference;

    .line 29
    sput-object v2, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->APPLICATION_CONTEXT:Landroid/content/Context;

    .line 30
    sput-object v2, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->CURRENT_ACTIVITY:Ljava/lang/ref/WeakReference;

    .line 31
    sput-object v2, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->SELECTED_CAMPAIGN:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    .line 32
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->SELECTED_CAMPAIGN_CACHED:Ljava/lang/Boolean;

    .line 33
    sput v3, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->CAMPAIGN_REFRESH_VIEWS_COUNT:I

    .line 34
    sput v3, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->CAMPAIGN_REFRESH_VIEWS_MAX:I

    .line 35
    sput v3, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->CAMPAIGN_REFRESH_SECONDS:I

    .line 36
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->CACHING_SPEED:J

    .line 37
    sput-object v2, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->UNITY_VERSION:Ljava/lang/String;

    .line 41
    sput-object v2, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->TEST_DATA:Ljava/lang/String;

    .line 43
    sput-object v2, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->TEST_JAVASCRIPT:Ljava/lang/String;

    .line 45
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->RUN_WEBVIEW_TESTS:Ljava/lang/Boolean;

    .line 46
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->UNITY_DEVELOPER_INTERNAL_TEST:Ljava/lang/Boolean;

    .line 48
    sput-object v2, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->TEST_DEVELOPER_ID:Ljava/lang/String;

    .line 49
    sput-object v2, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->TEST_OPTIONS_ID:Ljava/lang/String;

    .line 52
    sput-object v2, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->TEST_EXTRA_PARAMS:Ljava/util/Map;

    .line 57
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->UNITY_ADS_READY_SENT:Ljava/lang/Boolean;

    .line 59
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->SEND_INTERNAL_DETAILS:Ljava/lang/Boolean;

    .line 60
    sput-object v2, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->_campaignQueryString:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createCampaignQueryString()V
    .locals 14

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 63
    const-string v3, "?"

    .line 67
    .local v3, "queryString":Ljava/lang/String;
    :try_start_0
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "%s%s=%s"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v3, v8, v9

    const/4 v9, 0x1

    const-string v10, "platform"

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const-string v10, "android"

    aput-object v10, v8, v9

    invoke-static {v4, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 69
    invoke-static {}, Lcom/unity3d/ads/android/data/UnityAdsDevice;->getAdvertisingTrackingId()Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "advertisingId":Ljava/lang/String;
    if-eqz v0, :cond_9

    .line 71
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v8, "%s&%s=%d"

    const/4 v4, 0x3

    new-array v9, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v3, v9, v4

    const/4 v4, 0x1

    const-string v10, "trackingEnabled"

    aput-object v10, v9, v4

    const/4 v10, 0x2

    invoke-static {}, Lcom/unity3d/ads/android/data/UnityAdsDevice;->isLimitAdTrackingEnabled()Z

    move-result v4

    if-eqz v4, :cond_8

    move v4, v5

    :goto_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v9, v10

    invoke-static {v7, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 73
    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsUtils;->Md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v4, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 74
    .local v1, "advertisingIdMd5":Ljava/lang/String;
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "%s&%s=%s"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v3, v8, v9

    const/4 v9, 0x1

    const-string v10, "advertisingTrackingId"

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const-string v10, "UTF-8"

    invoke-static {v1, v10}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v4, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 75
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "%s&%s=%s"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v3, v8, v9

    const/4 v9, 0x1

    const-string v10, "rawAdvertisingTrackingId"

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const-string v10, "UTF-8"

    invoke-static {v0, v10}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v4, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 84
    .end local v1    # "advertisingIdMd5":Ljava/lang/String;
    :cond_0
    :goto_1
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "%s&%s=%s"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v3, v8, v9

    const/4 v9, 0x1

    const-string v10, "gameId"

    aput-object v10, v8, v9

    const/4 v9, 0x2

    sget-object v10, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->UNITY_ADS_GAME_ID:Ljava/lang/String;

    const-string v11, "UTF-8"

    invoke-static {v10, v11}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v4, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 85
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "%s&%s=%s"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v3, v8, v9

    const/4 v9, 0x1

    const-string v10, "sdkVersion"

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const-string v10, "1506"

    const-string v11, "UTF-8"

    invoke-static {v10, v11}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v4, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 86
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "%s&%s=%s"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v3, v8, v9

    const/4 v9, 0x1

    const-string v10, "softwareVersion"

    aput-object v10, v8, v9

    const/4 v9, 0x2

    invoke-static {}, Lcom/unity3d/ads/android/data/UnityAdsDevice;->getSoftwareVersion()Ljava/lang/String;

    move-result-object v10

    const-string v11, "UTF-8"

    invoke-static {v10, v11}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v4, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 87
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "%s&%s=%s"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v3, v8, v9

    const/4 v9, 0x1

    const-string v10, "hardwareVersion"

    aput-object v10, v8, v9

    const/4 v9, 0x2

    invoke-static {}, Lcom/unity3d/ads/android/data/UnityAdsDevice;->getHardwareVersion()Ljava/lang/String;

    move-result-object v10

    const-string v11, "UTF-8"

    invoke-static {v10, v11}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v4, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 88
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "%s&%s=%s"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v3, v8, v9

    const/4 v9, 0x1

    const-string v10, "deviceType"

    aput-object v10, v8, v9

    const/4 v9, 0x2

    invoke-static {}, Lcom/unity3d/ads/android/data/UnityAdsDevice;->getDeviceType()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v4, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 89
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "%s&%s=%s"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v3, v8, v9

    const/4 v9, 0x1

    const-string v10, "connectionType"

    aput-object v10, v8, v9

    const/4 v9, 0x2

    invoke-static {}, Lcom/unity3d/ads/android/data/UnityAdsDevice;->getConnectionType()Ljava/lang/String;

    move-result-object v10

    const-string v11, "UTF-8"

    invoke-static {v10, v11}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v4, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 91
    sget-object v4, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->UNITY_VERSION:Ljava/lang/String;

    if-eqz v4, :cond_1

    sget-object v4, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->UNITY_VERSION:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 92
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "%s&%s=%s"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v3, v8, v9

    const/4 v9, 0x1

    const-string v10, "unityVersion"

    aput-object v10, v8, v9

    const/4 v9, 0x2

    sget-object v10, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->UNITY_VERSION:Ljava/lang/String;

    const-string v11, "UTF-8"

    invoke-static {v10, v11}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v4, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 95
    :cond_1
    invoke-static {}, Lcom/unity3d/ads/android/data/UnityAdsDevice;->isUsingWifi()Z

    move-result v4

    if-nez v4, :cond_2

    .line 96
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "%s&%s=%d"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v3, v8, v9

    const/4 v9, 0x1

    const-string v10, "androidNetworkType"

    aput-object v10, v8, v9

    const/4 v9, 0x2

    invoke-static {}, Lcom/unity3d/ads/android/data/UnityAdsDevice;->getNetworkType()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v4, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 99
    :cond_2
    sget-wide v8, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->CACHING_SPEED:J

    const-wide/16 v10, 0x0

    cmp-long v4, v8, v10

    if-lez v4, :cond_3

    .line 100
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "%s&%s=%d"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v3, v8, v9

    const/4 v9, 0x1

    const-string v10, "cachingSpeed"

    aput-object v10, v8, v9

    const/4 v9, 0x2

    sget-wide v10, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->CACHING_SPEED:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v4, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 103
    :cond_3
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "%s&%s=%s"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v3, v8, v9

    const/4 v9, 0x1

    const-string v10, "screenSize"

    aput-object v10, v8, v9

    const/4 v9, 0x2

    invoke-static {}, Lcom/unity3d/ads/android/data/UnityAdsDevice;->getScreenSize()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v4, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 104
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "%s&%s=%s"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v3, v8, v9

    const/4 v9, 0x1

    const-string v10, "screenDensity"

    aput-object v10, v8, v9

    const/4 v9, 0x2

    invoke-static {}, Lcom/unity3d/ads/android/data/UnityAdsDevice;->getScreenDensity()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v4, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 106
    sget-object v4, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->APPFILTER_LIST:Ljava/lang/String;

    if-eqz v4, :cond_4

    .line 107
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "%s&%s=%s"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v3, v8, v9

    const/4 v9, 0x1

    const-string v10, "appFilterList"

    aput-object v10, v8, v9

    const/4 v9, 0x2

    sget-object v10, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->APPFILTER_LIST:Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-static {v4, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 108
    const/4 v4, 0x0

    sput-object v4, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->APPFILTER_LIST:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    .end local v0    # "advertisingId":Ljava/lang/String;
    :cond_4
    :goto_2
    sget-object v4, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->TESTMODE_ENABLED:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 116
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "%s&%s=%s"

    new-array v8, v13, [Ljava/lang/Object;

    aput-object v3, v8, v5

    const-string v9, "test"

    aput-object v9, v8, v6

    const-string v9, "true"

    aput-object v9, v8, v12

    invoke-static {v4, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 118
    sget-object v4, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->TEST_OPTIONS_ID:Ljava/lang/String;

    if-eqz v4, :cond_5

    sget-object v4, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->TEST_OPTIONS_ID:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_5

    .line 119
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "%s&%s=%s"

    new-array v8, v13, [Ljava/lang/Object;

    aput-object v3, v8, v5

    const-string v9, "optionsId"

    aput-object v9, v8, v6

    sget-object v9, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->TEST_OPTIONS_ID:Ljava/lang/String;

    aput-object v9, v8, v12

    invoke-static {v4, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 122
    :cond_5
    sget-object v4, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->TEST_DEVELOPER_ID:Ljava/lang/String;

    if-eqz v4, :cond_6

    sget-object v4, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->TEST_DEVELOPER_ID:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_6

    .line 123
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "%s&%s=%s"

    new-array v8, v13, [Ljava/lang/Object;

    aput-object v3, v8, v5

    const-string v9, "developerId"

    aput-object v9, v8, v6

    sget-object v9, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->TEST_DEVELOPER_ID:Ljava/lang/String;

    aput-object v9, v8, v12

    invoke-static {v4, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 130
    :cond_6
    :goto_3
    sget-object v4, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->SEND_INTERNAL_DETAILS:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 131
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "%s&%s=%s"

    new-array v8, v13, [Ljava/lang/Object;

    aput-object v3, v8, v5

    const-string v9, "sendInternalDetails"

    aput-object v9, v8, v6

    const-string v6, "true"

    aput-object v6, v8, v12

    invoke-static {v4, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 132
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    sput-object v4, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->SEND_INTERNAL_DETAILS:Ljava/lang/Boolean;

    .line 135
    :cond_7
    sput-object v3, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->_campaignQueryString:Ljava/lang/String;

    .line 136
    return-void

    .restart local v0    # "advertisingId":Ljava/lang/String;
    :cond_8
    move v4, v6

    .line 71
    goto/16 :goto_0

    .line 78
    :cond_9
    const/4 v4, 0x0

    :try_start_1
    invoke-static {v4}, Lcom/unity3d/ads/android/data/UnityAdsDevice;->getAndroidId(Z)Ljava/lang/String;

    move-result-object v4

    const-string v7, "unknown"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 79
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "%s&%s=%s"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v3, v8, v9

    const/4 v9, 0x1

    const-string v10, "androidId"

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const/4 v10, 0x1

    invoke-static {v10}, Lcom/unity3d/ads/android/data/UnityAdsDevice;->getAndroidId(Z)Ljava/lang/String;

    move-result-object v10

    const-string v11, "UTF-8"

    invoke-static {v10, v11}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v4, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 80
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "%s&%s=%s"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v3, v8, v9

    const/4 v9, 0x1

    const-string v10, "rawAndroidId"

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-static {v10}, Lcom/unity3d/ads/android/data/UnityAdsDevice;->getAndroidId(Z)Ljava/lang/String;

    move-result-object v10

    const-string v11, "UTF-8"

    invoke-static {v10, v11}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v4, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    goto/16 :goto_1

    .line 111
    .end local v0    # "advertisingId":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 112
    .local v2, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Problems creating campaigns query: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 127
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_a
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v8, "%s&%s=%s"

    new-array v9, v13, [Ljava/lang/Object;

    aput-object v3, v9, v5

    const-string v4, "encrypted"

    aput-object v4, v9, v6

    invoke-static {}, Lcom/unity3d/ads/android/UnityAdsUtils;->isDebuggable()Z

    move-result v4

    if-eqz v4, :cond_b

    const-string v4, "false"

    :goto_4
    aput-object v4, v9, v12

    invoke-static {v7, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_3

    :cond_b
    const-string v4, "true"

    goto :goto_4
.end method

.method public static getBaseActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 154
    sget-object v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->BASE_ACTIVITY:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->BASE_ACTIVITY:Ljava/lang/ref/WeakReference;

    .line 155
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->BASE_ACTIVITY:Ljava/lang/ref/WeakReference;

    .line 156
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->BASE_ACTIVITY:Ljava/lang/ref/WeakReference;

    .line 157
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->isActivityDestroyed(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 158
    sget-object v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->BASE_ACTIVITY:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 160
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getCampaignQueryArguments()Ljava/lang/String;
    .locals 2

    .prologue
    .line 146
    sget-object v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->_campaignQueryString:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->_campaignQueryString:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 147
    sget-object v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->_campaignQueryString:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 150
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static getCampaignQueryUrl()Ljava/lang/String;
    .locals 6

    .prologue
    .line 139
    invoke-static {}, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->createCampaignQueryString()V

    .line 140
    sget-object v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->CAMPAIGN_DATA_URL:Ljava/lang/String;

    .line 142
    .local v0, "url":Ljava/lang/String;
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%s%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v4, 0x1

    sget-object v5, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->_campaignQueryString:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getCurrentActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 164
    sget-object v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->CURRENT_ACTIVITY:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->CURRENT_ACTIVITY:Ljava/lang/ref/WeakReference;

    .line 165
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->CURRENT_ACTIVITY:Ljava/lang/ref/WeakReference;

    .line 166
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->CURRENT_ACTIVITY:Ljava/lang/ref/WeakReference;

    .line 167
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->isActivityDestroyed(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 168
    sget-object v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->CURRENT_ACTIVITY:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 170
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->getBaseActivity()Landroid/app/Activity;

    move-result-object v0

    goto :goto_0
.end method

.method private static isActivityDestroyed(Landroid/app/Activity;)Z
    .locals 6
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 176
    const/4 v1, 0x0

    .line 177
    .local v1, "isDestroyed":Z
    const/4 v2, 0x0

    .line 180
    .local v2, "isDestroyedMethod":Ljava/lang/reflect/Method;
    :try_start_0
    const-class v3, Landroid/app/Activity;

    const-string v4, "isDestroyed"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 186
    :goto_0
    if-eqz v2, :cond_0

    .line 187
    if-eqz p0, :cond_0

    .line 189
    const/4 v3, 0x0

    :try_start_1
    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    .line 197
    :cond_0
    :goto_1
    return v1

    .line 182
    :catch_0
    move-exception v0

    .line 183
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "Couldn\'t get isDestroyed -method"

    invoke-static {v3}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 191
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 192
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v3, "Error running isDestroyed -method"

    invoke-static {v3}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static isAdsReadySent()Z
    .locals 1

    .prologue
    .line 202
    sget-object v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->UNITY_ADS_READY_SENT:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static isShowingAds()Z
    .locals 1

    .prologue
    .line 211
    invoke-static {}, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;

    return v0
.end method

.method public static setAdsReadySent(Z)V
    .locals 1
    .param p0, "sent"    # Z

    .prologue
    .line 207
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->UNITY_ADS_READY_SENT:Ljava/lang/Boolean;

    .line 208
    return-void
.end method
