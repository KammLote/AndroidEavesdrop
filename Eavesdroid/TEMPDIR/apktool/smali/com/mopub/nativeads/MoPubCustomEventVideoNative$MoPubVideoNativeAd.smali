.class public Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;
.super Lcom/mopub/nativeads/VideoNativeAd;
.source "MoPubCustomEventVideoNative.java"

# interfaces
.implements Lcom/mopub/mobileads/VastManager$VastManagerListener;
.implements Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable$ProgressListener;
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/nativeads/MoPubCustomEventVideoNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MoPubVideoNativeAd"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$VideoState;,
        Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$Parameter;
    }
.end annotation


# static fields
.field static final PRIVACY_INFORMATION_CLICKTHROUGH_URL:Ljava/lang/String; = "https://www.mopub.com/optout/"


# instance fields
.field private final mContext:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mCustomEventNativeListener:Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mEnded:Z

.field private mError:Z

.field private final mEventDetails:Lcom/mopub/common/event/EventDetails;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mId:J

.field private final mJsonObject:Lorg/json/JSONObject;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mLatestVideoControllerState:I

.field private mLatestVisibility:Z

.field private mMediaLayout:Lcom/mopub/nativeads/MediaLayout;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mMoPubClickTrackingUrl:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mMuted:Z

.field private mNativeVideoController:Lcom/mopub/nativeads/NativeVideoController;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mNativeVideoControllerFactory:Lcom/mopub/nativeads/MoPubCustomEventVideoNative$NativeVideoControllerFactory;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mNeedsPrepare:Z

.field private mNeedsSeek:Z

.field private mPauseCanBeTracked:Z

.field private mResumeCanBeTracked:Z

.field private mRootView:Landroid/view/View;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mVastManager:Lcom/mopub/mobileads/VastManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field mVastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mVideoResponseHeaders:Lcom/mopub/nativeads/MoPubCustomEventVideoNative$VideoResponseHeaders;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mVideoState:Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$VideoState;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mVideoVisibleTracking:Lcom/mopub/nativeads/VisibilityTracker;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lorg/json/JSONObject;Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;Lcom/mopub/nativeads/MoPubCustomEventVideoNative$VideoResponseHeaders;Lcom/mopub/common/event/EventDetails;Ljava/lang/String;)V
    .locals 10
    .param p1, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "jsonObject"    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "customEventNativeListener"    # Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "videoResponseHeaders"    # Lcom/mopub/nativeads/MoPubCustomEventVideoNative$VideoResponseHeaders;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5, "eventDetails"    # Lcom/mopub/common/event/EventDetails;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p6, "clickTrackingUrl"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 194
    new-instance v5, Lcom/mopub/nativeads/VisibilityTracker;

    invoke-direct {v5, p1}, Lcom/mopub/nativeads/VisibilityTracker;-><init>(Landroid/app/Activity;)V

    new-instance v6, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$NativeVideoControllerFactory;

    invoke-direct {v6}, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$NativeVideoControllerFactory;-><init>()V

    .line 196
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mopub/mobileads/factories/VastManagerFactory;->create(Landroid/content/Context;Z)Lcom/mopub/mobileads/VastManager;

    move-result-object v9

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v7, p5

    move-object/from16 v8, p6

    .line 194
    invoke-direct/range {v0 .. v9}, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;-><init>(Landroid/app/Activity;Lorg/json/JSONObject;Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;Lcom/mopub/nativeads/MoPubCustomEventVideoNative$VideoResponseHeaders;Lcom/mopub/nativeads/VisibilityTracker;Lcom/mopub/nativeads/MoPubCustomEventVideoNative$NativeVideoControllerFactory;Lcom/mopub/common/event/EventDetails;Ljava/lang/String;Lcom/mopub/mobileads/VastManager;)V

    .line 197
    return-void
.end method

.method constructor <init>(Landroid/app/Activity;Lorg/json/JSONObject;Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;Lcom/mopub/nativeads/MoPubCustomEventVideoNative$VideoResponseHeaders;Lcom/mopub/nativeads/VisibilityTracker;Lcom/mopub/nativeads/MoPubCustomEventVideoNative$NativeVideoControllerFactory;Lcom/mopub/common/event/EventDetails;Ljava/lang/String;Lcom/mopub/mobileads/VastManager;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "jsonObject"    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "customEventNativeListener"    # Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "videoResponseHeaders"    # Lcom/mopub/nativeads/MoPubCustomEventVideoNative$VideoResponseHeaders;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5, "visibilityTracker"    # Lcom/mopub/nativeads/VisibilityTracker;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p6, "nativeVideoControllerFactory"    # Lcom/mopub/nativeads/MoPubCustomEventVideoNative$NativeVideoControllerFactory;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p7, "eventDetails"    # Lcom/mopub/common/event/EventDetails;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p8, "clickTrackingUrl"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p9, "vastManager"    # Lcom/mopub/mobileads/VastManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 209
    invoke-direct {p0}, Lcom/mopub/nativeads/VideoNativeAd;-><init>()V

    .line 177
    iput-boolean v0, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->mPauseCanBeTracked:Z

    .line 178
    iput-boolean v0, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->mResumeCanBeTracked:Z

    .line 210
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 211
    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 212
    invoke-static {p3}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 213
    invoke-static {p4}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 214
    invoke-static {p5}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 215
    invoke-static {p6}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 216
    invoke-static {p8}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 217
    invoke-static {p9}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 219
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->mContext:Landroid/content/Context;

    .line 220
    iput-object p2, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->mJsonObject:Lorg/json/JSONObject;

    .line 221
    iput-object p3, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->mCustomEventNativeListener:Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;

    .line 222
    iput-object p4, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->mVideoResponseHeaders:Lcom/mopub/nativeads/MoPubCustomEventVideoNative$VideoResponseHeaders;

    .line 224
    iput-object p6, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->mNativeVideoControllerFactory:Lcom/mopub/nativeads/MoPubCustomEventVideoNative$NativeVideoControllerFactory;

    .line 225
    iput-object p8, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->mMoPubClickTrackingUrl:Ljava/lang/String;

    .line 227
    iput-object p7, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->mEventDetails:Lcom/mopub/common/event/EventDetails;

    .line 229
    invoke-static {}, Lcom/mopub/common/util/Utils;->generateUniqueId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->mId:J

    .line 230
    iput-boolean v2, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->mNeedsSeek:Z

    .line 231
    sget-object v0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$VideoState;->CREATED:Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$VideoState;

    iput-object v0, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->mVideoState:Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$VideoState;

    .line 233
    iput-boolean v2, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->mNeedsPrepare:Z

    .line 234
    iput v2, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->mLatestVideoControllerState:I

    .line 235
    iput-boolean v2, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->mMuted:Z

    .line 236
    iput-object p5, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->mVideoVisibleTracking:Lcom/mopub/nativeads/VisibilityTracker;

    .line 237
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->mVideoVisibleTracking:Lcom/mopub/nativeads/VisibilityTracker;

    new-instance v1, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$1;

    invoke-direct {v1, p0}, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$1;-><init>(Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;)V

    invoke-virtual {v0, v1}, Lcom/mopub/nativeads/VisibilityTracker;->setVisibilityTrackerListener(Lcom/mopub/nativeads/VisibilityTracker$VisibilityTrackerListener;)V

    .line 251
    iput-object p9, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->mVastManager:Lcom/mopub/mobileads/VastManager;

    .line 252
    return-void
.end method

.method static synthetic access$000(Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->mLatestVisibility:Z

    return v0
.end method

.method static synthetic access$002(Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;
    .param p1, "x1"    # Z

    .prologue
    .line 101
    iput-boolean p1, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->mLatestVisibility:Z

    return p1
.end method

.method static synthetic access$100(Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;)V
    .locals 0
    .param p0, "x0"    # Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->maybeChangeState()V

    return-void
.end method

.method static synthetic access$1000(Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->mNeedsPrepare:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;
    .param p1, "x1"    # Z

    .prologue
    .line 101
    iput-boolean p1, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->mNeedsPrepare:Z

    return p1
.end method

.method static synthetic access$1102(Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;
    .param p1, "x1"    # Z

    .prologue
    .line 101
    iput-boolean p1, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->mNeedsSeek:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->mMuted:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;
    .param p1, "x1"    # Z

    .prologue
    .line 101
    iput-boolean p1, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->mMuted:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;)V
    .locals 0
    .param p0, "x0"    # Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->prepareToLeaveView()V

    return-void
.end method

.method static synthetic access$1400(Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;)J
    .locals 2
    .param p0, "x0"    # Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;

    .prologue
    .line 101
    iget-wide v0, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->mId:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;)Lcom/mopub/common/event/EventDetails;
    .locals 1
    .param p0, "x0"    # Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->mEventDetails:Lcom/mopub/common/event/EventDetails;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;)Lcom/mopub/mobileads/VastManager;
    .locals 1
    .param p0, "x0"    # Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->mVastManager:Lcom/mopub/mobileads/VastManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;)Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;
    .locals 1
    .param p0, "x0"    # Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->mCustomEventNativeListener:Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;)Lcom/mopub/nativeads/NativeVideoController;
    .locals 1
    .param p0, "x0"    # Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->mNativeVideoController:Lcom/mopub/nativeads/NativeVideoController;

    return-object v0
.end method

.method static synthetic access$700(Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;)Lcom/mopub/nativeads/MediaLayout;
    .locals 1
    .param p0, "x0"    # Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->mMediaLayout:Lcom/mopub/nativeads/MediaLayout;

    return-object v0
.end method

.method static synthetic access$800(Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;)I
    .locals 1
    .param p0, "x0"    # Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;

    .prologue
    .line 101
    iget v0, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->mLatestVideoControllerState:I

    return v0
.end method

.method static synthetic access$902(Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;
    .param p1, "x1"    # Z

    .prologue
    .line 101
    iput-boolean p1, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->mEnded:Z

    return p1
.end method

.method private addInstanceVariable(Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$Parameter;Ljava/lang/Object;)V
    .locals 3
    .param p1, "key"    # Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$Parameter;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "value"    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassCastException;
        }
    .end annotation

    .prologue
    .line 362
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 363
    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 366
    :try_start_0
    sget-object v1, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$1;->$SwitchMap$com$mopub$nativeads$MoPubCustomEventVideoNative$MoPubVideoNativeAd$Parameter:[I

    invoke-virtual {p1}, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$Parameter;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 395
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to add JSON key to internal mapping: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$Parameter;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 405
    .end local p2    # "value":Ljava/lang/Object;
    :goto_0
    return-void

    .line 368
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_0
    invoke-virtual {p0, p2}, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->addImpressionTrackers(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 398
    .end local p2    # "value":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 399
    .local v0, "e":Ljava/lang/ClassCastException;
    iget-boolean v1, p1, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$Parameter;->mRequired:Z

    if-nez v1, :cond_0

    .line 400
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring class cast exception for optional key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$Parameter;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 371
    .end local v0    # "e":Ljava/lang/ClassCastException;
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_1
    :try_start_1
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p0, p2}, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->setTitle(Ljava/lang/String;)V

    goto :goto_0

    .line 374
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_2
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p0, p2}, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 377
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_3
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p0, p2}, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->setMainImageUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 380
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_4
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p0, p2}, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->setIconImageUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 383
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_5
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p0, p2}, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->setClickDestinationUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 386
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_6
    invoke-direct {p0, p2}, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->parseClickTrackers(Ljava/lang/Object;)V

    goto :goto_0

    .line 389
    :pswitch_7
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p0, p2}, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->setCallToAction(Ljava/lang/String;)V

    goto :goto_0

    .line 392
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_8
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p0, p2}, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->setVastVideo(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 402
    .restart local v0    # "e":Ljava/lang/ClassCastException;
    :cond_0
    throw v0

    .line 366
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private cleanUpMediaLayout()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 576
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->mMediaLayout:Lcom/mopub/nativeads/MediaLayout;

    if-eqz v0, :cond_0

    .line 577
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->mMediaLayout:Lcom/mopub/nativeads/MediaLayout;

    sget-object v1, Lcom/mopub/nativeads/MediaLayout$Mode;->IMAGE:Lcom/mopub/nativeads/MediaLayout$Mode;

    invoke-virtual {v0, v1}, Lcom/mopub/nativeads/MediaLayout;->setMode(Lcom/mopub/nativeads/MediaLayout$Mode;)V

    .line 578
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->mMediaLayout:Lcom/mopub/nativeads/MediaLayout;

    invoke-virtual {v0, v2}, Lcom/mopub/nativeads/MediaLayout;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 579
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->mMediaLayout:Lcom/mopub/nativeads/MediaLayout;

    invoke-virtual {v0, v2}, Lcom/mopub/nativeads/MediaLayout;->setPlayButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 580
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->mMediaLayout:Lcom/mopub/nativeads/MediaLayout;

    invoke-virtual {v0, v2}, Lcom/mopub/nativeads/MediaLayout;->setMuteControlClickListener(Landroid/view/View$OnClickListener;)V

    .line 581
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->mMediaLayout:Lcom/mopub/nativeads/MediaLayout;

    invoke-virtual {v0, v2}, Lcom/mopub/nativeads/MediaLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 582
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->mVideoVisibleTracking:Lcom/mopub/nativeads/VisibilityTracker;

    iget-object v1, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->mMediaLayout:Lcom/mopub/nativeads/MediaLayout;

    invoke-virtual {v0, v1}, Lcom/mopub/nativeads/VisibilityTracker;->removeView(Landroid/view/View;)V

    .line 583
    iput-object v2, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->mMediaLayout:Lcom/mopub/nativeads/MediaLayout;

    .line 585
    :cond_0
    return-void
.end method

.method private containsRequiredKeys(Lorg/json/JSONObject;)Z
    .locals 3
    .param p1, "jsonObject"    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 349
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 351
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 352
    .local v1, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 353
    .local v0, "jsonKeys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 354
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 357
    :cond_0
    sget-object v2, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$Parameter;->requiredKeys:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v2

    return v2
.end method

.method private getAllImageUrls()Ljava/util/List;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 770
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 771
    .local v0, "imageUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->getMainImageUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 772
    invoke-virtual {p0}, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->getMainImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 774
    :cond_0
    invoke-virtual {p0}, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->getIconImageUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 775
    invoke-virtual {p0}, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->getIconImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 778
    :cond_1
    invoke-direct {p0}, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->getExtrasImageUrls()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 779
    return-object v0
.end method

.method private getExtrasImageUrls()Ljava/util/List;
    .locals 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 758
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->getExtras()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 759
    .local v1, "extrasBitmapUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->getExtras()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 760
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->isImageKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 761
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 765
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    return-object v1
.end method

.method private handleResumeTrackersAndSeek(Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$VideoState;)V
    .locals 6
    .param p1, "previousState"    # Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$VideoState;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 729
    iget-boolean v0, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->mResumeCanBeTracked:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$VideoState;->PLAYING:Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$VideoState;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$VideoState;->PLAYING_MUTED:Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$VideoState;

    if-eq p1, v0, :cond_0

    .line 732
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->mVastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;

    .line 733
    invoke-virtual {v0}, Lcom/mopub/mobileads/VastVideoConfig;->getResumeTrackers()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->mNativeVideoController:Lcom/mopub/nativeads/NativeVideoController;

    .line 735
    invoke-virtual {v1}, Lcom/mopub/nativeads/NativeVideoController;->getCurrentPosition()J

    move-result-wide v2

    long-to-int v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->mContext:Landroid/content/Context;

    .line 732
    invoke-static {v0, v5, v1, v5, v2}, Lcom/mopub/network/TrackingRequest;->makeVastTrackingHttpRequest(Ljava/util/List;Lcom/mopub/mobileads/VastErrorCode;Ljava/lang/Integer;Ljava/lang/String;Landroid/content/Context;)V

    .line 739
    iput-boolean v4, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->mResumeCanBeTracked:Z

    .line 742
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->mPauseCanBeTracked:Z

    .line 745
    iget-boolean v0, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->mNeedsSeek:Z

    if-eqz v0, :cond_1

    .line 746
    iput-boolean v4, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->mNeedsSeek:Z

    .line 747
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->mNativeVideoController:Lcom/mopub/nativeads/NativeVideoController;

    iget-object v1, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->mNativeVideoController:Lcom/mopub/nativeads/NativeVideoController;

    invoke-virtual {v1}, Lcom/mopub/nativeads/NativeVideoController;->getCurrentPosition()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/mopub/nativeads/NativeVideoController;->seekTo(J)V

    .line 749
    :cond_1
    return-void
.end method

.method private isImageKey(Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 753
    if-eqz p1, :cond_0

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "image"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private maybeChangeState()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 602
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->mVideoState:Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$VideoState;

    .line 604
    .local v0, "newState":Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$VideoState;
    iget-boolean v1, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->mError:Z

    if-eqz v1, :cond_1

    .line 605
    sget-object v0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$VideoState;->FAILED_LOAD:Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$VideoState;

    .line 626
    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->applyState(Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$VideoState;)V

    .line 627
    return-void

    .line 606
    :cond_1
    iget-boolean v1, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->mEnded:Z

    if-eqz v1, :cond_2

    .line 607
    sget-object v0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$VideoState;->ENDED:Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$VideoState;

    goto :goto_0

    .line 609
    :cond_2
    iget v1, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->mLatestVideoControllerState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    iget v1, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->mLatestVideoControllerState:I

    if-ne v1, v3, :cond_4

    .line 611
    :cond_3
    sget-object v0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$VideoState;->LOADING:Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$VideoState;

    goto :goto_0

    .line 612
    :cond_4
    iget v1, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->mLatestVideoControllerState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_5

    .line 613
    sget-object v0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$VideoState;->BUFFERING:Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$VideoState;

    goto :goto_0

    .line 614
    :cond_5
    iget v1, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->mLatestVideoControllerState:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_6

    .line 615
    iput-boolean v3, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->mEnded:Z

    .line 616
    sget-object v0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$VideoState;->ENDED:Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$VideoState;

    goto :goto_0

    .line 617
    :cond_6
    iget v1, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->mLatestVideoControllerState:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 618
    iget-boolean v1, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->mLatestVisibility:Z

    if-eqz v1, :cond_8

    .line 619
    iget-boolean v1, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->mMuted:Z

    if-eqz v1, :cond_7

    sget-object v0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$VideoState;->PLAYING_MUTED:Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$VideoState;

    :goto_1
    goto :goto_0

    :cond_7
    sget-object v0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$VideoState;->PLAYING:Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$VideoState;

    goto :goto_1

    .line 621
    :cond_8
    sget-object v0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$VideoState;->PAUSED:Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$VideoState;

    goto :goto_0
.end method

.method private parseClickTrackers(Ljava/lang/Object;)V
    .locals 1
    .param p1, "clickTrackers"    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 408
    instance-of v0, p1, Lorg/json/JSONArray;

    if-eqz v0, :cond_0

    .line 409
    invoke-virtual {p0, p1}, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->addClickTrackers(Ljava/lang/Object;)V

    .line 413
    .end local p1    # "clickTrackers":Ljava/lang/Object;
    :goto_0
    return-void

    .line 411
    .restart local p1    # "clickTrackers":Ljava/lang/Object;
    :cond_0
    check-cast p1, Ljava/lang/String;

    .end local p1    # "clickTrackers":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->addClickTracker(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private prepareToLeaveView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 588
    iput-boolean v1, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->mNeedsSeek:Z

    .line 589
    iput-boolean v1, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->mNeedsPrepare:Z

    .line 593
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->mNativeVideoController:Lcom/mopub/nativeads/NativeVideoController;

    invoke-virtual {v0, v2}, Lcom/mopub/nativeads/NativeVideoController;->setListener(Lcom/mopub/nativeads/NativeVideoController$Listener;)V

    .line 594
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->mNativeVideoController:Lcom/mopub/nativeads/NativeVideoController;

    invoke-virtual {v0, v2}, Lcom/mopub/nativeads/NativeVideoController;->setOnAudioFocusChangeListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)V

    .line 595
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->mNativeVideoController:Lcom/mopub/nativeads/NativeVideoController;

    invoke-virtual {v0, v2}, Lcom/mopub/nativeads/NativeVideoController;->setProgressListener(Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable$ProgressListener;)V

    .line 596
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->mNativeVideoController:Lcom/mopub/nativeads/NativeVideoController;

    invoke-virtual {v0}, Lcom/mopub/nativeads/NativeVideoController;->clear()V

    .line 598
    sget-object v0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$VideoState;->PAUSED:Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$VideoState;

    invoke-virtual {p0, v0, v1}, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->applyState(Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$VideoState;Z)V

    .line 599
    return-void
.end method


# virtual methods
.method applyState(Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$VideoState;)V
    .locals 1
    .param p1, "videoState"    # Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$VideoState;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    .line 631
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->applyState(Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$VideoState;Z)V

    .line 632
    return-void
.end method

.method applyState(Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$VideoState;Z)V
    .locals 7
    .param p1, "videoState"    # Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$VideoState;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "transitionToFullScreen"    # Z
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 636
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 639
    iget-object v1, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->mVastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->mNativeVideoController:Lcom/mopub/nativeads/NativeVideoController;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->mMediaLayout:Lcom/mopub/nativeads/MediaLayout;

    if-nez v1, :cond_1

    .line 726
    :cond_0
    :goto_0
    return-void

    .line 645
    :cond_1
    iget-object v1, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->mVideoState:Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$VideoState;

    if-eq v1, p1, :cond_0

    .line 648
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->mVideoState:Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$VideoState;

    .line 649
    .local v0, "previousState":Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$VideoState;
    iput-object p1, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->mVideoState:Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$VideoState;

    .line 651
    sget-object v1, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$1;->$SwitchMap$com$mopub$nativeads$MoPubCustomEventVideoNative$MoPubVideoNativeAd$VideoState:[I

    invoke-virtual {p1}, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$VideoState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 653
    :pswitch_0
    iget-object v1, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->mVastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;

    iget-object v2, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v6, v4}, Lcom/mopub/mobileads/VastVideoConfig;->handleError(Landroid/content/Context;Lcom/mopub/mobileads/VastErrorCode;I)V

    .line 654
    iget-object v1, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->mNativeVideoController:Lcom/mopub/nativeads/NativeVideoController;

    invoke-virtual {v1, v4}, Lcom/mopub/nativeads/NativeVideoController;->setAppAudioEnabled(Z)V

    .line 655
    iget-object v1, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->mMediaLayout:Lcom/mopub/nativeads/MediaLayout;

    sget-object v2, Lcom/mopub/nativeads/MediaLayout$Mode;->IMAGE:Lcom/mopub/nativeads/MediaLayout$Mode;

    invoke-virtual {v1, v2}, Lcom/mopub/nativeads/MediaLayout;->setMode(Lcom/mopub/nativeads/MediaLayout$Mode;)V

    .line 657
    sget-object v1, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$VideoState;->PLAYING:Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$VideoState;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$VideoState;->PLAYING_MUTED:Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$VideoState;

    if-eq v0, v1, :cond_0

    .line 658
    sget-object v1, Lcom/mopub/common/event/BaseEvent$Name;->ERROR_FAILED_TO_PLAY:Lcom/mopub/common/event/BaseEvent$Name;

    sget-object v2, Lcom/mopub/common/event/BaseEvent$Category;->NATIVE_VIDEO:Lcom/mopub/common/event/BaseEvent$Category;

    sget-object v3, Lcom/mopub/common/event/BaseEvent$SamplingRate;->NATIVE_VIDEO:Lcom/mopub/common/event/BaseEvent$SamplingRate;

    iget-object v4, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->mEventDetails:Lcom/mopub/common/event/EventDetails;

    invoke-static {v1, v2, v3, v4}, Lcom/mopub/common/event/Event;->createEventFromDetails(Lcom/mopub/common/event/BaseEvent$Name;Lcom/mopub/common/event/BaseEvent$Category;Lcom/mopub/common/event/BaseEvent$SamplingRate;Lcom/mopub/common/event/EventDetails;)Lcom/mopub/common/event/BaseEvent;

    move-result-object v1

    invoke-static {v1}, Lcom/mopub/common/event/MoPubEvents;->log(Lcom/mopub/common/event/BaseEvent;)V

    goto :goto_0

    .line 667
    :pswitch_1
    iget-object v1, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->mNativeVideoController:Lcom/mopub/nativeads/NativeVideoController;

    invoke-virtual {v1, v5}, Lcom/mopub/nativeads/NativeVideoController;->setPlayWhenReady(Z)V

    .line 668
    iget-object v1, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->mMediaLayout:Lcom/mopub/nativeads/MediaLayout;

    sget-object v2, Lcom/mopub/nativeads/MediaLayout$Mode;->LOADING:Lcom/mopub/nativeads/MediaLayout$Mode;

    invoke-virtual {v1, v2}, Lcom/mopub/nativeads/MediaLayout;->setMode(Lcom/mopub/nativeads/MediaLayout$Mode;)V

    goto :goto_0

    .line 671
    :pswitch_2
    iget-object v1, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->mNativeVideoController:Lcom/mopub/nativeads/NativeVideoController;

    invoke-virtual {v1, v5}, Lcom/mopub/nativeads/NativeVideoController;->setPlayWhenReady(Z)V

    .line 672
    iget-object v1, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->mMediaLayout:Lcom/mopub/nativeads/MediaLayout;

    sget-object v2, Lcom/mopub/nativeads/MediaLayout$Mode;->BUFFERING:Lcom/mopub/nativeads/MediaLayout$Mode;

    invoke-virtual {v1, v2}, Lcom/mopub/nativeads/MediaLayout;->setMode(Lcom/mopub/nativeads/MediaLayout$Mode;)V

    goto :goto_0

    .line 675
    :pswitch_3
    if-eqz p2, :cond_2

    .line 677
    iput-boolean v4, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->mResumeCanBeTracked:Z

    .line 680
    :cond_2
    if-nez p2, :cond_3

    .line 681
    iget-object v1, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->mNativeVideoController:Lcom/mopub/nativeads/NativeVideoController;

    invoke-virtual {v1, v4}, Lcom/mopub/nativeads/NativeVideoController;->setAppAudioEnabled(Z)V

    .line 682
    iget-boolean v1, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->mPauseCanBeTracked:Z

    if-eqz v1, :cond_3

    .line 683
    iget-object v1, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->mVastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;

    .line 684
    invoke-virtual {v1}, Lcom/mopub/mobileads/VastVideoConfig;->getPauseTrackers()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->mNativeVideoController:Lcom/mopub/nativeads/NativeVideoController;

    .line 686
    invoke-virtual {v2}, Lcom/mopub/nativeads/NativeVideoController;->getCurrentPosition()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->mContext:Landroid/content/Context;

    .line 683
    invoke-static {v1, v6, v2, v6, v3}, Lcom/mopub/network/TrackingRequest;->makeVastTrackingHttpRequest(Ljava/util/List;Lcom/mopub/mobileads/VastErrorCode;Ljava/lang/Integer;Ljava/lang/String;Landroid/content/Context;)V

    .line 689
    iput-boolean v4, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->mPauseCanBeTracked:Z

    .line 690
    iput-boolean v5, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->mResumeCanBeTracked:Z

    .line 693
    :cond_3
    iget-object v1, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->mNativeVideoController:Lcom/mopub/nativeads/NativeVideoController;

    invoke-virtual {v1, v4}, Lcom/mopub/nativeads/NativeVideoController;->setPlayWhenReady(Z)V

    .line 694
    iget-object v1, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->mMediaLayout:Lcom/mopub/nativeads/MediaLayout;

    sget-object v2, Lcom/mopub/nativeads/MediaLayout$Mode;->PAUSED:Lcom/mopub/nativeads/MediaLayout$Mode;

    invoke-virtual {v1, v2}, Lcom/mopub/nativeads/MediaLayout;->setMode(Lcom/mopub/nativeads/MediaLayout$Mode;)V

    goto/16 :goto_0

    .line 697
    :pswitch_4
    invoke-direct {p0, v0}, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->handleResumeTrackersAndSeek(Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$VideoState;)V

    .line 699
    iget-object v1, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->mNativeVideoController:Lcom/mopub/nativeads/NativeVideoController;

    invoke-virtual {v1, v5}, Lcom/mopub/nativeads/NativeVideoController;->setPlayWhenReady(Z)V

    .line 700
    iget-object v1, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->mNativeVideoController:Lcom/mopub/nativeads/NativeVideoController;

    invoke-virtual {v1, v5}, Lcom/mopub/nativeads/NativeVideoController;->setAudioEnabled(Z)V

    .line 701
    iget-object v1, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->mNativeVideoController:Lcom/mopub/nativeads/NativeVideoController;

    invoke-virtual {v1, v5}, Lcom/mopub/nativeads/NativeVideoController;->setAppAudioEnabled(Z)V

    .line 702
    iget-object v1, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->mMediaLayout:Lcom/mopub/nativeads/MediaLayout;

    sget-object v2, Lcom/mopub/nativeads/MediaLayout$Mode;->PLAYING:Lcom/mopub/nativeads/MediaLayout$Mode;

    invoke-virtual {v1, v2}, Lcom/mopub/nativeads/MediaLayout;->setMode(Lcom/mopub/nativeads/MediaLayout$Mode;)V

    .line 703
    iget-object v1, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->mMediaLayout:Lcom/mopub/nativeads/MediaLayout;

    sget-object v2, Lcom/mopub/nativeads/MediaLayout$MuteState;->UNMUTED:Lcom/mopub/nativeads/MediaLayout$MuteState;

    invoke-virtual {v1, v2}, Lcom/mopub/nativeads/MediaLayout;->setMuteState(Lcom/mopub/nativeads/MediaLayout$MuteState;)V

    goto/16 :goto_0

    .line 706
    :pswitch_5
    invoke-direct {p0, v0}, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->handleResumeTrackersAndSeek(Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$VideoState;)V

    .line 708
    iget-object v1, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->mNativeVideoController:Lcom/mopub/nativeads/NativeVideoController;

    invoke-virtual {v1, v5}, Lcom/mopub/nativeads/NativeVideoController;->setPlayWhenReady(Z)V

    .line 709
    iget-object v1, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->mNativeVideoController:Lcom/mopub/nativeads/NativeVideoController;

    invoke-virtual {v1, v4}, Lcom/mopub/nativeads/NativeVideoController;->setAudioEnabled(Z)V

    .line 710
    iget-object v1, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->mNativeVideoController:Lcom/mopub/nativeads/NativeVideoController;

    invoke-virtual {v1, v4}, Lcom/mopub/nativeads/NativeVideoController;->setAppAudioEnabled(Z)V

    .line 711
    iget-object v1, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->mMediaLayout:Lcom/mopub/nativeads/MediaLayout;

    sget-object v2, Lcom/mopub/nativeads/MediaLayout$Mode;->PLAYING:Lcom/mopub/nativeads/MediaLayout$Mode;

    invoke-virtual {v1, v2}, Lcom/mopub/nativeads/MediaLayout;->setMode(Lcom/mopub/nativeads/MediaLayout$Mode;)V

    .line 712
    iget-object v1, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->mMediaLayout:Lcom/mopub/nativeads/MediaLayout;

    sget-object v2, Lcom/mopub/nativeads/MediaLayout$MuteState;->MUTED:Lcom/mopub/nativeads/MediaLayout$MuteState;

    invoke-virtual {v1, v2}, Lcom/mopub/nativeads/MediaLayout;->setMuteState(Lcom/mopub/nativeads/MediaLayout$MuteState;)V

    goto/16 :goto_0

    .line 715
    :pswitch_6
    iget-object v1, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->mNativeVideoController:Lcom/mopub/nativeads/NativeVideoController;

    invoke-virtual {v1}, Lcom/mopub/nativeads/NativeVideoController;->hasFinalFrame()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 716
    iget-object v1, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->mMediaLayout:Lcom/mopub/nativeads/MediaLayout;

    iget-object v2, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->mNativeVideoController:Lcom/mopub/nativeads/NativeVideoController;

    invoke-virtual {v2}, Lcom/mopub/nativeads/NativeVideoController;->getFinalFrame()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mopub/nativeads/MediaLayout;->setMainImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 718
    :cond_4
    iput-boolean v4, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->mPauseCanBeTracked:Z

    .line 719
    iput-boolean v4, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->mResumeCanBeTracked:Z

    .line 720
    iget-object v1, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->mVastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;

    iget-object v2, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v4}, Lcom/mopub/mobileads/VastVideoConfig;->handleComplete(Landroid/content/Context;I)V

    .line 721
    iget-object v1, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->mNativeVideoController:Lcom/mopub/nativeads/NativeVideoController;

    invoke-virtual {v1, v4}, Lcom/mopub/nativeads/NativeVideoController;->setAppAudioEnabled(Z)V

    .line 722
    iget-object v1, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->mMediaLayout:Lcom/mopub/nativeads/MediaLayout;

    sget-object v2, Lcom/mopub/nativeads/MediaLayout$Mode;->FINISHED:Lcom/mopub/nativeads/MediaLayout$Mode;

    invoke-virtual {v1, v2}, Lcom/mopub/nativeads/MediaLayout;->setMode(Lcom/mopub/nativeads/MediaLayout$Mode;)V

    .line 723
    iget-object v1, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->mMediaLayout:Lcom/mopub/nativeads/MediaLayout;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Lcom/mopub/nativeads/MediaLayout;->updateProgress(I)V

    goto/16 :goto_0

    .line 651
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public clear(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 524
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 525
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->mNativeVideoController:Lcom/mopub/nativeads/NativeVideoController;

    invoke-virtual {v0}, Lcom/mopub/nativeads/NativeVideoController;->clear()V

    .line 526
    invoke-direct {p0}, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->cleanUpMediaLayout()V

    .line 527
    return-void
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 531
    invoke-direct {p0}, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->cleanUpMediaLayout()V

    .line 532
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->mNativeVideoController:Lcom/mopub/nativeads/NativeVideoController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mopub/nativeads/NativeVideoController;->setPlayWhenReady(Z)V

    .line 533
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->mNativeVideoController:Lcom/mopub/nativeads/NativeVideoController;

    invoke-virtual {v0, p0}, Lcom/mopub/nativeads/NativeVideoController;->release(Ljava/lang/Object;)V

    .line 534
    iget-wide v0, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->mId:J

    invoke-static {v0, v1}, Lcom/mopub/nativeads/NativeVideoController;->remove(J)Lcom/mopub/nativeads/NativeVideoController;

    .line 535
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->mVideoVisibleTracking:Lcom/mopub/nativeads/VisibilityTracker;

    invoke-virtual {v0}, Lcom/mopub/nativeads/VisibilityTracker;->destroy()V

    .line 536
    return-void
.end method

.method getId()J
    .locals 2
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 809
    iget-wide v0, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->mId:J

    return-wide v0
.end method

.method getMediaLayout()Lcom/mopub/nativeads/MediaLayout;
    .locals 1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 833
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->mMediaLayout:Lcom/mopub/nativeads/MediaLayout;

    return-object v0
.end method

.method getVideoState()Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$VideoState;
    .locals 1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 815
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->mVideoState:Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$VideoState;

    return-object v0
.end method

.method hasEnded()Z
    .locals 1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 791
    iget-boolean v0, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->mEnded:Z

    return v0
.end method

.method isMuted()Z
    .locals 1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 803
    iget-boolean v0, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->mMuted:Z

    return v0
.end method

.method loadAd()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 255
    iget-object v4, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->mJsonObject:Lorg/json/JSONObject;

    invoke-direct {p0, v4}, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->containsRequiredKeys(Lorg/json/JSONObject;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 256
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "JSONObject did not contain required keys."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 259
    :cond_0
    iget-object v4, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->mJsonObject:Lorg/json/JSONObject;

    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 260
    .local v2, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 261
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 262
    .local v1, "key":Ljava/lang/String;
    invoke-static {v1}, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$Parameter;->from(Ljava/lang/String;)Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$Parameter;

    move-result-object v3

    .line 264
    .local v3, "parameter":Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$Parameter;
    if-eqz v3, :cond_1

    .line 266
    :try_start_0
    iget-object v4, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->mJsonObject:Lorg/json/JSONObject;

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->addInstanceVariable(Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$Parameter;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 267
    :catch_0
    move-exception v0

    .line 268
    .local v0, "e":Ljava/lang/ClassCastException;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "JSONObject key ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") contained unexpected value."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 272
    .end local v0    # "e":Ljava/lang/ClassCastException;
    :cond_1
    iget-object v4, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->mJsonObject:Lorg/json/JSONObject;

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v1, v4}, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->addExtra(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 275
    .end local v1    # "key":Ljava/lang/String;
    .end local v3    # "parameter":Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$Parameter;
    :cond_2
    const-string v4, "https://www.mopub.com/optout/"

    invoke-virtual {p0, v4}, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->setPrivacyInformationIconClickThroughUrl(Ljava/lang/String;)V

    .line 277
    iget-object v4, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->getAllImageUrls()Ljava/util/List;

    move-result-object v5

    new-instance v6, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$2;

    invoke-direct {v6, p0}, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$2;-><init>(Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;)V

    invoke-static {v4, v5, v6}, Lcom/mopub/nativeads/NativeImageHelper;->preCacheImages(Landroid/content/Context;Ljava/util/List;Lcom/mopub/nativeads/NativeImageHelper$ImageListener;)V

    .line 291
    return-void
.end method

.method needsPrepare()Z
    .locals 1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 785
    iget-boolean v0, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->mNeedsPrepare:Z

    return v0
.end method

.method needsSeek()Z
    .locals 1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 797
    iget-boolean v0, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->mNeedsSeek:Z

    return v0
.end method

.method public onAudioFocusChange(I)V
    .locals 2
    .param p1, "focusChange"    # I

    .prologue
    const/4 v1, 0x1

    .line 558
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 v0, -0x2

    if-ne p1, v0, :cond_2

    .line 561
    :cond_0
    iput-boolean v1, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->mMuted:Z

    .line 562
    invoke-direct {p0}, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->maybeChangeState()V

    .line 571
    :cond_1
    :goto_0
    return-void

    .line 563
    :cond_2
    const/4 v0, -0x3

    if-ne p1, v0, :cond_3

    .line 565
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->mNativeVideoController:Lcom/mopub/nativeads/NativeVideoController;

    const v1, 0x3e99999a    # 0.3f

    invoke-virtual {v0, v1}, Lcom/mopub/nativeads/NativeVideoController;->setAudioVolume(F)V

    goto :goto_0

    .line 566
    :cond_3
    if-ne p1, v1, :cond_1

    .line 568
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->mNativeVideoController:Lcom/mopub/nativeads/NativeVideoController;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/mopub/nativeads/NativeVideoController;->setAudioVolume(F)V

    .line 569
    invoke-direct {p0}, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->maybeChangeState()V

    goto :goto_0
.end method

.method public onError(Ljava/lang/Exception;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 546
    const-string v0, "Error playing back video."

    invoke-static {v0, p1}, Lcom/mopub/common/logging/MoPubLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 547
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->mError:Z

    .line 548
    invoke-direct {p0}, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->maybeChangeState()V

    .line 549
    return-void
.end method

.method public onStateChanged(ZI)V
    .locals 0
    .param p1, "playWhenReady"    # Z
    .param p2, "playbackState"    # I

    .prologue
    .line 540
    iput p2, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->mLatestVideoControllerState:I

    .line 541
    invoke-direct {p0}, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->maybeChangeState()V

    .line 542
    return-void
.end method

.method public onVastVideoConfigurationPrepared(Lcom/mopub/mobileads/VastVideoConfig;)V
    .locals 13
    .param p1, "vastVideoConfig"    # Lcom/mopub/mobileads/VastVideoConfig;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 295
    if-nez p1, :cond_0

    .line 296
    iget-object v1, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->mCustomEventNativeListener:Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;

    sget-object v2, Lcom/mopub/nativeads/NativeErrorCode;->INVALID_RESPONSE:Lcom/mopub/nativeads/NativeErrorCode;

    invoke-interface {v1, v2}, Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;->onNativeAdFailed(Lcom/mopub/nativeads/NativeErrorCode;)V

    .line 346
    :goto_0
    return-void

    .line 300
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 304
    .local v5, "visibilityTrackingEvents":Ljava/util/List;, "Ljava/util/List<Lcom/mopub/nativeads/NativeVideoController$VisibilityTrackingEvent;>;"
    new-instance v12, Lcom/mopub/nativeads/NativeVideoController$VisibilityTrackingEvent;

    invoke-direct {v12}, Lcom/mopub/nativeads/NativeVideoController$VisibilityTrackingEvent;-><init>()V

    .line 305
    .local v12, "visibilityTrackingEvent":Lcom/mopub/nativeads/NativeVideoController$VisibilityTrackingEvent;
    new-instance v1, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$HeaderVisibilityStrategy;

    invoke-direct {v1, p0}, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$HeaderVisibilityStrategy;-><init>(Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;)V

    iput-object v1, v12, Lcom/mopub/nativeads/NativeVideoController$VisibilityTrackingEvent;->strategy:Lcom/mopub/nativeads/NativeVideoController$VisibilityTrackingEvent$OnTrackedStrategy;

    .line 306
    iget-object v1, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->mVideoResponseHeaders:Lcom/mopub/nativeads/MoPubCustomEventVideoNative$VideoResponseHeaders;

    .line 307
    invoke-virtual {v1}, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$VideoResponseHeaders;->getImpressionMinVisiblePercent()I

    move-result v1

    iput v1, v12, Lcom/mopub/nativeads/NativeVideoController$VisibilityTrackingEvent;->minimumPercentageVisible:I

    .line 308
    iget-object v1, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->mVideoResponseHeaders:Lcom/mopub/nativeads/MoPubCustomEventVideoNative$VideoResponseHeaders;

    .line 309
    invoke-virtual {v1}, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$VideoResponseHeaders;->getImpressionVisibleMs()I

    move-result v1

    iput v1, v12, Lcom/mopub/nativeads/NativeVideoController$VisibilityTrackingEvent;->totalRequiredPlayTimeMs:I

    .line 310
    invoke-interface {v5, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 313
    iput-object p1, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->mVastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;

    .line 314
    iget-object v1, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->mVastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;

    .line 315
    invoke-virtual {v1}, Lcom/mopub/mobileads/VastVideoConfig;->getVideoViewabilityTracker()Lcom/mopub/mobileads/VideoViewabilityTracker;

    move-result-object v10

    .line 316
    .local v10, "vastVideoViewabilityTracker":Lcom/mopub/mobileads/VideoViewabilityTracker;
    if-eqz v10, :cond_1

    .line 317
    new-instance v11, Lcom/mopub/nativeads/NativeVideoController$VisibilityTrackingEvent;

    invoke-direct {v11}, Lcom/mopub/nativeads/NativeVideoController$VisibilityTrackingEvent;-><init>()V

    .line 319
    .local v11, "vastVisibilityTrackingEvent":Lcom/mopub/nativeads/NativeVideoController$VisibilityTrackingEvent;
    new-instance v1, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$PayloadVisibilityStrategy;

    iget-object v2, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->mContext:Landroid/content/Context;

    .line 321
    invoke-virtual {v10}, Lcom/mopub/mobileads/VideoViewabilityTracker;->getTrackingUrl()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$PayloadVisibilityStrategy;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, v11, Lcom/mopub/nativeads/NativeVideoController$VisibilityTrackingEvent;->strategy:Lcom/mopub/nativeads/NativeVideoController$VisibilityTrackingEvent$OnTrackedStrategy;

    .line 323
    invoke-virtual {v10}, Lcom/mopub/mobileads/VideoViewabilityTracker;->getPercentViewable()I

    move-result v1

    iput v1, v11, Lcom/mopub/nativeads/NativeVideoController$VisibilityTrackingEvent;->minimumPercentageVisible:I

    .line 325
    invoke-virtual {v10}, Lcom/mopub/mobileads/VideoViewabilityTracker;->getViewablePlaytimeMS()I

    move-result v1

    iput v1, v11, Lcom/mopub/nativeads/NativeVideoController$VisibilityTrackingEvent;->totalRequiredPlayTimeMs:I

    .line 326
    invoke-interface {v5, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 329
    .end local v11    # "vastVisibilityTrackingEvent":Lcom/mopub/nativeads/NativeVideoController$VisibilityTrackingEvent;
    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 330
    .local v0, "clickTrackers":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->mMoPubClickTrackingUrl:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 331
    invoke-virtual {p0}, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->getClickTrackers()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 333
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 334
    .local v9, "vastClickTrackers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mopub/mobileads/VastTracker;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 335
    .local v8, "clickTrackingUrl":Ljava/lang/String;
    new-instance v2, Lcom/mopub/mobileads/VastTracker;

    const/4 v3, 0x0

    invoke-direct {v2, v8, v3}, Lcom/mopub/mobileads/VastTracker;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 337
    .end local v8    # "clickTrackingUrl":Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->mVastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;

    invoke-virtual {v1, v9}, Lcom/mopub/mobileads/VastVideoConfig;->addClickTrackers(Ljava/util/List;)V

    .line 340
    iget-object v1, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->mVastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;

    invoke-virtual {p0}, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->getClickDestinationUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mopub/mobileads/VastVideoConfig;->setClickThroughUrl(Ljava/lang/String;)V

    .line 342
    iget-object v1, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->mNativeVideoControllerFactory:Lcom/mopub/nativeads/MoPubCustomEventVideoNative$NativeVideoControllerFactory;

    iget-wide v2, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->mId:J

    iget-object v4, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->mVastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;

    iget-object v7, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->mEventDetails:Lcom/mopub/common/event/EventDetails;

    invoke-virtual/range {v1 .. v7}, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$NativeVideoControllerFactory;->createForId(JLandroid/content/Context;Ljava/util/List;Lcom/mopub/mobileads/VastVideoConfig;Lcom/mopub/common/event/EventDetails;)Lcom/mopub/nativeads/NativeVideoController;

    move-result-object v1

    iput-object v1, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->mNativeVideoController:Lcom/mopub/nativeads/NativeVideoController;

    .line 345
    iget-object v1, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->mCustomEventNativeListener:Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;

    invoke-interface {v1, p0}, Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;->onNativeAdLoaded(Lcom/mopub/nativeads/BaseNativeAd;)V

    goto/16 :goto_0
.end method

.method public prepare(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 509
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 510
    iput-object p1, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->mRootView:Landroid/view/View;

    .line 511
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->mRootView:Landroid/view/View;

    new-instance v1, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$7;

    invoke-direct {v1, p0}, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$7;-><init>(Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 520
    return-void
.end method

.method public render(Lcom/mopub/nativeads/MediaLayout;)V
    .locals 4
    .param p1, "mediaLayout"    # Lcom/mopub/nativeads/MediaLayout;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 417
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 419
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->mVideoVisibleTracking:Lcom/mopub/nativeads/VisibilityTracker;

    iget-object v1, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->mRootView:Landroid/view/View;

    iget-object v2, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->mVideoResponseHeaders:Lcom/mopub/nativeads/MoPubCustomEventVideoNative$VideoResponseHeaders;

    .line 421
    invoke-virtual {v2}, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$VideoResponseHeaders;->getPlayVisiblePercent()I

    move-result v2

    iget-object v3, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->mVideoResponseHeaders:Lcom/mopub/nativeads/MoPubCustomEventVideoNative$VideoResponseHeaders;

    .line 422
    invoke-virtual {v3}, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$VideoResponseHeaders;->getPauseVisiblePercent()I

    move-result v3

    .line 419
    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/mopub/nativeads/VisibilityTracker;->addView(Landroid/view/View;Landroid/view/View;II)V

    .line 424
    iput-object p1, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->mMediaLayout:Lcom/mopub/nativeads/MediaLayout;

    .line 425
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->mMediaLayout:Lcom/mopub/nativeads/MediaLayout;

    invoke-virtual {v0}, Lcom/mopub/nativeads/MediaLayout;->initForVideo()V

    .line 427
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->mMediaLayout:Lcom/mopub/nativeads/MediaLayout;

    new-instance v1, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$3;

    invoke-direct {v1, p0}, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$3;-><init>(Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;)V

    invoke-virtual {v0, v1}, Lcom/mopub/nativeads/MediaLayout;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 472
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->mMediaLayout:Lcom/mopub/nativeads/MediaLayout;

    new-instance v1, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$4;

    invoke-direct {v1, p0}, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$4;-><init>(Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;)V

    invoke-virtual {v0, v1}, Lcom/mopub/nativeads/MediaLayout;->setPlayButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 482
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->mMediaLayout:Lcom/mopub/nativeads/MediaLayout;

    new-instance v1, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$5;

    invoke-direct {v1, p0}, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$5;-><init>(Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;)V

    invoke-virtual {v0, v1}, Lcom/mopub/nativeads/MediaLayout;->setMuteControlClickListener(Landroid/view/View$OnClickListener;)V

    .line 490
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->mMediaLayout:Lcom/mopub/nativeads/MediaLayout;

    new-instance v1, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$6;

    invoke-direct {v1, p0}, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$6;-><init>(Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;)V

    invoke-virtual {v0, v1}, Lcom/mopub/nativeads/MediaLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 499
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->mNativeVideoController:Lcom/mopub/nativeads/NativeVideoController;

    invoke-virtual {v0}, Lcom/mopub/nativeads/NativeVideoController;->getPlaybackState()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 500
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->mNativeVideoController:Lcom/mopub/nativeads/NativeVideoController;

    invoke-virtual {v0, p0}, Lcom/mopub/nativeads/NativeVideoController;->prepare(Ljava/lang/Object;)V

    .line 503
    :cond_0
    sget-object v0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$VideoState;->PAUSED:Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$VideoState;

    invoke-virtual {p0, v0}, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->applyState(Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$VideoState;)V

    .line 504
    return-void
.end method

.method setLatestVisibility(Z)V
    .locals 0
    .param p1, "latestVisibility"    # Z
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 821
    iput-boolean p1, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->mLatestVisibility:Z

    .line 822
    return-void
.end method

.method setMuted(Z)V
    .locals 0
    .param p1, "muted"    # Z
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 827
    iput-boolean p1, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->mMuted:Z

    .line 828
    return-void
.end method

.method public updateProgress(I)V
    .locals 1
    .param p1, "progressTenthPercent"    # I

    .prologue
    .line 553
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->mMediaLayout:Lcom/mopub/nativeads/MediaLayout;

    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/MediaLayout;->updateProgress(I)V

    .line 554
    return-void
.end method
