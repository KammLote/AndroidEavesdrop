.class public Ltv/alphonso/service/client/ASClientInitInProgress;
.super Ltv/alphonso/service/client/ASClientState;
.source "ASClientInitInProgress.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Ltv/alphonso/service/client/ASClientInitInProgress;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ltv/alphonso/service/client/ASClientInitInProgress;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ltv/alphonso/service/client/ASClientState;-><init>()V

    return-void
.end method

.method private processInit(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "params"    # Landroid/os/Bundle;

    .prologue
    .line 252
    sget-object v1, Ltv/alphonso/service/client/AlphonsoServiceClient;->singletonObject:Ltv/alphonso/service/client/AlphonsoServiceClient;

    .line 254
    .local v1, "instance":Ltv/alphonso/service/client/AlphonsoServiceClient;
    iget-object v3, v1, Ltv/alphonso/service/client/AlphonsoServiceClient;->mAppId:Ljava/lang/String;

    const-string v4, "app_id"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 256
    iget-object v3, v1, Ltv/alphonso/service/client/AlphonsoServiceClient;->mFSM:Ltv/alphonso/service/client/ASClientFSM;

    sget-object v4, Ltv/alphonso/service/client/ASClientInitInProgress;->TAG:Ljava/lang/String;

    const/4 v5, 0x3

    invoke-virtual {v3, v4, v5}, Ltv/alphonso/service/client/ASClientFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 258
    const-string v3, "recevier"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/os/ResultReceiver;

    .line 259
    .local v2, "receiver":Landroid/os/ResultReceiver;
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 267
    .end local v2    # "receiver":Landroid/os/ResultReceiver;
    :cond_0
    :goto_0
    return-void

    .line 263
    :cond_1
    const-string v3, "receiver"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/ResultReceiver;

    .line 264
    .local v0, "initReceiver":Landroid/os/ResultReceiver;
    invoke-static {v0}, Ltv/alphonso/service/client/AlphonsoServiceMediationClient;->isThisMyInitReceiver(Landroid/os/ResultReceiver;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 265
    const-string v3, "receiver"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/os/ResultReceiver;

    iput-object v3, v1, Ltv/alphonso/service/client/AlphonsoServiceClient;->mInitResultReceiver:Landroid/os/ResultReceiver;

    goto :goto_0
.end method


# virtual methods
.method public getStateString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 205
    sget-object v0, Ltv/alphonso/service/client/ASClientInitInProgress;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public onBindUser(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "params"    # Landroid/os/Bundle;

    .prologue
    .line 211
    sget-object v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->singletonObject:Ltv/alphonso/service/client/AlphonsoServiceClient;

    .line 212
    .local v0, "instance":Ltv/alphonso/service/client/AlphonsoServiceClient;
    iget-object v1, v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mFSM:Ltv/alphonso/service/client/ASClientFSM;

    sget-object v2, Ltv/alphonso/service/client/ASClientInitInProgress;->TAG:Ljava/lang/String;

    const/16 v3, 0xf

    invoke-virtual {v1, v2, v3}, Ltv/alphonso/service/client/ASClientFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 213
    return-void
.end method

.method public onBindUserResponse(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "params"    # Landroid/os/Bundle;

    .prologue
    .line 218
    sget-object v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->singletonObject:Ltv/alphonso/service/client/AlphonsoServiceClient;

    .line 219
    .local v0, "instance":Ltv/alphonso/service/client/AlphonsoServiceClient;
    iget-object v1, v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mFSM:Ltv/alphonso/service/client/ASClientFSM;

    sget-object v2, Ltv/alphonso/service/client/ASClientInitInProgress;->TAG:Ljava/lang/String;

    const/16 v3, 0x10

    invoke-virtual {v1, v2, v3}, Ltv/alphonso/service/client/ASClientFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 220
    return-void
.end method

.method public onCancel()V
    .locals 4

    .prologue
    .line 135
    sget-object v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->singletonObject:Ltv/alphonso/service/client/AlphonsoServiceClient;

    .line 136
    .local v0, "instance":Ltv/alphonso/service/client/AlphonsoServiceClient;
    iget-object v1, v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mFSM:Ltv/alphonso/service/client/ASClientFSM;

    sget-object v2, Ltv/alphonso/service/client/ASClientInitInProgress;->TAG:Ljava/lang/String;

    const/4 v3, 0x7

    invoke-virtual {v1, v2, v3}, Ltv/alphonso/service/client/ASClientFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 137
    return-void
.end method

.method public onCleanup(Z)V
    .locals 4
    .param p1, "serverInitiated"    # Z

    .prologue
    .line 154
    sget-object v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->singletonObject:Ltv/alphonso/service/client/AlphonsoServiceClient;

    .line 156
    .local v0, "instance":Ltv/alphonso/service/client/AlphonsoServiceClient;
    invoke-static {}, Ltv/alphonso/service/client/ASClientUtils;->deRegisterResultsReceiver()V

    .line 158
    if-nez p1, :cond_0

    .line 159
    invoke-static {}, Ltv/alphonso/service/client/ASClientUtils;->sendCleanupAndUnBindFromAlphonsoService()V

    .line 161
    :cond_0
    iget-object v1, v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mInitResultReceiver:Landroid/os/ResultReceiver;

    if-eqz v1, :cond_1

    .line 162
    iget-object v1, v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mInitResultReceiver:Landroid/os/ResultReceiver;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 164
    :cond_1
    invoke-virtual {v0}, Ltv/alphonso/service/client/AlphonsoServiceClient;->destroy()V

    .line 165
    return-void
.end method

.method public onClearHistory()V
    .locals 4

    .prologue
    .line 184
    sget-object v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->singletonObject:Ltv/alphonso/service/client/AlphonsoServiceClient;

    .line 185
    .local v0, "instance":Ltv/alphonso/service/client/AlphonsoServiceClient;
    iget-object v1, v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mFSM:Ltv/alphonso/service/client/ASClientFSM;

    sget-object v2, Ltv/alphonso/service/client/ASClientInitInProgress;->TAG:Ljava/lang/String;

    const/16 v3, 0xc

    invoke-virtual {v1, v2, v3}, Ltv/alphonso/service/client/ASClientFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 186
    return-void
.end method

.method public onClockSyncInfo(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "params"    # Landroid/os/Bundle;

    .prologue
    .line 286
    sget-object v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->singletonObject:Ltv/alphonso/service/client/AlphonsoServiceClient;

    .line 287
    .local v0, "instance":Ltv/alphonso/service/client/AlphonsoServiceClient;
    iget-object v1, v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mFSM:Ltv/alphonso/service/client/ASClientFSM;

    sget-object v2, Ltv/alphonso/service/client/ASClientInitInProgress;->TAG:Ljava/lang/String;

    const/16 v3, 0x17

    invoke-virtual {v1, v2, v3}, Ltv/alphonso/service/client/ASClientFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 288
    return-void
.end method

.method public onClockSyncInfoDeRegister(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "params"    # Landroid/os/Bundle;

    .prologue
    .line 279
    sget-object v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->singletonObject:Ltv/alphonso/service/client/AlphonsoServiceClient;

    .line 280
    .local v0, "instance":Ltv/alphonso/service/client/AlphonsoServiceClient;
    iget-object v1, v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mFSM:Ltv/alphonso/service/client/ASClientFSM;

    sget-object v2, Ltv/alphonso/service/client/ASClientInitInProgress;->TAG:Ljava/lang/String;

    const/16 v3, 0x16

    invoke-virtual {v1, v2, v3}, Ltv/alphonso/service/client/ASClientFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 281
    return-void
.end method

.method public onClockSyncInfoRegister(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "params"    # Landroid/os/Bundle;

    .prologue
    .line 272
    sget-object v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->singletonObject:Ltv/alphonso/service/client/AlphonsoServiceClient;

    .line 273
    .local v0, "instance":Ltv/alphonso/service/client/AlphonsoServiceClient;
    iget-object v1, v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mFSM:Ltv/alphonso/service/client/ASClientFSM;

    sget-object v2, Ltv/alphonso/service/client/ASClientInitInProgress;->TAG:Ljava/lang/String;

    const/16 v3, 0x15

    invoke-virtual {v1, v2, v3}, Ltv/alphonso/service/client/ASClientFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 274
    return-void
.end method

.method public onDeRegisterResultsReceiver()V
    .locals 0

    .prologue
    .line 148
    invoke-static {}, Ltv/alphonso/service/client/ASClientUtils;->deRegisterResultsReceiver()V

    .line 149
    return-void
.end method

.method public onDisableAudioCaptureUpload()V
    .locals 4

    .prologue
    .line 198
    sget-object v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->singletonObject:Ltv/alphonso/service/client/AlphonsoServiceClient;

    .line 199
    .local v0, "instance":Ltv/alphonso/service/client/AlphonsoServiceClient;
    iget-object v1, v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mFSM:Ltv/alphonso/service/client/ASClientFSM;

    sget-object v2, Ltv/alphonso/service/client/ASClientInitInProgress;->TAG:Ljava/lang/String;

    const/16 v3, 0x9

    invoke-virtual {v1, v2, v3}, Ltv/alphonso/service/client/ASClientFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 200
    return-void
.end method

.method public onEnableAudioCaptureUpload()V
    .locals 4

    .prologue
    .line 191
    sget-object v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->singletonObject:Ltv/alphonso/service/client/AlphonsoServiceClient;

    .line 192
    .local v0, "instance":Ltv/alphonso/service/client/AlphonsoServiceClient;
    iget-object v1, v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mFSM:Ltv/alphonso/service/client/ASClientFSM;

    sget-object v2, Ltv/alphonso/service/client/ASClientInitInProgress;->TAG:Ljava/lang/String;

    const/16 v3, 0x8

    invoke-virtual {v1, v2, v3}, Ltv/alphonso/service/client/ASClientFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 193
    return-void
.end method

.method public onHistoryRequest(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "params"    # Landroid/os/Bundle;

    .prologue
    .line 170
    sget-object v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->singletonObject:Ltv/alphonso/service/client/AlphonsoServiceClient;

    .line 171
    .local v0, "instance":Ltv/alphonso/service/client/AlphonsoServiceClient;
    iget-object v1, v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mFSM:Ltv/alphonso/service/client/ASClientFSM;

    sget-object v2, Ltv/alphonso/service/client/ASClientInitInProgress;->TAG:Ljava/lang/String;

    const/16 v3, 0xd

    invoke-virtual {v1, v2, v3}, Ltv/alphonso/service/client/ASClientFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 172
    return-void
.end method

.method public onHistoryResponse(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "params"    # Landroid/os/Bundle;

    .prologue
    .line 177
    sget-object v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->singletonObject:Ltv/alphonso/service/client/AlphonsoServiceClient;

    .line 178
    .local v0, "instance":Ltv/alphonso/service/client/AlphonsoServiceClient;
    iget-object v1, v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mFSM:Ltv/alphonso/service/client/ASClientFSM;

    sget-object v2, Ltv/alphonso/service/client/ASClientInitInProgress;->TAG:Ljava/lang/String;

    const/16 v3, 0xe

    invoke-virtual {v1, v2, v3}, Ltv/alphonso/service/client/ASClientFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 179
    return-void
.end method

.method public onInit(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "params"    # Landroid/os/Bundle;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Ltv/alphonso/service/client/ASClientInitInProgress;->processInit(Landroid/os/Bundle;)V

    .line 61
    return-void
.end method

.method public onInitResponse(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "responseParams"    # Landroid/os/Bundle;

    .prologue
    .line 66
    sget-object v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->singletonObject:Ltv/alphonso/service/client/AlphonsoServiceClient;

    .line 69
    .local v0, "instance":Ltv/alphonso/service/client/AlphonsoServiceClient;
    iget v1, v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mFlags:I

    sget v2, Ltv/alphonso/service/client/AlphonsoServiceClient;->CONNECTION_UP:I

    and-int/2addr v1, v2

    sget v2, Ltv/alphonso/service/client/AlphonsoServiceClient;->CONNECTION_UP:I

    if-eq v1, v2, :cond_0

    .line 71
    iget-object v1, v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mFSM:Ltv/alphonso/service/client/ASClientFSM;

    sget-object v2, Ltv/alphonso/service/client/ASClientInitInProgress;->TAG:Ljava/lang/String;

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Ltv/alphonso/service/client/ASClientFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 123
    :goto_0
    return-void

    .line 74
    :cond_0
    const-string v1, "result_code"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v1

    if-eqz v1, :cond_2

    .line 76
    sget-object v1, Ltv/alphonso/service/client/ASClientInitInProgress;->TAG:Ljava/lang/String;

    const-string v2, "FAIL for INIT from AlphonsoService."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    sget-object v1, Ltv/alphonso/service/client/ASClientInitInProgress;->TAG:Ljava/lang/String;

    const-string v2, "Un-binding from AlphonsoService."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-object v1, v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mContext:Landroid/content/Context;

    iget-object v2, v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 80
    iget-object v1, v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mInitResultReceiver:Landroid/os/ResultReceiver;

    if-eqz v1, :cond_1

    .line 81
    iget-object v1, v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mInitResultReceiver:Landroid/os/ResultReceiver;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 83
    :cond_1
    invoke-virtual {v0}, Ltv/alphonso/service/client/AlphonsoServiceClient;->destroy()V

    goto :goto_0

    .line 88
    :cond_2
    sget-object v1, Ltv/alphonso/service/client/ASClientInitInProgress;->TAG:Ljava/lang/String;

    const-string v2, "SUCCESS for INIT from AlphonsoService."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget v1, v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mFlags:I

    sget v2, Ltv/alphonso/service/client/AlphonsoServiceClient;->QUEUED_START:I

    and-int/2addr v1, v2

    sget v2, Ltv/alphonso/service/client/AlphonsoServiceClient;->QUEUED_START:I

    if-ne v1, v2, :cond_3

    .line 93
    sget-object v1, Ltv/alphonso/service/client/ASClientInitInProgress;->TAG:Ljava/lang/String;

    const-string v2, "Found QUEUED_START, initiating START to AlphonsoService."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget v1, v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mFlags:I

    sget v2, Ltv/alphonso/service/client/AlphonsoServiceClient;->QUEUED_START:I

    xor-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    iput v1, v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mFlags:I

    .line 99
    invoke-static {}, Ltv/alphonso/service/client/ASClientUtils;->sendStart()V

    .line 101
    iget-object v1, v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mFSM:Ltv/alphonso/service/client/ASClientFSM;

    iget-object v1, v1, Ltv/alphonso/service/client/ASClientFSM;->mASClientStartedState:Ltv/alphonso/service/client/ASClientStarted;

    iput-object v1, v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mState:Ltv/alphonso/service/client/ASClientState;

    goto :goto_0

    .line 104
    :cond_3
    iget v1, v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mFlags:I

    sget v2, Ltv/alphonso/service/client/AlphonsoServiceClient;->QUEUED_INIT:I

    and-int/2addr v1, v2

    sget v2, Ltv/alphonso/service/client/AlphonsoServiceClient;->QUEUED_INIT:I

    if-ne v1, v2, :cond_4

    .line 106
    sget-object v1, Ltv/alphonso/service/client/ASClientInitInProgress;->TAG:Ljava/lang/String;

    const-string v2, "Found QUEUED_INIT."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget v1, v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mFlags:I

    sget v2, Ltv/alphonso/service/client/AlphonsoServiceClient;->QUEUED_INIT:I

    xor-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    iput v1, v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mFlags:I

    .line 111
    iget-object v1, v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mFSM:Ltv/alphonso/service/client/ASClientFSM;

    iget-object v1, v1, Ltv/alphonso/service/client/ASClientFSM;->mASClientInitedState:Ltv/alphonso/service/client/ASClientInited;

    iput-object v1, v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mState:Ltv/alphonso/service/client/ASClientState;

    goto :goto_0

    .line 116
    :cond_4
    const-string v1, "alp_uid"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mAlpUid:Ljava/lang/String;

    .line 118
    invoke-static {}, Ltv/alphonso/service/client/ASClientUtils;->sendInitSuccessResponse()V

    .line 120
    iget-object v1, v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mFSM:Ltv/alphonso/service/client/ASClientFSM;

    iget-object v1, v1, Ltv/alphonso/service/client/ASClientFSM;->mASClientInitedState:Ltv/alphonso/service/client/ASClientInited;

    iput-object v1, v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mState:Ltv/alphonso/service/client/ASClientState;

    goto/16 :goto_0
.end method

.method public onMiscFlagsNotification(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "params"    # Landroid/os/Bundle;

    .prologue
    .line 293
    sget-object v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->singletonObject:Ltv/alphonso/service/client/AlphonsoServiceClient;

    .line 294
    .local v0, "instance":Ltv/alphonso/service/client/AlphonsoServiceClient;
    iget-object v1, v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mFSM:Ltv/alphonso/service/client/ASClientFSM;

    sget-object v2, Ltv/alphonso/service/client/ASClientInitInProgress;->TAG:Ljava/lang/String;

    const/16 v3, 0x18

    invoke-virtual {v1, v2, v3}, Ltv/alphonso/service/client/ASClientFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 295
    return-void
.end method

.method public onMiscFlagsNotificationDeRegister(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "params"    # Landroid/os/Bundle;

    .prologue
    .line 307
    sget-object v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->singletonObject:Ltv/alphonso/service/client/AlphonsoServiceClient;

    .line 308
    .local v0, "instance":Ltv/alphonso/service/client/AlphonsoServiceClient;
    iget-object v1, v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mFSM:Ltv/alphonso/service/client/ASClientFSM;

    sget-object v2, Ltv/alphonso/service/client/ASClientInitInProgress;->TAG:Ljava/lang/String;

    const/16 v3, 0x1a

    invoke-virtual {v1, v2, v3}, Ltv/alphonso/service/client/ASClientFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 309
    return-void
.end method

.method public onMiscFlagsNotificationRegister(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "params"    # Landroid/os/Bundle;

    .prologue
    .line 300
    sget-object v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->singletonObject:Ltv/alphonso/service/client/AlphonsoServiceClient;

    .line 301
    .local v0, "instance":Ltv/alphonso/service/client/AlphonsoServiceClient;
    iget-object v1, v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mFSM:Ltv/alphonso/service/client/ASClientFSM;

    sget-object v2, Ltv/alphonso/service/client/ASClientInitInProgress;->TAG:Ljava/lang/String;

    const/16 v3, 0x19

    invoke-virtual {v1, v2, v3}, Ltv/alphonso/service/client/ASClientFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 302
    return-void
.end method

.method public onNotification(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "params"    # Landroid/os/Bundle;

    .prologue
    .line 328
    sget-object v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->singletonObject:Ltv/alphonso/service/client/AlphonsoServiceClient;

    .line 329
    .local v0, "instance":Ltv/alphonso/service/client/AlphonsoServiceClient;
    iget-object v1, v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mFSM:Ltv/alphonso/service/client/ASClientFSM;

    sget-object v2, Ltv/alphonso/service/client/ASClientInitInProgress;->TAG:Ljava/lang/String;

    const/16 v3, 0x1c

    invoke-virtual {v1, v2, v3}, Ltv/alphonso/service/client/ASClientFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 330
    return-void
.end method

.method public onNotificationsDeRegister(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "params"    # Landroid/os/Bundle;

    .prologue
    .line 321
    sget-object v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->singletonObject:Ltv/alphonso/service/client/AlphonsoServiceClient;

    .line 322
    .local v0, "instance":Ltv/alphonso/service/client/AlphonsoServiceClient;
    iget-object v1, v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mFSM:Ltv/alphonso/service/client/ASClientFSM;

    sget-object v2, Ltv/alphonso/service/client/ASClientInitInProgress;->TAG:Ljava/lang/String;

    const/16 v3, 0x1c

    invoke-virtual {v1, v2, v3}, Ltv/alphonso/service/client/ASClientFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 323
    return-void
.end method

.method public onNotificationsRegister(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "params"    # Landroid/os/Bundle;

    .prologue
    .line 314
    sget-object v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->singletonObject:Ltv/alphonso/service/client/AlphonsoServiceClient;

    .line 315
    .local v0, "instance":Ltv/alphonso/service/client/AlphonsoServiceClient;
    iget-object v1, v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mFSM:Ltv/alphonso/service/client/ASClientFSM;

    sget-object v2, Ltv/alphonso/service/client/ASClientInitInProgress;->TAG:Ljava/lang/String;

    const/16 v3, 0x1b

    invoke-virtual {v1, v2, v3}, Ltv/alphonso/service/client/ASClientFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 316
    return-void
.end method

.method public onPermissionAlertResponse(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "params"    # Landroid/os/Bundle;

    .prologue
    .line 232
    const-string v0, "permission_alert_response"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 234
    invoke-direct {p0, p1}, Ltv/alphonso/service/client/ASClientInitInProgress;->processInit(Landroid/os/Bundle;)V

    .line 241
    :cond_0
    :goto_0
    return-void

    .line 238
    :cond_1
    const-string v0, "receiver"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 239
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
    .locals 4
    .param p1, "params"    # Landroid/os/Bundle;

    .prologue
    .line 246
    sget-object v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->singletonObject:Ltv/alphonso/service/client/AlphonsoServiceClient;

    .line 247
    .local v0, "instance":Ltv/alphonso/service/client/AlphonsoServiceClient;
    iget-object v1, v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mFSM:Ltv/alphonso/service/client/ASClientFSM;

    sget-object v2, Ltv/alphonso/service/client/ASClientInitInProgress;->TAG:Ljava/lang/String;

    const/16 v3, 0x14

    invoke-virtual {v1, v2, v3}, Ltv/alphonso/service/client/ASClientFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 248
    return-void
.end method

.method public onRegisterResultsReceiver(Landroid/os/ResultReceiver;)V
    .locals 0
    .param p1, "receiver"    # Landroid/os/ResultReceiver;

    .prologue
    .line 142
    invoke-static {p1}, Ltv/alphonso/service/client/ASClientUtils;->registerResultsReceiver(Landroid/os/ResultReceiver;)V

    .line 143
    return-void
.end method

.method public onResult(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "params"    # Landroid/os/Bundle;

    .prologue
    .line 225
    sget-object v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->singletonObject:Ltv/alphonso/service/client/AlphonsoServiceClient;

    .line 226
    .local v0, "instance":Ltv/alphonso/service/client/AlphonsoServiceClient;
    iget-object v1, v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mFSM:Ltv/alphonso/service/client/ASClientFSM;

    sget-object v2, Ltv/alphonso/service/client/ASClientInitInProgress;->TAG:Ljava/lang/String;

    const/16 v3, 0x11

    invoke-virtual {v1, v2, v3}, Ltv/alphonso/service/client/ASClientFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 227
    return-void
.end method

.method public onServiceConnectionDown()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 44
    sget-object v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->singletonObject:Ltv/alphonso/service/client/AlphonsoServiceClient;

    .line 46
    .local v0, "instance":Ltv/alphonso/service/client/AlphonsoServiceClient;
    sget-object v1, Ltv/alphonso/service/client/ASClientInitInProgress;->TAG:Ljava/lang/String;

    const-string v2, "AlphonsoService disconnected...!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    iput-object v3, v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mService:Landroid/os/Messenger;

    .line 49
    iget v1, v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mFlags:I

    sget v2, Ltv/alphonso/service/client/AlphonsoServiceClient;->CONNECTION_UP:I

    xor-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    iput v1, v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mFlags:I

    .line 51
    iget-object v1, v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mInitResultReceiver:Landroid/os/ResultReceiver;

    if-eqz v1, :cond_0

    .line 52
    iget-object v1, v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mInitResultReceiver:Landroid/os/ResultReceiver;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 54
    :cond_0
    invoke-virtual {v0}, Ltv/alphonso/service/client/AlphonsoServiceClient;->destroy()V

    .line 55
    return-void
.end method

.method public onServiceConnectionUp()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 18
    sget-object v1, Ltv/alphonso/service/client/AlphonsoServiceClient;->singletonObject:Ltv/alphonso/service/client/AlphonsoServiceClient;

    .line 20
    .local v1, "instance":Ltv/alphonso/service/client/AlphonsoServiceClient;
    iget v4, v1, Ltv/alphonso/service/client/AlphonsoServiceClient;->mFlags:I

    sget v5, Ltv/alphonso/service/client/AlphonsoServiceClient;->CONNECTION_UP:I

    or-int/2addr v4, v5

    iput v4, v1, Ltv/alphonso/service/client/AlphonsoServiceClient;->mFlags:I

    .line 22
    sget-object v4, Ltv/alphonso/service/client/ASClientInitInProgress;->TAG:Ljava/lang/String;

    const-string v5, "AlphonsoService connected!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    sget-object v4, Ltv/alphonso/service/client/ASClientInitInProgress;->TAG:Ljava/lang/String;

    const-string v5, "Sending INIT message to AlphonsoService."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v4, v5, v6, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v2

    .line 26
    .local v2, "msg":Landroid/os/Message;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 27
    .local v3, "params":Landroid/os/Bundle;
    invoke-static {v3}, Ltv/alphonso/service/client/ASClientUtils;->addParamsHeader(Landroid/os/Bundle;)V

    .line 28
    invoke-virtual {v2, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 30
    iget-object v4, v1, Ltv/alphonso/service/client/AlphonsoServiceClient;->mMessenger:Landroid/os/Messenger;

    iput-object v4, v2, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 33
    :try_start_0
    iget-object v4, v1, Ltv/alphonso/service/client/AlphonsoServiceClient;->mService:Landroid/os/Messenger;

    invoke-virtual {v4, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    :goto_0
    return-void

    .line 35
    :catch_0
    move-exception v0

    .line 37
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 128
    sget-object v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->singletonObject:Ltv/alphonso/service/client/AlphonsoServiceClient;

    .line 129
    .local v0, "instance":Ltv/alphonso/service/client/AlphonsoServiceClient;
    iget-object v1, v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mFSM:Ltv/alphonso/service/client/ASClientFSM;

    sget-object v2, Ltv/alphonso/service/client/ASClientInitInProgress;->TAG:Ljava/lang/String;

    const/4 v3, 0x6

    invoke-virtual {v1, v2, v3}, Ltv/alphonso/service/client/ASClientFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 130
    return-void
.end method
