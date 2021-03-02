.class public Ltv/alphonso/service/client/ASClientFSM;
.super Ljava/lang/Object;
.source "ASClientFSM.java"


# static fields
.field public static final BIND_USER:I = 0xf

.field public static final BIND_USER_RESPONSE:I = 0x10

.field public static final CANCEL:I = 0x7

.field public static final CLEANUP:I = 0x5

.field public static final CLEAR_HISTORY:I = 0xc

.field public static final CLOCK_SYNC_INFO:I = 0x17

.field public static final CLOCK_SYNC_INFO_DE_REGISTER:I = 0x16

.field public static final CLOCK_SYNC_INFO_REGISTER:I = 0x15

.field public static final DE_REGISTER_RESULTS_RECEIVER:I = 0xb

.field public static final DISABLE_AUDIO_CAPTURE_UPLOAD:I = 0x9

.field public static final ENABLE_AUDIO_CAPTURE_UPLOAD:I = 0x8

.field public static final EVENT_MAX:I = 0x1e

.field public static final HISTORY_REQUEST:I = 0xd

.field public static final HISTORY_RESPONSE:I = 0xe

.field public static final INIT:I = 0x3

.field public static final INIT_RESPONSE:I = 0x4

.field public static final INVALID_EVENT:I = 0x0

.field public static final MISC_FLAGS_NOTIFICATION:I = 0x18

.field public static final MISC_FLAGS_NOTIFICATION_DE_REGISTER:I = 0x1a

.field public static final MISC_FLAGS_NOTIFICATION_REGISTER:I = 0x19

.field public static final NOTIFICATION:I = 0x1d

.field public static final NOTIFICATIONS_DE_REGISTER:I = 0x1c

.field public static final NOTIFICATIONS_REGISTER:I = 0x1b

.field public static final PERMISSION_ALERT_RESPONSE:I = 0x13

.field public static final PROV_SERVER_PARAMS:I = 0x14

.field public static final REGISTER_RESULTS_RECEIVER:I = 0xa

.field public static final RESULT:I = 0x11

.field public static final SERVER_DOWN:I = 0x12

.field public static final SERVICE_CONNECTION_DOWN:I = 0x2

.field public static final SERVICE_CONNECTION_UP:I = 0x1

.field public static final START:I = 0x6

.field private static final TAG:Ljava/lang/String;

.field public static final fsmEventStrings:[Ljava/lang/String;


# instance fields
.field public mASClientInitInProgressState:Ltv/alphonso/service/client/ASClientInitInProgress;

.field public mASClientInitedState:Ltv/alphonso/service/client/ASClientInited;

.field public mASClientNullState:Ltv/alphonso/service/client/ASClientNull;

.field public mASClientStartedState:Ltv/alphonso/service/client/ASClientStarted;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 9
    const-class v0, Ltv/alphonso/service/client/ASClientFSM;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ltv/alphonso/service/client/ASClientFSM;->TAG:Ljava/lang/String;

    .line 43
    const/16 v0, 0x1e

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "INVALID_EVENT"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "SERVICE_CONNECTION_UP"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "SERVICE_CONNECTION_DOWN"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "INIT"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "INIT_RESPONSE"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "CLEANUP"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "START"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "CANCEL"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "ENABLE_AUDIO_CAPTURE_UPLOAD"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "DISABLE_AUDIO_CAPTURE_UPLOAD"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "REGISTER_BCAST_RECEIVER"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "DE_REGISTER_BCAST_RECEIVER"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "CLEAR_HISTORY"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "HISTORY_REQUEST"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "HISTORY_RESPONSE"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "BIND_USER"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "BIND_USER_RESPONSE"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "RESULT"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "SERVER_DOWN"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "PROV_SERVER_PARAMS"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "PERMISSION_ALERT_RESPONSE"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "CLOCK_SYNC_INFO_REGISTER"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "CLOCK_SYNC_INFO_DE_REGISTER"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "CLOCK_SYNC_INFO"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "MISC_FLAGS_NOTIFICATION"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "MISC_FLAGS_NOTIFICATION_REGISTER"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "MISC_FLAGS_NOTIFICATION_DE_REGISTER"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "NOTIFICATIONS_REGISTER"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "NOTIFICATIONS_DE_REGISTER"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "NOTIFICATION"

    aput-object v2, v0, v1

    sput-object v0, Ltv/alphonso/service/client/ASClientFSM;->fsmEventStrings:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Ltv/alphonso/service/client/ASClientNull;

    invoke-direct {v0}, Ltv/alphonso/service/client/ASClientNull;-><init>()V

    iput-object v0, p0, Ltv/alphonso/service/client/ASClientFSM;->mASClientNullState:Ltv/alphonso/service/client/ASClientNull;

    .line 78
    new-instance v0, Ltv/alphonso/service/client/ASClientInitInProgress;

    invoke-direct {v0}, Ltv/alphonso/service/client/ASClientInitInProgress;-><init>()V

    iput-object v0, p0, Ltv/alphonso/service/client/ASClientFSM;->mASClientInitInProgressState:Ltv/alphonso/service/client/ASClientInitInProgress;

    .line 79
    new-instance v0, Ltv/alphonso/service/client/ASClientInited;

    invoke-direct {v0}, Ltv/alphonso/service/client/ASClientInited;-><init>()V

    iput-object v0, p0, Ltv/alphonso/service/client/ASClientFSM;->mASClientInitedState:Ltv/alphonso/service/client/ASClientInited;

    .line 80
    new-instance v0, Ltv/alphonso/service/client/ASClientStarted;

    invoke-direct {v0}, Ltv/alphonso/service/client/ASClientStarted;-><init>()V

    iput-object v0, p0, Ltv/alphonso/service/client/ASClientFSM;->mASClientStartedState:Ltv/alphonso/service/client/ASClientStarted;

    return-void
.end method


# virtual methods
.method public processEvent(ILandroid/os/Bundle;)V
    .locals 4
    .param p1, "event"    # I
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 85
    sget-object v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->singletonObject:Ltv/alphonso/service/client/AlphonsoServiceClient;

    .line 87
    .local v0, "instance":Ltv/alphonso/service/client/AlphonsoServiceClient;
    if-lez p1, :cond_0

    const/16 v1, 0x1e

    if-lt p1, v1, :cond_1

    .line 90
    :cond_0
    sget-object v1, Ltv/alphonso/service/client/ASClientFSM;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received invalid event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :goto_0
    return-void

    .line 94
    :cond_1
    sget-object v1, Ltv/alphonso/service/client/ASClientFSM;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Processing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ltv/alphonso/service/client/ASClientFSM;->fsmEventStrings:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " event in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mState:Ltv/alphonso/service/client/ASClientState;

    invoke-virtual {v3}, Ltv/alphonso/service/client/ASClientState;->getStateString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " state."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 107
    :pswitch_0
    iget-object v1, v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mState:Ltv/alphonso/service/client/ASClientState;

    invoke-virtual {v1}, Ltv/alphonso/service/client/ASClientState;->onServiceConnectionUp()V

    goto :goto_0

    .line 99
    :pswitch_1
    iget-object v1, v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mState:Ltv/alphonso/service/client/ASClientState;

    invoke-virtual {v1, p2}, Ltv/alphonso/service/client/ASClientState;->onInit(Landroid/os/Bundle;)V

    goto :goto_0

    .line 103
    :pswitch_2
    iget-object v1, v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mState:Ltv/alphonso/service/client/ASClientState;

    invoke-virtual {v1, p2}, Ltv/alphonso/service/client/ASClientState;->onInitResponse(Landroid/os/Bundle;)V

    goto :goto_0

    .line 111
    :pswitch_3
    iget-object v1, v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mState:Ltv/alphonso/service/client/ASClientState;

    invoke-virtual {v1}, Ltv/alphonso/service/client/ASClientState;->onServiceConnectionDown()V

    goto :goto_0

    .line 115
    :pswitch_4
    iget-object v1, v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mState:Ltv/alphonso/service/client/ASClientState;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ltv/alphonso/service/client/ASClientState;->onCleanup(Z)V

    goto :goto_0

    .line 119
    :pswitch_5
    iget-object v1, v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mState:Ltv/alphonso/service/client/ASClientState;

    invoke-virtual {v1}, Ltv/alphonso/service/client/ASClientState;->onStart()V

    goto :goto_0

    .line 123
    :pswitch_6
    iget-object v1, v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mState:Ltv/alphonso/service/client/ASClientState;

    invoke-virtual {v1}, Ltv/alphonso/service/client/ASClientState;->onCancel()V

    goto :goto_0

    .line 127
    :pswitch_7
    iget-object v1, v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mState:Ltv/alphonso/service/client/ASClientState;

    invoke-virtual {v1}, Ltv/alphonso/service/client/ASClientState;->onEnableAudioCaptureUpload()V

    goto :goto_0

    .line 131
    :pswitch_8
    iget-object v1, v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mState:Ltv/alphonso/service/client/ASClientState;

    invoke-virtual {v1}, Ltv/alphonso/service/client/ASClientState;->onDisableAudioCaptureUpload()V

    goto :goto_0

    .line 135
    :pswitch_9
    iget-object v2, v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mState:Ltv/alphonso/service/client/ASClientState;

    const-string v1, "receiver"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/ResultReceiver;

    invoke-virtual {v2, v1}, Ltv/alphonso/service/client/ASClientState;->onRegisterResultsReceiver(Landroid/os/ResultReceiver;)V

    goto :goto_0

    .line 139
    :pswitch_a
    iget-object v1, v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mState:Ltv/alphonso/service/client/ASClientState;

    invoke-virtual {v1}, Ltv/alphonso/service/client/ASClientState;->onDeRegisterResultsReceiver()V

    goto/16 :goto_0

    .line 143
    :pswitch_b
    iget-object v1, v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mState:Ltv/alphonso/service/client/ASClientState;

    invoke-virtual {v1}, Ltv/alphonso/service/client/ASClientState;->onClearHistory()V

    goto/16 :goto_0

    .line 147
    :pswitch_c
    iget-object v1, v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mState:Ltv/alphonso/service/client/ASClientState;

    invoke-virtual {v1, p2}, Ltv/alphonso/service/client/ASClientState;->onHistoryRequest(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 151
    :pswitch_d
    iget-object v1, v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mState:Ltv/alphonso/service/client/ASClientState;

    invoke-virtual {v1, p2}, Ltv/alphonso/service/client/ASClientState;->onHistoryResponse(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 155
    :pswitch_e
    iget-object v1, v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mState:Ltv/alphonso/service/client/ASClientState;

    invoke-virtual {v1, p2}, Ltv/alphonso/service/client/ASClientState;->onBindUser(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 159
    :pswitch_f
    iget-object v1, v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mState:Ltv/alphonso/service/client/ASClientState;

    invoke-virtual {v1, p2}, Ltv/alphonso/service/client/ASClientState;->onBindUserResponse(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 163
    :pswitch_10
    iget-object v1, v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mState:Ltv/alphonso/service/client/ASClientState;

    invoke-virtual {v1, p2}, Ltv/alphonso/service/client/ASClientState;->onResult(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 167
    :pswitch_11
    iget-object v1, v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mState:Ltv/alphonso/service/client/ASClientState;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ltv/alphonso/service/client/ASClientState;->onCleanup(Z)V

    goto/16 :goto_0

    .line 171
    :pswitch_12
    iget-object v1, v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mState:Ltv/alphonso/service/client/ASClientState;

    invoke-virtual {v1, p2}, Ltv/alphonso/service/client/ASClientState;->onPermissionAlertResponse(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 175
    :pswitch_13
    iget-object v1, v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mState:Ltv/alphonso/service/client/ASClientState;

    invoke-virtual {v1, p2}, Ltv/alphonso/service/client/ASClientState;->onProvServerParams(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 179
    :pswitch_14
    iget-object v1, v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mState:Ltv/alphonso/service/client/ASClientState;

    invoke-virtual {v1, p2}, Ltv/alphonso/service/client/ASClientState;->onClockSyncInfoRegister(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 183
    :pswitch_15
    iget-object v1, v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mState:Ltv/alphonso/service/client/ASClientState;

    invoke-virtual {v1, p2}, Ltv/alphonso/service/client/ASClientState;->onClockSyncInfoDeRegister(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 187
    :pswitch_16
    iget-object v1, v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mState:Ltv/alphonso/service/client/ASClientState;

    invoke-virtual {v1, p2}, Ltv/alphonso/service/client/ASClientState;->onClockSyncInfo(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 191
    :pswitch_17
    iget-object v1, v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mState:Ltv/alphonso/service/client/ASClientState;

    invoke-virtual {v1, p2}, Ltv/alphonso/service/client/ASClientState;->onMiscFlagsNotification(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 195
    :pswitch_18
    iget-object v1, v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mState:Ltv/alphonso/service/client/ASClientState;

    invoke-virtual {v1, p2}, Ltv/alphonso/service/client/ASClientState;->onMiscFlagsNotificationRegister(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 199
    :pswitch_19
    iget-object v1, v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mState:Ltv/alphonso/service/client/ASClientState;

    invoke-virtual {v1, p2}, Ltv/alphonso/service/client/ASClientState;->onMiscFlagsNotificationDeRegister(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 203
    :pswitch_1a
    iget-object v1, v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mState:Ltv/alphonso/service/client/ASClientState;

    invoke-virtual {v1, p2}, Ltv/alphonso/service/client/ASClientState;->onNotificationsRegister(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 207
    :pswitch_1b
    iget-object v1, v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mState:Ltv/alphonso/service/client/ASClientState;

    invoke-virtual {v1, p2}, Ltv/alphonso/service/client/ASClientState;->onNotificationsDeRegister(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 211
    :pswitch_1c
    iget-object v1, v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mState:Ltv/alphonso/service/client/ASClientState;

    invoke-virtual {v1, p2}, Ltv/alphonso/service/client/ASClientState;->onNotification(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 96
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
    .end packed-switch
.end method

.method public processInvalidEvent(Ljava/lang/String;I)V
    .locals 3
    .param p1, "state"    # Ljava/lang/String;
    .param p2, "event"    # I

    .prologue
    .line 222
    sget-object v0, Ltv/alphonso/service/client/ASClientFSM;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid Event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ltv/alphonso/service/client/ASClientFSM;->fsmEventStrings:[Ljava/lang/String;

    aget-object v2, v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    return-void
.end method
