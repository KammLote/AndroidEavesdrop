.class public Ltv/alphonso/service/client/ASClientStarted;
.super Ltv/alphonso/service/client/ASClientState;
.source "ASClientStarted.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-class v0, Ltv/alphonso/service/client/ASClientStarted;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ltv/alphonso/service/client/ASClientStarted;->TAG:Ljava/lang/String;

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
    .line 240
    sget-object v1, Ltv/alphonso/service/client/AlphonsoServiceClient;->singletonObject:Ltv/alphonso/service/client/AlphonsoServiceClient;

    .line 242
    .local v1, "instance":Ltv/alphonso/service/client/AlphonsoServiceClient;
    iget-object v3, v1, Ltv/alphonso/service/client/AlphonsoServiceClient;->mAppId:Ljava/lang/String;

    const-string v4, "app_id"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 244
    iget-object v3, v1, Ltv/alphonso/service/client/AlphonsoServiceClient;->mFSM:Ltv/alphonso/service/client/ASClientFSM;

    sget-object v4, Ltv/alphonso/service/client/ASClientStarted;->TAG:Ljava/lang/String;

    const/4 v5, 0x3

    invoke-virtual {v3, v4, v5}, Ltv/alphonso/service/client/ASClientFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 246
    const-string v3, "recevier"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/os/ResultReceiver;

    .line 247
    .local v2, "receiver":Landroid/os/ResultReceiver;
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 256
    .end local v2    # "receiver":Landroid/os/ResultReceiver;
    :goto_0
    return-void

    .line 251
    :cond_0
    const-string v3, "receiver"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/ResultReceiver;

    .line 252
    .local v0, "initReceiver":Landroid/os/ResultReceiver;
    invoke-static {v0}, Ltv/alphonso/service/client/AlphonsoServiceMediationClient;->isThisMyInitReceiver(Landroid/os/ResultReceiver;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 253
    const-string v3, "receiver"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/os/ResultReceiver;

    iput-object v3, v1, Ltv/alphonso/service/client/AlphonsoServiceClient;->mInitResultReceiver:Landroid/os/ResultReceiver;

    .line 254
    :cond_1
    invoke-static {}, Ltv/alphonso/service/client/ASClientUtils;->sendInitSuccessResponse()V

    goto :goto_0
.end method


# virtual methods
.method public getStateString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    sget-object v0, Ltv/alphonso/service/client/ASClientStarted;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public onBindUser(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "params"    # Landroid/os/Bundle;

    .prologue
    .line 136
    invoke-static {p1}, Ltv/alphonso/service/client/ASClientUtils;->sendBindUserRequest(Landroid/os/Bundle;)V

    .line 137
    return-void
.end method

.method public onBindUserResponse(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "params"    # Landroid/os/Bundle;

    .prologue
    .line 142
    invoke-static {p1}, Ltv/alphonso/service/client/ASClientUtils;->processBindUserResponse(Landroid/os/Bundle;)V

    .line 143
    return-void
.end method

.method public onCancel()V
    .locals 2

    .prologue
    .line 59
    sget-object v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->singletonObject:Ltv/alphonso/service/client/AlphonsoServiceClient;

    .line 61
    .local v0, "instance":Ltv/alphonso/service/client/AlphonsoServiceClient;
    invoke-static {}, Ltv/alphonso/service/client/ASClientUtils;->sendCancel()V

    .line 63
    iget-object v1, v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mFSM:Ltv/alphonso/service/client/ASClientFSM;

    iget-object v1, v1, Ltv/alphonso/service/client/ASClientFSM;->mASClientInitedState:Ltv/alphonso/service/client/ASClientInited;

    iput-object v1, v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mState:Ltv/alphonso/service/client/ASClientState;

    .line 64
    return-void
.end method

.method public onCleanup(Z)V
    .locals 1
    .param p1, "serverInitiated"    # Z

    .prologue
    .line 81
    sget-object v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->singletonObject:Ltv/alphonso/service/client/AlphonsoServiceClient;

    .line 83
    .local v0, "instance":Ltv/alphonso/service/client/AlphonsoServiceClient;
    invoke-static {}, Ltv/alphonso/service/client/ASClientUtils;->deRegisterResultsReceiver()V

    .line 85
    if-nez p1, :cond_0

    .line 86
    invoke-static {}, Ltv/alphonso/service/client/ASClientUtils;->sendCancel()V

    .line 88
    :cond_0
    if-nez p1, :cond_1

    .line 89
    invoke-static {}, Ltv/alphonso/service/client/ASClientUtils;->sendCleanupAndUnBindFromAlphonsoService()V

    .line 91
    :cond_1
    invoke-virtual {v0}, Ltv/alphonso/service/client/AlphonsoServiceClient;->destroy()V

    .line 92
    return-void
.end method

.method public onClearHistory()V
    .locals 0

    .prologue
    .line 112
    invoke-static {}, Ltv/alphonso/service/client/ASClientUtils;->sendClearHistory()V

    .line 113
    return-void
.end method

.method public onClockSyncInfo(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "params"    # Landroid/os/Bundle;

    .prologue
    .line 273
    invoke-static {p1}, Ltv/alphonso/service/client/ASClientUtils;->processClockSyncInfo(Landroid/os/Bundle;)V

    .line 274
    return-void
.end method

.method public onClockSyncInfoDeRegister(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "params"    # Landroid/os/Bundle;

    .prologue
    .line 267
    invoke-static {p1}, Ltv/alphonso/service/client/ASClientUtils;->sendClockSyncInfoDeRegisterRequest(Landroid/os/Bundle;)V

    .line 268
    return-void
.end method

.method public onClockSyncInfoRegister(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "params"    # Landroid/os/Bundle;

    .prologue
    .line 261
    invoke-static {p1}, Ltv/alphonso/service/client/ASClientUtils;->sendClockSyncInfoRegisterRequest(Landroid/os/Bundle;)V

    .line 262
    return-void
.end method

.method public onDeRegisterResultsReceiver()V
    .locals 0

    .prologue
    .line 75
    invoke-static {}, Ltv/alphonso/service/client/ASClientUtils;->deRegisterResultsReceiver()V

    .line 76
    return-void
.end method

.method public onDisableAudioCaptureUpload()V
    .locals 0

    .prologue
    .line 124
    invoke-static {}, Ltv/alphonso/service/client/ASClientUtils;->sendAudioCaptureUploadDisable()V

    .line 125
    return-void
.end method

.method public onEnableAudioCaptureUpload()V
    .locals 0

    .prologue
    .line 118
    invoke-static {}, Ltv/alphonso/service/client/ASClientUtils;->sendAudioCaptureUploadEnable()V

    .line 119
    return-void
.end method

.method public onHistoryRequest(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "params"    # Landroid/os/Bundle;

    .prologue
    .line 97
    sget-object v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->singletonObject:Ltv/alphonso/service/client/AlphonsoServiceClient;

    .line 99
    .local v0, "instance":Ltv/alphonso/service/client/AlphonsoServiceClient;
    const-string v1, "receiver"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/ResultReceiver;

    iput-object v1, v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mHistoryReceiver:Landroid/os/ResultReceiver;

    .line 100
    const-string v1, "interval"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ltv/alphonso/service/client/ASClientUtils;->sendHistoryRequest(J)V

    .line 101
    return-void
.end method

.method public onHistoryResponse(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "params"    # Landroid/os/Bundle;

    .prologue
    .line 106
    invoke-static {p1}, Ltv/alphonso/service/client/ASClientUtils;->processHistoryResponse(Landroid/os/Bundle;)V

    .line 107
    return-void
.end method

.method public onInit(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "params"    # Landroid/os/Bundle;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Ltv/alphonso/service/client/ASClientStarted;->processInit(Landroid/os/Bundle;)V

    .line 42
    return-void
.end method

.method public onInitResponse(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "params"    # Landroid/os/Bundle;

    .prologue
    .line 47
    sget-object v0, Ltv/alphonso/service/client/ASClientStarted;->TAG:Ljava/lang/String;

    const-string v1, "AlphonsoServiceClient already in Started state, ignoring INIT-RESPONSE event."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    return-void
.end method

.method public onMiscFlagsNotification(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "params"    # Landroid/os/Bundle;

    .prologue
    .line 279
    invoke-static {p1}, Ltv/alphonso/service/client/ASClientUtils;->processMiscFlagsNotification(Landroid/os/Bundle;)V

    .line 280
    return-void
.end method

.method public onMiscFlagsNotificationDeRegister(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "params"    # Landroid/os/Bundle;

    .prologue
    .line 291
    invoke-static {p1}, Ltv/alphonso/service/client/ASClientUtils;->sendMiscFlagsNotificationDeRegisterRequest(Landroid/os/Bundle;)V

    .line 292
    return-void
.end method

.method public onMiscFlagsNotificationRegister(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "params"    # Landroid/os/Bundle;

    .prologue
    .line 285
    invoke-static {p1}, Ltv/alphonso/service/client/ASClientUtils;->sendMiscFlagsNotificationRegisterRequest(Landroid/os/Bundle;)V

    .line 286
    return-void
.end method

.method public onNotification(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "params"    # Landroid/os/Bundle;

    .prologue
    .line 309
    invoke-static {p1}, Ltv/alphonso/service/client/ASClientUtils;->processNotification(Landroid/os/Bundle;)V

    .line 310
    return-void
.end method

.method public onNotificationsDeRegister(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "params"    # Landroid/os/Bundle;

    .prologue
    .line 303
    invoke-static {p1}, Ltv/alphonso/service/client/ASClientUtils;->sendNotificationsDeRegisterRequest(Landroid/os/Bundle;)V

    .line 304
    return-void
.end method

.method public onNotificationsRegister(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "params"    # Landroid/os/Bundle;

    .prologue
    .line 297
    invoke-static {p1}, Ltv/alphonso/service/client/ASClientUtils;->sendNotificationsRegisterRequest(Landroid/os/Bundle;)V

    .line 298
    return-void
.end method

.method public onPermissionAlertResponse(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "params"    # Landroid/os/Bundle;

    .prologue
    .line 221
    const-string v0, "permission_alert_response"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 223
    invoke-direct {p0, p1}, Ltv/alphonso/service/client/ASClientStarted;->processInit(Landroid/os/Bundle;)V

    .line 230
    :cond_0
    :goto_0
    return-void

    .line 227
    :cond_1
    const-string v0, "receiver"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 228
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
    .line 235
    invoke-static {p1}, Ltv/alphonso/service/client/ASClientUtils;->sendProvServerParamsRequest(Landroid/os/Bundle;)V

    .line 236
    return-void
.end method

.method public onRegisterResultsReceiver(Landroid/os/ResultReceiver;)V
    .locals 0
    .param p1, "receiver"    # Landroid/os/ResultReceiver;

    .prologue
    .line 69
    invoke-static {p1}, Ltv/alphonso/service/client/ASClientUtils;->registerResultsReceiver(Landroid/os/ResultReceiver;)V

    .line 70
    return-void
.end method

.method public onResult(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 148
    sget-object v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->singletonObject:Ltv/alphonso/service/client/AlphonsoServiceClient;

    .line 150
    .local v0, "instance":Ltv/alphonso/service/client/AlphonsoServiceClient;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mLastKnownResult:Landroid/os/Bundle;

    .line 151
    const-string v1, "title"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 153
    iget-object v1, v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mLastKnownResult:Landroid/os/Bundle;

    const-string v2, "title"

    const-string v3, "title"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    :cond_0
    const-string v1, "brand"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 158
    iget-object v1, v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mLastKnownResult:Landroid/os/Bundle;

    const-string v2, "brand"

    const-string v3, "brand"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    :cond_1
    const-string v1, "channel"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 163
    iget-object v1, v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mLastKnownResult:Landroid/os/Bundle;

    const-string v2, "channel"

    const-string v3, "channel"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    :cond_2
    const-string v1, "date"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 168
    iget-object v1, v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mLastKnownResult:Landroid/os/Bundle;

    const-string v2, "date"

    const-string v3, "date"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    :cond_3
    const-string v1, "time"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 173
    iget-object v1, v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mLastKnownResult:Landroid/os/Bundle;

    const-string v2, "time"

    const-string v3, "time"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    :cond_4
    const-string v1, "network"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 178
    iget-object v1, v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mLastKnownResult:Landroid/os/Bundle;

    const-string v2, "network"

    const-string v3, "network"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    :cond_5
    const-string v1, "match_time"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 183
    iget-object v1, v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mLastKnownResult:Landroid/os/Bundle;

    const-string v2, "match_time"

    const-string v3, "match_time"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 186
    :cond_6
    const-string v1, "match_tz"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 188
    iget-object v1, v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mLastKnownResult:Landroid/os/Bundle;

    const-string v2, "match_tz"

    const-string v3, "match_tz"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 191
    :cond_7
    const-string v1, "start_ts"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 193
    iget-object v1, v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mLastKnownResult:Landroid/os/Bundle;

    const-string v2, "start_ts"

    const-string v3, "start_ts"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 196
    :cond_8
    const-string v1, "station_id"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 198
    iget-object v1, v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mLastKnownResult:Landroid/os/Bundle;

    const-string v2, "station_id"

    const-string v3, "station_id"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    :cond_9
    const-string v1, "tms_info"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 203
    iget-object v1, v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mLastKnownResult:Landroid/os/Bundle;

    const-string v2, "tms_info"

    const-string v3, "tms_info"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    :cond_a
    invoke-static {}, Ltv/alphonso/service/client/AlphonsoServiceMediationClient;->isActive()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 208
    sget-object v1, Ltv/alphonso/service/client/AlphonsoServiceMediationClient;->singletonObject:Ltv/alphonso/service/client/AlphonsoServiceMediationClient;

    iget-object v2, v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mLastKnownResult:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Ltv/alphonso/service/client/AlphonsoServiceMediationClient;->updateResult(Landroid/os/Bundle;)V

    .line 212
    :cond_b
    iget-object v1, v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mIdReceiver:Landroid/os/ResultReceiver;

    if-eqz v1, :cond_c

    .line 214
    iget-object v1, v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mIdReceiver:Landroid/os/ResultReceiver;

    const-string v2, "resultCode"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2, p1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 216
    :cond_c
    return-void
.end method

.method public onServiceConnectionDown()V
    .locals 3

    .prologue
    .line 22
    sget-object v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->singletonObject:Ltv/alphonso/service/client/AlphonsoServiceClient;

    .line 24
    .local v0, "instance":Ltv/alphonso/service/client/AlphonsoServiceClient;
    sget-object v1, Ltv/alphonso/service/client/ASClientStarted;->TAG:Ljava/lang/String;

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

    sget v2, Ltv/alphonso/service/client/AlphonsoServiceClient;->QUEUED_START:I

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

    sget-object v2, Ltv/alphonso/service/client/ASClientStarted;->TAG:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ltv/alphonso/service/client/ASClientFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 17
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 53
    sget-object v0, Ltv/alphonso/service/client/ASClientStarted;->TAG:Ljava/lang/String;

    const-string v1, "AlphonsoServiceClient already in Started state, ignoring START event."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    return-void
.end method
