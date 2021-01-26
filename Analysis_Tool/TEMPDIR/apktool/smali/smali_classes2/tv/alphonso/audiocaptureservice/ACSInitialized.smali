.class public Ltv/alphonso/audiocaptureservice/ACSInitialized;
.super Ltv/alphonso/audiocaptureservice/ACSState;
.source "ACSInitialized.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Ltv/alphonso/audiocaptureservice/ACSInitialized;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ltv/alphonso/audiocaptureservice/ACSInitialized;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ltv/alphonso/audiocaptureservice/ACSState;-><init>()V

    return-void
.end method

.method private processStartFinalProcessing(Ltv/alphonso/audiocaptureservice/AudioCaptureService;)V
    .locals 1
    .param p1, "acsInstance"    # Ltv/alphonso/audiocaptureservice/AudioCaptureService;

    .prologue
    .line 250
    iget v0, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCaptureScenarioCount:I

    if-eqz v0, :cond_0

    .line 251
    iget v0, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCaptureScenariosTodo:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCaptureScenariosTodo:I

    .line 255
    :cond_0
    invoke-static {p1}, Ltv/alphonso/audiocaptureservice/ACSUtils;->resetStats(Ltv/alphonso/audiocaptureservice/AudioCaptureService;)V

    .line 257
    iget-boolean v0, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mPowerOptimzationMode:Z

    if-eqz v0, :cond_2

    .line 258
    iget-object v0, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mFSM:Ltv/alphonso/audiocaptureservice/ACSFSM;

    iget-object v0, v0, Ltv/alphonso/audiocaptureservice/ACSFSM;->mACSRunningPOState:Ltv/alphonso/audiocaptureservice/ACSRunningPO;

    iput-object v0, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCurrentState:Ltv/alphonso/audiocaptureservice/ACSState;

    .line 263
    :goto_0
    iget v0, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCaptureCount:I

    if-eqz v0, :cond_1

    .line 264
    iget v0, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCaptureCount:I

    iput v0, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCurrentCapturesTodo:I

    .line 270
    :cond_1
    invoke-static {p1}, Ltv/alphonso/audiocaptureservice/ACSUtils;->acquireWakeLock(Ltv/alphonso/audiocaptureservice/AudioCaptureService;)V

    .line 273
    invoke-virtual {p1}, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->prepareRecorder()V

    .line 276
    invoke-virtual {p1}, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->processCaptureStart()V

    .line 277
    return-void

    .line 260
    :cond_2
    iget-object v0, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mFSM:Ltv/alphonso/audiocaptureservice/ACSFSM;

    iget-object v0, v0, Ltv/alphonso/audiocaptureservice/ACSFSM;->mACSRunningState:Ltv/alphonso/audiocaptureservice/ACSRunning;

    iput-object v0, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCurrentState:Ltv/alphonso/audiocaptureservice/ACSState;

    goto :goto_0
.end method


# virtual methods
.method public getStateString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    sget-object v0, Ltv/alphonso/audiocaptureservice/ACSInitialized;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public onCallStarted(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "acsInstance"    # Ltv/alphonso/audiocaptureservice/AudioCaptureService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 183
    iget-wide v0, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mFlags:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mFlags:J

    .line 184
    return-void
.end method

.method public onCallStopped(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V
    .locals 10
    .param p1, "acsInstance"    # Ltv/alphonso/audiocaptureservice/AudioCaptureService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    const-wide/16 v8, 0x4

    const-wide/16 v6, 0x2

    .line 190
    iget-wide v2, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mFlags:J

    const-wide/16 v4, -0x2

    and-long/2addr v2, v4

    iput-wide v2, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mFlags:J

    .line 192
    iget v1, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mAcrMode:I

    if-nez v1, :cond_1

    .line 207
    :cond_0
    :goto_0
    return-void

    .line 196
    :cond_1
    iget-wide v2, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mFlags:J

    and-long/2addr v2, v6

    cmp-long v1, v2, v6

    if-nez v1, :cond_2

    .line 198
    iget-object v1, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 199
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    .line 200
    iget-object v1, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mStartParams:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 201
    iget-object v1, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 203
    .end local v0    # "msg":Landroid/os/Message;
    :cond_2
    iget-wide v2, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mFlags:J

    and-long/2addr v2, v8

    cmp-long v1, v2, v8

    if-nez v1, :cond_0

    .line 205
    invoke-direct {p0, p1}, Ltv/alphonso/audiocaptureservice/ACSInitialized;->processStartFinalProcessing(Ltv/alphonso/audiocaptureservice/AudioCaptureService;)V

    goto :goto_0
.end method

.method public onCaptureTimerExpiry(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "acsInstance"    # Ltv/alphonso/audiocaptureservice/AudioCaptureService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 82
    iget-object v0, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mFSM:Ltv/alphonso/audiocaptureservice/ACSFSM;

    sget-object v1, Ltv/alphonso/audiocaptureservice/ACSInitialized;->TAG:Ljava/lang/String;

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Ltv/alphonso/audiocaptureservice/ACSFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 83
    return-void
.end method

.method public onCleanup(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "acsInstance"    # Ltv/alphonso/audiocaptureservice/AudioCaptureService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 24
    invoke-static {p1}, Ltv/alphonso/audiocaptureservice/ACSUtils;->processCleanup(Ltv/alphonso/audiocaptureservice/AudioCaptureService;)V

    .line 25
    return-void
.end method

.method public onClockSkew(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "acsInstance"    # Ltv/alphonso/audiocaptureservice/AudioCaptureService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 282
    invoke-static {p1, p2}, Ltv/alphonso/audiocaptureservice/ACSUtils;->processClockSkew(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V

    .line 283
    return-void
.end method

.method public onContinue(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "acsInstance"    # Ltv/alphonso/audiocaptureservice/AudioCaptureService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 76
    iget-object v0, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mFSM:Ltv/alphonso/audiocaptureservice/ACSFSM;

    sget-object v1, Ltv/alphonso/audiocaptureservice/ACSInitialized;->TAG:Ljava/lang/String;

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Ltv/alphonso/audiocaptureservice/ACSFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 77
    return-void
.end method

.method public onDestroy(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "acsInstance"    # Ltv/alphonso/audiocaptureservice/AudioCaptureService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 30
    invoke-static {p1}, Ltv/alphonso/audiocaptureservice/ACSUtils;->processCleanup(Ltv/alphonso/audiocaptureservice/AudioCaptureService;)V

    .line 32
    invoke-static {p1}, Ltv/alphonso/audiocaptureservice/ACSUtils;->processDestroy(Ltv/alphonso/audiocaptureservice/AudioCaptureService;)V

    .line 33
    return-void
.end method

.method public onDisableDebugAudioUpload(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "acsInstance"    # Ltv/alphonso/audiocaptureservice/AudioCaptureService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 144
    invoke-static {p1}, Ltv/alphonso/audiocaptureservice/ACSUtils;->processDisableAudioUpload(Ltv/alphonso/audiocaptureservice/AudioCaptureService;)V

    .line 145
    return-void
.end method

.method public onDisableDebugAudioUploadTimedout(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "acsInstance"    # Ltv/alphonso/audiocaptureservice/AudioCaptureService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 176
    invoke-static {p1}, Ltv/alphonso/audiocaptureservice/ACSUtils;->processDisableAudioUploadTimedout(Ltv/alphonso/audiocaptureservice/AudioCaptureService;)V

    .line 177
    return-void
.end method

.method public onDisableRecordTimeouts(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "acsInstance"    # Ltv/alphonso/audiocaptureservice/AudioCaptureService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 156
    invoke-static {p1}, Ltv/alphonso/audiocaptureservice/ACSUtils;->processEnableRecordTimeouts(Ltv/alphonso/audiocaptureservice/AudioCaptureService;)V

    .line 157
    return-void
.end method

.method public onEnableDebugAudioUpload(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "acsInstance"    # Ltv/alphonso/audiocaptureservice/AudioCaptureService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 138
    invoke-static {p1}, Ltv/alphonso/audiocaptureservice/ACSUtils;->processEnableAudioUpload(Ltv/alphonso/audiocaptureservice/AudioCaptureService;)V

    .line 139
    return-void
.end method

.method public onEnableDebugAudioUploadTimedout(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "acsInstance"    # Ltv/alphonso/audiocaptureservice/AudioCaptureService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 169
    invoke-static {p1}, Ltv/alphonso/audiocaptureservice/ACSUtils;->processEnableAudioUploadTimedout(Ltv/alphonso/audiocaptureservice/AudioCaptureService;)V

    .line 170
    return-void
.end method

.method public onEnableRecordTimeouts(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "acsInstance"    # Ltv/alphonso/audiocaptureservice/AudioCaptureService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 150
    invoke-static {p1}, Ltv/alphonso/audiocaptureservice/ACSUtils;->processEnableAudioUpload(Ltv/alphonso/audiocaptureservice/AudioCaptureService;)V

    .line 151
    return-void
.end method

.method public onGetStats(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "acsInstance"    # Ltv/alphonso/audiocaptureservice/AudioCaptureService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 88
    invoke-static {p1, p2}, Ltv/alphonso/audiocaptureservice/ACSUtils;->processGetStats(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V

    .line 89
    return-void
.end method

.method public onNewAudioDBFile(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "acsInstance"    # Ltv/alphonso/audiocaptureservice/AudioCaptureService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 132
    invoke-static {p1, p2}, Ltv/alphonso/audiocaptureservice/ACSUtils;->processNewAudioDBFile(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V

    .line 133
    return-void
.end method

.method public onPrepareTimeExpiry(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "acsInstance"    # Ltv/alphonso/audiocaptureservice/AudioCaptureService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 104
    sget-boolean v0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->debug:Z

    if-eqz v0, :cond_0

    .line 105
    sget-object v0, Ltv/alphonso/audiocaptureservice/ACSInitialized;->TAG:Ljava/lang/String;

    const-string v1, "Probably a residual capture prepare timer that could not be cancelled, IGNORE!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :cond_0
    invoke-static {p1}, Ltv/alphonso/audiocaptureservice/ACSUtils;->releaseWakeLock(Ltv/alphonso/audiocaptureservice/AudioCaptureService;)V

    .line 108
    return-void
.end method

.method public onPrimeTimeBegin(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "acsInstance"    # Ltv/alphonso/audiocaptureservice/AudioCaptureService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 319
    invoke-static {p1, p2}, Ltv/alphonso/audiocaptureservice/ACSUtils;->processPrimeTimeBegin(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V

    .line 320
    return-void
.end method

.method public onPrimeTimeEnd(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "acsInstance"    # Ltv/alphonso/audiocaptureservice/AudioCaptureService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 326
    invoke-static {p1, p2}, Ltv/alphonso/audiocaptureservice/ACSUtils;->processPrimeTimeEnd(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V

    .line 327
    return-void
.end method

.method public onResult(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "acsInstance"    # Ltv/alphonso/audiocaptureservice/AudioCaptureService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 305
    iget-object v0, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mFSM:Ltv/alphonso/audiocaptureservice/ACSFSM;

    sget-object v1, Ltv/alphonso/audiocaptureservice/ACSInitialized;->TAG:Ljava/lang/String;

    const/16 v2, 0x17

    invoke-virtual {v0, v1, v2}, Ltv/alphonso/audiocaptureservice/ACSFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 306
    return-void
.end method

.method public onSetup(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "acsInstance"    # Ltv/alphonso/audiocaptureservice/AudioCaptureService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 14
    iget v0, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mAcrMode:I

    .line 16
    .local v0, "oldAcrMode":I
    invoke-static {p1, p2}, Ltv/alphonso/audiocaptureservice/ACSUtils;->processSetup(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V

    .line 18
    invoke-static {p1, v0}, Ltv/alphonso/audiocaptureservice/ACSUtils;->postProcessSetupOnInitialized(Ltv/alphonso/audiocaptureservice/AudioCaptureService;I)V

    .line 19
    return-void
.end method

.method public onSleepTimerExpiry(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "acsInstance"    # Ltv/alphonso/audiocaptureservice/AudioCaptureService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 94
    sget-boolean v0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->debug:Z

    if-eqz v0, :cond_0

    .line 95
    sget-object v0, Ltv/alphonso/audiocaptureservice/ACSInitialized;->TAG:Ljava/lang/String;

    const-string v1, "Probably a residual sleep timer that could not be cancelled, IGNORE!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :cond_0
    invoke-static {p1}, Ltv/alphonso/audiocaptureservice/ACSUtils;->releaseWakeLock(Ltv/alphonso/audiocaptureservice/AudioCaptureService;)V

    .line 98
    return-void
.end method

.method public onStart(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V
    .locals 6
    .param p1, "acsInstance"    # Ltv/alphonso/audiocaptureservice/AudioCaptureService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    const-wide/16 v4, 0x2

    const-wide/16 v2, 0x1

    .line 38
    iput-object p2, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mStartParams:Landroid/os/Bundle;

    .line 41
    iget-wide v0, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mFlags:J

    and-long/2addr v0, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 43
    sget-object v0, Ltv/alphonso/audiocaptureservice/ACSInitialized;->TAG:Ljava/lang/String;

    const-string v1, "Call-in-progress flag is set, store the start event and set a start-received flag"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    iget-wide v0, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mFlags:J

    or-long/2addr v0, v4

    iput-wide v0, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mFlags:J

    .line 57
    :goto_0
    return-void

    .line 47
    :cond_0
    iget v0, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mAcrMode:I

    if-nez v0, :cond_1

    .line 49
    sget-object v0, Ltv/alphonso/audiocaptureservice/ACSInitialized;->TAG:Ljava/lang/String;

    const-string v1, "ACR is diabled, store the start event by setting the start-received flag"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    iget-wide v0, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mFlags:J

    or-long/2addr v0, v4

    iput-wide v0, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mFlags:J

    goto :goto_0

    .line 55
    :cond_1
    invoke-virtual {p0, p1, p2}, Ltv/alphonso/audiocaptureservice/ACSInitialized;->processStart(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public onStartNextScenario(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "acsInstance"    # Ltv/alphonso/audiocaptureservice/AudioCaptureService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    const-wide/16 v2, 0x1

    .line 290
    iget-wide v0, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mFlags:J

    and-long/2addr v0, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 292
    sget-object v0, Ltv/alphonso/audiocaptureservice/ACSInitialized;->TAG:Ljava/lang/String;

    const-string v1, "Call-in-progress flag is set, store the start-next-scenario event and set a start-next-scenario-received flag"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    iget-wide v0, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mFlags:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mFlags:J

    .line 299
    :goto_0
    return-void

    .line 297
    :cond_0
    invoke-direct {p0, p1}, Ltv/alphonso/audiocaptureservice/ACSInitialized;->processStartFinalProcessing(Ltv/alphonso/audiocaptureservice/AudioCaptureService;)V

    goto :goto_0
.end method

.method public onStop(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "acsInstance"    # Ltv/alphonso/audiocaptureservice/AudioCaptureService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    const-wide/16 v2, 0x2

    .line 63
    iget-wide v0, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mFlags:J

    and-long/2addr v0, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 65
    iget-wide v0, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mFlags:J

    const-wide/16 v2, -0x3

    and-long/2addr v0, v2

    iput-wide v0, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mFlags:J

    .line 71
    :goto_0
    return-void

    .line 69
    :cond_0
    iget-object v0, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mFSM:Ltv/alphonso/audiocaptureservice/ACSFSM;

    sget-object v1, Ltv/alphonso/audiocaptureservice/ACSInitialized;->TAG:Ljava/lang/String;

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Ltv/alphonso/audiocaptureservice/ACSFSM;->processInvalidEvent(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public onUpdateDeviceIdParams(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "acsInstance"    # Ltv/alphonso/audiocaptureservice/AudioCaptureService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 312
    invoke-static {p1, p2}, Ltv/alphonso/audiocaptureservice/ACSUtils;->processUpdateDeviceIdParams(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V

    .line 313
    return-void
.end method

.method public onUpdateParams(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "acsInstance"    # Ltv/alphonso/audiocaptureservice/AudioCaptureService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 113
    invoke-static {p1, p2}, Ltv/alphonso/audiocaptureservice/ACSUtils;->processUpdateParams(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V

    .line 115
    invoke-virtual {p1}, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->honourVolatilePersistedPrefrences()V

    .line 117
    iget-object v0, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mRecorderThread:Ltv/alphonso/audiocaptureservice/RecorderThread;

    iget v0, v0, Ltv/alphonso/audiocaptureservice/RecorderThread;->mPreBufferSize:I

    if-lez v0, :cond_0

    .line 120
    invoke-static {p1}, Ltv/alphonso/audiocaptureservice/ACSUtils;->acquireWakeLock(Ltv/alphonso/audiocaptureservice/AudioCaptureService;)V

    .line 123
    invoke-virtual {p1}, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->prepareRecorder()V

    .line 125
    iget-object v0, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mFSM:Ltv/alphonso/audiocaptureservice/ACSFSM;

    iget-object v0, v0, Ltv/alphonso/audiocaptureservice/ACSFSM;->mACSPreBufferingState:Ltv/alphonso/audiocaptureservice/ACSPreBuffering;

    iput-object v0, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCurrentState:Ltv/alphonso/audiocaptureservice/ACSState;

    .line 127
    :cond_0
    return-void
.end method

.method public processStart(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "acsInstance"    # Ltv/alphonso/audiocaptureservice/AudioCaptureService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 212
    iget-wide v0, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mFlags:J

    const-wide/16 v2, -0x3

    and-long/2addr v0, v2

    iput-wide v0, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mFlags:J

    .line 214
    iget-boolean v0, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mPowerOptimzationMode:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mPrimeTime:Z

    if-nez v0, :cond_6

    .line 219
    :cond_0
    invoke-virtual {p1}, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->honourVolatilePersistedPrefrences()V

    .line 221
    const-string v0, "capture_duration"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 222
    const-string v0, "capture_duration"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->setCaptureDuration(J)V

    .line 224
    :cond_1
    const-string v0, "capture_count"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 225
    const-string v0, "capture_count"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->setCaptureCount(I)V

    .line 227
    :cond_2
    const-string v0, "capture_scenario_count"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 228
    const-string v0, "capture_scenario_count"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->setCaptureScenarioCount(I)V

    .line 230
    :cond_3
    const-string v0, "capture_sleep_interval"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 231
    const-string v0, "capture_sleep_interval"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->setCaptureSleepTime(J)V

    .line 233
    :cond_4
    const-string v0, "capture_prepare_interval"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 234
    const-string v0, "capture_prepare_interval"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->setCapturePrepareTime(J)V

    .line 237
    :cond_5
    iget v0, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCaptureScenarioCount:I

    if-eqz v0, :cond_6

    .line 238
    iget v0, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCaptureScenarioCount:I

    iput v0, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCaptureScenariosTodo:I

    .line 242
    :cond_6
    invoke-direct {p0, p1}, Ltv/alphonso/audiocaptureservice/ACSInitialized;->processStartFinalProcessing(Ltv/alphonso/audiocaptureservice/AudioCaptureService;)V

    .line 243
    return-void
.end method
