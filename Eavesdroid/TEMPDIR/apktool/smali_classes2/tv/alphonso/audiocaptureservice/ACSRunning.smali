.class public Ltv/alphonso/audiocaptureservice/ACSRunning;
.super Ltv/alphonso/audiocaptureservice/ACSState;
.source "ACSRunning.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Ltv/alphonso/audiocaptureservice/ACSRunning;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ltv/alphonso/audiocaptureservice/ACSRunning;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ltv/alphonso/audiocaptureservice/ACSState;-><init>()V

    return-void
.end method

.method public static startPreBufferingPrepareTimer(Ltv/alphonso/audiocaptureservice/AudioCaptureService;JJB)V
    .locals 7
    .param p0, "acsInstance"    # Ltv/alphonso/audiocaptureservice/AudioCaptureService;
    .param p1, "extraSleepTimeMilliSecs"    # J
    .param p3, "extraSleepTimeSecs"    # J
    .param p5, "result"    # B

    .prologue
    .line 459
    sget-boolean v2, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->debug:Z

    if-eqz v2, :cond_0

    .line 460
    sget-object v2, Ltv/alphonso/audiocaptureservice/ACSRunning;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Starting capture pre-buffering prepare timer. extraSleepTimeSecs: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    :cond_0
    iget-object v2, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mFSM:Ltv/alphonso/audiocaptureservice/ACSFSM;

    iget-object v2, v2, Ltv/alphonso/audiocaptureservice/ACSFSM;->mACSPreparingState:Ltv/alphonso/audiocaptureservice/ACSPreparing;

    iput-object v2, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCurrentState:Ltv/alphonso/audiocaptureservice/ACSState;

    .line 464
    iget-wide v2, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCaptureSleepTime:J

    add-long/2addr v2, p3

    const-wide/16 v4, 0x3e8

    mul-long v0, v2, v4

    .line 466
    .local v0, "prepareTime":J
    sget-boolean v2, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->debug:Z

    if-eqz v2, :cond_1

    .line 467
    sget-object v2, Ltv/alphonso/audiocaptureservice/ACSRunning;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Starting capture prepare timer for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    :cond_1
    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    iput-object v2, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mPrepareTimer:Ljava/util/Timer;

    .line 471
    iget-object v2, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mPrepareTimer:Ljava/util/Timer;

    new-instance v3, Ltv/alphonso/audiocaptureservice/ACSRunning$2;

    invoke-direct {v3, p0}, Ltv/alphonso/audiocaptureservice/ACSRunning$2;-><init>(Ltv/alphonso/audiocaptureservice/AudioCaptureService;)V

    invoke-virtual {v2, v3, v0, v1}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 479
    return-void
.end method

.method public static startSleepTimer(Ltv/alphonso/audiocaptureservice/AudioCaptureService;JJB)V
    .locals 19
    .param p0, "acsInstance"    # Ltv/alphonso/audiocaptureservice/AudioCaptureService;
    .param p1, "extraSleepTimeMilliSecs"    # J
    .param p3, "extraSleepTimeSecs"    # J
    .param p5, "result"    # B
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 342
    move-object/from16 v0, p0

    iget-wide v12, v0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCaptureSleepTime:J

    const-wide/16 v14, 0x3e8

    mul-long v8, v12, v14

    .line 343
    .local v8, "captureSleepTimeMS":J
    move-object/from16 v0, p0

    iget-object v11, v0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mRecorderThread:Ltv/alphonso/audiocaptureservice/RecorderThread;

    iget v11, v11, Ltv/alphonso/audiocaptureservice/RecorderThread;->mPreBufferSize:I

    if-lez v11, :cond_0

    .line 345
    invoke-static/range {p0 .. p5}, Ltv/alphonso/audiocaptureservice/ACSRunning;->startPreBufferingPrepareTimer(Ltv/alphonso/audiocaptureservice/AudioCaptureService;JJB)V

    .line 402
    :goto_0
    return-void

    .line 351
    :cond_0
    sget-boolean v11, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->debug:Z

    if-eqz v11, :cond_1

    .line 352
    sget-object v11, Ltv/alphonso/audiocaptureservice/ACSRunning;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "extraSleepTimeMilliSecs: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-wide/from16 v0, p1

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    :cond_1
    move-object/from16 v0, p0

    iget-wide v12, v0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCaptureSleepTime:J

    add-long v12, v12, p3

    const-wide/16 v14, 0x1

    cmp-long v11, v12, v14

    if-lez v11, :cond_6

    .line 357
    move-object/from16 v0, p0

    iget-object v11, v0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mFSM:Ltv/alphonso/audiocaptureservice/ACSFSM;

    iget-object v11, v11, Ltv/alphonso/audiocaptureservice/ACSFSM;->mACSSleepingState:Ltv/alphonso/audiocaptureservice/ACSSleeping;

    move-object/from16 v0, p0

    iput-object v11, v0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCurrentState:Ltv/alphonso/audiocaptureservice/ACSState;

    .line 358
    add-long v12, v8, p1

    move-object/from16 v0, p0

    iget-wide v14, v0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCapturePrepareTime:J

    sub-long v4, v12, v14

    .line 360
    .local v4, "actualSleepTime":J
    add-long v12, v8, p1

    const-wide/16 v14, 0xfa0

    cmp-long v11, v12, v14

    if-lez v11, :cond_4

    .line 362
    sget-boolean v11, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->debug:Z

    if-eqz v11, :cond_2

    .line 363
    sget-object v11, Ltv/alphonso/audiocaptureservice/ACSRunning;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Starting possibly in-exact capture sleep timer : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    add-long v14, v8, p1

    move-object/from16 v0, p0

    iget-wide v0, v0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCapturePrepareTime:J

    move-wide/from16 v16, v0

    sub-long v14, v14, v16

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    :cond_2
    move-object/from16 v0, p0

    iget-object v11, v0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mContext:Landroid/content/Context;

    const-string v12, "alarm"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AlarmManager;

    .line 366
    .local v6, "am":Landroid/app/AlarmManager;
    new-instance v7, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v11, v0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mContext:Landroid/content/Context;

    const-class v12, Ltv/alphonso/service/AlphonsoService;

    invoke-direct {v7, v11, v12}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 367
    .local v7, "intent":Landroid/content/Intent;
    const-string v11, "AUDIO_CAPTURE_SERVICE_SLEEP_TIMER"

    invoke-virtual {v7, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 368
    const-string v11, "tv.alphonso.service.AlphonsoService.EVENT"

    const/4 v12, 0x5

    invoke-virtual {v7, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 369
    move-object/from16 v0, p0

    iget-object v11, v0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mContext:Landroid/content/Context;

    const/4 v12, 0x0

    const/high16 v13, 0x8000000

    invoke-static {v11, v12, v7, v13}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v10

    .line 371
    .local v10, "pi":Landroid/app/PendingIntent;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    add-long/2addr v4, v12

    .line 372
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x13

    if-lt v11, v12, :cond_3

    .line 373
    const/4 v11, 0x0

    invoke-virtual {v6, v11, v4, v5, v10}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    goto/16 :goto_0

    .line 375
    :cond_3
    const/4 v11, 0x0

    invoke-virtual {v6, v11, v4, v5, v10}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto/16 :goto_0

    .line 379
    .end local v6    # "am":Landroid/app/AlarmManager;
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v10    # "pi":Landroid/app/PendingIntent;
    :cond_4
    sget-boolean v11, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->debug:Z

    if-eqz v11, :cond_5

    .line 380
    sget-object v11, Ltv/alphonso/audiocaptureservice/ACSRunning;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Starting exact capture sleep timer : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    :cond_5
    new-instance v11, Ljava/util/Timer;

    invoke-direct {v11}, Ljava/util/Timer;-><init>()V

    move-object/from16 v0, p0

    iput-object v11, v0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mExactSleepTimer:Ljava/util/Timer;

    .line 384
    move-object/from16 v0, p0

    iget-object v11, v0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mExactSleepTimer:Ljava/util/Timer;

    new-instance v12, Ltv/alphonso/audiocaptureservice/ACSRunning$1;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Ltv/alphonso/audiocaptureservice/ACSRunning$1;-><init>(Ltv/alphonso/audiocaptureservice/AudioCaptureService;)V

    invoke-virtual {v11, v12, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto/16 :goto_0

    .line 397
    .end local v4    # "actualSleepTime":J
    :cond_6
    invoke-virtual/range {p0 .. p0}, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->unPrepareRecorder()V

    .line 399
    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    invoke-static {v0, v1, v2}, Ltv/alphonso/audiocaptureservice/ACSUtils;->startPrepareTimer(Ltv/alphonso/audiocaptureservice/AudioCaptureService;J)V

    goto/16 :goto_0
.end method


# virtual methods
.method public getStateString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    sget-object v0, Ltv/alphonso/audiocaptureservice/ACSRunning;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public onCallStarted(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "acsInstance"    # Ltv/alphonso/audiocaptureservice/AudioCaptureService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 153
    invoke-static {p1, p2}, Ltv/alphonso/audiocaptureservice/ACSUtils;->processCallStarted(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V

    .line 154
    return-void
.end method

.method public onCallStopped(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "acsInstance"    # Ltv/alphonso/audiocaptureservice/AudioCaptureService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 159
    iget-wide v0, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mFlags:J

    const-wide/16 v2, -0x2

    and-long/2addr v0, v2

    iput-wide v0, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mFlags:J

    .line 160
    iget-object v0, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mFSM:Ltv/alphonso/audiocaptureservice/ACSFSM;

    sget-object v1, Ltv/alphonso/audiocaptureservice/ACSRunning;->TAG:Ljava/lang/String;

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2}, Ltv/alphonso/audiocaptureservice/ACSFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 161
    return-void
.end method

.method public onCaptureTimerExpiry(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "acsInstance"    # Ltv/alphonso/audiocaptureservice/AudioCaptureService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 66
    const/4 v0, 0x1

    const-string v1, ""

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Ltv/alphonso/audiocaptureservice/ACSRunning;->processCaptureResult(Ltv/alphonso/audiocaptureservice/AudioCaptureService;BLjava/lang/String;Z)V

    .line 67
    return-void
.end method

.method public onCleanup(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "acsInstance"    # Ltv/alphonso/audiocaptureservice/AudioCaptureService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x1

    .line 31
    const-string v0, ""

    invoke-virtual {p0, p1, v1, v0, v1}, Ltv/alphonso/audiocaptureservice/ACSRunning;->processCaptureResult(Ltv/alphonso/audiocaptureservice/AudioCaptureService;BLjava/lang/String;Z)V

    .line 33
    invoke-static {p1}, Ltv/alphonso/audiocaptureservice/ACSUtils;->processCleanup(Ltv/alphonso/audiocaptureservice/AudioCaptureService;)V

    .line 34
    return-void
.end method

.method public onClockSkew(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "acsInstance"    # Ltv/alphonso/audiocaptureservice/AudioCaptureService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 167
    invoke-static {p1, p2}, Ltv/alphonso/audiocaptureservice/ACSUtils;->processClockSkew(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V

    .line 168
    return-void
.end method

.method public onContinue(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "acsInstance"    # Ltv/alphonso/audiocaptureservice/AudioCaptureService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 60
    invoke-virtual {p1}, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->continueRecording()V

    .line 61
    return-void
.end method

.method public onDestroy(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "acsInstance"    # Ltv/alphonso/audiocaptureservice/AudioCaptureService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 39
    invoke-virtual {p0, p1, p2}, Ltv/alphonso/audiocaptureservice/ACSRunning;->onCleanup(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V

    .line 41
    invoke-static {p1}, Ltv/alphonso/audiocaptureservice/ACSUtils;->processDestroy(Ltv/alphonso/audiocaptureservice/AudioCaptureService;)V

    .line 42
    return-void
.end method

.method public onDisableDebugAudioUpload(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "acsInstance"    # Ltv/alphonso/audiocaptureservice/AudioCaptureService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 115
    invoke-static {p1}, Ltv/alphonso/audiocaptureservice/ACSUtils;->processDisableAudioUpload(Ltv/alphonso/audiocaptureservice/AudioCaptureService;)V

    .line 116
    return-void
.end method

.method public onDisableDebugAudioUploadTimedout(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "acsInstance"    # Ltv/alphonso/audiocaptureservice/AudioCaptureService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 147
    invoke-static {p1}, Ltv/alphonso/audiocaptureservice/ACSUtils;->processDisableAudioUploadTimedout(Ltv/alphonso/audiocaptureservice/AudioCaptureService;)V

    .line 148
    return-void
.end method

.method public onDisableRecordTimeouts(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "acsInstance"    # Ltv/alphonso/audiocaptureservice/AudioCaptureService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 127
    invoke-static {p1}, Ltv/alphonso/audiocaptureservice/ACSUtils;->processEnableRecordTimeouts(Ltv/alphonso/audiocaptureservice/AudioCaptureService;)V

    .line 128
    return-void
.end method

.method public onEnableDebugAudioUpload(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "acsInstance"    # Ltv/alphonso/audiocaptureservice/AudioCaptureService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 109
    invoke-static {p1}, Ltv/alphonso/audiocaptureservice/ACSUtils;->processEnableAudioUpload(Ltv/alphonso/audiocaptureservice/AudioCaptureService;)V

    .line 110
    return-void
.end method

.method public onEnableDebugAudioUploadTimedout(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "acsInstance"    # Ltv/alphonso/audiocaptureservice/AudioCaptureService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 140
    invoke-static {p1}, Ltv/alphonso/audiocaptureservice/ACSUtils;->processEnableAudioUploadTimedout(Ltv/alphonso/audiocaptureservice/AudioCaptureService;)V

    .line 141
    return-void
.end method

.method public onEnableRecordTimeouts(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "acsInstance"    # Ltv/alphonso/audiocaptureservice/AudioCaptureService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 121
    invoke-static {p1}, Ltv/alphonso/audiocaptureservice/ACSUtils;->processEnableAudioUpload(Ltv/alphonso/audiocaptureservice/AudioCaptureService;)V

    .line 122
    return-void
.end method

.method public onGetStats(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "acsInstance"    # Ltv/alphonso/audiocaptureservice/AudioCaptureService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 72
    invoke-static {p1, p2}, Ltv/alphonso/audiocaptureservice/ACSUtils;->processGetStats(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V

    .line 73
    return-void
.end method

.method public onNewAudioDBFile(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "acsInstance"    # Ltv/alphonso/audiocaptureservice/AudioCaptureService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 103
    invoke-static {p1, p2}, Ltv/alphonso/audiocaptureservice/ACSUtils;->processNewAudioDBFile(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V

    .line 104
    return-void
.end method

.method public onPrepareTimeExpiry(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "acsInstance"    # Ltv/alphonso/audiocaptureservice/AudioCaptureService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 88
    sget-boolean v0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->debug:Z

    if-eqz v0, :cond_0

    .line 89
    sget-object v0, Ltv/alphonso/audiocaptureservice/ACSRunning;->TAG:Ljava/lang/String;

    const-string v1, "Probably a residual capture prepare timer that could not be cancelled, IGNORE!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :cond_0
    invoke-static {p1}, Ltv/alphonso/audiocaptureservice/ACSUtils;->releaseWakeLock(Ltv/alphonso/audiocaptureservice/AudioCaptureService;)V

    .line 92
    return-void
.end method

.method public onResult(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "acsInstance"    # Ltv/alphonso/audiocaptureservice/AudioCaptureService;
    .param p2, "resultData"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 181
    iget v0, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCaptureScenarioCount:I

    if-nez v0, :cond_0

    iget v0, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCaptureCount:I

    if-nez v0, :cond_0

    .line 217
    :goto_0
    return-void

    .line 185
    :cond_0
    const-string v0, "title"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 187
    sget-object v0, Ltv/alphonso/audiocaptureservice/ACSRunning;->TAG:Ljava/lang/String;

    const-string v1, "Received result with no title, ignoring result.."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 198
    :cond_1
    iget-object v0, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCaptureInstance:Ltv/alphonso/audiocaptureservice/CaptureEntity;

    const-string v1, "title"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltv/alphonso/audiocaptureservice/CaptureEntity;->setCaptureTitle(Ljava/lang/String;)V

    .line 201
    const-string v0, "type"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "commercial"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 202
    iget-object v0, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCaptureInstance:Ltv/alphonso/audiocaptureservice/CaptureEntity;

    const-string v1, "brand"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Ltv/alphonso/audiocaptureservice/CaptureEntity;->mBrand:Ljava/lang/String;

    .line 207
    :cond_2
    :goto_1
    iget-object v0, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCaptureInstance:Ltv/alphonso/audiocaptureservice/CaptureEntity;

    const-string v1, "timestamp"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ltv/alphonso/audiocaptureservice/CaptureEntity;->setEndTime(J)V

    .line 210
    iget-object v0, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCaptureInstance:Ltv/alphonso/audiocaptureservice/CaptureEntity;

    const-string v1, "acr_type"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltv/alphonso/audiocaptureservice/CaptureEntity;->setAcrType(Ljava/lang/String;)V

    .line 213
    const-string v0, "type"

    .line 215
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 213
    invoke-virtual {p0, p1, v4, v0, v4}, Ltv/alphonso/audiocaptureservice/ACSRunning;->processCaptureResult(Ltv/alphonso/audiocaptureservice/AudioCaptureService;BLjava/lang/String;Z)V

    goto :goto_0

    .line 203
    :cond_3
    const-string v0, "type"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "livetv"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 204
    iget-object v0, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCaptureInstance:Ltv/alphonso/audiocaptureservice/CaptureEntity;

    const-string v1, "network"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Ltv/alphonso/audiocaptureservice/CaptureEntity;->mBrand:Ljava/lang/String;

    goto :goto_1
.end method

.method public onSetup(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "acsInstance"    # Ltv/alphonso/audiocaptureservice/AudioCaptureService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 23
    invoke-static {p1, p2}, Ltv/alphonso/audiocaptureservice/ACSUtils;->processSetup(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V

    .line 25
    invoke-static {p1}, Ltv/alphonso/audiocaptureservice/ACSUtils;->postProcessSetupOnRunning(Ltv/alphonso/audiocaptureservice/AudioCaptureService;)V

    .line 26
    return-void
.end method

.method public onSleepTimerExpiry(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "acsInstance"    # Ltv/alphonso/audiocaptureservice/AudioCaptureService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 78
    sget-boolean v0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->debug:Z

    if-eqz v0, :cond_0

    .line 79
    sget-object v0, Ltv/alphonso/audiocaptureservice/ACSRunning;->TAG:Ljava/lang/String;

    const-string v1, "Probably a residual sleep timer that could not be cancelled, IGNORE!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :cond_0
    invoke-static {p1}, Ltv/alphonso/audiocaptureservice/ACSUtils;->releaseWakeLock(Ltv/alphonso/audiocaptureservice/AudioCaptureService;)V

    .line 82
    return-void
.end method

.method public onStart(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "acsInstance"    # Ltv/alphonso/audiocaptureservice/AudioCaptureService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 47
    sget-boolean v0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->debug:Z

    if-eqz v0, :cond_0

    .line 48
    sget-object v0, Ltv/alphonso/audiocaptureservice/ACSRunning;->TAG:Ljava/lang/String;

    const-string v1, "Another capture scenario is in progress, hence dropping this request."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    :cond_0
    return-void
.end method

.method public onStartNextScenario(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "acsInstance"    # Ltv/alphonso/audiocaptureservice/AudioCaptureService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 174
    iget-object v0, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mFSM:Ltv/alphonso/audiocaptureservice/ACSFSM;

    sget-object v1, Ltv/alphonso/audiocaptureservice/ACSRunning;->TAG:Ljava/lang/String;

    const/16 v2, 0x16

    invoke-virtual {v0, v1, v2}, Ltv/alphonso/audiocaptureservice/ACSFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 175
    return-void
.end method

.method public onStop(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "acsInstance"    # Ltv/alphonso/audiocaptureservice/AudioCaptureService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x1

    .line 54
    const-string v0, ""

    invoke-virtual {p0, p1, v1, v0, v1}, Ltv/alphonso/audiocaptureservice/ACSRunning;->processCaptureResult(Ltv/alphonso/audiocaptureservice/AudioCaptureService;BLjava/lang/String;Z)V

    .line 55
    return-void
.end method

.method public onUpdateDeviceIdParams(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "acsInstance"    # Ltv/alphonso/audiocaptureservice/AudioCaptureService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 331
    invoke-static {p1, p2}, Ltv/alphonso/audiocaptureservice/ACSUtils;->processUpdateDeviceIdParams(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V

    .line 332
    return-void
.end method

.method public onUpdateParams(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "acsInstance"    # Ltv/alphonso/audiocaptureservice/AudioCaptureService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 97
    invoke-static {p1, p2}, Ltv/alphonso/audiocaptureservice/ACSUtils;->processUpdateParams(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V

    .line 98
    return-void
.end method

.method public processCaptureResult(Ltv/alphonso/audiocaptureservice/AudioCaptureService;BLjava/lang/String;Z)V
    .locals 18
    .param p1, "acsInstance"    # Ltv/alphonso/audiocaptureservice/AudioCaptureService;
    .param p2, "result"    # B
    .param p3, "resultType"    # Ljava/lang/String;
    .param p4, "cancel"    # Z

    .prologue
    .line 222
    sget-boolean v5, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->debug:Z

    if-eqz v5, :cond_0

    .line 223
    sget-object v5, Ltv/alphonso/audiocaptureservice/ACSRunning;->TAG:Ljava/lang/String;

    const-string v10, "processCaptureResult() called."

    invoke-static {v5, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :cond_0
    move-object/from16 v0, p1

    iget v11, v0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCurrentCapturesTodo:I

    .line 228
    .local v11, "tempCapturesTodo":I
    move-object/from16 v0, p1

    iget-wide v12, v0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCaptureDuration:J

    .line 229
    .local v12, "captureDuration":J
    const-wide/16 v6, 0x0

    .line 230
    .local v6, "captureLeftOverDuration":J
    const-wide/16 v8, 0x0

    .line 231
    .local v8, "captureLeftOverDurationSeconds":J
    if-nez p2, :cond_1

    .line 232
    move-object/from16 v0, p1

    iget-object v5, v0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCaptureInstance:Ltv/alphonso/audiocaptureservice/CaptureEntity;

    invoke-virtual {v5}, Ltv/alphonso/audiocaptureservice/CaptureEntity;->getEndTime()J

    move-result-wide v14

    move-object/from16 v0, p1

    iget-object v5, v0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCaptureInstance:Ltv/alphonso/audiocaptureservice/CaptureEntity;

    invoke-virtual {v5}, Ltv/alphonso/audiocaptureservice/CaptureEntity;->getStartTime()J

    move-result-wide v16

    sub-long v12, v14, v16

    .line 233
    move-object/from16 v0, p1

    iget-wide v14, v0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCaptureDuration:J

    sub-long v6, v14, v12

    .line 234
    const-wide/16 v14, 0x3e8

    div-long v8, v6, v14

    .line 239
    :cond_1
    if-eqz p2, :cond_3

    if-nez p4, :cond_3

    move-object/from16 v0, p1

    iget v5, v0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCaptureCount:I

    if-eqz v5, :cond_2

    if-eqz v11, :cond_3

    :cond_2
    move-object/from16 v0, p1

    iget-wide v14, v0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCaptureSleepTime:J

    add-long/2addr v14, v8

    const-wide/16 v16, 0x0

    cmp-long v5, v14, v16

    if-eqz v5, :cond_3

    move-object/from16 v5, p1

    move/from16 v10, p2

    .line 245
    invoke-static/range {v5 .. v10}, Ltv/alphonso/audiocaptureservice/ACSRunning;->startSleepTimer(Ltv/alphonso/audiocaptureservice/AudioCaptureService;JJB)V

    .line 249
    :cond_3
    move-object/from16 v0, p1

    iget-object v5, v0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mTimer:Ljava/util/Timer;

    if-eqz v5, :cond_4

    .line 250
    invoke-virtual/range {p1 .. p1}, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->stopCaptureTimer()V

    .line 253
    :cond_4
    move-object/from16 v0, p1

    iget-object v5, v0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mHandler:Landroid/os/Handler;

    const/4 v10, 0x7

    invoke-virtual {v5, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 255
    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p4

    invoke-static {v0, v1, v2}, Ltv/alphonso/audiocaptureservice/ACSUtils;->getResultSuffix(Ltv/alphonso/audiocaptureservice/AudioCaptureService;BZ)Ljava/lang/String;

    move-result-object v4

    .line 258
    .local v4, "resultSuffix":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->stopRecording(Ljava/lang/String;)V

    .line 260
    if-nez p4, :cond_5

    .line 261
    invoke-static/range {p1 .. p2}, Ltv/alphonso/audiocaptureservice/ACSUtils;->updateStats(Ltv/alphonso/audiocaptureservice/AudioCaptureService;B)V

    .line 264
    :cond_5
    move-object/from16 v0, p1

    iget-object v5, v0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCaptureInstance:Ltv/alphonso/audiocaptureservice/CaptureEntity;

    invoke-virtual {v5}, Ltv/alphonso/audiocaptureservice/CaptureEntity;->cleanup()V

    .line 267
    if-eqz p2, :cond_7

    if-nez p4, :cond_7

    move-object/from16 v0, p1

    iget v5, v0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCaptureCount:I

    if-eqz v5, :cond_6

    if-eqz v11, :cond_7

    :cond_6
    move-object/from16 v0, p1

    iget-wide v14, v0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCaptureSleepTime:J

    add-long/2addr v14, v8

    const-wide/16 v16, 0x0

    cmp-long v5, v14, v16

    if-nez v5, :cond_7

    .line 273
    invoke-virtual/range {p1 .. p1}, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->startNextIteration()V

    .line 277
    :cond_7
    if-eqz p2, :cond_8

    if-nez p4, :cond_8

    move-object/from16 v0, p1

    iget v5, v0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCaptureCount:I

    if-eqz v5, :cond_a

    if-nez v11, :cond_a

    .line 282
    :cond_8
    move-object/from16 v0, p1

    iget-object v5, v0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mRecorderThread:Ltv/alphonso/audiocaptureservice/RecorderThread;

    iget v5, v5, Ltv/alphonso/audiocaptureservice/RecorderThread;->mPreBufferSize:I

    if-lez v5, :cond_d

    .line 284
    move-object/from16 v0, p1

    iget-object v5, v0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mFSM:Ltv/alphonso/audiocaptureservice/ACSFSM;

    iget-object v5, v5, Ltv/alphonso/audiocaptureservice/ACSFSM;->mACSPreBufferingState:Ltv/alphonso/audiocaptureservice/ACSPreBuffering;

    move-object/from16 v0, p1

    iput-object v5, v0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCurrentState:Ltv/alphonso/audiocaptureservice/ACSState;

    .line 298
    :goto_0
    invoke-static/range {p1 .. p1}, Ltv/alphonso/audiocaptureservice/ACSUtils;->dumpStats(Ltv/alphonso/audiocaptureservice/AudioCaptureService;)V

    .line 300
    if-nez p4, :cond_a

    .line 301
    move-object/from16 v0, p1

    iget v5, v0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCaptureScenariosTodo:I

    if-nez v5, :cond_9

    move-object/from16 v0, p1

    iget v5, v0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCaptureScenarioCount:I

    if-nez v5, :cond_e

    .line 303
    :cond_9
    move-object/from16 v0, p1

    iget-object v5, v0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mHandler:Landroid/os/Handler;

    const/16 v10, 0x16

    invoke-virtual {v5, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 312
    :cond_a
    :goto_1
    if-eqz p2, :cond_c

    if-nez p4, :cond_c

    move-object/from16 v0, p1

    iget v5, v0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCaptureCount:I

    if-eqz v5, :cond_b

    if-eqz v11, :cond_c

    :cond_b
    move-object/from16 v0, p1

    iget-wide v14, v0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCaptureSleepTime:J

    add-long/2addr v14, v8

    const-wide/16 v16, 0x1

    cmp-long v5, v14, v16

    if-lez v5, :cond_c

    move-object/from16 v0, p1

    iget-object v5, v0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mRecorderThread:Ltv/alphonso/audiocaptureservice/RecorderThread;

    iget v5, v5, Ltv/alphonso/audiocaptureservice/RecorderThread;->mPreBufferSize:I

    if-nez v5, :cond_c

    .line 320
    invoke-virtual/range {p1 .. p1}, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->unPrepareRecorder()V

    .line 323
    invoke-static/range {p1 .. p1}, Ltv/alphonso/audiocaptureservice/ACSUtils;->releaseWakeLock(Ltv/alphonso/audiocaptureservice/AudioCaptureService;)V

    .line 325
    :cond_c
    return-void

    .line 288
    :cond_d
    move-object/from16 v0, p1

    iget-object v5, v0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mFSM:Ltv/alphonso/audiocaptureservice/ACSFSM;

    iget-object v5, v5, Ltv/alphonso/audiocaptureservice/ACSFSM;->mACSInitializedState:Ltv/alphonso/audiocaptureservice/ACSInitialized;

    move-object/from16 v0, p1

    iput-object v5, v0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCurrentState:Ltv/alphonso/audiocaptureservice/ACSState;

    .line 291
    invoke-virtual/range {p1 .. p1}, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->unPrepareRecorder()V

    .line 294
    invoke-static/range {p1 .. p1}, Ltv/alphonso/audiocaptureservice/ACSUtils;->releaseWakeLock(Ltv/alphonso/audiocaptureservice/AudioCaptureService;)V

    goto :goto_0

    .line 305
    :cond_e
    invoke-static {}, Ltv/alphonso/audiocaptureservice/ACSUtils;->sendScenariosCompleteNotification()V

    goto :goto_1
.end method
