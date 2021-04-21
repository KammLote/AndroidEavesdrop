.class public Lcom/dumadugames/honeyquest/Honey;
.super Lcom/dumadu/google/playgames/BaseGameActivity;
.source "Honey.java"

# interfaces
.implements Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;


# static fields
.field private static final COINS_SKU_18000:Ljava/lang/String; = "com.honeyquest.coins18000"

.field private static final COINS_SKU_40000:Ljava/lang/String; = "com.honeyquest.coins40000"

.field private static final COINS_SKU_5000:Ljava/lang/String; = "com.honeyquest.coins5000"

.field private static final GOOGLE_LOGIN:I = 0x8

.field private static final HIDE_BANNER:I = 0xb

.field private static final HONEY_SKU_10:Ljava/lang/String; = "com.honeyquest.honey10"

.field private static final HONEY_SKU_25:Ljava/lang/String; = "com.honeyquest.honey25"

.field private static final HONEY_SKU_60:Ljava/lang/String; = "com.honeyquest.honey60"

.field private static final INITIALIZE:I = 0x1

.field static final KEY_OPTOUT_CLICK:Ljava/lang/String; = "optout_Click"

.field static final KEY_OPTOUT_CLICK_TEMP:Ljava/lang/String; = "optout_Click_temp"

.field private static final OPTOUT:I = 0x2

.field private static final RC_INAPP:I = 0x4e21

.field private static final REMOVE_ADS_SKU:Ljava/lang/String; = "com.honeyquest.removeads"

.field private static RemovedAds:Z = false

.field private static final SHOW_BANNER_BOTTOM:I = 0xa

.field private static final SHOW_BANNER_TOP:I = 0x9

.field private static final SHOW_EXIT:I = 0x7

.field private static final SHOW_INTERSTITIAL:I = 0x6

.field private static final SHOW_TOAST:I = 0x5

.field private static final SHOW_VIDEO:I = 0xc

.field private static final START_ALPHONSO:I = 0x3

.field private static final STOP_ALPHONSO:I = 0x4

.field private static activity:Landroid/app/Activity; = null

.field private static alphonsServiceInitialized:Z = false

.field private static analytics:Lcom/google/android/gms/analytics/GoogleAnalytics; = null

.field private static final base64EncodedPublicKey:Ljava/lang/String; = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAmTaTsaxdTPCztOwWT9vFC/U/3NvJlKZJS50oSz76IAslwWQNov8WcKT8UiRbPO5viaq0dzxTzAUdeNnTxUUu6R4l1S0PAKF0KNjiU6C1lkXNuTqRg7V5f65IR/GcbmKfjGTGGBl7hzoqovIJBElkKtZhgUFLZE8SVVt9f6/53hZeU/JjoSG0kVWryqQUDx94dvGTn1QlMkObhCTszQ0QsLD4YWg0uSKcKzzDlK8Cn3GhtyvsP0Q3unOpwe3beh1y7AJgYWYClYGwzF0Wsz32yUpMxQnuRxRRofAvkALf13gIFMEgi8pC/vzgM1pqsiJjwsNKQwHB9kN9lkw8KfFp6wIDAQAB"

.field private static billingHelper:Lcom/dumadu/iab/util/IabHelper;

.field private static consumeFinishedListener:Lcom/dumadu/iab/util/IabHelper$OnConsumeFinishedListener;

.field static editor:Landroid/content/SharedPreferences$Editor;

.field private static exit:Z

.field private static gamesClient:Lcom/google/android/gms/common/api/GoogleApiClient;

.field private static handler:Landroid/os/Handler;

.field private static inventoryFinishedListener:Lcom/dumadu/iab/util/IabHelper$QueryInventoryFinishedListener;

.field private static purchaseFinishedListener:Lcom/dumadu/iab/util/IabHelper$OnIabPurchaseFinishedListener;

.field static toastmessage:Ljava/lang/String;

.field private static tracker:Lcom/google/android/gms/analytics/Tracker;


# instance fields
.field private banner:Lcom/google/android/gms/ads/AdView;

.field private interstitial:Lcom/google/android/gms/ads/InterstitialAd;

.field private layout:Landroid/widget/FrameLayout;

.field private mIdentificationReceiver:Landroid/os/ResultReceiver;

.field private mRewardedVideoAd:Lcom/google/android/gms/ads/reward/RewardedVideoAd;

.field private mStatusReceiver:Landroid/os/ResultReceiver;

.field protected mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

.field sharedpreferences:Landroid/content/SharedPreferences;

.field toast:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    sput-boolean v0, Lcom/dumadugames/honeyquest/Honey;->alphonsServiceInitialized:Z

    .line 97
    const-string v0, ""

    sput-object v0, Lcom/dumadugames/honeyquest/Honey;->toastmessage:Ljava/lang/String;

    .line 1127
    new-instance v0, Lcom/dumadugames/honeyquest/Honey$12;

    invoke-direct {v0}, Lcom/dumadugames/honeyquest/Honey$12;-><init>()V

    sput-object v0, Lcom/dumadugames/honeyquest/Honey;->inventoryFinishedListener:Lcom/dumadu/iab/util/IabHelper$QueryInventoryFinishedListener;

    .line 1143
    new-instance v0, Lcom/dumadugames/honeyquest/Honey$13;

    invoke-direct {v0}, Lcom/dumadugames/honeyquest/Honey$13;-><init>()V

    sput-object v0, Lcom/dumadugames/honeyquest/Honey;->purchaseFinishedListener:Lcom/dumadu/iab/util/IabHelper$OnIabPurchaseFinishedListener;

    .line 1165
    new-instance v0, Lcom/dumadugames/honeyquest/Honey$14;

    invoke-direct {v0}, Lcom/dumadugames/honeyquest/Honey$14;-><init>()V

    sput-object v0, Lcom/dumadugames/honeyquest/Honey;->consumeFinishedListener:Lcom/dumadu/iab/util/IabHelper$OnConsumeFinishedListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 66
    invoke-direct {p0}, Lcom/dumadu/google/playgames/BaseGameActivity;-><init>()V

    .line 71
    iput-object v0, p0, Lcom/dumadugames/honeyquest/Honey;->mStatusReceiver:Landroid/os/ResultReceiver;

    .line 72
    iput-object v0, p0, Lcom/dumadugames/honeyquest/Honey;->mIdentificationReceiver:Landroid/os/ResultReceiver;

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 66
    sget-boolean v0, Lcom/dumadugames/honeyquest/Honey;->exit:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 66
    sput-boolean p0, Lcom/dumadugames/honeyquest/Honey;->exit:Z

    return p0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 66
    sget-boolean v0, Lcom/dumadugames/honeyquest/Honey;->RemovedAds:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/dumadugames/honeyquest/Honey;)V
    .locals 0
    .param p0, "x0"    # Lcom/dumadugames/honeyquest/Honey;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/dumadugames/honeyquest/Honey;->loadRewardedVideoAd()V

    return-void
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 66
    sput-boolean p0, Lcom/dumadugames/honeyquest/Honey;->RemovedAds:Z

    return p0
.end method

.method static synthetic access$1100()Z
    .locals 1

    .prologue
    .line 66
    sget-boolean v0, Lcom/dumadugames/honeyquest/Honey;->alphonsServiceInitialized:Z

    return v0
.end method

.method static synthetic access$1102(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 66
    sput-boolean p0, Lcom/dumadugames/honeyquest/Honey;->alphonsServiceInitialized:Z

    return p0
.end method

.method static synthetic access$1200(Lcom/dumadugames/honeyquest/Honey;)V
    .locals 0
    .param p0, "x0"    # Lcom/dumadugames/honeyquest/Honey;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/dumadugames/honeyquest/Honey;->startAlphonsoService()V

    return-void
.end method

.method static synthetic access$1300()V
    .locals 0

    .prologue
    .line 66
    invoke-static {}, Lcom/dumadugames/honeyquest/Honey;->purchaseSuccess()V

    return-void
.end method

.method static synthetic access$1400()V
    .locals 0

    .prologue
    .line 66
    invoke-static {}, Lcom/dumadugames/honeyquest/Honey;->purchaseFailure()V

    return-void
.end method

.method static synthetic access$1500()Lcom/dumadu/iab/util/IabHelper$OnConsumeFinishedListener;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/dumadugames/honeyquest/Honey;->consumeFinishedListener:Lcom/dumadu/iab/util/IabHelper$OnConsumeFinishedListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/dumadugames/honeyquest/Honey;)V
    .locals 0
    .param p0, "x0"    # Lcom/dumadugames/honeyquest/Honey;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/dumadugames/honeyquest/Honey;->loadInterstitialAd()V

    return-void
.end method

.method static synthetic access$300(Lcom/dumadugames/honeyquest/Honey;)Lcom/google/android/gms/ads/AdView;
    .locals 1
    .param p0, "x0"    # Lcom/dumadugames/honeyquest/Honey;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/dumadugames/honeyquest/Honey;->banner:Lcom/google/android/gms/ads/AdView;

    return-object v0
.end method

.method static synthetic access$400()Lcom/dumadu/iab/util/IabHelper$QueryInventoryFinishedListener;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/dumadugames/honeyquest/Honey;->inventoryFinishedListener:Lcom/dumadu/iab/util/IabHelper$QueryInventoryFinishedListener;

    return-object v0
.end method

.method static synthetic access$500()Lcom/dumadu/iab/util/IabHelper;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/dumadugames/honeyquest/Honey;->billingHelper:Lcom/dumadu/iab/util/IabHelper;

    return-object v0
.end method

.method static synthetic access$600(Lcom/dumadugames/honeyquest/Honey;)Lcom/google/android/gms/ads/InterstitialAd;
    .locals 1
    .param p0, "x0"    # Lcom/dumadugames/honeyquest/Honey;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/dumadugames/honeyquest/Honey;->interstitial:Lcom/google/android/gms/ads/InterstitialAd;

    return-object v0
.end method

.method static synthetic access$700(Lcom/dumadugames/honeyquest/Honey;)V
    .locals 0
    .param p0, "x0"    # Lcom/dumadugames/honeyquest/Honey;

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/dumadugames/honeyquest/Honey;->beginUserInitiatedSignIn()V

    return-void
.end method

.method static synthetic access$800(Lcom/dumadugames/honeyquest/Honey;)V
    .locals 0
    .param p0, "x0"    # Lcom/dumadugames/honeyquest/Honey;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/dumadugames/honeyquest/Honey;->stopAlphonsoService()V

    return-void
.end method

.method static synthetic access$900(Lcom/dumadugames/honeyquest/Honey;)Lcom/google/android/gms/ads/reward/RewardedVideoAd;
    .locals 1
    .param p0, "x0"    # Lcom/dumadugames/honeyquest/Honey;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/dumadugames/honeyquest/Honey;->mRewardedVideoAd:Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    return-object v0
.end method

.method private static checkPermission_Location()Z
    .locals 3

    .prologue
    .line 911
    sget-object v1, Lcom/dumadugames/honeyquest/Honey;->activity:Landroid/app/Activity;

    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 912
    .local v0, "result":I
    if-nez v0, :cond_0

    .line 913
    const/4 v1, 0x1

    .line 915
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static checkPermission_RecordAudio()Z
    .locals 3

    .prologue
    .line 902
    sget-object v1, Lcom/dumadugames/honeyquest/Honey;->activity:Landroid/app/Activity;

    const-string v2, "android.permission.RECORD_AUDIO"

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 903
    .local v0, "result":I
    if-nez v0, :cond_0

    .line 904
    const/4 v1, 0x1

    .line 906
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private cleanupAlphonsoService()V
    .locals 4

    .prologue
    .line 695
    :try_start_0
    invoke-static {}, Ltv/alphonso/service/client/ASAPI;->cleanup()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 701
    :goto_0
    return-void

    .line 696
    :catch_0
    move-exception v0

    .line 698
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "callback"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private getIdentificationsReceiver()Landroid/os/ResultReceiver;
    .locals 2

    .prologue
    .line 767
    iget-object v0, p0, Lcom/dumadugames/honeyquest/Honey;->mIdentificationReceiver:Landroid/os/ResultReceiver;

    if-nez v0, :cond_0

    .line 769
    new-instance v0, Lcom/dumadugames/honeyquest/Honey$8;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/dumadugames/honeyquest/Honey$8;-><init>(Lcom/dumadugames/honeyquest/Honey;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/dumadugames/honeyquest/Honey;->mIdentificationReceiver:Landroid/os/ResultReceiver;

    .line 868
    :cond_0
    iget-object v0, p0, Lcom/dumadugames/honeyquest/Honey;->mIdentificationReceiver:Landroid/os/ResultReceiver;

    return-object v0
.end method

.method private getResultReceiver()Landroid/os/ResultReceiver;
    .locals 2

    .prologue
    .line 722
    iget-object v0, p0, Lcom/dumadugames/honeyquest/Honey;->mStatusReceiver:Landroid/os/ResultReceiver;

    if-nez v0, :cond_0

    .line 724
    new-instance v0, Lcom/dumadugames/honeyquest/Honey$7;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/dumadugames/honeyquest/Honey$7;-><init>(Lcom/dumadugames/honeyquest/Honey;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/dumadugames/honeyquest/Honey;->mStatusReceiver:Landroid/os/ResultReceiver;

    .line 762
    :cond_0
    iget-object v0, p0, Lcom/dumadugames/honeyquest/Honey;->mStatusReceiver:Landroid/os/ResultReceiver;

    return-object v0
.end method

.method public static hideBanner(ZLandroid/app/Activity;)V
    .locals 2
    .param p0, "top"    # Z
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 567
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 568
    .local v0, "message":Landroid/os/Message;
    const/16 v1, 0xb

    iput v1, v0, Landroid/os/Message;->what:I

    .line 569
    sget-object v1, Lcom/dumadugames/honeyquest/Honey;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 570
    return-void
.end method

.method public static initialize(Landroid/app/Activity;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 629
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 630
    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 631
    sget-object v1, Lcom/dumadugames/honeyquest/Honey;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 632
    return-void
.end method

.method private loadInterstitialAd()V
    .locals 2

    .prologue
    .line 500
    iget-object v0, p0, Lcom/dumadugames/honeyquest/Honey;->interstitial:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/InterstitialAd;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dumadugames/honeyquest/Honey;->interstitial:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/InterstitialAd;->isLoaded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 501
    :cond_0
    invoke-virtual {p0}, Lcom/dumadugames/honeyquest/Honey;->isNetworkAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 502
    iget-object v0, p0, Lcom/dumadugames/honeyquest/Honey;->interstitial:Lcom/google/android/gms/ads/InterstitialAd;

    new-instance v1, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/InterstitialAd;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    .line 505
    :cond_1
    return-void
.end method

.method private loadRewardedVideoAd()V
    .locals 4

    .prologue
    .line 508
    iget-object v2, p0, Lcom/dumadugames/honeyquest/Honey;->mRewardedVideoAd:Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    invoke-interface {v2}, Lcom/google/android/gms/ads/reward/RewardedVideoAd;->isLoaded()Z

    move-result v2

    if-nez v2, :cond_0

    .line 509
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 510
    .local v1, "extras":Landroid/os/Bundle;
    const-string v2, "_noRefresh"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 511
    new-instance v2, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v2}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    const-class v3, Lcom/google/ads/mediation/admob/AdMobAdapter;

    .line 512
    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/ads/AdRequest$Builder;->addNetworkExtrasBundle(Ljava/lang/Class;Landroid/os/Bundle;)Lcom/google/android/gms/ads/AdRequest$Builder;

    move-result-object v2

    .line 513
    invoke-virtual {v2}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v0

    .line 514
    .local v0, "adRequest":Lcom/google/android/gms/ads/AdRequest;
    iget-object v2, p0, Lcom/dumadugames/honeyquest/Honey;->mRewardedVideoAd:Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    const v3, 0x7f070093

    invoke-virtual {p0, v3}, Lcom/dumadugames/honeyquest/Honey;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Lcom/google/android/gms/ads/reward/RewardedVideoAd;->loadAd(Ljava/lang/String;Lcom/google/android/gms/ads/AdRequest;)V

    .line 516
    .end local v0    # "adRequest":Lcom/google/android/gms/ads/AdRequest;
    .end local v1    # "extras":Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method public static micStatus(ZLandroid/app/Activity;)V
    .locals 4
    .param p0, "status"    # Z
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 635
    invoke-static {}, Lcom/dumadugames/honeyquest/Honey;->checkPermission_RecordAudio()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 637
    if-nez p0, :cond_1

    .line 638
    sget-object v1, Lcom/dumadugames/honeyquest/Honey;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "optout_Click"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 639
    sget-object v1, Lcom/dumadugames/honeyquest/Honey;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 640
    sget-boolean v1, Lcom/dumadugames/honeyquest/Honey;->alphonsServiceInitialized:Z

    if-eqz v1, :cond_0

    .line 642
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 643
    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    .line 644
    sget-object v1, Lcom/dumadugames/honeyquest/Honey;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 646
    .end local v0    # "message":Landroid/os/Message;
    :cond_0
    const-string v1, "ExternalInterfaceHandler"

    const-string v2, "SetMicStatus"

    const-string v3, "false"

    invoke-static {v1, v2, v3}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    :goto_0
    return-void

    .line 648
    :cond_1
    sget-object v1, Lcom/dumadugames/honeyquest/Honey;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "optout_Click"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 649
    sget-object v1, Lcom/dumadugames/honeyquest/Honey;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 651
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 652
    .restart local v0    # "message":Landroid/os/Message;
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 653
    sget-object v1, Lcom/dumadugames/honeyquest/Honey;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 656
    .end local v0    # "message":Landroid/os/Message;
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "To revoke microphone permission fully kindly go to Settings-->Apps-->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f07009a

    invoke-virtual {p1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-->Permissions-->Microphone (Enable)."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/dumadugames/honeyquest/Honey;->toastmessage:Ljava/lang/String;

    .line 657
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 658
    .restart local v0    # "message":Landroid/os/Message;
    const/4 v1, 0x5

    iput v1, v0, Landroid/os/Message;->what:I

    .line 659
    sget-object v1, Lcom/dumadugames/honeyquest/Honey;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.method private static purchaseFailure()V
    .locals 3

    .prologue
    .line 1183
    const-string v0, "ExternalInterfaceHandler"

    const-string v1, "Receiver"

    const-string v2, "false"

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1184
    return-void
.end method

.method public static purchaseItem(Ljava/lang/String;Landroid/app/Activity;)V
    .locals 6
    .param p0, "itemId"    # Ljava/lang/String;
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 525
    sget-boolean v0, Lcom/dumadugames/honeyquest/Honey;->RemovedAds:Z

    if-eqz v0, :cond_0

    const-string v0, "com.honeyquest.removeads"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 526
    const/4 v0, 0x1

    invoke-static {v0, p1}, Lcom/dumadugames/honeyquest/Honey;->hideBanner(ZLandroid/app/Activity;)V

    .line 527
    const-string v0, "ExternalInterfaceHandler"

    const-string v1, "Receiver"

    const-string v2, "true"

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    const-string v0, "You\'ve already purchased this item"

    invoke-static {v0, p1}, Lcom/dumadugames/honeyquest/Honey;->showToastMsg(Ljava/lang/String;Landroid/app/Activity;)V

    .line 532
    :goto_0
    return-void

    .line 530
    :cond_0
    sget-object v0, Lcom/dumadugames/honeyquest/Honey;->billingHelper:Lcom/dumadu/iab/util/IabHelper;

    const/16 v3, 0x4e21

    sget-object v4, Lcom/dumadugames/honeyquest/Honey;->purchaseFinishedListener:Lcom/dumadu/iab/util/IabHelper$OnIabPurchaseFinishedListener;

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p0

    invoke-virtual/range {v0 .. v5}, Lcom/dumadu/iab/util/IabHelper;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/dumadu/iab/util/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static purchaseSuccess()V
    .locals 3

    .prologue
    .line 1179
    const-string v0, "ExternalInterfaceHandler"

    const-string v1, "Receiver"

    const-string v2, "true"

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1180
    return-void
.end method

.method public static showAchievements(Landroid/app/Activity;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 613
    sget-object v1, Lcom/dumadugames/honeyquest/Honey;->gamesClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v1, :cond_0

    .line 614
    sget-object v1, Lcom/google/android/gms/games/Games;->Achievements:Lcom/google/android/gms/games/achievement/Achievements;

    sget-object v2, Lcom/dumadugames/honeyquest/Honey;->gamesClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v1, v2}, Lcom/google/android/gms/games/achievement/Achievements;->getAchievementsIntent(Lcom/google/android/gms/common/api/GoogleApiClient;)Landroid/content/Intent;

    move-result-object v1

    const/16 v2, 0x1389

    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 620
    :goto_0
    return-void

    .line 616
    :cond_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 617
    .local v0, "message":Landroid/os/Message;
    const/16 v1, 0x8

    iput v1, v0, Landroid/os/Message;->what:I

    .line 618
    sget-object v1, Lcom/dumadugames/honeyquest/Honey;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public static showBanner(ZLandroid/app/Activity;)V
    .locals 2
    .param p0, "top"    # Z
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 548
    sget-boolean v1, Lcom/dumadugames/honeyquest/Honey;->RemovedAds:Z

    if-nez v1, :cond_1

    .line 549
    if-eqz p0, :cond_0

    .line 550
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 551
    .local v0, "message":Landroid/os/Message;
    const/16 v1, 0x9

    iput v1, v0, Landroid/os/Message;->what:I

    .line 552
    sget-object v1, Lcom/dumadugames/honeyquest/Honey;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 564
    :goto_0
    return-void

    .line 554
    .end local v0    # "message":Landroid/os/Message;
    :cond_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 555
    .restart local v0    # "message":Landroid/os/Message;
    const/16 v1, 0xa

    iput v1, v0, Landroid/os/Message;->what:I

    .line 556
    sget-object v1, Lcom/dumadugames/honeyquest/Honey;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 559
    .end local v0    # "message":Landroid/os/Message;
    :cond_1
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 560
    .restart local v0    # "message":Landroid/os/Message;
    const/16 v1, 0xb

    iput v1, v0, Landroid/os/Message;->what:I

    .line 561
    sget-object v1, Lcom/dumadugames/honeyquest/Honey;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public static showExitPopUp(Landroid/app/Activity;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 623
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 624
    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x7

    iput v1, v0, Landroid/os/Message;->what:I

    .line 625
    sget-object v1, Lcom/dumadugames/honeyquest/Honey;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 626
    return-void
.end method

.method public static showIntrestitial(ILandroid/app/Activity;)V
    .locals 2
    .param p0, "label"    # I
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 542
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 543
    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x6

    iput v1, v0, Landroid/os/Message;->what:I

    .line 544
    sget-object v1, Lcom/dumadugames/honeyquest/Honey;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 545
    return-void
.end method

.method public static showLeaderBoards(Landroid/app/Activity;)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 602
    sget-object v1, Lcom/dumadugames/honeyquest/Honey;->gamesClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v1, :cond_0

    .line 603
    sget-object v1, Lcom/google/android/gms/games/Games;->Leaderboards:Lcom/google/android/gms/games/leaderboard/Leaderboards;

    sget-object v2, Lcom/dumadugames/honeyquest/Honey;->gamesClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    const v3, 0x7f0700a3

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/google/android/gms/games/leaderboard/Leaderboards;->getLeaderboardIntent(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/16 v2, 0x1389

    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 610
    :goto_0
    return-void

    .line 606
    :cond_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 607
    .local v0, "message":Landroid/os/Message;
    const/16 v1, 0x8

    iput v1, v0, Landroid/os/Message;->what:I

    .line 608
    sget-object v1, Lcom/dumadugames/honeyquest/Honey;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public static showToastMsg(Ljava/lang/String;Landroid/app/Activity;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 535
    sput-object p0, Lcom/dumadugames/honeyquest/Honey;->toastmessage:Ljava/lang/String;

    .line 536
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 537
    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x5

    iput v1, v0, Landroid/os/Message;->what:I

    .line 538
    sget-object v1, Lcom/dumadugames/honeyquest/Honey;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 539
    return-void
.end method

.method public static showVideoAd(Landroid/app/Activity;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 573
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 574
    .local v0, "message":Landroid/os/Message;
    const/16 v1, 0xc

    iput v1, v0, Landroid/os/Message;->what:I

    .line 575
    sget-object v1, Lcom/dumadugames/honeyquest/Honey;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 576
    return-void
.end method

.method private startAlphonsoService()V
    .locals 2

    .prologue
    .line 682
    :try_start_0
    invoke-direct {p0}, Lcom/dumadugames/honeyquest/Honey;->getIdentificationsReceiver()Landroid/os/ResultReceiver;

    move-result-object v1

    invoke-static {v1}, Ltv/alphonso/service/client/ASAPI;->start(Landroid/os/ResultReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 688
    :goto_0
    return-void

    .line 684
    :catch_0
    move-exception v0

    .line 686
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private stopAlphonsoService()V
    .locals 3

    .prologue
    .line 709
    :try_start_0
    const-string v1, "callback"

    const-string v2, "Alphonso service stopped"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    invoke-static {}, Ltv/alphonso/service/client/ASAPI;->stop()V

    .line 713
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/dumadugames/honeyquest/Honey;->setOptoutOption(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 718
    :goto_0
    return-void

    .line 715
    :catch_0
    move-exception v0

    .line 716
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static submitScore(Ljava/lang/String;ILandroid/app/Activity;)V
    .locals 6
    .param p0, "leaderboardId"    # Ljava/lang/String;
    .param p1, "score"    # I
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v3, 0x0

    .line 590
    sget-object v2, Lcom/dumadugames/honeyquest/Honey;->gamesClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v2, :cond_0

    .line 591
    sget-object v2, Lcom/google/android/gms/games/Games;->Leaderboards:Lcom/google/android/gms/games/leaderboard/Leaderboards;

    sget-object v3, Lcom/dumadugames/honeyquest/Honey;->gamesClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    int-to-long v4, p1

    invoke-interface {v2, v3, p0, v4, v5}, Lcom/google/android/gms/games/leaderboard/Leaderboards;->submitScore(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;J)V

    .line 599
    :goto_0
    return-void

    .line 594
    :cond_0
    const-string v2, "GameServices"

    invoke-virtual {p2, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 595
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 596
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v1, p0, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-interface {v0, p0, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 597
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public static unlockAchievement(Ljava/lang/String;Landroid/app/Activity;)V
    .locals 4
    .param p0, "achId"    # Ljava/lang/String;
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 579
    sget-object v2, Lcom/dumadugames/honeyquest/Honey;->gamesClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v2, :cond_0

    .line 580
    sget-object v2, Lcom/google/android/gms/games/Games;->Achievements:Lcom/google/android/gms/games/achievement/Achievements;

    sget-object v3, Lcom/dumadugames/honeyquest/Honey;->gamesClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v2, v3, p0}, Lcom/google/android/gms/games/achievement/Achievements;->unlock(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V

    .line 587
    :goto_0
    return-void

    .line 582
    :cond_0
    const-string v2, "GameServices"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 583
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 584
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const/4 v2, 0x1

    invoke-interface {v0, p0, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 585
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method private updateGameServices(Landroid/content/SharedPreferences;)V
    .locals 8
    .param p1, "preferences"    # Landroid/content/SharedPreferences;

    .prologue
    const v7, 0x7f070078

    const v6, 0x7f070077

    const v5, 0x7f070076

    const v4, 0x7f070075

    const/4 v3, 0x0

    .line 1068
    const v0, 0x7f07008f

    invoke-virtual {p0, v0}, Lcom/dumadugames/honeyquest/Honey;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1069
    sget-object v0, Lcom/google/android/gms/games/Games;->Achievements:Lcom/google/android/gms/games/achievement/Achievements;

    sget-object v1, Lcom/dumadugames/honeyquest/Honey;->gamesClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    const v2, 0x7f07008f

    invoke-virtual {p0, v2}, Lcom/dumadugames/honeyquest/Honey;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/games/achievement/Achievements;->unlock(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V

    .line 1070
    :cond_0
    const v0, 0x7f07008b

    invoke-virtual {p0, v0}, Lcom/dumadugames/honeyquest/Honey;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1071
    sget-object v0, Lcom/google/android/gms/games/Games;->Achievements:Lcom/google/android/gms/games/achievement/Achievements;

    sget-object v1, Lcom/dumadugames/honeyquest/Honey;->gamesClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    const v2, 0x7f07008b

    invoke-virtual {p0, v2}, Lcom/dumadugames/honeyquest/Honey;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/games/achievement/Achievements;->unlock(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V

    .line 1072
    :cond_1
    const v0, 0x7f07007b

    invoke-virtual {p0, v0}, Lcom/dumadugames/honeyquest/Honey;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1073
    sget-object v0, Lcom/google/android/gms/games/Games;->Achievements:Lcom/google/android/gms/games/achievement/Achievements;

    sget-object v1, Lcom/dumadugames/honeyquest/Honey;->gamesClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    const v2, 0x7f07007b

    invoke-virtual {p0, v2}, Lcom/dumadugames/honeyquest/Honey;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/games/achievement/Achievements;->unlock(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V

    .line 1074
    :cond_2
    invoke-virtual {p0, v4}, Lcom/dumadugames/honeyquest/Honey;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1075
    sget-object v0, Lcom/google/android/gms/games/Games;->Achievements:Lcom/google/android/gms/games/achievement/Achievements;

    sget-object v1, Lcom/dumadugames/honeyquest/Honey;->gamesClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {p0, v4}, Lcom/dumadugames/honeyquest/Honey;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/games/achievement/Achievements;->unlock(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V

    .line 1076
    :cond_3
    const v0, 0x7f07007c

    invoke-virtual {p0, v0}, Lcom/dumadugames/honeyquest/Honey;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1077
    sget-object v0, Lcom/google/android/gms/games/Games;->Achievements:Lcom/google/android/gms/games/achievement/Achievements;

    sget-object v1, Lcom/dumadugames/honeyquest/Honey;->gamesClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    const v2, 0x7f07007c

    invoke-virtual {p0, v2}, Lcom/dumadugames/honeyquest/Honey;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/games/achievement/Achievements;->unlock(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V

    .line 1078
    :cond_4
    const v0, 0x7f07008a

    invoke-virtual {p0, v0}, Lcom/dumadugames/honeyquest/Honey;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1079
    sget-object v0, Lcom/google/android/gms/games/Games;->Achievements:Lcom/google/android/gms/games/achievement/Achievements;

    sget-object v1, Lcom/dumadugames/honeyquest/Honey;->gamesClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    const v2, 0x7f07008a

    invoke-virtual {p0, v2}, Lcom/dumadugames/honeyquest/Honey;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/games/achievement/Achievements;->unlock(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V

    .line 1080
    :cond_5
    const v0, 0x7f07007f

    invoke-virtual {p0, v0}, Lcom/dumadugames/honeyquest/Honey;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1081
    sget-object v0, Lcom/google/android/gms/games/Games;->Achievements:Lcom/google/android/gms/games/achievement/Achievements;

    sget-object v1, Lcom/dumadugames/honeyquest/Honey;->gamesClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    const v2, 0x7f07007f

    invoke-virtual {p0, v2}, Lcom/dumadugames/honeyquest/Honey;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/games/achievement/Achievements;->unlock(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V

    .line 1082
    :cond_6
    const v0, 0x7f07008c

    invoke-virtual {p0, v0}, Lcom/dumadugames/honeyquest/Honey;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1083
    sget-object v0, Lcom/google/android/gms/games/Games;->Achievements:Lcom/google/android/gms/games/achievement/Achievements;

    sget-object v1, Lcom/dumadugames/honeyquest/Honey;->gamesClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    const v2, 0x7f07008c

    invoke-virtual {p0, v2}, Lcom/dumadugames/honeyquest/Honey;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/games/achievement/Achievements;->unlock(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V

    .line 1084
    :cond_7
    const v0, 0x7f07008d

    invoke-virtual {p0, v0}, Lcom/dumadugames/honeyquest/Honey;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1085
    sget-object v0, Lcom/google/android/gms/games/Games;->Achievements:Lcom/google/android/gms/games/achievement/Achievements;

    sget-object v1, Lcom/dumadugames/honeyquest/Honey;->gamesClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    const v2, 0x7f07008d

    invoke-virtual {p0, v2}, Lcom/dumadugames/honeyquest/Honey;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/games/achievement/Achievements;->unlock(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V

    .line 1086
    :cond_8
    const v0, 0x7f070080

    invoke-virtual {p0, v0}, Lcom/dumadugames/honeyquest/Honey;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1087
    sget-object v0, Lcom/google/android/gms/games/Games;->Achievements:Lcom/google/android/gms/games/achievement/Achievements;

    sget-object v1, Lcom/dumadugames/honeyquest/Honey;->gamesClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    const v2, 0x7f070080

    invoke-virtual {p0, v2}, Lcom/dumadugames/honeyquest/Honey;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/games/achievement/Achievements;->unlock(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V

    .line 1088
    :cond_9
    invoke-virtual {p0, v6}, Lcom/dumadugames/honeyquest/Honey;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1089
    sget-object v0, Lcom/google/android/gms/games/Games;->Achievements:Lcom/google/android/gms/games/achievement/Achievements;

    sget-object v1, Lcom/dumadugames/honeyquest/Honey;->gamesClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {p0, v6}, Lcom/dumadugames/honeyquest/Honey;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/games/achievement/Achievements;->unlock(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V

    .line 1090
    :cond_a
    const v0, 0x7f07007a

    invoke-virtual {p0, v0}, Lcom/dumadugames/honeyquest/Honey;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1091
    sget-object v0, Lcom/google/android/gms/games/Games;->Achievements:Lcom/google/android/gms/games/achievement/Achievements;

    sget-object v1, Lcom/dumadugames/honeyquest/Honey;->gamesClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    const v2, 0x7f07007a

    invoke-virtual {p0, v2}, Lcom/dumadugames/honeyquest/Honey;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/games/achievement/Achievements;->unlock(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V

    .line 1092
    :cond_b
    const v0, 0x7f07007e

    invoke-virtual {p0, v0}, Lcom/dumadugames/honeyquest/Honey;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1093
    sget-object v0, Lcom/google/android/gms/games/Games;->Achievements:Lcom/google/android/gms/games/achievement/Achievements;

    sget-object v1, Lcom/dumadugames/honeyquest/Honey;->gamesClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    const v2, 0x7f07007e

    invoke-virtual {p0, v2}, Lcom/dumadugames/honeyquest/Honey;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/games/achievement/Achievements;->unlock(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V

    .line 1094
    :cond_c
    const v0, 0x7f070081

    invoke-virtual {p0, v0}, Lcom/dumadugames/honeyquest/Honey;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1095
    sget-object v0, Lcom/google/android/gms/games/Games;->Achievements:Lcom/google/android/gms/games/achievement/Achievements;

    sget-object v1, Lcom/dumadugames/honeyquest/Honey;->gamesClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    const v2, 0x7f070081

    invoke-virtual {p0, v2}, Lcom/dumadugames/honeyquest/Honey;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/games/achievement/Achievements;->unlock(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V

    .line 1096
    :cond_d
    const v0, 0x7f070079

    invoke-virtual {p0, v0}, Lcom/dumadugames/honeyquest/Honey;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1097
    sget-object v0, Lcom/google/android/gms/games/Games;->Achievements:Lcom/google/android/gms/games/achievement/Achievements;

    sget-object v1, Lcom/dumadugames/honeyquest/Honey;->gamesClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    const v2, 0x7f070079

    invoke-virtual {p0, v2}, Lcom/dumadugames/honeyquest/Honey;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/games/achievement/Achievements;->unlock(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V

    .line 1098
    :cond_e
    const v0, 0x7f070087

    invoke-virtual {p0, v0}, Lcom/dumadugames/honeyquest/Honey;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1099
    sget-object v0, Lcom/google/android/gms/games/Games;->Achievements:Lcom/google/android/gms/games/achievement/Achievements;

    sget-object v1, Lcom/dumadugames/honeyquest/Honey;->gamesClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    const v2, 0x7f070087

    invoke-virtual {p0, v2}, Lcom/dumadugames/honeyquest/Honey;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/games/achievement/Achievements;->unlock(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V

    .line 1100
    :cond_f
    invoke-virtual {p0, v7}, Lcom/dumadugames/honeyquest/Honey;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1101
    sget-object v0, Lcom/google/android/gms/games/Games;->Achievements:Lcom/google/android/gms/games/achievement/Achievements;

    sget-object v1, Lcom/dumadugames/honeyquest/Honey;->gamesClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {p0, v7}, Lcom/dumadugames/honeyquest/Honey;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/games/achievement/Achievements;->unlock(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V

    .line 1102
    :cond_10
    const v0, 0x7f070086

    invoke-virtual {p0, v0}, Lcom/dumadugames/honeyquest/Honey;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1103
    sget-object v0, Lcom/google/android/gms/games/Games;->Achievements:Lcom/google/android/gms/games/achievement/Achievements;

    sget-object v1, Lcom/dumadugames/honeyquest/Honey;->gamesClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    const v2, 0x7f070086

    invoke-virtual {p0, v2}, Lcom/dumadugames/honeyquest/Honey;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/games/achievement/Achievements;->unlock(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V

    .line 1104
    :cond_11
    const v0, 0x7f070089

    invoke-virtual {p0, v0}, Lcom/dumadugames/honeyquest/Honey;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1105
    sget-object v0, Lcom/google/android/gms/games/Games;->Achievements:Lcom/google/android/gms/games/achievement/Achievements;

    sget-object v1, Lcom/dumadugames/honeyquest/Honey;->gamesClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    const v2, 0x7f070089

    invoke-virtual {p0, v2}, Lcom/dumadugames/honeyquest/Honey;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/games/achievement/Achievements;->unlock(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V

    .line 1106
    :cond_12
    const v0, 0x7f070084

    invoke-virtual {p0, v0}, Lcom/dumadugames/honeyquest/Honey;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1107
    sget-object v0, Lcom/google/android/gms/games/Games;->Achievements:Lcom/google/android/gms/games/achievement/Achievements;

    sget-object v1, Lcom/dumadugames/honeyquest/Honey;->gamesClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    const v2, 0x7f070084

    invoke-virtual {p0, v2}, Lcom/dumadugames/honeyquest/Honey;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/games/achievement/Achievements;->unlock(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V

    .line 1108
    :cond_13
    const v0, 0x7f070088

    invoke-virtual {p0, v0}, Lcom/dumadugames/honeyquest/Honey;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1109
    sget-object v0, Lcom/google/android/gms/games/Games;->Achievements:Lcom/google/android/gms/games/achievement/Achievements;

    sget-object v1, Lcom/dumadugames/honeyquest/Honey;->gamesClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    const v2, 0x7f070088

    invoke-virtual {p0, v2}, Lcom/dumadugames/honeyquest/Honey;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/games/achievement/Achievements;->unlock(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V

    .line 1110
    :cond_14
    const v0, 0x7f070082

    invoke-virtual {p0, v0}, Lcom/dumadugames/honeyquest/Honey;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1111
    sget-object v0, Lcom/google/android/gms/games/Games;->Achievements:Lcom/google/android/gms/games/achievement/Achievements;

    sget-object v1, Lcom/dumadugames/honeyquest/Honey;->gamesClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    const v2, 0x7f070082

    invoke-virtual {p0, v2}, Lcom/dumadugames/honeyquest/Honey;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/games/achievement/Achievements;->unlock(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V

    .line 1112
    :cond_15
    const v0, 0x7f070090

    invoke-virtual {p0, v0}, Lcom/dumadugames/honeyquest/Honey;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1113
    sget-object v0, Lcom/google/android/gms/games/Games;->Achievements:Lcom/google/android/gms/games/achievement/Achievements;

    sget-object v1, Lcom/dumadugames/honeyquest/Honey;->gamesClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    const v2, 0x7f070090

    invoke-virtual {p0, v2}, Lcom/dumadugames/honeyquest/Honey;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/games/achievement/Achievements;->unlock(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V

    .line 1114
    :cond_16
    const v0, 0x7f07007d

    invoke-virtual {p0, v0}, Lcom/dumadugames/honeyquest/Honey;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1115
    sget-object v0, Lcom/google/android/gms/games/Games;->Achievements:Lcom/google/android/gms/games/achievement/Achievements;

    sget-object v1, Lcom/dumadugames/honeyquest/Honey;->gamesClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    const v2, 0x7f07007d

    invoke-virtual {p0, v2}, Lcom/dumadugames/honeyquest/Honey;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/games/achievement/Achievements;->unlock(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V

    .line 1116
    :cond_17
    const v0, 0x7f07008e

    invoke-virtual {p0, v0}, Lcom/dumadugames/honeyquest/Honey;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1117
    sget-object v0, Lcom/google/android/gms/games/Games;->Achievements:Lcom/google/android/gms/games/achievement/Achievements;

    sget-object v1, Lcom/dumadugames/honeyquest/Honey;->gamesClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    const v2, 0x7f07008e

    invoke-virtual {p0, v2}, Lcom/dumadugames/honeyquest/Honey;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/games/achievement/Achievements;->unlock(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V

    .line 1118
    :cond_18
    const v0, 0x7f070085

    invoke-virtual {p0, v0}, Lcom/dumadugames/honeyquest/Honey;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1119
    sget-object v0, Lcom/google/android/gms/games/Games;->Achievements:Lcom/google/android/gms/games/achievement/Achievements;

    sget-object v1, Lcom/dumadugames/honeyquest/Honey;->gamesClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    const v2, 0x7f070085

    invoke-virtual {p0, v2}, Lcom/dumadugames/honeyquest/Honey;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/games/achievement/Achievements;->unlock(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V

    .line 1120
    :cond_19
    const v0, 0x7f070083

    invoke-virtual {p0, v0}, Lcom/dumadugames/honeyquest/Honey;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1121
    sget-object v0, Lcom/google/android/gms/games/Games;->Achievements:Lcom/google/android/gms/games/achievement/Achievements;

    sget-object v1, Lcom/dumadugames/honeyquest/Honey;->gamesClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    const v2, 0x7f070083

    invoke-virtual {p0, v2}, Lcom/dumadugames/honeyquest/Honey;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/games/achievement/Achievements;->unlock(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V

    .line 1122
    :cond_1a
    invoke-virtual {p0, v5}, Lcom/dumadugames/honeyquest/Honey;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1123
    sget-object v0, Lcom/google/android/gms/games/Games;->Achievements:Lcom/google/android/gms/games/achievement/Achievements;

    sget-object v1, Lcom/dumadugames/honeyquest/Honey;->gamesClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {p0, v5}, Lcom/dumadugames/honeyquest/Honey;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/games/achievement/Achievements;->unlock(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V

    .line 1125
    :cond_1b
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 454
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 455
    iget-object v0, p0, Lcom/dumadugames/honeyquest/Honey;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0, p1}, Lcom/unity3d/player/UnityPlayer;->injectEvent(Landroid/view/InputEvent;)Z

    move-result v0

    .line 456
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/dumadu/google/playgames/BaseGameActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public isNetworkAvailable()Z
    .locals 3

    .prologue
    .line 519
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Lcom/dumadugames/honeyquest/Honey;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 520
    .local v1, "connectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 521
    .local v0, "activeNetworkInfo":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public nativeExitPopup()V
    .locals 5

    .prologue
    .line 473
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 475
    .local v1, "alertDialogBuilder":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f07009a

    invoke-virtual {p0, v2}, Lcom/dumadugames/honeyquest/Honey;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 476
    const-string v2, "Do you want to exit?"

    .line 477
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x0

    .line 478
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "Yes"

    new-instance v4, Lcom/dumadugames/honeyquest/Honey$6;

    invoke-direct {v4, p0}, Lcom/dumadugames/honeyquest/Honey$6;-><init>(Lcom/dumadugames/honeyquest/Honey;)V

    .line 479
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "No"

    new-instance v4, Lcom/dumadugames/honeyquest/Honey$5;

    invoke-direct {v4, p0}, Lcom/dumadugames/honeyquest/Honey$5;-><init>(Lcom/dumadugames/honeyquest/Honey;)V

    .line 484
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 494
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 496
    .local v0, "alertDialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 497
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "request"    # I
    .param p2, "response"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 428
    sget-object v0, Lcom/dumadugames/honeyquest/Honey;->billingHelper:Lcom/dumadu/iab/util/IabHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/dumadu/iab/util/IabHelper;->handleActivityResult(IILandroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 429
    invoke-super {p0, p1, p2, p3}, Lcom/dumadu/google/playgames/BaseGameActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 431
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 437
    invoke-super {p0, p1}, Lcom/dumadu/google/playgames/BaseGameActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 438
    iget-object v0, p0, Lcom/dumadugames/honeyquest/Honey;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0, p1}, Lcom/unity3d/player/UnityPlayer;->configurationChanged(Landroid/content/res/Configuration;)V

    .line 439
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 130
    invoke-virtual {p0, v3}, Lcom/dumadugames/honeyquest/Honey;->requestWindowFeature(I)Z

    .line 131
    invoke-super {p0, p1}, Lcom/dumadu/google/playgames/BaseGameActivity;->onCreate(Landroid/os/Bundle;)V

    .line 132
    const v1, 0x7f040037

    invoke-virtual {p0, v1}, Lcom/dumadugames/honeyquest/Honey;->setContentView(I)V

    .line 133
    const v1, 0x7f0d00f6

    invoke-virtual {p0, v1}, Lcom/dumadugames/honeyquest/Honey;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/dumadugames/honeyquest/Honey;->layout:Landroid/widget/FrameLayout;

    .line 135
    invoke-virtual {p0}, Lcom/dumadugames/honeyquest/Honey;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/Window;->takeSurface(Landroid/view/SurfaceHolder$Callback2;)V

    .line 136
    invoke-virtual {p0}, Lcom/dumadugames/honeyquest/Honey;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/Window;->setFormat(I)V

    .line 138
    new-instance v1, Lcom/unity3d/player/UnityPlayer;

    invoke-direct {v1, p0}, Lcom/unity3d/player/UnityPlayer;-><init>(Landroid/content/ContextWrapper;)V

    iput-object v1, p0, Lcom/dumadugames/honeyquest/Honey;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    .line 140
    iget-object v1, p0, Lcom/dumadugames/honeyquest/Honey;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v1}, Lcom/unity3d/player/UnityPlayer;->requestFocus()Z

    .line 141
    iget-object v1, p0, Lcom/dumadugames/honeyquest/Honey;->layout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/dumadugames/honeyquest/Honey;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v2}, Lcom/unity3d/player/UnityPlayer;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 144
    invoke-static {p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v1

    sput-object v1, Lcom/dumadugames/honeyquest/Honey;->analytics:Lcom/google/android/gms/analytics/GoogleAnalytics;

    .line 145
    sget-object v1, Lcom/dumadugames/honeyquest/Honey;->analytics:Lcom/google/android/gms/analytics/GoogleAnalytics;

    const v2, 0x7f07009e

    invoke-virtual {p0, v2}, Lcom/dumadugames/honeyquest/Honey;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/GoogleAnalytics;->newTracker(Ljava/lang/String;)Lcom/google/android/gms/analytics/Tracker;

    move-result-object v1

    sput-object v1, Lcom/dumadugames/honeyquest/Honey;->tracker:Lcom/google/android/gms/analytics/Tracker;

    .line 146
    sget-object v1, Lcom/dumadugames/honeyquest/Honey;->tracker:Lcom/google/android/gms/analytics/Tracker;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/analytics/Tracker;->enableAutoActivityTracking(Z)V

    .line 147
    sget-object v1, Lcom/dumadugames/honeyquest/Honey;->tracker:Lcom/google/android/gms/analytics/Tracker;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/analytics/Tracker;->enableAdvertisingIdCollection(Z)V

    .line 150
    new-instance v1, Lcom/google/android/gms/ads/InterstitialAd;

    invoke-direct {v1, p0}, Lcom/google/android/gms/ads/InterstitialAd;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/dumadugames/honeyquest/Honey;->interstitial:Lcom/google/android/gms/ads/InterstitialAd;

    .line 151
    iget-object v1, p0, Lcom/dumadugames/honeyquest/Honey;->interstitial:Lcom/google/android/gms/ads/InterstitialAd;

    const v2, 0x7f070092

    invoke-virtual {p0, v2}, Lcom/dumadugames/honeyquest/Honey;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/InterstitialAd;->setAdUnitId(Ljava/lang/String;)V

    .line 152
    iget-object v1, p0, Lcom/dumadugames/honeyquest/Honey;->interstitial:Lcom/google/android/gms/ads/InterstitialAd;

    new-instance v2, Lcom/dumadugames/honeyquest/Honey$1;

    invoke-direct {v2, p0}, Lcom/dumadugames/honeyquest/Honey$1;-><init>(Lcom/dumadugames/honeyquest/Honey;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/InterstitialAd;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 168
    const v1, 0x7f0d00f7

    invoke-virtual {p0, v1}, Lcom/dumadugames/honeyquest/Honey;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/ads/AdView;

    iput-object v1, p0, Lcom/dumadugames/honeyquest/Honey;->banner:Lcom/google/android/gms/ads/AdView;

    .line 169
    iget-object v1, p0, Lcom/dumadugames/honeyquest/Honey;->banner:Lcom/google/android/gms/ads/AdView;

    new-instance v2, Lcom/dumadugames/honeyquest/Honey$2;

    invoke-direct {v2, p0}, Lcom/dumadugames/honeyquest/Honey$2;-><init>(Lcom/dumadugames/honeyquest/Honey;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/AdView;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 178
    invoke-static {p0}, Lcom/google/android/gms/ads/MobileAds;->getRewardedVideoAdInstance(Landroid/content/Context;)Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    move-result-object v1

    iput-object v1, p0, Lcom/dumadugames/honeyquest/Honey;->mRewardedVideoAd:Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    .line 179
    iget-object v1, p0, Lcom/dumadugames/honeyquest/Honey;->mRewardedVideoAd:Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    invoke-interface {v1, p0}, Lcom/google/android/gms/ads/reward/RewardedVideoAd;->setRewardedVideoAdListener(Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;)V

    .line 180
    invoke-direct {p0}, Lcom/dumadugames/honeyquest/Honey;->loadRewardedVideoAd()V

    .line 182
    sput-object p0, Lcom/dumadugames/honeyquest/Honey;->activity:Landroid/app/Activity;

    .line 183
    const-string v1, "AlphonsoMicStatus"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/dumadugames/honeyquest/Honey;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/dumadugames/honeyquest/Honey;->sharedpreferences:Landroid/content/SharedPreferences;

    .line 184
    iget-object v1, p0, Lcom/dumadugames/honeyquest/Honey;->sharedpreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sput-object v1, Lcom/dumadugames/honeyquest/Honey;->editor:Landroid/content/SharedPreferences$Editor;

    .line 186
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 187
    .local v0, "moreSkus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "com.honeyquest.removeads"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    const-string v1, "com.honeyquest.coins5000"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    const-string v1, "com.honeyquest.coins18000"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    const-string v1, "com.honeyquest.coins40000"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    const-string v1, "com.honeyquest.honey10"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    const-string v1, "com.honeyquest.honey25"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    const-string v1, "com.honeyquest.honey60"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    new-instance v1, Lcom/dumadu/iab/util/IabHelper;

    const-string v2, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAmTaTsaxdTPCztOwWT9vFC/U/3NvJlKZJS50oSz76IAslwWQNov8WcKT8UiRbPO5viaq0dzxTzAUdeNnTxUUu6R4l1S0PAKF0KNjiU6C1lkXNuTqRg7V5f65IR/GcbmKfjGTGGBl7hzoqovIJBElkKtZhgUFLZE8SVVt9f6/53hZeU/JjoSG0kVWryqQUDx94dvGTn1QlMkObhCTszQ0QsLD4YWg0uSKcKzzDlK8Cn3GhtyvsP0Q3unOpwe3beh1y7AJgYWYClYGwzF0Wsz32yUpMxQnuRxRRofAvkALf13gIFMEgi8pC/vzgM1pqsiJjwsNKQwHB9kN9lkw8KfFp6wIDAQAB"

    invoke-direct {v1, p0, v2}, Lcom/dumadu/iab/util/IabHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v1, Lcom/dumadugames/honeyquest/Honey;->billingHelper:Lcom/dumadu/iab/util/IabHelper;

    .line 196
    sget-object v1, Lcom/dumadugames/honeyquest/Honey;->billingHelper:Lcom/dumadu/iab/util/IabHelper;

    new-instance v2, Lcom/dumadugames/honeyquest/Honey$3;

    invoke-direct {v2, p0, v0}, Lcom/dumadugames/honeyquest/Honey$3;-><init>(Lcom/dumadugames/honeyquest/Honey;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lcom/dumadu/iab/util/IabHelper;->startSetup(Lcom/dumadu/iab/util/IabHelper$OnIabSetupFinishedListener;)V

    .line 207
    new-instance v1, Lcom/dumadugames/honeyquest/Honey$4;

    invoke-direct {v1, p0}, Lcom/dumadugames/honeyquest/Honey$4;-><init>(Lcom/dumadugames/honeyquest/Honey;)V

    sput-object v1, Lcom/dumadugames/honeyquest/Honey;->handler:Landroid/os/Handler;

    .line 364
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Lcom/dumadugames/honeyquest/Honey;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0}, Lcom/unity3d/player/UnityPlayer;->quit()V

    .line 404
    sget-boolean v0, Lcom/dumadugames/honeyquest/Honey;->alphonsServiceInitialized:Z

    if-eqz v0, :cond_0

    .line 405
    invoke-direct {p0}, Lcom/dumadugames/honeyquest/Honey;->cleanupAlphonsoService()V

    .line 406
    :cond_0
    invoke-super {p0}, Lcom/dumadu/google/playgames/BaseGameActivity;->onDestroy()V

    .line 407
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 466
    iget-object v0, p0, Lcom/dumadugames/honeyquest/Honey;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0, p1}, Lcom/unity3d/player/UnityPlayer;->injectEvent(Landroid/view/InputEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 463
    iget-object v0, p0, Lcom/dumadugames/honeyquest/Honey;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0, p2}, Lcom/unity3d/player/UnityPlayer;->injectEvent(Landroid/view/InputEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 461
    iget-object v0, p0, Lcom/dumadugames/honeyquest/Honey;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0, p2}, Lcom/unity3d/player/UnityPlayer;->injectEvent(Landroid/view/InputEvent;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 413
    invoke-super {p0}, Lcom/dumadu/google/playgames/BaseGameActivity;->onPause()V

    .line 414
    iget-object v0, p0, Lcom/dumadugames/honeyquest/Honey;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0}, Lcom/unity3d/player/UnityPlayer;->pause()V

    .line 415
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 920
    packed-switch p1, :pswitch_data_0

    .line 972
    :goto_0
    return-void

    .line 922
    :pswitch_0
    array-length v0, p3

    if-lez v0, :cond_3

    aget v0, p3, v2

    if-nez v0, :cond_3

    .line 923
    const-string v0, "callback"

    const-string v1, "Mic Permission granted"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    iget-object v0, p0, Lcom/dumadugames/honeyquest/Honey;->sharedpreferences:Landroid/content/SharedPreferences;

    const-string v1, "optout_Click_temp"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 933
    invoke-virtual {p0}, Lcom/dumadugames/honeyquest/Honey;->setupAlphonsoService()V

    goto :goto_0

    .line 934
    :cond_0
    iget-object v0, p0, Lcom/dumadugames/honeyquest/Honey;->sharedpreferences:Landroid/content/SharedPreferences;

    const-string v1, "optout_Click"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 935
    invoke-virtual {p0}, Lcom/dumadugames/honeyquest/Honey;->setupAlphonsoService()V

    goto :goto_0

    .line 937
    :cond_1
    sget-boolean v0, Lcom/dumadugames/honeyquest/Honey;->alphonsServiceInitialized:Z

    if-eqz v0, :cond_2

    .line 938
    invoke-direct {p0}, Lcom/dumadugames/honeyquest/Honey;->stopAlphonsoService()V

    goto :goto_0

    .line 940
    :cond_2
    invoke-virtual {p0, v3}, Lcom/dumadugames/honeyquest/Honey;->setOptoutOption(Z)V

    goto :goto_0

    .line 945
    :cond_3
    const-string v0, "callback"

    const-string v1, "Mic Permission not granted"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    sget-boolean v0, Lcom/dumadugames/honeyquest/Honey;->alphonsServiceInitialized:Z

    if-eqz v0, :cond_4

    .line 947
    invoke-direct {p0}, Lcom/dumadugames/honeyquest/Honey;->stopAlphonsoService()V

    .line 949
    :cond_4
    invoke-virtual {p0, v3}, Lcom/dumadugames/honeyquest/Honey;->setOptoutOption(Z)V

    goto :goto_0

    .line 954
    :pswitch_1
    array-length v0, p3

    if-lez v0, :cond_5

    aget v0, p3, v2

    if-nez v0, :cond_5

    .line 955
    const-string v0, "callback"

    const-string v1, "Location Permission granted"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    invoke-virtual {p0}, Lcom/dumadugames/honeyquest/Honey;->requestMicPermission()V

    goto :goto_0

    .line 958
    :cond_5
    const-string v0, "callback"

    const-string v1, "Location Permission not granted"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    const-string v0, "android.permission.RECORD_AUDIO"

    invoke-static {p0, v0}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 961
    invoke-virtual {p0}, Lcom/dumadugames/honeyquest/Honey;->showAlphonsoCustomDialog()V

    goto :goto_0

    .line 964
    :cond_6
    invoke-virtual {p0}, Lcom/dumadugames/honeyquest/Honey;->requestMicPermission()V

    goto :goto_0

    .line 920
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 421
    invoke-super {p0}, Lcom/dumadu/google/playgames/BaseGameActivity;->onResume()V

    .line 422
    iget-object v0, p0, Lcom/dumadugames/honeyquest/Honey;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0}, Lcom/unity3d/player/UnityPlayer;->resume()V

    .line 423
    return-void
.end method

.method public onRewarded(Lcom/google/android/gms/ads/reward/RewardItem;)V
    .locals 3
    .param p1, "arg0"    # Lcom/google/android/gms/ads/reward/RewardItem;

    .prologue
    .line 1189
    const-string v0, "ExternalInterfaceHandler"

    const-string v1, "Receiver"

    const-string v2, "true"

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1190
    return-void
.end method

.method public onRewardedVideoAdClosed()V
    .locals 0

    .prologue
    .line 1195
    invoke-direct {p0}, Lcom/dumadugames/honeyquest/Honey;->loadRewardedVideoAd()V

    .line 1196
    return-void
.end method

.method public onRewardedVideoAdFailedToLoad(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 1201
    invoke-direct {p0}, Lcom/dumadugames/honeyquest/Honey;->loadRewardedVideoAd()V

    .line 1202
    return-void
.end method

.method public onRewardedVideoAdLeftApplication()V
    .locals 0

    .prologue
    .line 1208
    return-void
.end method

.method public onRewardedVideoAdLoaded()V
    .locals 0

    .prologue
    .line 1214
    return-void
.end method

.method public onRewardedVideoAdOpened()V
    .locals 0

    .prologue
    .line 1220
    return-void
.end method

.method public onRewardedVideoStarted()V
    .locals 0

    .prologue
    .line 1226
    return-void
.end method

.method public onSignInFailed()V
    .locals 1

    .prologue
    .line 1050
    const/4 v0, 0x0

    sput-object v0, Lcom/dumadugames/honeyquest/Honey;->gamesClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 1051
    return-void
.end method

.method public onSignInSucceeded()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1056
    invoke-virtual {p0}, Lcom/dumadugames/honeyquest/Honey;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v3

    sput-object v3, Lcom/dumadugames/honeyquest/Honey;->gamesClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 1057
    const-string v3, "GameServices"

    invoke-virtual {p0, v3, v4}, Lcom/dumadugames/honeyquest/Honey;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1058
    .local v1, "preferences":Landroid/content/SharedPreferences;
    const-string v3, "sync"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 1059
    .local v2, "sync":Z
    if-nez v2, :cond_0

    .line 1060
    invoke-direct {p0, v1}, Lcom/dumadugames/honeyquest/Honey;->updateGameServices(Landroid/content/SharedPreferences;)V

    .line 1061
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1062
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "sync"

    const/4 v4, 0x1

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1063
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1065
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 3

    .prologue
    .line 369
    invoke-super {p0}, Lcom/dumadu/google/playgames/BaseGameActivity;->onStart()V

    .line 371
    invoke-static {}, Lcom/dumadugames/honeyquest/Honey;->checkPermission_RecordAudio()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/dumadugames/honeyquest/Honey;->sharedpreferences:Landroid/content/SharedPreferences;

    const-string v1, "optout_Click"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_3

    .line 373
    sget-boolean v0, Lcom/dumadugames/honeyquest/Honey;->alphonsServiceInitialized:Z

    if-eqz v0, :cond_2

    .line 374
    invoke-direct {p0}, Lcom/dumadugames/honeyquest/Honey;->stopAlphonsoService()V

    .line 384
    :cond_0
    :goto_0
    sget-boolean v0, Lcom/dumadugames/honeyquest/Honey;->RemovedAds:Z

    if-nez v0, :cond_1

    .line 385
    iget-object v0, p0, Lcom/dumadugames/honeyquest/Honey;->banner:Lcom/google/android/gms/ads/AdView;

    new-instance v1, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    .line 386
    invoke-direct {p0}, Lcom/dumadugames/honeyquest/Honey;->loadInterstitialAd()V

    .line 389
    :cond_1
    sget-object v0, Lcom/dumadugames/honeyquest/Honey;->analytics:Lcom/google/android/gms/analytics/GoogleAnalytics;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->reportActivityStart(Landroid/app/Activity;)V

    .line 390
    return-void

    .line 376
    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/dumadugames/honeyquest/Honey;->setOptoutOption(Z)V

    goto :goto_0

    .line 380
    :cond_3
    invoke-virtual {p0}, Lcom/dumadugames/honeyquest/Honey;->setupAlphonsoService()V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 395
    invoke-super {p0}, Lcom/dumadu/google/playgames/BaseGameActivity;->onStop()V

    .line 396
    sget-object v0, Lcom/dumadugames/honeyquest/Honey;->analytics:Lcom/google/android/gms/analytics/GoogleAnalytics;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->reportActivityStop(Landroid/app/Activity;)V

    .line 397
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 465
    iget-object v0, p0, Lcom/dumadugames/honeyquest/Honey;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0, p1}, Lcom/unity3d/player/UnityPlayer;->injectEvent(Landroid/view/InputEvent;)Z

    move-result v0

    return v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasFocus"    # Z

    .prologue
    .line 445
    invoke-super {p0, p1}, Lcom/dumadu/google/playgames/BaseGameActivity;->onWindowFocusChanged(Z)V

    .line 446
    iget-object v0, p0, Lcom/dumadugames/honeyquest/Honey;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0, p1}, Lcom/unity3d/player/UnityPlayer;->windowFocusChanged(Z)V

    .line 447
    return-void
.end method

.method public requestLocationPermission()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 879
    invoke-static {}, Lcom/dumadugames/honeyquest/Honey;->checkPermission_Location()Z

    move-result v0

    if-nez v0, :cond_1

    .line 880
    sget-object v0, Lcom/dumadugames/honeyquest/Honey;->activity:Landroid/app/Activity;

    new-array v1, v2, [Ljava/lang/String;

    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object v2, v1, v3

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 899
    :cond_0
    :goto_0
    return-void

    .line 882
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_5

    .line 883
    iget-object v0, p0, Lcom/dumadugames/honeyquest/Honey;->sharedpreferences:Landroid/content/SharedPreferences;

    const-string v1, "optout_Click_temp"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 884
    invoke-virtual {p0}, Lcom/dumadugames/honeyquest/Honey;->setupAlphonsoService()V

    goto :goto_0

    .line 885
    :cond_2
    iget-object v0, p0, Lcom/dumadugames/honeyquest/Honey;->sharedpreferences:Landroid/content/SharedPreferences;

    const-string v1, "optout_Click"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 886
    invoke-virtual {p0}, Lcom/dumadugames/honeyquest/Honey;->setupAlphonsoService()V

    goto :goto_0

    .line 888
    :cond_3
    sget-boolean v0, Lcom/dumadugames/honeyquest/Honey;->alphonsServiceInitialized:Z

    if-eqz v0, :cond_4

    .line 889
    invoke-direct {p0}, Lcom/dumadugames/honeyquest/Honey;->stopAlphonsoService()V

    goto :goto_0

    .line 891
    :cond_4
    invoke-virtual {p0, v2}, Lcom/dumadugames/honeyquest/Honey;->setOptoutOption(Z)V

    goto :goto_0

    .line 895
    :cond_5
    invoke-static {}, Lcom/dumadugames/honeyquest/Honey;->checkPermission_RecordAudio()Z

    move-result v0

    if-nez v0, :cond_0

    .line 896
    invoke-virtual {p0}, Lcom/dumadugames/honeyquest/Honey;->showAlphonsoCustomDialog()V

    goto :goto_0
.end method

.method public requestMicPermission()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 873
    invoke-static {}, Lcom/dumadugames/honeyquest/Honey;->checkPermission_RecordAudio()Z

    move-result v0

    if-nez v0, :cond_0

    .line 874
    sget-object v0, Lcom/dumadugames/honeyquest/Honey;->activity:Landroid/app/Activity;

    new-array v1, v4, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "android.permission.RECORD_AUDIO"

    aput-object v3, v1, v2

    invoke-static {v0, v1, v4}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 876
    :cond_0
    return-void
.end method

.method public setOptoutOption(Z)V
    .locals 3
    .param p1, "status"    # Z

    .prologue
    .line 977
    invoke-static {}, Lcom/dumadugames/honeyquest/Honey;->checkPermission_RecordAudio()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    .line 978
    iget-object v0, p0, Lcom/dumadugames/honeyquest/Honey;->sharedpreferences:Landroid/content/SharedPreferences;

    const-string v1, "optout_Click"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 980
    const-string v0, "ExternalInterfaceHandler"

    const-string v1, "SetMicStatus"

    const-string v2, "true"

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 993
    :goto_0
    return-void

    .line 983
    :cond_0
    const-string v0, "ExternalInterfaceHandler"

    const-string v1, "SetMicStatus"

    const-string v2, "false"

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 989
    :cond_1
    const-string v0, "ExternalInterfaceHandler"

    const-string v1, "SetMicStatus"

    const-string v2, "false"

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setupAlphonsoService()V
    .locals 5

    .prologue
    .line 664
    const-string v2, "Please Wait.."

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 667
    const v2, 0x7f070096

    :try_start_0
    invoke-virtual {p0, v2}, Lcom/dumadugames/honeyquest/Honey;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 668
    .local v0, "API_KEY":Ljava/lang/String;
    invoke-direct {p0}, Lcom/dumadugames/honeyquest/Honey;->getResultReceiver()Landroid/os/ResultReceiver;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, p0, v2, v3}, Ltv/alphonso/service/client/ASAPI;->init(Ljava/lang/String;Landroid/app/Activity;Landroid/os/ResultReceiver;Z)V

    .line 669
    const-string v2, "alphonso"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Key used"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 674
    .end local v0    # "API_KEY":Ljava/lang/String;
    :goto_0
    return-void

    .line 670
    :catch_0
    move-exception v1

    .line 671
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "callback"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public showAlphonsoCustomDialog()V
    .locals 6

    .prologue
    .line 996
    const-string v3, "test"

    const-string v4, "Custom Popup"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 999
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    const-string v3, "OK"

    new-instance v4, Lcom/dumadugames/honeyquest/Honey$9;

    invoke-direct {v4, p0}, Lcom/dumadugames/honeyquest/Honey$9;-><init>(Lcom/dumadugames/honeyquest/Honey;)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1008
    const-string v3, "Don\'t Allow"

    new-instance v4, Lcom/dumadugames/honeyquest/Honey$10;

    invoke-direct {v4, p0}, Lcom/dumadugames/honeyquest/Honey$10;-><init>(Lcom/dumadugames/honeyquest/Honey;)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1022
    new-instance v3, Lcom/dumadugames/honeyquest/Honey$11;

    invoke-direct {v3, p0}, Lcom/dumadugames/honeyquest/Honey$11;-><init>(Lcom/dumadugames/honeyquest/Honey;)V

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 1033
    invoke-static {p0}, Ltv/alphonso/utils/Utils;->getOnlyAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1034
    .local v0, "appName":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1035
    const-string v3, "This app uses audio to detect TV ads and content and shows appropriate mobile ads"

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const-string v4, "This App Would Like to Access the Microphone"

    .line 1036
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1042
    :goto_0
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 1044
    .local v2, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 1045
    return-void

    .line 1038
    .end local v2    # "dialog":Landroid/app/AlertDialog;
    :cond_0
    const-string v3, "This app uses audio to detect TV ads and content and shows appropriate mobile ads"

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\" Would Like to Access the Microphone"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1039
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method
