.class public Lcom/augmentedreality/gp/baseball/Baseball;
.super Lcom/dumadu/google/playgames/BaseGameActivity;
.source "Baseball.java"

# interfaces
.implements Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;


# static fields
.field private static final COINS_SKU_1000:Ljava/lang/String; = "com.baseball.coins1000"

.field private static final COINS_SKU_15000:Ljava/lang/String; = "com.baseball.coins15000"

.field private static final COINS_SKU_3450:Ljava/lang/String; = "com.baseball.coins3450"

.field private static final COINS_SKU_6500:Ljava/lang/String; = "com.baseball.coins6500"

.field private static final GOOGLE_LOGIN:I = 0x8

.field private static final HIDE_BANNER:I = 0xb

.field private static final INITIALIZE:I = 0x1

.field static final KEY_OPTOUT_CLICK:Ljava/lang/String; = "optout_Click"

.field static final KEY_OPTOUT_CLICK_TEMP:Ljava/lang/String; = "optout_Click_temp"

.field private static final OPTOUT:I = 0x2

.field private static final RC_INAPP:I = 0x4e21

.field private static final REMOVE_ADS_SKU:Ljava/lang/String; = "com.baseball.removeads"

.field private static RemovedAds:Z = false

.field private static final SHOW_BANNER_BOTTOM:I = 0xa

.field private static final SHOW_BANNER_TOP:I = 0x9

.field private static final SHOW_EXIT:I = 0x7

.field private static final SHOW_INTERSTITIAL:I = 0x6

.field private static final SHOW_TOAST:I = 0x5

.field private static final SHOW_VIDEO:I = 0xc

.field private static final START_ALPHONSO:I = 0x3

.field private static final STOP_ALPHONSO:I = 0x4

.field private static final TICKETS_SKU_130:Ljava/lang/String; = "com.baseball.tickets130"

.field private static final TICKETS_SKU_250:Ljava/lang/String; = "com.baseball.tickets250"

.field private static final TICKETS_SKU_40:Ljava/lang/String; = "com.baseball.tickets40"

.field private static final TICKETS_SKU_550:Ljava/lang/String; = "com.baseball.tickets550"

.field private static activity:Landroid/app/Activity; = null

.field private static alphonsServiceInitialized:Z = false

.field private static analytics:Lcom/google/android/gms/analytics/GoogleAnalytics; = null

.field private static final base64EncodedPublicKey:Ljava/lang/String; = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAlzf4QW/QcvmQsEJmFo1qOjE28jXyAIyPXcvqnRV/qOEwPu5wF+lyh4xju1/GhyOQHWGgqQ+c8+E2yyPjdYZrSt3NnXbgo+qf6mV4HeQ9oP+JApNhjsZa7bgDGKoqilCFGzl2nQujvCgUC1zcOhWuUNIqnZ6lihMuqrh/VCe1ZnYZwEiCHTQtcXTCBX02BSh6vGyen3ukmjyurO9xBd7nTg7PtGAy+WaOA95AZ2hpPvxAJLUv8f7XuJd/u/R+zzymLNxoNPvH5emTfXHcEL7N9/RyTKbARJl01oRK/80egq3ILrG/cuJcZ3ALQNMkFZP8rF5fv0QSqroQlJX/IWLkhwIDAQAB"

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
.field alphonsoFlag:Z

.field private banner:Lcom/google/android/gms/ads/AdView;

.field private interstitial:Lcom/google/android/gms/ads/InterstitialAd;

.field private layout:Landroid/widget/FrameLayout;

.field private mDecorView:Landroid/view/View;

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
    .line 76
    const/4 v0, 0x0

    sput-boolean v0, Lcom/augmentedreality/gp/baseball/Baseball;->alphonsServiceInitialized:Z

    .line 101
    const-string v0, ""

    sput-object v0, Lcom/augmentedreality/gp/baseball/Baseball;->toastmessage:Ljava/lang/String;

    .line 1158
    new-instance v0, Lcom/augmentedreality/gp/baseball/Baseball$11;

    invoke-direct {v0}, Lcom/augmentedreality/gp/baseball/Baseball$11;-><init>()V

    sput-object v0, Lcom/augmentedreality/gp/baseball/Baseball;->inventoryFinishedListener:Lcom/dumadu/iab/util/IabHelper$QueryInventoryFinishedListener;

    .line 1174
    new-instance v0, Lcom/augmentedreality/gp/baseball/Baseball$12;

    invoke-direct {v0}, Lcom/augmentedreality/gp/baseball/Baseball$12;-><init>()V

    sput-object v0, Lcom/augmentedreality/gp/baseball/Baseball;->purchaseFinishedListener:Lcom/dumadu/iab/util/IabHelper$OnIabPurchaseFinishedListener;

    .line 1198
    new-instance v0, Lcom/augmentedreality/gp/baseball/Baseball$13;

    invoke-direct {v0}, Lcom/augmentedreality/gp/baseball/Baseball$13;-><init>()V

    sput-object v0, Lcom/augmentedreality/gp/baseball/Baseball;->consumeFinishedListener:Lcom/dumadu/iab/util/IabHelper$OnConsumeFinishedListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 68
    invoke-direct {p0}, Lcom/dumadu/google/playgames/BaseGameActivity;-><init>()V

    .line 74
    iput-object v0, p0, Lcom/augmentedreality/gp/baseball/Baseball;->mStatusReceiver:Landroid/os/ResultReceiver;

    .line 75
    iput-object v0, p0, Lcom/augmentedreality/gp/baseball/Baseball;->mIdentificationReceiver:Landroid/os/ResultReceiver;

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 68
    sget-boolean v0, Lcom/augmentedreality/gp/baseball/Baseball;->exit:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 68
    sput-boolean p0, Lcom/augmentedreality/gp/baseball/Baseball;->exit:Z

    return p0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 68
    sget-boolean v0, Lcom/augmentedreality/gp/baseball/Baseball;->RemovedAds:Z

    return v0
.end method

.method static synthetic access$1000()Z
    .locals 1

    .prologue
    .line 68
    sget-boolean v0, Lcom/augmentedreality/gp/baseball/Baseball;->alphonsServiceInitialized:Z

    return v0
.end method

.method static synthetic access$1002(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 68
    sput-boolean p0, Lcom/augmentedreality/gp/baseball/Baseball;->alphonsServiceInitialized:Z

    return p0
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 68
    sput-boolean p0, Lcom/augmentedreality/gp/baseball/Baseball;->RemovedAds:Z

    return p0
.end method

.method static synthetic access$1100(Lcom/augmentedreality/gp/baseball/Baseball;)V
    .locals 0
    .param p0, "x0"    # Lcom/augmentedreality/gp/baseball/Baseball;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/augmentedreality/gp/baseball/Baseball;->startAlphonsoService()V

    return-void
.end method

.method static synthetic access$1200()V
    .locals 0

    .prologue
    .line 68
    invoke-static {}, Lcom/augmentedreality/gp/baseball/Baseball;->purchaseSuccess()V

    return-void
.end method

.method static synthetic access$1300()V
    .locals 0

    .prologue
    .line 68
    invoke-static {}, Lcom/augmentedreality/gp/baseball/Baseball;->purchaseFailure()V

    return-void
.end method

.method static synthetic access$1400()Lcom/dumadu/iab/util/IabHelper$OnConsumeFinishedListener;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/augmentedreality/gp/baseball/Baseball;->consumeFinishedListener:Lcom/dumadu/iab/util/IabHelper$OnConsumeFinishedListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/augmentedreality/gp/baseball/Baseball;)V
    .locals 0
    .param p0, "x0"    # Lcom/augmentedreality/gp/baseball/Baseball;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/augmentedreality/gp/baseball/Baseball;->loadInterstitialAd()V

    return-void
.end method

.method static synthetic access$300()Lcom/dumadu/iab/util/IabHelper$QueryInventoryFinishedListener;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/augmentedreality/gp/baseball/Baseball;->inventoryFinishedListener:Lcom/dumadu/iab/util/IabHelper$QueryInventoryFinishedListener;

    return-object v0
.end method

.method static synthetic access$400()Lcom/dumadu/iab/util/IabHelper;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/augmentedreality/gp/baseball/Baseball;->billingHelper:Lcom/dumadu/iab/util/IabHelper;

    return-object v0
.end method

.method static synthetic access$500(Lcom/augmentedreality/gp/baseball/Baseball;)Lcom/google/android/gms/ads/InterstitialAd;
    .locals 1
    .param p0, "x0"    # Lcom/augmentedreality/gp/baseball/Baseball;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/augmentedreality/gp/baseball/Baseball;->interstitial:Lcom/google/android/gms/ads/InterstitialAd;

    return-object v0
.end method

.method static synthetic access$600(Lcom/augmentedreality/gp/baseball/Baseball;)V
    .locals 0
    .param p0, "x0"    # Lcom/augmentedreality/gp/baseball/Baseball;

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/augmentedreality/gp/baseball/Baseball;->beginUserInitiatedSignIn()V

    return-void
.end method

.method static synthetic access$700(Lcom/augmentedreality/gp/baseball/Baseball;)V
    .locals 0
    .param p0, "x0"    # Lcom/augmentedreality/gp/baseball/Baseball;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/augmentedreality/gp/baseball/Baseball;->stopAlphonsoService()V

    return-void
.end method

.method static synthetic access$800(Lcom/augmentedreality/gp/baseball/Baseball;)Lcom/google/android/gms/ads/reward/RewardedVideoAd;
    .locals 1
    .param p0, "x0"    # Lcom/augmentedreality/gp/baseball/Baseball;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/augmentedreality/gp/baseball/Baseball;->mRewardedVideoAd:Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    return-object v0
.end method

.method static synthetic access$900(Lcom/augmentedreality/gp/baseball/Baseball;)V
    .locals 0
    .param p0, "x0"    # Lcom/augmentedreality/gp/baseball/Baseball;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/augmentedreality/gp/baseball/Baseball;->loadRewardedVideoAd()V

    return-void
.end method

.method public static analyticsEvent(Ljava/lang/String;Landroid/app/Activity;)V
    .locals 4
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 661
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, "_"

    invoke-direct {v0, p0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    .local v0, "tokenizer":Ljava/util/StringTokenizer;
    sget-object v1, Lcom/augmentedreality/gp/baseball/Baseball;->tracker:Lcom/google/android/gms/analytics/Tracker;

    new-instance v2, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setLabel(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 663
    return-void
.end method

.method public static analyticsScreen(Ljava/lang/String;Landroid/app/Activity;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 666
    sget-object v0, Lcom/augmentedreality/gp/baseball/Baseball;->tracker:Lcom/google/android/gms/analytics/Tracker;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/analytics/Tracker;->setScreenName(Ljava/lang/String;)V

    .line 667
    sget-object v0, Lcom/augmentedreality/gp/baseball/Baseball;->tracker:Lcom/google/android/gms/analytics/Tracker;

    new-instance v1, Lcom/google/android/gms/analytics/HitBuilders$AppViewBuilder;

    invoke-direct {v1}, Lcom/google/android/gms/analytics/HitBuilders$AppViewBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/HitBuilders$AppViewBuilder;->build()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 668
    return-void
.end method

.method private static checkPermission_Location()Z
    .locals 3

    .prologue
    .line 950
    sget-object v1, Lcom/augmentedreality/gp/baseball/Baseball;->activity:Landroid/app/Activity;

    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 951
    .local v0, "result":I
    if-nez v0, :cond_0

    .line 952
    const/4 v1, 0x1

    .line 954
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static checkPermission_RecordAudio()Z
    .locals 3

    .prologue
    .line 941
    sget-object v1, Lcom/augmentedreality/gp/baseball/Baseball;->activity:Landroid/app/Activity;

    const-string v2, "android.permission.RECORD_AUDIO"

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 942
    .local v0, "result":I
    if-nez v0, :cond_0

    .line 943
    const/4 v1, 0x1

    .line 945
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private cleanupAlphonsoService()V
    .locals 4

    .prologue
    .line 745
    :try_start_0
    invoke-static {}, Ltv/alphonso/service/client/ASAPI;->cleanup()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 751
    :goto_0
    return-void

    .line 746
    :catch_0
    move-exception v0

    .line 748
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

    .line 749
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private getIdentificationsReceiver()Landroid/os/ResultReceiver;
    .locals 2

    .prologue
    .line 819
    iget-object v0, p0, Lcom/augmentedreality/gp/baseball/Baseball;->mIdentificationReceiver:Landroid/os/ResultReceiver;

    if-nez v0, :cond_0

    .line 821
    new-instance v0, Lcom/augmentedreality/gp/baseball/Baseball$7;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/augmentedreality/gp/baseball/Baseball$7;-><init>(Lcom/augmentedreality/gp/baseball/Baseball;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/augmentedreality/gp/baseball/Baseball;->mIdentificationReceiver:Landroid/os/ResultReceiver;

    .line 907
    :cond_0
    iget-object v0, p0, Lcom/augmentedreality/gp/baseball/Baseball;->mIdentificationReceiver:Landroid/os/ResultReceiver;

    return-object v0
.end method

.method private getResultReceiver()Landroid/os/ResultReceiver;
    .locals 2

    .prologue
    .line 772
    iget-object v0, p0, Lcom/augmentedreality/gp/baseball/Baseball;->mStatusReceiver:Landroid/os/ResultReceiver;

    if-nez v0, :cond_0

    .line 774
    new-instance v0, Lcom/augmentedreality/gp/baseball/Baseball$6;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/augmentedreality/gp/baseball/Baseball$6;-><init>(Lcom/augmentedreality/gp/baseball/Baseball;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/augmentedreality/gp/baseball/Baseball;->mStatusReceiver:Landroid/os/ResultReceiver;

    .line 814
    :cond_0
    iget-object v0, p0, Lcom/augmentedreality/gp/baseball/Baseball;->mStatusReceiver:Landroid/os/ResultReceiver;

    return-object v0
.end method

.method public static hideBanner(ZLandroid/app/Activity;)V
    .locals 2
    .param p0, "top"    # Z
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 604
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 605
    .local v0, "message":Landroid/os/Message;
    const/16 v1, 0xb

    iput v1, v0, Landroid/os/Message;->what:I

    .line 606
    sget-object v1, Lcom/augmentedreality/gp/baseball/Baseball;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 607
    return-void
.end method

.method public static initialize(Landroid/app/Activity;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 677
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 678
    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 679
    sget-object v1, Lcom/augmentedreality/gp/baseball/Baseball;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 680
    return-void
.end method

.method private loadInterstitialAd()V
    .locals 2

    .prologue
    .line 537
    iget-object v0, p0, Lcom/augmentedreality/gp/baseball/Baseball;->interstitial:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/InterstitialAd;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/augmentedreality/gp/baseball/Baseball;->interstitial:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/InterstitialAd;->isLoaded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 538
    :cond_0
    invoke-virtual {p0}, Lcom/augmentedreality/gp/baseball/Baseball;->isNetworkAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 539
    iget-object v0, p0, Lcom/augmentedreality/gp/baseball/Baseball;->interstitial:Lcom/google/android/gms/ads/InterstitialAd;

    new-instance v1, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/InterstitialAd;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    .line 542
    :cond_1
    return-void
.end method

.method private loadRewardedVideoAd()V
    .locals 4

    .prologue
    .line 545
    iget-object v2, p0, Lcom/augmentedreality/gp/baseball/Baseball;->mRewardedVideoAd:Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    invoke-interface {v2}, Lcom/google/android/gms/ads/reward/RewardedVideoAd;->isLoaded()Z

    move-result v2

    if-nez v2, :cond_0

    .line 546
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 547
    .local v1, "extras":Landroid/os/Bundle;
    const-string v2, "_noRefresh"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 548
    new-instance v2, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v2}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    const-class v3, Lcom/google/ads/mediation/admob/AdMobAdapter;

    .line 549
    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/ads/AdRequest$Builder;->addNetworkExtrasBundle(Ljava/lang/Class;Landroid/os/Bundle;)Lcom/google/android/gms/ads/AdRequest$Builder;

    move-result-object v2

    .line 550
    invoke-virtual {v2}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v0

    .line 551
    .local v0, "adRequest":Lcom/google/android/gms/ads/AdRequest;
    iget-object v2, p0, Lcom/augmentedreality/gp/baseball/Baseball;->mRewardedVideoAd:Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    const v3, 0x7f070093

    invoke-virtual {p0, v3}, Lcom/augmentedreality/gp/baseball/Baseball;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Lcom/google/android/gms/ads/reward/RewardedVideoAd;->loadAd(Ljava/lang/String;Lcom/google/android/gms/ads/AdRequest;)V

    .line 553
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
    .line 683
    invoke-static {}, Lcom/augmentedreality/gp/baseball/Baseball;->checkPermission_RecordAudio()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 684
    if-nez p0, :cond_1

    .line 685
    sget-object v1, Lcom/augmentedreality/gp/baseball/Baseball;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "optout_Click"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 686
    sget-object v1, Lcom/augmentedreality/gp/baseball/Baseball;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 687
    sget-boolean v1, Lcom/augmentedreality/gp/baseball/Baseball;->alphonsServiceInitialized:Z

    if-eqz v1, :cond_0

    .line 689
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 690
    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    .line 691
    sget-object v1, Lcom/augmentedreality/gp/baseball/Baseball;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 693
    .end local v0    # "message":Landroid/os/Message;
    :cond_0
    const-string v1, "ExternalInterfaceHandler"

    const-string v2, "SetMicStatus"

    const-string v3, "false"

    invoke-static {v1, v2, v3}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    :goto_0
    return-void

    .line 695
    :cond_1
    sget-object v1, Lcom/augmentedreality/gp/baseball/Baseball;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "optout_Click"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 696
    sget-object v1, Lcom/augmentedreality/gp/baseball/Baseball;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 698
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 699
    .restart local v0    # "message":Landroid/os/Message;
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 700
    sget-object v1, Lcom/augmentedreality/gp/baseball/Baseball;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 703
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

    sput-object v1, Lcom/augmentedreality/gp/baseball/Baseball;->toastmessage:Ljava/lang/String;

    .line 704
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 705
    .restart local v0    # "message":Landroid/os/Message;
    const/4 v1, 0x5

    iput v1, v0, Landroid/os/Message;->what:I

    .line 706
    sget-object v1, Lcom/augmentedreality/gp/baseball/Baseball;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.method private static purchaseFailure()V
    .locals 3

    .prologue
    .line 1216
    const-string v0, "ExternalInterfaceHandler"

    const-string v1, "Receiver"

    const-string v2, "false"

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1217
    return-void
.end method

.method public static purchaseItem(Ljava/lang/String;Landroid/app/Activity;)V
    .locals 6
    .param p0, "itemId"    # Ljava/lang/String;
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 562
    sget-boolean v0, Lcom/augmentedreality/gp/baseball/Baseball;->RemovedAds:Z

    if-eqz v0, :cond_0

    const-string v0, "com.baseball.removeads"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 563
    const/4 v0, 0x1

    invoke-static {v0, p1}, Lcom/augmentedreality/gp/baseball/Baseball;->hideBanner(ZLandroid/app/Activity;)V

    .line 564
    const-string v0, "ExternalInterfaceHandler"

    const-string v1, "Receiver"

    const-string v2, "true"

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    const-string v0, "You\'ve already purchased this item"

    invoke-static {v0, p1}, Lcom/augmentedreality/gp/baseball/Baseball;->showToastMsg(Ljava/lang/String;Landroid/app/Activity;)V

    .line 569
    :goto_0
    return-void

    .line 567
    :cond_0
    sget-object v0, Lcom/augmentedreality/gp/baseball/Baseball;->billingHelper:Lcom/dumadu/iab/util/IabHelper;

    const/16 v3, 0x4e21

    sget-object v4, Lcom/augmentedreality/gp/baseball/Baseball;->purchaseFinishedListener:Lcom/dumadu/iab/util/IabHelper$OnIabPurchaseFinishedListener;

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p0

    invoke-virtual/range {v0 .. v5}, Lcom/dumadu/iab/util/IabHelper;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/dumadu/iab/util/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static purchaseSuccess()V
    .locals 3

    .prologue
    .line 1212
    const-string v0, "ExternalInterfaceHandler"

    const-string v1, "Receiver"

    const-string v2, "true"

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1213
    return-void
.end method

.method public static showAchievements(Landroid/app/Activity;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 628
    sget-object v1, Lcom/augmentedreality/gp/baseball/Baseball;->gamesClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v1, :cond_0

    .line 629
    sget-object v1, Lcom/google/android/gms/games/Games;->Achievements:Lcom/google/android/gms/games/achievement/Achievements;

    sget-object v2, Lcom/augmentedreality/gp/baseball/Baseball;->gamesClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v1, v2}, Lcom/google/android/gms/games/achievement/Achievements;->getAchievementsIntent(Lcom/google/android/gms/common/api/GoogleApiClient;)Landroid/content/Intent;

    move-result-object v1

    const/16 v2, 0x1389

    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 635
    :goto_0
    return-void

    .line 631
    :cond_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 632
    .local v0, "message":Landroid/os/Message;
    const/16 v1, 0x8

    iput v1, v0, Landroid/os/Message;->what:I

    .line 633
    sget-object v1, Lcom/augmentedreality/gp/baseball/Baseball;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public static showBanner(ZLandroid/app/Activity;)V
    .locals 2
    .param p0, "top"    # Z
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 585
    sget-boolean v1, Lcom/augmentedreality/gp/baseball/Baseball;->RemovedAds:Z

    if-nez v1, :cond_1

    .line 586
    if-eqz p0, :cond_0

    .line 587
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 588
    .local v0, "message":Landroid/os/Message;
    const/16 v1, 0x9

    iput v1, v0, Landroid/os/Message;->what:I

    .line 589
    sget-object v1, Lcom/augmentedreality/gp/baseball/Baseball;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 601
    :goto_0
    return-void

    .line 591
    .end local v0    # "message":Landroid/os/Message;
    :cond_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 592
    .restart local v0    # "message":Landroid/os/Message;
    const/16 v1, 0xa

    iput v1, v0, Landroid/os/Message;->what:I

    .line 593
    sget-object v1, Lcom/augmentedreality/gp/baseball/Baseball;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 596
    .end local v0    # "message":Landroid/os/Message;
    :cond_1
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 597
    .restart local v0    # "message":Landroid/os/Message;
    const/16 v1, 0xb

    iput v1, v0, Landroid/os/Message;->what:I

    .line 598
    sget-object v1, Lcom/augmentedreality/gp/baseball/Baseball;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public static showExitPopUp(Landroid/app/Activity;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 671
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 672
    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x7

    iput v1, v0, Landroid/os/Message;->what:I

    .line 673
    sget-object v1, Lcom/augmentedreality/gp/baseball/Baseball;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 674
    return-void
.end method

.method public static showIntrestitial(ILandroid/app/Activity;)V
    .locals 2
    .param p0, "label"    # I
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 579
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 580
    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x6

    iput v1, v0, Landroid/os/Message;->what:I

    .line 581
    sget-object v1, Lcom/augmentedreality/gp/baseball/Baseball;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 582
    return-void
.end method

.method public static showLeaderBoards(Landroid/app/Activity;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 650
    sget-object v1, Lcom/augmentedreality/gp/baseball/Baseball;->gamesClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v1, :cond_0

    .line 652
    sget-object v1, Lcom/google/android/gms/games/Games;->Leaderboards:Lcom/google/android/gms/games/leaderboard/Leaderboards;

    sget-object v2, Lcom/augmentedreality/gp/baseball/Baseball;->gamesClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v1, v2}, Lcom/google/android/gms/games/leaderboard/Leaderboards;->getAllLeaderboardsIntent(Lcom/google/android/gms/common/api/GoogleApiClient;)Landroid/content/Intent;

    move-result-object v1

    const/16 v2, 0x1389

    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 658
    :goto_0
    return-void

    .line 654
    :cond_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 655
    .local v0, "message":Landroid/os/Message;
    const/16 v1, 0x8

    iput v1, v0, Landroid/os/Message;->what:I

    .line 656
    sget-object v1, Lcom/augmentedreality/gp/baseball/Baseball;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public static showToastMsg(Ljava/lang/String;Landroid/app/Activity;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 572
    sput-object p0, Lcom/augmentedreality/gp/baseball/Baseball;->toastmessage:Ljava/lang/String;

    .line 573
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 574
    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x5

    iput v1, v0, Landroid/os/Message;->what:I

    .line 575
    sget-object v1, Lcom/augmentedreality/gp/baseball/Baseball;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 576
    return-void
.end method

.method public static showVideoAd(Landroid/app/Activity;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 610
    const-string v1, "Rewarded_Total RewardedVideo requests from game_Total RewardedVideo requests from game"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/augmentedreality/gp/baseball/Baseball;->analyticsEvent(Ljava/lang/String;Landroid/app/Activity;)V

    .line 611
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 612
    .local v0, "message":Landroid/os/Message;
    const/16 v1, 0xc

    iput v1, v0, Landroid/os/Message;->what:I

    .line 613
    sget-object v1, Lcom/augmentedreality/gp/baseball/Baseball;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 614
    return-void
.end method

.method private startAlphonsoService()V
    .locals 2

    .prologue
    .line 732
    :try_start_0
    invoke-direct {p0}, Lcom/augmentedreality/gp/baseball/Baseball;->getIdentificationsReceiver()Landroid/os/ResultReceiver;

    move-result-object v1

    invoke-static {v1}, Ltv/alphonso/service/client/ASAPI;->start(Landroid/os/ResultReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 738
    :goto_0
    return-void

    .line 734
    :catch_0
    move-exception v0

    .line 736
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private stopAlphonsoService()V
    .locals 3

    .prologue
    .line 759
    :try_start_0
    const-string v1, "callback"

    const-string v2, "Alphonso service stopped"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    invoke-static {}, Ltv/alphonso/service/client/ASAPI;->stop()V

    .line 763
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/augmentedreality/gp/baseball/Baseball;->setOptoutOption(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 768
    :goto_0
    return-void

    .line 765
    :catch_0
    move-exception v0

    .line 766
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

    .line 638
    sget-object v2, Lcom/augmentedreality/gp/baseball/Baseball;->gamesClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v2, :cond_0

    .line 639
    sget-object v2, Lcom/google/android/gms/games/Games;->Leaderboards:Lcom/google/android/gms/games/leaderboard/Leaderboards;

    sget-object v3, Lcom/augmentedreality/gp/baseball/Baseball;->gamesClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    int-to-long v4, p1

    invoke-interface {v2, v3, p0, v4, v5}, Lcom/google/android/gms/games/leaderboard/Leaderboards;->submitScore(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;J)V

    .line 647
    :goto_0
    return-void

    .line 642
    :cond_0
    const-string v2, "GameServices"

    invoke-virtual {p2, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 643
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 644
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v1, p0, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-interface {v0, p0, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 645
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public static unlockAchievement(Ljava/lang/String;Landroid/app/Activity;)V
    .locals 4
    .param p0, "achId"    # Ljava/lang/String;
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 617
    sget-object v2, Lcom/augmentedreality/gp/baseball/Baseball;->gamesClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v2, :cond_0

    .line 618
    sget-object v2, Lcom/google/android/gms/games/Games;->Achievements:Lcom/google/android/gms/games/achievement/Achievements;

    sget-object v3, Lcom/augmentedreality/gp/baseball/Baseball;->gamesClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v2, v3, p0}, Lcom/google/android/gms/games/achievement/Achievements;->unlock(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V

    .line 625
    :goto_0
    return-void

    .line 620
    :cond_0
    const-string v2, "GameServices"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 621
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 622
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const/4 v2, 0x1

    invoke-interface {v0, p0, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 623
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method private updateGameServices(Landroid/content/SharedPreferences;)V
    .locals 8
    .param p1, "preferences"    # Landroid/content/SharedPreferences;

    .prologue
    const v7, 0x7f070077

    const v6, 0x7f070076

    const v5, 0x7f070075

    const v4, 0x7f070074

    const/4 v3, 0x0

    .line 1102
    const v0, 0x7f070090

    invoke-virtual {p0, v0}, Lcom/augmentedreality/gp/baseball/Baseball;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1103
    sget-object v0, Lcom/google/android/gms/games/Games;->Achievements:Lcom/google/android/gms/games/achievement/Achievements;

    sget-object v1, Lcom/augmentedreality/gp/baseball/Baseball;->gamesClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    const v2, 0x7f070090

    invoke-virtual {p0, v2}, Lcom/augmentedreality/gp/baseball/Baseball;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/games/achievement/Achievements;->unlock(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V

    .line 1104
    :cond_0
    const v0, 0x7f07007b

    invoke-virtual {p0, v0}, Lcom/augmentedreality/gp/baseball/Baseball;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1105
    sget-object v0, Lcom/google/android/gms/games/Games;->Achievements:Lcom/google/android/gms/games/achievement/Achievements;

    sget-object v1, Lcom/augmentedreality/gp/baseball/Baseball;->gamesClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    const v2, 0x7f07007b

    invoke-virtual {p0, v2}, Lcom/augmentedreality/gp/baseball/Baseball;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/games/achievement/Achievements;->unlock(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V

    .line 1106
    :cond_1
    const v0, 0x7f07008f

    invoke-virtual {p0, v0}, Lcom/augmentedreality/gp/baseball/Baseball;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1107
    sget-object v0, Lcom/google/android/gms/games/Games;->Achievements:Lcom/google/android/gms/games/achievement/Achievements;

    sget-object v1, Lcom/augmentedreality/gp/baseball/Baseball;->gamesClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    const v2, 0x7f07008f

    invoke-virtual {p0, v2}, Lcom/augmentedreality/gp/baseball/Baseball;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/games/achievement/Achievements;->unlock(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V

    .line 1108
    :cond_2
    const v0, 0x7f070081

    invoke-virtual {p0, v0}, Lcom/augmentedreality/gp/baseball/Baseball;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1109
    sget-object v0, Lcom/google/android/gms/games/Games;->Achievements:Lcom/google/android/gms/games/achievement/Achievements;

    sget-object v1, Lcom/augmentedreality/gp/baseball/Baseball;->gamesClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    const v2, 0x7f070081

    invoke-virtual {p0, v2}, Lcom/augmentedreality/gp/baseball/Baseball;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/games/achievement/Achievements;->unlock(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V

    .line 1110
    :cond_3
    invoke-virtual {p0, v4}, Lcom/augmentedreality/gp/baseball/Baseball;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1111
    sget-object v0, Lcom/google/android/gms/games/Games;->Achievements:Lcom/google/android/gms/games/achievement/Achievements;

    sget-object v1, Lcom/augmentedreality/gp/baseball/Baseball;->gamesClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {p0, v4}, Lcom/augmentedreality/gp/baseball/Baseball;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/games/achievement/Achievements;->unlock(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V

    .line 1112
    :cond_4
    invoke-virtual {p0, v6}, Lcom/augmentedreality/gp/baseball/Baseball;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1113
    sget-object v0, Lcom/google/android/gms/games/Games;->Achievements:Lcom/google/android/gms/games/achievement/Achievements;

    sget-object v1, Lcom/augmentedreality/gp/baseball/Baseball;->gamesClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {p0, v6}, Lcom/augmentedreality/gp/baseball/Baseball;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/games/achievement/Achievements;->unlock(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V

    .line 1114
    :cond_5
    invoke-virtual {p0, v7}, Lcom/augmentedreality/gp/baseball/Baseball;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1115
    sget-object v0, Lcom/google/android/gms/games/Games;->Achievements:Lcom/google/android/gms/games/achievement/Achievements;

    sget-object v1, Lcom/augmentedreality/gp/baseball/Baseball;->gamesClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {p0, v7}, Lcom/augmentedreality/gp/baseball/Baseball;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/games/achievement/Achievements;->unlock(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V

    .line 1116
    :cond_6
    const v0, 0x7f070091

    invoke-virtual {p0, v0}, Lcom/augmentedreality/gp/baseball/Baseball;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1117
    sget-object v0, Lcom/google/android/gms/games/Games;->Achievements:Lcom/google/android/gms/games/achievement/Achievements;

    sget-object v1, Lcom/augmentedreality/gp/baseball/Baseball;->gamesClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    const v2, 0x7f070091

    invoke-virtual {p0, v2}, Lcom/augmentedreality/gp/baseball/Baseball;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/games/achievement/Achievements;->unlock(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V

    .line 1118
    :cond_7
    const v0, 0x7f07007c

    invoke-virtual {p0, v0}, Lcom/augmentedreality/gp/baseball/Baseball;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1119
    sget-object v0, Lcom/google/android/gms/games/Games;->Achievements:Lcom/google/android/gms/games/achievement/Achievements;

    sget-object v1, Lcom/augmentedreality/gp/baseball/Baseball;->gamesClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    const v2, 0x7f07007c

    invoke-virtual {p0, v2}, Lcom/augmentedreality/gp/baseball/Baseball;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/games/achievement/Achievements;->unlock(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V

    .line 1120
    :cond_8
    invoke-virtual {p0, v5}, Lcom/augmentedreality/gp/baseball/Baseball;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1121
    sget-object v0, Lcom/google/android/gms/games/Games;->Achievements:Lcom/google/android/gms/games/achievement/Achievements;

    sget-object v1, Lcom/augmentedreality/gp/baseball/Baseball;->gamesClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {p0, v5}, Lcom/augmentedreality/gp/baseball/Baseball;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/games/achievement/Achievements;->unlock(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V

    .line 1122
    :cond_9
    const v0, 0x7f070080

    invoke-virtual {p0, v0}, Lcom/augmentedreality/gp/baseball/Baseball;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1123
    sget-object v0, Lcom/google/android/gms/games/Games;->Achievements:Lcom/google/android/gms/games/achievement/Achievements;

    sget-object v1, Lcom/augmentedreality/gp/baseball/Baseball;->gamesClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    const v2, 0x7f070080

    invoke-virtual {p0, v2}, Lcom/augmentedreality/gp/baseball/Baseball;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/games/achievement/Achievements;->unlock(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V

    .line 1124
    :cond_a
    const v0, 0x7f070085

    invoke-virtual {p0, v0}, Lcom/augmentedreality/gp/baseball/Baseball;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1125
    sget-object v0, Lcom/google/android/gms/games/Games;->Achievements:Lcom/google/android/gms/games/achievement/Achievements;

    sget-object v1, Lcom/augmentedreality/gp/baseball/Baseball;->gamesClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    const v2, 0x7f070085

    invoke-virtual {p0, v2}, Lcom/augmentedreality/gp/baseball/Baseball;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/games/achievement/Achievements;->unlock(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V

    .line 1126
    :cond_b
    const v0, 0x7f070089

    invoke-virtual {p0, v0}, Lcom/augmentedreality/gp/baseball/Baseball;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1127
    sget-object v0, Lcom/google/android/gms/games/Games;->Achievements:Lcom/google/android/gms/games/achievement/Achievements;

    sget-object v1, Lcom/augmentedreality/gp/baseball/Baseball;->gamesClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    const v2, 0x7f070089

    invoke-virtual {p0, v2}, Lcom/augmentedreality/gp/baseball/Baseball;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/games/achievement/Achievements;->unlock(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V

    .line 1128
    :cond_c
    const v0, 0x7f070083

    invoke-virtual {p0, v0}, Lcom/augmentedreality/gp/baseball/Baseball;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1129
    sget-object v0, Lcom/google/android/gms/games/Games;->Achievements:Lcom/google/android/gms/games/achievement/Achievements;

    sget-object v1, Lcom/augmentedreality/gp/baseball/Baseball;->gamesClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    const v2, 0x7f070083

    invoke-virtual {p0, v2}, Lcom/augmentedreality/gp/baseball/Baseball;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/games/achievement/Achievements;->unlock(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V

    .line 1130
    :cond_d
    const v0, 0x7f070087

    invoke-virtual {p0, v0}, Lcom/augmentedreality/gp/baseball/Baseball;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1131
    sget-object v0, Lcom/google/android/gms/games/Games;->Achievements:Lcom/google/android/gms/games/achievement/Achievements;

    sget-object v1, Lcom/augmentedreality/gp/baseball/Baseball;->gamesClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    const v2, 0x7f070087

    invoke-virtual {p0, v2}, Lcom/augmentedreality/gp/baseball/Baseball;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/games/achievement/Achievements;->unlock(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V

    .line 1132
    :cond_e
    const v0, 0x7f070088

    invoke-virtual {p0, v0}, Lcom/augmentedreality/gp/baseball/Baseball;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1133
    sget-object v0, Lcom/google/android/gms/games/Games;->Achievements:Lcom/google/android/gms/games/achievement/Achievements;

    sget-object v1, Lcom/augmentedreality/gp/baseball/Baseball;->gamesClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    const v2, 0x7f070088

    invoke-virtual {p0, v2}, Lcom/augmentedreality/gp/baseball/Baseball;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/games/achievement/Achievements;->unlock(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V

    .line 1134
    :cond_f
    const v0, 0x7f07008a

    invoke-virtual {p0, v0}, Lcom/augmentedreality/gp/baseball/Baseball;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1135
    sget-object v0, Lcom/google/android/gms/games/Games;->Achievements:Lcom/google/android/gms/games/achievement/Achievements;

    sget-object v1, Lcom/augmentedreality/gp/baseball/Baseball;->gamesClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    const v2, 0x7f07008a

    invoke-virtual {p0, v2}, Lcom/augmentedreality/gp/baseball/Baseball;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/games/achievement/Achievements;->unlock(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V

    .line 1136
    :cond_10
    const v0, 0x7f07008b

    invoke-virtual {p0, v0}, Lcom/augmentedreality/gp/baseball/Baseball;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1137
    sget-object v0, Lcom/google/android/gms/games/Games;->Achievements:Lcom/google/android/gms/games/achievement/Achievements;

    sget-object v1, Lcom/augmentedreality/gp/baseball/Baseball;->gamesClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    const v2, 0x7f07008b

    invoke-virtual {p0, v2}, Lcom/augmentedreality/gp/baseball/Baseball;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/games/achievement/Achievements;->unlock(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V

    .line 1138
    :cond_11
    const v0, 0x7f070082

    invoke-virtual {p0, v0}, Lcom/augmentedreality/gp/baseball/Baseball;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1139
    sget-object v0, Lcom/google/android/gms/games/Games;->Achievements:Lcom/google/android/gms/games/achievement/Achievements;

    sget-object v1, Lcom/augmentedreality/gp/baseball/Baseball;->gamesClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    const v2, 0x7f070082

    invoke-virtual {p0, v2}, Lcom/augmentedreality/gp/baseball/Baseball;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/games/achievement/Achievements;->unlock(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V

    .line 1140
    :cond_12
    const v0, 0x7f070084

    invoke-virtual {p0, v0}, Lcom/augmentedreality/gp/baseball/Baseball;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1141
    sget-object v0, Lcom/google/android/gms/games/Games;->Achievements:Lcom/google/android/gms/games/achievement/Achievements;

    sget-object v1, Lcom/augmentedreality/gp/baseball/Baseball;->gamesClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    const v2, 0x7f070084

    invoke-virtual {p0, v2}, Lcom/augmentedreality/gp/baseball/Baseball;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/games/achievement/Achievements;->unlock(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V

    .line 1142
    :cond_13
    const v0, 0x7f070086

    invoke-virtual {p0, v0}, Lcom/augmentedreality/gp/baseball/Baseball;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1143
    sget-object v0, Lcom/google/android/gms/games/Games;->Achievements:Lcom/google/android/gms/games/achievement/Achievements;

    sget-object v1, Lcom/augmentedreality/gp/baseball/Baseball;->gamesClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    const v2, 0x7f070086

    invoke-virtual {p0, v2}, Lcom/augmentedreality/gp/baseball/Baseball;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/games/achievement/Achievements;->unlock(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V

    .line 1144
    :cond_14
    const v0, 0x7f070078

    invoke-virtual {p0, v0}, Lcom/augmentedreality/gp/baseball/Baseball;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1145
    sget-object v0, Lcom/google/android/gms/games/Games;->Achievements:Lcom/google/android/gms/games/achievement/Achievements;

    sget-object v1, Lcom/augmentedreality/gp/baseball/Baseball;->gamesClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    const v2, 0x7f070078

    invoke-virtual {p0, v2}, Lcom/augmentedreality/gp/baseball/Baseball;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/games/achievement/Achievements;->unlock(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V

    .line 1146
    :cond_15
    const v0, 0x7f070079

    invoke-virtual {p0, v0}, Lcom/augmentedreality/gp/baseball/Baseball;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1147
    sget-object v0, Lcom/google/android/gms/games/Games;->Achievements:Lcom/google/android/gms/games/achievement/Achievements;

    sget-object v1, Lcom/augmentedreality/gp/baseball/Baseball;->gamesClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    const v2, 0x7f070079

    invoke-virtual {p0, v2}, Lcom/augmentedreality/gp/baseball/Baseball;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/games/achievement/Achievements;->unlock(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V

    .line 1148
    :cond_16
    const v0, 0x7f07008e

    invoke-virtual {p0, v0}, Lcom/augmentedreality/gp/baseball/Baseball;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1149
    sget-object v0, Lcom/google/android/gms/games/Games;->Achievements:Lcom/google/android/gms/games/achievement/Achievements;

    sget-object v1, Lcom/augmentedreality/gp/baseball/Baseball;->gamesClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    const v2, 0x7f07008e

    invoke-virtual {p0, v2}, Lcom/augmentedreality/gp/baseball/Baseball;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/games/achievement/Achievements;->unlock(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V

    .line 1150
    :cond_17
    const v0, 0x7f07007d

    invoke-virtual {p0, v0}, Lcom/augmentedreality/gp/baseball/Baseball;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1151
    sget-object v0, Lcom/google/android/gms/games/Games;->Achievements:Lcom/google/android/gms/games/achievement/Achievements;

    sget-object v1, Lcom/augmentedreality/gp/baseball/Baseball;->gamesClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    const v2, 0x7f07007d

    invoke-virtual {p0, v2}, Lcom/augmentedreality/gp/baseball/Baseball;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/games/achievement/Achievements;->unlock(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V

    .line 1152
    :cond_18
    const v0, 0x7f07007e

    invoke-virtual {p0, v0}, Lcom/augmentedreality/gp/baseball/Baseball;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1153
    sget-object v0, Lcom/google/android/gms/games/Games;->Achievements:Lcom/google/android/gms/games/achievement/Achievements;

    sget-object v1, Lcom/augmentedreality/gp/baseball/Baseball;->gamesClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    const v2, 0x7f07007e

    invoke-virtual {p0, v2}, Lcom/augmentedreality/gp/baseball/Baseball;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/games/achievement/Achievements;->unlock(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V

    .line 1154
    :cond_19
    const v0, 0x7f07007f

    invoke-virtual {p0, v0}, Lcom/augmentedreality/gp/baseball/Baseball;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1155
    sget-object v0, Lcom/google/android/gms/games/Games;->Achievements:Lcom/google/android/gms/games/achievement/Achievements;

    sget-object v1, Lcom/augmentedreality/gp/baseball/Baseball;->gamesClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    const v2, 0x7f07007f

    invoke-virtual {p0, v2}, Lcom/augmentedreality/gp/baseball/Baseball;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/games/achievement/Achievements;->unlock(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V

    .line 1156
    :cond_1a
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 479
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 480
    iget-object v0, p0, Lcom/augmentedreality/gp/baseball/Baseball;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0, p1}, Lcom/unity3d/player/UnityPlayer;->injectEvent(Landroid/view/InputEvent;)Z

    move-result v0

    .line 481
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
    .line 556
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Lcom/augmentedreality/gp/baseball/Baseball;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 557
    .local v1, "connectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 558
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
    .line 510
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 512
    .local v1, "alertDialogBuilder":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f07009a

    invoke-virtual {p0, v2}, Lcom/augmentedreality/gp/baseball/Baseball;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 513
    const-string v2, "Do you want to exit?"

    .line 514
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x0

    .line 515
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "Yes"

    new-instance v4, Lcom/augmentedreality/gp/baseball/Baseball$5;

    invoke-direct {v4, p0}, Lcom/augmentedreality/gp/baseball/Baseball$5;-><init>(Lcom/augmentedreality/gp/baseball/Baseball;)V

    .line 516
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "No"

    new-instance v4, Lcom/augmentedreality/gp/baseball/Baseball$4;

    invoke-direct {v4, p0}, Lcom/augmentedreality/gp/baseball/Baseball$4;-><init>(Lcom/augmentedreality/gp/baseball/Baseball;)V

    .line 521
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 531
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 533
    .local v0, "alertDialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 534
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "request"    # I
    .param p2, "response"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 447
    sget-object v0, Lcom/augmentedreality/gp/baseball/Baseball;->billingHelper:Lcom/dumadu/iab/util/IabHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/dumadu/iab/util/IabHelper;->handleActivityResult(IILandroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 448
    invoke-super {p0, p1, p2, p3}, Lcom/dumadu/google/playgames/BaseGameActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 450
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 455
    invoke-super {p0, p1}, Lcom/dumadu/google/playgames/BaseGameActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 456
    iget-object v0, p0, Lcom/augmentedreality/gp/baseball/Baseball;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0, p1}, Lcom/unity3d/player/UnityPlayer;->configurationChanged(Landroid/content/res/Configuration;)V

    .line 457
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 136
    invoke-virtual {p0, v3}, Lcom/augmentedreality/gp/baseball/Baseball;->requestWindowFeature(I)Z

    .line 137
    invoke-super {p0, p1}, Lcom/dumadu/google/playgames/BaseGameActivity;->onCreate(Landroid/os/Bundle;)V

    .line 138
    const v1, 0x7f04003f

    invoke-virtual {p0, v1}, Lcom/augmentedreality/gp/baseball/Baseball;->setContentView(I)V

    .line 139
    const v1, 0x7f0d0101

    invoke-virtual {p0, v1}, Lcom/augmentedreality/gp/baseball/Baseball;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/augmentedreality/gp/baseball/Baseball;->layout:Landroid/widget/FrameLayout;

    .line 141
    invoke-virtual {p0}, Lcom/augmentedreality/gp/baseball/Baseball;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/Window;->takeSurface(Landroid/view/SurfaceHolder$Callback2;)V

    .line 142
    invoke-virtual {p0}, Lcom/augmentedreality/gp/baseball/Baseball;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/Window;->setFormat(I)V

    .line 144
    new-instance v1, Lcom/unity3d/player/UnityPlayer;

    invoke-direct {v1, p0}, Lcom/unity3d/player/UnityPlayer;-><init>(Landroid/content/ContextWrapper;)V

    iput-object v1, p0, Lcom/augmentedreality/gp/baseball/Baseball;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    .line 146
    iget-object v1, p0, Lcom/augmentedreality/gp/baseball/Baseball;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v1}, Lcom/unity3d/player/UnityPlayer;->requestFocus()Z

    .line 147
    iget-object v1, p0, Lcom/augmentedreality/gp/baseball/Baseball;->layout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/augmentedreality/gp/baseball/Baseball;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v2}, Lcom/unity3d/player/UnityPlayer;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 149
    invoke-virtual {p0}, Lcom/augmentedreality/gp/baseball/Baseball;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/augmentedreality/gp/baseball/Baseball;->mDecorView:Landroid/view/View;

    .line 152
    invoke-static {p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v1

    sput-object v1, Lcom/augmentedreality/gp/baseball/Baseball;->analytics:Lcom/google/android/gms/analytics/GoogleAnalytics;

    .line 153
    sget-object v1, Lcom/augmentedreality/gp/baseball/Baseball;->analytics:Lcom/google/android/gms/analytics/GoogleAnalytics;

    const v2, 0x7f07009f

    invoke-virtual {p0, v2}, Lcom/augmentedreality/gp/baseball/Baseball;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/GoogleAnalytics;->newTracker(Ljava/lang/String;)Lcom/google/android/gms/analytics/Tracker;

    move-result-object v1

    sput-object v1, Lcom/augmentedreality/gp/baseball/Baseball;->tracker:Lcom/google/android/gms/analytics/Tracker;

    .line 154
    sget-object v1, Lcom/augmentedreality/gp/baseball/Baseball;->tracker:Lcom/google/android/gms/analytics/Tracker;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/analytics/Tracker;->enableAutoActivityTracking(Z)V

    .line 155
    sget-object v1, Lcom/augmentedreality/gp/baseball/Baseball;->tracker:Lcom/google/android/gms/analytics/Tracker;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/analytics/Tracker;->enableAdvertisingIdCollection(Z)V

    .line 158
    new-instance v1, Lcom/google/android/gms/ads/InterstitialAd;

    invoke-direct {v1, p0}, Lcom/google/android/gms/ads/InterstitialAd;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/augmentedreality/gp/baseball/Baseball;->interstitial:Lcom/google/android/gms/ads/InterstitialAd;

    .line 159
    iget-object v1, p0, Lcom/augmentedreality/gp/baseball/Baseball;->interstitial:Lcom/google/android/gms/ads/InterstitialAd;

    const v2, 0x7f070092

    invoke-virtual {p0, v2}, Lcom/augmentedreality/gp/baseball/Baseball;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/InterstitialAd;->setAdUnitId(Ljava/lang/String;)V

    .line 160
    iget-object v1, p0, Lcom/augmentedreality/gp/baseball/Baseball;->interstitial:Lcom/google/android/gms/ads/InterstitialAd;

    new-instance v2, Lcom/augmentedreality/gp/baseball/Baseball$1;

    invoke-direct {v2, p0}, Lcom/augmentedreality/gp/baseball/Baseball$1;-><init>(Lcom/augmentedreality/gp/baseball/Baseball;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/InterstitialAd;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 196
    invoke-static {p0}, Lcom/google/android/gms/ads/MobileAds;->getRewardedVideoAdInstance(Landroid/content/Context;)Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    move-result-object v1

    iput-object v1, p0, Lcom/augmentedreality/gp/baseball/Baseball;->mRewardedVideoAd:Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    .line 197
    iget-object v1, p0, Lcom/augmentedreality/gp/baseball/Baseball;->mRewardedVideoAd:Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    invoke-interface {v1, p0}, Lcom/google/android/gms/ads/reward/RewardedVideoAd;->setRewardedVideoAdListener(Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;)V

    .line 198
    invoke-direct {p0}, Lcom/augmentedreality/gp/baseball/Baseball;->loadRewardedVideoAd()V

    .line 200
    sput-object p0, Lcom/augmentedreality/gp/baseball/Baseball;->activity:Landroid/app/Activity;

    .line 201
    const-string v1, "AlphonsoMicStatus"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/augmentedreality/gp/baseball/Baseball;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/augmentedreality/gp/baseball/Baseball;->sharedpreferences:Landroid/content/SharedPreferences;

    .line 202
    iget-object v1, p0, Lcom/augmentedreality/gp/baseball/Baseball;->sharedpreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sput-object v1, Lcom/augmentedreality/gp/baseball/Baseball;->editor:Landroid/content/SharedPreferences$Editor;

    .line 204
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 205
    .local v0, "moreSkus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "com.baseball.removeads"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    const-string v1, "com.baseball.coins1000"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    const-string v1, "com.baseball.coins3450"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    const-string v1, "com.baseball.coins6500"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    const-string v1, "com.baseball.coins15000"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    const-string v1, "com.baseball.tickets40"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    const-string v1, "com.baseball.tickets130"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    const-string v1, "com.baseball.tickets250"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    const-string v1, "com.baseball.tickets550"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    new-instance v1, Lcom/dumadu/iab/util/IabHelper;

    const-string v2, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAlzf4QW/QcvmQsEJmFo1qOjE28jXyAIyPXcvqnRV/qOEwPu5wF+lyh4xju1/GhyOQHWGgqQ+c8+E2yyPjdYZrSt3NnXbgo+qf6mV4HeQ9oP+JApNhjsZa7bgDGKoqilCFGzl2nQujvCgUC1zcOhWuUNIqnZ6lihMuqrh/VCe1ZnYZwEiCHTQtcXTCBX02BSh6vGyen3ukmjyurO9xBd7nTg7PtGAy+WaOA95AZ2hpPvxAJLUv8f7XuJd/u/R+zzymLNxoNPvH5emTfXHcEL7N9/RyTKbARJl01oRK/80egq3ILrG/cuJcZ3ALQNMkFZP8rF5fv0QSqroQlJX/IWLkhwIDAQAB"

    invoke-direct {v1, p0, v2}, Lcom/dumadu/iab/util/IabHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v1, Lcom/augmentedreality/gp/baseball/Baseball;->billingHelper:Lcom/dumadu/iab/util/IabHelper;

    .line 216
    sget-object v1, Lcom/augmentedreality/gp/baseball/Baseball;->billingHelper:Lcom/dumadu/iab/util/IabHelper;

    new-instance v2, Lcom/augmentedreality/gp/baseball/Baseball$2;

    invoke-direct {v2, p0, v0}, Lcom/augmentedreality/gp/baseball/Baseball$2;-><init>(Lcom/augmentedreality/gp/baseball/Baseball;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lcom/dumadu/iab/util/IabHelper;->startSetup(Lcom/dumadu/iab/util/IabHelper$OnIabSetupFinishedListener;)V

    .line 227
    new-instance v1, Lcom/augmentedreality/gp/baseball/Baseball$3;

    invoke-direct {v1, p0}, Lcom/augmentedreality/gp/baseball/Baseball$3;-><init>(Lcom/augmentedreality/gp/baseball/Baseball;)V

    sput-object v1, Lcom/augmentedreality/gp/baseball/Baseball;->handler:Landroid/os/Handler;

    .line 386
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 424
    iget-object v0, p0, Lcom/augmentedreality/gp/baseball/Baseball;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0}, Lcom/unity3d/player/UnityPlayer;->quit()V

    .line 425
    sget-boolean v0, Lcom/augmentedreality/gp/baseball/Baseball;->alphonsServiceInitialized:Z

    if-eqz v0, :cond_0

    .line 426
    invoke-direct {p0}, Lcom/augmentedreality/gp/baseball/Baseball;->cleanupAlphonsoService()V

    .line 427
    :cond_0
    invoke-super {p0}, Lcom/dumadu/google/playgames/BaseGameActivity;->onDestroy()V

    .line 428
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 502
    iget-object v0, p0, Lcom/augmentedreality/gp/baseball/Baseball;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0, p1}, Lcom/unity3d/player/UnityPlayer;->injectEvent(Landroid/view/InputEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 492
    iget-object v0, p0, Lcom/augmentedreality/gp/baseball/Baseball;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0, p2}, Lcom/unity3d/player/UnityPlayer;->injectEvent(Landroid/view/InputEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 487
    iget-object v0, p0, Lcom/augmentedreality/gp/baseball/Baseball;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0, p2}, Lcom/unity3d/player/UnityPlayer;->injectEvent(Landroid/view/InputEvent;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 433
    invoke-super {p0}, Lcom/dumadu/google/playgames/BaseGameActivity;->onPause()V

    .line 434
    iget-object v0, p0, Lcom/augmentedreality/gp/baseball/Baseball;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0}, Lcom/unity3d/player/UnityPlayer;->pause()V

    .line 435
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

    .line 960
    packed-switch p1, :pswitch_data_0

    .line 1012
    :goto_0
    return-void

    .line 962
    :pswitch_0
    array-length v0, p3

    if-lez v0, :cond_3

    aget v0, p3, v2

    if-nez v0, :cond_3

    .line 963
    const-string v0, "callback"

    const-string v1, "Mic Permission granted"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    iget-object v0, p0, Lcom/augmentedreality/gp/baseball/Baseball;->sharedpreferences:Landroid/content/SharedPreferences;

    const-string v1, "optout_Click_temp"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 973
    invoke-virtual {p0}, Lcom/augmentedreality/gp/baseball/Baseball;->setupAlphonsoService()V

    goto :goto_0

    .line 974
    :cond_0
    iget-object v0, p0, Lcom/augmentedreality/gp/baseball/Baseball;->sharedpreferences:Landroid/content/SharedPreferences;

    const-string v1, "optout_Click"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 975
    invoke-virtual {p0}, Lcom/augmentedreality/gp/baseball/Baseball;->setupAlphonsoService()V

    goto :goto_0

    .line 977
    :cond_1
    sget-boolean v0, Lcom/augmentedreality/gp/baseball/Baseball;->alphonsServiceInitialized:Z

    if-eqz v0, :cond_2

    .line 978
    invoke-direct {p0}, Lcom/augmentedreality/gp/baseball/Baseball;->stopAlphonsoService()V

    goto :goto_0

    .line 980
    :cond_2
    invoke-virtual {p0, v3}, Lcom/augmentedreality/gp/baseball/Baseball;->setOptoutOption(Z)V

    goto :goto_0

    .line 985
    :cond_3
    const-string v0, "callback"

    const-string v1, "Mic Permission not granted"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    sget-boolean v0, Lcom/augmentedreality/gp/baseball/Baseball;->alphonsServiceInitialized:Z

    if-eqz v0, :cond_4

    .line 987
    invoke-direct {p0}, Lcom/augmentedreality/gp/baseball/Baseball;->stopAlphonsoService()V

    .line 989
    :cond_4
    invoke-virtual {p0, v3}, Lcom/augmentedreality/gp/baseball/Baseball;->setOptoutOption(Z)V

    goto :goto_0

    .line 994
    :pswitch_1
    array-length v0, p3

    if-lez v0, :cond_5

    aget v0, p3, v2

    if-nez v0, :cond_5

    .line 995
    const-string v0, "callback"

    const-string v1, "Location Permission granted"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    invoke-virtual {p0}, Lcom/augmentedreality/gp/baseball/Baseball;->requestMicPermission()V

    goto :goto_0

    .line 998
    :cond_5
    const-string v0, "callback"

    const-string v1, "Location Permission not granted"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    const-string v0, "android.permission.RECORD_AUDIO"

    invoke-static {p0, v0}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1001
    invoke-virtual {p0}, Lcom/augmentedreality/gp/baseball/Baseball;->showAlphonsoCustomDialog()V

    goto :goto_0

    .line 1004
    :cond_6
    invoke-virtual {p0}, Lcom/augmentedreality/gp/baseball/Baseball;->requestMicPermission()V

    goto :goto_0

    .line 960
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
    .line 440
    invoke-super {p0}, Lcom/dumadu/google/playgames/BaseGameActivity;->onResume()V

    .line 441
    iget-object v0, p0, Lcom/augmentedreality/gp/baseball/Baseball;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0}, Lcom/unity3d/player/UnityPlayer;->resume()V

    .line 442
    return-void
.end method

.method public onRewarded(Lcom/google/android/gms/ads/reward/RewardItem;)V
    .locals 3
    .param p1, "arg0"    # Lcom/google/android/gms/ads/reward/RewardItem;

    .prologue
    .line 1222
    const-string v0, "Rewarded_RewardedVideo closed_RewardedVideo closed"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/augmentedreality/gp/baseball/Baseball;->analyticsEvent(Ljava/lang/String;Landroid/app/Activity;)V

    .line 1223
    const-string v0, "ExternalInterfaceHandler"

    const-string v1, "Receiver"

    const-string v2, "true"

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1224
    return-void
.end method

.method public onRewardedVideoAdClosed()V
    .locals 0

    .prologue
    .line 1229
    invoke-direct {p0}, Lcom/augmentedreality/gp/baseball/Baseball;->loadRewardedVideoAd()V

    .line 1230
    return-void
.end method

.method public onRewardedVideoAdFailedToLoad(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 1235
    invoke-direct {p0}, Lcom/augmentedreality/gp/baseball/Baseball;->loadRewardedVideoAd()V

    .line 1236
    return-void
.end method

.method public onRewardedVideoAdLeftApplication()V
    .locals 0

    .prologue
    .line 1242
    return-void
.end method

.method public onRewardedVideoAdLoaded()V
    .locals 0

    .prologue
    .line 1248
    return-void
.end method

.method public onRewardedVideoAdOpened()V
    .locals 0

    .prologue
    .line 1254
    return-void
.end method

.method public onRewardedVideoStarted()V
    .locals 2

    .prologue
    .line 1259
    const-string v0, "Rewarded_RewardedVideo started_RewardedVideo started"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/augmentedreality/gp/baseball/Baseball;->analyticsEvent(Ljava/lang/String;Landroid/app/Activity;)V

    .line 1261
    return-void
.end method

.method public onSignInFailed()V
    .locals 1

    .prologue
    .line 1084
    const/4 v0, 0x0

    sput-object v0, Lcom/augmentedreality/gp/baseball/Baseball;->gamesClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 1085
    return-void
.end method

.method public onSignInSucceeded()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1090
    invoke-virtual {p0}, Lcom/augmentedreality/gp/baseball/Baseball;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v3

    sput-object v3, Lcom/augmentedreality/gp/baseball/Baseball;->gamesClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 1091
    const-string v3, "GameServices"

    invoke-virtual {p0, v3, v4}, Lcom/augmentedreality/gp/baseball/Baseball;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1092
    .local v1, "preferences":Landroid/content/SharedPreferences;
    const-string v3, "sync"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 1093
    .local v2, "sync":Z
    if-nez v2, :cond_0

    .line 1095
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1096
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "sync"

    const/4 v4, 0x1

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1097
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1099
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 3

    .prologue
    .line 391
    invoke-super {p0}, Lcom/dumadu/google/playgames/BaseGameActivity;->onStart()V

    .line 393
    invoke-static {}, Lcom/augmentedreality/gp/baseball/Baseball;->checkPermission_RecordAudio()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 394
    iget-object v0, p0, Lcom/augmentedreality/gp/baseball/Baseball;->sharedpreferences:Landroid/content/SharedPreferences;

    const-string v1, "optout_Click"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_3

    .line 395
    sget-boolean v0, Lcom/augmentedreality/gp/baseball/Baseball;->alphonsServiceInitialized:Z

    if-eqz v0, :cond_2

    .line 396
    invoke-direct {p0}, Lcom/augmentedreality/gp/baseball/Baseball;->stopAlphonsoService()V

    .line 406
    :cond_0
    :goto_0
    sget-boolean v0, Lcom/augmentedreality/gp/baseball/Baseball;->RemovedAds:Z

    if-nez v0, :cond_1

    .line 408
    invoke-direct {p0}, Lcom/augmentedreality/gp/baseball/Baseball;->loadInterstitialAd()V

    .line 411
    :cond_1
    sget-object v0, Lcom/augmentedreality/gp/baseball/Baseball;->analytics:Lcom/google/android/gms/analytics/GoogleAnalytics;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->reportActivityStart(Landroid/app/Activity;)V

    .line 412
    return-void

    .line 398
    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/augmentedreality/gp/baseball/Baseball;->setOptoutOption(Z)V

    goto :goto_0

    .line 402
    :cond_3
    invoke-virtual {p0}, Lcom/augmentedreality/gp/baseball/Baseball;->setupAlphonsoService()V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 417
    invoke-super {p0}, Lcom/dumadu/google/playgames/BaseGameActivity;->onStop()V

    .line 418
    sget-object v0, Lcom/augmentedreality/gp/baseball/Baseball;->analytics:Lcom/google/android/gms/analytics/GoogleAnalytics;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->reportActivityStop(Landroid/app/Activity;)V

    .line 419
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 497
    iget-object v0, p0, Lcom/augmentedreality/gp/baseball/Baseball;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0, p1}, Lcom/unity3d/player/UnityPlayer;->injectEvent(Landroid/view/InputEvent;)Z

    move-result v0

    return v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .param p1, "hasFocus"    # Z

    .prologue
    .line 462
    invoke-super {p0, p1}, Lcom/dumadu/google/playgames/BaseGameActivity;->onWindowFocusChanged(Z)V

    .line 463
    iget-object v0, p0, Lcom/augmentedreality/gp/baseball/Baseball;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0, p1}, Lcom/unity3d/player/UnityPlayer;->windowFocusChanged(Z)V

    .line 464
    if-eqz p1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 465
    iget-object v0, p0, Lcom/augmentedreality/gp/baseball/Baseball;->mDecorView:Landroid/view/View;

    const/16 v1, 0x1706

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 473
    :cond_0
    return-void
.end method

.method public requestLocationPermission()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 918
    invoke-static {}, Lcom/augmentedreality/gp/baseball/Baseball;->checkPermission_Location()Z

    move-result v0

    if-nez v0, :cond_1

    .line 919
    sget-object v0, Lcom/augmentedreality/gp/baseball/Baseball;->activity:Landroid/app/Activity;

    new-array v1, v2, [Ljava/lang/String;

    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object v2, v1, v3

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 938
    :cond_0
    :goto_0
    return-void

    .line 921
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_4

    .line 922
    iget-object v0, p0, Lcom/augmentedreality/gp/baseball/Baseball;->sharedpreferences:Landroid/content/SharedPreferences;

    const-string v1, "optout_Click_temp"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 923
    invoke-virtual {p0}, Lcom/augmentedreality/gp/baseball/Baseball;->setupAlphonsoService()V

    goto :goto_0

    .line 924
    :cond_2
    iget-object v0, p0, Lcom/augmentedreality/gp/baseball/Baseball;->sharedpreferences:Landroid/content/SharedPreferences;

    const-string v1, "optout_Click"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 927
    sget-boolean v0, Lcom/augmentedreality/gp/baseball/Baseball;->alphonsServiceInitialized:Z

    if-eqz v0, :cond_3

    .line 928
    invoke-direct {p0}, Lcom/augmentedreality/gp/baseball/Baseball;->stopAlphonsoService()V

    goto :goto_0

    .line 930
    :cond_3
    invoke-virtual {p0, v2}, Lcom/augmentedreality/gp/baseball/Baseball;->setOptoutOption(Z)V

    goto :goto_0

    .line 934
    :cond_4
    invoke-static {}, Lcom/augmentedreality/gp/baseball/Baseball;->checkPermission_RecordAudio()Z

    move-result v0

    if-nez v0, :cond_0

    .line 935
    invoke-virtual {p0}, Lcom/augmentedreality/gp/baseball/Baseball;->showAlphonsoCustomDialog()V

    goto :goto_0
.end method

.method public requestMicPermission()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 912
    invoke-static {}, Lcom/augmentedreality/gp/baseball/Baseball;->checkPermission_RecordAudio()Z

    move-result v0

    if-nez v0, :cond_0

    .line 913
    sget-object v0, Lcom/augmentedreality/gp/baseball/Baseball;->activity:Landroid/app/Activity;

    new-array v1, v4, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "android.permission.RECORD_AUDIO"

    aput-object v3, v1, v2

    invoke-static {v0, v1, v4}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 915
    :cond_0
    return-void
.end method

.method public setOptoutOption(Z)V
    .locals 3
    .param p1, "status"    # Z

    .prologue
    .line 1017
    invoke-static {}, Lcom/augmentedreality/gp/baseball/Baseball;->checkPermission_RecordAudio()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    .line 1018
    iget-object v0, p0, Lcom/augmentedreality/gp/baseball/Baseball;->sharedpreferences:Landroid/content/SharedPreferences;

    const-string v1, "optout_Click"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1020
    const-string v0, "ExternalInterfaceHandler"

    const-string v1, "SetMicStatus"

    const-string v2, "true"

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1033
    :goto_0
    return-void

    .line 1023
    :cond_0
    const-string v0, "ExternalInterfaceHandler"

    const-string v1, "SetMicStatus"

    const-string v2, "false"

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1029
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
    .line 711
    iget-boolean v2, p0, Lcom/augmentedreality/gp/baseball/Baseball;->alphonsoFlag:Z

    if-nez v2, :cond_0

    .line 713
    const v2, 0x7f070096

    :try_start_0
    invoke-virtual {p0, v2}, Lcom/augmentedreality/gp/baseball/Baseball;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 714
    .local v0, "API_KEY":Ljava/lang/String;
    invoke-direct {p0}, Lcom/augmentedreality/gp/baseball/Baseball;->getResultReceiver()Landroid/os/ResultReceiver;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, p0, v2, v3}, Ltv/alphonso/service/client/ASAPI;->init(Ljava/lang/String;Landroid/app/Activity;Landroid/os/ResultReceiver;Z)V

    .line 715
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/augmentedreality/gp/baseball/Baseball;->alphonsoFlag:Z

    .line 716
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

    .line 724
    .end local v0    # "API_KEY":Ljava/lang/String;
    :goto_0
    return-void

    .line 717
    :catch_0
    move-exception v1

    .line 718
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

    .line 719
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 722
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    const-string v2, "iniatialization inprogress"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public showAlphonsoCustomDialog()V
    .locals 6

    .prologue
    .line 1036
    const-string v3, "test"

    const-string v4, "Custom Popup"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1039
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    const-string v3, "OK"

    new-instance v4, Lcom/augmentedreality/gp/baseball/Baseball$8;

    invoke-direct {v4, p0}, Lcom/augmentedreality/gp/baseball/Baseball$8;-><init>(Lcom/augmentedreality/gp/baseball/Baseball;)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1046
    const-string v3, "Don\'t Allow"

    new-instance v4, Lcom/augmentedreality/gp/baseball/Baseball$9;

    invoke-direct {v4, p0}, Lcom/augmentedreality/gp/baseball/Baseball$9;-><init>(Lcom/augmentedreality/gp/baseball/Baseball;)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1058
    new-instance v3, Lcom/augmentedreality/gp/baseball/Baseball$10;

    invoke-direct {v3, p0}, Lcom/augmentedreality/gp/baseball/Baseball$10;-><init>(Lcom/augmentedreality/gp/baseball/Baseball;)V

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 1067
    invoke-static {p0}, Ltv/alphonso/utils/Utils;->getOnlyAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1068
    .local v0, "appName":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1069
    const-string v3, "This app uses audio to detect TV ads and content and shows appropriate mobile ads"

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const-string v4, "This App Would Like to Access the Microphone"

    .line 1070
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1076
    :goto_0
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 1078
    .local v2, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 1079
    return-void

    .line 1072
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

    .line 1073
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method
