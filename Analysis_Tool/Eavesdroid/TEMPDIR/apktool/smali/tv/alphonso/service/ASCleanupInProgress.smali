.class public Ltv/alphonso/service/ASCleanupInProgress;
.super Ltv/alphonso/service/ASState;
.source "ASCleanupInProgress.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Ltv/alphonso/service/ASCleanupInProgress;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ltv/alphonso/service/ASCleanupInProgress;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ltv/alphonso/service/ASState;-><init>()V

    return-void
.end method

.method private doFinalCleanup(Ltv/alphonso/service/AlphonsoService;)V
    .locals 4
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;

    .prologue
    const/4 v3, 0x0

    .line 164
    iget-boolean v1, p1, Ltv/alphonso/service/AlphonsoService;->mDebug:Z

    if-eqz v1, :cond_0

    .line 165
    sget-object v1, Ltv/alphonso/service/ASCleanupInProgress;->TAG:Ljava/lang/String;

    const-string v2, "Cleanup Done."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :cond_0
    iget-object v1, p1, Ltv/alphonso/service/AlphonsoService;->mFSM:Ltv/alphonso/service/ASFSM;

    iget-object v1, v1, Ltv/alphonso/service/ASFSM;->mASNUllState:Ltv/alphonso/service/ASNull;

    iput-object v1, p1, Ltv/alphonso/service/AlphonsoService;->mCurrentState:Ltv/alphonso/service/ASState;

    .line 169
    iget-object v1, p1, Ltv/alphonso/service/AlphonsoService;->mQueuedInit:Ltv/alphonso/service/AlphonsoServiceSetup;

    if-eqz v1, :cond_2

    .line 171
    iget-boolean v1, p1, Ltv/alphonso/service/AlphonsoService;->mDebug:Z

    if-eqz v1, :cond_1

    .line 172
    sget-object v1, Ltv/alphonso/service/ASCleanupInProgress;->TAG:Ljava/lang/String;

    const-string v2, "Processing queued INIT."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :cond_1
    iget-object v0, p1, Ltv/alphonso/service/AlphonsoService;->mQueuedInit:Ltv/alphonso/service/AlphonsoServiceSetup;

    .line 175
    .local v0, "temp":Ltv/alphonso/service/AlphonsoServiceSetup;
    iput-object v3, p1, Ltv/alphonso/service/AlphonsoService;->mQueuedInit:Ltv/alphonso/service/AlphonsoServiceSetup;

    .line 177
    invoke-static {p1, v0}, Ltv/alphonso/service/AlphonsoServiceUtils;->processInit(Ltv/alphonso/service/AlphonsoService;Ltv/alphonso/service/AlphonsoServiceSetup;)V

    .line 179
    iget-object v1, p1, Ltv/alphonso/service/AlphonsoService;->mFSM:Ltv/alphonso/service/ASFSM;

    iget-object v1, v1, Ltv/alphonso/service/ASFSM;->mASInitInProgressState:Ltv/alphonso/service/ASInitInProgress;

    iput-object v1, p1, Ltv/alphonso/service/AlphonsoService;->mCurrentState:Ltv/alphonso/service/ASState;

    .line 195
    .end local v0    # "temp":Ltv/alphonso/service/AlphonsoServiceSetup;
    :goto_0
    return-void

    .line 183
    :cond_2
    iget-object v1, p1, Ltv/alphonso/service/AlphonsoService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Ltv/alphonso/dbutil/database/DBAdapter;->getInstance(Landroid/content/Context;)Ltv/alphonso/dbutil/database/DBAdapter;

    move-result-object v1

    invoke-virtual {v1}, Ltv/alphonso/dbutil/database/DBAdapter;->close()V

    .line 184
    sput-object v3, Ltv/alphonso/dbutil/database/DBAdapter;->singletonObject:Ltv/alphonso/dbutil/database/DBAdapter;

    .line 187
    iput-object v3, p1, Ltv/alphonso/service/AlphonsoService;->mContext:Landroid/content/Context;

    .line 189
    iput-object v3, p1, Ltv/alphonso/service/AlphonsoService;->mCurrentState:Ltv/alphonso/service/ASState;

    .line 191
    sput-object v3, Ltv/alphonso/service/AlphonsoService;->singletonObject:Ltv/alphonso/service/AlphonsoService;

    .line 193
    invoke-virtual {p1}, Ltv/alphonso/service/AlphonsoService;->stopSelf()V

    goto :goto_0
.end method


# virtual methods
.method public cleanupAlphonsoClientService(Ltv/alphonso/service/AlphonsoService;)V
    .locals 3
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;

    .prologue
    .line 113
    iget-object v1, p1, Ltv/alphonso/service/AlphonsoService;->mAlphonsoClient:Ltv/alphonso/alphonsoclient/AlphonsoClient;

    iget-object v1, v1, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 115
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0xc

    iput v1, v0, Landroid/os/Message;->what:I

    .line 117
    iget-boolean v1, p1, Ltv/alphonso/service/AlphonsoService;->mDebug:Z

    if-eqz v1, :cond_0

    .line 118
    sget-object v1, Ltv/alphonso/service/ASCleanupInProgress;->TAG:Ljava/lang/String;

    const-string v2, "Sending DESTROY message to AlphonsoClient."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :cond_0
    iget-object v1, p1, Ltv/alphonso/service/AlphonsoService;->mAlphonsoClient:Ltv/alphonso/alphonsoclient/AlphonsoClient;

    iget-object v1, v1, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 122
    const/4 v1, 0x0

    iput-object v1, p1, Ltv/alphonso/service/AlphonsoService;->mAlphonsoClient:Ltv/alphonso/alphonsoclient/AlphonsoClient;

    .line 123
    return-void
.end method

.method public cleanupAudioFpUploadService(Ltv/alphonso/service/AlphonsoService;)V
    .locals 3
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;

    .prologue
    .line 127
    iget-object v1, p1, Ltv/alphonso/service/AlphonsoService;->mAudioFPUploadService:Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;

    iget-object v1, v1, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 129
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0xa

    iput v1, v0, Landroid/os/Message;->what:I

    .line 131
    iget-boolean v1, p1, Ltv/alphonso/service/AlphonsoService;->mDebug:Z

    if-eqz v1, :cond_0

    .line 132
    sget-object v1, Ltv/alphonso/service/ASCleanupInProgress;->TAG:Ljava/lang/String;

    const-string v2, "Sending AUDIO_FP_UPLOAD_SERVICE_DESTROY message to AudioFPUploadService."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :cond_0
    iget-object v1, p1, Ltv/alphonso/service/AlphonsoService;->mAudioFPUploadService:Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;

    iget-object v1, v1, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 136
    const/4 v1, 0x0

    iput-object v1, p1, Ltv/alphonso/service/AlphonsoService;->mAudioFPUploadService:Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;

    .line 137
    return-void
.end method

.method public cleanupViewingInfoServic(Ltv/alphonso/service/AlphonsoService;)V
    .locals 3
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;

    .prologue
    .line 141
    iget-object v1, p1, Ltv/alphonso/service/AlphonsoService;->mViewingInfoService:Ltv/alphonso/alphonsoclient/ViewingInfoService;

    iget-object v1, v1, Ltv/alphonso/alphonsoclient/ViewingInfoService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 143
    iget-object v1, p1, Ltv/alphonso/service/AlphonsoService;->mViewingInfoService:Ltv/alphonso/alphonsoclient/ViewingInfoService;

    iget-object v1, v1, Ltv/alphonso/alphonsoclient/ViewingInfoService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 145
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 147
    iget-boolean v1, p1, Ltv/alphonso/service/AlphonsoService;->mDebug:Z

    if-eqz v1, :cond_0

    .line 148
    sget-object v1, Ltv/alphonso/service/ASCleanupInProgress;->TAG:Ljava/lang/String;

    const-string v2, "Sending VIEWING_INFO_SERVICE_DESTROY message to ViewingInfoService."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :cond_0
    iget-object v1, p1, Ltv/alphonso/service/AlphonsoService;->mViewingInfoService:Ltv/alphonso/alphonsoclient/ViewingInfoService;

    iget-object v1, v1, Ltv/alphonso/alphonsoclient/ViewingInfoService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 154
    iget-object v1, p1, Ltv/alphonso/service/AlphonsoService;->mViewingInfoService:Ltv/alphonso/alphonsoclient/ViewingInfoService;

    invoke-virtual {v1}, Ltv/alphonso/alphonsoclient/ViewingInfoService;->destroy()V

    .line 156
    const/4 v1, 0x0

    iput-object v1, p1, Ltv/alphonso/service/AlphonsoService;->mViewingInfoService:Ltv/alphonso/alphonsoclient/ViewingInfoService;

    .line 158
    invoke-direct {p0, p1}, Ltv/alphonso/service/ASCleanupInProgress;->doFinalCleanup(Ltv/alphonso/service/AlphonsoService;)V

    .line 159
    return-void
.end method

.method public getStateString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 236
    sget-object v0, Ltv/alphonso/service/ASCleanupInProgress;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public onACSScenariosCompleteNotification(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 352
    iget-object v0, p1, Ltv/alphonso/service/AlphonsoService;->mFSM:Ltv/alphonso/service/ASFSM;

    sget-object v1, Ltv/alphonso/service/ASCleanupInProgress;->TAG:Ljava/lang/String;

    const/16 v2, 0x25

    invoke-virtual {v0, v1, v2}, Ltv/alphonso/service/ASFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 353
    return-void
.end method

.method public onAdIdGeneration(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 358
    iget-object v0, p1, Ltv/alphonso/service/AlphonsoService;->mFSM:Ltv/alphonso/service/ASFSM;

    sget-object v1, Ltv/alphonso/service/ASCleanupInProgress;->TAG:Ljava/lang/String;

    const/16 v2, 0x28

    invoke-virtual {v0, v1, v2}, Ltv/alphonso/service/ASFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 359
    return-void
.end method

.method public onAdIdPollConfig(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 376
    iget-object v0, p1, Ltv/alphonso/service/AlphonsoService;->mFSM:Ltv/alphonso/service/ASFSM;

    sget-object v1, Ltv/alphonso/service/ASCleanupInProgress;->TAG:Ljava/lang/String;

    const/16 v2, 0x2a

    invoke-virtual {v0, v1, v2}, Ltv/alphonso/service/ASFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 377
    return-void
.end method

.method public onAdIdPollTimerExpiry(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 370
    iget-object v0, p1, Ltv/alphonso/service/AlphonsoService;->mFSM:Ltv/alphonso/service/ASFSM;

    sget-object v1, Ltv/alphonso/service/ASCleanupInProgress;->TAG:Ljava/lang/String;

    const/16 v2, 0x29

    invoke-virtual {v0, v1, v2}, Ltv/alphonso/service/ASFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 371
    return-void
.end method

.method public onAdvtDbUpdate(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 277
    iget-object v0, p1, Ltv/alphonso/service/AlphonsoService;->mFSM:Ltv/alphonso/service/ASFSM;

    sget-object v1, Ltv/alphonso/service/ASCleanupInProgress;->TAG:Ljava/lang/String;

    const/16 v2, 0x19

    invoke-virtual {v0, v1, v2}, Ltv/alphonso/service/ASFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 278
    return-void
.end method

.method public onAlphonsoClientCleanupDone(Ltv/alphonso/service/AlphonsoService;)V
    .locals 1
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;

    .prologue
    .line 81
    iget-object v0, p1, Ltv/alphonso/service/AlphonsoService;->mAudioFPUploadService:Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;

    if-eqz v0, :cond_1

    .line 83
    invoke-virtual {p0, p1}, Ltv/alphonso/service/ASCleanupInProgress;->cleanupAudioFpUploadService(Ltv/alphonso/service/AlphonsoService;)V

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    iget-object v0, p1, Ltv/alphonso/service/AlphonsoService;->mViewingInfoService:Ltv/alphonso/alphonsoclient/ViewingInfoService;

    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {p0, p1}, Ltv/alphonso/service/ASCleanupInProgress;->cleanupViewingInfoServic(Ltv/alphonso/service/AlphonsoService;)V

    goto :goto_0
.end method

.method public onAudioCaptureServiceCleanupDone(Ltv/alphonso/service/AlphonsoService;)V
    .locals 1
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;

    .prologue
    .line 68
    iget-object v0, p1, Ltv/alphonso/service/AlphonsoService;->mAlphonsoClient:Ltv/alphonso/alphonsoclient/AlphonsoClient;

    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {p0, p1}, Ltv/alphonso/service/ASCleanupInProgress;->cleanupAlphonsoClientService(Ltv/alphonso/service/AlphonsoService;)V

    .line 76
    :goto_0
    return-void

    .line 74
    :cond_0
    invoke-virtual {p0, p1}, Ltv/alphonso/service/ASCleanupInProgress;->cleanupAudioFpUploadService(Ltv/alphonso/service/AlphonsoService;)V

    goto :goto_0
.end method

.method public onAudioCaptureServiceSleepTimerExpiry(Ltv/alphonso/service/AlphonsoService;)V
    .locals 3
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;

    .prologue
    .line 230
    iget-object v0, p1, Ltv/alphonso/service/AlphonsoService;->mFSM:Ltv/alphonso/service/ASFSM;

    sget-object v1, Ltv/alphonso/service/ASCleanupInProgress;->TAG:Ljava/lang/String;

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Ltv/alphonso/service/ASFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 231
    return-void
.end method

.method public onAudioFPUploadServiceCleanupDone(Ltv/alphonso/service/AlphonsoService;)V
    .locals 1
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;

    .prologue
    .line 94
    iget-object v0, p1, Ltv/alphonso/service/AlphonsoService;->mViewingInfoService:Ltv/alphonso/alphonsoclient/ViewingInfoService;

    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {p0, p1}, Ltv/alphonso/service/ASCleanupInProgress;->cleanupViewingInfoServic(Ltv/alphonso/service/AlphonsoService;)V

    .line 102
    :goto_0
    return-void

    .line 100
    :cond_0
    invoke-direct {p0, p1}, Ltv/alphonso/service/ASCleanupInProgress;->doFinalCleanup(Ltv/alphonso/service/AlphonsoService;)V

    goto :goto_0
.end method

.method public onBindUserRequest(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 259
    iget-object v0, p1, Ltv/alphonso/service/AlphonsoService;->mFSM:Ltv/alphonso/service/ASFSM;

    sget-object v1, Ltv/alphonso/service/ASCleanupInProgress;->TAG:Ljava/lang/String;

    const/16 v2, 0x15

    invoke-virtual {v0, v1, v2}, Ltv/alphonso/service/ASFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 260
    return-void
.end method

.method public onBindUserResponse(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 265
    iget-object v0, p1, Ltv/alphonso/service/AlphonsoService;->mFSM:Ltv/alphonso/service/ASFSM;

    sget-object v1, Ltv/alphonso/service/ASCleanupInProgress;->TAG:Ljava/lang/String;

    const/16 v2, 0x16

    invoke-virtual {v0, v1, v2}, Ltv/alphonso/service/ASFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 266
    return-void
.end method

.method public onCancel(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 40
    iget-object v0, p1, Ltv/alphonso/service/AlphonsoService;->mFSM:Ltv/alphonso/service/ASFSM;

    sget-object v1, Ltv/alphonso/service/ASCleanupInProgress;->TAG:Ljava/lang/String;

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Ltv/alphonso/service/ASFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 41
    return-void
.end method

.method public onCleanup(Ltv/alphonso/service/AlphonsoService;)V
    .locals 2
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;

    .prologue
    .line 46
    iget-object v0, p1, Ltv/alphonso/service/AlphonsoService;->mQueuedInit:Ltv/alphonso/service/AlphonsoServiceSetup;

    if-eqz v0, :cond_0

    .line 48
    const/4 v0, 0x1

    invoke-static {p1, v0}, Ltv/alphonso/service/AlphonsoServiceUtils;->sendInitResponse(Ltv/alphonso/service/AlphonsoService;B)V

    .line 50
    sget-object v0, Ltv/alphonso/service/ASCleanupInProgress;->TAG:Ljava/lang/String;

    const-string v1, "processCleanupMessage(): Removing queued setup."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    const/4 v0, 0x0

    iput-object v0, p1, Ltv/alphonso/service/AlphonsoService;->mQueuedInit:Ltv/alphonso/service/AlphonsoServiceSetup;

    .line 57
    :goto_0
    return-void

    .line 55
    :cond_0
    sget-object v0, Ltv/alphonso/service/ASCleanupInProgress;->TAG:Ljava/lang/String;

    const-string v1, "processCleanupMessage(): AlphonsoService cleanup is in progress. Ignore this Cleanup.."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onClearHistory(Ltv/alphonso/service/AlphonsoService;)V
    .locals 3
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;

    .prologue
    .line 212
    iget-object v0, p1, Ltv/alphonso/service/AlphonsoService;->mFSM:Ltv/alphonso/service/ASFSM;

    sget-object v1, Ltv/alphonso/service/ASCleanupInProgress;->TAG:Ljava/lang/String;

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Ltv/alphonso/service/ASFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 213
    return-void
.end method

.method public onClockSyncConfig(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 296
    iget-object v0, p1, Ltv/alphonso/service/AlphonsoService;->mFSM:Ltv/alphonso/service/ASFSM;

    sget-object v1, Ltv/alphonso/service/ASCleanupInProgress;->TAG:Ljava/lang/String;

    const/16 v2, 0x1c

    invoke-virtual {v0, v1, v2}, Ltv/alphonso/service/ASFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 297
    return-void
.end method

.method public onClockSyncInfoDeRegister(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 308
    iget-object v0, p1, Ltv/alphonso/service/AlphonsoService;->mFSM:Ltv/alphonso/service/ASFSM;

    sget-object v1, Ltv/alphonso/service/ASCleanupInProgress;->TAG:Ljava/lang/String;

    const/16 v2, 0x1e

    invoke-virtual {v0, v1, v2}, Ltv/alphonso/service/ASFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 309
    return-void
.end method

.method public onClockSyncInfoRegister(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 302
    iget-object v0, p1, Ltv/alphonso/service/AlphonsoService;->mFSM:Ltv/alphonso/service/ASFSM;

    sget-object v1, Ltv/alphonso/service/ASCleanupInProgress;->TAG:Ljava/lang/String;

    const/16 v2, 0x1d

    invoke-virtual {v0, v1, v2}, Ltv/alphonso/service/ASFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 303
    return-void
.end method

.method public onClockSyncPollTimerExpiry(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 290
    iget-object v0, p1, Ltv/alphonso/service/AlphonsoService;->mFSM:Ltv/alphonso/service/ASFSM;

    sget-object v1, Ltv/alphonso/service/ASCleanupInProgress;->TAG:Ljava/lang/String;

    const/16 v2, 0x1b

    invoke-virtual {v0, v1, v2}, Ltv/alphonso/service/ASFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 291
    return-void
.end method

.method public onClockSyncServerResponse(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 314
    iget-object v0, p1, Ltv/alphonso/service/AlphonsoService;->mFSM:Ltv/alphonso/service/ASFSM;

    sget-object v1, Ltv/alphonso/service/ASCleanupInProgress;->TAG:Ljava/lang/String;

    const/16 v2, 0x1f

    invoke-virtual {v0, v1, v2}, Ltv/alphonso/service/ASFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 315
    return-void
.end method

.method public onDestroy(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 364
    iget-object v0, p1, Ltv/alphonso/service/AlphonsoService;->mFSM:Ltv/alphonso/service/ASFSM;

    sget-object v1, Ltv/alphonso/service/ASCleanupInProgress;->TAG:Ljava/lang/String;

    const/16 v2, 0x27

    invoke-virtual {v0, v1, v2}, Ltv/alphonso/service/ASFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 365
    return-void
.end method

.method public onDisableAudioCaptureUpload(Ltv/alphonso/service/AlphonsoService;)V
    .locals 3
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;

    .prologue
    .line 206
    iget-object v0, p1, Ltv/alphonso/service/AlphonsoService;->mFSM:Ltv/alphonso/service/ASFSM;

    sget-object v1, Ltv/alphonso/service/ASCleanupInProgress;->TAG:Ljava/lang/String;

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2}, Ltv/alphonso/service/ASFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 207
    return-void
.end method

.method public onEnableAudioCaptureUpload(Ltv/alphonso/service/AlphonsoService;)V
    .locals 3
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;

    .prologue
    .line 200
    iget-object v0, p1, Ltv/alphonso/service/AlphonsoService;->mFSM:Ltv/alphonso/service/ASFSM;

    sget-object v1, Ltv/alphonso/service/ASCleanupInProgress;->TAG:Ljava/lang/String;

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Ltv/alphonso/service/ASFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 201
    return-void
.end method

.method public onHistoryRequest(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 242
    const-string v0, "app_id"

    .line 244
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    .line 242
    invoke-static {p1, v0, v1, v2, v3}, Ltv/alphonso/service/AlphonsoServiceUtils;->sendHistoryResponse(Ltv/alphonso/service/AlphonsoService;Ljava/lang/String;BJ)V

    .line 247
    return-void
.end method

.method public onInit(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 17
    const-string v1, "appId"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 19
    .local v0, "appId":Ljava/lang/String;
    iget-object v1, p1, Ltv/alphonso/service/AlphonsoService;->mQueuedInit:Ltv/alphonso/service/AlphonsoServiceSetup;

    if-eqz v1, :cond_0

    .line 21
    sget-object v1, Ltv/alphonso/service/ASCleanupInProgress;->TAG:Ljava/lang/String;

    const-string v2, "processCleanupMessage(): AlphonsoService init is in progress. Ignoring this init."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    :goto_0
    return-void

    .line 25
    :cond_0
    sget-object v1, Ltv/alphonso/service/ASCleanupInProgress;->TAG:Ljava/lang/String;

    const-string v2, "AlphonsoService is in the process of cleanup! Queuing up for retry..."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    new-instance v1, Ltv/alphonso/service/AlphonsoServiceSetup;

    invoke-direct {v1, v0}, Ltv/alphonso/service/AlphonsoServiceSetup;-><init>(Ljava/lang/String;)V

    iput-object v1, p1, Ltv/alphonso/service/AlphonsoService;->mQueuedInit:Ltv/alphonso/service/AlphonsoServiceSetup;

    goto :goto_0
.end method

.method public onMiscFlagsNotification(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 332
    iget-object v0, p1, Ltv/alphonso/service/AlphonsoService;->mFSM:Ltv/alphonso/service/ASFSM;

    sget-object v1, Ltv/alphonso/service/ASCleanupInProgress;->TAG:Ljava/lang/String;

    const/16 v2, 0x22

    invoke-virtual {v0, v1, v2}, Ltv/alphonso/service/ASFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 333
    return-void
.end method

.method public onMiscFlagsNotificationDeRegister(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 326
    iget-object v0, p1, Ltv/alphonso/service/AlphonsoService;->mFSM:Ltv/alphonso/service/ASFSM;

    sget-object v1, Ltv/alphonso/service/ASCleanupInProgress;->TAG:Ljava/lang/String;

    const/16 v2, 0x21

    invoke-virtual {v0, v1, v2}, Ltv/alphonso/service/ASFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 327
    return-void
.end method

.method public onMiscFlagsNotificationRegister(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 320
    iget-object v0, p1, Ltv/alphonso/service/AlphonsoService;->mFSM:Ltv/alphonso/service/ASFSM;

    sget-object v1, Ltv/alphonso/service/ASCleanupInProgress;->TAG:Ljava/lang/String;

    const/16 v2, 0x22

    invoke-virtual {v0, v1, v2}, Ltv/alphonso/service/ASFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 321
    return-void
.end method

.method public onNotificationsDeRegister(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 346
    iget-object v0, p1, Ltv/alphonso/service/AlphonsoService;->mFSM:Ltv/alphonso/service/ASFSM;

    sget-object v1, Ltv/alphonso/service/ASCleanupInProgress;->TAG:Ljava/lang/String;

    const/16 v2, 0x24

    invoke-virtual {v0, v1, v2}, Ltv/alphonso/service/ASFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 347
    return-void
.end method

.method public onNotificationsRegister(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 339
    iget-object v0, p1, Ltv/alphonso/service/AlphonsoService;->mFSM:Ltv/alphonso/service/ASFSM;

    sget-object v1, Ltv/alphonso/service/ASCleanupInProgress;->TAG:Ljava/lang/String;

    const/16 v2, 0x23

    invoke-virtual {v0, v1, v2}, Ltv/alphonso/service/ASFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 340
    return-void
.end method

.method public onProvClientConfigRequestLeaseTimerExpiry(Ltv/alphonso/service/AlphonsoService;)V
    .locals 3
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;

    .prologue
    .line 218
    iget-object v0, p1, Ltv/alphonso/service/AlphonsoService;->mFSM:Ltv/alphonso/service/ASFSM;

    sget-object v1, Ltv/alphonso/service/ASCleanupInProgress;->TAG:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Ltv/alphonso/service/ASFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 219
    return-void
.end method

.method public onProvClientConfigRequestRetryTimerExpiry(Ltv/alphonso/service/AlphonsoService;)V
    .locals 3
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;

    .prologue
    .line 224
    iget-object v0, p1, Ltv/alphonso/service/AlphonsoService;->mFSM:Ltv/alphonso/service/ASFSM;

    sget-object v1, Ltv/alphonso/service/ASCleanupInProgress;->TAG:Ljava/lang/String;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Ltv/alphonso/service/ASFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 225
    return-void
.end method

.method public onProvServerConfigResponse(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 382
    iget-object v0, p1, Ltv/alphonso/service/AlphonsoService;->mFSM:Ltv/alphonso/service/ASFSM;

    sget-object v1, Ltv/alphonso/service/ASCleanupInProgress;->TAG:Ljava/lang/String;

    const/16 v2, 0x2d

    invoke-virtual {v0, v1, v2}, Ltv/alphonso/service/ASFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 383
    return-void
.end method

.method public onProvServerParams(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 283
    iget-object v0, p1, Ltv/alphonso/service/AlphonsoService;->mFSM:Ltv/alphonso/service/ASFSM;

    sget-object v1, Ltv/alphonso/service/ASCleanupInProgress;->TAG:Ljava/lang/String;

    const/16 v2, 0x1a

    invoke-virtual {v0, v1, v2}, Ltv/alphonso/service/ASFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 284
    return-void
.end method

.method public onRegistrationResponse(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;
    .param p2, "resultData"    # Landroid/os/Bundle;

    .prologue
    .line 62
    iget-object v0, p1, Ltv/alphonso/service/AlphonsoService;->mFSM:Ltv/alphonso/service/ASFSM;

    sget-object v1, Ltv/alphonso/service/ASCleanupInProgress;->TAG:Ljava/lang/String;

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Ltv/alphonso/service/ASFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 63
    return-void
.end method

.method public onStart(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 34
    iget-object v0, p1, Ltv/alphonso/service/AlphonsoService;->mFSM:Ltv/alphonso/service/ASFSM;

    sget-object v1, Ltv/alphonso/service/ASCleanupInProgress;->TAG:Ljava/lang/String;

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Ltv/alphonso/service/ASFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 35
    return-void
.end method

.method public onUpdateDebugFlagRequest(Ltv/alphonso/service/AlphonsoService;Z)V
    .locals 0
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;
    .param p2, "flag"    # Z

    .prologue
    .line 253
    invoke-static {p1, p2}, Ltv/alphonso/service/AlphonsoServiceUtils;->updateDebugFlagRequest(Ltv/alphonso/service/AlphonsoService;Z)V

    .line 254
    return-void
.end method

.method public onViewingInfoEvent(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 271
    iget-object v0, p1, Ltv/alphonso/service/AlphonsoService;->mFSM:Ltv/alphonso/service/ASFSM;

    sget-object v1, Ltv/alphonso/service/ASCleanupInProgress;->TAG:Ljava/lang/String;

    const/16 v2, 0x18

    invoke-virtual {v0, v1, v2}, Ltv/alphonso/service/ASFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 272
    return-void
.end method

.method public onViewingInfoServiceCleanupDone(Ltv/alphonso/service/AlphonsoService;)V
    .locals 0
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;

    .prologue
    .line 107
    invoke-direct {p0, p1}, Ltv/alphonso/service/ASCleanupInProgress;->doFinalCleanup(Ltv/alphonso/service/AlphonsoService;)V

    .line 108
    return-void
.end method
