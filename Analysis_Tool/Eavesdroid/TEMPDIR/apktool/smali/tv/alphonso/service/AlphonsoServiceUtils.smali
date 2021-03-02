.class public Ltv/alphonso/service/AlphonsoServiceUtils;
.super Ljava/lang/Object;
.source "AlphonsoServiceUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Ltv/alphonso/service/AlphonsoServiceUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ltv/alphonso/service/AlphonsoServiceUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Ltv/alphonso/service/AlphonsoServiceUtils;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static cleanupAudioCaptureService(Ltv/alphonso/service/AlphonsoService;)V
    .locals 3
    .param p0, "asInstance"    # Ltv/alphonso/service/AlphonsoService;

    .prologue
    .line 192
    iget-object v1, p0, Ltv/alphonso/service/AlphonsoService;->mAudioCaptureService:Ltv/alphonso/audiocaptureservice/AudioCaptureService;

    if-eqz v1, :cond_2

    .line 194
    iget-object v1, p0, Ltv/alphonso/service/AlphonsoService;->mAudioCaptureService:Ltv/alphonso/audiocaptureservice/AudioCaptureService;

    iget-object v1, v1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 195
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 197
    iget-boolean v1, p0, Ltv/alphonso/service/AlphonsoService;->mDebug:Z

    if-eqz v1, :cond_0

    .line 198
    sget-object v1, Ltv/alphonso/service/AlphonsoServiceUtils;->TAG:Ljava/lang/String;

    const-string v2, "Sending ACS_CLEANUP message to AudioCaptureService."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :cond_0
    iget-object v1, p0, Ltv/alphonso/service/AlphonsoService;->mAudioCaptureService:Ltv/alphonso/audiocaptureservice/AudioCaptureService;

    iget-object v1, v1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 202
    iget-object v1, p0, Ltv/alphonso/service/AlphonsoService;->mAudioCaptureService:Ltv/alphonso/audiocaptureservice/AudioCaptureService;

    iget-object v1, v1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 203
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 205
    iget-boolean v1, p0, Ltv/alphonso/service/AlphonsoService;->mDebug:Z

    if-eqz v1, :cond_1

    .line 206
    sget-object v1, Ltv/alphonso/service/AlphonsoServiceUtils;->TAG:Ljava/lang/String;

    const-string v2, "Sending ACS_DESTROY message to AudioCaptureService."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :cond_1
    iget-object v1, p0, Ltv/alphonso/service/AlphonsoService;->mAudioCaptureService:Ltv/alphonso/audiocaptureservice/AudioCaptureService;

    iget-object v1, v1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 210
    const/4 v1, 0x0

    iput-object v1, p0, Ltv/alphonso/service/AlphonsoService;->mAudioCaptureService:Ltv/alphonso/audiocaptureservice/AudioCaptureService;

    .line 216
    .end local v0    # "msg":Landroid/os/Message;
    :goto_0
    return-void

    .line 214
    :cond_2
    iget-object v1, p0, Ltv/alphonso/service/AlphonsoService;->mCurrentState:Ltv/alphonso/service/ASState;

    invoke-virtual {v1, p0}, Ltv/alphonso/service/ASState;->onAudioCaptureServiceCleanupDone(Ltv/alphonso/service/AlphonsoService;)V

    goto :goto_0
.end method

.method public static cleanupPrimeTimeAlarms(Ltv/alphonso/service/AlphonsoService;)V
    .locals 2
    .param p0, "asInstance"    # Ltv/alphonso/service/AlphonsoService;

    .prologue
    .line 1134
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Ltv/alphonso/service/AlphonsoService;->mPrimeTimeArray:[Ltv/alphonso/service/PrimeTime;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 1136
    iget-object v1, p0, Ltv/alphonso/service/AlphonsoService;->mPrimeTimeArray:[Ltv/alphonso/service/PrimeTime;

    aget-object v1, v1, v0

    iget-object v1, v1, Ltv/alphonso/service/PrimeTime;->begin:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 1138
    iget-object v1, p0, Ltv/alphonso/service/AlphonsoService;->mPrimeTimeArray:[Ltv/alphonso/service/PrimeTime;

    aget-object v1, v1, v0

    iget v1, v1, Ltv/alphonso/service/PrimeTime;->asFSMBeginEvent:I

    invoke-static {p0, v1}, Ltv/alphonso/service/AlphonsoServiceUtils;->cleanupPrimeTimeWakeupAlarm(Ltv/alphonso/service/AlphonsoService;I)V

    .line 1139
    iget-object v1, p0, Ltv/alphonso/service/AlphonsoService;->mPrimeTimeArray:[Ltv/alphonso/service/PrimeTime;

    aget-object v1, v1, v0

    iget v1, v1, Ltv/alphonso/service/PrimeTime;->asFSMEndEvent:I

    invoke-static {p0, v1}, Ltv/alphonso/service/AlphonsoServiceUtils;->cleanupPrimeTimeWakeupAlarm(Ltv/alphonso/service/AlphonsoService;I)V

    .line 1134
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1142
    :cond_1
    return-void
.end method

.method public static cleanupPrimeTimeWakeupAlarm(Ltv/alphonso/service/AlphonsoService;I)V
    .locals 6
    .param p0, "acsInstance"    # Ltv/alphonso/service/AlphonsoService;
    .param p1, "asFSMEvent"    # I

    .prologue
    .line 1120
    iget-boolean v3, p0, Ltv/alphonso/service/AlphonsoService;->mDebug:Z

    if-eqz v3, :cond_0

    .line 1121
    sget-object v3, Ltv/alphonso/service/AlphonsoServiceUtils;->TAG:Ljava/lang/String;

    const-string v4, "Cleaning up prime time wakeup alarms."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1123
    :cond_0
    iget-object v3, p0, Ltv/alphonso/service/AlphonsoService;->mContext:Landroid/content/Context;

    const-string v4, "alarm"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1124
    .local v0, "am":Landroid/app/AlarmManager;
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Ltv/alphonso/service/AlphonsoService;->mContext:Landroid/content/Context;

    const-class v4, Ltv/alphonso/service/AlphonsoService;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1125
    .local v1, "intent":Landroid/content/Intent;
    sget-object v3, Ltv/alphonso/service/ASFSM;->fsmEventStrings:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1126
    const-string v3, "tv.alphonso.service.AlphonsoService.EVENT"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1127
    iget-object v3, p0, Ltv/alphonso/service/AlphonsoService;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/high16 v5, 0x8000000

    invoke-static {v3, v4, v1, v5}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 1128
    .local v2, "pi":Landroid/app/PendingIntent;
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1129
    return-void
.end method

.method public static clear_history(Ltv/alphonso/service/AlphonsoService;)V
    .locals 1
    .param p0, "asInstance"    # Ltv/alphonso/service/AlphonsoService;

    .prologue
    .line 311
    iget-object v0, p0, Ltv/alphonso/service/AlphonsoService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Ltv/alphonso/dbutil/database/DBAdapter;->getInstance(Landroid/content/Context;)Ltv/alphonso/dbutil/database/DBAdapter;

    move-result-object v0

    invoke-virtual {v0}, Ltv/alphonso/dbutil/database/DBAdapter;->deleteAllEntries()V

    .line 312
    return-void
.end method

.method public static configureServerParams(Ltv/alphonso/service/AlphonsoService;)V
    .locals 4
    .param p0, "asInstance"    # Ltv/alphonso/service/AlphonsoService;

    .prologue
    .line 132
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 133
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "server_domain"

    iget-object v3, p0, Ltv/alphonso/service/AlphonsoService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Ltv/alphonso/utils/PreferencesManager;->getServerDomain(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const-string v2, "server_port"

    iget-object v3, p0, Ltv/alphonso/service/AlphonsoService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Ltv/alphonso/utils/PreferencesManager;->getServerPort(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const-string v2, "server_domain_ssl"

    iget-object v3, p0, Ltv/alphonso/service/AlphonsoService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Ltv/alphonso/utils/PreferencesManager;->getServerDomainSsl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    const-string v2, "server_port_ssl"

    iget-object v3, p0, Ltv/alphonso/service/AlphonsoService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Ltv/alphonso/utils/PreferencesManager;->getServerPortSsl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    invoke-virtual {p0}, Ltv/alphonso/service/AlphonsoService;->getUUID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 139
    const-string v2, "uuid"

    invoke-virtual {p0}, Ltv/alphonso/service/AlphonsoService;->getUUID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    :cond_0
    invoke-virtual {p0}, Ltv/alphonso/service/AlphonsoService;->getAndroidId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 142
    const-string v2, "android_id"

    invoke-virtual {p0}, Ltv/alphonso/service/AlphonsoService;->getAndroidId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    :cond_1
    iget-object v2, p0, Ltv/alphonso/service/AlphonsoService;->mAdId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 145
    const-string v2, "ad_id"

    iget-object v3, p0, Ltv/alphonso/service/AlphonsoService;->mAdId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    :cond_2
    const-string v2, "limit_adt"

    iget-boolean v3, p0, Ltv/alphonso/service/AlphonsoService;->mLimitAdTracking:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 148
    const-string v2, "debug_logs_flag"

    iget-object v3, p0, Ltv/alphonso/service/AlphonsoService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Ltv/alphonso/utils/PreferencesManager;->getDebugLogsFlag(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 150
    const-string v2, "device_id"

    invoke-virtual {p0}, Ltv/alphonso/service/AlphonsoService;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    iget-object v2, p0, Ltv/alphonso/service/AlphonsoService;->mAlphonsoClient:Ltv/alphonso/alphonsoclient/AlphonsoClient;

    iget-object v2, v2, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 153
    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I

    .line 154
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 156
    iget-boolean v2, p0, Ltv/alphonso/service/AlphonsoService;->mDebug:Z

    if-eqz v2, :cond_3

    .line 157
    sget-object v2, Ltv/alphonso/service/AlphonsoServiceUtils;->TAG:Ljava/lang/String;

    const-string v3, "Sending SETUP message to AlphonsoClient Service"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :cond_3
    iget-object v2, p0, Ltv/alphonso/service/AlphonsoService;->mAlphonsoClient:Ltv/alphonso/alphonsoclient/AlphonsoClient;

    iget-object v2, v2, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 160
    return-void
.end method

.method public static disableAudioCaptureUpload(Ltv/alphonso/service/AlphonsoService;)V
    .locals 3
    .param p0, "asInstance"    # Ltv/alphonso/service/AlphonsoService;

    .prologue
    .line 296
    iget-object v1, p0, Ltv/alphonso/service/AlphonsoService;->mAudioCaptureService:Ltv/alphonso/audiocaptureservice/AudioCaptureService;

    if-eqz v1, :cond_1

    .line 298
    iget-object v1, p0, Ltv/alphonso/service/AlphonsoService;->mAudioCaptureService:Ltv/alphonso/audiocaptureservice/AudioCaptureService;

    iget-object v1, v1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 299
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0xe

    iput v1, v0, Landroid/os/Message;->what:I

    .line 301
    iget-boolean v1, p0, Ltv/alphonso/service/AlphonsoService;->mDebug:Z

    if-eqz v1, :cond_0

    .line 302
    sget-object v1, Ltv/alphonso/service/AlphonsoServiceUtils;->TAG:Ljava/lang/String;

    const-string v2, "Sending ACS_DISABLE_AUDIO_UPLOAD message to AudioCaptureService."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    :cond_0
    iget-object v1, p0, Ltv/alphonso/service/AlphonsoService;->mAudioCaptureService:Ltv/alphonso/audiocaptureservice/AudioCaptureService;

    iget-object v1, v1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 306
    .end local v0    # "msg":Landroid/os/Message;
    :cond_1
    return-void
.end method

.method public static disableCallEventListener(Ltv/alphonso/service/AlphonsoService;)V
    .locals 1
    .param p0, "asInstance"    # Ltv/alphonso/service/AlphonsoService;

    .prologue
    .line 737
    iget-object v0, p0, Ltv/alphonso/service/AlphonsoService;->mCallEventListener:Ltv/alphonso/service/CallEventListener;

    invoke-virtual {v0}, Ltv/alphonso/service/CallEventListener;->destroy()V

    .line 738
    const/4 v0, 0x0

    iput-object v0, p0, Ltv/alphonso/service/AlphonsoService;->mCallEventListener:Ltv/alphonso/service/CallEventListener;

    .line 739
    return-void
.end method

.method public static disableClockSyncher(Ltv/alphonso/service/AlphonsoService;)V
    .locals 1
    .param p0, "asInstance"    # Ltv/alphonso/service/AlphonsoService;

    .prologue
    .line 773
    iget-object v0, p0, Ltv/alphonso/service/AlphonsoService;->mClockSyncher:Ltv/alphonso/service/ClockSyncher;

    invoke-virtual {v0}, Ltv/alphonso/service/ClockSyncher;->destroy()V

    .line 774
    const/4 v0, 0x0

    iput-object v0, p0, Ltv/alphonso/service/AlphonsoService;->mClockSyncher:Ltv/alphonso/service/ClockSyncher;

    .line 775
    return-void
.end method

.method private static disableProvisioningServerInterface(Ltv/alphonso/service/AlphonsoService;)V
    .locals 1
    .param p0, "asInstance"    # Ltv/alphonso/service/AlphonsoService;

    .prologue
    .line 252
    iget-object v0, p0, Ltv/alphonso/service/AlphonsoService;->mProvClient:Ltv/alphonso/service/ProvClient;

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Ltv/alphonso/service/AlphonsoService;->mProvClient:Ltv/alphonso/service/ProvClient;

    invoke-virtual {v0}, Ltv/alphonso/service/ProvClient;->processCleanupMessage()V

    .line 256
    const/4 v0, 0x0

    iput-object v0, p0, Ltv/alphonso/service/AlphonsoService;->mProvClient:Ltv/alphonso/service/ProvClient;

    .line 258
    :cond_0
    return-void
.end method

.method public static enableAudioCaptureUpload(Ltv/alphonso/service/AlphonsoService;)V
    .locals 3
    .param p0, "asInstance"    # Ltv/alphonso/service/AlphonsoService;

    .prologue
    .line 281
    iget-object v1, p0, Ltv/alphonso/service/AlphonsoService;->mAudioCaptureService:Ltv/alphonso/audiocaptureservice/AudioCaptureService;

    if-eqz v1, :cond_1

    .line 283
    iget-object v1, p0, Ltv/alphonso/service/AlphonsoService;->mAudioCaptureService:Ltv/alphonso/audiocaptureservice/AudioCaptureService;

    iget-object v1, v1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 284
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0xd

    iput v1, v0, Landroid/os/Message;->what:I

    .line 286
    iget-boolean v1, p0, Ltv/alphonso/service/AlphonsoService;->mDebug:Z

    if-eqz v1, :cond_0

    .line 287
    sget-object v1, Ltv/alphonso/service/AlphonsoServiceUtils;->TAG:Ljava/lang/String;

    const-string v2, "Sending ACS_ENABLE_AUDIO_UPLOAD message to AudioCaptureService."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    :cond_0
    iget-object v1, p0, Ltv/alphonso/service/AlphonsoService;->mAudioCaptureService:Ltv/alphonso/audiocaptureservice/AudioCaptureService;

    iget-object v1, v1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 291
    .end local v0    # "msg":Landroid/os/Message;
    :cond_1
    return-void
.end method

.method public static enableCallEventListener(Ltv/alphonso/service/AlphonsoService;)V
    .locals 3
    .param p0, "asInstance"    # Ltv/alphonso/service/AlphonsoService;

    .prologue
    .line 732
    new-instance v0, Ltv/alphonso/service/CallEventListener;

    iget-object v1, p0, Ltv/alphonso/service/AlphonsoService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Ltv/alphonso/service/AlphonsoService;->mAudioCaptureService:Ltv/alphonso/audiocaptureservice/AudioCaptureService;

    invoke-direct {v0, v1, v2}, Ltv/alphonso/service/CallEventListener;-><init>(Landroid/content/Context;Ltv/alphonso/audiocaptureservice/AudioCaptureService;)V

    iput-object v0, p0, Ltv/alphonso/service/AlphonsoService;->mCallEventListener:Ltv/alphonso/service/CallEventListener;

    .line 733
    return-void
.end method

.method public static enableClockSyncher(Ltv/alphonso/service/AlphonsoService;)V
    .locals 7
    .param p0, "asInstance"    # Ltv/alphonso/service/AlphonsoService;

    .prologue
    .line 763
    new-instance v0, Ltv/alphonso/service/ClockSyncher;

    iget-object v1, p0, Ltv/alphonso/service/AlphonsoService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Ltv/alphonso/service/AlphonsoService;->mAlphonsoClient:Ltv/alphonso/alphonsoclient/AlphonsoClient;

    iget-object v3, p0, Ltv/alphonso/service/AlphonsoService;->mAudioCaptureService:Ltv/alphonso/audiocaptureservice/AudioCaptureService;

    iget-object v4, p0, Ltv/alphonso/service/AlphonsoService;->mContext:Landroid/content/Context;

    .line 766
    invoke-static {v4}, Ltv/alphonso/utils/PreferencesManager;->getClockSyncPollInterval(Landroid/content/Context;)I

    move-result v4

    iget-object v5, p0, Ltv/alphonso/service/AlphonsoService;->mContext:Landroid/content/Context;

    .line 767
    invoke-static {v5}, Ltv/alphonso/utils/PreferencesManager;->getClockSyncSavedIterations(Landroid/content/Context;)I

    move-result v5

    iget-object v6, p0, Ltv/alphonso/service/AlphonsoService;->mContext:Landroid/content/Context;

    .line 768
    invoke-static {v6}, Ltv/alphonso/utils/PreferencesManager;->getDebugLogsFlag(Landroid/content/Context;)Z

    move-result v6

    invoke-direct/range {v0 .. v6}, Ltv/alphonso/service/ClockSyncher;-><init>(Landroid/content/Context;Ltv/alphonso/alphonsoclient/AlphonsoClient;Ltv/alphonso/audiocaptureservice/AudioCaptureService;IIZ)V

    iput-object v0, p0, Ltv/alphonso/service/AlphonsoService;->mClockSyncher:Ltv/alphonso/service/ClockSyncher;

    .line 769
    return-void
.end method

.method private static enableProvisioningServerInterface(Ltv/alphonso/service/AlphonsoService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "asInstance"    # Ltv/alphonso/service/AlphonsoService;
    .param p1, "domain"    # Ljava/lang/String;
    .param p2, "port"    # Ljava/lang/String;

    .prologue
    .line 237
    iget-object v1, p0, Ltv/alphonso/service/AlphonsoService;->mProvClient:Ltv/alphonso/service/ProvClient;

    if-nez v1, :cond_0

    .line 238
    new-instance v1, Ltv/alphonso/service/ProvClient;

    iget-object v2, p0, Ltv/alphonso/service/AlphonsoService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Ltv/alphonso/service/AlphonsoService;->mAudioCaptureService:Ltv/alphonso/audiocaptureservice/AudioCaptureService;

    iget-object v4, p0, Ltv/alphonso/service/AlphonsoService;->mAlphonsoClient:Ltv/alphonso/alphonsoclient/AlphonsoClient;

    invoke-direct {v1, v2, v3, v4}, Ltv/alphonso/service/ProvClient;-><init>(Landroid/content/Context;Ltv/alphonso/audiocaptureservice/AudioCaptureService;Ltv/alphonso/alphonsoclient/AlphonsoClient;)V

    iput-object v1, p0, Ltv/alphonso/service/AlphonsoService;->mProvClient:Ltv/alphonso/service/ProvClient;

    .line 242
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 243
    .local v0, "params":Landroid/os/Bundle;
    const-string v1, "prov_server_domain"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    const-string v1, "prov_server_port"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    iget-object v1, p0, Ltv/alphonso/service/AlphonsoService;->mProvClient:Ltv/alphonso/service/ProvClient;

    invoke-virtual {v1, v0}, Ltv/alphonso/service/ProvClient;->processSetupMessage(Landroid/os/Bundle;)V

    .line 247
    return-void
.end method

.method public static honorPersistedPreferences(Ltv/alphonso/service/AlphonsoService;)V
    .locals 1
    .param p0, "asInstance"    # Ltv/alphonso/service/AlphonsoService;

    .prologue
    .line 37
    iget-object v0, p0, Ltv/alphonso/service/AlphonsoService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Ltv/alphonso/utils/PreferencesManager;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltv/alphonso/service/AlphonsoService;->setDeviceId(Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Ltv/alphonso/service/AlphonsoService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Ltv/alphonso/utils/PreferencesManager;->getUUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltv/alphonso/service/AlphonsoService;->setUUID(Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Ltv/alphonso/service/AlphonsoService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Ltv/alphonso/utils/PreferencesManager;->getAdvertisingId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltv/alphonso/service/AlphonsoService;->setAdId(Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Ltv/alphonso/service/AlphonsoService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Ltv/alphonso/utils/PreferencesManager;->getAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltv/alphonso/service/AlphonsoService;->setAndroidId(Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Ltv/alphonso/service/AlphonsoService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Ltv/alphonso/utils/PreferencesManager;->getLimitAdTrackingFlag(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p0, v0}, Ltv/alphonso/service/AlphonsoService;->setLimitAdTracking(Z)V

    .line 42
    iget-object v0, p0, Ltv/alphonso/service/AlphonsoService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Ltv/alphonso/utils/PreferencesManager;->getAdIdPollDuration(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v0}, Ltv/alphonso/service/AlphonsoService;->setAdIdPollDuration(I)V

    .line 43
    return-void
.end method

.method public static populateTvMetadata(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V
    .locals 7
    .param p0, "asInstance"    # Ltv/alphonso/service/AlphonsoService;
    .param p1, "resultData"    # Landroid/os/Bundle;

    .prologue
    .line 686
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 688
    .local v3, "tvData":Landroid/os/Bundle;
    const-string v4, "tms_info"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 690
    const-string v4, "tms_info"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 694
    .local v2, "jsonString":Ljava/lang/String;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 696
    .local v1, "jObj":Lorg/json/JSONObject;
    const-string v4, "affiliateCallSign"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 697
    const-string v4, "affiliate_call_sign"

    const-string v5, "affiliateCallSign"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 699
    :cond_0
    const-string v4, "episodeNum"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 700
    const-string v4, "episode_num"

    const-string v5, "episodeNum"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 702
    :cond_1
    const-string v4, "episodeTitle"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 703
    const-string v4, "episode_title"

    const-string v5, "episodeTitle"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 705
    :cond_2
    const-string v4, "origAirDate"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 706
    const-string v4, "orig_air_date"

    const-string v5, "origAirDate"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    :cond_3
    const-string v4, "seasonNum"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 709
    const-string v4, "season_num"

    const-string v5, "seasonNum"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 711
    :cond_4
    const-string v4, "title"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 712
    const-string v4, "title"

    const-string v5, "title"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 721
    .end local v1    # "jObj":Lorg/json/JSONObject;
    .end local v2    # "jsonString":Ljava/lang/String;
    :cond_5
    :goto_0
    const-string v4, "tv_data"

    invoke-virtual {p1, v4, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 722
    return-void

    .line 714
    .restart local v2    # "jsonString":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 716
    .local v0, "e":Lorg/json/JSONException;
    sget-object v4, Ltv/alphonso/service/AlphonsoServiceUtils;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "JSONException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public static procescClockSyncPollTimerExpiry(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V
    .locals 1
    .param p0, "asInstance"    # Ltv/alphonso/service/AlphonsoService;
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 779
    iget-object v0, p0, Ltv/alphonso/service/AlphonsoService;->mClockSyncher:Ltv/alphonso/service/ClockSyncher;

    if-eqz v0, :cond_0

    .line 780
    iget-object v0, p0, Ltv/alphonso/service/AlphonsoService;->mClockSyncher:Ltv/alphonso/service/ClockSyncher;

    invoke-virtual {v0}, Ltv/alphonso/service/ClockSyncher;->processClockSyncPollTimerExpiry()V

    .line 781
    :cond_0
    return-void
.end method

.method public static processACSPrimeTimeBegin(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V
    .locals 8
    .param p0, "asInstance"    # Ltv/alphonso/service/AlphonsoService;
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, -0x1

    const-wide/16 v6, -0x1

    .line 1005
    iget-object v3, p0, Ltv/alphonso/service/AlphonsoService;->mAudioCaptureService:Ltv/alphonso/audiocaptureservice/AudioCaptureService;

    if-eqz v3, :cond_0

    .line 1007
    const-string v3, "asfsm_event"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Ltv/alphonso/service/AlphonsoService;->getPrimeTimeArrayEntryIndex(I)I

    move-result v0

    .line 1008
    .local v0, "index":I
    if-ne v0, v5, :cond_1

    .line 1043
    .end local v0    # "index":I
    :cond_0
    :goto_0
    return-void

    .line 1011
    .restart local v0    # "index":I
    :cond_1
    iget-boolean v3, p0, Ltv/alphonso/service/AlphonsoService;->mDebug:Z

    if-eqz v3, :cond_2

    .line 1013
    sget-object v3, Ltv/alphonso/service/AlphonsoServiceUtils;->TAG:Ljava/lang/String;

    const-string v4, "prime time begin params: "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    iget-object v3, p0, Ltv/alphonso/service/AlphonsoService;->mPrimeTimeArray:[Ltv/alphonso/service/PrimeTime;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Ltv/alphonso/service/PrimeTime;->print()V

    .line 1017
    :cond_2
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1018
    .local v2, "params":Landroid/os/Bundle;
    iget-object v3, p0, Ltv/alphonso/service/AlphonsoService;->mPrimeTimeArray:[Ltv/alphonso/service/PrimeTime;

    aget-object v3, v3, v0

    iget v3, v3, Ltv/alphonso/service/PrimeTime;->captureCount:I

    if-eq v3, v5, :cond_3

    .line 1019
    const-string v3, "capture_count"

    iget-object v4, p0, Ltv/alphonso/service/AlphonsoService;->mPrimeTimeArray:[Ltv/alphonso/service/PrimeTime;

    aget-object v4, v4, v0

    iget v4, v4, Ltv/alphonso/service/PrimeTime;->captureCount:I

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1021
    :cond_3
    iget-object v3, p0, Ltv/alphonso/service/AlphonsoService;->mPrimeTimeArray:[Ltv/alphonso/service/PrimeTime;

    aget-object v3, v3, v0

    iget-wide v4, v3, Ltv/alphonso/service/PrimeTime;->captureScenarioSleepInterval:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_4

    .line 1022
    const-string v3, "capture_scenario_sleep_interval"

    iget-object v4, p0, Ltv/alphonso/service/AlphonsoService;->mPrimeTimeArray:[Ltv/alphonso/service/PrimeTime;

    aget-object v4, v4, v0

    iget-wide v4, v4, Ltv/alphonso/service/PrimeTime;->captureScenarioSleepInterval:J

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1024
    :cond_4
    iget-object v3, p0, Ltv/alphonso/service/AlphonsoService;->mPrimeTimeArray:[Ltv/alphonso/service/PrimeTime;

    aget-object v3, v3, v0

    iget-wide v4, v3, Ltv/alphonso/service/PrimeTime;->captureScenarioSleepIntervalMax:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_5

    .line 1025
    const-string v3, "capture_scenario_sleep_interval_max"

    iget-object v4, p0, Ltv/alphonso/service/AlphonsoService;->mPrimeTimeArray:[Ltv/alphonso/service/PrimeTime;

    aget-object v4, v4, v0

    iget-wide v4, v4, Ltv/alphonso/service/PrimeTime;->captureScenarioSleepIntervalMax:J

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1027
    :cond_5
    iget-object v3, p0, Ltv/alphonso/service/AlphonsoService;->mPrimeTimeArray:[Ltv/alphonso/service/PrimeTime;

    aget-object v3, v3, v0

    iget-wide v4, v3, Ltv/alphonso/service/PrimeTime;->captureScenarioSleepIntervalLivetv:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_6

    .line 1028
    const-string v3, "capture_scenario_sleep_interval_livetv"

    iget-object v4, p0, Ltv/alphonso/service/AlphonsoService;->mPrimeTimeArray:[Ltv/alphonso/service/PrimeTime;

    aget-object v4, v4, v0

    iget-wide v4, v4, Ltv/alphonso/service/PrimeTime;->captureScenarioSleepIntervalLivetv:J

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1030
    :cond_6
    iget-object v3, p0, Ltv/alphonso/service/AlphonsoService;->mPrimeTimeArray:[Ltv/alphonso/service/PrimeTime;

    aget-object v3, v3, v0

    iget-wide v4, v3, Ltv/alphonso/service/PrimeTime;->captureScenarioSleepIntervalInhibiterIncrement:D

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    cmpl-double v3, v4, v6

    if-eqz v3, :cond_7

    .line 1031
    const-string v3, "capture_scenario_sleep_interval_inhibiter_increment"

    iget-object v4, p0, Ltv/alphonso/service/AlphonsoService;->mPrimeTimeArray:[Ltv/alphonso/service/PrimeTime;

    aget-object v4, v4, v0

    iget-wide v4, v4, Ltv/alphonso/service/PrimeTime;->captureScenarioSleepIntervalInhibiterIncrement:D

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 1033
    :cond_7
    iget-object v3, p0, Ltv/alphonso/service/AlphonsoService;->mAudioCaptureService:Ltv/alphonso/audiocaptureservice/AudioCaptureService;

    iget-object v3, v3, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 1035
    .local v1, "msg":Landroid/os/Message;
    const/16 v3, 0x19

    iput v3, v1, Landroid/os/Message;->what:I

    .line 1036
    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1038
    iget-boolean v3, p0, Ltv/alphonso/service/AlphonsoService;->mDebug:Z

    if-eqz v3, :cond_8

    .line 1039
    sget-object v3, Ltv/alphonso/service/AlphonsoServiceUtils;->TAG:Ljava/lang/String;

    const-string v4, "Sending ACS_PRIME_TIME_BEGIN message to AudioCaptureService."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1041
    :cond_8
    iget-object v3, p0, Ltv/alphonso/service/AlphonsoService;->mAudioCaptureService:Ltv/alphonso/audiocaptureservice/AudioCaptureService;

    iget-object v3, v3, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0
.end method

.method public static processACSPrimeTimeEnd(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V
    .locals 3
    .param p0, "asInstance"    # Ltv/alphonso/service/AlphonsoService;
    .param p1, "params"    # Landroid/os/Bundle;

    .prologue
    .line 1048
    iget-object v1, p0, Ltv/alphonso/service/AlphonsoService;->mAudioCaptureService:Ltv/alphonso/audiocaptureservice/AudioCaptureService;

    if-eqz v1, :cond_1

    .line 1049
    iget-object v1, p0, Ltv/alphonso/service/AlphonsoService;->mAudioCaptureService:Ltv/alphonso/audiocaptureservice/AudioCaptureService;

    iget-object v1, v1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1051
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x1a

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1053
    iget-boolean v1, p0, Ltv/alphonso/service/AlphonsoService;->mDebug:Z

    if-eqz v1, :cond_0

    .line 1054
    sget-object v1, Ltv/alphonso/service/AlphonsoServiceUtils;->TAG:Ljava/lang/String;

    const-string v2, "Sending ACS_PRIME_TIME_END message to AudioCaptureService."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1056
    :cond_0
    iget-object v1, p0, Ltv/alphonso/service/AlphonsoService;->mAudioCaptureService:Ltv/alphonso/audiocaptureservice/AudioCaptureService;

    iget-object v1, v1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1058
    .end local v0    # "msg":Landroid/os/Message;
    :cond_1
    return-void
.end method

.method public static processAdIdGeneration(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)Z
    .locals 3
    .param p0, "asInstance"    # Ltv/alphonso/service/AlphonsoService;
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 952
    const/4 v0, 0x0

    .line 954
    .local v0, "change":Z
    const-string v1, "result_code"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    .line 956
    const-string v1, "limit_adt"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "limit_adt"

    .line 957
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iget-boolean v2, p0, Ltv/alphonso/service/AlphonsoService;->mLimitAdTracking:Z

    if-eq v1, v2, :cond_0

    .line 959
    const/4 v0, 0x1

    .line 960
    const-string v1, "limit_adt"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p0, v1}, Ltv/alphonso/service/AlphonsoService;->setLimitAdTracking(Z)V

    .line 963
    :cond_0
    const-string v1, "ad_id"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "ad_id"

    .line 964
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ltv/alphonso/service/AlphonsoService;->mAdId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 966
    const/4 v0, 0x1

    .line 967
    const-string v1, "ad_id"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ltv/alphonso/service/AlphonsoService;->setAdId(Ljava/lang/String;)V

    .line 971
    :cond_1
    return v0
.end method

.method public static processAdIdPollConfig(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V
    .locals 1
    .param p0, "asInstance"    # Ltv/alphonso/service/AlphonsoService;
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 942
    const-string v0, "ad_id_poll_duration"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Ltv/alphonso/service/AlphonsoService;->setAdIdPollDuration(I)V

    .line 944
    invoke-static {p0}, Ltv/alphonso/service/AlphonsoServiceUtils;->stopAdIdPollTimer(Ltv/alphonso/service/AlphonsoService;)V

    .line 946
    invoke-static {p0}, Ltv/alphonso/service/AlphonsoServiceUtils;->startAdIdPollTimer(Ltv/alphonso/service/AlphonsoService;)V

    .line 947
    return-void
.end method

.method public static processAdvtDbUpdate(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "asInstance"    # Ltv/alphonso/service/AlphonsoService;
    .param p1, "resultData"    # Landroid/os/Bundle;

    .prologue
    .line 728
    return-void
.end method

.method public static processAudioCaptureServiceSleepTimerExpiry(Ltv/alphonso/service/AlphonsoService;)V
    .locals 3
    .param p0, "asInstance"    # Ltv/alphonso/service/AlphonsoService;

    .prologue
    .line 221
    iget-object v1, p0, Ltv/alphonso/service/AlphonsoService;->mAudioCaptureService:Ltv/alphonso/audiocaptureservice/AudioCaptureService;

    if-eqz v1, :cond_1

    .line 222
    iget-object v1, p0, Ltv/alphonso/service/AlphonsoService;->mAudioCaptureService:Ltv/alphonso/audiocaptureservice/AudioCaptureService;

    iget-object v1, v1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 224
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x9

    iput v1, v0, Landroid/os/Message;->what:I

    .line 226
    iget-boolean v1, p0, Ltv/alphonso/service/AlphonsoService;->mDebug:Z

    if-eqz v1, :cond_0

    .line 227
    sget-object v1, Ltv/alphonso/service/AlphonsoServiceUtils;->TAG:Ljava/lang/String;

    const-string v2, "Sending ACS_SLEEP_TIMER_EXPIRY message to AudioCaptureService."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :cond_0
    iget-object v1, p0, Ltv/alphonso/service/AlphonsoService;->mAudioCaptureService:Ltv/alphonso/audiocaptureservice/AudioCaptureService;

    iget-object v1, v1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 231
    .end local v0    # "msg":Landroid/os/Message;
    :cond_1
    return-void
.end method

.method public static processBindUserRequest(Ltv/alphonso/service/AlphonsoService;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 5
    .param p0, "asInstance"    # Ltv/alphonso/service/AlphonsoService;
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 405
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 406
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "type"

    const-string v3, "type"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    const-string v2, "id"

    const-string v3, "handle"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    const-string v2, "access_token"

    const-string v3, "token"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    const-string v2, "com.alphonsoclient.android.EXTRA_ALPHONSO_RESULT_RECEIVER"

    new-instance v3, Ltv/alphonso/service/AlphonsoServiceUtils$1;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, v4, p1, p0}, Ltv/alphonso/service/AlphonsoServiceUtils$1;-><init>(Landroid/os/Handler;Ljava/lang/String;Ltv/alphonso/service/AlphonsoService;)V

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 434
    iget-object v2, p0, Ltv/alphonso/service/AlphonsoService;->mAlphonsoClient:Ltv/alphonso/alphonsoclient/AlphonsoClient;

    iget-object v2, v2, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 436
    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x2

    iput v2, v1, Landroid/os/Message;->what:I

    .line 437
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 439
    iget-boolean v2, p0, Ltv/alphonso/service/AlphonsoService;->mDebug:Z

    if-eqz v2, :cond_0

    .line 440
    sget-object v2, Ltv/alphonso/service/AlphonsoServiceUtils;->TAG:Ljava/lang/String;

    const-string v3, "Sending BIND_USER message to AlphonsoClient Service"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    :cond_0
    iget-object v2, p0, Ltv/alphonso/service/AlphonsoService;->mAlphonsoClient:Ltv/alphonso/alphonsoclient/AlphonsoClient;

    iget-object v2, v2, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 443
    return-void
.end method

.method public static processBindUserResponse(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V
    .locals 9
    .param p0, "asInstance"    # Ltv/alphonso/service/AlphonsoService;
    .param p1, "resultData"    # Landroid/os/Bundle;

    .prologue
    .line 448
    const-string v6, "result_code"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 449
    .local v5, "resultCode":I
    const-string v6, "app_id"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 451
    .local v0, "appId":Ljava/lang/String;
    const/4 v4, 0x0

    .line 452
    .local v4, "params":Landroid/os/Bundle;
    if-nez v5, :cond_1

    if-eqz p1, :cond_1

    .line 455
    iget-boolean v6, p0, Ltv/alphonso/service/AlphonsoService;->mDebug:Z

    if-eqz v6, :cond_0

    .line 456
    sget-object v6, Ltv/alphonso/service/AlphonsoServiceUtils;->TAG:Ljava/lang/String;

    const-string v7, "SUCCESS for BIND USER request."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    :cond_0
    move-object v4, p1

    .line 460
    const-string v6, "alp_uid"

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Ltv/alphonso/service/AlphonsoService;->mAlpUid:Ljava/lang/String;

    .line 470
    :goto_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    .line 471
    .local v3, "msg":Landroid/os/Message;
    const/16 v6, 0x10

    iput v6, v3, Landroid/os/Message;->what:I

    .line 472
    invoke-virtual {v3, v4}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 475
    :try_start_0
    iget-object v6, p0, Ltv/alphonso/service/AlphonsoService;->mClients:Ljava/util/HashMap;

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltv/alphonso/service/ASClient;

    .line 476
    .local v1, "client":Ltv/alphonso/service/ASClient;
    if-eqz v1, :cond_2

    .line 477
    iget-object v6, v1, Ltv/alphonso/service/ASClient;->messenger:Landroid/os/Messenger;

    invoke-virtual {v6, v3}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 485
    .end local v1    # "client":Ltv/alphonso/service/ASClient;
    :goto_1
    return-void

    .line 464
    .end local v3    # "msg":Landroid/os/Message;
    :cond_1
    sget-object v6, Ltv/alphonso/service/AlphonsoServiceUtils;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error for BIND USER request: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    new-instance v4, Landroid/os/Bundle;

    .end local v4    # "params":Landroid/os/Bundle;
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 467
    .restart local v4    # "params":Landroid/os/Bundle;
    const-string v6, "result_code"

    const/4 v7, 0x1

    invoke-virtual {v4, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 480
    .restart local v1    # "client":Ltv/alphonso/service/ASClient;
    .restart local v3    # "msg":Landroid/os/Message;
    :cond_2
    :try_start_1
    sget-object v6, Ltv/alphonso/service/AlphonsoServiceUtils;->TAG:Ljava/lang/String;

    const-string v7, "Client object is not available."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 482
    .end local v1    # "client":Ltv/alphonso/service/ASClient;
    :catch_0
    move-exception v2

    .line 483
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public static processCleanup(Ltv/alphonso/service/AlphonsoService;)V
    .locals 4
    .param p0, "asInstance"    # Ltv/alphonso/service/AlphonsoService;

    .prologue
    const/4 v3, 0x0

    .line 108
    iput v3, p0, Ltv/alphonso/service/AlphonsoService;->mNumStarts:I

    .line 109
    iget-object v1, p0, Ltv/alphonso/service/AlphonsoService;->mClients:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 111
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ltv/alphonso/service/ASClient;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltv/alphonso/service/ASClient;

    iput-boolean v3, v1, Ltv/alphonso/service/ASClient;->started:Z

    goto :goto_0

    .line 114
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ltv/alphonso/service/ASClient;>;"
    :cond_0
    invoke-static {p0}, Ltv/alphonso/service/AlphonsoServiceUtils;->stopAdIdPollTimer(Ltv/alphonso/service/AlphonsoService;)V

    .line 116
    invoke-static {p0}, Ltv/alphonso/service/AlphonsoServiceUtils;->disableClockSyncher(Ltv/alphonso/service/AlphonsoService;)V

    .line 118
    invoke-static {p0}, Ltv/alphonso/service/AlphonsoServiceUtils;->stopLocationService(Ltv/alphonso/service/AlphonsoService;)V

    .line 120
    invoke-static {p0}, Ltv/alphonso/service/AlphonsoServiceUtils;->disableCallEventListener(Ltv/alphonso/service/AlphonsoService;)V

    .line 122
    invoke-static {p0}, Ltv/alphonso/service/AlphonsoServiceUtils;->cleanupPrimeTimeAlarms(Ltv/alphonso/service/AlphonsoService;)V

    .line 124
    invoke-static {p0}, Ltv/alphonso/service/AlphonsoServiceUtils;->disableProvisioningServerInterface(Ltv/alphonso/service/AlphonsoService;)V

    .line 126
    invoke-static {p0}, Ltv/alphonso/service/AlphonsoServiceUtils;->cleanupAudioCaptureService(Ltv/alphonso/service/AlphonsoService;)V

    .line 127
    return-void
.end method

.method public static processClockSyncConfig(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V
    .locals 1
    .param p0, "asInstance"    # Ltv/alphonso/service/AlphonsoService;
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 785
    iget-object v0, p0, Ltv/alphonso/service/AlphonsoService;->mClockSyncher:Ltv/alphonso/service/ClockSyncher;

    if-eqz v0, :cond_0

    .line 786
    iget-object v0, p0, Ltv/alphonso/service/AlphonsoService;->mClockSyncher:Ltv/alphonso/service/ClockSyncher;

    invoke-virtual {v0, p1}, Ltv/alphonso/service/ClockSyncher;->processConfigChange(Landroid/os/Bundle;)V

    .line 787
    :cond_0
    return-void
.end method

.method public static processClockSyncInfoRegister(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V
    .locals 2
    .param p0, "asInstance"    # Ltv/alphonso/service/AlphonsoService;
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 802
    iget-object v0, p0, Ltv/alphonso/service/AlphonsoService;->mClients:Ljava/util/HashMap;

    const-string v1, "app_id"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/alphonso/service/ASClient;

    const/4 v1, 0x1

    iput-boolean v1, v0, Ltv/alphonso/service/ASClient;->clockSyncInfo:Z

    .line 804
    invoke-static {p0}, Ltv/alphonso/service/AlphonsoServiceUtils;->sendClockSkewInfoToClient(Ltv/alphonso/service/AlphonsoService;)V

    .line 805
    return-void
.end method

.method public static processClockSyncServerResponse(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V
    .locals 1
    .param p0, "asInstance"    # Ltv/alphonso/service/AlphonsoService;
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 791
    iget-object v0, p0, Ltv/alphonso/service/AlphonsoService;->mClockSyncher:Ltv/alphonso/service/ClockSyncher;

    if-eqz v0, :cond_0

    .line 793
    iget-object v0, p0, Ltv/alphonso/service/AlphonsoService;->mClockSyncher:Ltv/alphonso/service/ClockSyncher;

    invoke-virtual {v0, p1}, Ltv/alphonso/service/ClockSyncher;->processServerResponse(Landroid/os/Bundle;)V

    .line 795
    invoke-static {p0}, Ltv/alphonso/service/AlphonsoServiceUtils;->sendClockSkewInfoToClient(Ltv/alphonso/service/AlphonsoService;)V

    .line 797
    :cond_0
    return-void
.end method

.method public static processInit(Ltv/alphonso/service/AlphonsoService;Ltv/alphonso/service/AlphonsoServiceSetup;)V
    .locals 6
    .param p0, "asInstance"    # Ltv/alphonso/service/AlphonsoService;
    .param p1, "initObject"    # Ltv/alphonso/service/AlphonsoServiceSetup;

    .prologue
    .line 48
    iget-object v1, p1, Ltv/alphonso/service/AlphonsoServiceSetup;->mAppId:Ljava/lang/String;

    .line 51
    .local v1, "appId":Ljava/lang/String;
    invoke-virtual {p0}, Ltv/alphonso/service/AlphonsoService;->setupDeviceId()V

    .line 54
    new-instance v0, Ltv/alphonso/alphonsoclient/ViewingInfoService;

    iget-object v2, p0, Ltv/alphonso/service/AlphonsoService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Ltv/alphonso/service/AlphonsoService;->getResultReceiver()Landroid/os/ResultReceiver;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ltv/alphonso/alphonsoclient/ViewingInfoService;-><init>(Landroid/content/Context;Landroid/os/ResultReceiver;)V

    iput-object v0, p0, Ltv/alphonso/service/AlphonsoService;->mViewingInfoService:Ltv/alphonso/alphonsoclient/ViewingInfoService;

    .line 57
    new-instance v0, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;

    iget-object v2, p0, Ltv/alphonso/service/AlphonsoService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Ltv/alphonso/service/AlphonsoService;->mViewingInfoService:Ltv/alphonso/alphonsoclient/ViewingInfoService;

    invoke-direct {v0, v2, v3}, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;-><init>(Landroid/content/Context;Ltv/alphonso/alphonsoclient/ViewingInfoService;)V

    iput-object v0, p0, Ltv/alphonso/service/AlphonsoService;->mAudioFPUploadService:Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;

    .line 60
    new-instance v0, Ltv/alphonso/alphonsoclient/AlphonsoClient;

    iget-object v2, p0, Ltv/alphonso/service/AlphonsoService;->mContext:Landroid/content/Context;

    .line 61
    invoke-static {v2}, Ltv/alphonso/utils/Utils;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Ltv/alphonso/service/AlphonsoService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Ltv/alphonso/service/AlphonsoService;->mAudioFPUploadService:Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;

    iget-object v5, p0, Ltv/alphonso/service/AlphonsoService;->mViewingInfoService:Ltv/alphonso/alphonsoclient/ViewingInfoService;

    invoke-direct/range {v0 .. v5}, Ltv/alphonso/alphonsoclient/AlphonsoClient;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;Ltv/alphonso/alphonsoclient/ViewingInfoService;)V

    iput-object v0, p0, Ltv/alphonso/service/AlphonsoService;->mAlphonsoClient:Ltv/alphonso/alphonsoclient/AlphonsoClient;

    .line 65
    new-instance v0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;

    iget-object v2, p0, Ltv/alphonso/service/AlphonsoService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Ltv/alphonso/service/AlphonsoService;->mAudioFPUploadService:Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;

    iget-object v4, p0, Ltv/alphonso/service/AlphonsoService;->mAlphonsoClient:Ltv/alphonso/alphonsoclient/AlphonsoClient;

    invoke-direct {v0, v2, v3, v4}, Ltv/alphonso/audiocaptureservice/AudioCaptureService;-><init>(Landroid/content/Context;Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;Ltv/alphonso/alphonsoclient/AlphonsoClient;)V

    iput-object v0, p0, Ltv/alphonso/service/AlphonsoService;->mAudioCaptureService:Ltv/alphonso/audiocaptureservice/AudioCaptureService;

    .line 67
    invoke-static {p0}, Ltv/alphonso/service/AlphonsoServiceUtils;->configureServerParams(Ltv/alphonso/service/AlphonsoService;)V

    .line 69
    iget-object v0, p0, Ltv/alphonso/service/AlphonsoService;->mContext:Landroid/content/Context;

    .line 70
    invoke-static {v0}, Ltv/alphonso/utils/PreferencesManager;->getProvServerDomain(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Ltv/alphonso/service/AlphonsoService;->mContext:Landroid/content/Context;

    .line 71
    invoke-static {v2}, Ltv/alphonso/utils/PreferencesManager;->getProvServerPort(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 69
    invoke-static {p0, v0, v2}, Ltv/alphonso/service/AlphonsoServiceUtils;->enableProvisioningServerInterface(Ltv/alphonso/service/AlphonsoService;Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public static processMiscFlagsNotification(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "asInstance"    # Ltv/alphonso/service/AlphonsoService;
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 852
    invoke-static {p0, p1}, Ltv/alphonso/service/AlphonsoServiceUtils;->sendMiscFlagNotificationToClient(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V

    .line 853
    return-void
.end method

.method public static processMiscFlagsNotificationRegister(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V
    .locals 6
    .param p0, "asInstance"    # Ltv/alphonso/service/AlphonsoService;
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 836
    iget-object v3, p0, Ltv/alphonso/service/AlphonsoService;->mClients:Ljava/util/HashMap;

    const-string v4, "app_id"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ltv/alphonso/service/ASClient;

    const/4 v4, 0x1

    iput-boolean v4, v3, Ltv/alphonso/service/ASClient;->miscFlagsNotification:Z

    .line 838
    const-wide/16 v0, 0x0

    .line 840
    .local v0, "flags":J
    iget-object v3, p0, Ltv/alphonso/service/AlphonsoService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Ltv/alphonso/utils/PreferencesManager;->getDebugScreenFlag(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 841
    const-wide/16 v4, 0x1

    or-long/2addr v0, v4

    .line 843
    :cond_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 844
    .local v2, "params":Landroid/os/Bundle;
    const-string v3, "misc_flags"

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 846
    invoke-static {p0, v2}, Ltv/alphonso/service/AlphonsoServiceUtils;->sendMiscFlagNotificationToClient(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V

    .line 847
    return-void
.end method

.method public static processNotificationsDeRegister(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V
    .locals 8
    .param p0, "asInstance"    # Ltv/alphonso/service/AlphonsoService;
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 894
    const-string v2, "flags"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 896
    .local v0, "flags":J
    iget-object v2, p0, Ltv/alphonso/service/AlphonsoService;->mClients:Ljava/util/HashMap;

    const-string v3, "app_id"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltv/alphonso/service/ASClient;

    iget-wide v4, v2, Ltv/alphonso/service/ASClient;->notificationsFlags:J

    const-wide/16 v6, -0x1

    xor-long/2addr v6, v0

    and-long/2addr v4, v6

    iput-wide v4, v2, Ltv/alphonso/service/ASClient;->notificationsFlags:J

    .line 898
    iget-boolean v2, p0, Ltv/alphonso/service/AlphonsoService;->mDebug:Z

    if-eqz v2, :cond_0

    .line 899
    sget-object v3, Ltv/alphonso/service/AlphonsoServiceUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notification flags de-registered for client "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "app_id"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "; flags: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Ltv/alphonso/service/AlphonsoService;->mClients:Ljava/util/HashMap;

    const-string v5, "app_id"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltv/alphonso/service/ASClient;

    iget-wide v6, v2, Ltv/alphonso/service/ASClient;->notificationsFlags:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    :cond_0
    return-void
.end method

.method public static processNotificationsRegister(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V
    .locals 8
    .param p0, "asInstance"    # Ltv/alphonso/service/AlphonsoService;
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 883
    const-string v2, "flags"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 885
    .local v0, "flags":J
    iget-object v2, p0, Ltv/alphonso/service/AlphonsoService;->mClients:Ljava/util/HashMap;

    const-string v3, "app_id"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltv/alphonso/service/ASClient;

    iget-wide v4, v2, Ltv/alphonso/service/ASClient;->notificationsFlags:J

    or-long/2addr v4, v0

    iput-wide v4, v2, Ltv/alphonso/service/ASClient;->notificationsFlags:J

    .line 887
    iget-boolean v2, p0, Ltv/alphonso/service/AlphonsoService;->mDebug:Z

    if-eqz v2, :cond_0

    .line 888
    sget-object v3, Ltv/alphonso/service/AlphonsoServiceUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notification flags registered for client "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "app_id"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "; flags: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Ltv/alphonso/service/AlphonsoService;->mClients:Ljava/util/HashMap;

    const-string v5, "app_id"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltv/alphonso/service/ASClient;

    iget-wide v6, v2, Ltv/alphonso/service/ASClient;->notificationsFlags:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    :cond_0
    return-void
.end method

.method public static processPrimeTimeConfig(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V
    .locals 4
    .param p0, "asInstance"    # Ltv/alphonso/service/AlphonsoService;
    .param p1, "params"    # Landroid/os/Bundle;

    .prologue
    .line 1063
    const-string v2, "prime_time_config"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, [Ltv/alphonso/service/PrimeTime;

    move-object v1, v2

    check-cast v1, [Ltv/alphonso/service/PrimeTime;

    .line 1064
    .local v1, "primeTimeArray":[Ltv/alphonso/service/PrimeTime;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x5

    if-ge v0, v2, :cond_3

    .line 1066
    array-length v2, v1

    if-lt v0, v2, :cond_1

    .line 1068
    iget-object v2, p0, Ltv/alphonso/service/AlphonsoService;->mPrimeTimeArray:[Ltv/alphonso/service/PrimeTime;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ltv/alphonso/service/PrimeTime;->reset()V

    .line 1064
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1073
    :cond_1
    iget-object v2, p0, Ltv/alphonso/service/AlphonsoService;->mPrimeTimeArray:[Ltv/alphonso/service/PrimeTime;

    aget-object v2, v2, v0

    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Ltv/alphonso/service/PrimeTime;->isEqual(Ltv/alphonso/service/PrimeTime;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1075
    iget-object v2, p0, Ltv/alphonso/service/AlphonsoService;->mPrimeTimeArray:[Ltv/alphonso/service/PrimeTime;

    aget-object v2, v2, v0

    iget-object v2, v2, Ltv/alphonso/service/PrimeTime;->begin:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    .line 1077
    iget-object v2, p0, Ltv/alphonso/service/AlphonsoService;->mPrimeTimeArray:[Ltv/alphonso/service/PrimeTime;

    aget-object v2, v2, v0

    iget v2, v2, Ltv/alphonso/service/PrimeTime;->asFSMBeginEvent:I

    invoke-static {p0, v2}, Ltv/alphonso/service/AlphonsoServiceUtils;->cleanupPrimeTimeWakeupAlarm(Ltv/alphonso/service/AlphonsoService;I)V

    .line 1078
    iget-object v2, p0, Ltv/alphonso/service/AlphonsoService;->mPrimeTimeArray:[Ltv/alphonso/service/PrimeTime;

    aget-object v2, v2, v0

    iget v2, v2, Ltv/alphonso/service/PrimeTime;->asFSMEndEvent:I

    invoke-static {p0, v2}, Ltv/alphonso/service/AlphonsoServiceUtils;->cleanupPrimeTimeWakeupAlarm(Ltv/alphonso/service/AlphonsoService;I)V

    .line 1081
    :cond_2
    iget-object v2, p0, Ltv/alphonso/service/AlphonsoService;->mPrimeTimeArray:[Ltv/alphonso/service/PrimeTime;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ltv/alphonso/service/PrimeTime;->reset()V

    .line 1082
    iget-object v2, p0, Ltv/alphonso/service/AlphonsoService;->mPrimeTimeArray:[Ltv/alphonso/service/PrimeTime;

    aget-object v2, v2, v0

    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Ltv/alphonso/service/PrimeTime;->copy(Ltv/alphonso/service/PrimeTime;)V

    .line 1084
    iget-object v2, p0, Ltv/alphonso/service/AlphonsoService;->mPrimeTimeArray:[Ltv/alphonso/service/PrimeTime;

    aget-object v2, v2, v0

    iget-object v2, v2, Ltv/alphonso/service/PrimeTime;->begin:Ljava/lang/String;

    iget-object v3, p0, Ltv/alphonso/service/AlphonsoService;->mPrimeTimeArray:[Ltv/alphonso/service/PrimeTime;

    aget-object v3, v3, v0

    iget v3, v3, Ltv/alphonso/service/PrimeTime;->asFSMBeginEvent:I

    invoke-static {p0, v2, v3}, Ltv/alphonso/service/AlphonsoServiceUtils;->setupPrimeTimeWakeupAlarm(Ltv/alphonso/service/AlphonsoService;Ljava/lang/String;I)V

    .line 1085
    iget-object v2, p0, Ltv/alphonso/service/AlphonsoService;->mPrimeTimeArray:[Ltv/alphonso/service/PrimeTime;

    aget-object v2, v2, v0

    iget-object v2, v2, Ltv/alphonso/service/PrimeTime;->end:Ljava/lang/String;

    iget-object v3, p0, Ltv/alphonso/service/AlphonsoService;->mPrimeTimeArray:[Ltv/alphonso/service/PrimeTime;

    aget-object v3, v3, v0

    iget v3, v3, Ltv/alphonso/service/PrimeTime;->asFSMEndEvent:I

    invoke-static {p0, v2, v3}, Ltv/alphonso/service/AlphonsoServiceUtils;->setupPrimeTimeWakeupAlarm(Ltv/alphonso/service/AlphonsoService;Ljava/lang/String;I)V

    goto :goto_1

    .line 1089
    :cond_3
    return-void
.end method

.method public static processProvClientConfigRequestLeaseTimerExpiry(Ltv/alphonso/service/AlphonsoService;)V
    .locals 1
    .param p0, "asInstance"    # Ltv/alphonso/service/AlphonsoService;

    .prologue
    .line 263
    iget-object v0, p0, Ltv/alphonso/service/AlphonsoService;->mProvClient:Ltv/alphonso/service/ProvClient;

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Ltv/alphonso/service/AlphonsoService;->mProvClient:Ltv/alphonso/service/ProvClient;

    invoke-virtual {v0}, Ltv/alphonso/service/ProvClient;->processConfigRequestLeaseTimerExpiry()V

    .line 267
    :cond_0
    return-void
.end method

.method public static processProvClientConfigRequestRetryTimerExpiry(Ltv/alphonso/service/AlphonsoService;)V
    .locals 1
    .param p0, "asInstance"    # Ltv/alphonso/service/AlphonsoService;

    .prologue
    .line 272
    iget-object v0, p0, Ltv/alphonso/service/AlphonsoService;->mProvClient:Ltv/alphonso/service/ProvClient;

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Ltv/alphonso/service/AlphonsoService;->mProvClient:Ltv/alphonso/service/ProvClient;

    invoke-virtual {v0}, Ltv/alphonso/service/ProvClient;->processConfigRequestRetryTimerExpiry()V

    .line 276
    :cond_0
    return-void
.end method

.method public static processProvServerConfigResponse(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V
    .locals 1
    .param p0, "asInstance"    # Ltv/alphonso/service/AlphonsoService;
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 996
    iget-object v0, p0, Ltv/alphonso/service/AlphonsoService;->mProvClient:Ltv/alphonso/service/ProvClient;

    if-eqz v0, :cond_0

    .line 998
    iget-object v0, p0, Ltv/alphonso/service/AlphonsoService;->mProvClient:Ltv/alphonso/service/ProvClient;

    invoke-virtual {v0, p1}, Ltv/alphonso/service/ProvClient;->processProvServerConfigResponse(Landroid/os/Bundle;)V

    .line 1000
    :cond_0
    return-void
.end method

.method public static processProvServerParams(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V
    .locals 3
    .param p0, "asInstance"    # Ltv/alphonso/service/AlphonsoService;
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 743
    iget-object v0, p0, Ltv/alphonso/service/AlphonsoService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Ltv/alphonso/utils/PreferencesManager;->getProvServerDomain(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "prov_server_domain"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/alphonso/service/AlphonsoService;->mContext:Landroid/content/Context;

    .line 744
    invoke-static {v0}, Ltv/alphonso/utils/PreferencesManager;->getProvServerPort(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "prov_server_port"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 746
    sget-object v0, Ltv/alphonso/service/AlphonsoServiceUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Provisioning server domain("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "prov_server_domain"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") and port("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "prov_server_port"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") unchanged, ignoring PROV_SERVER_PARAMS message."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    :goto_0
    return-void

    .line 750
    :cond_0
    iget-object v0, p0, Ltv/alphonso/service/AlphonsoService;->mContext:Landroid/content/Context;

    const-string v1, "prov_server_domain"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltv/alphonso/utils/PreferencesManager;->setProvServerDomain(Landroid/content/Context;Ljava/lang/String;)V

    .line 751
    iget-object v0, p0, Ltv/alphonso/service/AlphonsoService;->mContext:Landroid/content/Context;

    const-string v1, "prov_server_port"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltv/alphonso/utils/PreferencesManager;->setProvServerPort(Landroid/content/Context;Ljava/lang/String;)V

    .line 753
    invoke-static {p0}, Ltv/alphonso/service/AlphonsoServiceUtils;->disableProvisioningServerInterface(Ltv/alphonso/service/AlphonsoService;)V

    .line 755
    iget-object v0, p0, Ltv/alphonso/service/AlphonsoService;->mContext:Landroid/content/Context;

    .line 756
    invoke-static {v0}, Ltv/alphonso/utils/PreferencesManager;->getProvServerDomain(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ltv/alphonso/service/AlphonsoService;->mContext:Landroid/content/Context;

    .line 757
    invoke-static {v1}, Ltv/alphonso/utils/PreferencesManager;->getProvServerPort(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 755
    invoke-static {p0, v0, v1}, Ltv/alphonso/service/AlphonsoServiceUtils;->enableProvisioningServerInterface(Ltv/alphonso/service/AlphonsoService;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static processViewingInfoEvent(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V
    .locals 26
    .param p0, "asInstance"    # Ltv/alphonso/service/AlphonsoService;
    .param p1, "resultData"    # Landroid/os/Bundle;

    .prologue
    .line 525
    const-string v3, "result_code"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v22

    .line 528
    .local v22, "resultCode":I
    if-eqz p1, :cond_11

    if-nez v22, :cond_11

    .line 531
    const-string v3, "acr_type"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 532
    .local v7, "acr":Ljava/lang/String;
    const-string v3, "timestamp"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ltv/alphonso/utils/Utils;->getDate(J)Ljava/lang/String;

    move-result-object v10

    .line 533
    .local v10, "date":Ljava/lang/String;
    const-string v3, "timestamp"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ltv/alphonso/utils/Utils;->getTime(J)Ljava/lang/String;

    move-result-object v11

    .line 534
    .local v11, "time":Ljava/lang/String;
    const-wide/16 v5, 0x0

    .line 535
    .local v5, "captureDuration":J
    const-wide/16 v14, 0x0

    .line 536
    .local v14, "startTS":J
    const-wide/16 v16, 0x0

    .line 537
    .local v16, "matchOffset":J
    const-wide/16 v18, 0x0

    .line 540
    .local v18, "liveFeedOffset":J
    move-object/from16 v0, p0

    iget-object v3, v0, Ltv/alphonso/service/AlphonsoService;->mClockSyncher:Ltv/alphonso/service/ClockSyncher;

    invoke-virtual {v3}, Ltv/alphonso/service/ClockSyncher;->getApplyClockOffsetToFP()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 542
    const-string v3, "start_ts"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-object v3, v0, Ltv/alphonso/service/AlphonsoService;->mClockSyncher:Ltv/alphonso/service/ClockSyncher;

    invoke-virtual {v3}, Ltv/alphonso/service/ClockSyncher;->getClockSkew()J

    move-result-wide v12

    sub-long v14, v8, v12

    .line 544
    move-object/from16 v0, p0

    iget-boolean v3, v0, Ltv/alphonso/service/AlphonsoService;->mDebug:Z

    if-eqz v3, :cond_0

    .line 545
    sget-object v3, Ltv/alphonso/service/AlphonsoServiceUtils;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "rcvd startTS: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "start_ts"

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "; ClockSkew: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v8, v0, Ltv/alphonso/service/AlphonsoService;->mClockSyncher:Ltv/alphonso/service/ClockSyncher;

    invoke-virtual {v8}, Ltv/alphonso/service/ClockSyncher;->getClockSkew()J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "; adjusted startTS: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    :cond_0
    :goto_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 558
    .local v2, "bundle":Landroid/os/Bundle;
    const-string v3, "title"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 560
    const-string v3, "title"

    const-string v4, "title"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    :cond_1
    const-string v3, "brand"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 565
    const-string v3, "brand"

    const-string v4, "brand"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    :cond_2
    const-string v3, "network"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 570
    const-string v3, "network"

    const-string v4, "network"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    :cond_3
    const-string v3, "channel"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 575
    const-string v3, "channel"

    const-string v4, "channel"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    :cond_4
    const-string v3, "match_offset"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 580
    const-string v3, "match_offset"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v16

    .line 581
    const-string v3, "match_offset"

    move-wide/from16 v0, v16

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 584
    :cond_5
    const-string v3, "live_feed_offset"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 586
    const-string v3, "live_feed_offset"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v18

    .line 587
    const-string v3, "live_feed_offset"

    move-wide/from16 v0, v18

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 590
    :cond_6
    const-string v3, "match_time"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 592
    const-string v3, "match_time"

    const-string v4, "match_time"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-virtual {v2, v3, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 595
    :cond_7
    const-string v3, "match_tz"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 597
    const-string v3, "match_tz"

    const-string v4, "match_tz"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-virtual {v2, v3, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 600
    :cond_8
    const-string v3, "station_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 602
    const-string v3, "station_id"

    const-string v4, "station_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    :cond_9
    const-string v3, "tms_info"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 607
    const-string v3, "tms_info"

    const-string v4, "tms_info"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    :cond_a
    const-string v3, "token"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 612
    const-string v3, "token"

    const-string v4, "token"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    :cond_b
    const-string v3, "acr_type"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 617
    const-string v3, "acr_type"

    const-string v4, "acr_type"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    :cond_c
    const-string v3, "id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 622
    const-string v3, "content_id"

    const-string v4, "id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 625
    :cond_d
    const-string v3, "date"

    invoke-virtual {v2, v3, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    const-string v3, "time"

    invoke-virtual {v2, v3, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    const-string v3, "message_type"

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 628
    const-string v3, "resultCode"

    move/from16 v0, v22

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 629
    const-string v3, "type"

    const-string v4, "type"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    const-string v3, "start_ts"

    invoke-virtual {v2, v3, v14, v15}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 632
    const-string v3, "timestamp"

    const-string v4, "timestamp"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-virtual {v2, v3, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 634
    const-string v3, "timestamp"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    sub-long v5, v8, v14

    .line 636
    const-string v3, "match_delay"

    invoke-virtual {v2, v3, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 637
    const-wide/16 v8, 0x3e8

    div-long v24, v5, v8

    .line 638
    .local v24, "seconds":J
    const-wide/16 v8, 0x3e8

    rem-long v20, v5, v8

    .line 640
    .local v20, "milliSeconds":J
    new-instance v23, Ljava/lang/StringBuffer;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuffer;-><init>()V

    .line 641
    .local v23, "str":Ljava/lang/StringBuffer;
    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 642
    const-string v3, "s "

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 643
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 644
    const-string v3, "ms."

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 645
    const-string v3, "match_duration"

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    move-object/from16 v0, p0

    invoke-static {v0, v2}, Ltv/alphonso/service/AlphonsoServiceUtils;->populateTvMetadata(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V

    .line 649
    move-object/from16 v0, p0

    invoke-static {v0, v2}, Ltv/alphonso/service/AlphonsoServiceUtils;->sendResultToClient(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V

    .line 651
    move-object/from16 v0, p0

    invoke-static {v0, v2}, Ltv/alphonso/service/AlphonsoServiceUtils;->sendResultToACS(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V

    .line 653
    const-string v3, "type"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    const-string v3, "type"

    .line 654
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "commercial"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 656
    move-object/from16 v0, p0

    iget-object v3, v0, Ltv/alphonso/service/AlphonsoService;->mContext:Landroid/content/Context;

    const-string v4, "title"

    .line 657
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v8, "logo_filename"

    .line 659
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "brand"

    .line 660
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v12, "timestamp"

    .line 661
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v12

    .line 656
    invoke-static/range {v3 .. v19}, Ltv/alphonso/dbutil/database/DBAdapter;->createAndInsertDBRecord(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJJ)V

    .line 681
    .end local v2    # "bundle":Landroid/os/Bundle;
    .end local v5    # "captureDuration":J
    .end local v7    # "acr":Ljava/lang/String;
    .end local v10    # "date":Ljava/lang/String;
    .end local v11    # "time":Ljava/lang/String;
    .end local v14    # "startTS":J
    .end local v16    # "matchOffset":J
    .end local v18    # "liveFeedOffset":J
    .end local v20    # "milliSeconds":J
    .end local v23    # "str":Ljava/lang/StringBuffer;
    .end local v24    # "seconds":J
    :cond_e
    :goto_1
    return-void

    .line 549
    .restart local v5    # "captureDuration":J
    .restart local v7    # "acr":Ljava/lang/String;
    .restart local v10    # "date":Ljava/lang/String;
    .restart local v11    # "time":Ljava/lang/String;
    .restart local v14    # "startTS":J
    .restart local v16    # "matchOffset":J
    .restart local v18    # "liveFeedOffset":J
    :cond_f
    const-string v3, "start_ts"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v14

    .line 551
    move-object/from16 v0, p0

    iget-boolean v3, v0, Ltv/alphonso/service/AlphonsoService;->mDebug:Z

    if-eqz v3, :cond_0

    .line 552
    sget-object v3, Ltv/alphonso/service/AlphonsoServiceUtils;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ClockSkew not applied to FP. rcvd startTS: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "start_ts"

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "; ClockSkew: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v8, v0, Ltv/alphonso/service/AlphonsoService;->mClockSyncher:Ltv/alphonso/service/ClockSyncher;

    invoke-virtual {v8}, Ltv/alphonso/service/ClockSyncher;->getClockSkew()J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 664
    .restart local v2    # "bundle":Landroid/os/Bundle;
    .restart local v20    # "milliSeconds":J
    .restart local v23    # "str":Ljava/lang/StringBuffer;
    .restart local v24    # "seconds":J
    :cond_10
    const-string v3, "type"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    const-string v3, "type"

    .line 665
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "livetv"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 667
    move-object/from16 v0, p0

    iget-object v3, v0, Ltv/alphonso/service/AlphonsoService;->mContext:Landroid/content/Context;

    const-string v4, "title"

    .line 668
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v8, ""

    const-string v9, "network"

    .line 671
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v12, "timestamp"

    .line 672
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v12

    .line 667
    invoke-static/range {v3 .. v19}, Ltv/alphonso/dbutil/database/DBAdapter;->createAndInsertDBRecord(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJJ)V

    goto :goto_1

    .line 679
    .end local v2    # "bundle":Landroid/os/Bundle;
    .end local v5    # "captureDuration":J
    .end local v7    # "acr":Ljava/lang/String;
    .end local v10    # "date":Ljava/lang/String;
    .end local v11    # "time":Ljava/lang/String;
    .end local v14    # "startTS":J
    .end local v16    # "matchOffset":J
    .end local v18    # "liveFeedOffset":J
    .end local v20    # "milliSeconds":J
    .end local v23    # "str":Ljava/lang/StringBuffer;
    .end local v24    # "seconds":J
    :cond_11
    sget-object v3, Ltv/alphonso/service/AlphonsoServiceUtils;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Viewing Info Event with error code: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method public static sendClockSkewInfoToClient(Ltv/alphonso/service/AlphonsoService;)V
    .locals 7
    .param p0, "asInstance"    # Ltv/alphonso/service/AlphonsoService;

    .prologue
    .line 810
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 811
    .local v2, "msg":Landroid/os/Message;
    const/16 v3, 0x17

    iput v3, v2, Landroid/os/Message;->what:I

    .line 813
    iget-object v3, p0, Ltv/alphonso/service/AlphonsoService;->mClockSyncher:Ltv/alphonso/service/ClockSyncher;

    invoke-virtual {v3}, Ltv/alphonso/service/ClockSyncher;->getClockSkewInfo()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 815
    iget-object v3, p0, Ltv/alphonso/service/AlphonsoService;->mClients:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 817
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ltv/alphonso/service/ASClient;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ltv/alphonso/service/ASClient;

    iget-boolean v3, v3, Ltv/alphonso/service/ASClient;->clockSyncInfo:Z

    if-eqz v3, :cond_0

    .line 820
    iget-boolean v3, p0, Ltv/alphonso/service/AlphonsoService;->mDebug:Z

    if-eqz v3, :cond_1

    .line 821
    sget-object v5, Ltv/alphonso/service/AlphonsoServiceUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Sending ClockSkewInfo to client "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    :cond_1
    :try_start_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ltv/alphonso/service/ASClient;

    iget-object v3, v3, Ltv/alphonso/service/ASClient;->messenger:Landroid/os/Messenger;

    invoke-virtual {v3, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 825
    :catch_0
    move-exception v0

    .line 827
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v3, Ltv/alphonso/service/AlphonsoServiceUtils;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RemoteException "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 831
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ltv/alphonso/service/ASClient;>;"
    :cond_2
    return-void
.end method

.method public static sendHistoryResponse(Ltv/alphonso/service/AlphonsoService;Ljava/lang/String;BJ)V
    .locals 23
    .param p0, "asInstance"    # Ltv/alphonso/service/AlphonsoService;
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "resultCode"    # B
    .param p3, "interval"    # J

    .prologue
    .line 317
    new-instance v14, Landroid/os/Bundle;

    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    .line 318
    .local v14, "response":Landroid/os/Bundle;
    const-string v15, "resultCode"

    move/from16 v0, p2

    invoke-virtual {v14, v15, v0}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 319
    if-nez p2, :cond_4

    .line 321
    move-object/from16 v0, p0

    iget-object v15, v0, Ltv/alphonso/service/AlphonsoService;->mContext:Landroid/content/Context;

    invoke-static {v15}, Ltv/alphonso/dbutil/database/DBAdapter;->getInstance(Landroid/content/Context;)Ltv/alphonso/dbutil/database/DBAdapter;

    move-result-object v4

    .line 323
    .local v4, "db":Ltv/alphonso/dbutil/database/DBAdapter;
    const/4 v2, 0x0

    .line 324
    .local v2, "c":Landroid/database/Cursor;
    const-wide/16 v18, 0x0

    cmp-long v15, p3, v18

    if-nez v15, :cond_2

    .line 326
    invoke-virtual {v4}, Ltv/alphonso/dbutil/database/DBAdapter;->getAllRecords()Landroid/database/Cursor;

    move-result-object v2

    .line 337
    :goto_0
    const/4 v12, 0x1

    .line 338
    .local v12, "moreRecords":Z
    if-eqz v2, :cond_0

    .line 339
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v15

    if-nez v15, :cond_1

    .line 340
    :cond_0
    const/4 v12, 0x0

    .line 344
    :cond_1
    :try_start_0
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 345
    .local v6, "jarray":Lorg/json/JSONArray;
    :goto_1
    if-eqz v12, :cond_3

    .line 347
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 348
    .local v8, "jsonRecord":Lorg/json/JSONObject;
    const-string v15, "title"

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v8, v15, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 349
    const-string v15, "brand"

    const/16 v18, 0x6

    move/from16 v0, v18

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v8, v15, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 350
    const-string v15, "date"

    const/16 v18, 0x2

    move/from16 v0, v18

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v8, v15, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 351
    const-string v15, "time"

    const/16 v18, 0x3

    move/from16 v0, v18

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v8, v15, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 352
    const-string v15, "match_duration"

    const/16 v18, 0x4

    move/from16 v0, v18

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v8, v15, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 353
    const-string v15, "app_match_duration"

    const/16 v18, 0xc

    move/from16 v0, v18

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v8, v15, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 354
    const-string v15, "start_ts"

    const/16 v18, 0x9

    move/from16 v0, v18

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v8, v15, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 355
    const/16 v15, 0x8

    invoke-interface {v2, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    const/16 v15, 0x9

    invoke-interface {v2, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    sub-long v10, v18, v20

    .line 357
    .local v10, "match_delay":J
    const-string v15, "match_delay"

    invoke-virtual {v8, v15, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 359
    const-string v15, "match_offset"

    const/16 v18, 0xa

    move/from16 v0, v18

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v8, v15, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 360
    const-string v15, "live_feed_offset"

    const/16 v18, 0xb

    move/from16 v0, v18

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v8, v15, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 362
    invoke-virtual {v6, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 345
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v12

    goto/16 :goto_1

    .line 332
    .end local v6    # "jarray":Lorg/json/JSONArray;
    .end local v8    # "jsonRecord":Lorg/json/JSONObject;
    .end local v10    # "match_delay":J
    .end local v12    # "moreRecords":Z
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    const-wide/16 v20, 0x3e8

    mul-long v20, v20, p3

    sub-long v16, v18, v20

    .line 334
    .local v16, "timestamp":J
    move-wide/from16 v0, v16

    invoke-virtual {v4, v0, v1}, Ltv/alphonso/dbutil/database/DBAdapter;->getAllRecordsFromTimestamp(J)Landroid/database/Cursor;

    move-result-object v2

    goto/16 :goto_0

    .line 365
    .end local v16    # "timestamp":J
    .restart local v6    # "jarray":Lorg/json/JSONArray;
    .restart local v12    # "moreRecords":Z
    :cond_3
    :try_start_1
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 366
    .local v7, "jobj":Lorg/json/JSONObject;
    const-string v15, "ids"

    invoke-virtual {v7, v15, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 369
    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    .line 372
    .local v9, "jsonString":Ljava/lang/String;
    const-string v15, "id_list"

    invoke-virtual {v14, v15, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 379
    .end local v2    # "c":Landroid/database/Cursor;
    .end local v4    # "db":Ltv/alphonso/dbutil/database/DBAdapter;
    .end local v6    # "jarray":Lorg/json/JSONArray;
    .end local v7    # "jobj":Lorg/json/JSONObject;
    .end local v9    # "jsonString":Ljava/lang/String;
    .end local v12    # "moreRecords":Z
    :cond_4
    :goto_2
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v13

    .line 380
    .local v13, "msg":Landroid/os/Message;
    const/16 v15, 0xe

    iput v15, v13, Landroid/os/Message;->what:I

    .line 381
    invoke-virtual {v13, v14}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 384
    :try_start_2
    move-object/from16 v0, p0

    iget-object v15, v0, Ltv/alphonso/service/AlphonsoService;->mClients:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ltv/alphonso/service/ASClient;

    .line 385
    .local v3, "client":Ltv/alphonso/service/ASClient;
    if-eqz v3, :cond_5

    .line 386
    iget-object v15, v3, Ltv/alphonso/service/ASClient;->messenger:Landroid/os/Messenger;

    invoke-virtual {v15, v13}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 394
    .end local v3    # "client":Ltv/alphonso/service/ASClient;
    :goto_3
    return-void

    .line 373
    .end local v13    # "msg":Landroid/os/Message;
    .restart local v2    # "c":Landroid/database/Cursor;
    .restart local v4    # "db":Ltv/alphonso/dbutil/database/DBAdapter;
    .restart local v12    # "moreRecords":Z
    :catch_0
    move-exception v5

    .line 375
    .local v5, "e":Lorg/json/JSONException;
    invoke-virtual {v5}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2

    .line 389
    .end local v2    # "c":Landroid/database/Cursor;
    .end local v4    # "db":Ltv/alphonso/dbutil/database/DBAdapter;
    .end local v5    # "e":Lorg/json/JSONException;
    .end local v12    # "moreRecords":Z
    .restart local v3    # "client":Ltv/alphonso/service/ASClient;
    .restart local v13    # "msg":Landroid/os/Message;
    :cond_5
    :try_start_3
    sget-object v15, Ltv/alphonso/service/AlphonsoServiceUtils;->TAG:Ljava/lang/String;

    const-string v18, "Client object is not available."

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    .line 391
    .end local v3    # "client":Ltv/alphonso/service/ASClient;
    :catch_1
    move-exception v5

    .line 392
    .local v5, "e":Landroid/os/RemoteException;
    invoke-virtual {v5}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_3
.end method

.method public static sendInitResponse(Ltv/alphonso/service/AlphonsoService;B)V
    .locals 8
    .param p0, "asInstance"    # Ltv/alphonso/service/AlphonsoService;
    .param p1, "resultCode"    # B

    .prologue
    .line 77
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 79
    .local v3, "response":Landroid/os/Bundle;
    const-string v4, "result_code"

    invoke-virtual {v3, v4, p1}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 81
    if-nez p1, :cond_0

    .line 82
    const-string v4, "alp_uid"

    iget-object v5, p0, Ltv/alphonso/service/AlphonsoService;->mAlpUid:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 86
    .local v2, "msg":Landroid/os/Message;
    const/4 v4, 0x4

    iput v4, v2, Landroid/os/Message;->what:I

    .line 87
    invoke-virtual {v2, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 89
    iget-object v4, p0, Ltv/alphonso/service/AlphonsoService;->mClients:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 91
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ltv/alphonso/service/ASClient;>;"
    iget-boolean v4, p0, Ltv/alphonso/service/AlphonsoService;->mDebug:Z

    if-eqz v4, :cond_1

    .line 92
    sget-object v6, Ltv/alphonso/service/AlphonsoServiceUtils;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Sending INIT_RESPONSE to client "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :cond_1
    :try_start_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ltv/alphonso/service/ASClient;

    iget-object v4, v4, Ltv/alphonso/service/ASClient;->messenger:Landroid/os/Messenger;

    invoke-virtual {v4, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 96
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v4, Ltv/alphonso/service/AlphonsoServiceUtils;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "RemoteException "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 102
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ltv/alphonso/service/ASClient;>;"
    :cond_2
    return-void
.end method

.method public static sendMiscFlagNotificationToClient(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V
    .locals 7
    .param p0, "asInstance"    # Ltv/alphonso/service/AlphonsoService;
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 858
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 859
    .local v2, "msg":Landroid/os/Message;
    const/16 v3, 0x18

    iput v3, v2, Landroid/os/Message;->what:I

    .line 860
    invoke-virtual {v2, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 862
    iget-object v3, p0, Ltv/alphonso/service/AlphonsoService;->mClients:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 864
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ltv/alphonso/service/ASClient;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ltv/alphonso/service/ASClient;

    iget-boolean v3, v3, Ltv/alphonso/service/ASClient;->miscFlagsNotification:Z

    if-eqz v3, :cond_0

    .line 867
    iget-boolean v3, p0, Ltv/alphonso/service/AlphonsoService;->mDebug:Z

    if-eqz v3, :cond_1

    .line 868
    sget-object v5, Ltv/alphonso/service/AlphonsoServiceUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Sending MISC_FLAGS_NOTIFICATION to client "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    :cond_1
    :try_start_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ltv/alphonso/service/ASClient;

    iget-object v3, v3, Ltv/alphonso/service/ASClient;->messenger:Landroid/os/Messenger;

    invoke-virtual {v3, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 872
    :catch_0
    move-exception v0

    .line 874
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v3, Ltv/alphonso/service/AlphonsoServiceUtils;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RemoteException "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 878
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ltv/alphonso/service/ASClient;>;"
    :cond_2
    return-void
.end method

.method public static sendRegistrationRequest(Ltv/alphonso/service/AlphonsoService;)V
    .locals 3
    .param p0, "asInstance"    # Ltv/alphonso/service/AlphonsoService;

    .prologue
    .line 165
    iget-object v1, p0, Ltv/alphonso/service/AlphonsoService;->mAlphonsoClient:Ltv/alphonso/alphonsoclient/AlphonsoClient;

    iget-object v1, v1, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 166
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x9

    iput v1, v0, Landroid/os/Message;->what:I

    .line 168
    iget-boolean v1, p0, Ltv/alphonso/service/AlphonsoService;->mDebug:Z

    if-eqz v1, :cond_0

    .line 169
    sget-object v1, Ltv/alphonso/service/AlphonsoServiceUtils;->TAG:Ljava/lang/String;

    const-string v2, "Sending REGISTRATION message to AlphonsoClient Service"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :cond_0
    iget-object v1, p0, Ltv/alphonso/service/AlphonsoService;->mAlphonsoClient:Ltv/alphonso/alphonsoclient/AlphonsoClient;

    iget-object v1, v1, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 172
    return-void
.end method

.method public static sendResultToACS(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V
    .locals 2
    .param p0, "asInstance"    # Ltv/alphonso/service/AlphonsoService;
    .param p1, "resultData"    # Landroid/os/Bundle;

    .prologue
    .line 491
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 492
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x17

    iput v1, v0, Landroid/os/Message;->what:I

    .line 493
    invoke-virtual {v0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 495
    iget-object v1, p0, Ltv/alphonso/service/AlphonsoService;->mAudioCaptureService:Ltv/alphonso/audiocaptureservice/AudioCaptureService;

    iget-object v1, v1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 496
    return-void
.end method

.method public static sendResultToClient(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V
    .locals 7
    .param p0, "asInstance"    # Ltv/alphonso/service/AlphonsoService;
    .param p1, "resultData"    # Landroid/os/Bundle;

    .prologue
    .line 502
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 503
    .local v2, "msg":Landroid/os/Message;
    const/16 v3, 0x11

    iput v3, v2, Landroid/os/Message;->what:I

    .line 504
    invoke-virtual {v2, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 506
    iget-object v3, p0, Ltv/alphonso/service/AlphonsoService;->mClients:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 508
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ltv/alphonso/service/ASClient;>;"
    iget-boolean v3, p0, Ltv/alphonso/service/AlphonsoService;->mDebug:Z

    if-eqz v3, :cond_0

    .line 509
    sget-object v5, Ltv/alphonso/service/AlphonsoServiceUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Sending RESULT to client "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    :cond_0
    :try_start_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ltv/alphonso/service/ASClient;

    iget-object v3, v3, Ltv/alphonso/service/ASClient;->messenger:Landroid/os/Messenger;

    invoke-virtual {v3, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 513
    :catch_0
    move-exception v0

    .line 515
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v3, Ltv/alphonso/service/AlphonsoServiceUtils;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RemoteException "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 519
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ltv/alphonso/service/ASClient;>;"
    :cond_1
    return-void
.end method

.method public static sendUpdateDeviceIdParamsToACS(Ltv/alphonso/service/AlphonsoService;)V
    .locals 4
    .param p0, "asInstance"    # Ltv/alphonso/service/AlphonsoService;

    .prologue
    .line 977
    iget-object v2, p0, Ltv/alphonso/service/AlphonsoService;->mAudioCaptureService:Ltv/alphonso/audiocaptureservice/AudioCaptureService;

    if-eqz v2, :cond_1

    .line 979
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 980
    .local v1, "params":Landroid/os/Bundle;
    const-string v2, "device_id"

    iget-object v3, p0, Ltv/alphonso/service/AlphonsoService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Ltv/alphonso/utils/PreferencesManager;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 982
    iget-object v2, p0, Ltv/alphonso/service/AlphonsoService;->mAudioCaptureService:Ltv/alphonso/audiocaptureservice/AudioCaptureService;

    iget-object v2, v2, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 983
    .local v0, "msg":Landroid/os/Message;
    const/16 v2, 0x18

    iput v2, v0, Landroid/os/Message;->what:I

    .line 984
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 986
    iget-boolean v2, p0, Ltv/alphonso/service/AlphonsoService;->mDebug:Z

    if-eqz v2, :cond_0

    .line 987
    sget-object v2, Ltv/alphonso/service/AlphonsoServiceUtils;->TAG:Ljava/lang/String;

    const-string v3, "Sending ACS_UPDATE_DEVICE_ID message to AudioCaptureService."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    :cond_0
    iget-object v2, p0, Ltv/alphonso/service/AlphonsoService;->mAudioCaptureService:Ltv/alphonso/audiocaptureservice/AudioCaptureService;

    iget-object v2, v2, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 991
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "params":Landroid/os/Bundle;
    :cond_1
    return-void
.end method

.method public static setupPrimeTimeWakeupAlarm(Ltv/alphonso/service/AlphonsoService;Ljava/lang/String;I)V
    .locals 12
    .param p0, "acsInstance"    # Ltv/alphonso/service/AlphonsoService;
    .param p1, "primeTimeHoursMins"    # Ljava/lang/String;
    .param p2, "asFSMEvent"    # I

    .prologue
    const/4 v1, 0x0

    .line 1094
    iget-boolean v2, p0, Ltv/alphonso/service/AlphonsoService;->mDebug:Z

    if-eqz v2, :cond_0

    .line 1095
    sget-object v2, Ltv/alphonso/service/AlphonsoServiceUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Setting up prime time wakeup alarm for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ltv/alphonso/service/ASFSM;->fsmEventStrings:[Ljava/lang/String;

    aget-object v4, v4, p2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1097
    :cond_0
    const-string v2, ":"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 1098
    .local v11, "primeTimeParams":[Ljava/lang/String;
    aget-object v2, v11, v1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 1099
    .local v9, "primeTimeHours":I
    const/4 v2, 0x1

    aget-object v2, v11, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 1101
    .local v10, "primeTimeMinutes":I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 1102
    .local v7, "calendar":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v7, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1103
    const/16 v2, 0xb

    invoke-virtual {v7, v2, v9}, Ljava/util/Calendar;->set(II)V

    .line 1104
    const/16 v2, 0xc

    invoke-virtual {v7, v2, v10}, Ljava/util/Calendar;->set(II)V

    .line 1108
    iget-object v2, p0, Ltv/alphonso/service/AlphonsoService;->mContext:Landroid/content/Context;

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1109
    .local v0, "am":Landroid/app/AlarmManager;
    new-instance v8, Landroid/content/Intent;

    iget-object v2, p0, Ltv/alphonso/service/AlphonsoService;->mContext:Landroid/content/Context;

    const-class v3, Ltv/alphonso/service/AlphonsoService;

    invoke-direct {v8, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1110
    .local v8, "intent":Landroid/content/Intent;
    sget-object v2, Ltv/alphonso/service/ASFSM;->fsmEventStrings:[Ljava/lang/String;

    aget-object v2, v2, p2

    invoke-virtual {v8, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1111
    const-string v2, "tv.alphonso.service.AlphonsoService.EVENT"

    invoke-virtual {v8, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1112
    iget-object v2, p0, Ltv/alphonso/service/AlphonsoService;->mContext:Landroid/content/Context;

    const/high16 v3, 0x8000000

    invoke-static {v2, v1, v8, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 1114
    .local v6, "pi":Landroid/app/PendingIntent;
    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x5265c00

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    .line 1115
    return-void
.end method

.method public static startAdIdPollTimer(Ltv/alphonso/service/AlphonsoService;)V
    .locals 9
    .param p0, "asInstance"    # Ltv/alphonso/service/AlphonsoService;

    .prologue
    const/4 v1, 0x0

    .line 911
    iget-boolean v2, p0, Ltv/alphonso/service/AlphonsoService;->mDebug:Z

    if-eqz v2, :cond_0

    .line 912
    sget-object v2, Ltv/alphonso/service/AlphonsoServiceUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Starting startAdIdPollTimer with duration: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v8, p0, Ltv/alphonso/service/AlphonsoService;->mAdIdPollDuration:I

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    :cond_0
    iget-object v2, p0, Ltv/alphonso/service/AlphonsoService;->mContext:Landroid/content/Context;

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 915
    .local v0, "am":Landroid/app/AlarmManager;
    new-instance v7, Landroid/content/Intent;

    iget-object v2, p0, Ltv/alphonso/service/AlphonsoService;->mContext:Landroid/content/Context;

    const-class v3, Ltv/alphonso/service/AlphonsoService;

    invoke-direct {v7, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 916
    .local v7, "intent":Landroid/content/Intent;
    const-string v2, "AD_ID_POLL_TIMER_EXPIRY"

    invoke-virtual {v7, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 917
    const-string v2, "tv.alphonso.service.AlphonsoService.EVENT"

    const/16 v3, 0x29

    invoke-virtual {v7, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 918
    iget-object v2, p0, Ltv/alphonso/service/AlphonsoService;->mContext:Landroid/content/Context;

    const/high16 v3, 0x8000000

    invoke-static {v2, v1, v7, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 920
    .local v6, "pi":Landroid/app/PendingIntent;
    iget v2, p0, Ltv/alphonso/service/AlphonsoService;->mAdIdPollDuration:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v4, v2

    .line 922
    .local v4, "interval":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, v4

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    .line 923
    return-void
.end method

.method public static stopAdIdPollTimer(Ltv/alphonso/service/AlphonsoService;)V
    .locals 6
    .param p0, "asInstance"    # Ltv/alphonso/service/AlphonsoService;

    .prologue
    .line 928
    iget-boolean v3, p0, Ltv/alphonso/service/AlphonsoService;->mDebug:Z

    if-eqz v3, :cond_0

    .line 929
    sget-object v3, Ltv/alphonso/service/AlphonsoServiceUtils;->TAG:Ljava/lang/String;

    const-string v4, "Stopping stopAdIdPollTimer."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    :cond_0
    iget-object v3, p0, Ltv/alphonso/service/AlphonsoService;->mContext:Landroid/content/Context;

    const-string v4, "alarm"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 932
    .local v0, "am":Landroid/app/AlarmManager;
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Ltv/alphonso/service/AlphonsoService;->mContext:Landroid/content/Context;

    const-class v4, Ltv/alphonso/service/AlphonsoService;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 933
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "AD_ID_POLL_TIMER_EXPIRY"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 934
    const-string v3, "tv.alphonso.service.AlphonsoService.EVENT"

    const/16 v4, 0x29

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 935
    iget-object v3, p0, Ltv/alphonso/service/AlphonsoService;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/high16 v5, 0x8000000

    invoke-static {v3, v4, v1, v5}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 936
    .local v2, "pi":Landroid/app/PendingIntent;
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 937
    return-void
.end method

.method public static stopLocationService(Ltv/alphonso/service/AlphonsoService;)V
    .locals 2
    .param p0, "asInstance"    # Ltv/alphonso/service/AlphonsoService;

    .prologue
    .line 177
    iget-object v0, p0, Ltv/alphonso/service/AlphonsoService;->mLocationService:Ltv/alphonso/service/LocationService;

    if-eqz v0, :cond_1

    .line 179
    iget-boolean v0, p0, Ltv/alphonso/service/AlphonsoService;->mDebug:Z

    if-eqz v0, :cond_0

    .line 180
    sget-object v0, Ltv/alphonso/service/AlphonsoServiceUtils;->TAG:Ljava/lang/String;

    const-string v1, "Stopping LocationService."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :cond_0
    iget-object v0, p0, Ltv/alphonso/service/AlphonsoService;->mLocationService:Ltv/alphonso/service/LocationService;

    invoke-virtual {v0}, Ltv/alphonso/service/LocationService;->destroy()V

    .line 186
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Ltv/alphonso/service/AlphonsoService;->mLocationService:Ltv/alphonso/service/LocationService;

    .line 187
    return-void
.end method

.method public static updateDebugFlagRequest(Ltv/alphonso/service/AlphonsoService;Z)V
    .locals 0
    .param p0, "asInstance"    # Ltv/alphonso/service/AlphonsoService;
    .param p1, "debugFlag"    # Z

    .prologue
    .line 399
    iput-boolean p1, p0, Ltv/alphonso/service/AlphonsoService;->mDebug:Z

    .line 400
    return-void
.end method

.method public static updateID(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V
    .locals 1
    .param p0, "asInstance"    # Ltv/alphonso/service/AlphonsoService;
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 905
    iget-object v0, p0, Ltv/alphonso/service/AlphonsoService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Ltv/alphonso/dbutil/database/DBAdapter;->getInstance(Landroid/content/Context;)Ltv/alphonso/dbutil/database/DBAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Ltv/alphonso/dbutil/database/DBAdapter;->updateMatchDurationOfIdRecord(Landroid/os/Bundle;)V

    .line 906
    return-void
.end method
