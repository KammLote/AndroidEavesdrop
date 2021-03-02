.class public Lcom/mopub/common/MoPub;
.super Ljava/lang/Object;
.source "MoPub.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/common/MoPub$LocationAwareness;
    }
.end annotation


# static fields
.field private static final DEFAULT_LOCATION_PRECISION:I = 0x6

.field public static final SDK_VERSION:Ljava/lang/String; = "4.5.1"

.field private static volatile sLocationLocationAwareness:Lcom/mopub/common/MoPub$LocationAwareness;

.field private static volatile sLocationPrecision:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/mopub/common/MoPub$LocationAwareness;->NORMAL:Lcom/mopub/common/MoPub$LocationAwareness;

    sput-object v0, Lcom/mopub/common/MoPub;->sLocationLocationAwareness:Lcom/mopub/common/MoPub$LocationAwareness;

    .line 18
    const/4 v0, 0x6

    sput v0, Lcom/mopub/common/MoPub;->sLocationPrecision:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLocationAwareness()Lcom/mopub/common/MoPub$LocationAwareness;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/mopub/common/MoPub;->sLocationLocationAwareness:Lcom/mopub/common/MoPub$LocationAwareness;

    return-object v0
.end method

.method public static getLocationPrecision()I
    .locals 1

    .prologue
    .line 29
    sget v0, Lcom/mopub/common/MoPub;->sLocationPrecision:I

    return v0
.end method

.method public static hasRewardedVideo(Ljava/lang/String;)Z
    .locals 1
    .param p0, "adUnitId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 104
    invoke-static {p0}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->hasVideo(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static varargs initializeRewardedVideo(Landroid/app/Activity;[Lcom/mopub/common/MediationSettings;)V
    .locals 0
    .param p0, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "mediationSettings"    # [Lcom/mopub/common/MediationSettings;

    .prologue
    .line 81
    invoke-static {p0, p1}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->init(Landroid/app/Activity;[Lcom/mopub/common/MediationSettings;)V

    .line 82
    return-void
.end method

.method public static varargs loadRewardedVideo(Ljava/lang/String;Lcom/mopub/mobileads/MoPubRewardedVideoManager$RequestParameters;[Lcom/mopub/common/MediationSettings;)V
    .locals 0
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
    .line 100
    invoke-static {p0, p1, p2}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->loadVideo(Ljava/lang/String;Lcom/mopub/mobileads/MoPubRewardedVideoManager$RequestParameters;[Lcom/mopub/common/MediationSettings;)V

    .line 101
    return-void
.end method

.method public static varargs loadRewardedVideo(Ljava/lang/String;[Lcom/mopub/common/MediationSettings;)V
    .locals 1
    .param p0, "adUnitId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "mediationSettings"    # [Lcom/mopub/common/MediationSettings;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 94
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->loadVideo(Ljava/lang/String;Lcom/mopub/mobileads/MoPubRewardedVideoManager$RequestParameters;[Lcom/mopub/common/MediationSettings;)V

    .line 95
    return-void
.end method

.method public static onBackPressed(Landroid/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 76
    invoke-static {p0}, Lcom/mopub/common/MoPubLifecycleManager;->getInstance(Landroid/app/Activity;)Lcom/mopub/common/MoPubLifecycleManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mopub/common/MoPubLifecycleManager;->onBackPressed(Landroid/app/Activity;)V

    .line 77
    return-void
.end method

.method public static onCreate(Landroid/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 44
    invoke-static {p0}, Lcom/mopub/common/MoPubLifecycleManager;->getInstance(Landroid/app/Activity;)Lcom/mopub/common/MoPubLifecycleManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mopub/common/MoPubLifecycleManager;->onCreate(Landroid/app/Activity;)V

    .line 45
    invoke-static {p0}, Lcom/mopub/common/MoPub;->updateActivity(Landroid/app/Activity;)V

    .line 46
    return-void
.end method

.method public static onDestroy(Landroid/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 72
    invoke-static {p0}, Lcom/mopub/common/MoPubLifecycleManager;->getInstance(Landroid/app/Activity;)Lcom/mopub/common/MoPubLifecycleManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mopub/common/MoPubLifecycleManager;->onDestroy(Landroid/app/Activity;)V

    .line 73
    return-void
.end method

.method public static onPause(Landroid/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 54
    invoke-static {p0}, Lcom/mopub/common/MoPubLifecycleManager;->getInstance(Landroid/app/Activity;)Lcom/mopub/common/MoPubLifecycleManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mopub/common/MoPubLifecycleManager;->onPause(Landroid/app/Activity;)V

    .line 55
    return-void
.end method

.method public static onRestart(Landroid/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 63
    invoke-static {p0}, Lcom/mopub/common/MoPubLifecycleManager;->getInstance(Landroid/app/Activity;)Lcom/mopub/common/MoPubLifecycleManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mopub/common/MoPubLifecycleManager;->onRestart(Landroid/app/Activity;)V

    .line 64
    invoke-static {p0}, Lcom/mopub/common/MoPub;->updateActivity(Landroid/app/Activity;)V

    .line 65
    return-void
.end method

.method public static onResume(Landroid/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 58
    invoke-static {p0}, Lcom/mopub/common/MoPubLifecycleManager;->getInstance(Landroid/app/Activity;)Lcom/mopub/common/MoPubLifecycleManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mopub/common/MoPubLifecycleManager;->onResume(Landroid/app/Activity;)V

    .line 59
    invoke-static {p0}, Lcom/mopub/common/MoPub;->updateActivity(Landroid/app/Activity;)V

    .line 60
    return-void
.end method

.method public static onStart(Landroid/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 49
    invoke-static {p0}, Lcom/mopub/common/MoPubLifecycleManager;->getInstance(Landroid/app/Activity;)Lcom/mopub/common/MoPubLifecycleManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mopub/common/MoPubLifecycleManager;->onStart(Landroid/app/Activity;)V

    .line 50
    invoke-static {p0}, Lcom/mopub/common/MoPub;->updateActivity(Landroid/app/Activity;)V

    .line 51
    return-void
.end method

.method public static onStop(Landroid/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 68
    invoke-static {p0}, Lcom/mopub/common/MoPubLifecycleManager;->getInstance(Landroid/app/Activity;)Lcom/mopub/common/MoPubLifecycleManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mopub/common/MoPubLifecycleManager;->onStop(Landroid/app/Activity;)V

    .line 69
    return-void
.end method

.method public static setLocationAwareness(Lcom/mopub/common/MoPub$LocationAwareness;)V
    .locals 0
    .param p0, "locationAwareness"    # Lcom/mopub/common/MoPub$LocationAwareness;

    .prologue
    .line 25
    sput-object p0, Lcom/mopub/common/MoPub;->sLocationLocationAwareness:Lcom/mopub/common/MoPub$LocationAwareness;

    .line 26
    return-void
.end method

.method public static setLocationPrecision(I)V
    .locals 2
    .param p0, "precision"    # I

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v1, 0x6

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    sput v0, Lcom/mopub/common/MoPub;->sLocationPrecision:I

    .line 38
    return-void
.end method

.method public static setRewardedVideoListener(Lcom/mopub/mobileads/MoPubRewardedVideoListener;)V
    .locals 0
    .param p0, "listener"    # Lcom/mopub/mobileads/MoPubRewardedVideoListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 89
    invoke-static {p0}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->setVideoListener(Lcom/mopub/mobileads/MoPubRewardedVideoListener;)V

    .line 90
    return-void
.end method

.method public static showRewardedVideo(Ljava/lang/String;)V
    .locals 0
    .param p0, "adUnitId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 108
    invoke-static {p0}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->showVideo(Ljava/lang/String;)V

    .line 109
    return-void
.end method

.method private static updateActivity(Landroid/app/Activity;)V
    .locals 0
    .param p0, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 85
    invoke-static {p0}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->updateActivity(Landroid/app/Activity;)V

    .line 86
    return-void
.end method
