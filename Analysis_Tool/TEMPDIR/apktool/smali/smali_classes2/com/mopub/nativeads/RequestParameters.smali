.class public Lcom/mopub/nativeads/RequestParameters;
.super Ljava/lang/Object;
.source "RequestParameters.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/nativeads/RequestParameters$Builder;,
        Lcom/mopub/nativeads/RequestParameters$NativeAdAsset;
    }
.end annotation


# instance fields
.field private final mDesiredAssets:Ljava/util/EnumSet;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lcom/mopub/nativeads/RequestParameters$NativeAdAsset;",
            ">;"
        }
    .end annotation
.end field

.field private final mKeywords:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mLocation:Landroid/location/Location;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/mopub/nativeads/RequestParameters$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/mopub/nativeads/RequestParameters$Builder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    invoke-static {p1}, Lcom/mopub/nativeads/RequestParameters$Builder;->access$100(Lcom/mopub/nativeads/RequestParameters$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/nativeads/RequestParameters;->mKeywords:Ljava/lang/String;

    .line 69
    invoke-static {p1}, Lcom/mopub/nativeads/RequestParameters$Builder;->access$200(Lcom/mopub/nativeads/RequestParameters$Builder;)Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/nativeads/RequestParameters;->mLocation:Landroid/location/Location;

    .line 70
    invoke-static {p1}, Lcom/mopub/nativeads/RequestParameters$Builder;->access$300(Lcom/mopub/nativeads/RequestParameters$Builder;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/nativeads/RequestParameters;->mDesiredAssets:Ljava/util/EnumSet;

    .line 71
    return-void
.end method

.method synthetic constructor <init>(Lcom/mopub/nativeads/RequestParameters$Builder;Lcom/mopub/nativeads/RequestParameters$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mopub/nativeads/RequestParameters$Builder;
    .param p2, "x1"    # Lcom/mopub/nativeads/RequestParameters$1;

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/mopub/nativeads/RequestParameters;-><init>(Lcom/mopub/nativeads/RequestParameters$Builder;)V

    return-void
.end method


# virtual methods
.method public final getDesiredAssets()Ljava/lang/String;
    .locals 3

    .prologue
    .line 84
    const-string v0, ""

    .line 86
    .local v0, "result":Ljava/lang/String;
    iget-object v1, p0, Lcom/mopub/nativeads/RequestParameters;->mDesiredAssets:Ljava/util/EnumSet;

    if-eqz v1, :cond_0

    .line 87
    const-string v1, ","

    iget-object v2, p0, Lcom/mopub/nativeads/RequestParameters;->mDesiredAssets:Ljava/util/EnumSet;

    invoke-virtual {v2}, Ljava/util/EnumSet;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 89
    :cond_0
    return-object v0
.end method

.method public final getKeywords()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 75
    iget-object v0, p0, Lcom/mopub/nativeads/RequestParameters;->mKeywords:Ljava/lang/String;

    return-object v0
.end method

.method public final getLocation()Landroid/location/Location;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 80
    iget-object v0, p0, Lcom/mopub/nativeads/RequestParameters;->mLocation:Landroid/location/Location;

    return-object v0
.end method