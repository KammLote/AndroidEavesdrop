.class Lcom/mopub/nativeads/NativeAdSource;
.super Ljava/lang/Object;
.source "NativeAdSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/nativeads/NativeAdSource$AdSourceListener;
    }
.end annotation


# static fields
.field private static final CACHE_LIMIT:I = 0x1

.field private static final EXPIRATION_TIME_MILLISECONDS:I = 0xdbba0

.field private static final MAXIMUM_RETRY_TIME_MILLISECONDS:I = 0x493e0

.field static final RETRY_TIME_ARRAY_MILLISECONDS:[I
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private final mAdRendererRegistry:Lcom/mopub/nativeads/AdRendererRegistry;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mAdSourceListener:Lcom/mopub/nativeads/NativeAdSource$AdSourceListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field mCurrentRetries:I
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation
.end field

.field private mMoPubNative:Lcom/mopub/nativeads/MoPubNative;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mMoPubNativeNetworkListener:Lcom/mopub/nativeads/MoPubNative$MoPubNativeNetworkListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mNativeAdCache:Ljava/util/List;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mopub/nativeads/TimestampWrapper",
            "<",
            "Lcom/mopub/nativeads/NativeAd;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mReplenishCacheHandler:Landroid/os/Handler;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mReplenishCacheRunnable:Ljava/lang/Runnable;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field mRequestInFlight:Z
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation
.end field

.field private mRequestParameters:Lcom/mopub/nativeads/RequestParameters;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field mRetryInFlight:Z
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation
.end field

.field mSequenceNumber:I
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/mopub/nativeads/NativeAdSource;->RETRY_TIME_ARRAY_MILLISECONDS:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x3e8
        0xbb8
        0x1388
        0x61a8
        0xea60
        0x493e0
    .end array-data
.end method

.method constructor <init>()V
    .locals 3

    .prologue
    .line 71
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/mopub/nativeads/AdRendererRegistry;

    invoke-direct {v2}, Lcom/mopub/nativeads/AdRendererRegistry;-><init>()V

    invoke-direct {p0, v0, v1, v2}, Lcom/mopub/nativeads/NativeAdSource;-><init>(Ljava/util/List;Landroid/os/Handler;Lcom/mopub/nativeads/AdRendererRegistry;)V

    .line 74
    return-void
.end method

.method constructor <init>(Ljava/util/List;Landroid/os/Handler;Lcom/mopub/nativeads/AdRendererRegistry;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "replenishCacheHandler"    # Landroid/os/Handler;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "adRendererRegistry"    # Lcom/mopub/nativeads/AdRendererRegistry;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mopub/nativeads/TimestampWrapper",
            "<",
            "Lcom/mopub/nativeads/NativeAd;",
            ">;>;",
            "Landroid/os/Handler;",
            "Lcom/mopub/nativeads/AdRendererRegistry;",
            ")V"
        }
    .end annotation

    .prologue
    .line 79
    .local p1, "nativeAdCache":Ljava/util/List;, "Ljava/util/List<Lcom/mopub/nativeads/TimestampWrapper<Lcom/mopub/nativeads/NativeAd;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/mopub/nativeads/NativeAdSource;->mNativeAdCache:Ljava/util/List;

    .line 81
    iput-object p2, p0, Lcom/mopub/nativeads/NativeAdSource;->mReplenishCacheHandler:Landroid/os/Handler;

    .line 82
    new-instance v0, Lcom/mopub/nativeads/NativeAdSource$1;

    invoke-direct {v0, p0}, Lcom/mopub/nativeads/NativeAdSource$1;-><init>(Lcom/mopub/nativeads/NativeAdSource;)V

    iput-object v0, p0, Lcom/mopub/nativeads/NativeAdSource;->mReplenishCacheRunnable:Ljava/lang/Runnable;

    .line 90
    iput-object p3, p0, Lcom/mopub/nativeads/NativeAdSource;->mAdRendererRegistry:Lcom/mopub/nativeads/AdRendererRegistry;

    .line 93
    new-instance v0, Lcom/mopub/nativeads/NativeAdSource$2;

    invoke-direct {v0, p0}, Lcom/mopub/nativeads/NativeAdSource$2;-><init>(Lcom/mopub/nativeads/NativeAdSource;)V

    iput-object v0, p0, Lcom/mopub/nativeads/NativeAdSource;->mMoPubNativeNetworkListener:Lcom/mopub/nativeads/MoPubNative$MoPubNativeNetworkListener;

    .line 132
    const/4 v0, 0x0

    iput v0, p0, Lcom/mopub/nativeads/NativeAdSource;->mSequenceNumber:I

    .line 133
    invoke-virtual {p0}, Lcom/mopub/nativeads/NativeAdSource;->resetRetryTime()V

    .line 134
    return-void
.end method

.method static synthetic access$000(Lcom/mopub/nativeads/NativeAdSource;)Lcom/mopub/nativeads/MoPubNative;
    .locals 1
    .param p0, "x0"    # Lcom/mopub/nativeads/NativeAdSource;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/mopub/nativeads/NativeAdSource;->mMoPubNative:Lcom/mopub/nativeads/MoPubNative;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mopub/nativeads/NativeAdSource;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/mopub/nativeads/NativeAdSource;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/mopub/nativeads/NativeAdSource;->mNativeAdCache:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mopub/nativeads/NativeAdSource;)Lcom/mopub/nativeads/NativeAdSource$AdSourceListener;
    .locals 1
    .param p0, "x0"    # Lcom/mopub/nativeads/NativeAdSource;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/mopub/nativeads/NativeAdSource;->mAdSourceListener:Lcom/mopub/nativeads/NativeAdSource$AdSourceListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mopub/nativeads/NativeAdSource;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/mopub/nativeads/NativeAdSource;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/mopub/nativeads/NativeAdSource;->mReplenishCacheRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mopub/nativeads/NativeAdSource;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/mopub/nativeads/NativeAdSource;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/mopub/nativeads/NativeAdSource;->mReplenishCacheHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method clear()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 195
    iget-object v1, p0, Lcom/mopub/nativeads/NativeAdSource;->mMoPubNative:Lcom/mopub/nativeads/MoPubNative;

    if-eqz v1, :cond_0

    .line 196
    iget-object v1, p0, Lcom/mopub/nativeads/NativeAdSource;->mMoPubNative:Lcom/mopub/nativeads/MoPubNative;

    invoke-virtual {v1}, Lcom/mopub/nativeads/MoPubNative;->destroy()V

    .line 197
    iput-object v2, p0, Lcom/mopub/nativeads/NativeAdSource;->mMoPubNative:Lcom/mopub/nativeads/MoPubNative;

    .line 200
    :cond_0
    iput-object v2, p0, Lcom/mopub/nativeads/NativeAdSource;->mRequestParameters:Lcom/mopub/nativeads/RequestParameters;

    .line 202
    iget-object v1, p0, Lcom/mopub/nativeads/NativeAdSource;->mNativeAdCache:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/nativeads/TimestampWrapper;

    .line 203
    .local v0, "timestampWrapper":Lcom/mopub/nativeads/TimestampWrapper;, "Lcom/mopub/nativeads/TimestampWrapper<Lcom/mopub/nativeads/NativeAd;>;"
    iget-object v1, v0, Lcom/mopub/nativeads/TimestampWrapper;->mInstance:Ljava/lang/Object;

    check-cast v1, Lcom/mopub/nativeads/NativeAd;

    invoke-virtual {v1}, Lcom/mopub/nativeads/NativeAd;->destroy()V

    goto :goto_0

    .line 205
    .end local v0    # "timestampWrapper":Lcom/mopub/nativeads/TimestampWrapper;, "Lcom/mopub/nativeads/TimestampWrapper<Lcom/mopub/nativeads/NativeAd;>;"
    :cond_1
    iget-object v1, p0, Lcom/mopub/nativeads/NativeAdSource;->mNativeAdCache:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 207
    iget-object v1, p0, Lcom/mopub/nativeads/NativeAdSource;->mReplenishCacheHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 208
    iput-boolean v3, p0, Lcom/mopub/nativeads/NativeAdSource;->mRequestInFlight:Z

    .line 209
    iput v3, p0, Lcom/mopub/nativeads/NativeAdSource;->mSequenceNumber:I

    .line 210
    invoke-virtual {p0}, Lcom/mopub/nativeads/NativeAdSource;->resetRetryTime()V

    .line 211
    return-void
.end method

.method dequeueAd()Lcom/mopub/nativeads/NativeAd;
    .locals 8
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 225
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 228
    .local v0, "now":J
    iget-boolean v3, p0, Lcom/mopub/nativeads/NativeAdSource;->mRequestInFlight:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/mopub/nativeads/NativeAdSource;->mRetryInFlight:Z

    if-nez v3, :cond_0

    .line 229
    iget-object v3, p0, Lcom/mopub/nativeads/NativeAdSource;->mReplenishCacheHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/mopub/nativeads/NativeAdSource;->mReplenishCacheRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 233
    :cond_0
    iget-object v3, p0, Lcom/mopub/nativeads/NativeAdSource;->mNativeAdCache:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 234
    iget-object v3, p0, Lcom/mopub/nativeads/NativeAdSource;->mNativeAdCache:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mopub/nativeads/TimestampWrapper;

    .line 236
    .local v2, "responseWrapper":Lcom/mopub/nativeads/TimestampWrapper;, "Lcom/mopub/nativeads/TimestampWrapper<Lcom/mopub/nativeads/NativeAd;>;"
    iget-wide v4, v2, Lcom/mopub/nativeads/TimestampWrapper;->mCreatedTimestamp:J

    sub-long v4, v0, v4

    const-wide/32 v6, 0xdbba0

    cmp-long v3, v4, v6

    if-gez v3, :cond_0

    .line 237
    iget-object v3, v2, Lcom/mopub/nativeads/TimestampWrapper;->mInstance:Ljava/lang/Object;

    check-cast v3, Lcom/mopub/nativeads/NativeAd;

    .line 240
    .end local v2    # "responseWrapper":Lcom/mopub/nativeads/TimestampWrapper;, "Lcom/mopub/nativeads/TimestampWrapper<Lcom/mopub/nativeads/NativeAd;>;"
    :goto_0
    return-object v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method getAdRendererCount()I
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/mopub/nativeads/NativeAdSource;->mAdRendererRegistry:Lcom/mopub/nativeads/AdRendererRegistry;

    invoke-virtual {v0}, Lcom/mopub/nativeads/AdRendererRegistry;->getAdRendererCount()I

    move-result v0

    return v0
.end method

.method public getAdRendererForViewType(I)Lcom/mopub/nativeads/MoPubAdRenderer;
    .locals 1
    .param p1, "viewType"    # I
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 158
    iget-object v0, p0, Lcom/mopub/nativeads/NativeAdSource;->mAdRendererRegistry:Lcom/mopub/nativeads/AdRendererRegistry;

    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/AdRendererRegistry;->getRendererForViewType(I)Lcom/mopub/nativeads/MoPubAdRenderer;

    move-result-object v0

    return-object v0
.end method

.method getMoPubNativeNetworkListener()Lcom/mopub/nativeads/MoPubNative$MoPubNativeNetworkListener;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 286
    iget-object v0, p0, Lcom/mopub/nativeads/NativeAdSource;->mMoPubNativeNetworkListener:Lcom/mopub/nativeads/MoPubNative$MoPubNativeNetworkListener;

    return-object v0
.end method

.method getRetryTime()I
    .locals 2
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    .line 257
    iget v0, p0, Lcom/mopub/nativeads/NativeAdSource;->mCurrentRetries:I

    sget-object v1, Lcom/mopub/nativeads/NativeAdSource;->RETRY_TIME_ARRAY_MILLISECONDS:[I

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 258
    sget-object v0, Lcom/mopub/nativeads/NativeAdSource;->RETRY_TIME_ARRAY_MILLISECONDS:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/mopub/nativeads/NativeAdSource;->mCurrentRetries:I

    .line 260
    :cond_0
    sget-object v0, Lcom/mopub/nativeads/NativeAdSource;->RETRY_TIME_ARRAY_MILLISECONDS:[I

    iget v1, p0, Lcom/mopub/nativeads/NativeAdSource;->mCurrentRetries:I

    aget v0, v0, v1

    return v0
.end method

.method public getViewTypeForAd(Lcom/mopub/nativeads/NativeAd;)I
    .locals 1
    .param p1, "nativeAd"    # Lcom/mopub/nativeads/NativeAd;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 141
    iget-object v0, p0, Lcom/mopub/nativeads/NativeAdSource;->mAdRendererRegistry:Lcom/mopub/nativeads/AdRendererRegistry;

    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/AdRendererRegistry;->getViewTypeForAd(Lcom/mopub/nativeads/NativeAd;)I

    move-result v0

    return v0
.end method

.method loadAds(Landroid/app/Activity;Ljava/lang/String;Lcom/mopub/nativeads/RequestParameters;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "adUnitId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "requestParameters"    # Lcom/mopub/nativeads/RequestParameters;

    .prologue
    .line 172
    new-instance v0, Lcom/mopub/nativeads/MoPubNative;

    iget-object v1, p0, Lcom/mopub/nativeads/NativeAdSource;->mMoPubNativeNetworkListener:Lcom/mopub/nativeads/MoPubNative$MoPubNativeNetworkListener;

    invoke-direct {v0, p1, p2, v1}, Lcom/mopub/nativeads/MoPubNative;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/mopub/nativeads/MoPubNative$MoPubNativeNetworkListener;)V

    invoke-virtual {p0, p3, v0}, Lcom/mopub/nativeads/NativeAdSource;->loadAds(Lcom/mopub/nativeads/RequestParameters;Lcom/mopub/nativeads/MoPubNative;)V

    .line 173
    return-void
.end method

.method loadAds(Lcom/mopub/nativeads/RequestParameters;Lcom/mopub/nativeads/MoPubNative;)V
    .locals 3
    .param p1, "requestParameters"    # Lcom/mopub/nativeads/RequestParameters;
    .param p2, "moPubNative"    # Lcom/mopub/nativeads/MoPubNative;
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/mopub/nativeads/NativeAdSource;->clear()V

    .line 180
    iget-object v1, p0, Lcom/mopub/nativeads/NativeAdSource;->mAdRendererRegistry:Lcom/mopub/nativeads/AdRendererRegistry;

    invoke-virtual {v1}, Lcom/mopub/nativeads/AdRendererRegistry;->getRendererIterable()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/nativeads/MoPubAdRenderer;

    .line 181
    .local v0, "renderer":Lcom/mopub/nativeads/MoPubAdRenderer;
    invoke-virtual {p2, v0}, Lcom/mopub/nativeads/MoPubNative;->registerAdRenderer(Lcom/mopub/nativeads/MoPubAdRenderer;)V

    goto :goto_0

    .line 184
    .end local v0    # "renderer":Lcom/mopub/nativeads/MoPubAdRenderer;
    :cond_0
    iput-object p1, p0, Lcom/mopub/nativeads/NativeAdSource;->mRequestParameters:Lcom/mopub/nativeads/RequestParameters;

    .line 185
    iput-object p2, p0, Lcom/mopub/nativeads/NativeAdSource;->mMoPubNative:Lcom/mopub/nativeads/MoPubNative;

    .line 187
    invoke-virtual {p0}, Lcom/mopub/nativeads/NativeAdSource;->replenishCache()V

    .line 188
    return-void
.end method

.method registerAdRenderer(Lcom/mopub/nativeads/MoPubAdRenderer;)V
    .locals 1
    .param p1, "moPubNativeAdRenderer"    # Lcom/mopub/nativeads/MoPubAdRenderer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 150
    iget-object v0, p0, Lcom/mopub/nativeads/NativeAdSource;->mAdRendererRegistry:Lcom/mopub/nativeads/AdRendererRegistry;

    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/AdRendererRegistry;->registerAdRenderer(Lcom/mopub/nativeads/MoPubAdRenderer;)V

    .line 151
    iget-object v0, p0, Lcom/mopub/nativeads/NativeAdSource;->mMoPubNative:Lcom/mopub/nativeads/MoPubNative;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/mopub/nativeads/NativeAdSource;->mMoPubNative:Lcom/mopub/nativeads/MoPubNative;

    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/MoPubNative;->registerAdRenderer(Lcom/mopub/nativeads/MoPubAdRenderer;)V

    .line 154
    :cond_0
    return-void
.end method

.method replenishCache()V
    .locals 3
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 270
    iget-boolean v0, p0, Lcom/mopub/nativeads/NativeAdSource;->mRequestInFlight:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mopub/nativeads/NativeAdSource;->mMoPubNative:Lcom/mopub/nativeads/MoPubNative;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/nativeads/NativeAdSource;->mNativeAdCache:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v1, :cond_0

    .line 271
    iput-boolean v1, p0, Lcom/mopub/nativeads/NativeAdSource;->mRequestInFlight:Z

    .line 272
    iget-object v0, p0, Lcom/mopub/nativeads/NativeAdSource;->mMoPubNative:Lcom/mopub/nativeads/MoPubNative;

    iget-object v1, p0, Lcom/mopub/nativeads/NativeAdSource;->mRequestParameters:Lcom/mopub/nativeads/RequestParameters;

    iget v2, p0, Lcom/mopub/nativeads/NativeAdSource;->mSequenceNumber:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mopub/nativeads/MoPubNative;->makeRequest(Lcom/mopub/nativeads/RequestParameters;Ljava/lang/Integer;)V

    .line 274
    :cond_0
    return-void
.end method

.method resetRetryTime()V
    .locals 1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    .line 252
    const/4 v0, 0x0

    iput v0, p0, Lcom/mopub/nativeads/NativeAdSource;->mCurrentRetries:I

    .line 253
    return-void
.end method

.method setAdSourceListener(Lcom/mopub/nativeads/NativeAdSource$AdSourceListener;)V
    .locals 0
    .param p1, "adSourceListener"    # Lcom/mopub/nativeads/NativeAdSource$AdSourceListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 166
    iput-object p1, p0, Lcom/mopub/nativeads/NativeAdSource;->mAdSourceListener:Lcom/mopub/nativeads/NativeAdSource$AdSourceListener;

    .line 167
    return-void
.end method

.method setMoPubNative(Lcom/mopub/nativeads/MoPubNative;)V
    .locals 0
    .param p1, "moPubNative"    # Lcom/mopub/nativeads/MoPubNative;
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 279
    iput-object p1, p0, Lcom/mopub/nativeads/NativeAdSource;->mMoPubNative:Lcom/mopub/nativeads/MoPubNative;

    .line 280
    return-void
.end method

.method updateRetryTime()V
    .locals 2
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    .line 245
    iget v0, p0, Lcom/mopub/nativeads/NativeAdSource;->mCurrentRetries:I

    sget-object v1, Lcom/mopub/nativeads/NativeAdSource;->RETRY_TIME_ARRAY_MILLISECONDS:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 246
    iget v0, p0, Lcom/mopub/nativeads/NativeAdSource;->mCurrentRetries:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mopub/nativeads/NativeAdSource;->mCurrentRetries:I

    .line 248
    :cond_0
    return-void
.end method
