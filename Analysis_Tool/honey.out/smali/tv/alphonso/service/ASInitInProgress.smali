.class public Ltv/alphonso/service/ASInitInProgress;
.super Ltv/alphonso/service/ASState;
.source "ASInitInProgress.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Ltv/alphonso/service/ASInitInProgress;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ltv/alphonso/service/ASInitInProgress;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ltv/alphonso/service/ASState;-><init>()V

    return-void
.end method

.method private setupAudioCaptureService(Ltv/alphonso/service/AlphonsoService;IZZ)V
    .locals 4
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;
    .param p2, "acrType"    # I
    .param p3, "audioFileUpload"    # Z
    .param p4, "recordTimeouts"    # Z

    .prologue
    .line 105
    iget-object v2, p1, Ltv/alphonso/service/AlphonsoService;->mAudioCaptureService:Ltv/alphonso/audiocaptureservice/AudioCaptureService;

    if-eqz v2, :cond_1

    .line 107
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 108
    .local v1, "params":Landroid/os/Bundle;
    const-string v2, "debug_logs_flag"

    invoke-static {p1}, Ltv/alphonso/utils/PreferencesManager;->getDebugLogsFlag(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 110
    const-string v2, "device_id"

    iget-object v3, p1, Ltv/alphonso/service/AlphonsoService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Ltv/alphonso/utils/PreferencesManager;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const-string v2, "acr_type"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 113
    const-string v2, "acr_shift"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 114
    const-string v2, "audio_file_upload"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 115
    const-string v2, "record_timeouts"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 117
    const-string v2, "power_optimization_mode"

    iget-object v3, p1, Ltv/alphonso/service/AlphonsoService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Ltv/alphonso/utils/PreferencesManager;->getPowerOptimizationMode(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 119
    const-string v2, "alp_uid"

    iget-object v3, p1, Ltv/alphonso/service/AlphonsoService;->mAlpUid:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    iget-object v2, p1, Ltv/alphonso/service/AlphonsoService;->mAudioCaptureService:Ltv/alphonso/audiocaptureservice/AudioCaptureService;

    iget-object v2, v2, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 122
    .local v0, "msg":Landroid/os/Message;
    const/4 v2, 0x1

    iput v2, v0, Landroid/os/Message;->what:I

    .line 123
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 125
    iget-boolean v2, p1, Ltv/alphonso/service/AlphonsoService;->mDebug:Z

    if-eqz v2, :cond_0

    .line 126
    sget-object v2, Ltv/alphonso/service/ASInitInProgress;->TAG:Ljava/lang/String;

    const-string v3, "Sending ACS_SETUP message to AudioCaptureService."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :cond_0
    iget-object v2, p1, Ltv/alphonso/service/AlphonsoService;->mAudioCaptureService:Ltv/alphonso/audiocaptureservice/AudioCaptureService;

    iget-object v2, v2, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 129
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "params":Landroid/os/Bundle;
    :cond_1
    return-void
.end method

.method private startLocationService(Ltv/alphonso/service/AlphonsoService;)V
    .locals 5
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;

    .prologue
    .line 91
    iget-boolean v1, p1, Ltv/alphonso/service/AlphonsoService;->mDebug:Z

    if-eqz v1, :cond_0

    .line 92
    sget-object v1, Ltv/alphonso/service/ASInitInProgress;->TAG:Ljava/lang/String;

    const-string v2, "Staring LocationService."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 97
    .local v0, "locParams":Landroid/os/Bundle;
    new-instance v1, Ltv/alphonso/service/LocationService;

    iget-object v2, p1, Ltv/alphonso/service/AlphonsoService;->mContext:Landroid/content/Context;

    iget-object v3, p1, Ltv/alphonso/service/AlphonsoService;->mAlphonsoClient:Ltv/alphonso/alphonsoclient/AlphonsoClient;

    iget-object v4, p1, Ltv/alphonso/service/AlphonsoService;->mProvClient:Ltv/alphonso/service/ProvClient;

    invoke-direct {v1, v2, v3, v4, v0}, Ltv/alphonso/service/LocationService;-><init>(Landroid/content/Context;Ltv/alphonso/alphonsoclient/AlphonsoClient;Ltv/alphonso/service/ProvClient;Landroid/os/Bundle;)V

    iput-object v1, p1, Ltv/alphonso/service/AlphonsoService;->mLocationService:Ltv/alphonso/service/LocationService;

    .line 98
    return-void
.end method


# virtual methods
.method public getStateString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    sget-object v0, Ltv/alphonso/service/ASInitInProgress;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public onACSScenariosCompleteNotification(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 295
    iget-object v0, p1, Ltv/alphonso/service/AlphonsoService;->mFSM:Ltv/alphonso/service/ASFSM;

    sget-object v1, Ltv/alphonso/service/ASInitInProgress;->TAG:Ljava/lang/String;

    const/16 v2, 0x25

    invoke-virtual {v0, v1, v2}, Ltv/alphonso/service/ASFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 296
    return-void
.end method

.method public onAdIdGeneration(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 301
    invoke-static {p1, p2}, Ltv/alphonso/service/AlphonsoServiceUtils;->processAdIdGeneration(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    invoke-virtual {p1}, Ltv/alphonso/service/AlphonsoService;->setupDeviceId()V

    .line 306
    invoke-static {p1}, Ltv/alphonso/service/AlphonsoServiceUtils;->configureServerParams(Ltv/alphonso/service/AlphonsoService;)V

    .line 308
    invoke-static {p1}, Ltv/alphonso/service/AlphonsoServiceUtils;->sendUpdateDeviceIdParamsToACS(Ltv/alphonso/service/AlphonsoService;)V

    .line 310
    :cond_0
    return-void
.end method

.method public onAdIdPollConfig(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 327
    invoke-static {p1, p2}, Ltv/alphonso/service/AlphonsoServiceUtils;->processAdIdPollConfig(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V

    .line 328
    return-void
.end method

.method public onAdIdPollTimerExpiry(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 321
    invoke-virtual {p1}, Ltv/alphonso/service/AlphonsoService;->getAdId()V

    .line 322
    return-void
.end method

.method public onAdvtDbUpdate(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 220
    iget-object v0, p1, Ltv/alphonso/service/AlphonsoService;->mFSM:Ltv/alphonso/service/ASFSM;

    sget-object v1, Ltv/alphonso/service/ASInitInProgress;->TAG:Ljava/lang/String;

    const/16 v2, 0x19

    invoke-virtual {v0, v1, v2}, Ltv/alphonso/service/ASFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 221
    return-void
.end method

.method public onAlphonsoClientCleanupDone(Ltv/alphonso/service/AlphonsoService;)V
    .locals 3
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;

    .prologue
    .line 79
    iget-object v0, p1, Ltv/alphonso/service/AlphonsoService;->mFSM:Ltv/alphonso/service/ASFSM;

    sget-object v1, Ltv/alphonso/service/ASInitInProgress;->TAG:Ljava/lang/String;

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Ltv/alphonso/service/ASFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 80
    return-void
.end method

.method public onAudioCaptureServiceCleanupDone(Ltv/alphonso/service/AlphonsoService;)V
    .locals 3
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;

    .prologue
    .line 73
    iget-object v0, p1, Ltv/alphonso/service/AlphonsoService;->mFSM:Ltv/alphonso/service/ASFSM;

    sget-object v1, Ltv/alphonso/service/ASInitInProgress;->TAG:Ljava/lang/String;

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Ltv/alphonso/service/ASFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 74
    return-void
.end method

.method public onAudioCaptureServiceSleepTimerExpiry(Ltv/alphonso/service/AlphonsoService;)V
    .locals 3
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;

    .prologue
    .line 166
    iget-object v0, p1, Ltv/alphonso/service/AlphonsoService;->mFSM:Ltv/alphonso/service/ASFSM;

    sget-object v1, Ltv/alphonso/service/ASInitInProgress;->TAG:Ljava/lang/String;

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Ltv/alphonso/service/ASFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 167
    return-void
.end method

.method public onAudioFPUploadServiceCleanupDone(Ltv/alphonso/service/AlphonsoService;)V
    .locals 3
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;

    .prologue
    .line 85
    iget-object v0, p1, Ltv/alphonso/service/AlphonsoService;->mFSM:Ltv/alphonso/service/ASFSM;

    sget-object v1, Ltv/alphonso/service/ASInitInProgress;->TAG:Ljava/lang/String;

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Ltv/alphonso/service/ASFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 86
    return-void
.end method

.method public onBindUserRequest(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 196
    iget-object v0, p1, Ltv/alphonso/service/AlphonsoService;->mFSM:Ltv/alphonso/service/ASFSM;

    sget-object v1, Ltv/alphonso/service/ASInitInProgress;->TAG:Ljava/lang/String;

    const/16 v2, 0x15

    invoke-virtual {v0, v1, v2}, Ltv/alphonso/service/ASFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 197
    return-void
.end method

.method public onBindUserResponse(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 202
    iget-object v0, p1, Ltv/alphonso/service/AlphonsoService;->mFSM:Ltv/alphonso/service/ASFSM;

    sget-object v1, Ltv/alphonso/service/ASInitInProgress;->TAG:Ljava/lang/String;

    const/16 v2, 0x16

    invoke-virtual {v0, v1, v2}, Ltv/alphonso/service/ASFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 203
    return-void
.end method

.method public onCancel(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 29
    iget-object v0, p1, Ltv/alphonso/service/AlphonsoService;->mFSM:Ltv/alphonso/service/ASFSM;

    sget-object v1, Ltv/alphonso/service/ASInitInProgress;->TAG:Ljava/lang/String;

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Ltv/alphonso/service/ASFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 30
    return-void
.end method

.method public onCleanup(Ltv/alphonso/service/AlphonsoService;)V
    .locals 2
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;

    .prologue
    .line 35
    sget-object v0, Ltv/alphonso/service/ASInitInProgress;->TAG:Ljava/lang/String;

    const-string v1, "processCleanupMessage(): AlphonsoService not yet initialized. Ignore Cleanup.."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    return-void
.end method

.method public onClearHistory(Ltv/alphonso/service/AlphonsoService;)V
    .locals 3
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;

    .prologue
    .line 146
    iget-object v0, p1, Ltv/alphonso/service/AlphonsoService;->mFSM:Ltv/alphonso/service/ASFSM;

    sget-object v1, Ltv/alphonso/service/ASInitInProgress;->TAG:Ljava/lang/String;

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Ltv/alphonso/service/ASFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 147
    return-void
.end method

.method public onClockSyncConfig(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 239
    iget-object v0, p1, Ltv/alphonso/service/AlphonsoService;->mFSM:Ltv/alphonso/service/ASFSM;

    sget-object v1, Ltv/alphonso/service/ASInitInProgress;->TAG:Ljava/lang/String;

    const/16 v2, 0x1c

    invoke-virtual {v0, v1, v2}, Ltv/alphonso/service/ASFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 240
    return-void
.end method

.method public onClockSyncInfoDeRegister(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 251
    iget-object v0, p1, Ltv/alphonso/service/AlphonsoService;->mFSM:Ltv/alphonso/service/ASFSM;

    sget-object v1, Ltv/alphonso/service/ASInitInProgress;->TAG:Ljava/lang/String;

    const/16 v2, 0x1e

    invoke-virtual {v0, v1, v2}, Ltv/alphonso/service/ASFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 252
    return-void
.end method

.method public onClockSyncInfoRegister(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 245
    iget-object v0, p1, Ltv/alphonso/service/AlphonsoService;->mFSM:Ltv/alphonso/service/ASFSM;

    sget-object v1, Ltv/alphonso/service/ASInitInProgress;->TAG:Ljava/lang/String;

    const/16 v2, 0x1d

    invoke-virtual {v0, v1, v2}, Ltv/alphonso/service/ASFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 246
    return-void
.end method

.method public onClockSyncPollTimerExpiry(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 233
    iget-object v0, p1, Ltv/alphonso/service/AlphonsoService;->mFSM:Ltv/alphonso/service/ASFSM;

    sget-object v1, Ltv/alphonso/service/ASInitInProgress;->TAG:Ljava/lang/String;

    const/16 v2, 0x1b

    invoke-virtual {v0, v1, v2}, Ltv/alphonso/service/ASFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 234
    return-void
.end method

.method public onClockSyncServerResponse(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 257
    iget-object v0, p1, Ltv/alphonso/service/AlphonsoService;->mFSM:Ltv/alphonso/service/ASFSM;

    sget-object v1, Ltv/alphonso/service/ASInitInProgress;->TAG:Ljava/lang/String;

    const/16 v2, 0x1f

    invoke-virtual {v0, v1, v2}, Ltv/alphonso/service/ASFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 258
    return-void
.end method

.method public onDestroy(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 315
    iget-object v0, p1, Ltv/alphonso/service/AlphonsoService;->mFSM:Ltv/alphonso/service/ASFSM;

    sget-object v1, Ltv/alphonso/service/ASInitInProgress;->TAG:Ljava/lang/String;

    const/16 v2, 0x27

    invoke-virtual {v0, v1, v2}, Ltv/alphonso/service/ASFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 316
    return-void
.end method

.method public onDisableAudioCaptureUpload(Ltv/alphonso/service/AlphonsoService;)V
    .locals 3
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;

    .prologue
    .line 140
    iget-object v0, p1, Ltv/alphonso/service/AlphonsoService;->mFSM:Ltv/alphonso/service/ASFSM;

    sget-object v1, Ltv/alphonso/service/ASInitInProgress;->TAG:Ljava/lang/String;

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2}, Ltv/alphonso/service/ASFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 141
    return-void
.end method

.method public onEnableAudioCaptureUpload(Ltv/alphonso/service/AlphonsoService;)V
    .locals 3
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;

    .prologue
    .line 134
    iget-object v0, p1, Ltv/alphonso/service/AlphonsoService;->mFSM:Ltv/alphonso/service/ASFSM;

    sget-object v1, Ltv/alphonso/service/ASInitInProgress;->TAG:Ljava/lang/String;

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Ltv/alphonso/service/ASFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 135
    return-void
.end method

.method public onHistoryRequest(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 178
    iget-object v0, p1, Ltv/alphonso/service/AlphonsoService;->mFSM:Ltv/alphonso/service/ASFSM;

    sget-object v1, Ltv/alphonso/service/ASInitInProgress;->TAG:Ljava/lang/String;

    const/16 v2, 0x12

    invoke-virtual {v0, v1, v2}, Ltv/alphonso/service/ASFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 180
    const-string v0, "app_id"

    .line 182
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    .line 180
    invoke-static {p1, v0, v1, v2, v3}, Ltv/alphonso/service/AlphonsoServiceUtils;->sendHistoryResponse(Ltv/alphonso/service/AlphonsoService;Ljava/lang/String;BJ)V

    .line 184
    return-void
.end method

.method public onInit(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 17
    sget-object v0, Ltv/alphonso/service/ASInitInProgress;->TAG:Ljava/lang/String;

    const-string v1, "AlphonsoService init is in progress. Ignoring this init!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    return-void
.end method

.method public onMiscFlagsNotification(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 275
    iget-object v0, p1, Ltv/alphonso/service/AlphonsoService;->mFSM:Ltv/alphonso/service/ASFSM;

    sget-object v1, Ltv/alphonso/service/ASInitInProgress;->TAG:Ljava/lang/String;

    const/16 v2, 0x22

    invoke-virtual {v0, v1, v2}, Ltv/alphonso/service/ASFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 276
    return-void
.end method

.method public onMiscFlagsNotificationDeRegister(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 269
    iget-object v0, p1, Ltv/alphonso/service/AlphonsoService;->mFSM:Ltv/alphonso/service/ASFSM;

    sget-object v1, Ltv/alphonso/service/ASInitInProgress;->TAG:Ljava/lang/String;

    const/16 v2, 0x21

    invoke-virtual {v0, v1, v2}, Ltv/alphonso/service/ASFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 270
    return-void
.end method

.method public onMiscFlagsNotificationRegister(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 263
    iget-object v0, p1, Ltv/alphonso/service/AlphonsoService;->mFSM:Ltv/alphonso/service/ASFSM;

    sget-object v1, Ltv/alphonso/service/ASInitInProgress;->TAG:Ljava/lang/String;

    const/16 v2, 0x22

    invoke-virtual {v0, v1, v2}, Ltv/alphonso/service/ASFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 264
    return-void
.end method

.method public onNotificationsDeRegister(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 289
    iget-object v0, p1, Ltv/alphonso/service/AlphonsoService;->mFSM:Ltv/alphonso/service/ASFSM;

    sget-object v1, Ltv/alphonso/service/ASInitInProgress;->TAG:Ljava/lang/String;

    const/16 v2, 0x24

    invoke-virtual {v0, v1, v2}, Ltv/alphonso/service/ASFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 290
    return-void
.end method

.method public onNotificationsRegister(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 282
    iget-object v0, p1, Ltv/alphonso/service/AlphonsoService;->mFSM:Ltv/alphonso/service/ASFSM;

    sget-object v1, Ltv/alphonso/service/ASInitInProgress;->TAG:Ljava/lang/String;

    const/16 v2, 0x23

    invoke-virtual {v0, v1, v2}, Ltv/alphonso/service/ASFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 283
    return-void
.end method

.method public onProvClientConfigRequestLeaseTimerExpiry(Ltv/alphonso/service/AlphonsoService;)V
    .locals 3
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;

    .prologue
    .line 153
    iget-object v0, p1, Ltv/alphonso/service/AlphonsoService;->mFSM:Ltv/alphonso/service/ASFSM;

    sget-object v1, Ltv/alphonso/service/ASInitInProgress;->TAG:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Ltv/alphonso/service/ASFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 154
    return-void
.end method

.method public onProvClientConfigRequestRetryTimerExpiry(Ltv/alphonso/service/AlphonsoService;)V
    .locals 3
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;

    .prologue
    .line 160
    iget-object v0, p1, Ltv/alphonso/service/AlphonsoService;->mFSM:Ltv/alphonso/service/ASFSM;

    sget-object v1, Ltv/alphonso/service/ASInitInProgress;->TAG:Ljava/lang/String;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Ltv/alphonso/service/ASFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 161
    return-void
.end method

.method public onProvServerConfigResponse(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 333
    invoke-static {p1, p2}, Ltv/alphonso/service/AlphonsoServiceUtils;->processProvServerConfigResponse(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V

    .line 335
    invoke-static {p1}, Ltv/alphonso/service/AlphonsoServiceUtils;->enableCallEventListener(Ltv/alphonso/service/AlphonsoService;)V

    .line 337
    invoke-static {p1}, Ltv/alphonso/service/AlphonsoServiceUtils;->sendRegistrationRequest(Ltv/alphonso/service/AlphonsoService;)V

    .line 338
    return-void
.end method

.method public onProvServerParams(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 226
    iget-object v0, p1, Ltv/alphonso/service/AlphonsoService;->mFSM:Ltv/alphonso/service/ASFSM;

    sget-object v1, Ltv/alphonso/service/ASInitInProgress;->TAG:Ljava/lang/String;

    const/16 v2, 0x1a

    invoke-virtual {v0, v1, v2}, Ltv/alphonso/service/ASFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 227
    return-void
.end method

.method public onRegistrationResponse(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 41
    const-string v1, "result_code"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 43
    .local v0, "resultCode":I
    if-nez v0, :cond_0

    const-string v1, "alp_uid"

    .line 44
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 46
    const-string v1, "alp_uid"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Ltv/alphonso/service/AlphonsoService;->mAlpUid:Ljava/lang/String;

    .line 48
    invoke-direct {p0, p1}, Ltv/alphonso/service/ASInitInProgress;->startLocationService(Ltv/alphonso/service/AlphonsoService;)V

    .line 50
    iget-object v1, p1, Ltv/alphonso/service/AlphonsoService;->mContext:Landroid/content/Context;

    .line 51
    invoke-static {v1}, Ltv/alphonso/utils/PreferencesManager;->getAcrMode(Landroid/content/Context;)I

    move-result v1

    iget-object v2, p1, Ltv/alphonso/service/AlphonsoService;->mContext:Landroid/content/Context;

    .line 52
    invoke-static {v2}, Ltv/alphonso/utils/PreferencesManager;->getAudioFileUploadFlag(Landroid/content/Context;)Z

    move-result v2

    iget-object v3, p1, Ltv/alphonso/service/AlphonsoService;->mContext:Landroid/content/Context;

    .line 53
    invoke-static {v3}, Ltv/alphonso/utils/PreferencesManager;->getRecordTimeoutsFlag(Landroid/content/Context;)Z

    move-result v3

    .line 50
    invoke-direct {p0, p1, v1, v2, v3}, Ltv/alphonso/service/ASInitInProgress;->setupAudioCaptureService(Ltv/alphonso/service/AlphonsoService;IZZ)V

    .line 55
    const/4 v1, 0x0

    invoke-static {p1, v1}, Ltv/alphonso/service/AlphonsoServiceUtils;->sendInitResponse(Ltv/alphonso/service/AlphonsoService;B)V

    .line 57
    invoke-static {p1}, Ltv/alphonso/service/AlphonsoServiceUtils;->enableClockSyncher(Ltv/alphonso/service/AlphonsoService;)V

    .line 59
    iget-object v1, p1, Ltv/alphonso/service/AlphonsoService;->mFSM:Ltv/alphonso/service/ASFSM;

    iget-object v1, v1, Ltv/alphonso/service/ASFSM;->mASInitedState:Ltv/alphonso/service/ASInited;

    iput-object v1, p1, Ltv/alphonso/service/AlphonsoService;->mCurrentState:Ltv/alphonso/service/ASState;

    .line 68
    :goto_0
    return-void

    .line 63
    :cond_0
    sget-object v1, Ltv/alphonso/service/ASInitInProgress;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Response for registration request is with error and code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    const/4 v1, 0x1

    invoke-static {p1, v1}, Ltv/alphonso/service/AlphonsoServiceUtils;->sendInitResponse(Ltv/alphonso/service/AlphonsoService;B)V

    .line 66
    iget-object v1, p1, Ltv/alphonso/service/AlphonsoService;->mFSM:Ltv/alphonso/service/ASFSM;

    iget-object v1, v1, Ltv/alphonso/service/ASFSM;->mASNUllState:Ltv/alphonso/service/ASNull;

    iput-object v1, p1, Ltv/alphonso/service/AlphonsoService;->mCurrentState:Ltv/alphonso/service/ASState;

    goto :goto_0
.end method

.method public onStart(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 23
    iget-object v0, p1, Ltv/alphonso/service/AlphonsoService;->mFSM:Ltv/alphonso/service/ASFSM;

    sget-object v1, Ltv/alphonso/service/ASInitInProgress;->TAG:Ljava/lang/String;

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Ltv/alphonso/service/ASFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 24
    return-void
.end method

.method public onUpdateDebugFlagRequest(Ltv/alphonso/service/AlphonsoService;Z)V
    .locals 0
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;
    .param p2, "flag"    # Z

    .prologue
    .line 190
    invoke-static {p1, p2}, Ltv/alphonso/service/AlphonsoServiceUtils;->updateDebugFlagRequest(Ltv/alphonso/service/AlphonsoService;Z)V

    .line 191
    return-void
.end method

.method public onViewingInfoEvent(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 214
    iget-object v0, p1, Ltv/alphonso/service/AlphonsoService;->mFSM:Ltv/alphonso/service/ASFSM;

    sget-object v1, Ltv/alphonso/service/ASInitInProgress;->TAG:Ljava/lang/String;

    const/16 v2, 0x18

    invoke-virtual {v0, v1, v2}, Ltv/alphonso/service/ASFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 215
    return-void
.end method

.method public onViewingInfoServiceCleanupDone(Ltv/alphonso/service/AlphonsoService;)V
    .locals 3
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;

    .prologue
    .line 208
    iget-object v0, p1, Ltv/alphonso/service/AlphonsoService;->mFSM:Ltv/alphonso/service/ASFSM;

    sget-object v1, Ltv/alphonso/service/ASInitInProgress;->TAG:Ljava/lang/String;

    const/16 v2, 0x17

    invoke-virtual {v0, v1, v2}, Ltv/alphonso/service/ASFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 209
    return-void
.end method
