.class public final Lcom/google/ads/mediation/inmobi/InMobiAdapter;
.super Ljava/lang/Object;
.source "InMobiAdapter.java"

# interfaces
.implements Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;
.implements Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;
.implements Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;
.implements Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;


# static fields
.field private static disableHardwareFlag:Ljava/lang/Boolean;

.field private static isAppInitialize:Ljava/lang/Boolean;

.field static url:Ljava/lang/String;


# instance fields
.field private _nativeMedAdReq:Lcom/google/android/gms/ads/mediation/NativeMediationAdRequest;

.field private adInterstitial:Lcom/inmobi/ads/InMobiInterstitial;

.field private adNative:Lcom/inmobi/ads/InMobiNative;

.field private adRewarded:Lcom/inmobi/ads/InMobiInterstitial;

.field private adView:Lcom/inmobi/ads/InMobiBanner;

.field private bannerListener:Lcom/google/android/gms/ads/mediation/MediationBannerListener;

.field private interstitialListener:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

.field private isOnlyUrl:Ljava/lang/Boolean;

.field key:Ljava/lang/String;

.field private nativeListener:Lcom/google/android/gms/ads/mediation/MediationNativeListener;

.field private rewardedVideoAdListener:Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;

.field private self:Lcom/google/ads/mediation/inmobi/InMobiAdapter;

.field value:Ljava/lang/String;

.field private wrappedAdView:Landroid/widget/FrameLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 62
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->disableHardwareFlag:Ljava/lang/Boolean;

    .line 63
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->isAppInitialize:Ljava/lang/Boolean;

    .line 69
    const-string v0, ""

    sput-object v0, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->url:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const-string v0, ""

    iput-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->key:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->value:Ljava/lang/String;

    .line 66
    iput-object p0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->self:Lcom/google/ads/mediation/inmobi/InMobiAdapter;

    .line 71
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->isOnlyUrl:Ljava/lang/Boolean;

    return-void
.end method

.method static synthetic access$000(Lcom/google/ads/mediation/inmobi/InMobiAdapter;)Lcom/google/android/gms/ads/mediation/MediationBannerListener;
    .locals 1
    .param p0, "x0"    # Lcom/google/ads/mediation/inmobi/InMobiAdapter;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->bannerListener:Lcom/google/android/gms/ads/mediation/MediationBannerListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/ads/mediation/inmobi/InMobiAdapter;)Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;
    .locals 1
    .param p0, "x0"    # Lcom/google/ads/mediation/inmobi/InMobiAdapter;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->interstitialListener:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/ads/mediation/inmobi/InMobiAdapter;)Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;
    .locals 1
    .param p0, "x0"    # Lcom/google/ads/mediation/inmobi/InMobiAdapter;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->rewardedVideoAdListener:Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/ads/mediation/inmobi/InMobiAdapter;)Lcom/google/android/gms/ads/mediation/MediationNativeListener;
    .locals 1
    .param p0, "x0"    # Lcom/google/ads/mediation/inmobi/InMobiAdapter;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->nativeListener:Lcom/google/android/gms/ads/mediation/MediationNativeListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/ads/mediation/inmobi/InMobiAdapter;)Lcom/google/ads/mediation/inmobi/InMobiAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/google/ads/mediation/inmobi/InMobiAdapter;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->self:Lcom/google/ads/mediation/inmobi/InMobiAdapter;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/ads/mediation/inmobi/InMobiAdapter;)Lcom/google/android/gms/ads/mediation/NativeMediationAdRequest;
    .locals 1
    .param p0, "x0"    # Lcom/google/ads/mediation/inmobi/InMobiAdapter;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->_nativeMedAdReq:Lcom/google/android/gms/ads/mediation/NativeMediationAdRequest;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/ads/mediation/inmobi/InMobiAdapter;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "x0"    # Lcom/google/ads/mediation/inmobi/InMobiAdapter;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->isOnlyUrl:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$602(Lcom/google/ads/mediation/inmobi/InMobiAdapter;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .param p0, "x0"    # Lcom/google/ads/mediation/inmobi/InMobiAdapter;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->isOnlyUrl:Ljava/lang/Boolean;

    return-object p1
.end method

.method public static disableHardwareAcceleration()V
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->disableHardwareFlag:Ljava/lang/Boolean;

    .line 90
    return-void
.end method


# virtual methods
.method public getBannerView()Landroid/view/View;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->wrappedAdView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public initialize(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/MediationAdRequest;Ljava/lang/String;Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mediationAdRequest"    # Lcom/google/android/gms/ads/mediation/MediationAdRequest;
    .param p3, "s"    # Ljava/lang/String;
    .param p4, "mediationRewardedVideoAdListener"    # Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;
    .param p5, "serverParameters"    # Landroid/os/Bundle;
    .param p6, "networkExtras"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x1

    .line 384
    const-string v3, "InMobiAdapter"

    const-string v4, "initialize called from InMobiAdapter."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    iput-object p4, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->rewardedVideoAdListener:Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;

    .line 386
    const-string v3, "accountid"

    invoke-virtual {p5, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 388
    .local v0, "accountId":Ljava/lang/String;
    sget-object v3, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->isAppInitialize:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_0

    move-object v3, p1

    .line 389
    check-cast v3, Landroid/app/Activity;

    invoke-static {v3, v0}, Lcom/inmobi/sdk/InMobiSdk;->init(Landroid/app/Activity;Ljava/lang/String;)V

    .line 390
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    sput-object v3, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->isAppInitialize:Ljava/lang/Boolean;

    .line 393
    :cond_0
    sget-object v3, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->isAppInitialize:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 394
    const-string v3, "placementid"

    invoke-virtual {p5, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 395
    .local v2, "placementId":Ljava/lang/String;
    new-instance v3, Lcom/inmobi/ads/InMobiInterstitial;

    check-cast p1, Landroid/app/Activity;

    .end local p1    # "context":Landroid/content/Context;
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    new-instance v6, Lcom/google/ads/mediation/inmobi/InMobiAdapter$3;

    invoke-direct {v6, p0}, Lcom/google/ads/mediation/inmobi/InMobiAdapter$3;-><init>(Lcom/google/ads/mediation/inmobi/InMobiAdapter;)V

    invoke-direct {v3, p1, v4, v5, v6}, Lcom/inmobi/ads/InMobiInterstitial;-><init>(Landroid/app/Activity;JLcom/inmobi/ads/InMobiInterstitial$InterstitialAdListener2;)V

    iput-object v3, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->adRewarded:Lcom/inmobi/ads/InMobiInterstitial;

    .line 511
    iget-object v3, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->rewardedVideoAdListener:Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;

    invoke-interface {v3, p0}, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;->onInitializationSucceeded(Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;)V

    .line 513
    invoke-interface {p2}, Lcom/google/android/gms/ads/mediation/MediationAdRequest;->getKeywords()Ljava/util/Set;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 514
    const-string v3, "InMobiAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "keyword is present:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p2}, Lcom/google/android/gms/ads/mediation/MediationAdRequest;->getKeywords()Ljava/util/Set;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    iget-object v3, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->adRewarded:Lcom/inmobi/ads/InMobiInterstitial;

    const-string v4, ", "

    .line 516
    invoke-interface {p2}, Lcom/google/android/gms/ads/mediation/MediationAdRequest;->getKeywords()Ljava/util/Set;

    move-result-object v5

    .line 515
    invoke-static {v4, v5}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/inmobi/ads/InMobiInterstitial;->setKeywords(Ljava/lang/String;)V

    .line 519
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 520
    .local v1, "paramMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "tp"

    const-string v4, "c_admob"

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 522
    invoke-interface {p2}, Lcom/google/android/gms/ads/mediation/MediationAdRequest;->taggedForChildDirectedTreatment()I

    move-result v3

    if-ne v3, v7, :cond_3

    .line 523
    const-string v3, "coppa"

    const-string v4, "1"

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    :goto_0
    iget-object v3, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->adRewarded:Lcom/inmobi/ads/InMobiInterstitial;

    invoke-virtual {v3, v1}, Lcom/inmobi/ads/InMobiInterstitial;->setExtras(Ljava/util/Map;)V

    .line 530
    sget-object v3, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->disableHardwareFlag:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 531
    iget-object v3, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->adRewarded:Lcom/inmobi/ads/InMobiInterstitial;

    invoke-virtual {v3}, Lcom/inmobi/ads/InMobiInterstitial;->disableHardwareAcceleration()V

    .line 533
    :cond_2
    invoke-static {p2, p6}, Lcom/google/ads/mediation/inmobi/InMobiAdapterUtils;->buildAdRequest(Lcom/google/android/gms/ads/mediation/MediationAdRequest;Landroid/os/Bundle;)V

    .line 538
    .end local v1    # "paramMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "placementId":Ljava/lang/String;
    :goto_1
    return-void

    .line 526
    .restart local v1    # "paramMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v2    # "placementId":Ljava/lang/String;
    :cond_3
    const-string v3, "coppa"

    const-string v4, "0"

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 535
    .end local v1    # "paramMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "placementId":Ljava/lang/String;
    .restart local p1    # "context":Landroid/content/Context;
    :cond_4
    iget-object v3, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->rewardedVideoAdListener:Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;

    invoke-interface {v3, p0, v7}, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;->onInitializationFailed(Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;I)V

    goto :goto_1
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 556
    sget-object v0, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->isAppInitialize:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 557
    const/4 v0, 0x1

    .line 558
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadAd(Lcom/google/android/gms/ads/mediation/MediationAdRequest;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "mediationAdRequest"    # Lcom/google/android/gms/ads/mediation/MediationAdRequest;
    .param p2, "serverParameters"    # Landroid/os/Bundle;
    .param p3, "networkExtras"    # Landroid/os/Bundle;

    .prologue
    .line 542
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->adRewarded:Lcom/inmobi/ads/InMobiInterstitial;

    if-eqz v0, :cond_0

    .line 543
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->adRewarded:Lcom/inmobi/ads/InMobiInterstitial;

    invoke-virtual {v0}, Lcom/inmobi/ads/InMobiInterstitial;->load()V

    .line 545
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 93
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 96
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 99
    return-void
.end method

.method public requestBannerAd(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/MediationBannerListener;Landroid/os/Bundle;Lcom/google/android/gms/ads/AdSize;Lcom/google/android/gms/ads/mediation/MediationAdRequest;Landroid/os/Bundle;)V
    .locals 7
    .param p1, "activity"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/google/android/gms/ads/mediation/MediationBannerListener;
    .param p3, "serverParameters"    # Landroid/os/Bundle;
    .param p4, "mediationAdSize"    # Lcom/google/android/gms/ads/AdSize;
    .param p5, "mediationAdRequest"    # Lcom/google/android/gms/ads/mediation/MediationAdRequest;
    .param p6, "mediationExtras"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x1

    .line 105
    sget-object v2, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->isAppInitialize:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz p3, :cond_0

    .line 106
    const-string v2, "InMobiAdapter"

    const-string v3, "accountid"

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    const-string v2, "InMobiAdapter"

    const-string v3, "placementid"

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, p1

    .line 108
    check-cast v2, Landroid/app/Activity;

    const-string v3, "accountid"

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/inmobi/sdk/InMobiSdk;->init(Landroid/app/Activity;Ljava/lang/String;)V

    .line 109
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sput-object v2, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->isAppInitialize:Ljava/lang/Boolean;

    .line 111
    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x9

    if-ge v2, v3, :cond_1

    .line 112
    invoke-interface {p2, p0, v6}, Lcom/google/android/gms/ads/mediation/MediationBannerListener;->onAdFailedToLoad(Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;I)V

    .line 244
    :goto_0
    return-void

    .line 115
    :cond_1
    iput-object p2, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->bannerListener:Lcom/google/android/gms/ads/mediation/MediationBannerListener;

    .line 117
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 118
    invoke-virtual {p4, p1}, Lcom/google/android/gms/ads/AdSize;->getWidthInPixels(Landroid/content/Context;)I

    move-result v2

    .line 119
    invoke-virtual {p4, p1}, Lcom/google/android/gms/ads/AdSize;->getHeightInPixels(Landroid/content/Context;)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 120
    .local v1, "wrappedLayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    new-instance v3, Lcom/inmobi/ads/InMobiBanner;

    move-object v2, p1

    check-cast v2, Landroid/app/Activity;

    const-string v4, "placementid"

    invoke-virtual {p3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-direct {v3, v2, v4, v5}, Lcom/inmobi/ads/InMobiBanner;-><init>(Landroid/app/Activity;J)V

    iput-object v3, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->adView:Lcom/inmobi/ads/InMobiBanner;

    .line 123
    iget-object v2, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->adView:Lcom/inmobi/ads/InMobiBanner;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/inmobi/ads/InMobiBanner;->setEnableAutoRefresh(Z)V

    .line 125
    iget-object v2, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->adView:Lcom/inmobi/ads/InMobiBanner;

    sget-object v3, Lcom/inmobi/ads/InMobiBanner$AnimationType;->ANIMATION_OFF:Lcom/inmobi/ads/InMobiBanner$AnimationType;

    invoke-virtual {v2, v3}, Lcom/inmobi/ads/InMobiBanner;->setAnimationType(Lcom/inmobi/ads/InMobiBanner$AnimationType;)V

    .line 126
    invoke-interface {p5}, Lcom/google/android/gms/ads/mediation/MediationAdRequest;->getKeywords()Ljava/util/Set;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 127
    iget-object v2, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->adView:Lcom/inmobi/ads/InMobiBanner;

    const-string v3, ", "

    .line 128
    invoke-interface {p5}, Lcom/google/android/gms/ads/mediation/MediationAdRequest;->getKeywords()Ljava/util/Set;

    move-result-object v4

    .line 127
    invoke-static {v3, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/inmobi/ads/InMobiBanner;->setKeywords(Ljava/lang/String;)V

    .line 132
    :cond_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 133
    .local v0, "paramMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "tp"

    const-string v3, "c_admob"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    invoke-interface {p5}, Lcom/google/android/gms/ads/mediation/MediationAdRequest;->taggedForChildDirectedTreatment()I

    move-result v2

    if-ne v2, v6, :cond_5

    .line 136
    const-string v2, "coppa"

    const-string v3, "1"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    :goto_1
    iget-object v2, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->adView:Lcom/inmobi/ads/InMobiBanner;

    invoke-virtual {v2, v0}, Lcom/inmobi/ads/InMobiBanner;->setExtras(Ljava/util/Map;)V

    .line 143
    if-nez p6, :cond_3

    .line 144
    new-instance p6, Landroid/os/Bundle;

    .end local p6    # "mediationExtras":Landroid/os/Bundle;
    invoke-direct {p6}, Landroid/os/Bundle;-><init>()V

    .line 146
    .restart local p6    # "mediationExtras":Landroid/os/Bundle;
    :cond_3
    iget-object v2, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->adView:Lcom/inmobi/ads/InMobiBanner;

    new-instance v3, Lcom/google/ads/mediation/inmobi/InMobiAdapter$1;

    invoke-direct {v3, p0}, Lcom/google/ads/mediation/inmobi/InMobiAdapter$1;-><init>(Lcom/google/ads/mediation/inmobi/InMobiAdapter;)V

    invoke-virtual {v2, v3}, Lcom/inmobi/ads/InMobiBanner;->setListener(Lcom/inmobi/ads/InMobiBanner$BannerAdListener;)V

    .line 228
    sget-object v2, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->disableHardwareFlag:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 229
    iget-object v2, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->adView:Lcom/inmobi/ads/InMobiBanner;

    invoke-virtual {v2}, Lcom/inmobi/ads/InMobiBanner;->disableHardwareAcceleration()V

    .line 238
    :cond_4
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->wrappedAdView:Landroid/widget/FrameLayout;

    .line 239
    iget-object v2, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->wrappedAdView:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 240
    iget-object v2, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->adView:Lcom/inmobi/ads/InMobiBanner;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p4, p1}, Lcom/google/android/gms/ads/AdSize;->getWidthInPixels(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {p4, p1}, Lcom/google/android/gms/ads/AdSize;->getHeightInPixels(Landroid/content/Context;)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Lcom/inmobi/ads/InMobiBanner;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 241
    iget-object v2, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->wrappedAdView:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->adView:Lcom/inmobi/ads/InMobiBanner;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 242
    invoke-static {p5, p6}, Lcom/google/ads/mediation/inmobi/InMobiAdapterUtils;->buildAdRequest(Lcom/google/android/gms/ads/mediation/MediationAdRequest;Landroid/os/Bundle;)V

    .line 243
    iget-object v2, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->adView:Lcom/inmobi/ads/InMobiBanner;

    invoke-virtual {v2}, Lcom/inmobi/ads/InMobiBanner;->load()V

    goto/16 :goto_0

    .line 139
    :cond_5
    const-string v2, "coppa"

    const-string v3, "0"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public requestInterstitialAd(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;Landroid/os/Bundle;Lcom/google/android/gms/ads/mediation/MediationAdRequest;Landroid/os/Bundle;)V
    .locals 6
    .param p1, "activity"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;
    .param p3, "serverParameters"    # Landroid/os/Bundle;
    .param p4, "mediationAdRequest"    # Lcom/google/android/gms/ads/mediation/MediationAdRequest;
    .param p5, "mediationExtras"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    .line 250
    sget-object v1, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->isAppInitialize:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, p1

    .line 251
    check-cast v1, Landroid/app/Activity;

    const-string v2, "accountid"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/inmobi/sdk/InMobiSdk;->init(Landroid/app/Activity;Ljava/lang/String;)V

    .line 252
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->isAppInitialize:Ljava/lang/Boolean;

    .line 256
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-ge v1, v2, :cond_1

    .line 257
    invoke-interface {p2, p0, v5}, Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;->onAdFailedToLoad(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;I)V

    .line 380
    .end local p1    # "activity":Landroid/content/Context;
    :goto_0
    return-void

    .line 260
    .restart local p1    # "activity":Landroid/content/Context;
    :cond_1
    iput-object p2, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->interstitialListener:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    .line 261
    new-instance v1, Lcom/inmobi/ads/InMobiInterstitial;

    check-cast p1, Landroid/app/Activity;

    .end local p1    # "activity":Landroid/content/Context;
    const-string v2, "placementid"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    new-instance v4, Lcom/google/ads/mediation/inmobi/InMobiAdapter$2;

    invoke-direct {v4, p0}, Lcom/google/ads/mediation/inmobi/InMobiAdapter$2;-><init>(Lcom/google/ads/mediation/inmobi/InMobiAdapter;)V

    invoke-direct {v1, p1, v2, v3, v4}, Lcom/inmobi/ads/InMobiInterstitial;-><init>(Landroid/app/Activity;JLcom/inmobi/ads/InMobiInterstitial$InterstitialAdListener2;)V

    iput-object v1, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->adInterstitial:Lcom/inmobi/ads/InMobiInterstitial;

    .line 358
    invoke-interface {p4}, Lcom/google/android/gms/ads/mediation/MediationAdRequest;->getKeywords()Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 359
    iget-object v1, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->adInterstitial:Lcom/inmobi/ads/InMobiInterstitial;

    const-string v2, ", "

    .line 360
    invoke-interface {p4}, Lcom/google/android/gms/ads/mediation/MediationAdRequest;->getKeywords()Ljava/util/Set;

    move-result-object v3

    .line 359
    invoke-static {v2, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/inmobi/ads/InMobiInterstitial;->setKeywords(Ljava/lang/String;)V

    .line 364
    :cond_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 365
    .local v0, "paramMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "tp"

    const-string v2, "c_admob"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    invoke-interface {p4}, Lcom/google/android/gms/ads/mediation/MediationAdRequest;->taggedForChildDirectedTreatment()I

    move-result v1

    if-ne v1, v5, :cond_4

    .line 368
    const-string v1, "coppa"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    :goto_1
    iget-object v1, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->adInterstitial:Lcom/inmobi/ads/InMobiInterstitial;

    invoke-virtual {v1, v0}, Lcom/inmobi/ads/InMobiInterstitial;->setExtras(Ljava/util/Map;)V

    .line 375
    sget-object v1, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->disableHardwareFlag:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 376
    iget-object v1, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->adInterstitial:Lcom/inmobi/ads/InMobiInterstitial;

    invoke-virtual {v1}, Lcom/inmobi/ads/InMobiInterstitial;->disableHardwareAcceleration()V

    .line 378
    :cond_3
    invoke-static {p4, p5}, Lcom/google/ads/mediation/inmobi/InMobiAdapterUtils;->buildAdRequest(Lcom/google/android/gms/ads/mediation/MediationAdRequest;Landroid/os/Bundle;)V

    .line 379
    iget-object v1, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->adInterstitial:Lcom/inmobi/ads/InMobiInterstitial;

    invoke-virtual {v1}, Lcom/inmobi/ads/InMobiInterstitial;->load()V

    goto :goto_0

    .line 371
    :cond_4
    const-string v1, "coppa"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public requestNativeAd(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/MediationNativeListener;Landroid/os/Bundle;Lcom/google/android/gms/ads/mediation/NativeMediationAdRequest;Landroid/os/Bundle;)V
    .locals 10
    .param p1, "activity"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/google/android/gms/ads/mediation/MediationNativeListener;
    .param p3, "serverParameters"    # Landroid/os/Bundle;
    .param p4, "mediationAdRequest"    # Lcom/google/android/gms/ads/mediation/NativeMediationAdRequest;
    .param p5, "mediationExtras"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x1

    .line 569
    instance-of v5, p1, Landroid/app/Activity;

    if-nez v5, :cond_0

    .line 570
    const-string v5, "InMobiAdapter"

    const-string v7, "Context not an Activity. Returning error!"

    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    invoke-interface {p2, p0, v6}, Lcom/google/android/gms/ads/mediation/MediationNativeListener;->onAdFailedToLoad(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;I)V

    .line 574
    :cond_0
    iput-object p4, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->_nativeMedAdReq:Lcom/google/android/gms/ads/mediation/NativeMediationAdRequest;

    .line 577
    sget-object v5, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->isAppInitialize:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_1

    if-eqz p3, :cond_1

    .line 578
    const-string v5, "InMobiAdptr AccountId"

    const-string v7, "accountid"

    invoke-virtual {p3, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    const-string v5, "InMobiAdptr PlacementId"

    const-string v7, "placementid"

    invoke-virtual {p3, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, p1

    .line 580
    check-cast v5, Landroid/app/Activity;

    const-string v7, "accountid"

    invoke-virtual {p3, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/inmobi/sdk/InMobiSdk;->init(Landroid/app/Activity;Ljava/lang/String;)V

    .line 581
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    sput-object v5, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->isAppInitialize:Ljava/lang/Boolean;

    .line 584
    :cond_1
    sget-object v5, Lcom/inmobi/sdk/InMobiSdk$LogLevel;->DEBUG:Lcom/inmobi/sdk/InMobiSdk$LogLevel;

    invoke-static {v5}, Lcom/inmobi/sdk/InMobiSdk;->setLogLevel(Lcom/inmobi/sdk/InMobiSdk$LogLevel;)V

    .line 586
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x9

    if-ge v5, v7, :cond_2

    .line 587
    invoke-interface {p2, p0, v6}, Lcom/google/android/gms/ads/mediation/MediationNativeListener;->onAdFailedToLoad(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;I)V

    .line 733
    .end local p1    # "activity":Landroid/content/Context;
    :goto_0
    return-void

    .line 591
    .restart local p1    # "activity":Landroid/content/Context;
    :cond_2
    iput-object p2, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->nativeListener:Lcom/google/android/gms/ads/mediation/MediationNativeListener;

    .line 593
    invoke-interface {p4}, Lcom/google/android/gms/ads/mediation/NativeMediationAdRequest;->isAppInstallAdRequested()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 594
    .local v1, "isAdMobInstallAd":Ljava/lang/Boolean;
    invoke-interface {p4}, Lcom/google/android/gms/ads/mediation/NativeMediationAdRequest;->isContentAdRequested()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 595
    .local v0, "isAdMobContentAd":Ljava/lang/Boolean;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_3

    move v5, v6

    :goto_1
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 597
    .local v4, "serveAnyAd":Ljava/lang/Boolean;
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 598
    iget-object v5, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->nativeListener:Lcom/google/android/gms/ads/mediation/MediationNativeListener;

    const/4 v6, 0x3

    invoke-interface {v5, p0, v6}, Lcom/google/android/gms/ads/mediation/MediationNativeListener;->onAdFailedToLoad(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;I)V

    goto :goto_0

    .line 595
    .end local v4    # "serveAnyAd":Ljava/lang/Boolean;
    :cond_3
    const/4 v5, 0x0

    goto :goto_1

    .line 602
    .restart local v4    # "serveAnyAd":Ljava/lang/Boolean;
    :cond_4
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_5

    .line 603
    iget-object v5, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->nativeListener:Lcom/google/android/gms/ads/mediation/MediationNativeListener;

    invoke-interface {v5, p0, v6}, Lcom/google/android/gms/ads/mediation/MediationNativeListener;->onAdFailedToLoad(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;I)V

    goto :goto_0

    .line 607
    :cond_5
    new-instance v5, Lcom/inmobi/ads/InMobiNative;

    check-cast p1, Landroid/app/Activity;

    .end local p1    # "activity":Landroid/content/Context;
    const-string v7, "placementid"

    invoke-virtual {p3, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    new-instance v7, Lcom/google/ads/mediation/inmobi/InMobiAdapter$4;

    invoke-direct {v7, p0, v4, v0, v1}, Lcom/google/ads/mediation/inmobi/InMobiAdapter$4;-><init>(Lcom/google/ads/mediation/inmobi/InMobiAdapter;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    invoke-direct {v5, p1, v8, v9, v7}, Lcom/inmobi/ads/InMobiNative;-><init>(Landroid/app/Activity;JLcom/inmobi/ads/InMobiNative$NativeAdListener;)V

    iput-object v5, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->adNative:Lcom/inmobi/ads/InMobiNative;

    .line 707
    invoke-interface {p4}, Lcom/google/android/gms/ads/mediation/NativeMediationAdRequest;->getKeywords()Ljava/util/Set;

    move-result-object v2

    .line 708
    .local v2, "mediationKeyWords":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v2, :cond_6

    .line 709
    iget-object v5, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->adNative:Lcom/inmobi/ads/InMobiNative;

    const-string v7, ", "

    invoke-static {v7, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/inmobi/ads/InMobiNative;->setKeywords(Ljava/lang/String;)V

    .line 717
    :cond_6
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 719
    .local v3, "paramMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v5, "tp"

    const-string v7, "c_admob"

    invoke-virtual {v3, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 721
    invoke-interface {p4}, Lcom/google/android/gms/ads/mediation/NativeMediationAdRequest;->taggedForChildDirectedTreatment()I

    move-result v5

    if-ne v5, v6, :cond_7

    .line 722
    const-string v5, "coppa"

    const-string v6, "1"

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 727
    :goto_2
    iget-object v5, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->adNative:Lcom/inmobi/ads/InMobiNative;

    invoke-virtual {v5, v3}, Lcom/inmobi/ads/InMobiNative;->setExtras(Ljava/util/Map;)V

    .line 729
    invoke-static {p4, p5}, Lcom/google/ads/mediation/inmobi/InMobiAdapterUtils;->buildAdRequest(Lcom/google/android/gms/ads/mediation/MediationAdRequest;Landroid/os/Bundle;)V

    .line 731
    iget-object v5, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->adNative:Lcom/inmobi/ads/InMobiNative;

    invoke-virtual {v5}, Lcom/inmobi/ads/InMobiNative;->load()V

    goto/16 :goto_0

    .line 725
    :cond_7
    const-string v5, "coppa"

    const-string v6, "0"

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method

.method public showInterstitial()V
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->adInterstitial:Lcom/inmobi/ads/InMobiInterstitial;

    invoke-virtual {v0}, Lcom/inmobi/ads/InMobiInterstitial;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    const-string v0, "InMobiAdapter"

    const-string v1, "Ad is ready to show"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->adInterstitial:Lcom/inmobi/ads/InMobiInterstitial;

    invoke-virtual {v0}, Lcom/inmobi/ads/InMobiInterstitial;->show()V

    .line 80
    :cond_0
    return-void
.end method

.method public showVideo()V
    .locals 1

    .prologue
    .line 549
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->adRewarded:Lcom/inmobi/ads/InMobiInterstitial;

    invoke-virtual {v0}, Lcom/inmobi/ads/InMobiInterstitial;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 550
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->adRewarded:Lcom/inmobi/ads/InMobiInterstitial;

    invoke-virtual {v0}, Lcom/inmobi/ads/InMobiInterstitial;->show()V

    .line 552
    :cond_0
    return-void
.end method
