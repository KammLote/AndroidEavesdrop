.class public Ltv/alphonso/audiocaptureservice/ACSNull;
.super Ltv/alphonso/audiocaptureservice/ACSState;
.source "ACSNull.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Ltv/alphonso/audiocaptureservice/ACSNull;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ltv/alphonso/audiocaptureservice/ACSNull;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ltv/alphonso/audiocaptureservice/ACSState;-><init>()V

    return-void
.end method


# virtual methods
.method public getStateString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    sget-object v0, Ltv/alphonso/audiocaptureservice/ACSNull;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public onCallStarted(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "acsInstance"    # Ltv/alphonso/audiocaptureservice/AudioCaptureService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 178
    iget-wide v0, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mFlags:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mFlags:J

    .line 179
    return-void
.end method

.method public onCallStopped(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "acsInstance"    # Ltv/alphonso/audiocaptureservice/AudioCaptureService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 185
    iget-wide v0, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mFlags:J

    const-wide/16 v2, -0x2

    and-long/2addr v0, v2

    iput-wide v0, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mFlags:J

    .line 186
    return-void
.end method

.method public onCaptureTimerExpiry(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "acsInstance"    # Ltv/alphonso/audiocaptureservice/AudioCaptureService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 88
    iget-object v0, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mFSM:Ltv/alphonso/audiocaptureservice/ACSFSM;

    sget-object v1, Ltv/alphonso/audiocaptureservice/ACSNull;->TAG:Ljava/lang/String;

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Ltv/alphonso/audiocaptureservice/ACSFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 89
    return-void
.end method

.method public onCleanup(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "acsInstance"    # Ltv/alphonso/audiocaptureservice/AudioCaptureService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 58
    iget-object v0, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mFSM:Ltv/alphonso/audiocaptureservice/ACSFSM;

    sget-object v1, Ltv/alphonso/audiocaptureservice/ACSNull;->TAG:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Ltv/alphonso/audiocaptureservice/ACSFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 59
    return-void
.end method

.method public onClockSkew(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "acsInstance"    # Ltv/alphonso/audiocaptureservice/AudioCaptureService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 192
    iget-object v0, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mFSM:Ltv/alphonso/audiocaptureservice/ACSFSM;

    sget-object v1, Ltv/alphonso/audiocaptureservice/ACSNull;->TAG:Ljava/lang/String;

    const/16 v2, 0x15

    invoke-virtual {v0, v1, v2}, Ltv/alphonso/audiocaptureservice/ACSFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 193
    return-void
.end method

.method public onContinue(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "acsInstance"    # Ltv/alphonso/audiocaptureservice/AudioCaptureService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 82
    iget-object v0, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mFSM:Ltv/alphonso/audiocaptureservice/ACSFSM;

    sget-object v1, Ltv/alphonso/audiocaptureservice/ACSNull;->TAG:Ljava/lang/String;

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Ltv/alphonso/audiocaptureservice/ACSFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 83
    return-void
.end method

.method public onDestroy(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "acsInstance"    # Ltv/alphonso/audiocaptureservice/AudioCaptureService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 64
    invoke-static {p1}, Ltv/alphonso/audiocaptureservice/ACSUtils;->processDestroy(Ltv/alphonso/audiocaptureservice/AudioCaptureService;)V

    .line 65
    return-void
.end method

.method public onDisableDebugAudioUpload(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "acsInstance"    # Ltv/alphonso/audiocaptureservice/AudioCaptureService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 137
    iget-object v0, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mFSM:Ltv/alphonso/audiocaptureservice/ACSFSM;

    sget-object v1, Ltv/alphonso/audiocaptureservice/ACSNull;->TAG:Ljava/lang/String;

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Ltv/alphonso/audiocaptureservice/ACSFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 138
    return-void
.end method

.method public onDisableDebugAudioUploadTimedout(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "acsInstance"    # Ltv/alphonso/audiocaptureservice/AudioCaptureService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 171
    iget-object v0, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mFSM:Ltv/alphonso/audiocaptureservice/ACSFSM;

    sget-object v1, Ltv/alphonso/audiocaptureservice/ACSNull;->TAG:Ljava/lang/String;

    const/16 v2, 0x12

    invoke-virtual {v0, v1, v2}, Ltv/alphonso/audiocaptureservice/ACSFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 172
    return-void
.end method

.method public onDisableRecordTimeouts(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "acsInstance"    # Ltv/alphonso/audiocaptureservice/AudioCaptureService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 149
    iget-object v0, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mFSM:Ltv/alphonso/audiocaptureservice/ACSFSM;

    sget-object v1, Ltv/alphonso/audiocaptureservice/ACSNull;->TAG:Ljava/lang/String;

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Ltv/alphonso/audiocaptureservice/ACSFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 150
    return-void
.end method

.method public onEnableDebugAudioUpload(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "acsInstance"    # Ltv/alphonso/audiocaptureservice/AudioCaptureService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 131
    iget-object v0, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mFSM:Ltv/alphonso/audiocaptureservice/ACSFSM;

    sget-object v1, Ltv/alphonso/audiocaptureservice/ACSNull;->TAG:Ljava/lang/String;

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2}, Ltv/alphonso/audiocaptureservice/ACSFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 132
    return-void
.end method

.method public onEnableDebugAudioUploadTimedout(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "acsInstance"    # Ltv/alphonso/audiocaptureservice/AudioCaptureService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 163
    iget-object v0, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mFSM:Ltv/alphonso/audiocaptureservice/ACSFSM;

    sget-object v1, Ltv/alphonso/audiocaptureservice/ACSNull;->TAG:Ljava/lang/String;

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2}, Ltv/alphonso/audiocaptureservice/ACSFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 164
    return-void
.end method

.method public onEnableRecordTimeouts(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "acsInstance"    # Ltv/alphonso/audiocaptureservice/AudioCaptureService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 143
    iget-object v0, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mFSM:Ltv/alphonso/audiocaptureservice/ACSFSM;

    sget-object v1, Ltv/alphonso/audiocaptureservice/ACSNull;->TAG:Ljava/lang/String;

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Ltv/alphonso/audiocaptureservice/ACSFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 144
    return-void
.end method

.method public onGetStats(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "acsInstance"    # Ltv/alphonso/audiocaptureservice/AudioCaptureService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 94
    iget-object v0, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mFSM:Ltv/alphonso/audiocaptureservice/ACSFSM;

    sget-object v1, Ltv/alphonso/audiocaptureservice/ACSNull;->TAG:Ljava/lang/String;

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Ltv/alphonso/audiocaptureservice/ACSFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 95
    return-void
.end method

.method public onNewAudioDBFile(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "acsInstance"    # Ltv/alphonso/audiocaptureservice/AudioCaptureService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 125
    iget-object v0, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mFSM:Ltv/alphonso/audiocaptureservice/ACSFSM;

    sget-object v1, Ltv/alphonso/audiocaptureservice/ACSNull;->TAG:Ljava/lang/String;

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Ltv/alphonso/audiocaptureservice/ACSFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 126
    return-void
.end method

.method public onPrepareTimeExpiry(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "acsInstance"    # Ltv/alphonso/audiocaptureservice/AudioCaptureService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 110
    sget-boolean v0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->debug:Z

    if-eqz v0, :cond_0

    .line 111
    sget-object v0, Ltv/alphonso/audiocaptureservice/ACSNull;->TAG:Ljava/lang/String;

    const-string v1, "Probably a residual capture prepare timer that could not be cancelled, IGNORE!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :cond_0
    invoke-static {p1}, Ltv/alphonso/audiocaptureservice/ACSUtils;->releaseWakeLock(Ltv/alphonso/audiocaptureservice/AudioCaptureService;)V

    .line 114
    return-void
.end method

.method public onResult(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "acsInstance"    # Ltv/alphonso/audiocaptureservice/AudioCaptureService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 206
    iget-object v0, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mFSM:Ltv/alphonso/audiocaptureservice/ACSFSM;

    sget-object v1, Ltv/alphonso/audiocaptureservice/ACSNull;->TAG:Ljava/lang/String;

    const/16 v2, 0x17

    invoke-virtual {v0, v1, v2}, Ltv/alphonso/audiocaptureservice/ACSFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 207
    return-void
.end method

.method public onSetup(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "acsInstance"    # Ltv/alphonso/audiocaptureservice/AudioCaptureService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 14
    const-string v0, "debug_logs_flag"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15
    const-string v0, "debug_logs_flag"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->processDebugFlag(Z)V

    .line 17
    :cond_0
    new-instance v0, Ltv/alphonso/audiocaptureservice/RecorderThread;

    invoke-direct {v0}, Ltv/alphonso/audiocaptureservice/RecorderThread;-><init>()V

    iput-object v0, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mRecorderThread:Ltv/alphonso/audiocaptureservice/RecorderThread;

    .line 18
    iget-object v0, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mRecorderThread:Ltv/alphonso/audiocaptureservice/RecorderThread;

    invoke-virtual {v0}, Ltv/alphonso/audiocaptureservice/RecorderThread;->setupAudioRecorder()V

    .line 19
    iget-object v0, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mRecorderThread:Ltv/alphonso/audiocaptureservice/RecorderThread;

    iget-object v1, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Ltv/alphonso/utils/PreferencesManager;->getPreBufferSize(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Ltv/alphonso/audiocaptureservice/RecorderThread;->setPreBufferSize(I)V

    .line 22
    const-string v0, "device_id"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mDeviceId:Ljava/lang/String;

    .line 24
    const-string v0, "acr_db_filename"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 25
    const-string v0, "acr_db_filename"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->setAcrDBFilename(Ljava/lang/String;)V

    .line 27
    :cond_1
    const-string v0, "record_timeouts"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->setRecordTimeouts(Z)V

    .line 28
    const-string v0, "audio_file_upload"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->setAudioFileUpload(Z)V

    .line 29
    const-string v0, "audio_file_upload_timedout"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->setAudioFileUploadTimedout(Z)V

    .line 30
    const-string v0, "acr_shift"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v0

    invoke-virtual {p1, v0}, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->setAcrShift(B)V

    .line 31
    const-string v0, "acr_type"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->setAcrMode(I)V

    .line 32
    const-string v0, "power_optimization_mode"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->setPowerOptimizationMode(Z)V

    .line 33
    invoke-virtual {p1, p2}, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->processHistoryFlagUpdate(Landroid/os/Bundle;)V

    .line 35
    iget-object v0, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mRecorderThread:Ltv/alphonso/audiocaptureservice/RecorderThread;

    iget v0, v0, Ltv/alphonso/audiocaptureservice/RecorderThread;->mPreBufferSize:I

    if-lez v0, :cond_3

    .line 38
    invoke-static {p1}, Ltv/alphonso/audiocaptureservice/ACSUtils;->acquireWakeLock(Ltv/alphonso/audiocaptureservice/AudioCaptureService;)V

    .line 41
    invoke-virtual {p1}, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->prepareRecorder()V

    .line 43
    iget-object v0, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mFSM:Ltv/alphonso/audiocaptureservice/ACSFSM;

    iget-object v0, v0, Ltv/alphonso/audiocaptureservice/ACSFSM;->mACSPreBufferingState:Ltv/alphonso/audiocaptureservice/ACSPreBuffering;

    iput-object v0, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCurrentState:Ltv/alphonso/audiocaptureservice/ACSState;

    .line 50
    :goto_0
    sget-boolean v0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->debug:Z

    if-eqz v0, :cond_2

    .line 51
    sget-object v0, Ltv/alphonso/audiocaptureservice/ACSNull;->TAG:Ljava/lang/String;

    const-string v1, "AudioCaptureServiceSetup SUCCESS!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    :cond_2
    return-void

    .line 47
    :cond_3
    iget-object v0, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mFSM:Ltv/alphonso/audiocaptureservice/ACSFSM;

    iget-object v0, v0, Ltv/alphonso/audiocaptureservice/ACSFSM;->mACSInitializedState:Ltv/alphonso/audiocaptureservice/ACSInitialized;

    iput-object v0, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCurrentState:Ltv/alphonso/audiocaptureservice/ACSState;

    goto :goto_0
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
    sget-object v0, Ltv/alphonso/audiocaptureservice/ACSNull;->TAG:Ljava/lang/String;

    const-string v1, "Probably a residual sleep timer that could not be cancelled, IGNORE!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_0
    invoke-static {p1}, Ltv/alphonso/audiocaptureservice/ACSUtils;->releaseWakeLock(Ltv/alphonso/audiocaptureservice/AudioCaptureService;)V

    .line 104
    return-void
.end method

.method public onStart(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "acsInstance"    # Ltv/alphonso/audiocaptureservice/AudioCaptureService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 70
    iget-object v0, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mFSM:Ltv/alphonso/audiocaptureservice/ACSFSM;

    sget-object v1, Ltv/alphonso/audiocaptureservice/ACSNull;->TAG:Ljava/lang/String;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Ltv/alphonso/audiocaptureservice/ACSFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 71
    return-void
.end method

.method public onStartNextScenario(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "acsInstance"    # Ltv/alphonso/audiocaptureservice/AudioCaptureService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 199
    iget-object v0, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mFSM:Ltv/alphonso/audiocaptureservice/ACSFSM;

    sget-object v1, Ltv/alphonso/audiocaptureservice/ACSNull;->TAG:Ljava/lang/String;

    const/16 v2, 0x16

    invoke-virtual {v0, v1, v2}, Ltv/alphonso/audiocaptureservice/ACSFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 200
    return-void
.end method

.method public onStop(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "acsInstance"    # Ltv/alphonso/audiocaptureservice/AudioCaptureService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 76
    iget-object v0, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mFSM:Ltv/alphonso/audiocaptureservice/ACSFSM;

    sget-object v1, Ltv/alphonso/audiocaptureservice/ACSNull;->TAG:Ljava/lang/String;

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Ltv/alphonso/audiocaptureservice/ACSFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 77
    return-void
.end method

.method public onUpdateDeviceIdParams(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "acsInstance"    # Ltv/alphonso/audiocaptureservice/AudioCaptureService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 213
    iget-object v0, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mFSM:Ltv/alphonso/audiocaptureservice/ACSFSM;

    sget-object v1, Ltv/alphonso/audiocaptureservice/ACSNull;->TAG:Ljava/lang/String;

    const/16 v2, 0x18

    invoke-virtual {v0, v1, v2}, Ltv/alphonso/audiocaptureservice/ACSFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 214
    return-void
.end method

.method public onUpdateParams(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "acsInstance"    # Ltv/alphonso/audiocaptureservice/AudioCaptureService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 119
    iget-object v0, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mFSM:Ltv/alphonso/audiocaptureservice/ACSFSM;

    sget-object v1, Ltv/alphonso/audiocaptureservice/ACSNull;->TAG:Ljava/lang/String;

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Ltv/alphonso/audiocaptureservice/ACSFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 120
    return-void
.end method
