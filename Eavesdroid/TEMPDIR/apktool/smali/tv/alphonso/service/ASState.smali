.class public abstract Ltv/alphonso/service/ASState;
.super Ljava/lang/Object;
.source "ASState.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    const-class v0, Ltv/alphonso/service/ASState;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ltv/alphonso/service/ASState;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getStateString()Ljava/lang/String;
.end method

.method public abstract onACSScenariosCompleteNotification(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V
.end method

.method public abstract onAdIdGeneration(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V
.end method

.method public abstract onAdIdPollConfig(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V
.end method

.method public abstract onAdIdPollTimerExpiry(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V
.end method

.method public abstract onAdvtDbUpdate(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V
.end method

.method public abstract onAlphonsoClientCleanupDone(Ltv/alphonso/service/AlphonsoService;)V
.end method

.method public abstract onAudioCaptureServiceCleanupDone(Ltv/alphonso/service/AlphonsoService;)V
.end method

.method public onAudioCaptureServicePrimeTimeBegin(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 86
    iget-object v0, p1, Ltv/alphonso/service/AlphonsoService;->mFSM:Ltv/alphonso/service/ASFSM;

    sget-object v1, Ltv/alphonso/service/ASState;->TAG:Ljava/lang/String;

    const/16 v2, 0x2f

    invoke-virtual {v0, v1, v2}, Ltv/alphonso/service/ASFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 87
    return-void
.end method

.method public onAudioCaptureServicePrimeTimeEnd(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 91
    iget-object v0, p1, Ltv/alphonso/service/AlphonsoService;->mFSM:Ltv/alphonso/service/ASFSM;

    sget-object v1, Ltv/alphonso/service/ASState;->TAG:Ljava/lang/String;

    const/16 v2, 0x30

    invoke-virtual {v0, v1, v2}, Ltv/alphonso/service/ASFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 92
    return-void
.end method

.method public abstract onAudioCaptureServiceSleepTimerExpiry(Ltv/alphonso/service/AlphonsoService;)V
.end method

.method public abstract onAudioFPUploadServiceCleanupDone(Ltv/alphonso/service/AlphonsoService;)V
.end method

.method public abstract onBindUserRequest(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V
.end method

.method public abstract onBindUserResponse(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V
.end method

.method public abstract onCancel(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V
.end method

.method public abstract onCleanup(Ltv/alphonso/service/AlphonsoService;)V
.end method

.method public abstract onClearHistory(Ltv/alphonso/service/AlphonsoService;)V
.end method

.method public abstract onClockSyncConfig(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V
.end method

.method public abstract onClockSyncInfoDeRegister(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V
.end method

.method public abstract onClockSyncInfoRegister(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V
.end method

.method public abstract onClockSyncPollTimerExpiry(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V
.end method

.method public abstract onClockSyncServerResponse(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V
.end method

.method public abstract onDestroy(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V
.end method

.method public abstract onDisableAudioCaptureUpload(Ltv/alphonso/service/AlphonsoService;)V
.end method

.method public abstract onEnableAudioCaptureUpload(Ltv/alphonso/service/AlphonsoService;)V
.end method

.method public abstract onHistoryRequest(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V
.end method

.method public abstract onInit(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V
.end method

.method public onLocationConfig(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 75
    iget-object v0, p1, Ltv/alphonso/service/AlphonsoService;->mFSM:Ltv/alphonso/service/ASFSM;

    sget-object v1, Ltv/alphonso/service/ASState;->TAG:Ljava/lang/String;

    const/16 v2, 0x2c

    invoke-virtual {v0, v1, v2}, Ltv/alphonso/service/ASFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 76
    return-void
.end method

.method public onLocationPeriodicTimerExpiry(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 70
    iget-object v0, p1, Ltv/alphonso/service/AlphonsoService;->mFSM:Ltv/alphonso/service/ASFSM;

    sget-object v1, Ltv/alphonso/service/ASState;->TAG:Ljava/lang/String;

    const/16 v2, 0x2b

    invoke-virtual {v0, v1, v2}, Ltv/alphonso/service/ASFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 71
    return-void
.end method

.method public abstract onMiscFlagsNotification(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V
.end method

.method public abstract onMiscFlagsNotificationDeRegister(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V
.end method

.method public abstract onMiscFlagsNotificationRegister(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V
.end method

.method public abstract onNotificationsDeRegister(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V
.end method

.method public abstract onNotificationsRegister(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V
.end method

.method public onPrimeTimeConfig(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 96
    iget-object v0, p1, Ltv/alphonso/service/AlphonsoService;->mFSM:Ltv/alphonso/service/ASFSM;

    sget-object v1, Ltv/alphonso/service/ASState;->TAG:Ljava/lang/String;

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Ltv/alphonso/service/ASFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 97
    return-void
.end method

.method public abstract onProvClientConfigRequestLeaseTimerExpiry(Ltv/alphonso/service/AlphonsoService;)V
.end method

.method public abstract onProvClientConfigRequestRetryTimerExpiry(Ltv/alphonso/service/AlphonsoService;)V
.end method

.method public abstract onProvServerConfigResponse(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V
.end method

.method public abstract onProvServerParams(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V
.end method

.method public abstract onRegistrationResponse(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V
.end method

.method public abstract onStart(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V
.end method

.method public abstract onUpdateDebugFlagRequest(Ltv/alphonso/service/AlphonsoService;Z)V
.end method

.method public abstract onViewingInfoEvent(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V
.end method

.method public abstract onViewingInfoServiceCleanupDone(Ltv/alphonso/service/AlphonsoService;)V
.end method
