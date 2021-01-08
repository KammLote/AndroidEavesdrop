.class public Lcom/mopub/mobileads/MoPubRewardedVideo;
.super Lcom/mopub/mobileads/CustomEventRewardedVideo;
.source "MoPubRewardedVideo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mobileads/MoPubRewardedVideo$MoPubRewardedVideoListener;
    }
.end annotation


# static fields
.field private static final MOPUB_REWARDED_VIDEO_ID:Ljava/lang/String; = "mopub_rewarded_video_id"
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# instance fields
.field private mIsLoaded:Z

.field private mRewardedVastVideoInterstitial:Lcom/mopub/mobileads/RewardedVastVideoInterstitial;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mRewardedVideoCurrencyAmount:I

.field private mRewardedVideoCurrencyName:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/mopub/mobileads/CustomEventRewardedVideo;-><init>()V

    .line 29
    new-instance v0, Lcom/mopub/mobileads/RewardedVastVideoInterstitial;

    invoke-direct {v0}, Lcom/mopub/mobileads/RewardedVastVideoInterstitial;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedVideo;->mRewardedVastVideoInterstitial:Lcom/mopub/mobileads/RewardedVastVideoInterstitial;

    .line 30
    return-void
.end method

.method static synthetic access$102(Lcom/mopub/mobileads/MoPubRewardedVideo;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mopub/mobileads/MoPubRewardedVideo;
    .param p1, "x1"    # Z

    .prologue
    .line 19
    iput-boolean p1, p0, Lcom/mopub/mobileads/MoPubRewardedVideo;->mIsLoaded:Z

    return p1
.end method

.method static synthetic access$200(Lcom/mopub/mobileads/MoPubRewardedVideo;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mopub/mobileads/MoPubRewardedVideo;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedVideo;->mRewardedVideoCurrencyName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mopub/mobileads/MoPubRewardedVideo;)I
    .locals 1
    .param p0, "x0"    # Lcom/mopub/mobileads/MoPubRewardedVideo;

    .prologue
    .line 19
    iget v0, p0, Lcom/mopub/mobileads/MoPubRewardedVideo;->mRewardedVideoCurrencyAmount:I

    return v0
.end method


# virtual methods
.method protected checkAndInitializeSdk(Landroid/app/Activity;Ljava/util/Map;Ljava/util/Map;)Z
    .locals 1
    .param p1, "launcherActivity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 64
    .local p2, "localExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p3, "serverExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    return v0
.end method

.method protected getAdNetworkId()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 50
    const-string v0, "mopub_rewarded_video_id"

    return-object v0
.end method

.method protected getLifecycleListener()Lcom/mopub/common/LifecycleListener;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 44
    const/4 v0, 0x0

    return-object v0
.end method

.method getRewardedVideoCurrencyAmount()I
    .locals 1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 203
    iget v0, p0, Lcom/mopub/mobileads/MoPubRewardedVideo;->mRewardedVideoCurrencyAmount:I

    return v0
.end method

.method getRewardedVideoCurrencyName()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 197
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedVideo;->mRewardedVideoCurrencyName:Ljava/lang/String;

    return-object v0
.end method

.method protected getVideoListenerForSdk()Lcom/mopub/mobileads/CustomEventRewardedVideo$CustomEventRewardedVideoListener;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 37
    const/4 v0, 0x0

    return-object v0
.end method

.method protected hasVideoAvailable()Z
    .locals 1

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/mopub/mobileads/MoPubRewardedVideo;->mIsLoaded:Z

    return v0
.end method

.method protected loadWithSdkInitialized(Landroid/app/Activity;Ljava/util/Map;Ljava/util/Map;)V
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p2, "localExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p3, "serverExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 71
    const-string v4, "activity cannot be null"

    invoke-static {p1, v4}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    const-string v4, "localExtras cannot be null"

    invoke-static {p2, v4}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    const-string v4, "serverExtras cannot be null"

    invoke-static {p3, v4}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    const-string v4, "Rewarded-Video-Currency-Name"

    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 77
    .local v3, "rewardedVideoCurrencyName":Ljava/lang/Object;
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 78
    check-cast v3, Ljava/lang/String;

    .end local v3    # "rewardedVideoCurrencyName":Ljava/lang/Object;
    iput-object v3, p0, Lcom/mopub/mobileads/MoPubRewardedVideo;->mRewardedVideoCurrencyName:Ljava/lang/String;

    .line 84
    :goto_0
    const-string v4, "Rewarded-Video-Currency-Value-String"

    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 86
    .local v2, "rewardedVideoCurrencyAmount":Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 88
    :try_start_0
    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/mopub/mobileads/MoPubRewardedVideo;->mRewardedVideoCurrencyAmount:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    :goto_1
    iget v4, p0, Lcom/mopub/mobileads/MoPubRewardedVideo;->mRewardedVideoCurrencyAmount:I

    if-gez v4, :cond_0

    .line 105
    const-string v4, "Negative currency amount specified for rewarded video. Using the default reward amount: 0"

    invoke-static {v4}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 108
    iput v6, p0, Lcom/mopub/mobileads/MoPubRewardedVideo;->mRewardedVideoCurrencyAmount:I

    .line 111
    :cond_0
    iget-object v4, p0, Lcom/mopub/mobileads/MoPubRewardedVideo;->mRewardedVastVideoInterstitial:Lcom/mopub/mobileads/RewardedVastVideoInterstitial;

    new-instance v5, Lcom/mopub/mobileads/MoPubRewardedVideo$MoPubRewardedVideoListener;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/mopub/mobileads/MoPubRewardedVideo$MoPubRewardedVideoListener;-><init>(Lcom/mopub/mobileads/MoPubRewardedVideo;Lcom/mopub/mobileads/MoPubRewardedVideo$1;)V

    invoke-virtual {v4, p1, v5, p2, p3}, Lcom/mopub/mobileads/RewardedVastVideoInterstitial;->loadInterstitial(Landroid/content/Context;Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;Ljava/util/Map;Ljava/util/Map;)V

    .line 113
    return-void

    .line 80
    .end local v2    # "rewardedVideoCurrencyAmount":Ljava/lang/Object;
    .restart local v3    # "rewardedVideoCurrencyName":Ljava/lang/Object;
    :cond_1
    const-string v4, "No currency name specified for rewarded video. Using the default name."

    invoke-static {v4}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 81
    const-string v4, ""

    iput-object v4, p0, Lcom/mopub/mobileads/MoPubRewardedVideo;->mRewardedVideoCurrencyName:Ljava/lang/String;

    goto :goto_0

    .line 90
    .end local v3    # "rewardedVideoCurrencyName":Ljava/lang/Object;
    .restart local v2    # "rewardedVideoCurrencyAmount":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 91
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to convert currency amount: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". Using the default reward amount: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 95
    iput v6, p0, Lcom/mopub/mobileads/MoPubRewardedVideo;->mRewardedVideoCurrencyAmount:I

    goto :goto_1

    .line 98
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_2
    const-string v4, "No currency amount specified for rewarded video. Using the default reward amount: 0"

    invoke-static {v4}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 101
    iput v6, p0, Lcom/mopub/mobileads/MoPubRewardedVideo;->mRewardedVideoCurrencyAmount:I

    goto :goto_1
.end method

.method protected onInvalidate()V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedVideo;->mRewardedVastVideoInterstitial:Lcom/mopub/mobileads/RewardedVastVideoInterstitial;

    invoke-virtual {v0}, Lcom/mopub/mobileads/RewardedVastVideoInterstitial;->onInvalidate()V

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mopub/mobileads/MoPubRewardedVideo;->mIsLoaded:Z

    .line 57
    return-void
.end method

.method setIsLoaded(Z)V
    .locals 0
    .param p1, "isLoaded"    # Z
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 209
    iput-boolean p1, p0, Lcom/mopub/mobileads/MoPubRewardedVideo;->mIsLoaded:Z

    .line 210
    return-void
.end method

.method setRewardedVastVideoInterstitial(Lcom/mopub/mobileads/RewardedVastVideoInterstitial;)V
    .locals 0
    .param p1, "rewardedVastVideoInterstitial"    # Lcom/mopub/mobileads/RewardedVastVideoInterstitial;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 190
    iput-object p1, p0, Lcom/mopub/mobileads/MoPubRewardedVideo;->mRewardedVastVideoInterstitial:Lcom/mopub/mobileads/RewardedVastVideoInterstitial;

    .line 191
    return-void
.end method

.method protected showVideo()V
    .locals 1

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/mopub/mobileads/MoPubRewardedVideo;->hasVideoAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    const-string v0, "Showing MoPub rewarded video."

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedVideo;->mRewardedVastVideoInterstitial:Lcom/mopub/mobileads/RewardedVastVideoInterstitial;

    invoke-virtual {v0}, Lcom/mopub/mobileads/RewardedVastVideoInterstitial;->showInterstitial()V

    .line 128
    :goto_0
    return-void

    .line 126
    :cond_0
    const-string v0, "Unable to show MoPub rewarded video"

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    goto :goto_0
.end method
