.class public Lcom/mopub/network/AdRequest;
.super Lcom/mopub/volley/Request;
.source "AdRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/network/AdRequest$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mopub/volley/Request",
        "<",
        "Lcom/mopub/network/AdResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAdFormat:Lcom/mopub/common/AdFormat;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mAdUnitId:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mListener:Lcom/mopub/network/AdRequest$Listener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/mopub/common/AdFormat;Ljava/lang/String;Landroid/content/Context;Lcom/mopub/network/AdRequest$Listener;)V
    .locals 5
    .param p1, "url"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "adFormat"    # Lcom/mopub/common/AdFormat;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "adUnitId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5, "listener"    # Lcom/mopub/network/AdRequest$Listener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x0

    .line 62
    invoke-direct {p0, v4, p1, p5}, Lcom/mopub/volley/Request;-><init>(ILjava/lang/String;Lcom/mopub/volley/Response$ErrorListener;)V

    .line 63
    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 64
    invoke-static {p5}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 65
    iput-object p3, p0, Lcom/mopub/network/AdRequest;->mAdUnitId:Ljava/lang/String;

    .line 66
    iput-object p5, p0, Lcom/mopub/network/AdRequest;->mListener:Lcom/mopub/network/AdRequest$Listener;

    .line 67
    iput-object p2, p0, Lcom/mopub/network/AdRequest;->mAdFormat:Lcom/mopub/common/AdFormat;

    .line 68
    invoke-virtual {p4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/mopub/network/AdRequest;->mContext:Landroid/content/Context;

    .line 69
    new-instance v0, Lcom/mopub/volley/DefaultRetryPolicy;

    const/16 v1, 0x9c4

    const/4 v2, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3}, Lcom/mopub/volley/DefaultRetryPolicy;-><init>(IIF)V

    .line 73
    .local v0, "retryPolicy":Lcom/mopub/volley/DefaultRetryPolicy;
    invoke-virtual {p0, v0}, Lcom/mopub/network/AdRequest;->setRetryPolicy(Lcom/mopub/volley/RetryPolicy;)Lcom/mopub/volley/Request;

    .line 74
    invoke-virtual {p0, v4}, Lcom/mopub/network/AdRequest;->setShouldCache(Z)Lcom/mopub/volley/Request;

    .line 75
    return-void
.end method

.method private eventDataIsInResponseBody(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "adType"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "fullAdType"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 289
    const-string v0, "mraid"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "html"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "interstitial"

    .line 290
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "vast"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "rewarded_video"

    .line 291
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "vast"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 289
    :goto_0
    return v0

    .line 291
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected deliverResponse(Lcom/mopub/network/AdResponse;)V
    .locals 1
    .param p1, "adResponse"    # Lcom/mopub/network/AdResponse;

    .prologue
    .line 307
    iget-object v0, p0, Lcom/mopub/network/AdRequest;->mListener:Lcom/mopub/network/AdRequest$Listener;

    invoke-interface {v0, p1}, Lcom/mopub/network/AdRequest$Listener;->onSuccess(Lcom/mopub/network/AdResponse;)V

    .line 308
    return-void
.end method

.method protected bridge synthetic deliverResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 46
    check-cast p1, Lcom/mopub/network/AdResponse;

    invoke-virtual {p0, p1}, Lcom/mopub/network/AdRequest;->deliverResponse(Lcom/mopub/network/AdResponse;)V

    return-void
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 84
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 87
    .local v0, "headers":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 90
    .local v1, "languageCode":Ljava/lang/String;
    iget-object v3, p0, Lcom/mopub/network/AdRequest;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v2, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 91
    .local v2, "userLocale":Ljava/util/Locale;
    if-eqz v2, :cond_0

    .line 92
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 93
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 98
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 99
    sget-object v3, Lcom/mopub/common/util/ResponseHeader;->ACCEPT_LANGUAGE:Lcom/mopub/common/util/ResponseHeader;

    invoke-virtual {v3}, Lcom/mopub/common/util/ResponseHeader;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    :cond_1
    return-object v0
.end method

.method public getListener()Lcom/mopub/network/AdRequest$Listener;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 79
    iget-object v0, p0, Lcom/mopub/network/AdRequest;->mListener:Lcom/mopub/network/AdRequest$Listener;

    return-object v0
.end method

.method getRequestId(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "failUrl"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    .line 313
    if-nez p1, :cond_0

    .line 314
    const/4 v1, 0x0

    .line 325
    :goto_0
    return-object v1

    .line 317
    :cond_0
    const/4 v1, 0x0

    .line 318
    .local v1, "requestId":Ljava/lang/String;
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 320
    .local v2, "uri":Landroid/net/Uri;
    :try_start_0
    const-string v3, "request_id"

    invoke-virtual {v2, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 321
    :catch_0
    move-exception v0

    .line 322
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    const-string v3, "Unable to obtain request id from fail url."

    invoke-static {v3}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method logScribeEvent(Lcom/mopub/network/AdResponse;Lcom/mopub/volley/NetworkResponse;Landroid/location/Location;)V
    .locals 6
    .param p1, "adResponse"    # Lcom/mopub/network/AdResponse;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "networkResponse"    # Lcom/mopub/volley/NetworkResponse;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "location"    # Landroid/location/Location;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 331
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 332
    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 334
    new-instance v0, Lcom/mopub/common/event/Event$Builder;

    sget-object v2, Lcom/mopub/common/event/BaseEvent$Name;->AD_REQUEST:Lcom/mopub/common/event/BaseEvent$Name;

    sget-object v3, Lcom/mopub/common/event/BaseEvent$Category;->REQUESTS:Lcom/mopub/common/event/BaseEvent$Category;

    sget-object v4, Lcom/mopub/common/event/BaseEvent$SamplingRate;->AD_REQUEST:Lcom/mopub/common/event/BaseEvent$SamplingRate;

    .line 336
    invoke-virtual {v4}, Lcom/mopub/common/event/BaseEvent$SamplingRate;->getSamplingRate()D

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/mopub/common/event/Event$Builder;-><init>(Lcom/mopub/common/event/BaseEvent$Name;Lcom/mopub/common/event/BaseEvent$Category;D)V

    iget-object v2, p0, Lcom/mopub/network/AdRequest;->mAdUnitId:Ljava/lang/String;

    .line 337
    invoke-virtual {v0, v2}, Lcom/mopub/common/event/Event$Builder;->withAdUnitId(Ljava/lang/String;)Lcom/mopub/common/event/BaseEvent$Builder;

    move-result-object v0

    .line 338
    invoke-virtual {p1}, Lcom/mopub/network/AdResponse;->getDspCreativeId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mopub/common/event/BaseEvent$Builder;->withDspCreativeId(Ljava/lang/String;)Lcom/mopub/common/event/BaseEvent$Builder;

    move-result-object v0

    .line 339
    invoke-virtual {p1}, Lcom/mopub/network/AdResponse;->getAdType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mopub/common/event/BaseEvent$Builder;->withAdType(Ljava/lang/String;)Lcom/mopub/common/event/BaseEvent$Builder;

    move-result-object v0

    .line 340
    invoke-virtual {p1}, Lcom/mopub/network/AdResponse;->getNetworkType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mopub/common/event/BaseEvent$Builder;->withAdNetworkType(Ljava/lang/String;)Lcom/mopub/common/event/BaseEvent$Builder;

    move-result-object v2

    .line 341
    invoke-virtual {p1}, Lcom/mopub/network/AdResponse;->getWidth()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 342
    invoke-virtual {p1}, Lcom/mopub/network/AdResponse;->getWidth()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 341
    :goto_0
    invoke-virtual {v2, v0}, Lcom/mopub/common/event/BaseEvent$Builder;->withAdWidthPx(Ljava/lang/Double;)Lcom/mopub/common/event/BaseEvent$Builder;

    move-result-object v2

    .line 344
    invoke-virtual {p1}, Lcom/mopub/network/AdResponse;->getHeight()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 345
    invoke-virtual {p1}, Lcom/mopub/network/AdResponse;->getHeight()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 344
    :goto_1
    invoke-virtual {v2, v0}, Lcom/mopub/common/event/BaseEvent$Builder;->withAdHeightPx(Ljava/lang/Double;)Lcom/mopub/common/event/BaseEvent$Builder;

    move-result-object v2

    if-eqz p3, :cond_3

    .line 347
    invoke-virtual {p3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    :goto_2
    invoke-virtual {v2, v0}, Lcom/mopub/common/event/BaseEvent$Builder;->withGeoLat(Ljava/lang/Double;)Lcom/mopub/common/event/BaseEvent$Builder;

    move-result-object v2

    if-eqz p3, :cond_4

    .line 348
    invoke-virtual {p3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    :goto_3
    invoke-virtual {v2, v0}, Lcom/mopub/common/event/BaseEvent$Builder;->withGeoLon(Ljava/lang/Double;)Lcom/mopub/common/event/BaseEvent$Builder;

    move-result-object v0

    if-eqz p3, :cond_0

    .line 349
    invoke-virtual {p3}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    :cond_0
    invoke-virtual {v0, v1}, Lcom/mopub/common/event/BaseEvent$Builder;->withGeoAccuracy(Ljava/lang/Double;)Lcom/mopub/common/event/BaseEvent$Builder;

    move-result-object v0

    iget-wide v2, p2, Lcom/mopub/volley/NetworkResponse;->networkTimeMs:J

    long-to-double v2, v2

    .line 350
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mopub/common/event/BaseEvent$Builder;->withPerformanceDurationMs(Ljava/lang/Double;)Lcom/mopub/common/event/BaseEvent$Builder;

    move-result-object v0

    .line 351
    invoke-virtual {p1}, Lcom/mopub/network/AdResponse;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mopub/common/event/BaseEvent$Builder;->withRequestId(Ljava/lang/String;)Lcom/mopub/common/event/BaseEvent$Builder;

    move-result-object v0

    iget v1, p2, Lcom/mopub/volley/NetworkResponse;->statusCode:I

    .line 352
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mopub/common/event/BaseEvent$Builder;->withRequestStatusCode(Ljava/lang/Integer;)Lcom/mopub/common/event/BaseEvent$Builder;

    move-result-object v0

    .line 353
    invoke-virtual {p0}, Lcom/mopub/network/AdRequest;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mopub/common/event/BaseEvent$Builder;->withRequestUri(Ljava/lang/String;)Lcom/mopub/common/event/BaseEvent$Builder;

    move-result-object v0

    .line 354
    invoke-virtual {v0}, Lcom/mopub/common/event/BaseEvent$Builder;->build()Lcom/mopub/common/event/BaseEvent;

    move-result-object v0

    .line 334
    invoke-static {v0}, Lcom/mopub/common/event/MoPubEvents;->log(Lcom/mopub/common/event/BaseEvent;)V

    .line 356
    return-void

    :cond_1
    move-object v0, v1

    .line 342
    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 345
    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 347
    goto :goto_2

    :cond_4
    move-object v0, v1

    .line 348
    goto :goto_3
.end method

.method protected parseNetworkResponse(Lcom/mopub/volley/NetworkResponse;)Lcom/mopub/volley/Response;
    .locals 34
    .param p1, "networkResponse"    # Lcom/mopub/volley/NetworkResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mopub/volley/NetworkResponse;",
            ")",
            "Lcom/mopub/volley/Response",
            "<",
            "Lcom/mopub/network/AdResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 110
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/mopub/volley/NetworkResponse;->headers:Ljava/util/Map;

    .line 111
    .local v15, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v29, Lcom/mopub/common/util/ResponseHeader;->WARMUP:Lcom/mopub/common/util/ResponseHeader;

    const/16 v30, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v30

    invoke-static {v15, v0, v1}, Lcom/mopub/network/HeaderUtils;->extractBooleanHeader(Ljava/util/Map;Lcom/mopub/common/util/ResponseHeader;Z)Z

    move-result v29

    if-eqz v29, :cond_0

    .line 112
    new-instance v29, Lcom/mopub/network/MoPubNetworkError;

    const-string v30, "Ad Unit is warming up."

    sget-object v31, Lcom/mopub/network/MoPubNetworkError$Reason;->WARMING_UP:Lcom/mopub/network/MoPubNetworkError$Reason;

    invoke-direct/range {v29 .. v31}, Lcom/mopub/network/MoPubNetworkError;-><init>(Ljava/lang/String;Lcom/mopub/network/MoPubNetworkError$Reason;)V

    invoke-static/range {v29 .. v29}, Lcom/mopub/volley/Response;->error(Lcom/mopub/volley/VolleyError;)Lcom/mopub/volley/Response;

    move-result-object v29

    .line 283
    :goto_0
    return-object v29

    .line 116
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mopub/network/AdRequest;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    .line 117
    invoke-static {}, Lcom/mopub/common/MoPub;->getLocationPrecision()I

    move-result v30

    .line 118
    invoke-static {}, Lcom/mopub/common/MoPub;->getLocationAwareness()Lcom/mopub/common/MoPub$LocationAwareness;

    move-result-object v31

    .line 116
    invoke-static/range {v29 .. v31}, Lcom/mopub/common/LocationService;->getLastKnownLocation(Landroid/content/Context;ILcom/mopub/common/MoPub$LocationAwareness;)Landroid/location/Location;

    move-result-object v18

    .line 120
    .local v18, "location":Landroid/location/Location;
    new-instance v7, Lcom/mopub/network/AdResponse$Builder;

    invoke-direct {v7}, Lcom/mopub/network/AdResponse$Builder;-><init>()V

    .line 121
    .local v7, "builder":Lcom/mopub/network/AdResponse$Builder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mopub/network/AdRequest;->mAdUnitId:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v7, v0}, Lcom/mopub/network/AdResponse$Builder;->setAdUnitId(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;

    .line 123
    sget-object v29, Lcom/mopub/common/util/ResponseHeader;->AD_TYPE:Lcom/mopub/common/util/ResponseHeader;

    move-object/from16 v0, v29

    invoke-static {v15, v0}, Lcom/mopub/network/HeaderUtils;->extractHeader(Ljava/util/Map;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object v6

    .line 124
    .local v6, "adTypeString":Ljava/lang/String;
    sget-object v29, Lcom/mopub/common/util/ResponseHeader;->FULL_AD_TYPE:Lcom/mopub/common/util/ResponseHeader;

    move-object/from16 v0, v29

    invoke-static {v15, v0}, Lcom/mopub/network/HeaderUtils;->extractHeader(Ljava/util/Map;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object v14

    .line 125
    .local v14, "fullAdTypeString":Ljava/lang/String;
    invoke-virtual {v7, v6}, Lcom/mopub/network/AdResponse$Builder;->setAdType(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;

    .line 126
    invoke-virtual {v7, v14}, Lcom/mopub/network/AdResponse$Builder;->setFullAdType(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;

    .line 130
    sget-object v29, Lcom/mopub/common/util/ResponseHeader;->REFRESH_TIME:Lcom/mopub/common/util/ResponseHeader;

    move-object/from16 v0, v29

    invoke-static {v15, v0}, Lcom/mopub/network/HeaderUtils;->extractIntegerHeader(Ljava/util/Map;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/Integer;

    move-result-object v22

    .line 132
    .local v22, "refreshTimeSeconds":Ljava/lang/Integer;
    if-nez v22, :cond_1

    const/16 v21, 0x0

    .line 135
    .local v21, "refreshTimeMilliseconds":Ljava/lang/Integer;
    :goto_1
    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Lcom/mopub/network/AdResponse$Builder;->setRefreshTimeMilliseconds(Ljava/lang/Integer;)Lcom/mopub/network/AdResponse$Builder;

    .line 137
    const-string v29, "clear"

    move-object/from16 v0, v29

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_2

    .line 138
    invoke-virtual {v7}, Lcom/mopub/network/AdResponse$Builder;->build()Lcom/mopub/network/AdResponse;

    move-result-object v4

    .line 139
    .local v4, "adResponse":Lcom/mopub/network/AdResponse;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-virtual {v0, v4, v1, v2}, Lcom/mopub/network/AdRequest;->logScribeEvent(Lcom/mopub/network/AdResponse;Lcom/mopub/volley/NetworkResponse;Landroid/location/Location;)V

    .line 140
    new-instance v29, Lcom/mopub/network/MoPubNetworkError;

    const-string v30, "No ads found for ad unit."

    sget-object v31, Lcom/mopub/network/MoPubNetworkError$Reason;->NO_FILL:Lcom/mopub/network/MoPubNetworkError$Reason;

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    move-object/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/mopub/network/MoPubNetworkError;-><init>(Ljava/lang/String;Lcom/mopub/network/MoPubNetworkError$Reason;Ljava/lang/Integer;)V

    invoke-static/range {v29 .. v29}, Lcom/mopub/volley/Response;->error(Lcom/mopub/volley/VolleyError;)Lcom/mopub/volley/Response;

    move-result-object v29

    goto :goto_0

    .line 134
    .end local v4    # "adResponse":Lcom/mopub/network/AdResponse;
    .end local v21    # "refreshTimeMilliseconds":Ljava/lang/Integer;
    :cond_1
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v29

    move/from16 v0, v29

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v29, v0

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    goto :goto_1

    .line 149
    .restart local v21    # "refreshTimeMilliseconds":Ljava/lang/Integer;
    :cond_2
    sget-object v29, Lcom/mopub/common/util/ResponseHeader;->DSP_CREATIVE_ID:Lcom/mopub/common/util/ResponseHeader;

    move-object/from16 v0, v29

    invoke-static {v15, v0}, Lcom/mopub/network/HeaderUtils;->extractHeader(Ljava/util/Map;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object v11

    .line 150
    .local v11, "dspCreativeId":Ljava/lang/String;
    invoke-virtual {v7, v11}, Lcom/mopub/network/AdResponse$Builder;->setDspCreativeId(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;

    .line 152
    sget-object v29, Lcom/mopub/common/util/ResponseHeader;->NETWORK_TYPE:Lcom/mopub/common/util/ResponseHeader;

    move-object/from16 v0, v29

    invoke-static {v15, v0}, Lcom/mopub/network/HeaderUtils;->extractHeader(Ljava/util/Map;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object v19

    .line 153
    .local v19, "networkType":Ljava/lang/String;
    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Lcom/mopub/network/AdResponse$Builder;->setNetworkType(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;

    .line 155
    sget-object v29, Lcom/mopub/common/util/ResponseHeader;->REDIRECT_URL:Lcom/mopub/common/util/ResponseHeader;

    move-object/from16 v0, v29

    invoke-static {v15, v0}, Lcom/mopub/network/HeaderUtils;->extractHeader(Ljava/util/Map;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object v20

    .line 156
    .local v20, "redirectUrl":Ljava/lang/String;
    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Lcom/mopub/network/AdResponse$Builder;->setRedirectUrl(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;

    .line 160
    sget-object v29, Lcom/mopub/common/util/ResponseHeader;->CLICK_TRACKING_URL:Lcom/mopub/common/util/ResponseHeader;

    move-object/from16 v0, v29

    invoke-static {v15, v0}, Lcom/mopub/network/HeaderUtils;->extractHeader(Ljava/util/Map;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object v8

    .line 161
    .local v8, "clickTrackingUrl":Ljava/lang/String;
    invoke-virtual {v7, v8}, Lcom/mopub/network/AdResponse$Builder;->setClickTrackingUrl(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;

    .line 163
    sget-object v29, Lcom/mopub/common/util/ResponseHeader;->IMPRESSION_URL:Lcom/mopub/common/util/ResponseHeader;

    move-object/from16 v0, v29

    invoke-static {v15, v0}, Lcom/mopub/network/HeaderUtils;->extractHeader(Ljava/util/Map;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v7, v0}, Lcom/mopub/network/AdResponse$Builder;->setImpressionTrackingUrl(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;

    .line 165
    sget-object v29, Lcom/mopub/common/util/ResponseHeader;->FAIL_URL:Lcom/mopub/common/util/ResponseHeader;

    move-object/from16 v0, v29

    invoke-static {v15, v0}, Lcom/mopub/network/HeaderUtils;->extractHeader(Ljava/util/Map;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object v13

    .line 166
    .local v13, "failUrl":Ljava/lang/String;
    invoke-virtual {v7, v13}, Lcom/mopub/network/AdResponse$Builder;->setFailoverUrl(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;

    .line 168
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/mopub/network/AdRequest;->getRequestId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 169
    .local v23, "requestId":Ljava/lang/String;
    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Lcom/mopub/network/AdResponse$Builder;->setRequestId(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;

    .line 171
    sget-object v29, Lcom/mopub/common/util/ResponseHeader;->SCROLLABLE:Lcom/mopub/common/util/ResponseHeader;

    const/16 v30, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v30

    invoke-static {v15, v0, v1}, Lcom/mopub/network/HeaderUtils;->extractBooleanHeader(Ljava/util/Map;Lcom/mopub/common/util/ResponseHeader;Z)Z

    move-result v17

    .line 172
    .local v17, "isScrollable":Z
    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v7, v0}, Lcom/mopub/network/AdResponse$Builder;->setScrollable(Ljava/lang/Boolean;)Lcom/mopub/network/AdResponse$Builder;

    .line 174
    sget-object v29, Lcom/mopub/common/util/ResponseHeader;->WIDTH:Lcom/mopub/common/util/ResponseHeader;

    move-object/from16 v0, v29

    invoke-static {v15, v0}, Lcom/mopub/network/HeaderUtils;->extractIntegerHeader(Ljava/util/Map;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/Integer;

    move-result-object v28

    .line 175
    .local v28, "width":Ljava/lang/Integer;
    sget-object v29, Lcom/mopub/common/util/ResponseHeader;->HEIGHT:Lcom/mopub/common/util/ResponseHeader;

    move-object/from16 v0, v29

    invoke-static {v15, v0}, Lcom/mopub/network/HeaderUtils;->extractIntegerHeader(Ljava/util/Map;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/Integer;

    move-result-object v16

    .line 176
    .local v16, "height":Ljava/lang/Integer;
    move-object/from16 v0, v28

    move-object/from16 v1, v16

    invoke-virtual {v7, v0, v1}, Lcom/mopub/network/AdResponse$Builder;->setDimensions(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/mopub/network/AdResponse$Builder;

    .line 178
    sget-object v29, Lcom/mopub/common/util/ResponseHeader;->AD_TIMEOUT:Lcom/mopub/common/util/ResponseHeader;

    move-object/from16 v0, v29

    invoke-static {v15, v0}, Lcom/mopub/network/HeaderUtils;->extractIntegerHeader(Ljava/util/Map;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/Integer;

    move-result-object v5

    .line 179
    .local v5, "adTimeoutDelaySeconds":Ljava/lang/Integer;
    if-nez v5, :cond_9

    const/16 v29, 0x0

    :goto_2
    move-object/from16 v0, v29

    invoke-virtual {v7, v0}, Lcom/mopub/network/AdResponse$Builder;->setAdTimeoutDelayMilliseconds(Ljava/lang/Integer;)Lcom/mopub/network/AdResponse$Builder;

    .line 185
    invoke-virtual/range {p0 .. p1}, Lcom/mopub/network/AdRequest;->parseStringBody(Lcom/mopub/volley/NetworkResponse;)Ljava/lang/String;

    move-result-object v24

    .line 186
    .local v24, "responseBody":Ljava/lang/String;
    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Lcom/mopub/network/AdResponse$Builder;->setResponseBody(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;

    .line 187
    const-string v29, "json"

    move-object/from16 v0, v29

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_3

    const-string v29, "json_video"

    move-object/from16 v0, v29

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_4

    .line 189
    :cond_3
    :try_start_0
    new-instance v29, Lorg/json/JSONObject;

    move-object/from16 v0, v29

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v29

    invoke-virtual {v7, v0}, Lcom/mopub/network/AdResponse$Builder;->setJsonBody(Lorg/json/JSONObject;)Lcom/mopub/network/AdResponse$Builder;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mopub/network/AdRequest;->mAdFormat:Lcom/mopub/common/AdFormat;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-static {v0, v6, v14, v15}, Lcom/mopub/mobileads/AdTypeTranslator;->getCustomEventName(Lcom/mopub/common/AdFormat;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v9

    .line 200
    .local v9, "customEventClassName":Ljava/lang/String;
    invoke-virtual {v7, v9}, Lcom/mopub/network/AdResponse$Builder;->setCustomEventClassName(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;

    .line 203
    sget-object v29, Lcom/mopub/common/util/ResponseHeader;->CUSTOM_EVENT_DATA:Lcom/mopub/common/util/ResponseHeader;

    move-object/from16 v0, v29

    invoke-static {v15, v0}, Lcom/mopub/network/HeaderUtils;->extractHeader(Ljava/util/Map;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object v10

    .line 206
    .local v10, "customEventData":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v29

    if-eqz v29, :cond_5

    .line 207
    sget-object v29, Lcom/mopub/common/util/ResponseHeader;->NATIVE_PARAMS:Lcom/mopub/common/util/ResponseHeader;

    move-object/from16 v0, v29

    invoke-static {v15, v0}, Lcom/mopub/network/HeaderUtils;->extractHeader(Ljava/util/Map;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object v10

    .line 212
    :cond_5
    :try_start_1
    invoke-static {v10}, Lcom/mopub/common/util/Json;->jsonStringToMap(Ljava/lang/String;)Ljava/util/Map;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v27

    .line 219
    .local v27, "serverExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v20, :cond_6

    .line 220
    const-string v29, "Redirect-Url"

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    :cond_6
    if-eqz v8, :cond_7

    .line 225
    const-string v29, "Clickthrough-Url"

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    :cond_7
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v14}, Lcom/mopub/network/AdRequest;->eventDataIsInResponseBody(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_8

    .line 229
    const-string v29, "Html-Response-Body"

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    const-string v29, "Scrollable"

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    const-string v29, "com_mopub_orientation"

    sget-object v30, Lcom/mopub/common/util/ResponseHeader;->ORIENTATION:Lcom/mopub/common/util/ResponseHeader;

    move-object/from16 v0, v30

    invoke-static {v15, v0}, Lcom/mopub/network/HeaderUtils;->extractHeader(Ljava/util/Map;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    :cond_8
    const-string v29, "json_video"

    move-object/from16 v0, v29

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_b

    .line 234
    sget v29, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v30, 0x10

    move/from16 v0, v29

    move/from16 v1, v30

    if-ge v0, v1, :cond_a

    .line 235
    new-instance v29, Lcom/mopub/network/MoPubNetworkError;

    const-string v30, "Native Video ads are only supported for Android API Level 16 (JellyBean) and above."

    sget-object v31, Lcom/mopub/network/MoPubNetworkError$Reason;->UNSPECIFIED:Lcom/mopub/network/MoPubNetworkError$Reason;

    invoke-direct/range {v29 .. v31}, Lcom/mopub/network/MoPubNetworkError;-><init>(Ljava/lang/String;Lcom/mopub/network/MoPubNetworkError$Reason;)V

    invoke-static/range {v29 .. v29}, Lcom/mopub/volley/Response;->error(Lcom/mopub/volley/VolleyError;)Lcom/mopub/volley/Response;

    move-result-object v29

    goto/16 :goto_0

    .line 182
    .end local v9    # "customEventClassName":Ljava/lang/String;
    .end local v10    # "customEventData":Ljava/lang/String;
    .end local v24    # "responseBody":Ljava/lang/String;
    .end local v27    # "serverExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_9
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v29

    move/from16 v0, v29

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v29, v0

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    goto/16 :goto_2

    .line 190
    .restart local v24    # "responseBody":Ljava/lang/String;
    :catch_0
    move-exception v12

    .line 191
    .local v12, "e":Lorg/json/JSONException;
    new-instance v29, Lcom/mopub/network/MoPubNetworkError;

    const-string v30, "Failed to decode body JSON for native ad format"

    sget-object v31, Lcom/mopub/network/MoPubNetworkError$Reason;->BAD_BODY:Lcom/mopub/network/MoPubNetworkError$Reason;

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v12, v2}, Lcom/mopub/network/MoPubNetworkError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/mopub/network/MoPubNetworkError$Reason;)V

    invoke-static/range {v29 .. v29}, Lcom/mopub/volley/Response;->error(Lcom/mopub/volley/VolleyError;)Lcom/mopub/volley/Response;

    move-result-object v29

    goto/16 :goto_0

    .line 213
    .end local v12    # "e":Lorg/json/JSONException;
    .restart local v9    # "customEventClassName":Ljava/lang/String;
    .restart local v10    # "customEventData":Ljava/lang/String;
    :catch_1
    move-exception v12

    .line 214
    .restart local v12    # "e":Lorg/json/JSONException;
    new-instance v29, Lcom/mopub/network/MoPubNetworkError;

    const-string v30, "Failed to decode server extras for custom event data."

    sget-object v31, Lcom/mopub/network/MoPubNetworkError$Reason;->BAD_HEADER_DATA:Lcom/mopub/network/MoPubNetworkError$Reason;

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v12, v2}, Lcom/mopub/network/MoPubNetworkError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/mopub/network/MoPubNetworkError$Reason;)V

    invoke-static/range {v29 .. v29}, Lcom/mopub/volley/Response;->error(Lcom/mopub/volley/VolleyError;)Lcom/mopub/volley/Response;

    move-result-object v29

    goto/16 :goto_0

    .line 240
    .end local v12    # "e":Lorg/json/JSONException;
    .restart local v27    # "serverExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_a
    const-string v29, "Play-Visible-Percent"

    sget-object v30, Lcom/mopub/common/util/ResponseHeader;->PLAY_VISIBLE_PERCENT:Lcom/mopub/common/util/ResponseHeader;

    .line 241
    move-object/from16 v0, v30

    invoke-static {v15, v0}, Lcom/mopub/network/HeaderUtils;->extractPercentHeaderString(Ljava/util/Map;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object v30

    .line 240
    move-object/from16 v0, v27

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    const-string v29, "Pause-Visible-Percent"

    sget-object v30, Lcom/mopub/common/util/ResponseHeader;->PAUSE_VISIBLE_PERCENT:Lcom/mopub/common/util/ResponseHeader;

    .line 243
    move-object/from16 v0, v30

    invoke-static {v15, v0}, Lcom/mopub/network/HeaderUtils;->extractPercentHeaderString(Ljava/util/Map;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object v30

    .line 242
    move-object/from16 v0, v27

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    const-string v29, "Impression-Min-Visible-Percent"

    sget-object v30, Lcom/mopub/common/util/ResponseHeader;->IMPRESSION_MIN_VISIBLE_PERCENT:Lcom/mopub/common/util/ResponseHeader;

    .line 245
    move-object/from16 v0, v30

    invoke-static {v15, v0}, Lcom/mopub/network/HeaderUtils;->extractPercentHeaderString(Ljava/util/Map;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object v30

    .line 244
    move-object/from16 v0, v27

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    const-string v29, "Impression-Visible-Ms"

    sget-object v30, Lcom/mopub/common/util/ResponseHeader;->IMPRESSION_VISIBLE_MS:Lcom/mopub/common/util/ResponseHeader;

    move-object/from16 v0, v30

    invoke-static {v15, v0}, Lcom/mopub/network/HeaderUtils;->extractHeader(Ljava/util/Map;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    const-string v29, "Max-Buffer-Ms"

    sget-object v30, Lcom/mopub/common/util/ResponseHeader;->MAX_BUFFER_MS:Lcom/mopub/common/util/ResponseHeader;

    move-object/from16 v0, v30

    invoke-static {v15, v0}, Lcom/mopub/network/HeaderUtils;->extractHeader(Ljava/util/Map;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    new-instance v29, Lcom/mopub/common/event/EventDetails$Builder;

    invoke-direct/range {v29 .. v29}, Lcom/mopub/common/event/EventDetails$Builder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mopub/network/AdRequest;->mAdUnitId:Ljava/lang/String;

    move-object/from16 v30, v0

    .line 253
    invoke-virtual/range {v29 .. v30}, Lcom/mopub/common/event/EventDetails$Builder;->adUnitId(Ljava/lang/String;)Lcom/mopub/common/event/EventDetails$Builder;

    move-result-object v29

    .line 254
    move-object/from16 v0, v29

    invoke-virtual {v0, v6}, Lcom/mopub/common/event/EventDetails$Builder;->adType(Ljava/lang/String;)Lcom/mopub/common/event/EventDetails$Builder;

    move-result-object v29

    .line 255
    move-object/from16 v0, v29

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/mopub/common/event/EventDetails$Builder;->adNetworkType(Ljava/lang/String;)Lcom/mopub/common/event/EventDetails$Builder;

    move-result-object v29

    .line 256
    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/mopub/common/event/EventDetails$Builder;->adWidthPx(Ljava/lang/Integer;)Lcom/mopub/common/event/EventDetails$Builder;

    move-result-object v29

    .line 257
    move-object/from16 v0, v29

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/mopub/common/event/EventDetails$Builder;->adHeightPx(Ljava/lang/Integer;)Lcom/mopub/common/event/EventDetails$Builder;

    move-result-object v29

    .line 258
    move-object/from16 v0, v29

    invoke-virtual {v0, v11}, Lcom/mopub/common/event/EventDetails$Builder;->dspCreativeId(Ljava/lang/String;)Lcom/mopub/common/event/EventDetails$Builder;

    move-result-object v30

    if-nez v18, :cond_e

    const/16 v29, 0x0

    .line 259
    :goto_3
    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/mopub/common/event/EventDetails$Builder;->geoLatitude(Ljava/lang/Double;)Lcom/mopub/common/event/EventDetails$Builder;

    move-result-object v30

    if-nez v18, :cond_f

    const/16 v29, 0x0

    .line 260
    :goto_4
    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/mopub/common/event/EventDetails$Builder;->geoLongitude(Ljava/lang/Double;)Lcom/mopub/common/event/EventDetails$Builder;

    move-result-object v30

    if-nez v18, :cond_10

    const/16 v29, 0x0

    .line 261
    :goto_5
    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/mopub/common/event/EventDetails$Builder;->geoAccuracy(Ljava/lang/Float;)Lcom/mopub/common/event/EventDetails$Builder;

    move-result-object v29

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/mopub/volley/NetworkResponse;->networkTimeMs:J

    move-wide/from16 v30, v0

    .line 262
    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Lcom/mopub/common/event/EventDetails$Builder;->performanceDurationMs(Ljava/lang/Long;)Lcom/mopub/common/event/EventDetails$Builder;

    move-result-object v29

    .line 263
    move-object/from16 v0, v29

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/mopub/common/event/EventDetails$Builder;->requestId(Ljava/lang/String;)Lcom/mopub/common/event/EventDetails$Builder;

    move-result-object v29

    move-object/from16 v0, p1

    iget v0, v0, Lcom/mopub/volley/NetworkResponse;->statusCode:I

    move/from16 v30, v0

    .line 264
    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Lcom/mopub/common/event/EventDetails$Builder;->requestStatusCode(Ljava/lang/Integer;)Lcom/mopub/common/event/EventDetails$Builder;

    move-result-object v29

    .line 265
    invoke-virtual/range {p0 .. p0}, Lcom/mopub/network/AdRequest;->getUrl()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Lcom/mopub/common/event/EventDetails$Builder;->requestUri(Ljava/lang/String;)Lcom/mopub/common/event/EventDetails$Builder;

    move-result-object v29

    .line 266
    invoke-virtual/range {v29 .. v29}, Lcom/mopub/common/event/EventDetails$Builder;->build()Lcom/mopub/common/event/EventDetails;

    move-result-object v29

    .line 252
    move-object/from16 v0, v29

    invoke-virtual {v7, v0}, Lcom/mopub/network/AdResponse$Builder;->setEventDetails(Lcom/mopub/common/event/EventDetails;)Lcom/mopub/network/AdResponse$Builder;

    .line 269
    :cond_b
    move-object/from16 v0, v27

    invoke-virtual {v7, v0}, Lcom/mopub/network/AdResponse$Builder;->setServerExtras(Ljava/util/Map;)Lcom/mopub/network/AdResponse$Builder;

    .line 271
    const-string v29, "rewarded_video"

    move-object/from16 v0, v29

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_c

    const-string v29, "custom"

    move-object/from16 v0, v29

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_d

    .line 272
    :cond_c
    sget-object v29, Lcom/mopub/common/util/ResponseHeader;->REWARDED_VIDEO_CURRENCY_NAME:Lcom/mopub/common/util/ResponseHeader;

    move-object/from16 v0, v29

    invoke-static {v15, v0}, Lcom/mopub/network/HeaderUtils;->extractHeader(Ljava/util/Map;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object v26

    .line 274
    .local v26, "rewardedVideoCurrencyName":Ljava/lang/String;
    sget-object v29, Lcom/mopub/common/util/ResponseHeader;->REWARDED_VIDEO_CURRENCY_AMOUNT:Lcom/mopub/common/util/ResponseHeader;

    move-object/from16 v0, v29

    invoke-static {v15, v0}, Lcom/mopub/network/HeaderUtils;->extractHeader(Ljava/util/Map;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object v25

    .line 276
    .local v25, "rewardedVideoCurrencyAmount":Ljava/lang/String;
    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Lcom/mopub/network/AdResponse$Builder;->setRewardedVideoCurrencyName(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;

    .line 277
    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Lcom/mopub/network/AdResponse$Builder;->setRewardedVideoCurrencyAmount(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;

    .line 280
    .end local v25    # "rewardedVideoCurrencyAmount":Ljava/lang/String;
    .end local v26    # "rewardedVideoCurrencyName":Ljava/lang/String;
    :cond_d
    invoke-virtual {v7}, Lcom/mopub/network/AdResponse$Builder;->build()Lcom/mopub/network/AdResponse;

    move-result-object v4

    .line 281
    .restart local v4    # "adResponse":Lcom/mopub/network/AdResponse;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-virtual {v0, v4, v1, v2}, Lcom/mopub/network/AdRequest;->logScribeEvent(Lcom/mopub/network/AdResponse;Lcom/mopub/volley/NetworkResponse;Landroid/location/Location;)V

    .line 283
    invoke-virtual {v7}, Lcom/mopub/network/AdResponse$Builder;->build()Lcom/mopub/network/AdResponse;

    move-result-object v29

    .line 284
    invoke-static/range {p1 .. p1}, Lcom/mopub/volley/toolbox/HttpHeaderParser;->parseCacheHeaders(Lcom/mopub/volley/NetworkResponse;)Lcom/mopub/volley/Cache$Entry;

    move-result-object v30

    .line 283
    invoke-static/range {v29 .. v30}, Lcom/mopub/volley/Response;->success(Ljava/lang/Object;Lcom/mopub/volley/Cache$Entry;)Lcom/mopub/volley/Response;

    move-result-object v29

    goto/16 :goto_0

    .line 259
    .end local v4    # "adResponse":Lcom/mopub/network/AdResponse;
    :cond_e
    invoke-virtual/range {v18 .. v18}, Landroid/location/Location;->getLatitude()D

    move-result-wide v32

    invoke-static/range {v32 .. v33}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v29

    goto/16 :goto_3

    .line 260
    :cond_f
    invoke-virtual/range {v18 .. v18}, Landroid/location/Location;->getLongitude()D

    move-result-wide v32

    invoke-static/range {v32 .. v33}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v29

    goto/16 :goto_4

    .line 261
    :cond_10
    invoke-virtual/range {v18 .. v18}, Landroid/location/Location;->getAccuracy()F

    move-result v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v29

    goto/16 :goto_5
.end method

.method protected parseStringBody(Lcom/mopub/volley/NetworkResponse;)Ljava/lang/String;
    .locals 4
    .param p1, "response"    # Lcom/mopub/volley/NetworkResponse;

    .prologue
    .line 298
    :try_start_0
    new-instance v1, Ljava/lang/String;

    iget-object v2, p1, Lcom/mopub/volley/NetworkResponse;->data:[B

    iget-object v3, p1, Lcom/mopub/volley/NetworkResponse;->headers:Ljava/util/Map;

    invoke-static {v3}, Lcom/mopub/volley/toolbox/HttpHeaderParser;->parseCharset(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 302
    .local v1, "parsed":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 299
    .end local v1    # "parsed":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 300
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/String;

    iget-object v2, p1, Lcom/mopub/volley/NetworkResponse;->data:[B

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    .restart local v1    # "parsed":Ljava/lang/String;
    goto :goto_0
.end method
