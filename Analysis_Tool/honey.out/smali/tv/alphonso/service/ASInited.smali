.class public Ltv/alphonso/service/ASInited;
.super Ltv/alphonso/service/ASState;
.source "ASInited.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-class v0, Ltv/alphonso/service/ASInited;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ltv/alphonso/service/ASInited;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ltv/alphonso/service/ASState;-><init>()V

    return-void
.end method

.method private startAudioCaptureService(Ltv/alphonso/service/AlphonsoService;)V
    .locals 11
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;

    .prologue
    .line 75
    iget-object v9, p1, Ltv/alphonso/service/AlphonsoService;->mAudioCaptureService:Ltv/alphonso/audiocaptureservice/AudioCaptureService;

    if-eqz v9, :cond_1

    .line 77
    iget-object v9, p1, Ltv/alphonso/service/AlphonsoService;->mContext:Landroid/content/Context;

    invoke-static {v9}, Ltv/alphonso/utils/PreferencesManager;->getCaptureDurationMS(Landroid/content/Context;)J

    move-result-wide v2

    .line 78
    .local v2, "captureDuration":J
    iget-object v9, p1, Ltv/alphonso/service/AlphonsoService;->mContext:Landroid/content/Context;

    invoke-static {v9}, Ltv/alphonso/utils/PreferencesManager;->getCaptureCount(Landroid/content/Context;)I

    move-result v0

    .line 79
    .local v0, "captureCount":I
    iget-object v9, p1, Ltv/alphonso/service/AlphonsoService;->mContext:Landroid/content/Context;

    invoke-static {v9}, Ltv/alphonso/utils/PreferencesManager;->getCaptureSleepTime(Landroid/content/Context;)J

    move-result-wide v6

    .line 80
    .local v6, "captureSleepTime":J
    iget-object v9, p1, Ltv/alphonso/service/AlphonsoService;->mContext:Landroid/content/Context;

    invoke-static {v9}, Ltv/alphonso/utils/PreferencesManager;->getCapturePrepareTime(Landroid/content/Context;)J

    move-result-wide v4

    .line 82
    .local v4, "capturePrepareTime":J
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 84
    .local v8, "params":Landroid/os/Bundle;
    const-string v9, "capture_duration"

    invoke-virtual {v8, v9, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 85
    const-string v9, "capture_count"

    invoke-virtual {v8, v9, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 86
    const-string v9, "capture_sleep_interval"

    invoke-virtual {v8, v9, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 87
    const-string v9, "capture_prepare_interval"

    invoke-virtual {v8, v9, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 89
    iget-object v9, p1, Ltv/alphonso/service/AlphonsoService;->mAudioCaptureService:Ltv/alphonso/audiocaptureservice/AudioCaptureService;

    iget-object v9, v9, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v9}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 90
    .local v1, "msg":Landroid/os/Message;
    const/4 v9, 0x4

    iput v9, v1, Landroid/os/Message;->what:I

    .line 91
    invoke-virtual {v1, v8}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 93
    iget-boolean v9, p1, Ltv/alphonso/service/AlphonsoService;->mDebug:Z

    if-eqz v9, :cond_0

    .line 94
    sget-object v9, Ltv/alphonso/service/ASInited;->TAG:Ljava/lang/String;

    const-string v10, "Sending ACS_START message to AudioCaptureService."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :cond_0
    iget-object v9, p1, Ltv/alphonso/service/AlphonsoService;->mAudioCaptureService:Ltv/alphonso/audiocaptureservice/AudioCaptureService;

    iget-object v9, v9, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v9, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 97
    .end local v0    # "captureCount":I
    .end local v1    # "msg":Landroid/os/Message;
    .end local v2    # "captureDuration":J
    .end local v4    # "capturePrepareTime":J
    .end local v6    # "captureSleepTime":J
    .end local v8    # "params":Landroid/os/Bundle;
    :cond_1
    return-void
.end method


# virtual methods
.method public getStateString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    sget-object v0, Ltv/alphonso/service/ASInited;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public onACSScenariosCompleteNotification(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 261
    iget-object v0, p1, Ltv/alphonso/service/AlphonsoService;->mFSM:Ltv/alphonso/service/ASFSM;

    sget-object v1, Ltv/alphonso/service/ASInited;->TAG:Ljava/lang/String;

    const/16 v2, 0x25

    invoke-virtual {v0, v1, v2}, Ltv/alphonso/service/ASFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 262
    return-void
.end method

.method public onAdIdGeneration(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 267
    invoke-static {p1, p2}, Ltv/alphonso/service/AlphonsoServiceUtils;->processAdIdGeneration(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    invoke-virtual {p1}, Ltv/alphonso/service/AlphonsoService;->setupDeviceId()V

    .line 272
    invoke-static {p1}, Ltv/alphonso/service/AlphonsoServiceUtils;->configureServerParams(Ltv/alphonso/service/AlphonsoService;)V

    .line 274
    invoke-static {p1}, Ltv/alphonso/service/AlphonsoServiceUtils;->sendUpdateDeviceIdParamsToACS(Ltv/alphonso/service/AlphonsoService;)V

    .line 276
    :cond_0
    return-void
.end method

.method public onAdIdPollConfig(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 308
    invoke-static {p1, p2}, Ltv/alphonso/service/AlphonsoServiceUtils;->processAdIdPollConfig(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V

    .line 309
    return-void
.end method

.method public onAdIdPollTimerExpiry(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 302
    invoke-virtual {p1}, Ltv/alphonso/service/AlphonsoService;->getAdId()V

    .line 303
    return-void
.end method

.method public onAdvtDbUpdate(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 186
    invoke-static {p1, p2}, Ltv/alphonso/service/AlphonsoServiceUtils;->processAdvtDbUpdate(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V

    .line 187
    return-void
.end method

.method public onAlphonsoClientCleanupDone(Ltv/alphonso/service/AlphonsoService;)V
    .locals 3
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;

    .prologue
    .line 63
    iget-object v0, p1, Ltv/alphonso/service/AlphonsoService;->mFSM:Ltv/alphonso/service/ASFSM;

    sget-object v1, Ltv/alphonso/service/ASInited;->TAG:Ljava/lang/String;

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Ltv/alphonso/service/ASFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 64
    return-void
.end method

.method public onAudioCaptureServiceCleanupDone(Ltv/alphonso/service/AlphonsoService;)V
    .locals 3
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;

    .prologue
    .line 57
    iget-object v0, p1, Ltv/alphonso/service/AlphonsoService;->mFSM:Ltv/alphonso/service/ASFSM;

    sget-object v1, Ltv/alphonso/service/ASInited;->TAG:Ljava/lang/String;

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Ltv/alphonso/service/ASFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 58
    return-void
.end method

.method public onAudioCaptureServicePrimeTimeBegin(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 320
    invoke-static {p1, p2}, Ltv/alphonso/service/AlphonsoServiceUtils;->processACSPrimeTimeBegin(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V

    .line 321
    return-void
.end method

.method public onAudioCaptureServicePrimeTimeEnd(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 326
    invoke-static {p1, p2}, Ltv/alphonso/service/AlphonsoServiceUtils;->processACSPrimeTimeEnd(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V

    .line 327
    return-void
.end method

.method public onAudioCaptureServiceSleepTimerExpiry(Ltv/alphonso/service/AlphonsoService;)V
    .locals 3
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;

    .prologue
    .line 132
    iget-object v0, p1, Ltv/alphonso/service/AlphonsoService;->mFSM:Ltv/alphonso/service/ASFSM;

    sget-object v1, Ltv/alphonso/service/ASInited;->TAG:Ljava/lang/String;

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Ltv/alphonso/service/ASFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 133
    return-void
.end method

.method public onAudioFPUploadServiceCleanupDone(Ltv/alphonso/service/AlphonsoService;)V
    .locals 3
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;

    .prologue
    .line 69
    iget-object v0, p1, Ltv/alphonso/service/AlphonsoService;->mFSM:Ltv/alphonso/service/ASFSM;

    sget-object v1, Ltv/alphonso/service/ASInited;->TAG:Ljava/lang/String;

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Ltv/alphonso/service/ASFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 70
    return-void
.end method

.method public onBindUserRequest(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 161
    const-string v0, "app_id"

    .line 162
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 161
    invoke-static {p1, v0, p2}, Ltv/alphonso/service/AlphonsoServiceUtils;->processBindUserRequest(Ltv/alphonso/service/AlphonsoService;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 163
    return-void
.end method

.method public onBindUserResponse(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 168
    invoke-static {p1, p2}, Ltv/alphonso/service/AlphonsoServiceUtils;->processBindUserResponse(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V

    .line 169
    return-void
.end method

.method public onCancel(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 36
    iget-object v0, p1, Ltv/alphonso/service/AlphonsoService;->mFSM:Ltv/alphonso/service/ASFSM;

    sget-object v1, Ltv/alphonso/service/ASInited;->TAG:Ljava/lang/String;

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Ltv/alphonso/service/ASFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 37
    return-void
.end method

.method public onCleanup(Ltv/alphonso/service/AlphonsoService;)V
    .locals 1
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;

    .prologue
    .line 42
    invoke-static {p1}, Ltv/alphonso/service/AlphonsoServiceUtils;->processCleanup(Ltv/alphonso/service/AlphonsoService;)V

    .line 44
    iget-object v0, p1, Ltv/alphonso/service/AlphonsoService;->mFSM:Ltv/alphonso/service/ASFSM;

    iget-object v0, v0, Ltv/alphonso/service/ASFSM;->mASCleanupInProgressState:Ltv/alphonso/service/ASCleanupInProgress;

    iput-object v0, p1, Ltv/alphonso/service/AlphonsoService;->mCurrentState:Ltv/alphonso/service/ASState;

    .line 45
    return-void
.end method

.method public onClearHistory(Ltv/alphonso/service/AlphonsoService;)V
    .locals 0
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;

    .prologue
    .line 114
    invoke-static {p1}, Ltv/alphonso/service/AlphonsoServiceUtils;->clear_history(Ltv/alphonso/service/AlphonsoService;)V

    .line 115
    return-void
.end method

.method public onClockSyncConfig(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 205
    invoke-static {p1, p2}, Ltv/alphonso/service/AlphonsoServiceUtils;->processClockSyncConfig(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V

    .line 206
    return-void
.end method

.method public onClockSyncInfoDeRegister(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 217
    iget-object v0, p1, Ltv/alphonso/service/AlphonsoService;->mClients:Ljava/util/HashMap;

    const-string v1, "app_id"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/alphonso/service/ASClient;

    const/4 v1, 0x0

    iput-boolean v1, v0, Ltv/alphonso/service/ASClient;->clockSyncInfo:Z

    .line 218
    return-void
.end method

.method public onClockSyncInfoRegister(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 211
    invoke-static {p1, p2}, Ltv/alphonso/service/AlphonsoServiceUtils;->processClockSyncInfoRegister(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V

    .line 212
    return-void
.end method

.method public onClockSyncPollTimerExpiry(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 199
    invoke-static {p1, p2}, Ltv/alphonso/service/AlphonsoServiceUtils;->procescClockSyncPollTimerExpiry(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V

    .line 200
    return-void
.end method

.method public onClockSyncServerResponse(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 223
    invoke-static {p1, p2}, Ltv/alphonso/service/AlphonsoServiceUtils;->processClockSyncServerResponse(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V

    .line 224
    return-void
.end method

.method public onDestroy(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 281
    invoke-static {p1}, Ltv/alphonso/service/AlphonsoServiceUtils;->processCleanup(Ltv/alphonso/service/AlphonsoService;)V

    .line 283
    iget-object v0, p1, Ltv/alphonso/service/AlphonsoService;->mFSM:Ltv/alphonso/service/ASFSM;

    iget-object v0, v0, Ltv/alphonso/service/ASFSM;->mASCleanupInProgressState:Ltv/alphonso/service/ASCleanupInProgress;

    iput-object v0, p1, Ltv/alphonso/service/AlphonsoService;->mCurrentState:Ltv/alphonso/service/ASState;

    .line 284
    return-void
.end method

.method public onDisableAudioCaptureUpload(Ltv/alphonso/service/AlphonsoService;)V
    .locals 0
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;

    .prologue
    .line 108
    invoke-static {p1}, Ltv/alphonso/service/AlphonsoServiceUtils;->disableAudioCaptureUpload(Ltv/alphonso/service/AlphonsoService;)V

    .line 109
    return-void
.end method

.method public onEnableAudioCaptureUpload(Ltv/alphonso/service/AlphonsoService;)V
    .locals 0
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;

    .prologue
    .line 102
    invoke-static {p1}, Ltv/alphonso/service/AlphonsoServiceUtils;->enableAudioCaptureUpload(Ltv/alphonso/service/AlphonsoService;)V

    .line 103
    return-void
.end method

.method public onHistoryRequest(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 144
    const-string v0, "app_id"

    .line 146
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "interval"

    .line 148
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 144
    invoke-static {p1, v0, v1, v2, v3}, Ltv/alphonso/service/AlphonsoServiceUtils;->sendHistoryResponse(Ltv/alphonso/service/AlphonsoService;Ljava/lang/String;BJ)V

    .line 149
    return-void
.end method

.method public onInit(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 15
    sget-object v0, Ltv/alphonso/service/ASInited;->TAG:Ljava/lang/String;

    const-string v1, "AlphonsoService is already initialized!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    const/4 v0, 0x0

    invoke-static {p1, v0}, Ltv/alphonso/service/AlphonsoServiceUtils;->sendInitResponse(Ltv/alphonso/service/AlphonsoService;B)V

    .line 18
    return-void
.end method

.method public onLocationConfig(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 296
    iget-object v0, p1, Ltv/alphonso/service/AlphonsoService;->mLocationService:Ltv/alphonso/service/LocationService;

    const-string v1, "location_poll_interval"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ltv/alphonso/service/LocationService;->setLocationPollInterval(J)V

    .line 297
    return-void
.end method

.method public onLocationPeriodicTimerExpiry(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 290
    iget-object v0, p1, Ltv/alphonso/service/AlphonsoService;->mLocationService:Ltv/alphonso/service/LocationService;

    invoke-virtual {v0}, Ltv/alphonso/service/LocationService;->processLocationPeriodicTimerExpiry()V

    .line 291
    return-void
.end method

.method public onMiscFlagsNotification(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 241
    invoke-static {p1, p2}, Ltv/alphonso/service/AlphonsoServiceUtils;->processMiscFlagsNotification(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V

    .line 242
    return-void
.end method

.method public onMiscFlagsNotificationDeRegister(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 235
    iget-object v0, p1, Ltv/alphonso/service/AlphonsoService;->mClients:Ljava/util/HashMap;

    const-string v1, "app_id"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/alphonso/service/ASClient;

    const/4 v1, 0x0

    iput-boolean v1, v0, Ltv/alphonso/service/ASClient;->miscFlagsNotification:Z

    .line 236
    return-void
.end method

.method public onMiscFlagsNotificationRegister(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 229
    invoke-static {p1, p2}, Ltv/alphonso/service/AlphonsoServiceUtils;->processMiscFlagsNotificationRegister(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V

    .line 230
    return-void
.end method

.method public onNotificationsDeRegister(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 255
    invoke-static {p1, p2}, Ltv/alphonso/service/AlphonsoServiceUtils;->processNotificationsDeRegister(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V

    .line 256
    return-void
.end method

.method public onNotificationsRegister(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 248
    invoke-static {p1, p2}, Ltv/alphonso/service/AlphonsoServiceUtils;->processNotificationsRegister(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V

    .line 249
    return-void
.end method

.method public onPrimeTimeConfig(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 332
    invoke-static {p1, p2}, Ltv/alphonso/service/AlphonsoServiceUtils;->processPrimeTimeConfig(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V

    .line 333
    return-void
.end method

.method public onProvClientConfigRequestLeaseTimerExpiry(Ltv/alphonso/service/AlphonsoService;)V
    .locals 0
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;

    .prologue
    .line 120
    invoke-static {p1}, Ltv/alphonso/service/AlphonsoServiceUtils;->processProvClientConfigRequestLeaseTimerExpiry(Ltv/alphonso/service/AlphonsoService;)V

    .line 121
    return-void
.end method

.method public onProvClientConfigRequestRetryTimerExpiry(Ltv/alphonso/service/AlphonsoService;)V
    .locals 0
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;

    .prologue
    .line 126
    invoke-static {p1}, Ltv/alphonso/service/AlphonsoServiceUtils;->processProvClientConfigRequestRetryTimerExpiry(Ltv/alphonso/service/AlphonsoService;)V

    .line 127
    return-void
.end method

.method public onProvServerConfigResponse(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 314
    invoke-static {p1, p2}, Ltv/alphonso/service/AlphonsoServiceUtils;->processProvServerConfigResponse(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V

    .line 315
    return-void
.end method

.method public onProvServerParams(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 192
    invoke-static {p1, p2}, Ltv/alphonso/service/AlphonsoServiceUtils;->processProvServerParams(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V

    .line 193
    return-void
.end method

.method public onRegistrationResponse(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;
    .param p2, "resultData"    # Landroid/os/Bundle;

    .prologue
    .line 51
    iget-object v0, p1, Ltv/alphonso/service/AlphonsoService;->mFSM:Ltv/alphonso/service/ASFSM;

    sget-object v1, Ltv/alphonso/service/ASInited;->TAG:Ljava/lang/String;

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Ltv/alphonso/service/ASFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 52
    return-void
.end method

.method public onStart(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 23
    iget v0, p1, Ltv/alphonso/service/AlphonsoService;->mNumStarts:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Ltv/alphonso/service/AlphonsoService;->mNumStarts:I

    .line 24
    iget-object v0, p1, Ltv/alphonso/service/AlphonsoService;->mClients:Ljava/util/HashMap;

    const-string v1, "app_id"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/alphonso/service/ASClient;

    const/4 v1, 0x1

    iput-boolean v1, v0, Ltv/alphonso/service/ASClient;->started:Z

    .line 26
    invoke-direct {p0, p1}, Ltv/alphonso/service/ASInited;->startAudioCaptureService(Ltv/alphonso/service/AlphonsoService;)V

    .line 28
    iget-object v0, p1, Ltv/alphonso/service/AlphonsoService;->mLocationService:Ltv/alphonso/service/LocationService;

    invoke-virtual {v0}, Ltv/alphonso/service/LocationService;->startPeriodicTimer()V

    .line 30
    iget-object v0, p1, Ltv/alphonso/service/AlphonsoService;->mFSM:Ltv/alphonso/service/ASFSM;

    iget-object v0, v0, Ltv/alphonso/service/ASFSM;->mASStartedState:Ltv/alphonso/service/ASStarted;

    iput-object v0, p1, Ltv/alphonso/service/AlphonsoService;->mCurrentState:Ltv/alphonso/service/ASState;

    .line 31
    return-void
.end method

.method public onUpdateDebugFlagRequest(Ltv/alphonso/service/AlphonsoService;Z)V
    .locals 0
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;
    .param p2, "flag"    # Z

    .prologue
    .line 155
    invoke-static {p1, p2}, Ltv/alphonso/service/AlphonsoServiceUtils;->updateDebugFlagRequest(Ltv/alphonso/service/AlphonsoService;Z)V

    .line 156
    return-void
.end method

.method public onViewingInfoEvent(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 180
    invoke-static {p1, p2}, Ltv/alphonso/service/AlphonsoServiceUtils;->processViewingInfoEvent(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V

    .line 181
    return-void
.end method

.method public onViewingInfoServiceCleanupDone(Ltv/alphonso/service/AlphonsoService;)V
    .locals 3
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;

    .prologue
    .line 174
    iget-object v0, p1, Ltv/alphonso/service/AlphonsoService;->mFSM:Ltv/alphonso/service/ASFSM;

    sget-object v1, Ltv/alphonso/service/ASInited;->TAG:Ljava/lang/String;

    const/16 v2, 0x17

    invoke-virtual {v0, v1, v2}, Ltv/alphonso/service/ASFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 175
    return-void
.end method
