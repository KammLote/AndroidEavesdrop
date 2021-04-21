.class Lcom/mopub/nativeads/MoPubCustomEventVideoNative$VideoResponseHeaders;
.super Ljava/lang/Object;
.source "MoPubCustomEventVideoNative.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation build Lcom/mopub/common/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/nativeads/MoPubCustomEventVideoNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "VideoResponseHeaders"
.end annotation


# instance fields
.field private mHeadersAreValid:Z

.field private mImpressionMinVisiblePercent:I

.field private mImpressionVisibleMs:I

.field private mMaxBufferMs:I

.field private mPauseVisiblePercent:I

.field private mPlayVisiblePercent:I


# direct methods
.method constructor <init>(Ljava/util/Map;)V
    .locals 2
    .param p1    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 898
    .local p1, "serverExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 900
    :try_start_0
    const-string v1, "Play-Visible-Percent"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$VideoResponseHeaders;->mPlayVisiblePercent:I

    .line 901
    const-string v1, "Pause-Visible-Percent"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$VideoResponseHeaders;->mPauseVisiblePercent:I

    .line 902
    const-string v1, "Impression-Min-Visible-Percent"

    .line 903
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$VideoResponseHeaders;->mImpressionMinVisiblePercent:I

    .line 904
    const-string v1, "Impression-Visible-Ms"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$VideoResponseHeaders;->mImpressionVisibleMs:I

    .line 905
    const-string v1, "Max-Buffer-Ms"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$VideoResponseHeaders;->mMaxBufferMs:I

    .line 906
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$VideoResponseHeaders;->mHeadersAreValid:Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 910
    :goto_0
    return-void

    .line 907
    :catch_0
    move-exception v0

    .line 908
    .local v0, "e":Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$VideoResponseHeaders;->mHeadersAreValid:Z

    goto :goto_0
.end method


# virtual methods
.method getImpressionMinVisiblePercent()I
    .locals 1

    .prologue
    .line 925
    iget v0, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$VideoResponseHeaders;->mImpressionMinVisiblePercent:I

    return v0
.end method

.method getImpressionVisibleMs()I
    .locals 1

    .prologue
    .line 929
    iget v0, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$VideoResponseHeaders;->mImpressionVisibleMs:I

    return v0
.end method

.method getMaxBufferMs()I
    .locals 1

    .prologue
    .line 933
    iget v0, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$VideoResponseHeaders;->mMaxBufferMs:I

    return v0
.end method

.method getPauseVisiblePercent()I
    .locals 1

    .prologue
    .line 921
    iget v0, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$VideoResponseHeaders;->mPauseVisiblePercent:I

    return v0
.end method

.method getPlayVisiblePercent()I
    .locals 1

    .prologue
    .line 917
    iget v0, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$VideoResponseHeaders;->mPlayVisiblePercent:I

    return v0
.end method

.method hasValidHeaders()Z
    .locals 1

    .prologue
    .line 913
    iget-boolean v0, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$VideoResponseHeaders;->mHeadersAreValid:Z

    return v0
.end method
