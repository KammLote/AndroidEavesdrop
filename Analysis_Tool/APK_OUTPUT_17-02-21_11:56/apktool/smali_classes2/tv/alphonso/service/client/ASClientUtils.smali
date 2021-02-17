.class public Ltv/alphonso/service/client/ASClientUtils;
.super Ljava/lang/Object;
.source "ASClientUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Ltv/alphonso/service/client/ASClientUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ltv/alphonso/service/client/ASClientUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addParamsHeader(Landroid/os/Bundle;)V
    .locals 3
    .param p0, "params"    # Landroid/os/Bundle;

    .prologue
    .line 296
    sget-object v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->singletonObject:Ltv/alphonso/service/client/AlphonsoServiceClient;

    .line 298
    .local v0, "instance":Ltv/alphonso/service/client/AlphonsoServiceClient;
    const-string v1, "app_id"

    iget-object v2, v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mAppId:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    const-string v1, "version"

    invoke-static {}, Ltv/alphonso/service/client/AlphonsoServiceClient;->version()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    return-void
.end method

.method public static bindToAlphonsoService()V
    .locals 7

    .prologue
    .line 35
    sget-object v2, Ltv/alphonso/service/client/AlphonsoServiceClient;->singletonObject:Ltv/alphonso/service/client/AlphonsoServiceClient;

    .line 37
    .local v2, "instance":Ltv/alphonso/service/client/AlphonsoServiceClient;
    sget-object v4, Ltv/alphonso/service/client/ASClientUtils;->TAG:Ljava/lang/String;

    const-string v5, "Binding to the AlphonsoService."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    invoke-static {}, Ltv/alphonso/service/client/ASClientUtils;->getRunnigAlphonsoServicePackage()Ljava/lang/String;

    move-result-object v3

    .line 40
    .local v3, "packageName":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 42
    iget-object v4, v2, Ltv/alphonso/service/client/AlphonsoServiceClient;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 43
    sget-object v4, Ltv/alphonso/service/client/ASClientUtils;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No running instance of AlphonsoService, using this app\'s package: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    :goto_0
    new-instance v0, Landroid/content/ComponentName;

    const-class v4, Ltv/alphonso/service/AlphonsoService;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .local v0, "component":Landroid/content/ComponentName;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 52
    .local v1, "i":Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 55
    iget-object v4, v2, Ltv/alphonso/service/client/AlphonsoServiceClient;->mContext:Landroid/content/Context;

    iget-object v5, v2, Ltv/alphonso/service/client/AlphonsoServiceClient;->mConnection:Landroid/content/ServiceConnection;

    const/4 v6, 0x1

    invoke-virtual {v4, v1, v5, v6}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 58
    return-void

    .line 47
    .end local v0    # "component":Landroid/content/ComponentName;
    .end local v1    # "i":Landroid/content/Intent;
    :cond_0
    sget-object v4, Ltv/alphonso/service/client/ASClientUtils;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Found a running instance of AlphonsoService, using that app\'s package: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static deRegisterResultsReceiver()V
    .locals 3

    .prologue
    .line 278
    sget-object v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->singletonObject:Ltv/alphonso/service/client/AlphonsoServiceClient;

    .line 280
    .local v0, "instance":Ltv/alphonso/service/client/AlphonsoServiceClient;
    iget-object v1, v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mIdReceiver:Landroid/os/ResultReceiver;

    if-eqz v1, :cond_0

    .line 282
    const/4 v1, 0x0

    iput-object v1, v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mIdReceiver:Landroid/os/ResultReceiver;

    .line 283
    sget-object v1, Ltv/alphonso/service/client/ASClientUtils;->TAG:Ljava/lang/String;

    const-string v2, "Un-Registered Result recevier."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    :cond_0
    return-void
.end method

.method private static getRunnigAlphonsoServicePackage()Ljava/lang/String;
    .locals 5

    .prologue
    .line 22
    sget-object v2, Ltv/alphonso/service/client/AlphonsoServiceClient;->singletonObject:Ltv/alphonso/service/client/AlphonsoServiceClient;

    iget-object v2, v2, Ltv/alphonso/service/client/AlphonsoServiceClient;->mContext:Landroid/content/Context;

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 23
    .local v0, "manager":Landroid/app/ActivityManager;
    const v2, 0x7fffffff

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 25
    .local v1, "service":Landroid/app/ActivityManager$RunningServiceInfo;
    const-class v3, Ltv/alphonso/service/AlphonsoService;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 27
    iget-object v2, v1, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 30
    .end local v1    # "service":Landroid/app/ActivityManager$RunningServiceInfo;
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static processBindUserResponse(Landroid/os/Bundle;)V
    .locals 5
    .param p0, "params"    # Landroid/os/Bundle;

    .prologue
    .line 338
    sget-object v1, Ltv/alphonso/service/client/AlphonsoServiceClient;->singletonObject:Ltv/alphonso/service/client/AlphonsoServiceClient;

    .line 340
    .local v1, "instance":Ltv/alphonso/service/client/AlphonsoServiceClient;
    const/4 v0, 0x0

    .line 342
    .local v0, "bindResult":Landroid/os/Bundle;
    const-string v2, "result_code"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    .line 344
    sget-object v2, Ltv/alphonso/service/client/ASClientUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received BIND_USER response with alp-uid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "alp_uid"

    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    const-string v2, "alp_uid"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Ltv/alphonso/service/client/AlphonsoServiceClient;->mAlpUid:Ljava/lang/String;

    .line 348
    iget-object v2, v1, Ltv/alphonso/service/client/AlphonsoServiceClient;->mBindResultReceiver:Landroid/os/ResultReceiver;

    if-eqz v2, :cond_0

    .line 350
    new-instance v0, Landroid/os/Bundle;

    .end local v0    # "bindResult":Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 351
    .restart local v0    # "bindResult":Landroid/os/Bundle;
    const-string v2, "alp_uid"

    iget-object v3, v1, Ltv/alphonso/service/client/AlphonsoServiceClient;->mAlpUid:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    :cond_0
    :goto_0
    iget-object v2, v1, Ltv/alphonso/service/client/AlphonsoServiceClient;->mBindResultReceiver:Landroid/os/ResultReceiver;

    if-eqz v2, :cond_1

    .line 359
    iget-object v2, v1, Ltv/alphonso/service/client/AlphonsoServiceClient;->mBindResultReceiver:Landroid/os/ResultReceiver;

    const-string v3, "result_code"

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 361
    :cond_1
    return-void

    .line 355
    :cond_2
    sget-object v2, Ltv/alphonso/service/client/ASClientUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received BIND_USER error with code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "result_code"

    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static processClockSyncInfo(Landroid/os/Bundle;)V
    .locals 3
    .param p0, "args"    # Landroid/os/Bundle;

    .prologue
    .line 447
    sget-object v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->singletonObject:Ltv/alphonso/service/client/AlphonsoServiceClient;

    .line 449
    .local v0, "instance":Ltv/alphonso/service/client/AlphonsoServiceClient;
    iget-object v1, v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mClockSyncInfoReceiver:Landroid/os/ResultReceiver;

    if-eqz v1, :cond_0

    .line 450
    iget-object v1, v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mClockSyncInfoReceiver:Landroid/os/ResultReceiver;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 451
    :cond_0
    return-void
.end method

.method public static processHistoryResponse(Landroid/os/Bundle;)V
    .locals 3
    .param p0, "params"    # Landroid/os/Bundle;

    .prologue
    .line 289
    sget-object v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->singletonObject:Ltv/alphonso/service/client/AlphonsoServiceClient;

    .line 291
    .local v0, "instance":Ltv/alphonso/service/client/AlphonsoServiceClient;
    iget-object v1, v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mHistoryReceiver:Landroid/os/ResultReceiver;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 292
    return-void
.end method

.method public static processHistoryResponse(Landroid/os/Message;)V
    .locals 7
    .param p0, "msg"    # Landroid/os/Message;

    .prologue
    .line 106
    sget-object v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->singletonObject:Ltv/alphonso/service/client/AlphonsoServiceClient;

    .line 108
    .local v0, "instance":Ltv/alphonso/service/client/AlphonsoServiceClient;
    invoke-virtual {p0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 110
    .local v2, "responseParams":Landroid/os/Bundle;
    const-string v4, "result_code"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v3

    .line 112
    .local v3, "resultCode":B
    if-nez v3, :cond_0

    .line 114
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 115
    .local v1, "response":Landroid/os/Bundle;
    const-string v4, "id_list"

    const-string v5, "history"

    .line 116
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 115
    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    iget-object v4, v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mHistoryReceiver:Landroid/os/ResultReceiver;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 124
    .end local v1    # "response":Landroid/os/Bundle;
    :goto_0
    return-void

    .line 122
    :cond_0
    iget-object v4, v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mHistoryReceiver:Landroid/os/ResultReceiver;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    goto :goto_0
.end method

.method public static processMiscFlagsNotification(Landroid/os/Bundle;)V
    .locals 6
    .param p0, "args"    # Landroid/os/Bundle;

    .prologue
    .line 510
    sget-object v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->singletonObject:Ltv/alphonso/service/client/AlphonsoServiceClient;

    .line 512
    .local v0, "instance":Ltv/alphonso/service/client/AlphonsoServiceClient;
    iget-object v1, v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mMiscFlagsNotificationReceiver:Landroid/os/ResultReceiver;

    if-eqz v1, :cond_0

    .line 514
    sget-object v1, Ltv/alphonso/service/client/ASClientUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending MISC_FLAGS_NOTIFICATION message to Client: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "misc_flags"

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    iget-object v1, v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mMiscFlagsNotificationReceiver:Landroid/os/ResultReceiver;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 518
    :cond_0
    return-void
.end method

.method public static processNotification(Landroid/os/Bundle;)V
    .locals 4
    .param p0, "args"    # Landroid/os/Bundle;

    .prologue
    .line 579
    sget-object v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->singletonObject:Ltv/alphonso/service/client/AlphonsoServiceClient;

    .line 581
    .local v0, "instance":Ltv/alphonso/service/client/AlphonsoServiceClient;
    iget-object v1, v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mNotificationsReceiver:Landroid/os/ResultReceiver;

    if-eqz v1, :cond_0

    .line 583
    sget-object v1, Ltv/alphonso/service/client/ASClientUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending NOTIFICATION message to Client: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    iget-object v1, v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mNotificationsReceiver:Landroid/os/ResultReceiver;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 587
    :cond_0
    return-void
.end method

.method public static registerResultsReceiver(Landroid/os/ResultReceiver;)V
    .locals 3
    .param p0, "receiver"    # Landroid/os/ResultReceiver;

    .prologue
    .line 269
    sget-object v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->singletonObject:Ltv/alphonso/service/client/AlphonsoServiceClient;

    .line 271
    .local v0, "instance":Ltv/alphonso/service/client/AlphonsoServiceClient;
    iput-object p0, v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mIdReceiver:Landroid/os/ResultReceiver;

    .line 272
    sget-object v1, Ltv/alphonso/service/client/ASClientUtils;->TAG:Ljava/lang/String;

    const-string v2, "Registered Bcast recevier."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    return-void
.end method

.method public static sendAudioCaptureUploadDisable()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 198
    sget-object v1, Ltv/alphonso/service/client/AlphonsoServiceClient;->singletonObject:Ltv/alphonso/service/client/AlphonsoServiceClient;

    .line 200
    .local v1, "instance":Ltv/alphonso/service/client/AlphonsoServiceClient;
    sget-object v4, Ltv/alphonso/service/client/ASClientUtils;->TAG:Ljava/lang/String;

    const-string v5, "Sending DISABLE_AUDIO_CAPTURE_UPLOAD message to AlphonsoService."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    const/4 v4, 0x0

    const/16 v5, 0xd

    invoke-static {v4, v5, v6, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v2

    .line 203
    .local v2, "msg":Landroid/os/Message;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 204
    .local v3, "params":Landroid/os/Bundle;
    invoke-static {v3}, Ltv/alphonso/service/client/ASClientUtils;->addParamsHeader(Landroid/os/Bundle;)V

    .line 206
    iget-object v4, v1, Ltv/alphonso/service/client/AlphonsoServiceClient;->mMessenger:Landroid/os/Messenger;

    iput-object v4, v2, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 207
    invoke-virtual {v2, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 210
    :try_start_0
    iget-object v4, v1, Ltv/alphonso/service/client/AlphonsoServiceClient;->mService:Landroid/os/Messenger;

    invoke-virtual {v4, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    :goto_0
    return-void

    .line 212
    :catch_0
    move-exception v0

    .line 214
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static sendAudioCaptureUploadEnable()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 175
    sget-object v1, Ltv/alphonso/service/client/AlphonsoServiceClient;->singletonObject:Ltv/alphonso/service/client/AlphonsoServiceClient;

    .line 177
    .local v1, "instance":Ltv/alphonso/service/client/AlphonsoServiceClient;
    sget-object v4, Ltv/alphonso/service/client/ASClientUtils;->TAG:Ljava/lang/String;

    const-string v5, "Sending ENABLE_AUDIO_CAPTURE_UPLOAD message to AlphonsoService."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    const/4 v4, 0x0

    const/16 v5, 0xc

    invoke-static {v4, v5, v6, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v2

    .line 180
    .local v2, "msg":Landroid/os/Message;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 181
    .local v3, "params":Landroid/os/Bundle;
    invoke-static {v3}, Ltv/alphonso/service/client/ASClientUtils;->addParamsHeader(Landroid/os/Bundle;)V

    .line 183
    iget-object v4, v1, Ltv/alphonso/service/client/AlphonsoServiceClient;->mMessenger:Landroid/os/Messenger;

    iput-object v4, v2, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 184
    invoke-virtual {v2, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 187
    :try_start_0
    iget-object v4, v1, Ltv/alphonso/service/client/AlphonsoServiceClient;->mService:Landroid/os/Messenger;

    invoke-virtual {v4, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    :goto_0
    return-void

    .line 189
    :catch_0
    move-exception v0

    .line 191
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static sendBindUserRequest(Landroid/os/Bundle;)V
    .locals 8
    .param p0, "args"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    .line 305
    sget-object v2, Ltv/alphonso/service/client/AlphonsoServiceClient;->singletonObject:Ltv/alphonso/service/client/AlphonsoServiceClient;

    .line 307
    .local v2, "instance":Ltv/alphonso/service/client/AlphonsoServiceClient;
    sget-object v5, Ltv/alphonso/service/client/ASClientUtils;->TAG:Ljava/lang/String;

    const-string v6, "Sending BIND_USER message to AlphonsoService."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    const/4 v5, 0x0

    const/16 v6, 0x15

    invoke-static {v5, v6, v7, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v3

    .line 310
    .local v3, "msg":Landroid/os/Message;
    iget-object v5, v2, Ltv/alphonso/service/client/AlphonsoServiceClient;->mMessenger:Landroid/os/Messenger;

    iput-object v5, v3, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 312
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 313
    .local v4, "params":Landroid/os/Bundle;
    const-string v5, "type"

    const-string v6, "type"

    invoke-virtual {p0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    const-string v5, "handle"

    const-string v6, "handle"

    invoke-virtual {p0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    const-string v5, "token"

    const-string v6, "token"

    invoke-virtual {p0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    const-string v5, "receiver"

    invoke-virtual {p0, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 319
    const-string v5, "receiver"

    invoke-virtual {p0, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/ResultReceiver;

    .line 320
    .local v0, "bindReceiver":Landroid/os/ResultReceiver;
    iput-object v0, v2, Ltv/alphonso/service/client/AlphonsoServiceClient;->mBindResultReceiver:Landroid/os/ResultReceiver;

    .line 323
    .end local v0    # "bindReceiver":Landroid/os/ResultReceiver;
    :cond_0
    invoke-static {v4}, Ltv/alphonso/service/client/ASClientUtils;->addParamsHeader(Landroid/os/Bundle;)V

    .line 324
    invoke-virtual {v3, v4}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 328
    :try_start_0
    iget-object v5, v2, Ltv/alphonso/service/client/AlphonsoServiceClient;->mService:Landroid/os/Messenger;

    invoke-virtual {v5, v3}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 334
    :goto_0
    return-void

    .line 330
    :catch_0
    move-exception v1

    .line 332
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static sendCancel()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 152
    sget-object v1, Ltv/alphonso/service/client/AlphonsoServiceClient;->singletonObject:Ltv/alphonso/service/client/AlphonsoServiceClient;

    .line 154
    .local v1, "instance":Ltv/alphonso/service/client/AlphonsoServiceClient;
    sget-object v4, Ltv/alphonso/service/client/ASClientUtils;->TAG:Ljava/lang/String;

    const-string v5, "Sending CANCEL message to AlphonsoService."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    const/4 v4, 0x0

    const/16 v5, 0xb

    invoke-static {v4, v5, v6, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v2

    .line 157
    .local v2, "msg":Landroid/os/Message;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 158
    .local v3, "params":Landroid/os/Bundle;
    invoke-static {v3}, Ltv/alphonso/service/client/ASClientUtils;->addParamsHeader(Landroid/os/Bundle;)V

    .line 160
    iget-object v4, v1, Ltv/alphonso/service/client/AlphonsoServiceClient;->mMessenger:Landroid/os/Messenger;

    iput-object v4, v2, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 161
    invoke-virtual {v2, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 164
    :try_start_0
    iget-object v4, v1, Ltv/alphonso/service/client/AlphonsoServiceClient;->mService:Landroid/os/Messenger;

    invoke-virtual {v4, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    :goto_0
    return-void

    .line 166
    :catch_0
    move-exception v0

    .line 168
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static sendCleanupAndUnBindFromAlphonsoService()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 63
    sget-object v1, Ltv/alphonso/service/client/AlphonsoServiceClient;->singletonObject:Ltv/alphonso/service/client/AlphonsoServiceClient;

    .line 64
    .local v1, "instance":Ltv/alphonso/service/client/AlphonsoServiceClient;
    iget v4, v1, Ltv/alphonso/service/client/AlphonsoServiceClient;->mFlags:I

    sget v5, Ltv/alphonso/service/client/AlphonsoServiceClient;->CONNECTION_UP:I

    and-int/2addr v4, v5

    sget v5, Ltv/alphonso/service/client/AlphonsoServiceClient;->CONNECTION_UP:I

    if-ne v4, v5, :cond_0

    .line 66
    sget-object v4, Ltv/alphonso/service/client/ASClientUtils;->TAG:Ljava/lang/String;

    const-string v5, "Sending CLEANUP message to AlphonsoService."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-static {v4, v5, v6, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v2

    .line 69
    .local v2, "msg":Landroid/os/Message;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 70
    .local v3, "params":Landroid/os/Bundle;
    invoke-static {v3}, Ltv/alphonso/service/client/ASClientUtils;->addParamsHeader(Landroid/os/Bundle;)V

    .line 72
    iget-object v4, v1, Ltv/alphonso/service/client/AlphonsoServiceClient;->mMessenger:Landroid/os/Messenger;

    iput-object v4, v2, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 73
    invoke-virtual {v2, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 77
    :try_start_0
    iget-object v4, v1, Ltv/alphonso/service/client/AlphonsoServiceClient;->mService:Landroid/os/Messenger;

    invoke-virtual {v4, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    .end local v2    # "msg":Landroid/os/Message;
    .end local v3    # "params":Landroid/os/Bundle;
    :cond_0
    :goto_0
    sget-object v4, Ltv/alphonso/service/client/ASClientUtils;->TAG:Ljava/lang/String;

    const-string v5, "Un-binding from the AlphonsoService."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object v4, v1, Ltv/alphonso/service/client/AlphonsoServiceClient;->mContext:Landroid/content/Context;

    iget-object v5, v1, Ltv/alphonso/service/client/AlphonsoServiceClient;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v4, v5}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 87
    return-void

    .line 79
    .restart local v2    # "msg":Landroid/os/Message;
    .restart local v3    # "params":Landroid/os/Bundle;
    :catch_0
    move-exception v0

    .line 81
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static sendClearHistory()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 246
    sget-object v1, Ltv/alphonso/service/client/AlphonsoServiceClient;->singletonObject:Ltv/alphonso/service/client/AlphonsoServiceClient;

    .line 248
    .local v1, "instance":Ltv/alphonso/service/client/AlphonsoServiceClient;
    sget-object v4, Ltv/alphonso/service/client/ASClientUtils;->TAG:Ljava/lang/String;

    const-string v5, "Sending CLEAR_HISTORY message to AlphonsoService."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    const/4 v4, 0x0

    const/16 v5, 0x10

    invoke-static {v4, v5, v6, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v2

    .line 251
    .local v2, "msg":Landroid/os/Message;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 252
    .local v3, "params":Landroid/os/Bundle;
    invoke-static {v3}, Ltv/alphonso/service/client/ASClientUtils;->addParamsHeader(Landroid/os/Bundle;)V

    .line 254
    iget-object v4, v1, Ltv/alphonso/service/client/AlphonsoServiceClient;->mMessenger:Landroid/os/Messenger;

    iput-object v4, v2, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 255
    invoke-virtual {v2, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 258
    :try_start_0
    iget-object v4, v1, Ltv/alphonso/service/client/AlphonsoServiceClient;->mService:Landroid/os/Messenger;

    invoke-virtual {v4, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    :goto_0
    return-void

    .line 260
    :catch_0
    move-exception v0

    .line 262
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static sendClockSyncInfoDeRegisterRequest(Landroid/os/Bundle;)V
    .locals 8
    .param p0, "args"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 420
    sget-object v1, Ltv/alphonso/service/client/AlphonsoServiceClient;->singletonObject:Ltv/alphonso/service/client/AlphonsoServiceClient;

    .line 422
    .local v1, "instance":Ltv/alphonso/service/client/AlphonsoServiceClient;
    iput-object v7, v1, Ltv/alphonso/service/client/AlphonsoServiceClient;->mClockSyncInfoReceiver:Landroid/os/ResultReceiver;

    .line 424
    sget-object v4, Ltv/alphonso/service/client/ASClientUtils;->TAG:Ljava/lang/String;

    const-string v5, "Sending CLOCK_SYNC_INFO_DE_REGISTER message to AlphonsoService."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    const/16 v4, 0x1e

    invoke-static {v7, v4, v6, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v2

    .line 427
    .local v2, "msg":Landroid/os/Message;
    iget-object v4, v1, Ltv/alphonso/service/client/AlphonsoServiceClient;->mMessenger:Landroid/os/Messenger;

    iput-object v4, v2, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 429
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 431
    .local v3, "params":Landroid/os/Bundle;
    invoke-static {v3}, Ltv/alphonso/service/client/ASClientUtils;->addParamsHeader(Landroid/os/Bundle;)V

    .line 432
    invoke-virtual {v2, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 436
    :try_start_0
    iget-object v4, v1, Ltv/alphonso/service/client/AlphonsoServiceClient;->mService:Landroid/os/Messenger;

    invoke-virtual {v4, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 442
    :goto_0
    return-void

    .line 438
    :catch_0
    move-exception v0

    .line 440
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static sendClockSyncInfoRegisterRequest(Landroid/os/Bundle;)V
    .locals 7
    .param p0, "args"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 393
    sget-object v1, Ltv/alphonso/service/client/AlphonsoServiceClient;->singletonObject:Ltv/alphonso/service/client/AlphonsoServiceClient;

    .line 395
    .local v1, "instance":Ltv/alphonso/service/client/AlphonsoServiceClient;
    const-string v4, "receiver"

    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/os/ResultReceiver;

    iput-object v4, v1, Ltv/alphonso/service/client/AlphonsoServiceClient;->mClockSyncInfoReceiver:Landroid/os/ResultReceiver;

    .line 397
    sget-object v4, Ltv/alphonso/service/client/ASClientUtils;->TAG:Ljava/lang/String;

    const-string v5, "Sending CLOCK_SYNC_INFO_REGISTER message to AlphonsoService."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    const/4 v4, 0x0

    const/16 v5, 0x1d

    invoke-static {v4, v5, v6, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v2

    .line 400
    .local v2, "msg":Landroid/os/Message;
    iget-object v4, v1, Ltv/alphonso/service/client/AlphonsoServiceClient;->mMessenger:Landroid/os/Messenger;

    iput-object v4, v2, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 402
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 404
    .local v3, "params":Landroid/os/Bundle;
    invoke-static {v3}, Ltv/alphonso/service/client/ASClientUtils;->addParamsHeader(Landroid/os/Bundle;)V

    .line 405
    invoke-virtual {v2, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 409
    :try_start_0
    iget-object v4, v1, Ltv/alphonso/service/client/AlphonsoServiceClient;->mService:Landroid/os/Messenger;

    invoke-virtual {v4, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 415
    :goto_0
    return-void

    .line 411
    :catch_0
    move-exception v0

    .line 413
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static sendHistoryRequest(J)V
    .locals 8
    .param p0, "interval"    # J

    .prologue
    const/4 v6, 0x0

    .line 221
    sget-object v1, Ltv/alphonso/service/client/AlphonsoServiceClient;->singletonObject:Ltv/alphonso/service/client/AlphonsoServiceClient;

    .line 223
    .local v1, "instance":Ltv/alphonso/service/client/AlphonsoServiceClient;
    sget-object v4, Ltv/alphonso/service/client/ASClientUtils;->TAG:Ljava/lang/String;

    const-string v5, "Sending HISTORY_REQUEST message to AlphonsoService."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    const/4 v4, 0x0

    const/16 v5, 0x12

    invoke-static {v4, v5, v6, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v2

    .line 226
    .local v2, "msg":Landroid/os/Message;
    iget-object v4, v1, Ltv/alphonso/service/client/AlphonsoServiceClient;->mMessenger:Landroid/os/Messenger;

    iput-object v4, v2, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 228
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 229
    .local v3, "params":Landroid/os/Bundle;
    invoke-static {v3}, Ltv/alphonso/service/client/ASClientUtils;->addParamsHeader(Landroid/os/Bundle;)V

    .line 230
    const-string v4, "interval"

    invoke-virtual {v3, v4, p0, p1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 231
    invoke-virtual {v2, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 235
    :try_start_0
    iget-object v4, v1, Ltv/alphonso/service/client/AlphonsoServiceClient;->mService:Landroid/os/Messenger;

    invoke-virtual {v4, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    :goto_0
    return-void

    .line 237
    :catch_0
    move-exception v0

    .line 239
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static sendInitSuccessResponse()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 92
    sget-object v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->singletonObject:Ltv/alphonso/service/client/AlphonsoServiceClient;

    .line 94
    .local v0, "instance":Ltv/alphonso/service/client/AlphonsoServiceClient;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 95
    .local v1, "response":Landroid/os/Bundle;
    const-string v2, "alp_uid"

    iget-object v3, v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mAlpUid:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iget-object v2, v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mInitResultReceiver:Landroid/os/ResultReceiver;

    if-eqz v2, :cond_0

    .line 98
    iget-object v2, v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mInitResultReceiver:Landroid/os/ResultReceiver;

    invoke-virtual {v2, v4, v1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 100
    :cond_0
    invoke-static {}, Ltv/alphonso/service/client/AlphonsoServiceMediationClient;->isActive()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 101
    sget-object v2, Ltv/alphonso/service/client/AlphonsoServiceMediationClient;->singletonObject:Ltv/alphonso/service/client/AlphonsoServiceMediationClient;

    iget-object v2, v2, Ltv/alphonso/service/client/AlphonsoServiceMediationClient;->mInitReceiver:Landroid/os/ResultReceiver;

    invoke-virtual {v2, v4, v1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 102
    :cond_1
    return-void
.end method

.method public static sendMiscFlagsNotificationDeRegisterRequest(Landroid/os/Bundle;)V
    .locals 8
    .param p0, "args"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 483
    sget-object v1, Ltv/alphonso/service/client/AlphonsoServiceClient;->singletonObject:Ltv/alphonso/service/client/AlphonsoServiceClient;

    .line 485
    .local v1, "instance":Ltv/alphonso/service/client/AlphonsoServiceClient;
    iput-object v7, v1, Ltv/alphonso/service/client/AlphonsoServiceClient;->mMiscFlagsNotificationReceiver:Landroid/os/ResultReceiver;

    .line 487
    sget-object v4, Ltv/alphonso/service/client/ASClientUtils;->TAG:Ljava/lang/String;

    const-string v5, "Sending MISC_FLAGS_NOTIFICATION_DE_REGISTER message to AlphonsoService."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    const/16 v4, 0x21

    invoke-static {v7, v4, v6, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v2

    .line 490
    .local v2, "msg":Landroid/os/Message;
    iget-object v4, v1, Ltv/alphonso/service/client/AlphonsoServiceClient;->mMessenger:Landroid/os/Messenger;

    iput-object v4, v2, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 492
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 494
    .local v3, "params":Landroid/os/Bundle;
    invoke-static {v3}, Ltv/alphonso/service/client/ASClientUtils;->addParamsHeader(Landroid/os/Bundle;)V

    .line 495
    invoke-virtual {v2, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 499
    :try_start_0
    iget-object v4, v1, Ltv/alphonso/service/client/AlphonsoServiceClient;->mService:Landroid/os/Messenger;

    invoke-virtual {v4, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 505
    :goto_0
    return-void

    .line 501
    :catch_0
    move-exception v0

    .line 503
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static sendMiscFlagsNotificationRegisterRequest(Landroid/os/Bundle;)V
    .locals 7
    .param p0, "args"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 456
    sget-object v1, Ltv/alphonso/service/client/AlphonsoServiceClient;->singletonObject:Ltv/alphonso/service/client/AlphonsoServiceClient;

    .line 458
    .local v1, "instance":Ltv/alphonso/service/client/AlphonsoServiceClient;
    const-string v4, "receiver"

    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/os/ResultReceiver;

    iput-object v4, v1, Ltv/alphonso/service/client/AlphonsoServiceClient;->mMiscFlagsNotificationReceiver:Landroid/os/ResultReceiver;

    .line 460
    sget-object v4, Ltv/alphonso/service/client/ASClientUtils;->TAG:Ljava/lang/String;

    const-string v5, "Sending MISC_FLAGS_NOTIFICATION_REGISTER message to AlphonsoService."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    const/4 v4, 0x0

    const/16 v5, 0x20

    invoke-static {v4, v5, v6, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v2

    .line 463
    .local v2, "msg":Landroid/os/Message;
    iget-object v4, v1, Ltv/alphonso/service/client/AlphonsoServiceClient;->mMessenger:Landroid/os/Messenger;

    iput-object v4, v2, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 465
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 467
    .local v3, "params":Landroid/os/Bundle;
    invoke-static {v3}, Ltv/alphonso/service/client/ASClientUtils;->addParamsHeader(Landroid/os/Bundle;)V

    .line 468
    invoke-virtual {v2, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 472
    :try_start_0
    iget-object v4, v1, Ltv/alphonso/service/client/AlphonsoServiceClient;->mService:Landroid/os/Messenger;

    invoke-virtual {v4, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 478
    :goto_0
    return-void

    .line 474
    :catch_0
    move-exception v0

    .line 476
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static sendNotificationsDeRegisterRequest(Landroid/os/Bundle;)V
    .locals 8
    .param p0, "args"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 551
    sget-object v1, Ltv/alphonso/service/client/AlphonsoServiceClient;->singletonObject:Ltv/alphonso/service/client/AlphonsoServiceClient;

    .line 553
    .local v1, "instance":Ltv/alphonso/service/client/AlphonsoServiceClient;
    iput-object v7, v1, Ltv/alphonso/service/client/AlphonsoServiceClient;->mNotificationsReceiver:Landroid/os/ResultReceiver;

    .line 555
    sget-object v4, Ltv/alphonso/service/client/ASClientUtils;->TAG:Ljava/lang/String;

    const-string v5, "Sending NOTIFICATIONS_DE_REGISTER message to AlphonsoService."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    const/16 v4, 0x24

    invoke-static {v7, v4, v6, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v2

    .line 558
    .local v2, "msg":Landroid/os/Message;
    iget-object v4, v1, Ltv/alphonso/service/client/AlphonsoServiceClient;->mMessenger:Landroid/os/Messenger;

    iput-object v4, v2, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 560
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 561
    .local v3, "params":Landroid/os/Bundle;
    const-string v4, "flags"

    const-string v5, "flags"

    invoke-virtual {p0, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 563
    invoke-static {v3}, Ltv/alphonso/service/client/ASClientUtils;->addParamsHeader(Landroid/os/Bundle;)V

    .line 564
    invoke-virtual {v2, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 568
    :try_start_0
    iget-object v4, v1, Ltv/alphonso/service/client/AlphonsoServiceClient;->mService:Landroid/os/Messenger;

    invoke-virtual {v4, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 574
    :goto_0
    return-void

    .line 570
    :catch_0
    move-exception v0

    .line 572
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static sendNotificationsRegisterRequest(Landroid/os/Bundle;)V
    .locals 8
    .param p0, "args"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 523
    sget-object v1, Ltv/alphonso/service/client/AlphonsoServiceClient;->singletonObject:Ltv/alphonso/service/client/AlphonsoServiceClient;

    .line 525
    .local v1, "instance":Ltv/alphonso/service/client/AlphonsoServiceClient;
    const-string v4, "receiver"

    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/os/ResultReceiver;

    iput-object v4, v1, Ltv/alphonso/service/client/AlphonsoServiceClient;->mNotificationsReceiver:Landroid/os/ResultReceiver;

    .line 527
    sget-object v4, Ltv/alphonso/service/client/ASClientUtils;->TAG:Ljava/lang/String;

    const-string v5, "Sending NOTIFICATIONS_REGISTER message to AlphonsoService."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    const/4 v4, 0x0

    const/16 v5, 0x23

    invoke-static {v4, v5, v6, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v2

    .line 530
    .local v2, "msg":Landroid/os/Message;
    iget-object v4, v1, Ltv/alphonso/service/client/AlphonsoServiceClient;->mMessenger:Landroid/os/Messenger;

    iput-object v4, v2, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 532
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 533
    .local v3, "params":Landroid/os/Bundle;
    const-string v4, "flags"

    const-string v5, "flags"

    invoke-virtual {p0, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 535
    invoke-static {v3}, Ltv/alphonso/service/client/ASClientUtils;->addParamsHeader(Landroid/os/Bundle;)V

    .line 536
    invoke-virtual {v2, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 540
    :try_start_0
    iget-object v4, v1, Ltv/alphonso/service/client/AlphonsoServiceClient;->mService:Landroid/os/Messenger;

    invoke-virtual {v4, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 546
    :goto_0
    return-void

    .line 542
    :catch_0
    move-exception v0

    .line 544
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static sendProvServerParamsRequest(Landroid/os/Bundle;)V
    .locals 7
    .param p0, "args"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 366
    sget-object v1, Ltv/alphonso/service/client/AlphonsoServiceClient;->singletonObject:Ltv/alphonso/service/client/AlphonsoServiceClient;

    .line 368
    .local v1, "instance":Ltv/alphonso/service/client/AlphonsoServiceClient;
    sget-object v4, Ltv/alphonso/service/client/ASClientUtils;->TAG:Ljava/lang/String;

    const-string v5, "Sending PROV_SERVER_PARAMS message to AlphonsoService."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    const/4 v4, 0x0

    const/16 v5, 0x1a

    invoke-static {v4, v5, v6, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v2

    .line 371
    .local v2, "msg":Landroid/os/Message;
    iget-object v4, v1, Ltv/alphonso/service/client/AlphonsoServiceClient;->mMessenger:Landroid/os/Messenger;

    iput-object v4, v2, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 373
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 374
    .local v3, "params":Landroid/os/Bundle;
    const-string v4, "prov_server_domain"

    const-string v5, "prov_server_domain"

    invoke-virtual {p0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    const-string v4, "prov_server_port"

    const-string v5, "prov_server_port"

    invoke-virtual {p0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    invoke-static {v3}, Ltv/alphonso/service/client/ASClientUtils;->addParamsHeader(Landroid/os/Bundle;)V

    .line 378
    invoke-virtual {v2, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 382
    :try_start_0
    iget-object v4, v1, Ltv/alphonso/service/client/AlphonsoServiceClient;->mService:Landroid/os/Messenger;

    invoke-virtual {v4, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 388
    :goto_0
    return-void

    .line 384
    :catch_0
    move-exception v0

    .line 386
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static sendStart()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 129
    sget-object v1, Ltv/alphonso/service/client/AlphonsoServiceClient;->singletonObject:Ltv/alphonso/service/client/AlphonsoServiceClient;

    .line 131
    .local v1, "instance":Ltv/alphonso/service/client/AlphonsoServiceClient;
    sget-object v4, Ltv/alphonso/service/client/ASClientUtils;->TAG:Ljava/lang/String;

    const-string v5, "Sending START message to AlphonsoService."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    const/4 v4, 0x0

    const/16 v5, 0xa

    invoke-static {v4, v5, v6, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v2

    .line 134
    .local v2, "msg":Landroid/os/Message;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 135
    .local v3, "params":Landroid/os/Bundle;
    invoke-static {v3}, Ltv/alphonso/service/client/ASClientUtils;->addParamsHeader(Landroid/os/Bundle;)V

    .line 137
    iget-object v4, v1, Ltv/alphonso/service/client/AlphonsoServiceClient;->mMessenger:Landroid/os/Messenger;

    iput-object v4, v2, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 138
    invoke-virtual {v2, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 141
    :try_start_0
    iget-object v4, v1, Ltv/alphonso/service/client/AlphonsoServiceClient;->mService:Landroid/os/Messenger;

    invoke-virtual {v4, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    :goto_0
    return-void

    .line 143
    :catch_0
    move-exception v0

    .line 145
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static updateID(Landroid/os/Bundle;)V
    .locals 6
    .param p0, "result"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 591
    sget-object v1, Ltv/alphonso/service/client/AlphonsoServiceClient;->singletonObject:Ltv/alphonso/service/client/AlphonsoServiceClient;

    .line 593
    .local v1, "instance":Ltv/alphonso/service/client/AlphonsoServiceClient;
    sget-object v3, Ltv/alphonso/service/client/ASClientUtils;->TAG:Ljava/lang/String;

    const-string v4, "Sending UPDATE_ID message to AlphonsoService."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    const/4 v3, 0x0

    const/16 v4, 0x26

    invoke-static {v3, v4, v5, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v2

    .line 596
    .local v2, "msg":Landroid/os/Message;
    iget-object v3, v1, Ltv/alphonso/service/client/AlphonsoServiceClient;->mMessenger:Landroid/os/Messenger;

    iput-object v3, v2, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 598
    invoke-static {p0}, Ltv/alphonso/service/client/ASClientUtils;->addParamsHeader(Landroid/os/Bundle;)V

    .line 599
    invoke-virtual {v2, p0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 603
    :try_start_0
    iget-object v3, v1, Ltv/alphonso/service/client/AlphonsoServiceClient;->mService:Landroid/os/Messenger;

    invoke-virtual {v3, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 609
    :goto_0
    return-void

    .line 605
    :catch_0
    move-exception v0

    .line 607
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
