.class public Ltv/alphonso/alphonsoclient/ViewingInfoService;
.super Ljava/lang/Object;
.source "ViewingInfoService.java"


# static fields
.field public static final ALPHONSO_VIEWING_INFO_API_VERSION:Ljava/lang/String; = "v2"

.field public static final DESTROY:I = 0x2

.field public static final EXTRA_RESULT_RECEIVER:Ljava/lang/String; = "tv.alphonso.alphonsoclient.ViewingInfoService.EXTRA_RESULT_RECEIVER"

.field public static final FAIL:I = 0x1

.field public static final SEND_REQUEST:I = 0x3

.field public static final SETUP:I = 0x1

.field public static final SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String;

.field public static final UPDATE_ACR_INFO:I = 0x4


# instance fields
.field private mAPIEndTS:J

.field private mAcrType:Ljava/lang/String;

.field private mAlphonsoServerDomain:Ljava/lang/String;

.field private mAlphonsoServerPort:Ljava/lang/String;

.field private mAlphonsoUid:Ljava/lang/String;

.field private mApiKey:Ljava/lang/String;

.field public mCallback:Landroid/os/Handler$Callback;

.field private mDeviceId:Ljava/lang/String;

.field public mHandler:Landroid/os/Handler;

.field private mReceiver:Landroid/os/ResultReceiver;

.field private mThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Ltv/alphonso/alphonsoclient/ViewingInfoService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ltv/alphonso/alphonsoclient/ViewingInfoService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/ResultReceiver;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "receiver"    # Landroid/os/ResultReceiver;

    .prologue
    const/4 v0, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object v0, p0, Ltv/alphonso/alphonsoclient/ViewingInfoService;->mDeviceId:Ljava/lang/String;

    .line 34
    iput-object v0, p0, Ltv/alphonso/alphonsoclient/ViewingInfoService;->mAlphonsoServerDomain:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Ltv/alphonso/alphonsoclient/ViewingInfoService;->mAlphonsoServerPort:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Ltv/alphonso/alphonsoclient/ViewingInfoService;->mAlphonsoUid:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Ltv/alphonso/alphonsoclient/ViewingInfoService;->mApiKey:Ljava/lang/String;

    .line 40
    iput-object v0, p0, Ltv/alphonso/alphonsoclient/ViewingInfoService;->mThread:Landroid/os/HandlerThread;

    .line 41
    iput-object v0, p0, Ltv/alphonso/alphonsoclient/ViewingInfoService;->mHandler:Landroid/os/Handler;

    .line 43
    iput-object v0, p0, Ltv/alphonso/alphonsoclient/ViewingInfoService;->mReceiver:Landroid/os/ResultReceiver;

    .line 45
    const-string v0, "ACR_SPLIT"

    iput-object v0, p0, Ltv/alphonso/alphonsoclient/ViewingInfoService;->mAcrType:Ljava/lang/String;

    .line 47
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ltv/alphonso/alphonsoclient/ViewingInfoService;->mAPIEndTS:J

    .line 174
    new-instance v0, Ltv/alphonso/alphonsoclient/ViewingInfoService$1;

    invoke-direct {v0, p0}, Ltv/alphonso/alphonsoclient/ViewingInfoService$1;-><init>(Ltv/alphonso/alphonsoclient/ViewingInfoService;)V

    iput-object v0, p0, Ltv/alphonso/alphonsoclient/ViewingInfoService;->mCallback:Landroid/os/Handler$Callback;

    .line 51
    sget-boolean v0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->debug:Z

    if-eqz v0, :cond_0

    .line 52
    sget-object v0, Ltv/alphonso/alphonsoclient/ViewingInfoService;->TAG:Ljava/lang/String;

    const-string v1, "TAG, ViewingInfoService()."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    :cond_0
    invoke-virtual {p0}, Ltv/alphonso/alphonsoclient/ViewingInfoService;->setupViewingInfoServiceThread()V

    .line 56
    iput-object p2, p0, Ltv/alphonso/alphonsoclient/ViewingInfoService;->mReceiver:Landroid/os/ResultReceiver;

    .line 57
    return-void
.end method

.method static synthetic access$000(Ltv/alphonso/alphonsoclient/ViewingInfoService;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Ltv/alphonso/alphonsoclient/ViewingInfoService;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Ltv/alphonso/alphonsoclient/ViewingInfoService;->processSetupMessage(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$100(Ltv/alphonso/alphonsoclient/ViewingInfoService;)V
    .locals 0
    .param p0, "x0"    # Ltv/alphonso/alphonsoclient/ViewingInfoService;

    .prologue
    .line 16
    invoke-direct {p0}, Ltv/alphonso/alphonsoclient/ViewingInfoService;->processDestroyMessage()V

    return-void
.end method

.method static synthetic access$200(Ltv/alphonso/alphonsoclient/ViewingInfoService;)V
    .locals 0
    .param p0, "x0"    # Ltv/alphonso/alphonsoclient/ViewingInfoService;

    .prologue
    .line 16
    invoke-direct {p0}, Ltv/alphonso/alphonsoclient/ViewingInfoService;->processSendViewingInfoRquest()V

    return-void
.end method

.method static synthetic access$300(Ltv/alphonso/alphonsoclient/ViewingInfoService;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 0
    .param p0, "x0"    # Ltv/alphonso/alphonsoclient/ViewingInfoService;
    .param p1, "x1"    # Landroid/os/Bundle;
    .param p2, "x2"    # Landroid/os/ResultReceiver;

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Ltv/alphonso/alphonsoclient/ViewingInfoService;->processUpdateAcrInfoMessage(Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    return-void
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Ltv/alphonso/alphonsoclient/ViewingInfoService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private getAlphonsoServerUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 143
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 144
    .local v0, "str":Ljava/lang/StringBuffer;
    iget-object v1, p0, Ltv/alphonso/alphonsoclient/ViewingInfoService;->mAlphonsoServerDomain:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Ltv/alphonso/alphonsoclient/ViewingInfoService;->mAlphonsoServerPort:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 147
    iget-object v1, p0, Ltv/alphonso/alphonsoclient/ViewingInfoService;->mAlphonsoServerDomain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 148
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 149
    iget-object v1, p0, Ltv/alphonso/alphonsoclient/ViewingInfoService;->mAlphonsoServerPort:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 150
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 151
    const-string v1, "v2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 153
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getAlphonsoUidSuffix(Z)Ljava/lang/String;
    .locals 3
    .param p1, "withQuestionMark"    # Z

    .prologue
    .line 159
    iget-object v0, p0, Ltv/alphonso/alphonsoclient/ViewingInfoService;->mAlphonsoUid:Ljava/lang/String;

    .line 161
    .local v0, "alphonso_uid":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 162
    .local v1, "str":Ljava/lang/StringBuffer;
    if-eqz v0, :cond_0

    .line 164
    if-eqz p1, :cond_1

    .line 165
    const-string v2, "?alp_uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 168
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 170
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 167
    :cond_1
    const-string v2, "alp_uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method private processDestroyMessage()V
    .locals 2

    .prologue
    .line 241
    sget-boolean v0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->debug:Z

    if-eqz v0, :cond_0

    .line 242
    sget-object v0, Ltv/alphonso/alphonsoclient/ViewingInfoService;->TAG:Ljava/lang/String;

    const-string v1, "Rcvd Destroy message."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    :cond_0
    iget-object v0, p0, Ltv/alphonso/alphonsoclient/ViewingInfoService;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 245
    iget-object v0, p0, Ltv/alphonso/alphonsoclient/ViewingInfoService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 247
    :cond_1
    sget-object v0, Ltv/alphonso/service/AlphonsoService;->singletonObject:Ltv/alphonso/service/AlphonsoService;

    if-eqz v0, :cond_3

    .line 249
    sget-boolean v0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->debug:Z

    if-eqz v0, :cond_2

    .line 250
    sget-object v0, Ltv/alphonso/alphonsoclient/ViewingInfoService;->TAG:Ljava/lang/String;

    const-string v1, "Sending VIEWING_INFO_SERVICE_CLEANUP_DONE message to AlphonsoService."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    :cond_2
    sget-object v0, Ltv/alphonso/service/AlphonsoService;->singletonObject:Ltv/alphonso/service/AlphonsoService;

    iget-object v0, v0, Ltv/alphonso/service/AlphonsoService;->mHandler:Ltv/alphonso/service/AlphonsoService$MsgHandler;

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Ltv/alphonso/service/AlphonsoService$MsgHandler;->sendEmptyMessage(I)Z

    .line 255
    :cond_3
    invoke-virtual {p0}, Ltv/alphonso/alphonsoclient/ViewingInfoService;->destroy()V

    .line 256
    return-void
.end method

.method private processSendViewingInfoRquest()V
    .locals 12

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x1

    .line 262
    iget-object v1, p0, Ltv/alphonso/alphonsoclient/ViewingInfoService;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 263
    iget-object v1, p0, Ltv/alphonso/alphonsoclient/ViewingInfoService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 265
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v6, p0, Ltv/alphonso/alphonsoclient/ViewingInfoService;->mAPIEndTS:J

    sub-long v10, v2, v6

    .line 267
    .local v10, "delay":J
    sget-boolean v1, Ltv/alphonso/alphonsoclient/AlphonsoClient;->debug:Z

    if-eqz v1, :cond_1

    .line 268
    sget-object v1, Ltv/alphonso/alphonsoclient/ViewingInfoService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sdk-internal inter-API-delay:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v6, p0, Ltv/alphonso/alphonsoclient/ViewingInfoService;->mAPIEndTS:J

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; delay: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; actual: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v10, v11}, Ltv/alphonso/utils/Utils;->getDurationAsString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    :cond_1
    new-instance v0, Ltv/alphonso/alphonsoclient/ViewingInfoAPI;

    iget-object v1, p0, Ltv/alphonso/alphonsoclient/ViewingInfoService;->mDeviceId:Ljava/lang/String;

    .line 272
    invoke-direct {p0}, Ltv/alphonso/alphonsoclient/ViewingInfoService;->getAlphonsoServerUrl()Ljava/lang/String;

    move-result-object v2

    .line 273
    invoke-direct {p0, v8}, Ltv/alphonso/alphonsoclient/ViewingInfoService;->getAlphonsoUidSuffix(Z)Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Ltv/alphonso/alphonsoclient/ViewingInfoService;->mApiKey:Ljava/lang/String;

    iget-object v7, p0, Ltv/alphonso/alphonsoclient/ViewingInfoService;->mReceiver:Landroid/os/ResultReceiver;

    iget-object v9, p0, Ltv/alphonso/alphonsoclient/ViewingInfoService;->mAcrType:Ljava/lang/String;

    move-object v5, v4

    invoke-direct/range {v0 .. v9}, Ltv/alphonso/alphonsoclient/ViewingInfoAPI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/ResultReceiver;ZLjava/lang/String;)V

    .line 280
    .local v0, "viewingInfoAPIObj":Ltv/alphonso/alphonsoclient/ViewingInfoAPI;
    invoke-virtual {v0}, Ltv/alphonso/alphonsoclient/ViewingInfoAPI;->sendRequest()V

    .line 282
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Ltv/alphonso/alphonsoclient/ViewingInfoService;->mAPIEndTS:J

    .line 283
    return-void
.end method

.method private processSetupMessage(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x3

    .line 220
    sget-boolean v0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->debug:Z

    if-eqz v0, :cond_0

    .line 221
    sget-object v0, Ltv/alphonso/alphonsoclient/ViewingInfoService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processSetupMessage: My thread id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :cond_0
    iget-object v0, p0, Ltv/alphonso/alphonsoclient/ViewingInfoService;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 225
    iget-object v0, p0, Ltv/alphonso/alphonsoclient/ViewingInfoService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 227
    :cond_1
    const-string v0, "server_domain"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ltv/alphonso/alphonsoclient/ViewingInfoService;->setAlphonsoServerDomain(Ljava/lang/String;)V

    .line 228
    const-string v0, "server_port"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ltv/alphonso/alphonsoclient/ViewingInfoService;->setAlphonsoServerPort(Ljava/lang/String;)V

    .line 229
    const-string v0, "alp_uid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ltv/alphonso/alphonsoclient/ViewingInfoService;->setAlphonsoUid(Ljava/lang/String;)V

    .line 230
    const-string v0, "api_key"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltv/alphonso/alphonsoclient/ViewingInfoService;->mApiKey:Ljava/lang/String;

    .line 231
    const-string v0, "device_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltv/alphonso/alphonsoclient/ViewingInfoService;->mDeviceId:Ljava/lang/String;

    .line 234
    iget-object v0, p0, Ltv/alphonso/alphonsoclient/ViewingInfoService;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 235
    iget-object v0, p0, Ltv/alphonso/alphonsoclient/ViewingInfoService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 236
    :cond_2
    return-void
.end method

.method private processUpdateAcrInfoMessage(Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 1
    .param p1, "args"    # Landroid/os/Bundle;
    .param p2, "receiver"    # Landroid/os/ResultReceiver;

    .prologue
    .line 288
    const-string v0, "acr_type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltv/alphonso/alphonsoclient/ViewingInfoService;->mAcrType:Ljava/lang/String;

    .line 289
    return-void
.end method

.method private setAlphonsoServerDomain(Ljava/lang/String;)V
    .locals 3
    .param p1, "domain"    # Ljava/lang/String;

    .prologue
    .line 100
    if-eqz p1, :cond_1

    .line 102
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ltv/alphonso/alphonsoclient/ViewingInfoService;->mAlphonsoServerDomain:Ljava/lang/String;

    .line 103
    sget-boolean v0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->debug:Z

    if-eqz v0, :cond_0

    .line 104
    sget-object v0, Ltv/alphonso/alphonsoclient/ViewingInfoService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Alphonso Server Domain set as: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ltv/alphonso/alphonsoclient/ViewingInfoService;->mAlphonsoServerDomain:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 108
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Ltv/alphonso/alphonsoclient/ViewingInfoService;->mAlphonsoServerDomain:Ljava/lang/String;

    goto :goto_0
.end method

.method private setAlphonsoServerPort(Ljava/lang/String;)V
    .locals 3
    .param p1, "port"    # Ljava/lang/String;

    .prologue
    .line 115
    if-eqz p1, :cond_1

    .line 117
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ltv/alphonso/alphonsoclient/ViewingInfoService;->mAlphonsoServerPort:Ljava/lang/String;

    .line 118
    sget-boolean v0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->debug:Z

    if-eqz v0, :cond_0

    .line 119
    sget-object v0, Ltv/alphonso/alphonsoclient/ViewingInfoService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Alphonso Server Port set as: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ltv/alphonso/alphonsoclient/ViewingInfoService;->mAlphonsoServerPort:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 123
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Ltv/alphonso/alphonsoclient/ViewingInfoService;->mAlphonsoServerPort:Ljava/lang/String;

    goto :goto_0
.end method

.method private setAlphonsoUid(Ljava/lang/String;)V
    .locals 1
    .param p1, "alphonso_uid"    # Ljava/lang/String;

    .prologue
    .line 130
    if-eqz p1, :cond_0

    .line 132
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ltv/alphonso/alphonsoclient/ViewingInfoService;->mAlphonsoUid:Ljava/lang/String;

    .line 138
    :goto_0
    return-void

    .line 136
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Ltv/alphonso/alphonsoclient/ViewingInfoService;->mAlphonsoUid:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 62
    sget-boolean v0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->debug:Z

    if-eqz v0, :cond_0

    .line 63
    sget-object v0, Ltv/alphonso/alphonsoclient/ViewingInfoService;->TAG:Ljava/lang/String;

    const-string v1, "destroy()."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :cond_0
    invoke-virtual {p0}, Ltv/alphonso/alphonsoclient/ViewingInfoService;->destroyViewingInfoServiceThread()V

    .line 67
    iput-object v2, p0, Ltv/alphonso/alphonsoclient/ViewingInfoService;->mDeviceId:Ljava/lang/String;

    .line 68
    iput-object v2, p0, Ltv/alphonso/alphonsoclient/ViewingInfoService;->mAlphonsoServerDomain:Ljava/lang/String;

    .line 69
    iput-object v2, p0, Ltv/alphonso/alphonsoclient/ViewingInfoService;->mAlphonsoServerPort:Ljava/lang/String;

    .line 70
    iput-object v2, p0, Ltv/alphonso/alphonsoclient/ViewingInfoService;->mAlphonsoUid:Ljava/lang/String;

    .line 71
    iput-object v2, p0, Ltv/alphonso/alphonsoclient/ViewingInfoService;->mApiKey:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public destroyViewingInfoServiceThread()V
    .locals 2

    .prologue
    .line 90
    sget-boolean v0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->debug:Z

    if-eqz v0, :cond_0

    .line 91
    sget-object v0, Ltv/alphonso/alphonsoclient/ViewingInfoService;->TAG:Ljava/lang/String;

    const-string v1, "destroyViewingInfoServiceThread()."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Ltv/alphonso/alphonsoclient/ViewingInfoService;->mHandler:Landroid/os/Handler;

    .line 94
    iget-object v0, p0, Ltv/alphonso/alphonsoclient/ViewingInfoService;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 95
    return-void
.end method

.method public setupViewingInfoServiceThread()V
    .locals 3

    .prologue
    .line 77
    sget-boolean v0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->debug:Z

    if-eqz v0, :cond_0

    .line 78
    sget-object v0, Ltv/alphonso/alphonsoclient/ViewingInfoService;->TAG:Ljava/lang/String;

    const-string v1, "setupViewingInfoServiceThread()."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ViewingInfoService"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Ltv/alphonso/alphonsoclient/ViewingInfoService;->mThread:Landroid/os/HandlerThread;

    .line 82
    iget-object v0, p0, Ltv/alphonso/alphonsoclient/ViewingInfoService;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 84
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Ltv/alphonso/alphonsoclient/ViewingInfoService;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Ltv/alphonso/alphonsoclient/ViewingInfoService;->mCallback:Landroid/os/Handler$Callback;

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Ltv/alphonso/alphonsoclient/ViewingInfoService;->mHandler:Landroid/os/Handler;

    .line 85
    return-void
.end method
