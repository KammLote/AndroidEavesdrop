.class public Ltv/alphonso/audiocaptureservice/ACSSleeping;
.super Ltv/alphonso/audiocaptureservice/ACSState;
.source "ACSSleeping.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Ltv/alphonso/audiocaptureservice/ACSSleeping;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ltv/alphonso/audiocaptureservice/ACSSleeping;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ltv/alphonso/audiocaptureservice/ACSState;-><init>()V

    return-void
.end method


# virtual methods
.method public getStateString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    sget-object v0, Ltv/alphonso/audiocaptureservice/ACSSleeping;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public onCallStarted(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "acsInstance"    # Ltv/alphonso/audiocaptureservice/AudioCaptureService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 191
    invoke-static {p1, p2}, Ltv/alphonso/audiocaptureservice/ACSUtils;->processCallStarted(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V

    .line 192
    return-void
.end method

.method public onCallStopped(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "acsInstance"    # Ltv/alphonso/audiocaptureservice/AudioCaptureService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 197
    iget-wide v0, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mFlags:J

    const-wide/16 v2, -0x2

    and-long/2addr v0, v2

    iput-wide v0, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mFlags:J

    .line 198
    iget-object v0, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mFSM:Ltv/alphonso/audiocaptureservice/ACSFSM;

    sget-object v1, Ltv/alphonso/audiocaptureservice/ACSSleeping;->TAG:Ljava/lang/String;

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2}, Ltv/alphonso/audiocaptureservice/ACSFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 199
    return-void
.end method

.method public onCaptureTimerExpiry(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "acsInstance"    # Ltv/alphonso/audiocaptureservice/AudioCaptureService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 66
    iget-object v0, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mFSM:Ltv/alphonso/audiocaptureservice/ACSFSM;

    sget-object v1, Ltv/alphonso/audiocaptureservice/ACSSleeping;->TAG:Ljava/lang/String;

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Ltv/alphonso/audiocaptureservice/ACSFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 67
    return-void
.end method

.method public onCleanup(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "acsInstance"    # Ltv/alphonso/audiocaptureservice/AudioCaptureService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 27
    invoke-virtual {p0, p1, p2}, Ltv/alphonso/audiocaptureservice/ACSSleeping;->onStop(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V

    .line 29
    invoke-static {p1}, Ltv/alphonso/audiocaptureservice/ACSUtils;->processCleanup(Ltv/alphonso/audiocaptureservice/AudioCaptureService;)V

    .line 30
    return-void
.end method

.method public onClockSkew(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "acsInstance"    # Ltv/alphonso/audiocaptureservice/AudioCaptureService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 205
    invoke-static {p1, p2}, Ltv/alphonso/audiocaptureservice/ACSUtils;->processClockSkew(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V

    .line 206
    return-void
.end method

.method public onContinue(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "acsInstance"    # Ltv/alphonso/audiocaptureservice/AudioCaptureService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 60
    iget-object v0, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mFSM:Ltv/alphonso/audiocaptureservice/ACSFSM;

    sget-object v1, Ltv/alphonso/audiocaptureservice/ACSSleeping;->TAG:Ljava/lang/String;

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Ltv/alphonso/audiocaptureservice/ACSFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 61
    return-void
.end method

.method public onDestroy(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "acsInstance"    # Ltv/alphonso/audiocaptureservice/AudioCaptureService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 35
    invoke-virtual {p0, p1, p2}, Ltv/alphonso/audiocaptureservice/ACSSleeping;->onCleanup(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V

    .line 37
    invoke-static {p1}, Ltv/alphonso/audiocaptureservice/ACSUtils;->processDestroy(Ltv/alphonso/audiocaptureservice/AudioCaptureService;)V

    .line 38
    return-void
.end method

.method public onDisableDebugAudioUpload(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "acsInstance"    # Ltv/alphonso/audiocaptureservice/AudioCaptureService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 128
    invoke-static {p1}, Ltv/alphonso/audiocaptureservice/ACSUtils;->processDisableAudioUpload(Ltv/alphonso/audiocaptureservice/AudioCaptureService;)V

    .line 129
    return-void
.end method

.method public onDisableDebugAudioUploadTimedout(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "acsInstance"    # Ltv/alphonso/audiocaptureservice/AudioCaptureService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 185
    invoke-static {p1}, Ltv/alphonso/audiocaptureservice/ACSUtils;->processDisableAudioUploadTimedout(Ltv/alphonso/audiocaptureservice/AudioCaptureService;)V

    .line 186
    return-void
.end method

.method public onDisableRecordTimeouts(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "acsInstance"    # Ltv/alphonso/audiocaptureservice/AudioCaptureService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 140
    invoke-static {p1}, Ltv/alphonso/audiocaptureservice/ACSUtils;->processEnableRecordTimeouts(Ltv/alphonso/audiocaptureservice/AudioCaptureService;)V

    .line 141
    return-void
.end method

.method public onEnableDebugAudioUpload(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "acsInstance"    # Ltv/alphonso/audiocaptureservice/AudioCaptureService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 122
    invoke-static {p1}, Ltv/alphonso/audiocaptureservice/ACSUtils;->processEnableAudioUpload(Ltv/alphonso/audiocaptureservice/AudioCaptureService;)V

    .line 123
    return-void
.end method

.method public onEnableDebugAudioUploadTimedout(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "acsInstance"    # Ltv/alphonso/audiocaptureservice/AudioCaptureService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 178
    invoke-static {p1}, Ltv/alphonso/audiocaptureservice/ACSUtils;->processEnableAudioUploadTimedout(Ltv/alphonso/audiocaptureservice/AudioCaptureService;)V

    .line 179
    return-void
.end method

.method public onEnableRecordTimeouts(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "acsInstance"    # Ltv/alphonso/audiocaptureservice/AudioCaptureService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 134
    invoke-static {p1}, Ltv/alphonso/audiocaptureservice/ACSUtils;->processEnableAudioUpload(Ltv/alphonso/audiocaptureservice/AudioCaptureService;)V

    .line 135
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
    .line 116
    invoke-static {p1, p2}, Ltv/alphonso/audiocaptureservice/ACSUtils;->processNewAudioDBFile(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V

    .line 117
    return-void
.end method

.method public onPrepareTimeExpiry(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "acsInstance"    # Ltv/alphonso/audiocaptureservice/AudioCaptureService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 101
    sget-boolean v0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->debug:Z

    if-eqz v0, :cond_0

    .line 102
    sget-object v0, Ltv/alphonso/audiocaptureservice/ACSSleeping;->TAG:Ljava/lang/String;

    const-string v1, "Probably a residual capture prepare timer that could not be cancelled, IGNORE!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :cond_0
    invoke-static {p1}, Ltv/alphonso/audiocaptureservice/ACSUtils;->releaseWakeLock(Ltv/alphonso/audiocaptureservice/AudioCaptureService;)V

    .line 105
    return-void
.end method

.method public onResult(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "acsInstance"    # Ltv/alphonso/audiocaptureservice/AudioCaptureService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 219
    iget v0, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCaptureScenarioCount:I

    if-nez v0, :cond_0

    iget v0, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCaptureCount:I

    if-nez v0, :cond_0

    .line 230
    :goto_0
    return-void

    .line 223
    :cond_0
    invoke-virtual {p0, p1, p2}, Ltv/alphonso/audiocaptureservice/ACSSleeping;->onStop(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V

    .line 225
    iget v0, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCaptureScenariosTodo:I

    if-nez v0, :cond_1

    iget v0, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCaptureScenarioCount:I

    if-nez v0, :cond_2

    .line 227
    :cond_1
    iget-object v0, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x16

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 229
    :cond_2
    invoke-static {}, Ltv/alphonso/audiocaptureservice/ACSUtils;->sendScenariosCompleteNotification()V

    goto :goto_0
.end method

.method public onSetup(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "acsInstance"    # Ltv/alphonso/audiocaptureservice/AudioCaptureService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 19
    invoke-static {p1, p2}, Ltv/alphonso/audiocaptureservice/ACSUtils;->processSetup(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V

    .line 21
    invoke-static {p1}, Ltv/alphonso/audiocaptureservice/ACSUtils;->postProcessSetupOnRunning(Ltv/alphonso/audiocaptureservice/AudioCaptureService;)V

    .line 22
    return-void
.end method

.method public onSleepTimerExpiry(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "acsInstance"    # Ltv/alphonso/audiocaptureservice/AudioCaptureService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    const-wide/16 v2, 0x0

    .line 78
    iget-object v0, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mExactSleepTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 79
    const/4 v0, 0x0

    iput-object v0, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mExactSleepTimer:Ljava/util/Timer;

    .line 81
    :cond_0
    iget-wide v0, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCapturePrepareTime:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 83
    invoke-static {p1, v2, v3}, Ltv/alphonso/audiocaptureservice/ACSUtils;->startPrepareTimer(Ltv/alphonso/audiocaptureservice/AudioCaptureService;J)V

    .line 95
    :goto_0
    return-void

    .line 87
    :cond_1
    iget-object v0, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mFSM:Ltv/alphonso/audiocaptureservice/ACSFSM;

    iget-object v0, v0, Ltv/alphonso/audiocaptureservice/ACSFSM;->mACSRunningState:Ltv/alphonso/audiocaptureservice/ACSRunning;

    iput-object v0, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCurrentState:Ltv/alphonso/audiocaptureservice/ACSState;

    .line 90
    invoke-virtual {p1}, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->prepareRecorder()V

    .line 93
    invoke-virtual {p1}, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->processCaptureStart()V

    goto :goto_0
.end method

.method public onStart(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "acsInstance"    # Ltv/alphonso/audiocaptureservice/AudioCaptureService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 43
    iget-object v0, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mFSM:Ltv/alphonso/audiocaptureservice/ACSFSM;

    sget-object v1, Ltv/alphonso/audiocaptureservice/ACSSleeping;->TAG:Ljava/lang/String;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Ltv/alphonso/audiocaptureservice/ACSFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 44
    return-void
.end method

.method public onStartNextScenario(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "acsInstance"    # Ltv/alphonso/audiocaptureservice/AudioCaptureService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 212
    iget-object v0, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mFSM:Ltv/alphonso/audiocaptureservice/ACSFSM;

    sget-object v1, Ltv/alphonso/audiocaptureservice/ACSSleeping;->TAG:Ljava/lang/String;

    const/16 v2, 0x16

    invoke-virtual {v0, v1, v2}, Ltv/alphonso/audiocaptureservice/ACSFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 213
    return-void
.end method

.method public onStop(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "acsInstance"    # Ltv/alphonso/audiocaptureservice/AudioCaptureService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Ltv/alphonso/audiocaptureservice/ACSSleeping;->stopSleepTimer(Ltv/alphonso/audiocaptureservice/AudioCaptureService;)V

    .line 51
    iget-object v0, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mFSM:Ltv/alphonso/audiocaptureservice/ACSFSM;

    iget-object v0, v0, Ltv/alphonso/audiocaptureservice/ACSFSM;->mACSInitializedState:Ltv/alphonso/audiocaptureservice/ACSInitialized;

    iput-object v0, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCurrentState:Ltv/alphonso/audiocaptureservice/ACSState;

    .line 54
    invoke-static {p1}, Ltv/alphonso/audiocaptureservice/ACSUtils;->dumpStats(Ltv/alphonso/audiocaptureservice/AudioCaptureService;)V

    .line 55
    return-void
.end method

.method public onUpdateDeviceIdParams(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "acsInstance"    # Ltv/alphonso/audiocaptureservice/AudioCaptureService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 236
    invoke-static {p1, p2}, Ltv/alphonso/audiocaptureservice/ACSUtils;->processUpdateDeviceIdParams(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V

    .line 237
    return-void
.end method

.method public onUpdateParams(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "acsInstance"    # Ltv/alphonso/audiocaptureservice/AudioCaptureService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 110
    invoke-static {p1, p2}, Ltv/alphonso/audiocaptureservice/ACSUtils;->processUpdateParams(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V

    .line 111
    return-void
.end method

.method public stopSleepTimer(Ltv/alphonso/audiocaptureservice/AudioCaptureService;)V
    .locals 6
    .param p1, "acsInstance"    # Ltv/alphonso/audiocaptureservice/AudioCaptureService;

    .prologue
    .line 152
    sget-boolean v3, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->debug:Z

    if-eqz v3, :cond_0

    .line 153
    sget-object v3, Ltv/alphonso/audiocaptureservice/ACSSleeping;->TAG:Ljava/lang/String;

    const-string v4, "Stopping Sleep timer."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :cond_0
    iget-object v3, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mExactSleepTimer:Ljava/util/Timer;

    if-eqz v3, :cond_1

    .line 157
    iget-object v3, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mExactSleepTimer:Ljava/util/Timer;

    invoke-virtual {v3}, Ljava/util/Timer;->cancel()V

    .line 158
    iget-object v3, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mExactSleepTimer:Ljava/util/Timer;

    invoke-virtual {v3}, Ljava/util/Timer;->purge()I

    .line 159
    const/4 v3, 0x0

    iput-object v3, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mExactSleepTimer:Ljava/util/Timer;

    .line 171
    :goto_0
    iget-object v3, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 172
    return-void

    .line 163
    :cond_1
    iget-object v3, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mContext:Landroid/content/Context;

    const-string v4, "alarm"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 164
    .local v0, "am":Landroid/app/AlarmManager;
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mContext:Landroid/content/Context;

    const-class v4, Ltv/alphonso/service/AlphonsoService;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 165
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "AUDIO_CAPTURE_SERVICE_SLEEP_TIMER"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 166
    const-string v3, "tv.alphonso.service.AlphonsoService.EVENT"

    const/4 v4, 0x5

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 167
    iget-object v3, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/high16 v5, 0x8000000

    invoke-static {v3, v4, v1, v5}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 168
    .local v2, "pi":Landroid/app/PendingIntent;
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    goto :goto_0
.end method
