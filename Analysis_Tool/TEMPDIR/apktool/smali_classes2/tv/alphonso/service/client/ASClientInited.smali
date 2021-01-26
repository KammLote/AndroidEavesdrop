.class public Ltv/alphonso/service/client/ASClientInited;
.super Ltv/alphonso/service/client/ASClientState;
.source "ASClientInited.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-class v0, Ltv/alphonso/service/client/ASClientInited;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ltv/alphonso/service/client/ASClientInited;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ltv/alphonso/service/client/ASClientState;-><init>()V

    return-void
.end method

.method private processInit(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "params"    # Landroid/os/Bundle;

    .prologue
    .line 172
    sget-object v1, Ltv/alphonso/service/client/AlphonsoServiceClient;->singletonObject:Ltv/alphonso/service/client/AlphonsoServiceClient;

    .line 174
    .local v1, "instance":Ltv/alphonso/service/client/AlphonsoServiceClient;
    iget-object v3, v1, Ltv/alphonso/service/client/AlphonsoServiceClient;->mAppId:Ljava/lang/String;

    const-string v4, "app_id"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 176
    iget-object v3, v1, Ltv/alphonso/service/client/AlphonsoServiceClient;->mFSM:Ltv/alphonso/service/client/ASClientFSM;

    sget-object v4, Ltv/alphonso/service/client/ASClientInited;->TAG:Ljava/lang/String;

    const/4 v5, 0x3

    invoke-virtual {v3, v4, v5}, Ltv/alphonso/service/client/ASClientFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 178
    const-string v3, "recevier"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/os/ResultReceiver;

    .line 179
    .local v2, "receiver":Landroid/os/ResultReceiver;
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 188
    .end local v2    # "receiver":Landroid/os/ResultReceiver;
    :goto_0
    return-void

    .line 183
    :cond_0
    const-string v3, "receiver"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/ResultReceiver;

    .line 184
    .local v0, "initReceiver":Landroid/os/ResultReceiver;
    invoke-static {v0}, Ltv/alphonso/service/client/AlphonsoServiceMediationClient;->isThisMyInitReceiver(Landroid/os/ResultReceiver;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 185
    const-string v3, "receiver"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/os/ResultReceiver;

    iput-object v3, v1, Ltv/alphonso/service/client/AlphonsoServiceClient;->mInitResultReceiver:Landroid/os/ResultReceiver;

    .line 186
    :cond_1
    invoke-static {}, Ltv/alphonso/service/client/ASClientUtils;->sendInitSuccessResponse()V

    goto :goto_0
.end method


# virtual methods
.method public getStateString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    sget-object v0, Ltv/alphonso/service/client/ASClientInited;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public onBindUser(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "params"    # Landroid/os/Bundle;

    .prologue
    .line 134
    invoke-static {p1}, Ltv/alphonso/service/client/ASClientUtils;->sendBindUserRequest(Landroid/os/Bundle;)V

    .line 135
    return-void
.end method

.method public onBindUserResponse(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "params"    # Landroid/os/Bundle;

    .prologue
    .line 140
    invoke-static {p1}, Ltv/alphonso/service/client/ASClientUtils;->processBindUserResponse(Landroid/os/Bundle;)V

    .line 141
    return-void
.end method

.method public onCancel()V
    .locals 4

    .prologue
    .line 63
    sget-object v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->singletonObject:Ltv/alphonso/service/client/AlphonsoServiceClient;

    .line 64
    .local v0, "instance":Ltv/alphonso/service/client/AlphonsoServiceClient;
    iget-object v1, v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mFSM:Ltv/alphonso/service/client/ASClientFSM;

    sget-object v2, Ltv/alphonso/service/client/ASClientInited;->TAG:Ljava/lang/String;

    const/4 v3, 0x7

    invoke-virtual {v1, v2, v3}, Ltv/alphonso/service/client/ASClientFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 65
    return-void
.end method

.method public onCleanup(Z)V
    .locals 1
    .param p1, "serverInitiated"    # Z

    .prologue
    .line 82
    sget-object v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->singletonObject:Ltv/alphonso/service/client/AlphonsoServiceClient;

    .line 84
    .local v0, "instance":Ltv/alphonso/service/client/AlphonsoServiceClient;
    invoke-static {}, Ltv/alphonso/service/client/ASClientUtils;->deRegisterResultsReceiver()V

    .line 86
    if-nez p1, :cond_0

    .line 87
    invoke-static {}, Ltv/alphonso/service/client/ASClientUtils;->sendCleanupAndUnBindFromAlphonsoService()V

    .line 89
    :cond_0
    invoke-virtual {v0}, Ltv/alphonso/service/client/AlphonsoServiceClient;->destroy()V

    .line 90
    return-void
.end method

.method public onClearHistory()V
    .locals 0

    .prologue
    .line 110
    invoke-static {}, Ltv/alphonso/service/client/ASClientUtils;->sendClearHistory()V

    .line 111
    return-void
.end method

.method public onClockSyncInfo(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "params"    # Landroid/os/Bundle;

    .prologue
    .line 205
    invoke-static {p1}, Ltv/alphonso/service/client/ASClientUtils;->processClockSyncInfo(Landroid/os/Bundle;)V

    .line 206
    return-void
.end method

.method public onClockSyncInfoDeRegister(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "params"    # Landroid/os/Bundle;

    .prologue
    .line 199
    invoke-static {p1}, Ltv/alphonso/service/client/ASClientUtils;->sendClockSyncInfoDeRegisterRequest(Landroid/os/Bundle;)V

    .line 200
    return-void
.end method

.method public onClockSyncInfoRegister(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "params"    # Landroid/os/Bundle;

    .prologue
    .line 193
    invoke-static {p1}, Ltv/alphonso/service/client/ASClientUtils;->sendClockSyncInfoRegisterRequest(Landroid/os/Bundle;)V

    .line 194
    return-void
.end method

.method public onDeRegisterResultsReceiver()V
    .locals 0

    .prologue
    .line 76
    invoke-static {}, Ltv/alphonso/service/client/ASClientUtils;->deRegisterResultsReceiver()V

    .line 77
    return-void
.end method

.method public onDisableAudioCaptureUpload()V
    .locals 0

    .prologue
    .line 122
    invoke-static {}, Ltv/alphonso/service/client/ASClientUtils;->sendAudioCaptureUploadDisable()V

    .line 123
    return-void
.end method

.method public onEnableAudioCaptureUpload()V
    .locals 0

    .prologue
    .line 116
    invoke-static {}, Ltv/alphonso/service/client/ASClientUtils;->sendAudioCaptureUploadEnable()V

    .line 117
    return-void
.end method

.method public onHistoryRequest(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "params"    # Landroid/os/Bundle;

    .prologue
    .line 95
    sget-object v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->singletonObject:Ltv/alphonso/service/client/AlphonsoServiceClient;

    .line 97
    .local v0, "instance":Ltv/alphonso/service/client/AlphonsoServiceClient;
    const-string v1, "receiver"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/ResultReceiver;

    iput-object v1, v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mHistoryReceiver:Landroid/os/ResultReceiver;

    .line 98
    const-string v1, "interval"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ltv/alphonso/service/client/ASClientUtils;->sendHistoryRequest(J)V

    .line 99
    return-void
.end method

.method public onHistoryResponse(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "params"    # Landroid/os/Bundle;

    .prologue
    .line 104
    invoke-static {p1}, Ltv/alphonso/service/client/ASClientUtils;->processHistoryResponse(Landroid/os/Bundle;)V

    .line 105
    return-void
.end method

.method public onInit(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "params"    # Landroid/os/Bundle;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Ltv/alphonso/service/client/ASClientInited;->processInit(Landroid/os/Bundle;)V

    .line 42
    return-void
.end method

.method public onInitResponse(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "params"    # Landroid/os/Bundle;

    .prologue
    .line 47
    sget-object v0, Ltv/alphonso/service/client/ASClientInited;->TAG:Ljava/lang/String;

    const-string v1, "AlphonsoServiceClient already in Inited state, ignoring INIT-RESPONSE event."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    return-void
.end method

.method public onMiscFlagsNotification(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "params"    # Landroid/os/Bundle;

    .prologue
    .line 211
    invoke-static {p1}, Ltv/alphonso/service/client/ASClientUtils;->processMiscFlagsNotification(Landroid/os/Bundle;)V

    .line 212
    return-void
.end method

.method public onMiscFlagsNotificationDeRegister(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "params"    # Landroid/os/Bundle;

    .prologue
    .line 223
    invoke-static {p1}, Ltv/alphonso/service/client/ASClientUtils;->sendMiscFlagsNotificationDeRegisterRequest(Landroid/os/Bundle;)V

    .line 224
    return-void
.end method

.method public onMiscFlagsNotificationRegister(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "params"    # Landroid/os/Bundle;

    .prologue
    .line 217
    invoke-static {p1}, Ltv/alphonso/service/client/ASClientUtils;->sendMiscFlagsNotificationRegisterRequest(Landroid/os/Bundle;)V

    .line 218
    return-void
.end method

.method public onNotification(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "params"    # Landroid/os/Bundle;

    .prologue
    .line 241
    invoke-static {p1}, Ltv/alphonso/service/client/ASClientUtils;->processNotification(Landroid/os/Bundle;)V

    .line 242
    return-void
.end method

.method public onNotificationsDeRegister(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "params"    # Landroid/os/Bundle;

    .prologue
    .line 235
    invoke-static {p1}, Ltv/alphonso/service/client/ASClientUtils;->sendNotificationsDeRegisterRequest(Landroid/os/Bundle;)V

    .line 236
    return-void
.end method

.method public onNotificationsRegister(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "params"    # Landroid/os/Bundle;

    .prologue
    .line 229
    invoke-static {p1}, Ltv/alphonso/service/client/ASClientUtils;->sendNotificationsRegisterRequest(Landroid/os/Bundle;)V

    .line 230
    return-void
.end method

.method public onPermissionAlertResponse(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "params"    # Landroid/os/Bundle;

    .prologue
    .line 153
    const-string v0, "permission_alert_response"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 155
    invoke-direct {p0, p1}, Ltv/alphonso/service/client/ASClientInited;->processInit(Landroid/os/Bundle;)V

    .line 162
    :cond_0
    :goto_0
    return-void

    .line 159
    :cond_1
    const-string v0, "receiver"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 160
    const-string v0, "receiver"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/ResultReceiver;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    goto :goto_0
.end method

.method public onProvServerParams(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "params"    # Landroid/os/Bundle;

    .prologue
    .line 167
    invoke-static {p1}, Ltv/alphonso/service/client/ASClientUtils;->sendProvServerParamsRequest(Landroid/os/Bundle;)V

    .line 168
    return-void
.end method

.method public onRegisterResultsReceiver(Landroid/os/ResultReceiver;)V
    .locals 0
    .param p1, "receiver"    # Landroid/os/ResultReceiver;

    .prologue
    .line 70
    invoke-static {p1}, Ltv/alphonso/service/client/ASClientUtils;->registerResultsReceiver(Landroid/os/ResultReceiver;)V

    .line 71
    return-void
.end method

.method public onResult(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "params"    # Landroid/os/Bundle;

    .prologue
    .line 146
    sget-object v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->singletonObject:Ltv/alphonso/service/client/AlphonsoServiceClient;

    .line 147
    .local v0, "instance":Ltv/alphonso/service/client/AlphonsoServiceClient;
    iget-object v1, v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mFSM:Ltv/alphonso/service/client/ASClientFSM;

    sget-object v2, Ltv/alphonso/service/client/ASClientInited;->TAG:Ljava/lang/String;

    const/16 v3, 0x11

    invoke-virtual {v1, v2, v3}, Ltv/alphonso/service/client/ASClientFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 148
    return-void
.end method

.method public onServiceConnectionDown()V
    .locals 3

    .prologue
    .line 22
    sget-object v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->singletonObject:Ltv/alphonso/service/client/AlphonsoServiceClient;

    .line 24
    .local v0, "instance":Ltv/alphonso/service/client/AlphonsoServiceClient;
    sget-object v1, Ltv/alphonso/service/client/ASClientInited;->TAG:Ljava/lang/String;

    const-string v2, "AlphonsoService disconnected...!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    const/4 v1, 0x0

    iput-object v1, v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mService:Landroid/os/Messenger;

    .line 27
    iget v1, v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mFlags:I

    sget v2, Ltv/alphonso/service/client/AlphonsoServiceClient;->CONNECTION_UP:I

    xor-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    iput v1, v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mFlags:I

    .line 30
    iget v1, v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mFlags:I

    sget v2, Ltv/alphonso/service/client/AlphonsoServiceClient;->QUEUED_INIT:I

    or-int/2addr v1, v2

    iput v1, v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mFlags:I

    .line 33
    invoke-static {}, Ltv/alphonso/service/client/ASClientUtils;->bindToAlphonsoService()V

    .line 35
    iget-object v1, v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mFSM:Ltv/alphonso/service/client/ASClientFSM;

    iget-object v1, v1, Ltv/alphonso/service/client/ASClientFSM;->mASClientInitInProgressState:Ltv/alphonso/service/client/ASClientInitInProgress;

    iput-object v1, v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mState:Ltv/alphonso/service/client/ASClientState;

    .line 36
    return-void
.end method

.method public onServiceConnectionUp()V
    .locals 4

    .prologue
    .line 15
    sget-object v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->singletonObject:Ltv/alphonso/service/client/AlphonsoServiceClient;

    .line 16
    .local v0, "instance":Ltv/alphonso/service/client/AlphonsoServiceClient;
    iget-object v1, v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mFSM:Ltv/alphonso/service/client/ASClientFSM;

    sget-object v2, Ltv/alphonso/service/client/ASClientInited;->TAG:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ltv/alphonso/service/client/ASClientFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 17
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 53
    sget-object v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->singletonObject:Ltv/alphonso/service/client/AlphonsoServiceClient;

    .line 55
    .local v0, "instance":Ltv/alphonso/service/client/AlphonsoServiceClient;
    invoke-static {}, Ltv/alphonso/service/client/ASClientUtils;->sendStart()V

    .line 57
    iget-object v1, v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mFSM:Ltv/alphonso/service/client/ASClientFSM;

    iget-object v1, v1, Ltv/alphonso/service/client/ASClientFSM;->mASClientStartedState:Ltv/alphonso/service/client/ASClientStarted;

    iput-object v1, v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mState:Ltv/alphonso/service/client/ASClientState;

    .line 58
    return-void
.end method
