.class public final Lcom/google/ads/mediation/facebook/FacebookAdapter;
.super Ljava/lang/Object;
.source "FacebookAdapter.java"

# interfaces
.implements Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;
.implements Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/mediation/facebook/FacebookAdapter$BannerListener;,
        Lcom/google/ads/mediation/facebook/FacebookAdapter$InterstitialListener;
    }
.end annotation


# static fields
.field private static final PLACEMENT_PARAMETER:Ljava/lang/String; = "pubid"

.field private static final TAG:Ljava/lang/String; = "FacebookAdapter"


# instance fields
.field private mAdView:Lcom/facebook/ads/AdView;

.field private mBannerListener:Lcom/google/android/gms/ads/mediation/MediationBannerListener;

.field private mInterstitialAd:Lcom/facebook/ads/InterstitialAd;

.field private mInterstitialListener:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

.field private mWrappedAdView:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/google/ads/mediation/facebook/FacebookAdapter;)Lcom/google/android/gms/ads/mediation/MediationBannerListener;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter;->mBannerListener:Lcom/google/android/gms/ads/mediation/MediationBannerListener;

    return-object v0
.end method

.method static synthetic access$1(Lcom/google/ads/mediation/facebook/FacebookAdapter;Lcom/facebook/ads/AdError;)I
    .locals 1

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lcom/google/ads/mediation/facebook/FacebookAdapter;->convertErrorCode(Lcom/facebook/ads/AdError;)I

    move-result v0

    return v0
.end method

.method static synthetic access$2(Lcom/google/ads/mediation/facebook/FacebookAdapter;)Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter;->mInterstitialListener:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    return-object v0
.end method

.method private buildAdRequest(Lcom/google/android/gms/ads/mediation/MediationAdRequest;)V
    .locals 2
    .param p1, "adRequest"    # Lcom/google/android/gms/ads/mediation/MediationAdRequest;

    .prologue
    const/4 v0, 0x1

    .line 148
    if-eqz p1, :cond_0

    .line 149
    invoke-interface {p1}, Lcom/google/android/gms/ads/mediation/MediationAdRequest;->taggedForChildDirectedTreatment()I

    move-result v1

    if-ne v1, v0, :cond_1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/AdSettings;->setIsChildDirected(Z)V

    .line 152
    :cond_0
    return-void

    .line 149
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private convertErrorCode(Lcom/facebook/ads/AdError;)I
    .locals 3
    .param p1, "adError"    # Lcom/facebook/ads/AdError;

    .prologue
    const/4 v1, 0x0

    .line 132
    if-nez p1, :cond_1

    .line 143
    :cond_0
    :goto_0
    return v1

    .line 135
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/ads/AdError;->getErrorCode()I

    move-result v0

    .line 136
    .local v0, "errorCode":I
    const/16 v2, 0x7d1

    if-eq v0, v2, :cond_0

    const/16 v2, 0x7d0

    if-eq v0, v2, :cond_0

    .line 138
    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_2

    .line 139
    const/4 v1, 0x2

    goto :goto_0

    .line 140
    :cond_2
    const/16 v1, 0x3ea

    if-ne v0, v1, :cond_3

    .line 141
    const/4 v1, 0x1

    goto :goto_0

    .line 143
    :cond_3
    const/4 v1, 0x3

    goto :goto_0
.end method

.method private getAdSize(Landroid/content/Context;Lcom/google/android/gms/ads/AdSize;)Lcom/facebook/ads/AdSize;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adSize"    # Lcom/google/android/gms/ads/AdSize;

    .prologue
    .line 214
    invoke-virtual {p2}, Lcom/google/android/gms/ads/AdSize;->getWidth()I

    move-result v1

    sget-object v2, Lcom/facebook/ads/AdSize;->BANNER_320_50:Lcom/facebook/ads/AdSize;

    invoke-virtual {v2}, Lcom/facebook/ads/AdSize;->getWidth()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 215
    invoke-virtual {p2}, Lcom/google/android/gms/ads/AdSize;->getHeight()I

    move-result v1

    sget-object v2, Lcom/facebook/ads/AdSize;->BANNER_320_50:Lcom/facebook/ads/AdSize;

    invoke-virtual {v2}, Lcom/facebook/ads/AdSize;->getHeight()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 216
    sget-object v1, Lcom/facebook/ads/AdSize;->BANNER_320_50:Lcom/facebook/ads/AdSize;

    .line 233
    :goto_0
    return-object v1

    .line 221
    :cond_0
    invoke-virtual {p2, p1}, Lcom/google/android/gms/ads/AdSize;->getHeightInPixels(Landroid/content/Context;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/google/ads/mediation/facebook/FacebookAdapter;->pixelToDip(I)I

    move-result v0

    .line 222
    .local v0, "heightInDip":I
    sget-object v1, Lcom/facebook/ads/AdSize;->BANNER_HEIGHT_50:Lcom/facebook/ads/AdSize;

    invoke-virtual {v1}, Lcom/facebook/ads/AdSize;->getHeight()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 223
    sget-object v1, Lcom/facebook/ads/AdSize;->BANNER_HEIGHT_50:Lcom/facebook/ads/AdSize;

    goto :goto_0

    .line 226
    :cond_1
    sget-object v1, Lcom/facebook/ads/AdSize;->BANNER_HEIGHT_90:Lcom/facebook/ads/AdSize;

    invoke-virtual {v1}, Lcom/facebook/ads/AdSize;->getHeight()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 227
    sget-object v1, Lcom/facebook/ads/AdSize;->BANNER_HEIGHT_90:Lcom/facebook/ads/AdSize;

    goto :goto_0

    .line 230
    :cond_2
    sget-object v1, Lcom/facebook/ads/AdSize;->RECTANGLE_HEIGHT_250:Lcom/facebook/ads/AdSize;

    invoke-virtual {v1}, Lcom/facebook/ads/AdSize;->getHeight()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 231
    sget-object v1, Lcom/facebook/ads/AdSize;->RECTANGLE_HEIGHT_250:Lcom/facebook/ads/AdSize;

    goto :goto_0

    .line 233
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private pixelToDip(I)I
    .locals 3
    .param p1, "pixel"    # I

    .prologue
    .line 237
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 238
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    int-to-float v1, p1

    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    return v1
.end method


# virtual methods
.method public getBannerView()Landroid/view/View;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter;->mWrappedAdView:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter;->mAdView:Lcom/facebook/ads/AdView;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter;->mAdView:Lcom/facebook/ads/AdView;

    invoke-virtual {v0}, Lcom/facebook/ads/AdView;->destroy()V

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter;->mInterstitialAd:Lcom/facebook/ads/InterstitialAd;

    if-eqz v0, :cond_1

    .line 48
    iget-object v0, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter;->mInterstitialAd:Lcom/facebook/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/facebook/ads/InterstitialAd;->destroy()V

    .line 50
    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 55
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 60
    return-void
.end method

.method public requestBannerAd(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/MediationBannerListener;Landroid/os/Bundle;Lcom/google/android/gms/ads/AdSize;Lcom/google/android/gms/ads/mediation/MediationAdRequest;Landroid/os/Bundle;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/google/android/gms/ads/mediation/MediationBannerListener;
    .param p3, "serverParameters"    # Landroid/os/Bundle;
    .param p4, "adSize"    # Lcom/google/android/gms/ads/AdSize;
    .param p5, "adRequest"    # Lcom/google/android/gms/ads/mediation/MediationAdRequest;
    .param p6, "mediationExtras"    # Landroid/os/Bundle;

    .prologue
    .line 74
    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    iput-object p2, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter;->mBannerListener:Lcom/google/android/gms/ads/mediation/MediationBannerListener;

    .line 78
    const-string v3, "pubid"

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 79
    .local v1, "placementId":Ljava/lang/String;
    if-nez v1, :cond_2

    .line 80
    const-string v3, "FacebookAdapter"

    const-string v4, "Fail to request banner Ad, placementId is null"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-object v3, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter;->mBannerListener:Lcom/google/android/gms/ads/mediation/MediationBannerListener;

    const/4 v4, 0x0

    invoke-interface {v3, p0, v4}, Lcom/google/android/gms/ads/mediation/MediationBannerListener;->onAdFailedToLoad(Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;I)V

    goto :goto_0

    .line 84
    :cond_2
    invoke-direct {p0, p1, p4}, Lcom/google/ads/mediation/facebook/FacebookAdapter;->getAdSize(Landroid/content/Context;Lcom/google/android/gms/ads/AdSize;)Lcom/facebook/ads/AdSize;

    move-result-object v0

    .line 85
    .local v0, "facebookAdSize":Lcom/facebook/ads/AdSize;
    if-nez v0, :cond_3

    .line 86
    const-string v3, "FacebookAdapter"

    .line 87
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "The input ad size "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Lcom/google/android/gms/ads/AdSize;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not supported at this moment."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 86
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-object v3, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter;->mBannerListener:Lcom/google/android/gms/ads/mediation/MediationBannerListener;

    const/4 v4, 0x3

    invoke-interface {v3, p0, v4}, Lcom/google/android/gms/ads/mediation/MediationBannerListener;->onAdFailedToLoad(Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;I)V

    goto :goto_0

    .line 91
    :cond_3
    new-instance v3, Lcom/facebook/ads/AdView;

    invoke-direct {v3, p1, v1, v0}, Lcom/facebook/ads/AdView;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/ads/AdSize;)V

    iput-object v3, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter;->mAdView:Lcom/facebook/ads/AdView;

    .line 92
    iget-object v3, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter;->mAdView:Lcom/facebook/ads/AdView;

    new-instance v4, Lcom/google/ads/mediation/facebook/FacebookAdapter$BannerListener;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/google/ads/mediation/facebook/FacebookAdapter$BannerListener;-><init>(Lcom/google/ads/mediation/facebook/FacebookAdapter;Lcom/google/ads/mediation/facebook/FacebookAdapter$BannerListener;)V

    invoke-virtual {v3, v4}, Lcom/facebook/ads/AdView;->setAdListener(Lcom/facebook/ads/AdListener;)V

    .line 93
    invoke-direct {p0, p5}, Lcom/google/ads/mediation/facebook/FacebookAdapter;->buildAdRequest(Lcom/google/android/gms/ads/mediation/MediationAdRequest;)V

    .line 94
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 95
    invoke-virtual {p4, p1}, Lcom/google/android/gms/ads/AdSize;->getWidthInPixels(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {p4, p1}, Lcom/google/android/gms/ads/AdSize;->getHeightInPixels(Landroid/content/Context;)I

    move-result v4

    .line 94
    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 96
    .local v2, "wrappedLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    new-instance v3, Landroid/widget/RelativeLayout;

    invoke-direct {v3, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter;->mWrappedAdView:Landroid/widget/RelativeLayout;

    .line 97
    iget-object v3, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter;->mWrappedAdView:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 98
    iget-object v3, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter;->mWrappedAdView:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter;->mAdView:Lcom/facebook/ads/AdView;

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 99
    iget-object v3, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter;->mAdView:Lcom/facebook/ads/AdView;

    invoke-virtual {v3}, Lcom/facebook/ads/AdView;->loadAd()V

    goto :goto_0
.end method

.method public requestInterstitialAd(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;Landroid/os/Bundle;Lcom/google/android/gms/ads/mediation/MediationAdRequest;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;
    .param p3, "serverParameters"    # Landroid/os/Bundle;
    .param p4, "adRequest"    # Lcom/google/android/gms/ads/mediation/MediationAdRequest;
    .param p5, "mediationExtras"    # Landroid/os/Bundle;

    .prologue
    .line 108
    if-eqz p1, :cond_0

    if-nez p3, :cond_1

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 111
    :cond_1
    iput-object p2, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter;->mInterstitialListener:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    .line 112
    const-string v1, "pubid"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, "placementId":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 114
    const-string v1, "FacebookAdapter"

    const-string v2, "Fail to request interstitial Ad, placementId is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object v1, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter;->mInterstitialListener:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;->onAdFailedToLoad(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;I)V

    goto :goto_0

    .line 118
    :cond_2
    new-instance v1, Lcom/facebook/ads/InterstitialAd;

    invoke-direct {v1, p1, v0}, Lcom/facebook/ads/InterstitialAd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter;->mInterstitialAd:Lcom/facebook/ads/InterstitialAd;

    .line 119
    iget-object v1, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter;->mInterstitialAd:Lcom/facebook/ads/InterstitialAd;

    new-instance v2, Lcom/google/ads/mediation/facebook/FacebookAdapter$InterstitialListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/google/ads/mediation/facebook/FacebookAdapter$InterstitialListener;-><init>(Lcom/google/ads/mediation/facebook/FacebookAdapter;Lcom/google/ads/mediation/facebook/FacebookAdapter$InterstitialListener;)V

    invoke-virtual {v1, v2}, Lcom/facebook/ads/InterstitialAd;->setAdListener(Lcom/facebook/ads/InterstitialAdListener;)V

    .line 120
    invoke-direct {p0, p4}, Lcom/google/ads/mediation/facebook/FacebookAdapter;->buildAdRequest(Lcom/google/android/gms/ads/mediation/MediationAdRequest;)V

    .line 121
    iget-object v1, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter;->mInterstitialAd:Lcom/facebook/ads/InterstitialAd;

    invoke-virtual {v1}, Lcom/facebook/ads/InterstitialAd;->loadAd()V

    goto :goto_0
.end method

.method public showInterstitial()V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter;->mInterstitialAd:Lcom/facebook/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/facebook/ads/InterstitialAd;->isAdLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter;->mInterstitialAd:Lcom/facebook/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/facebook/ads/InterstitialAd;->show()Z

    .line 129
    :cond_0
    return-void
.end method
