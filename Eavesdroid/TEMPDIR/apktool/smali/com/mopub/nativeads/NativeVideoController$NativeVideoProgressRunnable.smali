.class Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;
.super Lcom/mopub/mobileads/RepeatingHandlerRunnable;
.source "NativeVideoController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/nativeads/NativeVideoController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NativeVideoProgressRunnable"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable$ProgressListener;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mCurrentPosition:J

.field private mDuration:J

.field private mExoPlayer:Lcom/google/android/exoplayer/ExoPlayer;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mProgressListener:Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable$ProgressListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mStopRequested:Z

.field private mTextureView:Landroid/view/TextureView;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mVastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mVisibilityChecker:Lcom/mopub/nativeads/VisibilityTracker$VisibilityChecker;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mVisibilityTrackingEvents:Ljava/util/List;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mopub/nativeads/NativeVideoController$VisibilityTrackingEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;Ljava/util/List;Lcom/mopub/mobileads/VastVideoConfig;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "handler"    # Landroid/os/Handler;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "vastVideoConfig"    # Lcom/mopub/mobileads/VastVideoConfig;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Handler;",
            "Ljava/util/List",
            "<",
            "Lcom/mopub/nativeads/NativeVideoController$VisibilityTrackingEvent;",
            ">;",
            "Lcom/mopub/mobileads/VastVideoConfig;",
            ")V"
        }
    .end annotation

    .prologue
    .line 513
    .local p3, "visibilityTrackingEvents":Ljava/util/List;, "Ljava/util/List<Lcom/mopub/nativeads/NativeVideoController$VisibilityTrackingEvent;>;"
    new-instance v4, Lcom/mopub/nativeads/VisibilityTracker$VisibilityChecker;

    invoke-direct {v4}, Lcom/mopub/nativeads/VisibilityTracker$VisibilityChecker;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/util/List;Lcom/mopub/nativeads/VisibilityTracker$VisibilityChecker;Lcom/mopub/mobileads/VastVideoConfig;)V

    .line 515
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;Ljava/util/List;Lcom/mopub/nativeads/VisibilityTracker$VisibilityChecker;Lcom/mopub/mobileads/VastVideoConfig;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "handler"    # Landroid/os/Handler;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "visibilityChecker"    # Lcom/mopub/nativeads/VisibilityTracker$VisibilityChecker;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5, "vastVideoConfig"    # Lcom/mopub/mobileads/VastVideoConfig;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Handler;",
            "Ljava/util/List",
            "<",
            "Lcom/mopub/nativeads/NativeVideoController$VisibilityTrackingEvent;",
            ">;",
            "Lcom/mopub/nativeads/VisibilityTracker$VisibilityChecker;",
            "Lcom/mopub/mobileads/VastVideoConfig;",
            ")V"
        }
    .end annotation

    .prologue
    .line 523
    .local p3, "visibilityTrackingEvents":Ljava/util/List;, "Ljava/util/List<Lcom/mopub/nativeads/NativeVideoController$VisibilityTrackingEvent;>;"
    invoke-direct {p0, p2}, Lcom/mopub/mobileads/RepeatingHandlerRunnable;-><init>(Landroid/os/Handler;)V

    .line 524
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 525
    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 526
    invoke-static {p3}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 527
    invoke-static {p5}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 529
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;->mContext:Landroid/content/Context;

    .line 530
    iput-object p3, p0, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;->mVisibilityTrackingEvents:Ljava/util/List;

    .line 531
    iput-object p4, p0, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;->mVisibilityChecker:Lcom/mopub/nativeads/VisibilityTracker$VisibilityChecker;

    .line 532
    iput-object p5, p0, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;->mVastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;

    .line 533
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;->mDuration:J

    .line 534
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;->mStopRequested:Z

    .line 535
    return-void
.end method


# virtual methods
.method checkImpressionTrackers(Z)V
    .locals 8
    .param p1, "forceTrigger"    # Z

    .prologue
    .line 566
    const/4 v1, 0x0

    .line 567
    .local v1, "trackedCount":I
    iget-object v2, p0, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;->mVisibilityTrackingEvents:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/nativeads/NativeVideoController$VisibilityTrackingEvent;

    .line 568
    .local v0, "event":Lcom/mopub/nativeads/NativeVideoController$VisibilityTrackingEvent;
    iget-boolean v3, v0, Lcom/mopub/nativeads/NativeVideoController$VisibilityTrackingEvent;->isTracked:Z

    if-eqz v3, :cond_1

    .line 569
    add-int/lit8 v1, v1, 0x1

    .line 570
    goto :goto_0

    .line 572
    :cond_1
    if-nez p1, :cond_2

    iget-object v3, p0, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;->mVisibilityChecker:Lcom/mopub/nativeads/VisibilityTracker$VisibilityChecker;

    iget-object v4, p0, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;->mTextureView:Landroid/view/TextureView;

    iget-object v5, p0, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;->mTextureView:Landroid/view/TextureView;

    iget v6, v0, Lcom/mopub/nativeads/NativeVideoController$VisibilityTrackingEvent;->minimumPercentageVisible:I

    invoke-virtual {v3, v4, v5, v6}, Lcom/mopub/nativeads/VisibilityTracker$VisibilityChecker;->isVisible(Landroid/view/View;Landroid/view/View;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 574
    :cond_2
    iget v3, v0, Lcom/mopub/nativeads/NativeVideoController$VisibilityTrackingEvent;->totalQualifiedPlayCounter:I

    int-to-long v4, v3

    iget-wide v6, p0, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;->mUpdateIntervalMillis:J

    add-long/2addr v4, v6

    long-to-int v3, v4

    iput v3, v0, Lcom/mopub/nativeads/NativeVideoController$VisibilityTrackingEvent;->totalQualifiedPlayCounter:I

    .line 575
    if-nez p1, :cond_3

    iget v3, v0, Lcom/mopub/nativeads/NativeVideoController$VisibilityTrackingEvent;->totalQualifiedPlayCounter:I

    iget v4, v0, Lcom/mopub/nativeads/NativeVideoController$VisibilityTrackingEvent;->totalRequiredPlayTimeMs:I

    if-lt v3, v4, :cond_0

    .line 577
    :cond_3
    iget-object v3, v0, Lcom/mopub/nativeads/NativeVideoController$VisibilityTrackingEvent;->strategy:Lcom/mopub/nativeads/NativeVideoController$VisibilityTrackingEvent$OnTrackedStrategy;

    invoke-interface {v3}, Lcom/mopub/nativeads/NativeVideoController$VisibilityTrackingEvent$OnTrackedStrategy;->execute()V

    .line 578
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/mopub/nativeads/NativeVideoController$VisibilityTrackingEvent;->isTracked:Z

    .line 579
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 583
    .end local v0    # "event":Lcom/mopub/nativeads/NativeVideoController$VisibilityTrackingEvent;
    :cond_4
    iget-object v2, p0, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;->mVisibilityTrackingEvents:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v1, v2, :cond_5

    iget-boolean v2, p0, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;->mStopRequested:Z

    if-eqz v2, :cond_5

    .line 584
    invoke-virtual {p0}, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;->stop()V

    .line 586
    :cond_5
    return-void
.end method

.method public doWork()V
    .locals 8

    .prologue
    .line 590
    iget-object v4, p0, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;->mExoPlayer:Lcom/google/android/exoplayer/ExoPlayer;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;->mExoPlayer:Lcom/google/android/exoplayer/ExoPlayer;

    invoke-interface {v4}, Lcom/google/android/exoplayer/ExoPlayer;->getPlayWhenReady()Z

    move-result v4

    if-nez v4, :cond_1

    .line 618
    :cond_0
    :goto_0
    return-void

    .line 594
    :cond_1
    iget-object v4, p0, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;->mExoPlayer:Lcom/google/android/exoplayer/ExoPlayer;

    invoke-interface {v4}, Lcom/google/android/exoplayer/ExoPlayer;->getCurrentPosition()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;->mCurrentPosition:J

    .line 595
    iget-object v4, p0, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;->mExoPlayer:Lcom/google/android/exoplayer/ExoPlayer;

    invoke-interface {v4}, Lcom/google/android/exoplayer/ExoPlayer;->getDuration()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;->mDuration:J

    .line 597
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;->checkImpressionTrackers(Z)V

    .line 599
    iget-object v4, p0, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;->mProgressListener:Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable$ProgressListener;

    if-eqz v4, :cond_2

    .line 600
    iget-wide v4, p0, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;->mCurrentPosition:J

    long-to-float v4, v4

    iget-wide v6, p0, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;->mDuration:J

    long-to-float v5, v6

    div-float/2addr v4, v5

    const/high16 v5, 0x447a0000    # 1000.0f

    mul-float v0, v4, v5

    .line 601
    .local v0, "tenthsOfPercentPlayed":F
    iget-object v4, p0, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;->mProgressListener:Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable$ProgressListener;

    float-to-int v5, v0

    invoke-interface {v4, v5}, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable$ProgressListener;->updateProgress(I)V

    .line 604
    .end local v0    # "tenthsOfPercentPlayed":F
    :cond_2
    iget-object v4, p0, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;->mVastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;

    iget-wide v6, p0, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;->mCurrentPosition:J

    long-to-int v5, v6

    iget-wide v6, p0, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;->mDuration:J

    long-to-int v6, v6

    .line 605
    invoke-virtual {v4, v5, v6}, Lcom/mopub/mobileads/VastVideoConfig;->getUntriggeredTrackersBefore(II)Ljava/util/List;

    move-result-object v2

    .line 607
    .local v2, "trackers":Ljava/util/List;, "Ljava/util/List<Lcom/mopub/mobileads/VastTracker;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 608
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 609
    .local v3, "trackingUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mopub/mobileads/VastTracker;

    .line 610
    .local v1, "tracker":Lcom/mopub/mobileads/VastTracker;
    invoke-virtual {v1}, Lcom/mopub/mobileads/VastTracker;->isTracked()Z

    move-result v5

    if-nez v5, :cond_3

    .line 613
    invoke-virtual {v1}, Lcom/mopub/mobileads/VastTracker;->getTrackingUrl()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 614
    invoke-virtual {v1}, Lcom/mopub/mobileads/VastTracker;->setTracked()V

    goto :goto_1

    .line 616
    .end local v1    # "tracker":Lcom/mopub/mobileads/VastTracker;
    :cond_4
    iget-object v4, p0, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;->mContext:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/mopub/network/TrackingRequest;->makeTrackingHttpRequest(Ljava/lang/Iterable;Landroid/content/Context;)V

    goto :goto_0
.end method

.method getCurrentPosition()J
    .locals 2

    .prologue
    .line 554
    iget-wide v0, p0, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;->mCurrentPosition:J

    return-wide v0
.end method

.method getDuration()J
    .locals 2

    .prologue
    .line 558
    iget-wide v0, p0, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;->mDuration:J

    return-wide v0
.end method

.method requestStop()V
    .locals 1

    .prologue
    .line 562
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;->mStopRequested:Z

    .line 563
    return-void
.end method

.method seekTo(J)V
    .locals 1
    .param p1, "currentPosition"    # J

    .prologue
    .line 550
    iput-wide p1, p0, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;->mCurrentPosition:J

    .line 551
    return-void
.end method

.method setExoPlayer(Lcom/google/android/exoplayer/ExoPlayer;)V
    .locals 0
    .param p1, "exoPlayer"    # Lcom/google/android/exoplayer/ExoPlayer;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 538
    iput-object p1, p0, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;->mExoPlayer:Lcom/google/android/exoplayer/ExoPlayer;

    .line 539
    return-void
.end method

.method setProgressListener(Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable$ProgressListener;)V
    .locals 0
    .param p1, "progressListener"    # Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable$ProgressListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 546
    iput-object p1, p0, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;->mProgressListener:Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable$ProgressListener;

    .line 547
    return-void
.end method

.method setTextureView(Landroid/view/TextureView;)V
    .locals 0
    .param p1, "textureView"    # Landroid/view/TextureView;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 542
    iput-object p1, p0, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;->mTextureView:Landroid/view/TextureView;

    .line 543
    return-void
.end method

.method setUpdateIntervalMillis(J)V
    .locals 1
    .param p1, "updateIntervalMillis"    # J
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 623
    iput-wide p1, p0, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;->mUpdateIntervalMillis:J

    .line 624
    return-void
.end method
