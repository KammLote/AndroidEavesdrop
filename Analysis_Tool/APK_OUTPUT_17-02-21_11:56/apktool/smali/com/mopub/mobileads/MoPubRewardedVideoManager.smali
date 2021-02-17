.class public Lcom/mopub/mobileads/MoPubRewardedVideoManager;
.super Ljava/lang/Object;
.source "MoPubRewardedVideoManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mobileads/MoPubRewardedVideoManager$ForEachMoPubIdRunnable;,
        Lcom/mopub/mobileads/MoPubRewardedVideoManager$RequestParameters;,
        Lcom/mopub/mobileads/MoPubRewardedVideoManager$RewardedVideoRequestListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_LOAD_TIMEOUT:I = 0x7530

.field private static sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;


# instance fields
.field private final mAdRequestStatus:Lcom/mopub/mobileads/AdRequestStatusMapping;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mBroadcastIdentifier:J

.field private final mCallbackHandler:Landroid/os/Handler;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mCustomEventTimeoutHandler:Landroid/os/Handler;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mGlobalMediationSettings:Ljava/util/Set;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/mopub/common/MediationSettings;",
            ">;"
        }
    .end annotation
.end field

.field private final mInstanceMediationSettings:Ljava/util/Map;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Lcom/mopub/common/MediationSettings;",
            ">;>;"
        }
    .end annotation
.end field

.field private mMainActivity:Ljava/lang/ref/WeakReference;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private final mRewardedVideoData:Lcom/mopub/mobileads/RewardedVideoData;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mTimeoutMap:Ljava/util/Map;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mVideoListener:Lcom/mopub/mobileads/MoPubRewardedVideoListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private varargs constructor <init>(Landroid/app/Activity;[Lcom/mopub/common/MediationSettings;)V
    .locals 2
    .param p1, "mainActivity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "mediationSettings"    # [Lcom/mopub/common/MediationSettings;

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mMainActivity:Ljava/lang/ref/WeakReference;

    .line 101
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mContext:Landroid/content/Context;

    .line 102
    new-instance v0, Lcom/mopub/mobileads/RewardedVideoData;

    invoke-direct {v0}, Lcom/mopub/mobileads/RewardedVideoData;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mRewardedVideoData:Lcom/mopub/mobileads/RewardedVideoData;

    .line 103
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mCallbackHandler:Landroid/os/Handler;

    .line 104
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mGlobalMediationSettings:Ljava/util/Set;

    .line 105
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mGlobalMediationSettings:Ljava/util/Set;

    invoke-static {v0, p2}, Lcom/mopub/common/util/MoPubCollections;->addAllNonNull(Ljava/util/Collection;[Ljava/lang/Object;)V

    .line 106
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mInstanceMediationSettings:Ljava/util/Map;

    .line 107
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mCustomEventTimeoutHandler:Landroid/os/Handler;

    .line 108
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mTimeoutMap:Ljava/util/Map;

    .line 109
    invoke-static {}, Lcom/mopub/common/util/Utils;->generateUniqueId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mBroadcastIdentifier:J

    .line 111
    new-instance v0, Lcom/mopub/mobileads/AdRequestStatusMapping;

    invoke-direct {v0}, Lcom/mopub/mobileads/AdRequestStatusMapping;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mAdRequestStatus:Lcom/mopub/mobileads/AdRequestStatusMapping;

    .line 112
    return-void
.end method

.method static synthetic access$000(Lcom/mopub/mobileads/MoPubRewardedVideoManager;Lcom/mopub/network/AdResponse;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mopub/mobileads/MoPubRewardedVideoManager;
    .param p1, "x1"    # Lcom/mopub/network/AdResponse;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->onAdSuccess(Lcom/mopub/network/AdResponse;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/mopub/mobileads/MoPubRewardedVideoManager;Lcom/mopub/volley/VolleyError;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mopub/mobileads/MoPubRewardedVideoManager;
    .param p1, "x1"    # Lcom/mopub/volley/VolleyError;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->onAdError(Lcom/mopub/volley/VolleyError;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/mopub/mobileads/MoPubRewardedVideoManager;)Lcom/mopub/mobileads/RewardedVideoData;
    .locals 1
    .param p0, "x0"    # Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mRewardedVideoData:Lcom/mopub/mobileads/RewardedVideoData;

    return-object v0
.end method

.method static synthetic access$200()Lcom/mopub/mobileads/MoPubRewardedVideoManager;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mopub/mobileads/MoPubRewardedVideoManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mopub/mobileads/MoPubRewardedVideoManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->cancelTimeouts(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/mopub/mobileads/MoPubRewardedVideoManager;)Lcom/mopub/mobileads/MoPubRewardedVideoListener;
    .locals 1
    .param p0, "x0"    # Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mVideoListener:Lcom/mopub/mobileads/MoPubRewardedVideoListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mopub/mobileads/MoPubRewardedVideoManager;Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 0
    .param p0, "x0"    # Lcom/mopub/mobileads/MoPubRewardedVideoManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/mopub/mobileads/MoPubErrorCode;

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->failover(Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void
.end method

.method static synthetic access$600(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-static {p0}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->onRewardedVideoStartedAction(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Lcom/mopub/mobileads/MoPubErrorCode;

    .prologue
    .line 46
    invoke-static {p0, p1}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->onRewardedVideoPlaybackErrorAction(Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void
.end method

.method static synthetic access$800(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-static {p0}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->onRewardedVideoClickedAction(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-static {p0}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->onRewardedVideoClosedAction(Ljava/lang/String;)V

    return-void
.end method

.method private cancelTimeouts(Ljava/lang/String;)V
    .locals 2
    .param p1, "moPubId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 413
    iget-object v1, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mTimeoutMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 414
    .local v0, "runnable":Ljava/lang/Runnable;
    if-eqz v0, :cond_0

    .line 415
    iget-object v1, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mCustomEventTimeoutHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 417
    :cond_0
    return-void
.end method

.method static chooseReward(Lcom/mopub/common/MoPubReward;Lcom/mopub/common/MoPubReward;)Lcom/mopub/common/MoPubReward;
    .locals 1
    .param p0, "moPubReward"    # Lcom/mopub/common/MoPubReward;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "networkReward"    # Lcom/mopub/common/MoPubReward;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    .line 588
    invoke-virtual {p1}, Lcom/mopub/common/MoPubReward;->isSuccessful()Z

    move-result v0

    if-nez v0, :cond_0

    .line 592
    .end local p0    # "moPubReward":Lcom/mopub/common/MoPubReward;
    .end local p1    # "networkReward":Lcom/mopub/common/MoPubReward;
    :goto_0
    return-object p1

    .restart local p0    # "moPubReward":Lcom/mopub/common/MoPubReward;
    .restart local p1    # "networkReward":Lcom/mopub/common/MoPubReward;
    :cond_0
    if-eqz p0, :cond_1

    .end local p0    # "moPubReward":Lcom/mopub/common/MoPubReward;
    :goto_1
    move-object p1, p0

    goto :goto_0

    .restart local p0    # "moPubReward":Lcom/mopub/common/MoPubReward;
    :cond_1
    move-object p0, p1

    goto :goto_1
.end method

.method private failover(Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 2
    .param p1, "adUnitId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "errorCode"    # Lcom/mopub/mobileads/MoPubErrorCode;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 402
    iget-object v1, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mAdRequestStatus:Lcom/mopub/mobileads/AdRequestStatusMapping;

    invoke-virtual {v1, p1}, Lcom/mopub/mobileads/AdRequestStatusMapping;->getFailoverUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 403
    .local v0, "failoverUrl":Ljava/lang/String;
    iget-object v1, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mAdRequestStatus:Lcom/mopub/mobileads/AdRequestStatusMapping;

    invoke-virtual {v1, p1}, Lcom/mopub/mobileads/AdRequestStatusMapping;->markFail(Ljava/lang/String;)V

    .line 405
    if-eqz v0, :cond_1

    .line 406
    invoke-static {p1, v0}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->loadVideo(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    :cond_0
    :goto_0
    return-void

    .line 407
    :cond_1
    iget-object v1, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mVideoListener:Lcom/mopub/mobileads/MoPubRewardedVideoListener;

    if-eqz v1, :cond_0

    .line 408
    iget-object v1, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mVideoListener:Lcom/mopub/mobileads/MoPubRewardedVideoListener;

    invoke-interface {v1, p1, p2}, Lcom/mopub/mobileads/MoPubRewardedVideoListener;->onRewardedVideoLoadFailure(Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V

    goto :goto_0
.end method

.method public static getGlobalMediationSettings(Ljava/lang/Class;)Lcom/mopub/common/MediationSettings;
    .locals 4
    .param p0    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/mopub/common/MediationSettings;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v1, 0x0

    .line 141
    sget-object v2, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    if-nez v2, :cond_1

    .line 142
    invoke-static {}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->logErrorNotInitialized()V

    .line 153
    :cond_0
    :goto_0
    return-object v1

    .line 146
    :cond_1
    sget-object v2, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v2, v2, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mGlobalMediationSettings:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/common/MediationSettings;

    .line 148
    .local v0, "mediationSettings":Lcom/mopub/common/MediationSettings;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 149
    invoke-virtual {p0, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mopub/common/MediationSettings;

    goto :goto_0
.end method

.method public static getInstanceMediationSettings(Ljava/lang/Class;Ljava/lang/String;)Lcom/mopub/common/MediationSettings;
    .locals 5
    .param p0    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "adUnitId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/mopub/common/MediationSettings;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v2, 0x0

    .line 168
    sget-object v3, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    if-nez v3, :cond_1

    .line 169
    invoke-static {}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->logErrorNotInitialized()V

    .line 186
    :cond_0
    :goto_0
    return-object v2

    .line 173
    :cond_1
    sget-object v3, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v3, v3, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mInstanceMediationSettings:Ljava/util/Map;

    .line 174
    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 175
    .local v0, "instanceMediationSettings":Ljava/util/Set;, "Ljava/util/Set<Lcom/mopub/common/MediationSettings;>;"
    if-eqz v0, :cond_0

    .line 179
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mopub/common/MediationSettings;

    .line 181
    .local v1, "mediationSettings":Lcom/mopub/common/MediationSettings;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 182
    invoke-virtual {p0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mopub/common/MediationSettings;

    goto :goto_0
.end method

.method static getRewardedVideoData()Lcom/mopub/mobileads/RewardedVideoData;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 644
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    if-eqz v0, :cond_0

    .line 645
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v0, v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mRewardedVideoData:Lcom/mopub/mobileads/RewardedVideoData;

    .line 647
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasVideo(Ljava/lang/String;)Z
    .locals 2
    .param p0, "adUnitId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 260
    sget-object v1, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    if-eqz v1, :cond_0

    .line 261
    sget-object v1, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v1, v1, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mRewardedVideoData:Lcom/mopub/mobileads/RewardedVideoData;

    invoke-virtual {v1, p0}, Lcom/mopub/mobileads/RewardedVideoData;->getCustomEvent(Ljava/lang/String;)Lcom/mopub/mobileads/CustomEventRewardedVideo;

    move-result-object v0

    .line 262
    .local v0, "customEvent":Lcom/mopub/mobileads/CustomEventRewardedVideo;
    invoke-static {p0, v0}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->isPlayable(Ljava/lang/String;Lcom/mopub/mobileads/CustomEventRewardedVideo;)Z

    move-result v1

    .line 265
    .end local v0    # "customEvent":Lcom/mopub/mobileads/CustomEventRewardedVideo;
    :goto_0
    return v1

    .line 264
    :cond_0
    invoke-static {}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->logErrorNotInitialized()V

    .line 265
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static varargs declared-synchronized init(Landroid/app/Activity;[Lcom/mopub/common/MediationSettings;)V
    .locals 2
    .param p0, "mainActivity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "mediationSettings"    # [Lcom/mopub/common/MediationSettings;

    .prologue
    .line 115
    const-class v1, Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    if-nez v0, :cond_0

    .line 116
    new-instance v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    invoke-direct {v0, p0, p1}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;-><init>(Landroid/app/Activity;[Lcom/mopub/common/MediationSettings;)V

    sput-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    :goto_0
    monitor-exit v1

    return-void

    .line 118
    :cond_0
    :try_start_1
    const-string v0, "Tried to call initializeRewardedVideo more than once. Only the first initialization call has any effect."

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 115
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static isPlayable(Ljava/lang/String;Lcom/mopub/mobileads/CustomEventRewardedVideo;)Z
    .locals 1
    .param p0, "adUnitId"    # Ljava/lang/String;
    .param p1, "customEvent"    # Lcom/mopub/mobileads/CustomEventRewardedVideo;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 288
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v0, v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mAdRequestStatus:Lcom/mopub/mobileads/AdRequestStatusMapping;

    .line 289
    invoke-virtual {v0, p0}, Lcom/mopub/mobileads/AdRequestStatusMapping;->canPlay(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 291
    invoke-virtual {p1}, Lcom/mopub/mobileads/CustomEventRewardedVideo;->hasVideoAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 288
    :goto_0
    return v0

    .line 291
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static varargs loadVideo(Ljava/lang/String;Lcom/mopub/mobileads/MoPubRewardedVideoManager$RequestParameters;[Lcom/mopub/common/MediationSettings;)V
    .locals 6
    .param p0, "adUnitId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "requestParameters"    # Lcom/mopub/mobileads/MoPubRewardedVideoManager$RequestParameters;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "mediationSettings"    # [Lcom/mopub/common/MediationSettings;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x0

    .line 213
    sget-object v3, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    if-nez v3, :cond_0

    .line 214
    invoke-static {}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->logErrorNotInitialized()V

    .line 232
    :goto_0
    return-void

    .line 221
    :cond_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 222
    .local v1, "newInstanceMediationSettings":Ljava/util/Set;, "Ljava/util/Set<Lcom/mopub/common/MediationSettings;>;"
    invoke-static {v1, p2}, Lcom/mopub/common/util/MoPubCollections;->addAllNonNull(Ljava/util/Collection;[Ljava/lang/Object;)V

    .line 223
    sget-object v3, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v3, v3, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mInstanceMediationSettings:Ljava/util/Map;

    invoke-interface {v3, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    new-instance v2, Lcom/mopub/mobileads/WebViewAdUrlGenerator;

    sget-object v3, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v3, v3, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-direct {v2, v3, v5}, Lcom/mopub/mobileads/WebViewAdUrlGenerator;-><init>(Landroid/content/Context;Z)V

    .line 226
    .local v2, "urlGenerator":Lcom/mopub/common/AdUrlGenerator;
    invoke-virtual {v2, p0}, Lcom/mopub/common/AdUrlGenerator;->withAdUnitId(Ljava/lang/String;)Lcom/mopub/common/AdUrlGenerator;

    move-result-object v5

    if-nez p1, :cond_1

    move-object v3, v4

    .line 227
    :goto_1
    invoke-virtual {v5, v3}, Lcom/mopub/common/AdUrlGenerator;->withKeywords(Ljava/lang/String;)Lcom/mopub/common/AdUrlGenerator;

    move-result-object v3

    if-nez p1, :cond_2

    .line 228
    :goto_2
    invoke-virtual {v3, v4}, Lcom/mopub/common/AdUrlGenerator;->withLocation(Landroid/location/Location;)Lcom/mopub/common/AdUrlGenerator;

    move-result-object v3

    const-string v4, "ads.mopub.com"

    .line 229
    invoke-virtual {v3, v4}, Lcom/mopub/common/AdUrlGenerator;->generateUrlString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 231
    .local v0, "adUrlString":Ljava/lang/String;
    invoke-static {p0, v0}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->loadVideo(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 226
    .end local v0    # "adUrlString":Ljava/lang/String;
    :cond_1
    iget-object v3, p1, Lcom/mopub/mobileads/MoPubRewardedVideoManager$RequestParameters;->mKeywords:Ljava/lang/String;

    goto :goto_1

    .line 227
    :cond_2
    iget-object v4, p1, Lcom/mopub/mobileads/MoPubRewardedVideoManager$RequestParameters;->mLocation:Landroid/location/Location;

    goto :goto_2
.end method

.method private static loadVideo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p0, "adUnitId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "adUrlString"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 235
    sget-object v1, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    if-nez v1, :cond_0

    .line 236
    invoke-static {}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->logErrorNotInitialized()V

    .line 257
    :goto_0
    return-void

    .line 240
    :cond_0
    sget-object v1, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v1, v1, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mAdRequestStatus:Lcom/mopub/mobileads/AdRequestStatusMapping;

    invoke-virtual {v1, p0}, Lcom/mopub/mobileads/AdRequestStatusMapping;->isLoading(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 241
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "Did not queue rewarded video request for ad unit %s. A request is already pending."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 247
    :cond_1
    new-instance v0, Lcom/mopub/network/AdRequest;

    sget-object v2, Lcom/mopub/common/AdFormat;->REWARDED_VIDEO:Lcom/mopub/common/AdFormat;

    sget-object v1, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v4, v1, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mContext:Landroid/content/Context;

    new-instance v5, Lcom/mopub/mobileads/MoPubRewardedVideoManager$RewardedVideoRequestListener;

    sget-object v1, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    invoke-direct {v5, v1, p0}, Lcom/mopub/mobileads/MoPubRewardedVideoManager$RewardedVideoRequestListener;-><init>(Lcom/mopub/mobileads/MoPubRewardedVideoManager;Ljava/lang/String;)V

    move-object v1, p1

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/mopub/network/AdRequest;-><init>(Ljava/lang/String;Lcom/mopub/common/AdFormat;Ljava/lang/String;Landroid/content/Context;Lcom/mopub/network/AdRequest$Listener;)V

    .line 254
    .local v0, "request":Lcom/mopub/network/AdRequest;
    sget-object v1, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v1, v1, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/mopub/network/Networking;->getRequestQueue(Landroid/content/Context;)Lcom/mopub/network/MoPubRequestQueue;

    move-result-object v6

    .line 255
    .local v6, "requestQueue":Lcom/mopub/volley/RequestQueue;
    invoke-virtual {v6, v0}, Lcom/mopub/volley/RequestQueue;->add(Lcom/mopub/volley/Request;)Lcom/mopub/volley/Request;

    .line 256
    sget-object v1, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v1, v1, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mAdRequestStatus:Lcom/mopub/mobileads/AdRequestStatusMapping;

    invoke-virtual {v1, p0}, Lcom/mopub/mobileads/AdRequestStatusMapping;->markLoading(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static logErrorNotInitialized()V
    .locals 1

    .prologue
    .line 607
    const-string v0, "MoPub rewarded video was not initialized. You must call MoPub.initializeRewardedVideo() before loading or attempting to play video ads."

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->e(Ljava/lang/String;)V

    .line 610
    return-void
.end method

.method private onAdError(Lcom/mopub/volley/VolleyError;Ljava/lang/String;)V
    .locals 4
    .param p1, "volleyError"    # Lcom/mopub/volley/VolleyError;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "adUnitId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 381
    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->INTERNAL_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 382
    .local v1, "errorCode":Lcom/mopub/mobileads/MoPubErrorCode;
    instance-of v2, p1, Lcom/mopub/network/MoPubNetworkError;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 383
    check-cast v0, Lcom/mopub/network/MoPubNetworkError;

    .line 384
    .local v0, "err":Lcom/mopub/network/MoPubNetworkError;
    sget-object v2, Lcom/mopub/mobileads/MoPubRewardedVideoManager$13;->$SwitchMap$com$mopub$network$MoPubNetworkError$Reason:[I

    invoke-virtual {v0}, Lcom/mopub/network/MoPubNetworkError;->getReason()Lcom/mopub/network/MoPubNetworkError$Reason;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mopub/network/MoPubNetworkError$Reason;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 392
    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->INTERNAL_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 395
    .end local v0    # "err":Lcom/mopub/network/MoPubNetworkError;
    :cond_0
    :goto_0
    instance-of v2, p1, Lcom/mopub/volley/NoConnectionError;

    if-eqz v2, :cond_1

    .line 396
    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->NO_CONNECTION:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 398
    :cond_1
    invoke-direct {p0, p2, v1}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->failover(Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V

    .line 399
    return-void

    .line 387
    .restart local v0    # "err":Lcom/mopub/network/MoPubNetworkError;
    :pswitch_0
    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->NO_FILL:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 388
    goto :goto_0

    .line 384
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private onAdSuccess(Lcom/mopub/network/AdResponse;Ljava/lang/String;)V
    .locals 16
    .param p1, "adResponse"    # Lcom/mopub/network/AdResponse;
    .param p2, "adUnitId"    # Ljava/lang/String;

    .prologue
    .line 296
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mAdRequestStatus:Lcom/mopub/mobileads/AdRequestStatusMapping;

    .line 297
    invoke-virtual/range {p1 .. p1}, Lcom/mopub/network/AdResponse;->getFailoverUrl()Ljava/lang/String;

    move-result-object v13

    .line 298
    invoke-virtual/range {p1 .. p1}, Lcom/mopub/network/AdResponse;->getImpressionTrackingUrl()Ljava/lang/String;

    move-result-object v14

    .line 299
    invoke-virtual/range {p1 .. p1}, Lcom/mopub/network/AdResponse;->getClickTrackingUrl()Ljava/lang/String;

    move-result-object v15

    .line 296
    move-object/from16 v0, p2

    invoke-virtual {v12, v0, v13, v14, v15}, Lcom/mopub/mobileads/AdRequestStatusMapping;->markLoaded(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    invoke-virtual/range {p1 .. p1}, Lcom/mopub/network/AdResponse;->getAdTimeoutMillis()Ljava/lang/Integer;

    move-result-object v11

    .line 302
    .local v11, "timeoutMillis":Ljava/lang/Integer;
    if-eqz v11, :cond_0

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-gtz v12, :cond_1

    .line 303
    :cond_0
    const/16 v12, 0x7530

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 306
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/mopub/network/AdResponse;->getCustomEventClassName()Ljava/lang/String;

    move-result-object v4

    .line 308
    .local v4, "customEventClassName":Ljava/lang/String;
    if-nez v4, :cond_2

    .line 309
    const-string v12, "Couldn\'t create custom event, class name was null."

    invoke-static {v12}, Lcom/mopub/common/logging/MoPubLog;->e(Ljava/lang/String;)V

    .line 310
    sget-object v12, Lcom/mopub/mobileads/MoPubErrorCode;->ADAPTER_CONFIGURATION_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v12}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->failover(Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V

    .line 378
    :goto_0
    return-void

    .line 316
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mRewardedVideoData:Lcom/mopub/mobileads/RewardedVideoData;

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Lcom/mopub/mobileads/RewardedVideoData;->getCustomEvent(Ljava/lang/String;)Lcom/mopub/mobileads/CustomEventRewardedVideo;

    move-result-object v9

    .line 318
    .local v9, "oldRewardedVideo":Lcom/mopub/mobileads/CustomEventRewardedVideo;
    if-eqz v9, :cond_3

    .line 319
    invoke-virtual {v9}, Lcom/mopub/mobileads/CustomEventRewardedVideo;->onInvalidate()V

    .line 324
    :cond_3
    :try_start_0
    const-class v12, Lcom/mopub/mobileads/CustomEventRewardedVideo;

    .line 325
    invoke-static {v4, v12}, Lcom/mopub/common/util/Reflection;->instantiateClassWithEmptyConstructor(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mopub/mobileads/CustomEventRewardedVideo;

    .line 330
    .local v3, "customEvent":Lcom/mopub/mobileads/CustomEventRewardedVideo;
    new-instance v7, Ljava/util/TreeMap;

    invoke-direct {v7}, Ljava/util/TreeMap;-><init>()V

    .line 331
    .local v7, "localExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v12, "com_mopub_ad_unit_id"

    move-object/from16 v0, p2

    invoke-interface {v7, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    const-string v12, "Rewarded-Video-Currency-Name"

    .line 333
    invoke-virtual/range {p1 .. p1}, Lcom/mopub/network/AdResponse;->getRewardedVideoCurrencyName()Ljava/lang/String;

    move-result-object v13

    .line 332
    invoke-interface {v7, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    const-string v12, "Rewarded-Video-Currency-Value-String"

    .line 335
    invoke-virtual/range {p1 .. p1}, Lcom/mopub/network/AdResponse;->getRewardedVideoCurrencyAmount()Ljava/lang/String;

    move-result-object v13

    .line 334
    invoke-interface {v7, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    const-string v12, "mopub-intent-ad-report"

    new-instance v13, Lcom/mopub/common/AdReport;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mContext:Landroid/content/Context;

    .line 337
    invoke-static {v14}, Lcom/mopub/common/ClientMetadata;->getInstance(Landroid/content/Context;)Lcom/mopub/common/ClientMetadata;

    move-result-object v14

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-direct {v13, v0, v14, v1}, Lcom/mopub/common/AdReport;-><init>(Ljava/lang/String;Lcom/mopub/common/ClientMetadata;Lcom/mopub/network/AdResponse;)V

    .line 336
    invoke-interface {v7, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    const-string v12, "broadcastIdentifier"

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mBroadcastIdentifier:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-interface {v7, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mRewardedVideoData:Lcom/mopub/mobileads/RewardedVideoData;

    .line 340
    invoke-virtual/range {p1 .. p1}, Lcom/mopub/network/AdResponse;->getRewardedVideoCurrencyName()Ljava/lang/String;

    move-result-object v13

    .line 341
    invoke-virtual/range {p1 .. p1}, Lcom/mopub/network/AdResponse;->getRewardedVideoCurrencyAmount()Ljava/lang/String;

    move-result-object v14

    .line 339
    move-object/from16 v0, p2

    invoke-virtual {v12, v0, v13, v14}, Lcom/mopub/mobileads/RewardedVideoData;->updateAdUnitRewardMapping(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mMainActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v12}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/Activity;

    .line 344
    .local v8, "mainActivity":Landroid/app/Activity;
    if-nez v8, :cond_4

    .line 345
    const-string v12, "Could not load custom event because Activity reference was null. Call MoPub#updateActivity before requesting more rewarded videos."

    invoke-static {v12}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 350
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mAdRequestStatus:Lcom/mopub/mobileads/AdRequestStatusMapping;

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Lcom/mopub/mobileads/AdRequestStatusMapping;->markFail(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 374
    .end local v3    # "customEvent":Lcom/mopub/mobileads/CustomEventRewardedVideo;
    .end local v7    # "localExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v8    # "mainActivity":Landroid/app/Activity;
    :catch_0
    move-exception v5

    .line 375
    .local v5, "e":Ljava/lang/Exception;
    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v13, "Couldn\'t create custom event with class name %s"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v4, v14, v15

    invoke-static {v12, v13, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/mopub/common/logging/MoPubLog;->e(Ljava/lang/String;)V

    .line 376
    sget-object v12, Lcom/mopub/mobileads/MoPubErrorCode;->ADAPTER_CONFIGURATION_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v12}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->failover(Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V

    goto/16 :goto_0

    .line 355
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v3    # "customEvent":Lcom/mopub/mobileads/CustomEventRewardedVideo;
    .restart local v7    # "localExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v8    # "mainActivity":Landroid/app/Activity;
    :cond_4
    :try_start_1
    new-instance v10, Lcom/mopub/mobileads/MoPubRewardedVideoManager$1;

    move-object/from16 v0, p0

    invoke-direct {v10, v0, v3}, Lcom/mopub/mobileads/MoPubRewardedVideoManager$1;-><init>(Lcom/mopub/mobileads/MoPubRewardedVideoManager;Lcom/mopub/mobileads/CustomEventRewardedVideo;)V

    .line 364
    .local v10, "timeout":Ljava/lang/Runnable;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mCustomEventTimeoutHandler:Landroid/os/Handler;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v13

    int-to-long v14, v13

    invoke-virtual {v12, v10, v14, v15}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 365
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mTimeoutMap:Ljava/util/Map;

    move-object/from16 v0, p2

    invoke-interface {v12, v0, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    invoke-virtual/range {p1 .. p1}, Lcom/mopub/network/AdResponse;->getServerExtras()Ljava/util/Map;

    move-result-object v12

    invoke-virtual {v3, v8, v7, v12}, Lcom/mopub/mobileads/CustomEventRewardedVideo;->loadCustomEvent(Landroid/app/Activity;Ljava/util/Map;Ljava/util/Map;)V

    .line 371
    invoke-virtual {v3}, Lcom/mopub/mobileads/CustomEventRewardedVideo;->getVideoListenerForSdk()Lcom/mopub/mobileads/CustomEventRewardedVideo$CustomEventRewardedVideoListener;

    move-result-object v6

    .line 372
    .local v6, "listener":Lcom/mopub/mobileads/CustomEventRewardedVideo$CustomEventRewardedVideoListener;
    invoke-virtual {v3}, Lcom/mopub/mobileads/CustomEventRewardedVideo;->getAdNetworkId()Ljava/lang/String;

    move-result-object v2

    .line 373
    .local v2, "adNetworkId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mRewardedVideoData:Lcom/mopub/mobileads/RewardedVideoData;

    move-object/from16 v0, p2

    invoke-virtual {v12, v0, v3, v6, v2}, Lcom/mopub/mobileads/RewardedVideoData;->updateAdUnitCustomEventMapping(Ljava/lang/String;Lcom/mopub/mobileads/CustomEventRewardedVideo;Lcom/mopub/mobileads/CustomEventRewardedVideo$CustomEventRewardedVideoListener;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public static onRewardedVideoClicked(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 2
    .param p0    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "thirdPartyId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/mopub/mobileads/CustomEventRewardedVideo;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 515
    .local p0, "customEventClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    sget-object v1, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v1, v1, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mRewardedVideoData:Lcom/mopub/mobileads/RewardedVideoData;

    invoke-virtual {v1}, Lcom/mopub/mobileads/RewardedVideoData;->getCurrentAdUnitId()Ljava/lang/String;

    move-result-object v0

    .line 516
    .local v0, "currentAdUnitId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 517
    new-instance v1, Lcom/mopub/mobileads/MoPubRewardedVideoManager$8;

    invoke-direct {v1, p0, p1}, Lcom/mopub/mobileads/MoPubRewardedVideoManager$8;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->postToInstance(Ljava/lang/Runnable;)V

    .line 531
    :goto_0
    return-void

    .line 524
    :cond_0
    new-instance v1, Lcom/mopub/mobileads/MoPubRewardedVideoManager$9;

    invoke-direct {v1, v0}, Lcom/mopub/mobileads/MoPubRewardedVideoManager$9;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->postToInstance(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private static onRewardedVideoClickedAction(Ljava/lang/String;)V
    .locals 2
    .param p0, "adUnitId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 534
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 535
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v0, v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mAdRequestStatus:Lcom/mopub/mobileads/AdRequestStatusMapping;

    .line 536
    invoke-virtual {v0, p0}, Lcom/mopub/mobileads/AdRequestStatusMapping;->getClickTrackerUrlString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v1, v1, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mContext:Landroid/content/Context;

    .line 535
    invoke-static {v0, v1}, Lcom/mopub/network/TrackingRequest;->makeTrackingHttpRequest(Ljava/lang/String;Landroid/content/Context;)V

    .line 538
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v0, v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mAdRequestStatus:Lcom/mopub/mobileads/AdRequestStatusMapping;

    invoke-virtual {v0, p0}, Lcom/mopub/mobileads/AdRequestStatusMapping;->clearClickUrl(Ljava/lang/String;)V

    .line 539
    return-void
.end method

.method public static onRewardedVideoClosed(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 2
    .param p0    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "thirdPartyId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/mopub/mobileads/CustomEventRewardedVideo;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 543
    .local p0, "customEventClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    sget-object v1, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v1, v1, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mRewardedVideoData:Lcom/mopub/mobileads/RewardedVideoData;

    invoke-virtual {v1}, Lcom/mopub/mobileads/RewardedVideoData;->getCurrentAdUnitId()Ljava/lang/String;

    move-result-object v0

    .line 544
    .local v0, "currentAdUnitId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 545
    new-instance v1, Lcom/mopub/mobileads/MoPubRewardedVideoManager$10;

    invoke-direct {v1, p0, p1}, Lcom/mopub/mobileads/MoPubRewardedVideoManager$10;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->postToInstance(Ljava/lang/Runnable;)V

    .line 559
    :goto_0
    return-void

    .line 552
    :cond_0
    new-instance v1, Lcom/mopub/mobileads/MoPubRewardedVideoManager$11;

    invoke-direct {v1, v0}, Lcom/mopub/mobileads/MoPubRewardedVideoManager$11;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->postToInstance(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private static onRewardedVideoClosedAction(Ljava/lang/String;)V
    .locals 1
    .param p0, "adUnitId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 562
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 563
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v0, v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mVideoListener:Lcom/mopub/mobileads/MoPubRewardedVideoListener;

    if-eqz v0, :cond_0

    .line 564
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v0, v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mVideoListener:Lcom/mopub/mobileads/MoPubRewardedVideoListener;

    invoke-interface {v0, p0}, Lcom/mopub/mobileads/MoPubRewardedVideoListener;->onRewardedVideoClosed(Ljava/lang/String;)V

    .line 566
    :cond_0
    return-void
.end method

.method public static onRewardedVideoCompleted(Ljava/lang/Class;Ljava/lang/String;Lcom/mopub/common/MoPubReward;)V
    .locals 1
    .param p0    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "thirdPartyId"    # Ljava/lang/String;
    .param p2, "moPubReward"    # Lcom/mopub/common/MoPubReward;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/mopub/mobileads/CustomEventRewardedVideo;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            "Lcom/mopub/common/MoPubReward;",
            ")V"
        }
    .end annotation

    .prologue
    .line 571
    .local p0, "customEventClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager$12;

    invoke-direct {v0, p0, p2, p1}, Lcom/mopub/mobileads/MoPubRewardedVideoManager$12;-><init>(Ljava/lang/Class;Lcom/mopub/common/MoPubReward;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->postToInstance(Ljava/lang/Runnable;)V

    .line 584
    return-void
.end method

.method public static onRewardedVideoLoadFailure(Ljava/lang/Class;Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 1
    .param p0    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "thirdPartyId"    # Ljava/lang/String;
    .param p2, "errorCode"    # Lcom/mopub/mobileads/MoPubErrorCode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/mopub/mobileads/CustomEventRewardedVideo;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            "Lcom/mopub/mobileads/MoPubErrorCode;",
            ")V"
        }
    .end annotation

    .prologue
    .line 445
    .local p0, "customEventClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/mopub/mobileads/MoPubRewardedVideoManager$3;-><init>(Ljava/lang/Class;Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V

    invoke-static {v0}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->postToInstance(Ljava/lang/Runnable;)V

    .line 452
    return-void
.end method

.method public static onRewardedVideoLoadSuccess(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 1
    .param p0    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "thirdPartyId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/mopub/mobileads/CustomEventRewardedVideo;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 432
    .local p0, "customEventClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager$2;

    invoke-direct {v0, p0, p1}, Lcom/mopub/mobileads/MoPubRewardedVideoManager$2;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->postToInstance(Ljava/lang/Runnable;)V

    .line 441
    return-void
.end method

.method public static onRewardedVideoPlaybackError(Ljava/lang/Class;Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 2
    .param p0    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "thirdPartyId"    # Ljava/lang/String;
    .param p2, "errorCode"    # Lcom/mopub/mobileads/MoPubErrorCode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/mopub/mobileads/CustomEventRewardedVideo;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            "Lcom/mopub/mobileads/MoPubErrorCode;",
            ")V"
        }
    .end annotation

    .prologue
    .line 487
    .local p0, "customEventClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    sget-object v1, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v1, v1, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mRewardedVideoData:Lcom/mopub/mobileads/RewardedVideoData;

    invoke-virtual {v1}, Lcom/mopub/mobileads/RewardedVideoData;->getCurrentAdUnitId()Ljava/lang/String;

    move-result-object v0

    .line 488
    .local v0, "currentAdUnitId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 489
    new-instance v1, Lcom/mopub/mobileads/MoPubRewardedVideoManager$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/mopub/mobileads/MoPubRewardedVideoManager$6;-><init>(Ljava/lang/Class;Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V

    invoke-static {v1}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->postToInstance(Ljava/lang/Runnable;)V

    .line 503
    :goto_0
    return-void

    .line 496
    :cond_0
    new-instance v1, Lcom/mopub/mobileads/MoPubRewardedVideoManager$7;

    invoke-direct {v1, v0, p2}, Lcom/mopub/mobileads/MoPubRewardedVideoManager$7;-><init>(Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V

    invoke-static {v1}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->postToInstance(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private static onRewardedVideoPlaybackErrorAction(Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 1
    .param p0, "adUnitId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "errorCode"    # Lcom/mopub/mobileads/MoPubErrorCode;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 506
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 507
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 508
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v0, v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mVideoListener:Lcom/mopub/mobileads/MoPubRewardedVideoListener;

    if-eqz v0, :cond_0

    .line 509
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v0, v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mVideoListener:Lcom/mopub/mobileads/MoPubRewardedVideoListener;

    invoke-interface {v0, p0, p1}, Lcom/mopub/mobileads/MoPubRewardedVideoListener;->onRewardedVideoPlaybackError(Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V

    .line 511
    :cond_0
    return-void
.end method

.method public static onRewardedVideoStarted(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 2
    .param p0    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "thirdPartyId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/mopub/mobileads/CustomEventRewardedVideo;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 456
    .local p0, "customEventClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    sget-object v1, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v1, v1, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mRewardedVideoData:Lcom/mopub/mobileads/RewardedVideoData;

    invoke-virtual {v1}, Lcom/mopub/mobileads/RewardedVideoData;->getCurrentAdUnitId()Ljava/lang/String;

    move-result-object v0

    .line 457
    .local v0, "currentAdUnitId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 458
    new-instance v1, Lcom/mopub/mobileads/MoPubRewardedVideoManager$4;

    invoke-direct {v1, p0, p1}, Lcom/mopub/mobileads/MoPubRewardedVideoManager$4;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->postToInstance(Ljava/lang/Runnable;)V

    .line 472
    :goto_0
    return-void

    .line 465
    :cond_0
    new-instance v1, Lcom/mopub/mobileads/MoPubRewardedVideoManager$5;

    invoke-direct {v1, v0}, Lcom/mopub/mobileads/MoPubRewardedVideoManager$5;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->postToInstance(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private static onRewardedVideoStartedAction(Ljava/lang/String;)V
    .locals 2
    .param p0, "adUnitId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 475
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 476
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v0, v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mVideoListener:Lcom/mopub/mobileads/MoPubRewardedVideoListener;

    if-eqz v0, :cond_0

    .line 477
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v0, v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mVideoListener:Lcom/mopub/mobileads/MoPubRewardedVideoListener;

    invoke-interface {v0, p0}, Lcom/mopub/mobileads/MoPubRewardedVideoListener;->onRewardedVideoStarted(Ljava/lang/String;)V

    .line 479
    :cond_0
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v0, v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mAdRequestStatus:Lcom/mopub/mobileads/AdRequestStatusMapping;

    .line 480
    invoke-virtual {v0, p0}, Lcom/mopub/mobileads/AdRequestStatusMapping;->getImpressionTrackerUrlString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v1, v1, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mContext:Landroid/content/Context;

    .line 479
    invoke-static {v0, v1}, Lcom/mopub/network/TrackingRequest;->makeTrackingHttpRequest(Ljava/lang/String;Landroid/content/Context;)V

    .line 482
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v0, v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mAdRequestStatus:Lcom/mopub/mobileads/AdRequestStatusMapping;

    invoke-virtual {v0, p0}, Lcom/mopub/mobileads/AdRequestStatusMapping;->clearImpressionUrl(Ljava/lang/String;)V

    .line 483
    return-void
.end method

.method private static postToInstance(Ljava/lang/Runnable;)V
    .locals 1
    .param p0, "runnable"    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 601
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    if-eqz v0, :cond_0

    .line 602
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v0, v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mCallbackHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 604
    :cond_0
    return-void
.end method

.method public static setVideoListener(Lcom/mopub/mobileads/MoPubRewardedVideoListener;)V
    .locals 1
    .param p0, "listener"    # Lcom/mopub/mobileads/MoPubRewardedVideoListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 194
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    if-eqz v0, :cond_0

    .line 195
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iput-object p0, v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mVideoListener:Lcom/mopub/mobileads/MoPubRewardedVideoListener;

    .line 199
    :goto_0
    return-void

    .line 197
    :cond_0
    invoke-static {}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->logErrorNotInitialized()V

    goto :goto_0
.end method

.method public static showVideo(Ljava/lang/String;)V
    .locals 4
    .param p0, "adUnitId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 270
    sget-object v1, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    if-eqz v1, :cond_1

    .line 271
    sget-object v1, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v1, v1, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mRewardedVideoData:Lcom/mopub/mobileads/RewardedVideoData;

    invoke-virtual {v1, p0}, Lcom/mopub/mobileads/RewardedVideoData;->getCustomEvent(Ljava/lang/String;)Lcom/mopub/mobileads/CustomEventRewardedVideo;

    move-result-object v0

    .line 272
    .local v0, "customEvent":Lcom/mopub/mobileads/CustomEventRewardedVideo;
    invoke-static {p0, v0}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->isPlayable(Ljava/lang/String;Lcom/mopub/mobileads/CustomEventRewardedVideo;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 273
    sget-object v1, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v1, v1, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mRewardedVideoData:Lcom/mopub/mobileads/RewardedVideoData;

    .line 274
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    sget-object v3, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v3, v3, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mRewardedVideoData:Lcom/mopub/mobileads/RewardedVideoData;

    .line 275
    invoke-virtual {v3, p0}, Lcom/mopub/mobileads/RewardedVideoData;->getMoPubReward(Ljava/lang/String;)Lcom/mopub/common/MoPubReward;

    move-result-object v3

    .line 273
    invoke-virtual {v1, v2, v3}, Lcom/mopub/mobileads/RewardedVideoData;->updateCustomEventLastShownRewardMapping(Ljava/lang/Class;Lcom/mopub/common/MoPubReward;)V

    .line 276
    sget-object v1, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v1, v1, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mRewardedVideoData:Lcom/mopub/mobileads/RewardedVideoData;

    invoke-virtual {v1, p0}, Lcom/mopub/mobileads/RewardedVideoData;->setCurrentAdUnitId(Ljava/lang/String;)V

    .line 277
    sget-object v1, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v1, v1, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mAdRequestStatus:Lcom/mopub/mobileads/AdRequestStatusMapping;

    invoke-virtual {v1, p0}, Lcom/mopub/mobileads/AdRequestStatusMapping;->markPlayed(Ljava/lang/String;)V

    .line 278
    invoke-virtual {v0}, Lcom/mopub/mobileads/CustomEventRewardedVideo;->showVideo()V

    .line 285
    .end local v0    # "customEvent":Lcom/mopub/mobileads/CustomEventRewardedVideo;
    :goto_0
    return-void

    .line 280
    .restart local v0    # "customEvent":Lcom/mopub/mobileads/CustomEventRewardedVideo;
    :cond_0
    sget-object v1, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    sget-object v2, Lcom/mopub/mobileads/MoPubErrorCode;->VIDEO_NOT_AVAILABLE:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-direct {v1, p0, v2}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->failover(Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V

    goto :goto_0

    .line 283
    .end local v0    # "customEvent":Lcom/mopub/mobileads/CustomEventRewardedVideo;
    :cond_1
    invoke-static {}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->logErrorNotInitialized()V

    goto :goto_0
.end method

.method public static updateActivity(Landroid/app/Activity;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 124
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    if-eqz v0, :cond_0

    .line 125
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mMainActivity:Ljava/lang/ref/WeakReference;

    .line 129
    :goto_0
    return-void

    .line 127
    :cond_0
    invoke-static {}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->logErrorNotInitialized()V

    goto :goto_0
.end method
