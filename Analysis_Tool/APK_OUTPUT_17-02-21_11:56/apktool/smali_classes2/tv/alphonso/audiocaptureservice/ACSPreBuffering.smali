.class public Ltv/alphonso/audiocaptureservice/ACSPreBuffering;
.super Ltv/alphonso/audiocaptureservice/ACSState;
.source "ACSPreBuffering.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Ltv/alphonso/audiocaptureservice/ACSPreBuffering;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ltv/alphonso/audiocaptureservice/ACSPreBuffering;->TAG:Ljava/lang/String;

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
    .line 248
    iget v0, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCaptureScenarioCount:I

    if-eqz v0, :cond_0

    .line 249
    iget v0, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCaptureScenariosTodo:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCaptureScenariosTodo:I

    .line 253
    :cond_0
    invoke-static {p1}, Ltv/alphonso/audiocaptureservice/ACSUtils;->resetStats(Ltv/alphonso/audiocaptureservice/AudioCaptureService;)V

    .line 255
    iget-boolean v0, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mPowerOptimzationMode:Z

    if-eqz v0, :cond_2

    .line 256
    iget-object v0, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mFSM:Ltv/alphonso/audiocaptureservice/ACSFSM;

    iget-object v0, v0, Ltv/alphonso/audiocaptureservice/ACSFSM;->mACSRunningPOState:Ltv/alphonso/audiocaptureservice/ACSRunningPO;

    iput-object v0, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCurrentState:Ltv/alphonso/audiocaptureservice/ACSState;

    .line 261
    :goto_0
    iget v0, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCaptureCount:I

    if-eqz v0, :cond_1

    .line 262
    iget v0, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCaptureCount:I

    iput v0, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCurrentCapturesTodo:I

    .line 266
    :cond_1
    invoke-virtual {p1}, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->processCaptureStart()V

    .line 267
    return-void

    .line 258
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
    .line 164
    sget-object v0, Ltv/alphonso/audiocaptureservice/ACSPreBuffering;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public onCallStarted(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "acsInstance"    # Ltv/alphonso/audiocaptureservice/AudioCaptureService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 185
    iget-wide v0, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mFlags:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mFlags:J

    .line 186
    return-void
.end method

.method public onCallStopped(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V
    .locals 10
    .param p1, "acsInstance"    # Ltv/alphonso/audiocaptureservice/AudioCaptureService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    const-wide/16 v8, 0x4

    const-wide/16 v6, 0x2

    .line 192
    iget-wide v2, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mFlags:J

    const-wide/16 v4, -0x2

    and-long/2addr v2, v4

    iput-wide v2, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mFlags:J

    .line 194
    iget v1, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mAcrMode:I

    if-nez v1, :cond_1

    .line 209
    :cond_0
    :goto_0
    return-void

    .line 198
    :cond_1
    iget-wide v2, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mFlags:J

    and-long/2addr v2, v6

    cmp-long v1, v2, v6

    if-nez v1, :cond_2

    .line 200
    iget-object v1, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 201
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    .line 202
    iget-object v1, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mStartParams:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 203
    iget-object v1, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 205
    .end local v0    # "msg":Landroid/os/Message;
    :cond_2
    iget-wide v2, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mFlags:J

    and-long/2addr v2, v8

    cmp-long v1, v2, v8

    if-nez v1, :cond_0

    .line 207
    invoke-direct {p0, p1}, Ltv/alphonso/audiocaptureservice/ACSPreBuffering;->processStartFinalProcessing(Ltv/alphonso/audiocaptureservice/AudioCaptureService;)V

    goto :goto_0
.end method

.method public onCaptureTimerExpiry(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "acsInstance"    # Ltv/alphonso/audiocaptureservice/AudioCaptureService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 88
    iget-object v0, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mFSM:Ltv/alphonso/audiocaptureservice/ACSFSM;

    sget-object v1, Ltv/alphonso/audiocaptureservice/ACSPreBuffering;->TAG:Ljava/lang/String;

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Ltv/alphonso/audiocaptureservice/ACSFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 89
    return-void
.end method

.method public onCleanup(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "acsInstance"    # Ltv/alphonso/audiocaptureservice/AudioCaptureService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 25
    invoke-virtual {p1}, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->unPrepareRecorder()V

    .line 28
    invoke-static {p1}, Ltv/alphonso/audiocaptureservice/ACSUtils;->releaseWakeLock(Ltv/alphonso/audiocaptureservice/AudioCaptureService;)V

    .line 30
    invoke-static {p1}, Ltv/alphonso/audiocaptureservice/ACSUtils;->processCleanup(Ltv/alphonso/audiocaptureservice/AudioCaptureService;)V

    .line 31
    return-void
.end method

.method public onClockSkew(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "acsInstance"    # Ltv/alphonso/audiocaptureservice/AudioCaptureService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 272
    invoke-static {p1, p2}, Ltv/alphonso/audiocaptureservice/ACSUtils;->processClockSkew(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V

    .line 273
    return-void
.end method

.method public onContinue(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "acsInstance"    # Ltv/alphonso/audiocaptureservice/AudioCaptureService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 82
    invoke-virtual {p1}, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->continueRecording()V

    .line 83
    return-void
.end method

.method public onDestroy(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "acsInstance"    # Ltv/alphonso/audiocaptureservice/AudioCaptureService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 36
    invoke-virtual {p0, p1, p2}, Ltv/alphonso/audiocaptureservice/ACSPreBuffering;->onCleanup(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V

    .line 38
    invoke-static {p1}, Ltv/alphonso/audiocaptureservice/ACSUtils;->processDestroy(Ltv/alphonso/audiocaptureservice/AudioCaptureService;)V

    .line 39
    return-void
.end method

.method public onDisableDebugAudioUpload(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "acsInstance"    # Ltv/alphonso/audiocaptureservice/AudioCaptureService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 146
    invoke-static {p1}, Ltv/alphonso/audiocaptureservice/ACSUtils;->processDisableAudioUpload(Ltv/alphonso/audiocaptureservice/AudioCaptureService;)V

    .line 147
    return-void
.end method

.method public onDisableDebugAudioUploadTimedout(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "acsInstance"    # Ltv/alphonso/audiocaptureservice/AudioCaptureService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 178
    invoke-static {p1}, Ltv/alphonso/audiocaptureservice/ACSUtils;->processDisableAudioUploadTimedout(Ltv/alphonso/audiocaptureservice/AudioCaptureService;)V

    .line 179
    return-void
.end method

.method public onDisableRecordTimeouts(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "acsInstance"    # Ltv/alphonso/audiocaptureservice/AudioCaptureService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 158
    invoke-static {p1}, Ltv/alphonso/audiocaptureservice/ACSUtils;->processEnableRecordTimeouts(Ltv/alphonso/audiocaptureservice/AudioCaptureService;)V

    .line 159
    return-void
.end method

.method public onEnableDebugAudioUpload(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "acsInstance"    # Ltv/alphonso/audiocaptureservice/AudioCaptureService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 140
    invoke-static {p1}, Ltv/alphonso/audiocaptureservice/ACSUtils;->processEnableAudioUpload(Ltv/alphonso/audiocaptureservice/AudioCaptureService;)V

    .line 141
    return-void
.end method

.method public onEnableDebugAudioUploadTimedout(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "acsInstance"    # Ltv/alphonso/audiocaptureservice/AudioCaptureService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 171
    invoke-static {p1}, Ltv/alphonso/audiocaptureservice/ACSUtils;->processEnableAudioUploadTimedout(Ltv/alphonso/audiocaptureservice/AudioCaptureService;)V

    .line 172
    return-void
.end method

.method public onEnableRecordTimeouts(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "acsInstance"    # Ltv/alphonso/audiocaptureservice/AudioCaptureService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 152
    invoke-static {p1}, Ltv/alphonso/audiocaptureservice/ACSUtils;->processEnableAudioUpload(Ltv/alphonso/audiocaptureservice/AudioCaptureService;)V

    .line 153
    return-void
.end method

.method public onGetStats(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "acsInstance"    # Ltv/alphonso/audiocaptureservice/AudioCaptureService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 94
    invoke-static {p1, p2}, Ltv/alphonso/audiocaptureservice/ACSUtils;->processGetStats(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V

    .line 95
    return-void
.end method

.method public onNewAudioDBFile(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "acsInstance"    # Ltv/alphonso/audiocaptureservice/AudioCaptureService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 134
    invoke-static {p1, p2}, Ltv/alphonso/audiocaptureservice/ACSUtils;->processNewAudioDBFile(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V

    .line 135
    return-void
.end method

.method public onPrepareTimeExpiry(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "acsInstance"    # Ltv/alphonso/audiocaptureservice/AudioCaptureService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 108
    sget-boolean v0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->debug:Z

    if-eqz v0, :cond_0

    .line 109
    sget-object v0, Ltv/alphonso/audiocaptureservice/ACSPreBuffering;->TAG:Ljava/lang/String;

    const-string v1, "Probably a residual capture prepare timer that could not be cancelled, IGNORE!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_0
    return-void
.end method

.method public onResult(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "acsInstance"    # Ltv/alphonso/audiocaptureservice/AudioCaptureService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 295
    iget-object v0, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mFSM:Ltv/alphonso/audiocaptureservice/ACSFSM;

    sget-object v1, Ltv/alphonso/audiocaptureservice/ACSPreBuffering;->TAG:Ljava/lang/String;

    const/16 v2, 0x17

    invoke-virtual {v0, v1, v2}, Ltv/alphonso/audiocaptureservice/ACSFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 296
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
    .line 100
    sget-boolean v0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->debug:Z

    if-eqz v0, :cond_0

    .line 101
    sget-object v0, Ltv/alphonso/audiocaptureservice/ACSPreBuffering;->TAG:Ljava/lang/String;

    const-string v1, "Probably a residual sleep timer that could not be cancelled, IGNORE!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :cond_0
    return-void
.end method

.method public onStart(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V
    .locals 6
    .param p1, "acsInstance"    # Ltv/alphonso/audiocaptureservice/AudioCaptureService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    const-wide/16 v4, 0x2

    const-wide/16 v2, 0x1

    .line 44
    iput-object p2, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mStartParams:Landroid/os/Bundle;

    .line 47
    iget-wide v0, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mFlags:J

    and-long/2addr v0, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 49
    sget-object v0, Ltv/alphonso/audiocaptureservice/ACSPreBuffering;->TAG:Ljava/lang/String;

    const-string v1, "Call-in-progress flag is set, store the start event and set a start-received flag"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    iget-wide v0, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mFlags:J

    or-long/2addr v0, v4

    iput-wide v0, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mFlags:J

    .line 63
    :goto_0
    return-void

    .line 53
    :cond_0
    iget v0, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mAcrMode:I

    if-nez v0, :cond_1

    .line 55
    sget-object v0, Ltv/alphonso/audiocaptureservice/ACSPreBuffering;->TAG:Ljava/lang/String;

    const-string v1, "ACR is diabled, store the start event by setting the start-received flag"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    iget-wide v0, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mFlags:J

    or-long/2addr v0, v4

    iput-wide v0, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mFlags:J

    goto :goto_0

    .line 61
    :cond_1
    invoke-virtual {p0, p1, p2}, Ltv/alphonso/audiocaptureservice/ACSPreBuffering;->processStart(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public onStartNextScenario(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "acsInstance"    # Ltv/alphonso/audiocaptureservice/AudioCaptureService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    const-wide/16 v2, 0x1

    .line 280
    iget-wide v0, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mFlags:J

    and-long/2addr v0, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 282
    sget-object v0, Ltv/alphonso/audiocaptureservice/ACSPreBuffering;->TAG:Ljava/lang/String;

    const-string v1, "Call-in-progress flag is set, store the start-next-scenario event and set a start-next-scenario-received flag"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    iget-wide v0, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mFlags:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mFlags:J

    .line 289
    :goto_0
    return-void

    .line 287
    :cond_0
    invoke-direct {p0, p1}, Ltv/alphonso/audiocaptureservice/ACSPreBuffering;->processStartFinalProcessing(Ltv/alphonso/audiocaptureservice/AudioCaptureService;)V

    goto :goto_0
.end method

.method public onStop(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "acsInstance"    # Ltv/alphonso/audiocaptureservice/AudioCaptureService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    const-wide/16 v2, 0x2

    .line 69
    iget-wide v0, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mFlags:J

    and-long/2addr v0, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 71
    iget-wide v0, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mFlags:J

    const-wide/16 v2, -0x3

    and-long/2addr v0, v2

    iput-wide v0, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mFlags:J

    .line 77
    :goto_0
    return-void

    .line 75
    :cond_0
    iget-object v0, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mFSM:Ltv/alphonso/audiocaptureservice/ACSFSM;

    sget-object v1, Ltv/alphonso/audiocaptureservice/ACSPreBuffering;->TAG:Ljava/lang/String;

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Ltv/alphonso/audiocaptureservice/ACSFSM;->processInvalidEvent(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public onUpdateDeviceIdParams(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "acsInstance"    # Ltv/alphonso/audiocaptureservice/AudioCaptureService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 302
    invoke-static {p1, p2}, Ltv/alphonso/audiocaptureservice/ACSUtils;->processUpdateDeviceIdParams(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V

    .line 303
    return-void
.end method

.method public onUpdateParams(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "acsInstance"    # Ltv/alphonso/audiocaptureservice/AudioCaptureService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 115
    invoke-static {p1, p2}, Ltv/alphonso/audiocaptureservice/ACSUtils;->processUpdateParams(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V

    .line 117
    invoke-virtual {p1}, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->honourVolatilePersistedPrefrences()V

    .line 119
    iget-object v0, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mRecorderThread:Ltv/alphonso/audiocaptureservice/RecorderThread;

    iget v0, v0, Ltv/alphonso/audiocaptureservice/RecorderThread;->mPreBufferSize:I

    if-nez v0, :cond_0

    .line 122
    invoke-virtual {p1}, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->unPrepareRecorder()V

    .line 125
    invoke-static {p1}, Ltv/alphonso/audiocaptureservice/ACSUtils;->releaseWakeLock(Ltv/alphonso/audiocaptureservice/AudioCaptureService;)V

    .line 127
    iget-object v0, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mFSM:Ltv/alphonso/audiocaptureservice/ACSFSM;

    iget-object v0, v0, Ltv/alphonso/audiocaptureservice/ACSFSM;->mACSInitializedState:Ltv/alphonso/audiocaptureservice/ACSInitialized;

    iput-object v0, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCurrentState:Ltv/alphonso/audiocaptureservice/ACSState;

    .line 129
    :cond_0
    return-void
.end method

.method public processStart(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "acsInstance"    # Ltv/alphonso/audiocaptureservice/AudioCaptureService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 214
    iget-wide v0, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mFlags:J

    const-wide/16 v2, -0x3

    and-long/2addr v0, v2

    iput-wide v0, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mFlags:J

    .line 218
    invoke-virtual {p1}, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->honourVolatilePersistedPrefrences()V

    .line 220
    const-string v0, "capture_duration"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    const-string v0, "capture_duration"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->setCaptureDuration(J)V

    .line 223
    :cond_0
    const-string v0, "capture_count"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 224
    const-string v0, "capture_count"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->setCaptureCount(I)V

    .line 226
    :cond_1
    const-string v0, "capture_scenario_count"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 227
    const-string v0, "capture_scenario_count"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->setCaptureScenarioCount(I)V

    .line 229
    :cond_2
    const-string v0, "capture_sleep_interval"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 230
    const-string v0, "capture_sleep_interval"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->setCaptureSleepTime(J)V

    .line 232
    :cond_3
    const-string v0, "capture_prepare_interval"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 233
    const-string v0, "capture_prepare_interval"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->setCapturePrepareTime(J)V

    .line 236
    :cond_4
    iget v0, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCaptureScenarioCount:I

    if-eqz v0, :cond_5

    .line 237
    iget v0, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCaptureScenarioCount:I

    iput v0, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCaptureScenariosTodo:I

    .line 240
    :cond_5
    invoke-direct {p0, p1}, Ltv/alphonso/audiocaptureservice/ACSPreBuffering;->processStartFinalProcessing(Ltv/alphonso/audiocaptureservice/AudioCaptureService;)V

    .line 241
    return-void
.end method
