.class public Ltv/alphonso/audiocaptureservice/ACSRunningPO;
.super Ltv/alphonso/audiocaptureservice/ACSRunning;
.source "ACSRunningPO.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-class v0, Ltv/alphonso/audiocaptureservice/ACSRunningPO;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ltv/alphonso/audiocaptureservice/ACSRunningPO;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ltv/alphonso/audiocaptureservice/ACSRunning;-><init>()V

    return-void
.end method


# virtual methods
.method public getStateString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    sget-object v0, Ltv/alphonso/audiocaptureservice/ACSRunningPO;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public onPrimeTimeBegin(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "acsInstance"    # Ltv/alphonso/audiocaptureservice/AudioCaptureService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 126
    invoke-virtual {p0, p1, p2}, Ltv/alphonso/audiocaptureservice/ACSRunningPO;->onStop(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V

    .line 128
    invoke-static {p1, p2}, Ltv/alphonso/audiocaptureservice/ACSUtils;->processPrimeTimeBegin(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V

    .line 131
    invoke-static {p1}, Ltv/alphonso/audiocaptureservice/ACSUtils;->resetStats(Ltv/alphonso/audiocaptureservice/AudioCaptureService;)V

    .line 133
    iget-object v0, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mFSM:Ltv/alphonso/audiocaptureservice/ACSFSM;

    iget-object v0, v0, Ltv/alphonso/audiocaptureservice/ACSFSM;->mACSRunningPOState:Ltv/alphonso/audiocaptureservice/ACSRunningPO;

    iput-object v0, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCurrentState:Ltv/alphonso/audiocaptureservice/ACSState;

    .line 136
    iget v0, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCaptureCount:I

    if-eqz v0, :cond_0

    .line 137
    iget v0, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCaptureCount:I

    iput v0, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCurrentCapturesTodo:I

    .line 143
    :cond_0
    invoke-static {p1}, Ltv/alphonso/audiocaptureservice/ACSUtils;->acquireWakeLock(Ltv/alphonso/audiocaptureservice/AudioCaptureService;)V

    .line 146
    invoke-virtual {p1}, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->prepareRecorder()V

    .line 149
    invoke-virtual {p1}, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->processCaptureStart()V

    .line 150
    return-void
.end method

.method public onPrimeTimeEnd(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "acsInstance"    # Ltv/alphonso/audiocaptureservice/AudioCaptureService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 156
    invoke-virtual {p0, p1, p2}, Ltv/alphonso/audiocaptureservice/ACSRunningPO;->onStop(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V

    .line 158
    invoke-static {p1, p2}, Ltv/alphonso/audiocaptureservice/ACSUtils;->processPrimeTimeEnd(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V

    .line 160
    iget-object v1, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 161
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    .line 162
    iget-object v1, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mStartParams:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 163
    iget-object v1, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 164
    return-void
.end method

.method public processCaptureResult(Ltv/alphonso/audiocaptureservice/AudioCaptureService;BLjava/lang/String;Z)V
    .locals 10
    .param p1, "acsInstance"    # Ltv/alphonso/audiocaptureservice/AudioCaptureService;
    .param p2, "result"    # B
    .param p3, "resultType"    # Ljava/lang/String;
    .param p4, "cancel"    # Z

    .prologue
    const-wide/16 v8, 0x3e8

    .line 15
    sget-boolean v4, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->debug:Z

    if-eqz v4, :cond_0

    .line 16
    sget-object v4, Ltv/alphonso/audiocaptureservice/ACSRunningPO;->TAG:Ljava/lang/String;

    const-string v5, "processCaptureResult() called."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    :cond_0
    iget v3, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCurrentCapturesTodo:I

    .line 22
    .local v3, "tempCapturesTodo":I
    iget-object v4, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mTimer:Ljava/util/Timer;

    if-eqz v4, :cond_1

    .line 23
    invoke-virtual {p1}, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->stopCaptureTimer()V

    .line 26
    :cond_1
    iget-object v4, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x7

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 28
    invoke-static {p1, p2, p4}, Ltv/alphonso/audiocaptureservice/ACSUtils;->getResultSuffix(Ltv/alphonso/audiocaptureservice/AudioCaptureService;BZ)Ljava/lang/String;

    move-result-object v2

    .line 31
    .local v2, "resultSuffix":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->stopRecording(Ljava/lang/String;)V

    .line 33
    if-nez p4, :cond_2

    .line 34
    invoke-static {p1, p2}, Ltv/alphonso/audiocaptureservice/ACSUtils;->updateStats(Ltv/alphonso/audiocaptureservice/AudioCaptureService;B)V

    .line 37
    :cond_2
    iget-object v4, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCaptureInstance:Ltv/alphonso/audiocaptureservice/CaptureEntity;

    invoke-virtual {v4}, Ltv/alphonso/audiocaptureservice/CaptureEntity;->cleanup()V

    .line 40
    if-eqz p2, :cond_4

    if-nez p4, :cond_4

    iget v4, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCaptureCount:I

    if-eqz v4, :cond_3

    if-eqz v3, :cond_4

    .line 45
    :cond_3
    invoke-virtual {p1}, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->startNextIteration()V

    .line 49
    :cond_4
    if-eqz p2, :cond_5

    if-nez p4, :cond_5

    iget v4, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCaptureCount:I

    if-eqz v4, :cond_a

    if-nez v3, :cond_a

    .line 54
    :cond_5
    iget-object v4, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mRecorderThread:Ltv/alphonso/audiocaptureservice/RecorderThread;

    iget v4, v4, Ltv/alphonso/audiocaptureservice/RecorderThread;->mPreBufferSize:I

    if-lez v4, :cond_b

    .line 56
    iget-object v4, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mFSM:Ltv/alphonso/audiocaptureservice/ACSFSM;

    iget-object v4, v4, Ltv/alphonso/audiocaptureservice/ACSFSM;->mACSPreBufferingState:Ltv/alphonso/audiocaptureservice/ACSPreBuffering;

    iput-object v4, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCurrentState:Ltv/alphonso/audiocaptureservice/ACSState;

    .line 70
    :goto_0
    invoke-static {p1}, Ltv/alphonso/audiocaptureservice/ACSUtils;->dumpStats(Ltv/alphonso/audiocaptureservice/AudioCaptureService;)V

    .line 72
    if-nez p4, :cond_12

    .line 74
    iget v4, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCaptureScenariosTodo:I

    if-nez v4, :cond_6

    iget v4, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCaptureScenarioCount:I

    if-nez v4, :cond_11

    .line 77
    :cond_6
    invoke-virtual {p1}, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->computePowerOptimizationSleepTimerValue()J

    move-result-wide v4

    div-long v0, v4, v8

    .line 78
    .local v0, "currentSleepTimerValue":J
    sget-boolean v4, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->debug:Z

    if-eqz v4, :cond_7

    .line 80
    sget-object v4, Ltv/alphonso/audiocaptureservice/ACSRunningPO;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "current mPowerOptimizationInhibitor: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->getPowerOptimizationInhibitor()F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    sget-object v4, Ltv/alphonso/audiocaptureservice/ACSRunningPO;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "current currentSleepTimerValue: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_7
    if-nez p2, :cond_e

    .line 86
    sget-boolean v4, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->debug:Z

    if-eqz v4, :cond_8

    .line 87
    sget-object v4, Ltv/alphonso/audiocaptureservice/ACSRunningPO;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "success case with type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :cond_8
    const-string v4, "commercial"

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 90
    iget-wide v4, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCaptureScenarioSleepIntervalMin:J

    invoke-virtual {p1, v4, v5}, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->setCaptureScenarioSleepInterval(J)V

    .line 105
    :goto_1
    sget-boolean v4, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->debug:Z

    if-eqz v4, :cond_9

    .line 106
    sget-object v4, Ltv/alphonso/audiocaptureservice/ACSRunningPO;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "changed mPowerOptimizationInhibitor: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->getPowerOptimizationInhibitor()F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :cond_9
    invoke-virtual {p1}, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->computePowerOptimizationSleepTimerValue()J

    move-result-wide v4

    div-long v0, v4, v8

    .line 109
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-eqz v4, :cond_10

    .line 110
    invoke-static {p1, p2}, Ltv/alphonso/audiocaptureservice/ACSUtils;->startCaptureScenarioSleepIntervalTimer(Ltv/alphonso/audiocaptureservice/AudioCaptureService;B)V

    .line 120
    .end local v0    # "currentSleepTimerValue":J
    :cond_a
    :goto_2
    return-void

    .line 60
    :cond_b
    iget-object v4, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mFSM:Ltv/alphonso/audiocaptureservice/ACSFSM;

    iget-object v4, v4, Ltv/alphonso/audiocaptureservice/ACSFSM;->mACSInitializedState:Ltv/alphonso/audiocaptureservice/ACSInitialized;

    iput-object v4, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCurrentState:Ltv/alphonso/audiocaptureservice/ACSState;

    .line 63
    invoke-virtual {p1}, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->unPrepareRecorder()V

    .line 66
    invoke-static {p1}, Ltv/alphonso/audiocaptureservice/ACSUtils;->releaseWakeLock(Ltv/alphonso/audiocaptureservice/AudioCaptureService;)V

    goto/16 :goto_0

    .line 91
    .restart local v0    # "currentSleepTimerValue":J
    :cond_c
    const-string v4, "livetv"

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    iget-wide v4, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCaptureScenarioSleepIntervalLivetv:J

    cmp-long v4, v0, v4

    if-ltz v4, :cond_d

    .line 93
    iget-wide v4, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCaptureScenarioSleepIntervalLivetv:J

    invoke-virtual {p1, v4, v5}, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->setCaptureScenarioSleepInterval(J)V

    goto :goto_1

    .line 95
    :cond_d
    invoke-virtual {p1}, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->incrementPowerOptimizationInhibitor()V

    goto :goto_1

    .line 99
    :cond_e
    sget-boolean v4, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->debug:Z

    if-eqz v4, :cond_f

    .line 100
    sget-object v4, Ltv/alphonso/audiocaptureservice/ACSRunningPO;->TAG:Ljava/lang/String;

    const-string v5, "NOT success case."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :cond_f
    invoke-virtual {p1}, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->incrementPowerOptimizationInhibitor()V

    goto :goto_1

    .line 112
    :cond_10
    iget-object v4, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x16

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_2

    .line 115
    .end local v0    # "currentSleepTimerValue":J
    :cond_11
    invoke-static {}, Ltv/alphonso/audiocaptureservice/ACSUtils;->sendScenariosCompleteNotification()V

    goto :goto_2

    .line 118
    :cond_12
    invoke-virtual {p1}, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->resetPowerOptimizationInhibitor()V

    goto :goto_2
.end method
