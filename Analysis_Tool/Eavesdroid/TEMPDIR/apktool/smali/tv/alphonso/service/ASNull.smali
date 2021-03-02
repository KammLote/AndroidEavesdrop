.class public Ltv/alphonso/service/ASNull;
.super Ltv/alphonso/service/ASState;
.source "ASNull.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const-class v0, Ltv/alphonso/service/ASNull;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ltv/alphonso/service/ASNull;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ltv/alphonso/service/ASState;-><init>()V

    return-void
.end method


# virtual methods
.method public getStateString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    sget-object v0, Ltv/alphonso/service/ASNull;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public onACSScenariosCompleteNotification(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 232
    iget-object v0, p1, Ltv/alphonso/service/AlphonsoService;->mFSM:Ltv/alphonso/service/ASFSM;

    sget-object v1, Ltv/alphonso/service/ASNull;->TAG:Ljava/lang/String;

    const/16 v2, 0x25

    invoke-virtual {v0, v1, v2}, Ltv/alphonso/service/ASFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 233
    return-void
.end method

.method public onAdIdGeneration(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 238
    invoke-static {p1, p2}, Ltv/alphonso/service/AlphonsoServiceUtils;->processAdIdGeneration(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)Z

    .line 240
    iget-object v0, p1, Ltv/alphonso/service/AlphonsoService;->mInitObj:Ltv/alphonso/service/AlphonsoServiceSetup;

    invoke-static {p1, v0}, Ltv/alphonso/service/AlphonsoServiceUtils;->processInit(Ltv/alphonso/service/AlphonsoService;Ltv/alphonso/service/AlphonsoServiceSetup;)V

    .line 242
    const/4 v0, 0x0

    iput-object v0, p1, Ltv/alphonso/service/AlphonsoService;->mInitObj:Ltv/alphonso/service/AlphonsoServiceSetup;

    .line 243
    iget-object v0, p1, Ltv/alphonso/service/AlphonsoService;->mFSM:Ltv/alphonso/service/ASFSM;

    iget-object v0, v0, Ltv/alphonso/service/ASFSM;->mASInitInProgressState:Ltv/alphonso/service/ASInitInProgress;

    iput-object v0, p1, Ltv/alphonso/service/AlphonsoService;->mCurrentState:Ltv/alphonso/service/ASState;

    .line 246
    invoke-static {p1}, Ltv/alphonso/service/AlphonsoServiceUtils;->startAdIdPollTimer(Ltv/alphonso/service/AlphonsoService;)V

    .line 247
    return-void
.end method

.method public onAdIdPollConfig(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 264
    iget-object v0, p1, Ltv/alphonso/service/AlphonsoService;->mFSM:Ltv/alphonso/service/ASFSM;

    sget-object v1, Ltv/alphonso/service/ASNull;->TAG:Ljava/lang/String;

    const/16 v2, 0x2a

    invoke-virtual {v0, v1, v2}, Ltv/alphonso/service/ASFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 265
    return-void
.end method

.method public onAdIdPollTimerExpiry(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 258
    iget-object v0, p1, Ltv/alphonso/service/AlphonsoService;->mFSM:Ltv/alphonso/service/ASFSM;

    sget-object v1, Ltv/alphonso/service/ASNull;->TAG:Ljava/lang/String;

    const/16 v2, 0x29

    invoke-virtual {v0, v1, v2}, Ltv/alphonso/service/ASFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 259
    return-void
.end method

.method public onAdvtDbUpdate(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 157
    iget-object v0, p1, Ltv/alphonso/service/AlphonsoService;->mFSM:Ltv/alphonso/service/ASFSM;

    sget-object v1, Ltv/alphonso/service/ASNull;->TAG:Ljava/lang/String;

    const/16 v2, 0x19

    invoke-virtual {v0, v1, v2}, Ltv/alphonso/service/ASFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 158
    return-void
.end method

.method public onAlphonsoClientCleanupDone(Ltv/alphonso/service/AlphonsoService;)V
    .locals 3
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;

    .prologue
    .line 58
    iget-object v0, p1, Ltv/alphonso/service/AlphonsoService;->mFSM:Ltv/alphonso/service/ASFSM;

    sget-object v1, Ltv/alphonso/service/ASNull;->TAG:Ljava/lang/String;

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Ltv/alphonso/service/ASFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 59
    return-void
.end method

.method public onAudioCaptureServiceCleanupDone(Ltv/alphonso/service/AlphonsoService;)V
    .locals 3
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;

    .prologue
    .line 52
    iget-object v0, p1, Ltv/alphonso/service/AlphonsoService;->mFSM:Ltv/alphonso/service/ASFSM;

    sget-object v1, Ltv/alphonso/service/ASNull;->TAG:Ljava/lang/String;

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Ltv/alphonso/service/ASFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 53
    return-void
.end method

.method public onAudioCaptureServiceSleepTimerExpiry(Ltv/alphonso/service/AlphonsoService;)V
    .locals 3
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;

    .prologue
    .line 103
    iget-object v0, p1, Ltv/alphonso/service/AlphonsoService;->mFSM:Ltv/alphonso/service/ASFSM;

    sget-object v1, Ltv/alphonso/service/ASNull;->TAG:Ljava/lang/String;

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Ltv/alphonso/service/ASFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 104
    return-void
.end method

.method public onAudioFPUploadServiceCleanupDone(Ltv/alphonso/service/AlphonsoService;)V
    .locals 3
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;

    .prologue
    .line 64
    iget-object v0, p1, Ltv/alphonso/service/AlphonsoService;->mFSM:Ltv/alphonso/service/ASFSM;

    sget-object v1, Ltv/alphonso/service/ASNull;->TAG:Ljava/lang/String;

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Ltv/alphonso/service/ASFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 65
    return-void
.end method

.method public onBindUserRequest(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 133
    iget-object v0, p1, Ltv/alphonso/service/AlphonsoService;->mFSM:Ltv/alphonso/service/ASFSM;

    sget-object v1, Ltv/alphonso/service/ASNull;->TAG:Ljava/lang/String;

    const/16 v2, 0x15

    invoke-virtual {v0, v1, v2}, Ltv/alphonso/service/ASFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 134
    return-void
.end method

.method public onBindUserResponse(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 139
    iget-object v0, p1, Ltv/alphonso/service/AlphonsoService;->mFSM:Ltv/alphonso/service/ASFSM;

    sget-object v1, Ltv/alphonso/service/ASNull;->TAG:Ljava/lang/String;

    const/16 v2, 0x16

    invoke-virtual {v0, v1, v2}, Ltv/alphonso/service/ASFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 140
    return-void
.end method

.method public onCancel(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 34
    iget-object v0, p1, Ltv/alphonso/service/AlphonsoService;->mFSM:Ltv/alphonso/service/ASFSM;

    sget-object v1, Ltv/alphonso/service/ASNull;->TAG:Ljava/lang/String;

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Ltv/alphonso/service/ASFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 35
    return-void
.end method

.method public onCleanup(Ltv/alphonso/service/AlphonsoService;)V
    .locals 3
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;

    .prologue
    .line 40
    iget-object v0, p1, Ltv/alphonso/service/AlphonsoService;->mFSM:Ltv/alphonso/service/ASFSM;

    sget-object v1, Ltv/alphonso/service/ASNull;->TAG:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Ltv/alphonso/service/ASFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 41
    return-void
.end method

.method public onClearHistory(Ltv/alphonso/service/AlphonsoService;)V
    .locals 3
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;

    .prologue
    .line 82
    iget-object v0, p1, Ltv/alphonso/service/AlphonsoService;->mFSM:Ltv/alphonso/service/ASFSM;

    sget-object v1, Ltv/alphonso/service/ASNull;->TAG:Ljava/lang/String;

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Ltv/alphonso/service/ASFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 83
    return-void
.end method

.method public onClockSyncConfig(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 176
    iget-object v0, p1, Ltv/alphonso/service/AlphonsoService;->mFSM:Ltv/alphonso/service/ASFSM;

    sget-object v1, Ltv/alphonso/service/ASNull;->TAG:Ljava/lang/String;

    const/16 v2, 0x1c

    invoke-virtual {v0, v1, v2}, Ltv/alphonso/service/ASFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 177
    return-void
.end method

.method public onClockSyncInfoDeRegister(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 188
    iget-object v0, p1, Ltv/alphonso/service/AlphonsoService;->mFSM:Ltv/alphonso/service/ASFSM;

    sget-object v1, Ltv/alphonso/service/ASNull;->TAG:Ljava/lang/String;

    const/16 v2, 0x1e

    invoke-virtual {v0, v1, v2}, Ltv/alphonso/service/ASFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 189
    return-void
.end method

.method public onClockSyncInfoRegister(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 182
    iget-object v0, p1, Ltv/alphonso/service/AlphonsoService;->mFSM:Ltv/alphonso/service/ASFSM;

    sget-object v1, Ltv/alphonso/service/ASNull;->TAG:Ljava/lang/String;

    const/16 v2, 0x1d

    invoke-virtual {v0, v1, v2}, Ltv/alphonso/service/ASFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 183
    return-void
.end method

.method public onClockSyncPollTimerExpiry(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 170
    iget-object v0, p1, Ltv/alphonso/service/AlphonsoService;->mFSM:Ltv/alphonso/service/ASFSM;

    sget-object v1, Ltv/alphonso/service/ASNull;->TAG:Ljava/lang/String;

    const/16 v2, 0x1b

    invoke-virtual {v0, v1, v2}, Ltv/alphonso/service/ASFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 171
    return-void
.end method

.method public onClockSyncServerResponse(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 194
    iget-object v0, p1, Ltv/alphonso/service/AlphonsoService;->mFSM:Ltv/alphonso/service/ASFSM;

    sget-object v1, Ltv/alphonso/service/ASNull;->TAG:Ljava/lang/String;

    const/16 v2, 0x1f

    invoke-virtual {v0, v1, v2}, Ltv/alphonso/service/ASFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 195
    return-void
.end method

.method public onDestroy(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 252
    iget-object v0, p1, Ltv/alphonso/service/AlphonsoService;->mFSM:Ltv/alphonso/service/ASFSM;

    sget-object v1, Ltv/alphonso/service/ASNull;->TAG:Ljava/lang/String;

    const/16 v2, 0x27

    invoke-virtual {v0, v1, v2}, Ltv/alphonso/service/ASFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 253
    return-void
.end method

.method public onDisableAudioCaptureUpload(Ltv/alphonso/service/AlphonsoService;)V
    .locals 3
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;

    .prologue
    .line 76
    iget-object v0, p1, Ltv/alphonso/service/AlphonsoService;->mFSM:Ltv/alphonso/service/ASFSM;

    sget-object v1, Ltv/alphonso/service/ASNull;->TAG:Ljava/lang/String;

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2}, Ltv/alphonso/service/ASFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 77
    return-void
.end method

.method public onEnableAudioCaptureUpload(Ltv/alphonso/service/AlphonsoService;)V
    .locals 3
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;

    .prologue
    .line 70
    iget-object v0, p1, Ltv/alphonso/service/AlphonsoService;->mFSM:Ltv/alphonso/service/ASFSM;

    sget-object v1, Ltv/alphonso/service/ASNull;->TAG:Ljava/lang/String;

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Ltv/alphonso/service/ASFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 71
    return-void
.end method

.method public onHistoryRequest(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 115
    iget-object v0, p1, Ltv/alphonso/service/AlphonsoService;->mFSM:Ltv/alphonso/service/ASFSM;

    sget-object v1, Ltv/alphonso/service/ASNull;->TAG:Ljava/lang/String;

    const/16 v2, 0x12

    invoke-virtual {v0, v1, v2}, Ltv/alphonso/service/ASFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 117
    const-string v0, "app_id"

    .line 119
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    .line 117
    invoke-static {p1, v0, v1, v2, v3}, Ltv/alphonso/service/AlphonsoServiceUtils;->sendHistoryResponse(Ltv/alphonso/service/AlphonsoService;Ljava/lang/String;BJ)V

    .line 121
    return-void
.end method

.method public onInit(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 12
    invoke-static {p1}, Ltv/alphonso/service/AlphonsoServiceUtils;->honorPersistedPreferences(Ltv/alphonso/service/AlphonsoService;)V

    .line 14
    const-string v1, "app_id"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 16
    .local v0, "appId":Ljava/lang/String;
    new-instance v1, Ltv/alphonso/service/AlphonsoServiceSetup;

    invoke-direct {v1, v0}, Ltv/alphonso/service/AlphonsoServiceSetup;-><init>(Ljava/lang/String;)V

    iput-object v1, p1, Ltv/alphonso/service/AlphonsoService;->mInitObj:Ltv/alphonso/service/AlphonsoServiceSetup;

    .line 18
    invoke-virtual {p1}, Ltv/alphonso/service/AlphonsoService;->getUUID()Ljava/lang/String;

    .line 20
    invoke-virtual {p1}, Ltv/alphonso/service/AlphonsoService;->getAndroidId()Ljava/lang/String;

    .line 22
    invoke-virtual {p1}, Ltv/alphonso/service/AlphonsoService;->getAdId()V

    .line 23
    return-void
.end method

.method public onMiscFlagsNotification(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 212
    iget-object v0, p1, Ltv/alphonso/service/AlphonsoService;->mFSM:Ltv/alphonso/service/ASFSM;

    sget-object v1, Ltv/alphonso/service/ASNull;->TAG:Ljava/lang/String;

    const/16 v2, 0x22

    invoke-virtual {v0, v1, v2}, Ltv/alphonso/service/ASFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 213
    return-void
.end method

.method public onMiscFlagsNotificationDeRegister(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 206
    iget-object v0, p1, Ltv/alphonso/service/AlphonsoService;->mFSM:Ltv/alphonso/service/ASFSM;

    sget-object v1, Ltv/alphonso/service/ASNull;->TAG:Ljava/lang/String;

    const/16 v2, 0x21

    invoke-virtual {v0, v1, v2}, Ltv/alphonso/service/ASFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 207
    return-void
.end method

.method public onMiscFlagsNotificationRegister(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 200
    iget-object v0, p1, Ltv/alphonso/service/AlphonsoService;->mFSM:Ltv/alphonso/service/ASFSM;

    sget-object v1, Ltv/alphonso/service/ASNull;->TAG:Ljava/lang/String;

    const/16 v2, 0x22

    invoke-virtual {v0, v1, v2}, Ltv/alphonso/service/ASFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 201
    return-void
.end method

.method public onNotificationsDeRegister(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 226
    iget-object v0, p1, Ltv/alphonso/service/AlphonsoService;->mFSM:Ltv/alphonso/service/ASFSM;

    sget-object v1, Ltv/alphonso/service/ASNull;->TAG:Ljava/lang/String;

    const/16 v2, 0x24

    invoke-virtual {v0, v1, v2}, Ltv/alphonso/service/ASFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 227
    return-void
.end method

.method public onNotificationsRegister(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 219
    iget-object v0, p1, Ltv/alphonso/service/AlphonsoService;->mFSM:Ltv/alphonso/service/ASFSM;

    sget-object v1, Ltv/alphonso/service/ASNull;->TAG:Ljava/lang/String;

    const/16 v2, 0x23

    invoke-virtual {v0, v1, v2}, Ltv/alphonso/service/ASFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 220
    return-void
.end method

.method public onProvClientConfigRequestLeaseTimerExpiry(Ltv/alphonso/service/AlphonsoService;)V
    .locals 3
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;

    .prologue
    .line 89
    iget-object v0, p1, Ltv/alphonso/service/AlphonsoService;->mFSM:Ltv/alphonso/service/ASFSM;

    sget-object v1, Ltv/alphonso/service/ASNull;->TAG:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Ltv/alphonso/service/ASFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 91
    return-void
.end method

.method public onProvClientConfigRequestRetryTimerExpiry(Ltv/alphonso/service/AlphonsoService;)V
    .locals 3
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;

    .prologue
    .line 97
    iget-object v0, p1, Ltv/alphonso/service/AlphonsoService;->mFSM:Ltv/alphonso/service/ASFSM;

    sget-object v1, Ltv/alphonso/service/ASNull;->TAG:Ljava/lang/String;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Ltv/alphonso/service/ASFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 98
    return-void
.end method

.method public onProvServerConfigResponse(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 270
    iget-object v0, p1, Ltv/alphonso/service/AlphonsoService;->mFSM:Ltv/alphonso/service/ASFSM;

    sget-object v1, Ltv/alphonso/service/ASNull;->TAG:Ljava/lang/String;

    const/16 v2, 0x2d

    invoke-virtual {v0, v1, v2}, Ltv/alphonso/service/ASFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 271
    return-void
.end method

.method public onProvServerParams(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 163
    iget-object v0, p1, Ltv/alphonso/service/AlphonsoService;->mFSM:Ltv/alphonso/service/ASFSM;

    sget-object v1, Ltv/alphonso/service/ASNull;->TAG:Ljava/lang/String;

    const/16 v2, 0x1a

    invoke-virtual {v0, v1, v2}, Ltv/alphonso/service/ASFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 164
    return-void
.end method

.method public onRegistrationResponse(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;
    .param p2, "resultData"    # Landroid/os/Bundle;

    .prologue
    .line 46
    iget-object v0, p1, Ltv/alphonso/service/AlphonsoService;->mFSM:Ltv/alphonso/service/ASFSM;

    sget-object v1, Ltv/alphonso/service/ASNull;->TAG:Ljava/lang/String;

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Ltv/alphonso/service/ASFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 47
    return-void
.end method

.method public onStart(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 28
    iget-object v0, p1, Ltv/alphonso/service/AlphonsoService;->mFSM:Ltv/alphonso/service/ASFSM;

    sget-object v1, Ltv/alphonso/service/ASNull;->TAG:Ljava/lang/String;

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Ltv/alphonso/service/ASFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 29
    return-void
.end method

.method public onUpdateDebugFlagRequest(Ltv/alphonso/service/AlphonsoService;Z)V
    .locals 0
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;
    .param p2, "flag"    # Z

    .prologue
    .line 127
    invoke-static {p1, p2}, Ltv/alphonso/service/AlphonsoServiceUtils;->updateDebugFlagRequest(Ltv/alphonso/service/AlphonsoService;Z)V

    .line 128
    return-void
.end method

.method public onViewingInfoEvent(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 151
    iget-object v0, p1, Ltv/alphonso/service/AlphonsoService;->mFSM:Ltv/alphonso/service/ASFSM;

    sget-object v1, Ltv/alphonso/service/ASNull;->TAG:Ljava/lang/String;

    const/16 v2, 0x18

    invoke-virtual {v0, v1, v2}, Ltv/alphonso/service/ASFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 152
    return-void
.end method

.method public onViewingInfoServiceCleanupDone(Ltv/alphonso/service/AlphonsoService;)V
    .locals 3
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;

    .prologue
    .line 145
    iget-object v0, p1, Ltv/alphonso/service/AlphonsoService;->mFSM:Ltv/alphonso/service/ASFSM;

    sget-object v1, Ltv/alphonso/service/ASNull;->TAG:Ljava/lang/String;

    const/16 v2, 0x17

    invoke-virtual {v0, v1, v2}, Ltv/alphonso/service/ASFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 146
    return-void
.end method
