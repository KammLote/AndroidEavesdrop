.class public Ltv/alphonso/service/client/ASClientNull;
.super Ltv/alphonso/service/client/ASClientState;
.source "ASClientNull.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Ltv/alphonso/service/client/ASClientNull;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ltv/alphonso/service/client/ASClientNull;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ltv/alphonso/service/client/ASClientState;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ltv/alphonso/service/client/ASClientNull;Landroid/os/Bundle;Z)V
    .locals 0
    .param p0, "x0"    # Ltv/alphonso/service/client/ASClientNull;
    .param p1, "x1"    # Landroid/os/Bundle;
    .param p2, "x2"    # Z

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Ltv/alphonso/service/client/ASClientNull;->sendPermissionAlertResponse(Landroid/os/Bundle;Z)V

    return-void
.end method

.method private processInit(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "params"    # Landroid/os/Bundle;

    .prologue
    .line 245
    sget-object v1, Ltv/alphonso/service/client/AlphonsoServiceClient;->singletonObject:Ltv/alphonso/service/client/AlphonsoServiceClient;

    .line 247
    .local v1, "instance":Ltv/alphonso/service/client/AlphonsoServiceClient;
    const-string v2, "app_id"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Ltv/alphonso/service/client/AlphonsoServiceClient;->mAppId:Ljava/lang/String;

    .line 249
    const-string v2, "receiver"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/ResultReceiver;

    .line 250
    .local v0, "initReceiver":Landroid/os/ResultReceiver;
    invoke-static {v0}, Ltv/alphonso/service/client/AlphonsoServiceMediationClient;->isThisMyInitReceiver(Landroid/os/ResultReceiver;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 251
    iput-object v0, v1, Ltv/alphonso/service/client/AlphonsoServiceClient;->mInitResultReceiver:Landroid/os/ResultReceiver;

    .line 253
    :cond_0
    invoke-static {}, Ltv/alphonso/service/client/ASClientUtils;->bindToAlphonsoService()V

    .line 255
    iget-object v2, v1, Ltv/alphonso/service/client/AlphonsoServiceClient;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Ltv/alphonso/utils/PreferencesManager;->setMicPermissionFlag(Landroid/content/Context;Z)V

    .line 257
    iget-object v2, v1, Ltv/alphonso/service/client/AlphonsoServiceClient;->mFSM:Ltv/alphonso/service/client/ASClientFSM;

    iget-object v2, v2, Ltv/alphonso/service/client/ASClientFSM;->mASClientInitInProgressState:Ltv/alphonso/service/client/ASClientInitInProgress;

    iput-object v2, v1, Ltv/alphonso/service/client/AlphonsoServiceClient;->mState:Ltv/alphonso/service/client/ASClientState;

    .line 258
    return-void
.end method

.method private sendPermissionAlertResponse(Landroid/os/Bundle;Z)V
    .locals 6
    .param p1, "params"    # Landroid/os/Bundle;
    .param p2, "success"    # Z

    .prologue
    .line 207
    sget-object v1, Ltv/alphonso/service/client/AlphonsoServiceClient;->singletonObject:Ltv/alphonso/service/client/AlphonsoServiceClient;

    .line 209
    .local v1, "instance":Ltv/alphonso/service/client/AlphonsoServiceClient;
    const-string v3, "permission_alert_response"

    invoke-virtual {p1, v3, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 211
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 212
    .local v2, "msg":Landroid/os/Message;
    const/16 v3, 0x13

    iput v3, v2, Landroid/os/Message;->what:I

    .line 213
    invoke-virtual {v2, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 217
    :try_start_0
    iget-object v3, v1, Ltv/alphonso/service/client/AlphonsoServiceClient;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {v3, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    :goto_0
    return-void

    .line 219
    :catch_0
    move-exception v0

    .line 221
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v3, Ltv/alphonso/service/client/ASClientNull;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RemoteException "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public getStateString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    sget-object v0, Ltv/alphonso/service/client/ASClientNull;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public onBindUser(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "params"    # Landroid/os/Bundle;

    .prologue
    .line 186
    sget-object v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->singletonObject:Ltv/alphonso/service/client/AlphonsoServiceClient;

    .line 187
    .local v0, "instance":Ltv/alphonso/service/client/AlphonsoServiceClient;
    iget-object v1, v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mFSM:Ltv/alphonso/service/client/ASClientFSM;

    sget-object v2, Ltv/alphonso/service/client/ASClientNull;->TAG:Ljava/lang/String;

    const/16 v3, 0xf

    invoke-virtual {v1, v2, v3}, Ltv/alphonso/service/client/ASClientFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 188
    return-void
.end method

.method public onBindUserResponse(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "params"    # Landroid/os/Bundle;

    .prologue
    .line 193
    sget-object v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->singletonObject:Ltv/alphonso/service/client/AlphonsoServiceClient;

    .line 194
    .local v0, "instance":Ltv/alphonso/service/client/AlphonsoServiceClient;
    iget-object v1, v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mFSM:Ltv/alphonso/service/client/ASClientFSM;

    sget-object v2, Ltv/alphonso/service/client/ASClientNull;->TAG:Ljava/lang/String;

    const/16 v3, 0x10

    invoke-virtual {v1, v2, v3}, Ltv/alphonso/service/client/ASClientFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 195
    return-void
.end method

.method public onCancel()V
    .locals 4

    .prologue
    .line 116
    sget-object v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->singletonObject:Ltv/alphonso/service/client/AlphonsoServiceClient;

    .line 117
    .local v0, "instance":Ltv/alphonso/service/client/AlphonsoServiceClient;
    iget-object v1, v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mFSM:Ltv/alphonso/service/client/ASClientFSM;

    sget-object v2, Ltv/alphonso/service/client/ASClientNull;->TAG:Ljava/lang/String;

    const/4 v3, 0x7

    invoke-virtual {v1, v2, v3}, Ltv/alphonso/service/client/ASClientFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 118
    return-void
.end method

.method public onCleanup(Z)V
    .locals 4
    .param p1, "serverInitiated"    # Z

    .prologue
    .line 135
    sget-object v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->singletonObject:Ltv/alphonso/service/client/AlphonsoServiceClient;

    .line 137
    .local v0, "instance":Ltv/alphonso/service/client/AlphonsoServiceClient;
    invoke-static {}, Ltv/alphonso/service/client/ASClientUtils;->deRegisterResultsReceiver()V

    .line 139
    iget-object v1, v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mFSM:Ltv/alphonso/service/client/ASClientFSM;

    sget-object v2, Ltv/alphonso/service/client/ASClientNull;->TAG:Ljava/lang/String;

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v3}, Ltv/alphonso/service/client/ASClientFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 140
    return-void
.end method

.method public onClearHistory()V
    .locals 4

    .prologue
    .line 159
    sget-object v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->singletonObject:Ltv/alphonso/service/client/AlphonsoServiceClient;

    .line 160
    .local v0, "instance":Ltv/alphonso/service/client/AlphonsoServiceClient;
    iget-object v1, v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mFSM:Ltv/alphonso/service/client/ASClientFSM;

    sget-object v2, Ltv/alphonso/service/client/ASClientNull;->TAG:Ljava/lang/String;

    const/16 v3, 0xc

    invoke-virtual {v1, v2, v3}, Ltv/alphonso/service/client/ASClientFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 161
    return-void
.end method

.method public onClockSyncInfo(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "params"    # Landroid/os/Bundle;

    .prologue
    .line 284
    sget-object v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->singletonObject:Ltv/alphonso/service/client/AlphonsoServiceClient;

    .line 285
    .local v0, "instance":Ltv/alphonso/service/client/AlphonsoServiceClient;
    iget-object v1, v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mFSM:Ltv/alphonso/service/client/ASClientFSM;

    sget-object v2, Ltv/alphonso/service/client/ASClientNull;->TAG:Ljava/lang/String;

    const/16 v3, 0x17

    invoke-virtual {v1, v2, v3}, Ltv/alphonso/service/client/ASClientFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 286
    return-void
.end method

.method public onClockSyncInfoDeRegister(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "params"    # Landroid/os/Bundle;

    .prologue
    .line 277
    sget-object v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->singletonObject:Ltv/alphonso/service/client/AlphonsoServiceClient;

    .line 278
    .local v0, "instance":Ltv/alphonso/service/client/AlphonsoServiceClient;
    iget-object v1, v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mFSM:Ltv/alphonso/service/client/ASClientFSM;

    sget-object v2, Ltv/alphonso/service/client/ASClientNull;->TAG:Ljava/lang/String;

    const/16 v3, 0x16

    invoke-virtual {v1, v2, v3}, Ltv/alphonso/service/client/ASClientFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 279
    return-void
.end method

.method public onClockSyncInfoRegister(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "params"    # Landroid/os/Bundle;

    .prologue
    .line 270
    sget-object v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->singletonObject:Ltv/alphonso/service/client/AlphonsoServiceClient;

    .line 271
    .local v0, "instance":Ltv/alphonso/service/client/AlphonsoServiceClient;
    iget-object v1, v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mFSM:Ltv/alphonso/service/client/ASClientFSM;

    sget-object v2, Ltv/alphonso/service/client/ASClientNull;->TAG:Ljava/lang/String;

    const/16 v3, 0x15

    invoke-virtual {v1, v2, v3}, Ltv/alphonso/service/client/ASClientFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 272
    return-void
.end method

.method public onDeRegisterResultsReceiver()V
    .locals 0

    .prologue
    .line 129
    invoke-static {}, Ltv/alphonso/service/client/ASClientUtils;->deRegisterResultsReceiver()V

    .line 130
    return-void
.end method

.method public onDisableAudioCaptureUpload()V
    .locals 4

    .prologue
    .line 173
    sget-object v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->singletonObject:Ltv/alphonso/service/client/AlphonsoServiceClient;

    .line 174
    .local v0, "instance":Ltv/alphonso/service/client/AlphonsoServiceClient;
    iget-object v1, v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mFSM:Ltv/alphonso/service/client/ASClientFSM;

    sget-object v2, Ltv/alphonso/service/client/ASClientNull;->TAG:Ljava/lang/String;

    const/16 v3, 0x9

    invoke-virtual {v1, v2, v3}, Ltv/alphonso/service/client/ASClientFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 175
    return-void
.end method

.method public onEnableAudioCaptureUpload()V
    .locals 4

    .prologue
    .line 166
    sget-object v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->singletonObject:Ltv/alphonso/service/client/AlphonsoServiceClient;

    .line 167
    .local v0, "instance":Ltv/alphonso/service/client/AlphonsoServiceClient;
    iget-object v1, v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mFSM:Ltv/alphonso/service/client/ASClientFSM;

    sget-object v2, Ltv/alphonso/service/client/ASClientNull;->TAG:Ljava/lang/String;

    const/16 v3, 0x8

    invoke-virtual {v1, v2, v3}, Ltv/alphonso/service/client/ASClientFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 168
    return-void
.end method

.method public onHistoryRequest(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "params"    # Landroid/os/Bundle;

    .prologue
    .line 145
    sget-object v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->singletonObject:Ltv/alphonso/service/client/AlphonsoServiceClient;

    .line 146
    .local v0, "instance":Ltv/alphonso/service/client/AlphonsoServiceClient;
    iget-object v1, v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mFSM:Ltv/alphonso/service/client/ASClientFSM;

    sget-object v2, Ltv/alphonso/service/client/ASClientNull;->TAG:Ljava/lang/String;

    const/16 v3, 0xd

    invoke-virtual {v1, v2, v3}, Ltv/alphonso/service/client/ASClientFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 147
    return-void
.end method

.method public onHistoryResponse(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "params"    # Landroid/os/Bundle;

    .prologue
    .line 152
    sget-object v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->singletonObject:Ltv/alphonso/service/client/AlphonsoServiceClient;

    .line 153
    .local v0, "instance":Ltv/alphonso/service/client/AlphonsoServiceClient;
    iget-object v1, v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mFSM:Ltv/alphonso/service/client/ASClientFSM;

    sget-object v2, Ltv/alphonso/service/client/ASClientNull;->TAG:Ljava/lang/String;

    const/16 v3, 0xe

    invoke-virtual {v1, v2, v3}, Ltv/alphonso/service/client/ASClientFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 154
    return-void
.end method

.method public onInit(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "params"    # Landroid/os/Bundle;

    .prologue
    .line 39
    sget-object v3, Ltv/alphonso/service/client/AlphonsoServiceClient;->singletonObject:Ltv/alphonso/service/client/AlphonsoServiceClient;

    .line 41
    .local v3, "instance":Ltv/alphonso/service/client/AlphonsoServiceClient;
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-lt v4, v5, :cond_0

    iget-object v4, v3, Ltv/alphonso/service/client/AlphonsoServiceClient;->mActivity:Landroid/app/Activity;

    const-string v5, "android.permission.RECORD_AUDIO"

    .line 42
    invoke-static {v4, v5}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_0

    .line 45
    const/4 v4, 0x0

    invoke-direct {p0, p1, v4}, Ltv/alphonso/service/client/ASClientNull;->sendPermissionAlertResponse(Landroid/os/Bundle;Z)V

    .line 97
    :goto_0
    return-void

    .line 49
    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v4, v3, Ltv/alphonso/service/client/AlphonsoServiceClient;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 51
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    const-string v4, "micPermissionAlert"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, v3, Ltv/alphonso/service/client/AlphonsoServiceClient;->mContext:Landroid/content/Context;

    .line 52
    invoke-static {v4}, Ltv/alphonso/utils/PreferencesManager;->getMicPermissionFlag(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 54
    :cond_1
    const/4 v4, 0x1

    invoke-direct {p0, p1, v4}, Ltv/alphonso/service/client/ASClientNull;->sendPermissionAlertResponse(Landroid/os/Bundle;Z)V

    goto :goto_0

    .line 58
    :cond_2
    const-string v4, "OK"

    new-instance v5, Ltv/alphonso/service/client/ASClientNull$1;

    invoke-direct {v5, p0, p1}, Ltv/alphonso/service/client/ASClientNull$1;-><init>(Ltv/alphonso/service/client/ASClientNull;Landroid/os/Bundle;)V

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 66
    const-string v4, "Don\'t Allow"

    new-instance v5, Ltv/alphonso/service/client/ASClientNull$2;

    invoke-direct {v5, p0, p1}, Ltv/alphonso/service/client/ASClientNull$2;-><init>(Ltv/alphonso/service/client/ASClientNull;Landroid/os/Bundle;)V

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 74
    new-instance v4, Ltv/alphonso/service/client/ASClientNull$3;

    invoke-direct {v4, p0, p1}, Ltv/alphonso/service/client/ASClientNull$3;-><init>(Ltv/alphonso/service/client/ASClientNull;Landroid/os/Bundle;)V

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 83
    iget-object v4, v3, Ltv/alphonso/service/client/AlphonsoServiceClient;->mContext:Landroid/content/Context;

    invoke-static {v4}, Ltv/alphonso/utils/Utils;->getOnlyAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, "appName":Ljava/lang/String;
    if-nez v0, :cond_3

    .line 85
    const-string v4, "This app uses audio to detect TV ads and content and shows appropriate mobile ads"

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const-string v5, "This App Would Like to Access the Microphone"

    .line 86
    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 92
    :goto_1
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 94
    .local v2, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 88
    .end local v2    # "dialog":Landroid/app/AlertDialog;
    :cond_3
    const-string v4, "This app uses audio to detect TV ads and content and shows appropriate mobile ads"

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\" Would Like to Access the Microphone"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 89
    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_1
.end method

.method public onInitResponse(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "params"    # Landroid/os/Bundle;

    .prologue
    .line 102
    sget-object v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->singletonObject:Ltv/alphonso/service/client/AlphonsoServiceClient;

    .line 103
    .local v0, "instance":Ltv/alphonso/service/client/AlphonsoServiceClient;
    iget-object v1, v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mFSM:Ltv/alphonso/service/client/ASClientFSM;

    sget-object v2, Ltv/alphonso/service/client/ASClientNull;->TAG:Ljava/lang/String;

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Ltv/alphonso/service/client/ASClientFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 104
    return-void
.end method

.method public onMiscFlagsNotification(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "params"    # Landroid/os/Bundle;

    .prologue
    .line 291
    sget-object v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->singletonObject:Ltv/alphonso/service/client/AlphonsoServiceClient;

    .line 292
    .local v0, "instance":Ltv/alphonso/service/client/AlphonsoServiceClient;
    iget-object v1, v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mFSM:Ltv/alphonso/service/client/ASClientFSM;

    sget-object v2, Ltv/alphonso/service/client/ASClientNull;->TAG:Ljava/lang/String;

    const/16 v3, 0x18

    invoke-virtual {v1, v2, v3}, Ltv/alphonso/service/client/ASClientFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 293
    return-void
.end method

.method public onMiscFlagsNotificationDeRegister(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "params"    # Landroid/os/Bundle;

    .prologue
    .line 305
    sget-object v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->singletonObject:Ltv/alphonso/service/client/AlphonsoServiceClient;

    .line 306
    .local v0, "instance":Ltv/alphonso/service/client/AlphonsoServiceClient;
    iget-object v1, v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mFSM:Ltv/alphonso/service/client/ASClientFSM;

    sget-object v2, Ltv/alphonso/service/client/ASClientNull;->TAG:Ljava/lang/String;

    const/16 v3, 0x1a

    invoke-virtual {v1, v2, v3}, Ltv/alphonso/service/client/ASClientFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 307
    return-void
.end method

.method public onMiscFlagsNotificationRegister(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "params"    # Landroid/os/Bundle;

    .prologue
    .line 298
    sget-object v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->singletonObject:Ltv/alphonso/service/client/AlphonsoServiceClient;

    .line 299
    .local v0, "instance":Ltv/alphonso/service/client/AlphonsoServiceClient;
    iget-object v1, v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mFSM:Ltv/alphonso/service/client/ASClientFSM;

    sget-object v2, Ltv/alphonso/service/client/ASClientNull;->TAG:Ljava/lang/String;

    const/16 v3, 0x19

    invoke-virtual {v1, v2, v3}, Ltv/alphonso/service/client/ASClientFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 300
    return-void
.end method

.method public onNotification(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "params"    # Landroid/os/Bundle;

    .prologue
    .line 326
    sget-object v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->singletonObject:Ltv/alphonso/service/client/AlphonsoServiceClient;

    .line 327
    .local v0, "instance":Ltv/alphonso/service/client/AlphonsoServiceClient;
    iget-object v1, v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mFSM:Ltv/alphonso/service/client/ASClientFSM;

    sget-object v2, Ltv/alphonso/service/client/ASClientNull;->TAG:Ljava/lang/String;

    const/16 v3, 0x1c

    invoke-virtual {v1, v2, v3}, Ltv/alphonso/service/client/ASClientFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 328
    return-void
.end method

.method public onNotificationsDeRegister(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "params"    # Landroid/os/Bundle;

    .prologue
    .line 319
    sget-object v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->singletonObject:Ltv/alphonso/service/client/AlphonsoServiceClient;

    .line 320
    .local v0, "instance":Ltv/alphonso/service/client/AlphonsoServiceClient;
    iget-object v1, v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mFSM:Ltv/alphonso/service/client/ASClientFSM;

    sget-object v2, Ltv/alphonso/service/client/ASClientNull;->TAG:Ljava/lang/String;

    const/16 v3, 0x1c

    invoke-virtual {v1, v2, v3}, Ltv/alphonso/service/client/ASClientFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 321
    return-void
.end method

.method public onNotificationsRegister(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "params"    # Landroid/os/Bundle;

    .prologue
    .line 312
    sget-object v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->singletonObject:Ltv/alphonso/service/client/AlphonsoServiceClient;

    .line 313
    .local v0, "instance":Ltv/alphonso/service/client/AlphonsoServiceClient;
    iget-object v1, v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mFSM:Ltv/alphonso/service/client/ASClientFSM;

    sget-object v2, Ltv/alphonso/service/client/ASClientNull;->TAG:Ljava/lang/String;

    const/16 v3, 0x1b

    invoke-virtual {v1, v2, v3}, Ltv/alphonso/service/client/ASClientFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 314
    return-void
.end method

.method public onPermissionAlertResponse(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "params"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 229
    const-string v0, "permission_alert_response"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 231
    invoke-direct {p0, p1}, Ltv/alphonso/service/client/ASClientNull;->processInit(Landroid/os/Bundle;)V

    .line 241
    :cond_0
    :goto_0
    return-void

    .line 235
    :cond_1
    const-string v0, "receiver"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 236
    const-string v0, "receiver"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/ResultReceiver;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 238
    :cond_2
    invoke-static {}, Ltv/alphonso/service/client/AlphonsoServiceMediationClient;->isActive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 239
    sput-object v2, Ltv/alphonso/service/client/AlphonsoServiceClient;->singletonObject:Ltv/alphonso/service/client/AlphonsoServiceClient;

    goto :goto_0
.end method

.method public onProvServerParams(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "params"    # Landroid/os/Bundle;

    .prologue
    .line 263
    sget-object v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->singletonObject:Ltv/alphonso/service/client/AlphonsoServiceClient;

    .line 264
    .local v0, "instance":Ltv/alphonso/service/client/AlphonsoServiceClient;
    iget-object v1, v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mFSM:Ltv/alphonso/service/client/ASClientFSM;

    sget-object v2, Ltv/alphonso/service/client/ASClientNull;->TAG:Ljava/lang/String;

    const/16 v3, 0x14

    invoke-virtual {v1, v2, v3}, Ltv/alphonso/service/client/ASClientFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 265
    return-void
.end method

.method public onRegisterResultsReceiver(Landroid/os/ResultReceiver;)V
    .locals 0
    .param p1, "receiver"    # Landroid/os/ResultReceiver;

    .prologue
    .line 123
    invoke-static {p1}, Ltv/alphonso/service/client/ASClientUtils;->registerResultsReceiver(Landroid/os/ResultReceiver;)V

    .line 124
    return-void
.end method

.method public onResult(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "params"    # Landroid/os/Bundle;

    .prologue
    .line 200
    sget-object v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->singletonObject:Ltv/alphonso/service/client/AlphonsoServiceClient;

    .line 201
    .local v0, "instance":Ltv/alphonso/service/client/AlphonsoServiceClient;
    iget-object v1, v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mFSM:Ltv/alphonso/service/client/ASClientFSM;

    sget-object v2, Ltv/alphonso/service/client/ASClientNull;->TAG:Ljava/lang/String;

    const/16 v3, 0x11

    invoke-virtual {v1, v2, v3}, Ltv/alphonso/service/client/ASClientFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 202
    return-void
.end method

.method public onServiceConnectionDown()V
    .locals 4

    .prologue
    .line 32
    sget-object v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->singletonObject:Ltv/alphonso/service/client/AlphonsoServiceClient;

    .line 33
    .local v0, "instance":Ltv/alphonso/service/client/AlphonsoServiceClient;
    iget-object v1, v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mFSM:Ltv/alphonso/service/client/ASClientFSM;

    sget-object v2, Ltv/alphonso/service/client/ASClientNull;->TAG:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Ltv/alphonso/service/client/ASClientFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 34
    return-void
.end method

.method public onServiceConnectionUp()V
    .locals 4

    .prologue
    .line 25
    sget-object v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->singletonObject:Ltv/alphonso/service/client/AlphonsoServiceClient;

    .line 26
    .local v0, "instance":Ltv/alphonso/service/client/AlphonsoServiceClient;
    iget-object v1, v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mFSM:Ltv/alphonso/service/client/ASClientFSM;

    sget-object v2, Ltv/alphonso/service/client/ASClientNull;->TAG:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ltv/alphonso/service/client/ASClientFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 27
    return-void
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 109
    sget-object v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->singletonObject:Ltv/alphonso/service/client/AlphonsoServiceClient;

    .line 110
    .local v0, "instance":Ltv/alphonso/service/client/AlphonsoServiceClient;
    iget-object v1, v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mFSM:Ltv/alphonso/service/client/ASClientFSM;

    sget-object v2, Ltv/alphonso/service/client/ASClientNull;->TAG:Ljava/lang/String;

    const/4 v3, 0x6

    invoke-virtual {v1, v2, v3}, Ltv/alphonso/service/client/ASClientFSM;->processInvalidEvent(Ljava/lang/String;I)V

    .line 111
    return-void
.end method
