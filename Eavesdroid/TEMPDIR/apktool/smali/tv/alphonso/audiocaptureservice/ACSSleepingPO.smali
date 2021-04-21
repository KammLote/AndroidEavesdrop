.class public Ltv/alphonso/audiocaptureservice/ACSSleepingPO;
.super Ltv/alphonso/audiocaptureservice/ACSSleeping;
.source "ACSSleepingPO.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-class v0, Ltv/alphonso/audiocaptureservice/ACSSleepingPO;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ltv/alphonso/audiocaptureservice/ACSSleepingPO;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ltv/alphonso/audiocaptureservice/ACSSleeping;-><init>()V

    return-void
.end method


# virtual methods
.method public getStateString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Ltv/alphonso/audiocaptureservice/ACSSleepingPO;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public onPrimeTimeBegin(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "acsInstance"    # Ltv/alphonso/audiocaptureservice/AudioCaptureService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 94
    invoke-virtual {p0, p1, p2}, Ltv/alphonso/audiocaptureservice/ACSSleepingPO;->onStop(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V

    .line 96
    invoke-static {p1, p2}, Ltv/alphonso/audiocaptureservice/ACSUtils;->processPrimeTimeBegin(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V

    .line 99
    invoke-static {p1}, Ltv/alphonso/audiocaptureservice/ACSUtils;->resetStats(Ltv/alphonso/audiocaptureservice/AudioCaptureService;)V

    .line 101
    iget-object v0, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mFSM:Ltv/alphonso/audiocaptureservice/ACSFSM;

    iget-object v0, v0, Ltv/alphonso/audiocaptureservice/ACSFSM;->mACSRunningPOState:Ltv/alphonso/audiocaptureservice/ACSRunningPO;

    iput-object v0, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCurrentState:Ltv/alphonso/audiocaptureservice/ACSState;

    .line 104
    iget v0, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCaptureCount:I

    if-eqz v0, :cond_0

    .line 105
    iget v0, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCaptureCount:I

    iput v0, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCurrentCapturesTodo:I

    .line 111
    :cond_0
    invoke-static {p1}, Ltv/alphonso/audiocaptureservice/ACSUtils;->acquireWakeLock(Ltv/alphonso/audiocaptureservice/AudioCaptureService;)V

    .line 114
    invoke-virtual {p1}, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->prepareRecorder()V

    .line 117
    invoke-virtual {p1}, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->processCaptureStart()V

    .line 118
    return-void
.end method

.method public onPrimeTimeEnd(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "acsInstance"    # Ltv/alphonso/audiocaptureservice/AudioCaptureService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 124
    invoke-virtual {p0, p1, p2}, Ltv/alphonso/audiocaptureservice/ACSSleepingPO;->onStop(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V

    .line 126
    invoke-static {p1, p2}, Ltv/alphonso/audiocaptureservice/ACSUtils;->processPrimeTimeEnd(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V

    .line 128
    iget-object v1, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 129
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    .line 130
    iget-object v1, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mStartParams:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 131
    iget-object v1, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 132
    return-void
.end method

.method public onResult(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V
    .locals 8
    .param p1, "acsInstance"    # Ltv/alphonso/audiocaptureservice/AudioCaptureService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 59
    invoke-virtual {p0, p1, p2}, Ltv/alphonso/audiocaptureservice/ACSSleepingPO;->onStop(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V

    .line 61
    iget v3, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCaptureScenariosTodo:I

    if-nez v3, :cond_0

    iget v3, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCaptureScenarioCount:I

    if-nez v3, :cond_5

    .line 64
    :cond_0
    invoke-virtual {p1}, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->computePowerOptimizationSleepTimerValue()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long v0, v4, v6

    .line 65
    .local v0, "currentSleepTimerValue":J
    sget-boolean v3, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->debug:Z

    if-eqz v3, :cond_1

    .line 67
    sget-object v3, Ltv/alphonso/audiocaptureservice/ACSSleepingPO;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "current mPowerOptimizationInhibitor: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->getPowerOptimizationInhibitor()F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    sget-object v3, Ltv/alphonso/audiocaptureservice/ACSSleepingPO;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "current currentSleepTimerValue: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :cond_1
    const-string v3, "type"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 73
    .local v2, "resultType":Ljava/lang/String;
    const-string v3, "commercial"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 74
    iget-wide v4, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCaptureScenarioSleepIntervalMin:J

    invoke-virtual {p1, v4, v5}, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->setCaptureScenarioSleepInterval(J)V

    .line 81
    :goto_0
    sget-boolean v3, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->debug:Z

    if-eqz v3, :cond_2

    .line 82
    sget-object v3, Ltv/alphonso/audiocaptureservice/ACSSleepingPO;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "changed mPowerOptimizationInhibitor: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->getPowerOptimizationInhibitor()F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_2
    const/4 v3, 0x0

    invoke-static {p1, v3}, Ltv/alphonso/audiocaptureservice/ACSUtils;->startCaptureScenarioSleepIntervalTimer(Ltv/alphonso/audiocaptureservice/AudioCaptureService;B)V

    .line 88
    .end local v0    # "currentSleepTimerValue":J
    .end local v2    # "resultType":Ljava/lang/String;
    :goto_1
    return-void

    .line 75
    .restart local v0    # "currentSleepTimerValue":J
    .restart local v2    # "resultType":Ljava/lang/String;
    :cond_3
    const-string v3, "livetv"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-wide v4, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCaptureScenarioSleepIntervalLivetv:J

    cmp-long v3, v0, v4

    if-ltz v3, :cond_4

    .line 77
    iget-wide v4, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCaptureScenarioSleepIntervalLivetv:J

    invoke-virtual {p1, v4, v5}, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->setCaptureScenarioSleepInterval(J)V

    goto :goto_0

    .line 79
    :cond_4
    invoke-virtual {p1}, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->incrementPowerOptimizationInhibitor()V

    goto :goto_0

    .line 87
    .end local v0    # "currentSleepTimerValue":J
    .end local v2    # "resultType":Ljava/lang/String;
    :cond_5
    invoke-static {}, Ltv/alphonso/audiocaptureservice/ACSUtils;->sendScenariosCompleteNotification()V

    goto :goto_1
.end method

.method public onSleepTimerExpiry(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "acsInstance"    # Ltv/alphonso/audiocaptureservice/AudioCaptureService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    const-wide/16 v2, 0x0

    .line 33
    iget-wide v0, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCapturePrepareTime:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 35
    invoke-static {p1, v2, v3}, Ltv/alphonso/audiocaptureservice/ACSUtils;->startPrepareTimer(Ltv/alphonso/audiocaptureservice/AudioCaptureService;J)V

    .line 47
    :goto_0
    return-void

    .line 39
    :cond_0
    iget-object v0, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mFSM:Ltv/alphonso/audiocaptureservice/ACSFSM;

    iget-object v0, v0, Ltv/alphonso/audiocaptureservice/ACSFSM;->mACSRunningPOState:Ltv/alphonso/audiocaptureservice/ACSRunningPO;

    iput-object v0, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCurrentState:Ltv/alphonso/audiocaptureservice/ACSState;

    .line 42
    invoke-virtual {p1}, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->prepareRecorder()V

    .line 45
    invoke-virtual {p1}, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->processCaptureStart()V

    goto :goto_0
.end method
