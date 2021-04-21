.class public Ltv/alphonso/service/ASStarted;
.super Ltv/alphonso/service/ASState;
.source "ASStarted.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Ltv/alphonso/service/ASStarted;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ltv/alphonso/service/ASStarted;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ltv/alphonso/service/ASState;-><init>()V

    return-void
.end method

.method private cancelAudioCaptureService(Ltv/alphonso/service/AlphonsoService;)V
    .locals 3
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;

    .prologue
    .line 85
    iget-object v1, p1, Ltv/alphonso/service/AlphonsoService;->mAudioCaptureService:Ltv/alphonso/audiocaptureservice/AudioCaptureService;

    if-eqz v1, :cond_1

    .line 88
    iget-object v1, p1, Ltv/alphonso/service/AlphonsoService;->mAudioCaptureService:Ltv/alphonso/audiocaptureservice/AudioCaptureService;

    iget-object v1, v1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 89
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x5

    iput v1, v0, Landroid/os/Message;->what:I

    .line 91
    iget-boolean v1, p1, Ltv/alphonso/service/AlphonsoService;->mDebug:Z

    if-eqz v1, :cond_0

    .line 92
    sget-object v1, Ltv/alphonso/service/ASStarted;->TAG:Ljava/lang/String;

    const-string v2, "Sending ACS_STOP message to AudioCaptureService."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :cond_0
    iget-object v1, p1, Ltv/alphonso/service/AlphonsoService;->mAudioCaptureService:Ltv/alphonso/audiocaptureservice/AudioCaptureService;

    iget-object v1, v1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 95
    .end local v0    # "msg":Landroid/os/Message;
    :cond_1
    return-void
.end method


# virtual methods
.method public getStateString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    sget-object v0, Ltv/alphonso/service/ASStarted;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public onACSScenariosCompleteNotification(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V
    .locals 10
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 261
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 262
    .local v3, "params":Landroid/os/Bundle;
    const-string v4, "notification_type"

    sget-wide v6, Ltv/alphonso/service/ASClient;->ACS_SCENARIOS_COMPLETE_NOTIFICATION:J

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 264
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 265
    .local v2, "msg":Landroid/os/Message;
    const/16 v4, 0x1d

    iput v4, v2, Landroid/os/Message;->what:I

    .line 266
    invoke-virtual {v2, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 268
    iget-object v4, p1, Ltv/alphonso/service/AlphonsoService;->mClients:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 270
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ltv/alphonso/service/ASClient;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ltv/alphonso/service/ASClient;

    iget-wide v6, v4, Ltv/alphonso/service/ASClient;->notificationsFlags:J

    sget-wide v8, Ltv/alphonso/service/ASClient;->ACS_SCENARIOS_COMPLETE_NOTIFICATION:J

    and-long/2addr v6, v8

    sget-wide v8, Ltv/alphonso/service/ASClient;->ACS_SCENARIOS_COMPLETE_NOTIFICATION:J

    cmp-long v4, v6, v8

    if-nez v4, :cond_0

    .line 273
    iget-boolean v4, p1, Ltv/alphonso/service/AlphonsoService;->mDebug:Z

    if-eqz v4, :cond_1

    .line 274
    sget-object v6, Ltv/alphonso/service/ASStarted;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Sending ACS_SCENARIOS_COMPLETE_NOTIFICATION to client "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    :cond_1
    :try_start_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ltv/alphonso/service/ASClient;

    iget-object v4, v4, Ltv/alphonso/service/ASClient;->messenger:Landroid/os/Messenger;

    invoke-virtual {v4, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 278
    :catch_0
    move-exception v0

    .line 280
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v4, Ltv/alphonso/service/ASStarted;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "RemoteException "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 284
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ltv/alphonso/service/ASClient;>;"
    :cond_2
    return-void
.end method

.method public onAdIdGeneration(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 289
    invoke-static {p1, p2}, Ltv/alphonso/service/AlphonsoServiceUtils;->processAdIdGeneration(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 292
    invoke-virtual {p1}, Ltv/alphonso/service/AlphonsoService;->setupDeviceId()V

    .line 294
    invoke-static {p1}, Ltv/alphonso/service/AlphonsoServiceUtils;->configureServerParams(Ltv/alphonso/service/AlphonsoService;)V

    .line 296
    invoke-static {p1}, Ltv/alphonso/service/AlphonsoServiceUtils;->sendUpdateDeviceIdParamsToACS(Ltv/alphonso/service/AlphonsoService;)V

    .line 298
    :cond_0
    return-void
.end method

.method public onAdIdPollConfig(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 334
    invoke-static {p1, p2}, Ltv/alphonso/service/AlphonsoServiceUtils;->processAdIdPollConfig(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V

    .line 335
    return-void
.end method

.method public onAdIdPollTimerExpiry(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 328
    invoke-virtual {p1}, Ltv/alphonso/service/AlphonsoService;->getAdId()V

    .line 329
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
    .line 73
    iget-object v0, p1, Ltv/alphonso/service/AlphonsoService;->mFSM:Ltv/alphonso/service/ASFSM;

    sget-object v1, Ltv/alphonso/service/ASStarted;->TAG:Ljava/lang/String;

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Ltv/alphonso/service/ASFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 74
    return-void
.end method

.method public onAudioCaptureServiceCleanupDone(Ltv/alphonso/service/AlphonsoService;)V
    .locals 3
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;

    .prologue
    .line 67
    iget-object v0, p1, Ltv/alphonso/service/AlphonsoService;->mFSM:Ltv/alphonso/service/ASFSM;

    sget-object v1, Ltv/alphonso/service/ASStarted;->TAG:Ljava/lang/String;

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Ltv/alphonso/service/ASFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 68
    return-void
.end method

.method public onAudioCaptureServicePrimeTimeBegin(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 346
    invoke-static {p1, p2}, Ltv/alphonso/service/AlphonsoServiceUtils;->processACSPrimeTimeBegin(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V

    .line 347
    return-void
.end method

.method public onAudioCaptureServicePrimeTimeEnd(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 352
    invoke-static {p1, p2}, Ltv/alphonso/service/AlphonsoServiceUtils;->processACSPrimeTimeEnd(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V

    .line 353
    return-void
.end method

.method public onAudioCaptureServiceSleepTimerExpiry(Ltv/alphonso/service/AlphonsoService;)V
    .locals 0
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;

    .prologue
    .line 132
    invoke-static {p1}, Ltv/alphonso/service/AlphonsoServiceUtils;->processAudioCaptureServiceSleepTimerExpiry(Ltv/alphonso/service/AlphonsoService;)V

    .line 133
    return-void
.end method

.method public onAudioFPUploadServiceCleanupDone(Ltv/alphonso/service/AlphonsoService;)V
    .locals 3
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;

    .prologue
    .line 79
    iget-object v0, p1, Ltv/alphonso/service/AlphonsoService;->mFSM:Ltv/alphonso/service/ASFSM;

    sget-object v1, Ltv/alphonso/service/ASStarted;->TAG:Ljava/lang/String;

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Ltv/alphonso/service/ASFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 80
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
    .line 33
    iget v0, p1, Ltv/alphonso/service/AlphonsoService;->mNumStarts:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Ltv/alphonso/service/AlphonsoService;->mNumStarts:I

    .line 34
    iget-object v0, p1, Ltv/alphonso/service/AlphonsoService;->mClients:Ljava/util/HashMap;

    const-string v1, "app_id"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/alphonso/service/ASClient;

    const/4 v1, 0x0

    iput-boolean v1, v0, Ltv/alphonso/service/ASClient;->started:Z

    .line 36
    iget-boolean v0, p1, Ltv/alphonso/service/AlphonsoService;->mDebug:Z

    if-eqz v0, :cond_0

    .line 37
    sget-object v0, Ltv/alphonso/service/ASStarted;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p1, Ltv/alphonso/service/AlphonsoService;->mNumStarts:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " clients in started state."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    :cond_0
    iget v0, p1, Ltv/alphonso/service/AlphonsoService;->mNumStarts:I

    if-nez v0, :cond_1

    .line 41
    invoke-direct {p0, p1}, Ltv/alphonso/service/ASStarted;->cancelAudioCaptureService(Ltv/alphonso/service/AlphonsoService;)V

    .line 43
    iget-object v0, p1, Ltv/alphonso/service/AlphonsoService;->mLocationService:Ltv/alphonso/service/LocationService;

    invoke-virtual {v0}, Ltv/alphonso/service/LocationService;->stopPeriodicTimer()V

    .line 45
    iget-object v0, p1, Ltv/alphonso/service/AlphonsoService;->mFSM:Ltv/alphonso/service/ASFSM;

    iget-object v0, v0, Ltv/alphonso/service/ASFSM;->mASInitedState:Ltv/alphonso/service/ASInited;

    iput-object v0, p1, Ltv/alphonso/service/AlphonsoService;->mCurrentState:Ltv/alphonso/service/ASState;

    .line 47
    :cond_1
    return-void
.end method

.method public onCleanup(Ltv/alphonso/service/AlphonsoService;)V
    .locals 1
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;

    .prologue
    .line 52
    invoke-static {p1}, Ltv/alphonso/service/AlphonsoServiceUtils;->processCleanup(Ltv/alphonso/service/AlphonsoService;)V

    .line 54
    iget-object v0, p1, Ltv/alphonso/service/AlphonsoService;->mFSM:Ltv/alphonso/service/ASFSM;

    iget-object v0, v0, Ltv/alphonso/service/ASFSM;->mASCleanupInProgressState:Ltv/alphonso/service/ASCleanupInProgress;

    iput-object v0, p1, Ltv/alphonso/service/AlphonsoService;->mCurrentState:Ltv/alphonso/service/ASState;

    .line 55
    return-void
.end method

.method public onClearHistory(Ltv/alphonso/service/AlphonsoService;)V
    .locals 0
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;

    .prologue
    .line 112
    invoke-static {p1}, Ltv/alphonso/service/AlphonsoServiceUtils;->clear_history(Ltv/alphonso/service/AlphonsoService;)V

    .line 113
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
    .line 303
    invoke-static {p1}, Ltv/alphonso/service/AlphonsoServiceUtils;->processCleanup(Ltv/alphonso/service/AlphonsoService;)V

    .line 305
    iget-object v0, p1, Ltv/alphonso/service/AlphonsoService;->mFSM:Ltv/alphonso/service/ASFSM;

    iget-object v0, v0, Ltv/alphonso/service/ASFSM;->mASCleanupInProgressState:Ltv/alphonso/service/ASCleanupInProgress;

    iput-object v0, p1, Ltv/alphonso/service/AlphonsoService;->mCurrentState:Ltv/alphonso/service/ASState;

    .line 306
    return-void
.end method

.method public onDisableAudioCaptureUpload(Ltv/alphonso/service/AlphonsoService;)V
    .locals 3
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;

    .prologue
    .line 106
    iget-object v0, p1, Ltv/alphonso/service/AlphonsoService;->mFSM:Ltv/alphonso/service/ASFSM;

    sget-object v1, Ltv/alphonso/service/ASStarted;->TAG:Ljava/lang/String;

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2}, Ltv/alphonso/service/ASFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 107
    return-void
.end method

.method public onEnableAudioCaptureUpload(Ltv/alphonso/service/AlphonsoService;)V
    .locals 3
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;

    .prologue
    .line 100
    iget-object v0, p1, Ltv/alphonso/service/AlphonsoService;->mFSM:Ltv/alphonso/service/ASFSM;

    sget-object v1, Ltv/alphonso/service/ASStarted;->TAG:Ljava/lang/String;

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Ltv/alphonso/service/ASFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 101
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
    .line 18
    sget-object v0, Ltv/alphonso/service/ASStarted;->TAG:Ljava/lang/String;

    const-string v1, "AlphonsoService is already in initialized!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    const/4 v0, 0x0

    invoke-static {p1, v0}, Ltv/alphonso/service/AlphonsoServiceUtils;->sendInitResponse(Ltv/alphonso/service/AlphonsoService;B)V

    .line 21
    return-void
.end method

.method public onLocationConfig(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 318
    iget-object v0, p1, Ltv/alphonso/service/AlphonsoService;->mLocationService:Ltv/alphonso/service/LocationService;

    const-string v1, "location_poll_interval"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ltv/alphonso/service/LocationService;->setLocationPollInterval(J)V

    .line 320
    iget-object v0, p1, Ltv/alphonso/service/AlphonsoService;->mLocationService:Ltv/alphonso/service/LocationService;

    invoke-virtual {v0}, Ltv/alphonso/service/LocationService;->stopPeriodicTimer()V

    .line 322
    iget-object v0, p1, Ltv/alphonso/service/AlphonsoService;->mLocationService:Ltv/alphonso/service/LocationService;

    invoke-virtual {v0}, Ltv/alphonso/service/LocationService;->startPeriodicTimer()V

    .line 323
    return-void
.end method

.method public onLocationPeriodicTimerExpiry(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 312
    iget-object v0, p1, Ltv/alphonso/service/AlphonsoService;->mLocationService:Ltv/alphonso/service/LocationService;

    invoke-virtual {v0}, Ltv/alphonso/service/LocationService;->processLocationPeriodicTimerExpiry()V

    .line 313
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
    .line 358
    invoke-static {p1, p2}, Ltv/alphonso/service/AlphonsoServiceUtils;->processPrimeTimeConfig(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V

    .line 359
    return-void
.end method

.method public onProvClientConfigRequestLeaseTimerExpiry(Ltv/alphonso/service/AlphonsoService;)V
    .locals 0
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;

    .prologue
    .line 119
    invoke-static {p1}, Ltv/alphonso/service/AlphonsoServiceUtils;->processProvClientConfigRequestLeaseTimerExpiry(Ltv/alphonso/service/AlphonsoService;)V

    .line 120
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
    .line 340
    invoke-static {p1, p2}, Ltv/alphonso/service/AlphonsoServiceUtils;->processProvServerConfigResponse(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V

    .line 341
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
    .line 61
    iget-object v0, p1, Ltv/alphonso/service/AlphonsoService;->mFSM:Ltv/alphonso/service/ASFSM;

    sget-object v1, Ltv/alphonso/service/ASStarted;->TAG:Ljava/lang/String;

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Ltv/alphonso/service/ASFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 62
    return-void
.end method

.method public onStart(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 26
    iget v0, p1, Ltv/alphonso/service/AlphonsoService;->mNumStarts:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Ltv/alphonso/service/AlphonsoService;->mNumStarts:I

    .line 27
    iget-object v0, p1, Ltv/alphonso/service/AlphonsoService;->mClients:Ljava/util/HashMap;

    const-string v1, "app_id"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/alphonso/service/ASClient;

    const/4 v1, 0x1

    iput-boolean v1, v0, Ltv/alphonso/service/ASClient;->started:Z

    .line 28
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

    sget-object v1, Ltv/alphonso/service/ASStarted;->TAG:Ljava/lang/String;

    const/16 v2, 0x17

    invoke-virtual {v0, v1, v2}, Ltv/alphonso/service/ASFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 175
    return-void
.end method
