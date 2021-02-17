.class public abstract Ltv/alphonso/service/client/ASClientState;
.super Ljava/lang/Object;
.source "ASClientState.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getStateString()Ljava/lang/String;
.end method

.method public abstract onBindUser(Landroid/os/Bundle;)V
.end method

.method public abstract onBindUserResponse(Landroid/os/Bundle;)V
.end method

.method public abstract onCancel()V
.end method

.method public abstract onCleanup(Z)V
.end method

.method public abstract onClearHistory()V
.end method

.method public abstract onClockSyncInfo(Landroid/os/Bundle;)V
.end method

.method public abstract onClockSyncInfoDeRegister(Landroid/os/Bundle;)V
.end method

.method public abstract onClockSyncInfoRegister(Landroid/os/Bundle;)V
.end method

.method public abstract onDeRegisterResultsReceiver()V
.end method

.method public abstract onDisableAudioCaptureUpload()V
.end method

.method public abstract onEnableAudioCaptureUpload()V
.end method

.method public abstract onHistoryRequest(Landroid/os/Bundle;)V
.end method

.method public abstract onHistoryResponse(Landroid/os/Bundle;)V
.end method

.method public abstract onInit(Landroid/os/Bundle;)V
.end method

.method public abstract onInitResponse(Landroid/os/Bundle;)V
.end method

.method public abstract onMiscFlagsNotification(Landroid/os/Bundle;)V
.end method

.method public abstract onMiscFlagsNotificationDeRegister(Landroid/os/Bundle;)V
.end method

.method public abstract onMiscFlagsNotificationRegister(Landroid/os/Bundle;)V
.end method

.method public abstract onNotification(Landroid/os/Bundle;)V
.end method

.method public abstract onNotificationsDeRegister(Landroid/os/Bundle;)V
.end method

.method public abstract onNotificationsRegister(Landroid/os/Bundle;)V
.end method

.method public abstract onPermissionAlertResponse(Landroid/os/Bundle;)V
.end method

.method public abstract onProvServerParams(Landroid/os/Bundle;)V
.end method

.method public abstract onRegisterResultsReceiver(Landroid/os/ResultReceiver;)V
.end method

.method public abstract onResult(Landroid/os/Bundle;)V
.end method

.method public abstract onServiceConnectionDown()V
.end method

.method public abstract onServiceConnectionUp()V
.end method

.method public abstract onStart()V
.end method
