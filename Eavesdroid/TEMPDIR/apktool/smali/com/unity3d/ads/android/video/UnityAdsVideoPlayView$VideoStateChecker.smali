.class Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;
.super Ljava/util/TimerTask;
.source "UnityAdsVideoPlayView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VideoStateChecker"
.end annotation


# instance fields
.field private _curPos:Ljava/lang/Float;

.field private _duration:I

.field private _oldPos:Ljava/lang/Float;

.field private _playHeadHasMoved:Z

.field private _skipTimeLeft:Ljava/lang/Float;

.field private _videoHasStalled:Z

.field final synthetic this$0:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;


# direct methods
.method private constructor <init>(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 429
    iput-object p1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;->this$0:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 430
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;->_curPos:Ljava/lang/Float;

    .line 431
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;->_oldPos:Ljava/lang/Float;

    .line 432
    const v0, 0x3c23d70a    # 0.01f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;->_skipTimeLeft:Ljava/lang/Float;

    .line 433
    const/4 v0, 0x1

    iput v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;->_duration:I

    .line 434
    iput-boolean v2, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;->_playHeadHasMoved:Z

    .line 435
    iput-boolean v2, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;->_videoHasStalled:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;
    .param p2, "x1"    # Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$1;

    .prologue
    .line 429
    invoke-direct {p0, p1}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;-><init>(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;)Z
    .locals 1
    .param p0, "x0"    # Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;

    .prologue
    .line 429
    iget-boolean v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;->_videoHasStalled:Z

    return v0
.end method

.method static synthetic access$2700(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;)Ljava/lang/Float;
    .locals 1
    .param p0, "x0"    # Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;

    .prologue
    .line 429
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;->_curPos:Ljava/lang/Float;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const-wide/16 v12, 0x0

    const/4 v4, 0x0

    const/4 v10, 0x0

    const/4 v5, 0x1

    .line 439
    iget-object v6, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;->this$0:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-static {v6}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->access$100(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)Lcom/unity3d/ads/android/video/UnityAdsVideoView;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;->this$0:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-static {v6}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->access$2100(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)Landroid/widget/TextView;

    move-result-object v6

    if-nez v6, :cond_2

    .line 440
    :cond_0
    iget-object v4, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;->this$0:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-static {v4}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->access$2200(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)V

    .line 569
    :cond_1
    :goto_0
    return-void

    .line 444
    :cond_2
    iget-object v6, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;->_curPos:Ljava/lang/Float;

    iput-object v6, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;->_oldPos:Ljava/lang/Float;

    .line 447
    :try_start_0
    iget-object v6, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;->this$0:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-static {v6}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->access$100(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)Lcom/unity3d/ads/android/video/UnityAdsVideoView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/unity3d/ads/android/video/UnityAdsVideoView;->getCurrentPosition()I

    move-result v6

    int-to-float v6, v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    iput-object v6, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;->_curPos:Ljava/lang/Float;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 458
    :goto_1
    const/4 v0, 0x1

    .line 459
    .local v0, "duration":I
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 462
    .local v1, "durationSuccess":Ljava/lang/Boolean;
    :try_start_1
    iget-object v6, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;->this$0:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-static {v6}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->access$100(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)Lcom/unity3d/ads/android/video/UnityAdsVideoView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/unity3d/ads/android/video/UnityAdsVideoView;->getDuration()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    .line 469
    :goto_2
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 470
    iput v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;->_duration:I

    .line 472
    :cond_3
    iget-object v6, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;->_curPos:Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    iget v7, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;->_duration:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    .line 474
    .local v3, "position":Ljava/lang/Float;
    iget-object v6, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;->_curPos:Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    iget-object v7, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;->_oldPos:Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_c

    .line 475
    iput-boolean v5, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;->_playHeadHasMoved:Z

    .line 476
    iput-boolean v4, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;->_videoHasStalled:Z

    .line 477
    iget-object v6, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;->this$0:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    const/4 v7, 0x4

    iget-object v8, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;->this$0:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-static {v8}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->access$2300(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)Z

    move-result v8

    iget-object v9, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;->_skipTimeLeft:Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    cmpg-float v9, v9, v10

    if-gtz v9, :cond_4

    move v4, v5

    :cond_4
    invoke-static {v6, v7, v8, v4}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->access$2400(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;IZZ)V

    .line 483
    :goto_3
    new-instance v4, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker$1;

    invoke-direct {v4, p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker$1;-><init>(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;)V

    invoke-static {v4}, Lcom/unity3d/ads/android/UnityAdsUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 490
    iget-object v4, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;->this$0:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-static {v4}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->access$2300(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)Z

    move-result v4

    if-eqz v4, :cond_e

    iget-object v4, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;->this$0:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-static {v4}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->access$1600(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)J

    move-result-wide v6

    cmp-long v4, v6, v12

    if-lez v4, :cond_e

    iget-object v4, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;->_skipTimeLeft:Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    cmpl-float v4, v4, v10

    if-lez v4, :cond_e

    iget v4, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;->_duration:I

    div-int/lit16 v4, v4, 0x3e8

    int-to-long v6, v4

    iget-object v4, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;->this$0:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-static {v4}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->access$1600(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)J

    move-result-wide v8

    cmp-long v4, v6, v8

    if-lez v4, :cond_e

    .line 491
    iget-object v4, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;->this$0:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-static {v4}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->access$1600(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    long-to-float v4, v6

    iget-object v6, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;->_curPos:Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    sub-float/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    iput-object v4, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;->_skipTimeLeft:Ljava/lang/Float;

    .line 493
    iget-object v4, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;->_skipTimeLeft:Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    cmpg-float v4, v4, v10

    if-gez v4, :cond_5

    .line 494
    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    iput-object v4, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;->_skipTimeLeft:Ljava/lang/Float;

    .line 496
    :cond_5
    iget-object v4, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;->_skipTimeLeft:Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    cmpl-float v4, v4, v10

    if-nez v4, :cond_d

    .line 497
    new-instance v4, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker$2;

    invoke-direct {v4, p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker$2;-><init>(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;)V

    invoke-static {v4}, Lcom/unity3d/ads/android/UnityAdsUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 525
    :cond_6
    :goto_4
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v4

    float-to-double v6, v4

    const-wide/high16 v8, 0x3fd0000000000000L    # 0.25

    cmpl-double v4, v6, v8

    if-lez v4, :cond_7

    iget-object v4, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;->this$0:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-static {v4}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->access$2800(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)Ljava/util/Map;

    move-result-object v4

    sget-object v6, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;->FirstQuartile:Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;

    invoke-interface {v4, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 526
    iget-object v4, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;->this$0:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-static {v4}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->access$400(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)Lcom/unity3d/ads/android/video/IUnityAdsVideoPlayerListener;

    move-result-object v4

    sget-object v6, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;->FirstQuartile:Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;

    invoke-interface {v4, v6}, Lcom/unity3d/ads/android/video/IUnityAdsVideoPlayerListener;->onEventPositionReached(Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;)V

    .line 527
    iget-object v4, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;->this$0:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-static {v4}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->access$2800(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)Ljava/util/Map;

    move-result-object v4

    sget-object v6, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;->FirstQuartile:Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    :cond_7
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v4

    float-to-double v6, v4

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    cmpl-double v4, v6, v8

    if-lez v4, :cond_8

    iget-object v4, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;->this$0:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-static {v4}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->access$2800(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)Ljava/util/Map;

    move-result-object v4

    sget-object v6, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;->MidPoint:Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;

    invoke-interface {v4, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 530
    iget-object v4, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;->this$0:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-static {v4}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->access$400(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)Lcom/unity3d/ads/android/video/IUnityAdsVideoPlayerListener;

    move-result-object v4

    sget-object v6, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;->MidPoint:Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;

    invoke-interface {v4, v6}, Lcom/unity3d/ads/android/video/IUnityAdsVideoPlayerListener;->onEventPositionReached(Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;)V

    .line 531
    iget-object v4, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;->this$0:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-static {v4}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->access$2800(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)Ljava/util/Map;

    move-result-object v4

    sget-object v6, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;->MidPoint:Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 533
    :cond_8
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v4

    float-to-double v6, v4

    const-wide/high16 v8, 0x3fe8000000000000L    # 0.75

    cmpl-double v4, v6, v8

    if-lez v4, :cond_9

    iget-object v4, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;->this$0:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-static {v4}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->access$2800(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)Ljava/util/Map;

    move-result-object v4

    sget-object v6, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;->ThirdQuartile:Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;

    invoke-interface {v4, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 534
    iget-object v4, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;->this$0:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-static {v4}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->access$400(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)Lcom/unity3d/ads/android/video/IUnityAdsVideoPlayerListener;

    move-result-object v4

    sget-object v6, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;->ThirdQuartile:Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;

    invoke-interface {v4, v6}, Lcom/unity3d/ads/android/video/IUnityAdsVideoPlayerListener;->onEventPositionReached(Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;)V

    .line 535
    iget-object v4, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;->this$0:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-static {v4}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->access$2800(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)Ljava/util/Map;

    move-result-object v4

    sget-object v6, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;->ThirdQuartile:Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 538
    :cond_9
    iget-boolean v4, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;->_playHeadHasMoved:Z

    if-nez v4, :cond_a

    iget-object v4, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;->this$0:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-static {v4}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->access$2900(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)J

    move-result-wide v4

    cmp-long v4, v4, v12

    if-lez v4, :cond_a

    .line 539
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;->this$0:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-static {v6}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->access$2900(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x4e20

    cmp-long v4, v4, v6

    if-lez v4, :cond_a

    .line 540
    invoke-virtual {p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;->cancel()Z

    .line 541
    new-instance v4, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker$5;

    invoke-direct {v4, p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker$5;-><init>(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;)V

    invoke-static {v4}, Lcom/unity3d/ads/android/UnityAdsUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 550
    :cond_a
    iget-object v4, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;->this$0:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-static {v4}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->access$800(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;->_playHeadHasMoved:Z

    if-eqz v4, :cond_1

    .line 551
    new-instance v4, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker$6;

    invoke-direct {v4, p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker$6;-><init>(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;)V

    invoke-static {v4}, Lcom/unity3d/ads/android/UnityAdsUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 449
    .end local v0    # "duration":I
    .end local v1    # "durationSuccess":Ljava/lang/Boolean;
    .end local v3    # "position":Ljava/lang/Float;
    :catch_0
    move-exception v2

    .line 450
    .local v2, "e":Ljava/lang/Exception;
    const-string v6, "Could not get videoView currentPosition"

    invoke-static {v6}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    .line 451
    iget-object v6, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;->_oldPos:Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    cmpl-float v6, v6, v10

    if-lez v6, :cond_b

    .line 452
    iget-object v6, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;->_oldPos:Ljava/lang/Float;

    iput-object v6, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;->_curPos:Ljava/lang/Float;

    goto/16 :goto_1

    .line 454
    :cond_b
    const v6, 0x3c23d70a    # 0.01f

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    iput-object v6, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;->_curPos:Ljava/lang/Float;

    goto/16 :goto_1

    .line 464
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "duration":I
    .restart local v1    # "durationSuccess":Ljava/lang/Boolean;
    :catch_1
    move-exception v2

    .line 465
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v6, "Could not get videoView duration"

    invoke-static {v6}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    .line 466
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto/16 :goto_2

    .line 479
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v3    # "position":Ljava/lang/Float;
    :cond_c
    iput-boolean v5, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;->_videoHasStalled:Z

    .line 480
    iget-object v6, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;->this$0:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-static {v6, v4, v5, v5}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->access$2400(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;IZZ)V

    goto/16 :goto_3

    .line 505
    :cond_d
    new-instance v4, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker$3;

    invoke-direct {v4, p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker$3;-><init>(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;)V

    invoke-static {v4}, Lcom/unity3d/ads/android/UnityAdsUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_4

    .line 516
    :cond_e
    iget-boolean v4, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;->_playHeadHasMoved:Z

    if-eqz v4, :cond_6

    iget v4, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;->_duration:I

    div-int/lit16 v4, v4, 0x3e8

    int-to-long v6, v4

    iget-object v4, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;->this$0:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-static {v4}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->access$1600(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)J

    move-result-wide v8

    cmp-long v4, v6, v8

    if-gtz v4, :cond_6

    .line 517
    new-instance v4, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker$4;

    invoke-direct {v4, p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker$4;-><init>(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$VideoStateChecker;)V

    invoke-static {v4}, Lcom/unity3d/ads/android/UnityAdsUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_4
.end method
