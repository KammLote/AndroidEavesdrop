.class public Ltv/alphonso/service/ProvClient;
.super Ljava/lang/Object;
.source "ProvClient.java"


# static fields
.field public static final FAIL:I = 0x1

.field public static final PROV_CLIENT_SERVICE_STATE_NULL:B = 0x0t

.field public static final PROV_CLIENT_SERVICE_STATE_READY:B = 0x1t

.field private static final PROV_SERVER_RETRY_TIMER_EXP_BACKOFF_BASE:I = 0x2

.field private static final PROV_SERVER_RETRY_TIMER_EXP_BACKOFF_FACTOR_MAX:I = 0x18

.field private static final PROV_SERVER_RETRY_TIMER_EXP_BACKOFF_FACTOR_MIN:I = 0x5

.field private static final PROV_SERVER_RETRY_TIMER_EXP_BACKOFF_MULTIPLE:I = 0x5

.field public static final SUCCESS:I

.field private static final TAG:Ljava/lang/String;

.field public static debug:Z


# instance fields
.field private mAlphonsoClient:Ltv/alphonso/alphonsoclient/AlphonsoClient;

.field private mAudioCaptureService:Ltv/alphonso/audiocaptureservice/AudioCaptureService;

.field private mConfigLeaseTime:J

.field private mContext:Landroid/content/Context;

.field private mCurrentRetry:I

.field private mReceiver:Landroid/os/ResultReceiver;

.field private mRetryExpBackoffFactorMax:I

.field private mRetryExpBackoffFactorMin:I

.field private mRetryExpBackoffMultiple:I

.field private mState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Ltv/alphonso/service/ProvClient;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ltv/alphonso/service/ProvClient;->TAG:Ljava/lang/String;

    .line 33
    const/4 v0, 0x0

    sput-boolean v0, Ltv/alphonso/service/ProvClient;->debug:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ltv/alphonso/audiocaptureservice/AudioCaptureService;Ltv/alphonso/alphonsoclient/AlphonsoClient;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "audioCaptureService"    # Ltv/alphonso/audiocaptureservice/AudioCaptureService;
    .param p3, "alphonsoClient"    # Ltv/alphonso/alphonsoclient/AlphonsoClient;

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object v2, p0, Ltv/alphonso/service/ProvClient;->mContext:Landroid/content/Context;

    .line 45
    iput-object v2, p0, Ltv/alphonso/service/ProvClient;->mReceiver:Landroid/os/ResultReceiver;

    .line 46
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ltv/alphonso/service/ProvClient;->mConfigLeaseTime:J

    .line 47
    iput v3, p0, Ltv/alphonso/service/ProvClient;->mState:I

    .line 48
    iput-object v2, p0, Ltv/alphonso/service/ProvClient;->mAudioCaptureService:Ltv/alphonso/audiocaptureservice/AudioCaptureService;

    .line 49
    iput-object v2, p0, Ltv/alphonso/service/ProvClient;->mAlphonsoClient:Ltv/alphonso/alphonsoclient/AlphonsoClient;

    .line 51
    iput v3, p0, Ltv/alphonso/service/ProvClient;->mCurrentRetry:I

    .line 52
    iput v4, p0, Ltv/alphonso/service/ProvClient;->mRetryExpBackoffMultiple:I

    .line 53
    iput v4, p0, Ltv/alphonso/service/ProvClient;->mRetryExpBackoffFactorMin:I

    .line 54
    const/16 v0, 0x18

    iput v0, p0, Ltv/alphonso/service/ProvClient;->mRetryExpBackoffFactorMax:I

    .line 61
    iput-object p1, p0, Ltv/alphonso/service/ProvClient;->mContext:Landroid/content/Context;

    .line 63
    iput-object p3, p0, Ltv/alphonso/service/ProvClient;->mAlphonsoClient:Ltv/alphonso/alphonsoclient/AlphonsoClient;

    .line 65
    iput-object p2, p0, Ltv/alphonso/service/ProvClient;->mAudioCaptureService:Ltv/alphonso/audiocaptureservice/AudioCaptureService;

    .line 67
    invoke-virtual {p0, v3}, Ltv/alphonso/service/ProvClient;->setState(I)V

    .line 68
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Ltv/alphonso/service/ProvClient;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private configureProvServerParams(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "domain"    # Ljava/lang/String;
    .param p2, "port"    # Ljava/lang/String;

    .prologue
    .line 155
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 157
    .local v0, "args":Landroid/os/Bundle;
    if-eqz p1, :cond_0

    .line 158
    const-string v2, "prov_server_domain"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    :cond_0
    if-eqz p2, :cond_1

    .line 162
    const-string v2, "prov_server_port"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    :cond_1
    iget-object v2, p0, Ltv/alphonso/service/ProvClient;->mAlphonsoClient:Ltv/alphonso/alphonsoclient/AlphonsoClient;

    iget-object v2, v2, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 166
    .local v1, "msg":Landroid/os/Message;
    const/16 v2, 0xa

    iput v2, v1, Landroid/os/Message;->what:I

    .line 167
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 169
    sget-boolean v2, Ltv/alphonso/service/ProvClient;->debug:Z

    if-eqz v2, :cond_2

    .line 170
    sget-object v2, Ltv/alphonso/service/ProvClient;->TAG:Ljava/lang/String;

    const-string v3, "Sending PROV_SERVER_PARAMS message to AlphonsoClient Service"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :cond_2
    iget-object v2, p0, Ltv/alphonso/service/ProvClient;->mAlphonsoClient:Ltv/alphonso/alphonsoclient/AlphonsoClient;

    iget-object v2, v2, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 172
    return-void
.end method

.method private configureRetryExpBackoffParams(III)V
    .locals 2
    .param p1, "retryExpBackoffMultiple"    # I
    .param p2, "retryExpBackoffFactorMin"    # I
    .param p3, "retryExpBackoffFactorMax"    # I

    .prologue
    .line 980
    if-eqz p1, :cond_0

    if-lt p3, p2, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_2

    .line 985
    :cond_0
    sget-boolean v0, Ltv/alphonso/service/ProvClient;->debug:Z

    if-eqz v0, :cond_1

    .line 986
    sget-object v0, Ltv/alphonso/service/ProvClient;->TAG:Ljava/lang/String;

    const-string v1, "Either retryExpBackoffMultiple is 0; OR retryExpBackoffFactorMin > retryExpBackoffFactorMax; OR retryExpBackoffFactorMin is 0; OR retryExpBackoffFactorMax is 0; Ignoring.."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1006
    :cond_1
    :goto_0
    return-void

    .line 991
    :cond_2
    iget v0, p0, Ltv/alphonso/service/ProvClient;->mRetryExpBackoffMultiple:I

    if-ne p1, v0, :cond_3

    iget v0, p0, Ltv/alphonso/service/ProvClient;->mRetryExpBackoffFactorMin:I

    if-ne p2, v0, :cond_3

    iget v0, p0, Ltv/alphonso/service/ProvClient;->mRetryExpBackoffFactorMax:I

    if-eq p3, v0, :cond_5

    .line 995
    :cond_3
    sget-boolean v0, Ltv/alphonso/service/ProvClient;->debug:Z

    if-eqz v0, :cond_4

    .line 996
    sget-object v0, Ltv/alphonso/service/ProvClient;->TAG:Ljava/lang/String;

    const-string v1, "Change in prov-serv-retry exp-backoff-params. Honor config update."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    :cond_4
    iput p1, p0, Ltv/alphonso/service/ProvClient;->mRetryExpBackoffMultiple:I

    .line 999
    iput p2, p0, Ltv/alphonso/service/ProvClient;->mRetryExpBackoffFactorMin:I

    .line 1000
    iput p3, p0, Ltv/alphonso/service/ProvClient;->mRetryExpBackoffFactorMax:I

    goto :goto_0

    .line 1003
    :cond_5
    sget-boolean v0, Ltv/alphonso/service/ProvClient;->debug:Z

    if-eqz v0, :cond_1

    .line 1004
    sget-object v0, Ltv/alphonso/service/ProvClient;->TAG:Ljava/lang/String;

    const-string v1, "No change in RetryExpBackoff params. Ignoring..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getMiscFlags()J
    .locals 4

    .prologue
    .line 843
    const-wide/16 v0, 0x0

    .line 845
    .local v0, "flags":J
    iget-object v2, p0, Ltv/alphonso/service/ProvClient;->mContext:Landroid/content/Context;

    invoke-static {v2}, Ltv/alphonso/utils/PreferencesManager;->getDebugScreenFlag(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 846
    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    .line 848
    :cond_0
    return-wide v0
.end method

.method private getRetryTimerDuration()I
    .locals 8

    .prologue
    .line 938
    sget-boolean v3, Ltv/alphonso/service/ProvClient;->debug:Z

    if-eqz v3, :cond_0

    .line 939
    sget-object v3, Ltv/alphonso/service/ProvClient;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getRetryTimerDuration(): mCurrentRetry: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Ltv/alphonso/service/ProvClient;->mCurrentRetry:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    :cond_0
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    iget v3, p0, Ltv/alphonso/service/ProvClient;->mCurrentRetry:I

    int-to-double v6, v3

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v4, v6

    double-to-int v1, v4

    .line 944
    .local v1, "maxRetryFactor":I
    sget-boolean v3, Ltv/alphonso/service/ProvClient;->debug:Z

    if-eqz v3, :cond_1

    .line 945
    sget-object v3, Ltv/alphonso/service/ProvClient;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getRetryTimerDuration(): maxRetryFactor: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    :cond_1
    iget v3, p0, Ltv/alphonso/service/ProvClient;->mRetryExpBackoffFactorMin:I

    if-ge v1, v3, :cond_2

    .line 948
    iget v1, p0, Ltv/alphonso/service/ProvClient;->mRetryExpBackoffFactorMin:I

    .line 950
    :cond_2
    iget v3, p0, Ltv/alphonso/service/ProvClient;->mRetryExpBackoffFactorMax:I

    if-le v1, v3, :cond_3

    .line 951
    iget v1, p0, Ltv/alphonso/service/ProvClient;->mRetryExpBackoffFactorMax:I

    .line 953
    :cond_3
    sget-boolean v3, Ltv/alphonso/service/ProvClient;->debug:Z

    if-eqz v3, :cond_4

    .line 954
    sget-object v3, Ltv/alphonso/service/ProvClient;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getRetryTimerDuration(): calculated maxRetryFactor: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    :cond_4
    const/4 v3, 0x1

    invoke-direct {p0, v3, v1}, Ltv/alphonso/service/ProvClient;->randomWithRange(II)I

    move-result v2

    .line 958
    .local v2, "retryFactor":I
    sget-boolean v3, Ltv/alphonso/service/ProvClient;->debug:Z

    if-eqz v3, :cond_5

    .line 959
    sget-object v3, Ltv/alphonso/service/ProvClient;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getRetryTimerDuration(): chosen retryFactor: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    :cond_5
    iget v3, p0, Ltv/alphonso/service/ProvClient;->mRetryExpBackoffMultiple:I

    mul-int v0, v3, v2

    .line 963
    .local v0, "duration":I
    sget-boolean v3, Ltv/alphonso/service/ProvClient;->debug:Z

    if-eqz v3, :cond_6

    .line 964
    sget-object v3, Ltv/alphonso/service/ProvClient;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getRetryTimerDuration(): duration: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    :cond_6
    return v0
.end method

.method private processAdvtDbParams(Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "jObj"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 680
    const-string v2, "advt_db_server_name"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "advt_db_server_name"

    .line 681
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Ltv/alphonso/service/ProvClient;->mContext:Landroid/content/Context;

    invoke-static {v3}, Ltv/alphonso/utils/PreferencesManager;->getAdvtDbServerName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    const-string v2, "advt_db_server_port"

    .line 682
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "advt_db_server_port"

    .line 683
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Ltv/alphonso/service/ProvClient;->mContext:Landroid/content/Context;

    invoke-static {v3}, Ltv/alphonso/utils/PreferencesManager;->getAdvtDbServerPort(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const-string v2, "advt_db_insecure_server"

    .line 684
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "advt_db_insecure_server"

    .line 685
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    const/4 v2, 0x1

    :goto_0
    iget-object v3, p0, Ltv/alphonso/service/ProvClient;->mContext:Landroid/content/Context;

    invoke-static {v3}, Ltv/alphonso/utils/PreferencesManager;->getAdvtDbInsecureServer(Landroid/content/Context;)Z

    move-result v3

    if-eq v2, v3, :cond_4

    .line 687
    :cond_2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 688
    .local v1, "params":Landroid/os/Bundle;
    const-string v2, "advt_db_server_name"

    const-string v3, "advt_db_server_name"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    const-string v2, "advt_db_server_port"

    const-string v3, "advt_db_server_port"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    const-string v2, "advt_db_insecure_server"

    const-string v3, "advt_db_insecure_server"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 692
    sget-object v2, Ltv/alphonso/service/AlphonsoService;->singletonObject:Ltv/alphonso/service/AlphonsoService;

    if-eqz v2, :cond_4

    .line 694
    sget-boolean v2, Ltv/alphonso/service/ProvClient;->debug:Z

    if-eqz v2, :cond_3

    .line 695
    sget-object v2, Ltv/alphonso/service/ProvClient;->TAG:Ljava/lang/String;

    const-string v3, "Sending ADVT_DB_UPDATE message to AlphonsoService."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    :cond_3
    sget-object v2, Ltv/alphonso/service/AlphonsoService;->singletonObject:Ltv/alphonso/service/AlphonsoService;

    iget-object v2, v2, Ltv/alphonso/service/AlphonsoService;->mHandler:Ltv/alphonso/service/AlphonsoService$MsgHandler;

    invoke-virtual {v2}, Ltv/alphonso/service/AlphonsoService$MsgHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 698
    .local v0, "msg":Landroid/os/Message;
    const/16 v2, 0x19

    iput v2, v0, Landroid/os/Message;->what:I

    .line 699
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 701
    sget-object v2, Ltv/alphonso/service/AlphonsoService;->singletonObject:Ltv/alphonso/service/AlphonsoService;

    iget-object v2, v2, Ltv/alphonso/service/AlphonsoService;->mHandler:Ltv/alphonso/service/AlphonsoService$MsgHandler;

    invoke-virtual {v2, v0}, Ltv/alphonso/service/AlphonsoService$MsgHandler;->sendMessage(Landroid/os/Message;)Z

    .line 706
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "params":Landroid/os/Bundle;
    :cond_4
    return-void

    .line 685
    :cond_5
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private processAlphonsoClientServiceParams(Lorg/json/JSONObject;)V
    .locals 8
    .param p1, "jObj"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 289
    const/4 v1, 0x0

    .line 290
    .local v1, "server_name":Ljava/lang/String;
    const/4 v2, 0x0

    .line 291
    .local v2, "server_port":Ljava/lang/String;
    const/4 v3, 0x0

    .line 292
    .local v3, "insecure_server":Z
    const/4 v4, 0x0

    .line 293
    .local v4, "server_port_ssl":Ljava/lang/String;
    const/4 v5, 0x0

    .line 295
    .local v5, "server_port_no_ssl":Ljava/lang/String;
    const-string v0, "server_name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    const-string v0, "server_name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 298
    sget-boolean v0, Ltv/alphonso/service/ProvClient;->debug:Z

    if-eqz v0, :cond_0

    .line 299
    sget-object v0, Ltv/alphonso/service/ProvClient;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Recvd server_name: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    :cond_0
    const-string v0, "server_port"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 304
    const-string v0, "server_port"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 305
    sget-boolean v0, Ltv/alphonso/service/ProvClient;->debug:Z

    if-eqz v0, :cond_1

    .line 306
    sget-object v0, Ltv/alphonso/service/ProvClient;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Recvd server_port: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    :cond_1
    const-string v0, "insecure_server"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 311
    const-string v0, "insecure_server"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 312
    sget-boolean v0, Ltv/alphonso/service/ProvClient;->debug:Z

    if-eqz v0, :cond_2

    .line 313
    sget-object v0, Ltv/alphonso/service/ProvClient;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Recvd insecure_server: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    :cond_2
    const-string v0, "server_port_ssl"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 318
    const-string v0, "server_port_ssl"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 319
    sget-boolean v0, Ltv/alphonso/service/ProvClient;->debug:Z

    if-eqz v0, :cond_3

    .line 320
    sget-object v0, Ltv/alphonso/service/ProvClient;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Recvd server_port_ssl: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    :cond_3
    const-string v0, "server_port_nossl"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 325
    const-string v0, "server_port_nossl"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 326
    sget-boolean v0, Ltv/alphonso/service/ProvClient;->debug:Z

    if-eqz v0, :cond_4

    .line 327
    sget-object v0, Ltv/alphonso/service/ProvClient;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Recvd server_port_no_ssl: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    :cond_4
    if-eqz v1, :cond_6

    if-nez v2, :cond_5

    if-nez v4, :cond_5

    if-eqz v5, :cond_6

    :cond_5
    move-object v0, p0

    .line 335
    invoke-direct/range {v0 .. v5}, Ltv/alphonso/service/ProvClient;->processServerDomainPortConfig(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 338
    :cond_6
    return-void
.end method

.method private processAudioCaptureServiceParams(Lorg/json/JSONObject;)V
    .locals 6
    .param p1, "jObj"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 388
    const-string v3, "id_service"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 390
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 391
    .local v1, "params":Landroid/os/Bundle;
    const-string v3, "debug_logs_flag"

    iget-object v4, p0, Ltv/alphonso/service/ProvClient;->mContext:Landroid/content/Context;

    invoke-static {v4}, Ltv/alphonso/utils/PreferencesManager;->getDebugLogsFlag(Landroid/content/Context;)Z

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 393
    const-string v3, "device_id"

    iget-object v4, p0, Ltv/alphonso/service/ProvClient;->mContext:Landroid/content/Context;

    invoke-static {v4}, Ltv/alphonso/utils/PreferencesManager;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    const-string v3, "acr_type"

    const-string v4, "id_service"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ltv/alphonso/utils/PreferencesManager;->getAlphonsoAndroidSdkAcrMode(I)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 397
    const-string v3, "acr_config_shift_factor"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 398
    const-string v3, "acr_shift"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 400
    :cond_0
    const-string v3, "enable_audio_debug_upload"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 401
    const-string v3, "audio_file_upload"

    const-string v4, "enable_audio_debug_upload"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 403
    :cond_1
    const-string v3, "enable_timedout_audio_debug_upload"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 404
    const-string v3, "audio_file_upload_timedout"

    const-string v4, "enable_timedout_audio_debug_upload"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 406
    :cond_2
    const-string v3, "record_timeouts"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 407
    const-string v3, "record_timeouts"

    const-string v4, "record_timeouts"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 409
    :cond_3
    const-string v3, "power_optimization_mode"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 410
    const-string v3, "power_optimization_mode"

    const-string v4, "power_optimization_mode"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 412
    :cond_4
    iget-object v3, p0, Ltv/alphonso/service/ProvClient;->mAudioCaptureService:Ltv/alphonso/audiocaptureservice/AudioCaptureService;

    iget-object v3, v3, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 413
    .local v0, "msg":Landroid/os/Message;
    const/4 v3, 0x1

    iput v3, v0, Landroid/os/Message;->what:I

    .line 414
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 416
    sget-boolean v3, Ltv/alphonso/service/ProvClient;->debug:Z

    if-eqz v3, :cond_5

    .line 417
    sget-object v3, Ltv/alphonso/service/ProvClient;->TAG:Ljava/lang/String;

    const-string v4, "Sending ACS_SETUP message to AudioCaptureService."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    :cond_5
    iget-object v3, p0, Ltv/alphonso/service/ProvClient;->mAudioCaptureService:Ltv/alphonso/audiocaptureservice/AudioCaptureService;

    iget-object v3, v3, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 486
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "params":Landroid/os/Bundle;
    :cond_6
    :goto_0
    const-string v3, "id_attempt_timeout_ms"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "id_attempts"

    .line 487
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "wakeup_interval"

    .line 488
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "audio_pre_buffer_size"

    .line 489
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "id_attempt_sleep_interval"

    .line 490
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "id_attempt_sleep_interval_max"

    .line 491
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 493
    :cond_7
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 495
    .restart local v1    # "params":Landroid/os/Bundle;
    const-string v3, "id_attempt_timeout_ms"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 496
    const-string v3, "capture_duration"

    const-string v4, "id_attempt_timeout_ms"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 498
    :cond_8
    const-string v3, "id_attempts"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 499
    const-string v3, "capture_scenario_count"

    const-string v4, "id_attempts"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 501
    :cond_9
    const-string v3, "id_retries"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 502
    const-string v3, "capture_count"

    const-string v4, "id_retries"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 504
    :cond_a
    const-string v3, "wakeup_interval"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    const-string v3, "id_attempt_timeout_ms"

    .line 505
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 507
    const-string v3, "wakeup_interval"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "id_attempt_timeout_ms"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    div-int/lit16 v4, v4, 0x3e8

    sub-int v2, v3, v4

    .line 508
    .local v2, "sleepTime":I
    if-gez v2, :cond_b

    .line 509
    const/4 v2, 0x0

    .line 511
    :cond_b
    const-string v3, "capture_sleep_interval"

    int-to-long v4, v2

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 514
    .end local v2    # "sleepTime":I
    :cond_c
    const-string v3, "id_attempt_sleep_interval"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 515
    const-string v3, "capture_scenario_sleep_interval"

    const-string v4, "id_attempt_sleep_interval"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 517
    :cond_d
    const-string v3, "id_attempt_sleep_interval_livetv"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 518
    const-string v3, "capture_scenario_sleep_interval_livetv"

    const-string v4, "id_attempt_sleep_interval_livetv"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 520
    :cond_e
    const-string v3, "id_attempt_sleep_interval_max"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 521
    const-string v3, "capture_scenario_sleep_interval_max"

    const-string v4, "id_attempt_sleep_interval_max"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 523
    :cond_f
    const-string v3, "id_attempt_sleep_interval_inhibiter_increment"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 524
    const-string v3, "capture_scenario_sleep_interval_inhibiter_increment"

    const-string v4, "id_attempt_sleep_interval_inhibiter_increment"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 526
    :cond_10
    const-string v3, "audio_pre_buffer_size"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 527
    const-string v3, "audio_pre_buffer_size"

    const-string v4, "audio_pre_buffer_size"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 529
    :cond_11
    iget-object v3, p0, Ltv/alphonso/service/ProvClient;->mAudioCaptureService:Ltv/alphonso/audiocaptureservice/AudioCaptureService;

    iget-object v3, v3, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 531
    .restart local v0    # "msg":Landroid/os/Message;
    const/16 v3, 0xb

    iput v3, v0, Landroid/os/Message;->what:I

    .line 532
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 534
    sget-boolean v3, Ltv/alphonso/service/ProvClient;->debug:Z

    if-eqz v3, :cond_12

    .line 535
    sget-object v3, Ltv/alphonso/service/ProvClient;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sending ACS_UPDATE_PARAMS message to AudioCaptureService."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    :cond_12
    iget-object v3, p0, Ltv/alphonso/service/ProvClient;->mAudioCaptureService:Ltv/alphonso/audiocaptureservice/AudioCaptureService;

    iget-object v3, v3, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 539
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "params":Landroid/os/Bundle;
    :cond_13
    const-string v3, "acr_db_filename"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    const-string v3, "acr_db_filename"

    .line 540
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Ltv/alphonso/service/ProvClient;->mContext:Landroid/content/Context;

    invoke-static {v4}, Ltv/alphonso/utils/PreferencesManager;->getAcrDbFilename(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15

    .line 542
    iget-object v3, p0, Ltv/alphonso/service/ProvClient;->mAudioCaptureService:Ltv/alphonso/audiocaptureservice/AudioCaptureService;

    iget-object v3, v3, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 544
    .restart local v0    # "msg":Landroid/os/Message;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 545
    .restart local v1    # "params":Landroid/os/Bundle;
    const-string v3, "acr_db_filename"

    const-string v4, "acr_db_filename"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    const-string v3, "acr_db_server_name"

    const-string v4, "acr_db_server_name"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    const-string v3, "acr_db_server_port"

    const-string v4, "acr_db_server_port"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    const-string v3, "acr_db_insecure_server"

    const-string v4, "acr_db_insecure_server"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 550
    const/16 v3, 0xc

    iput v3, v0, Landroid/os/Message;->what:I

    .line 551
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 553
    sget-boolean v3, Ltv/alphonso/service/ProvClient;->debug:Z

    if-eqz v3, :cond_14

    .line 554
    sget-object v3, Ltv/alphonso/service/ProvClient;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sending ACS_NEW_AUDIO_DB_FILE message to AudioCaptureService."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    :cond_14
    iget-object v3, p0, Ltv/alphonso/service/ProvClient;->mAudioCaptureService:Ltv/alphonso/audiocaptureservice/AudioCaptureService;

    iget-object v3, v3, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 557
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "params":Landroid/os/Bundle;
    :cond_15
    return-void

    .line 422
    :cond_16
    const-string v3, "enable_audio_debug_upload"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 424
    iget-object v3, p0, Ltv/alphonso/service/ProvClient;->mAudioCaptureService:Ltv/alphonso/audiocaptureservice/AudioCaptureService;

    iget-object v3, v3, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 426
    .restart local v0    # "msg":Landroid/os/Message;
    const-string v3, "enable_audio_debug_upload"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 428
    sget-boolean v3, Ltv/alphonso/service/ProvClient;->debug:Z

    if-eqz v3, :cond_17

    .line 429
    sget-object v3, Ltv/alphonso/service/ProvClient;->TAG:Ljava/lang/String;

    const-string v4, "Sending ACS_ENABLE_AUDIO_UPLOAD message to AudioCaptureService."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    :cond_17
    const/16 v3, 0xd

    iput v3, v0, Landroid/os/Message;->what:I

    .line 439
    :goto_1
    sget-boolean v3, Ltv/alphonso/service/ProvClient;->debug:Z

    if-eqz v3, :cond_18

    .line 440
    sget-object v3, Ltv/alphonso/service/ProvClient;->TAG:Ljava/lang/String;

    const-string v4, "Sending ACS_SETUP message to AudioCaptureService."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    :cond_18
    iget-object v3, p0, Ltv/alphonso/service/ProvClient;->mAudioCaptureService:Ltv/alphonso/audiocaptureservice/AudioCaptureService;

    iget-object v3, v3, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 444
    .end local v0    # "msg":Landroid/os/Message;
    :cond_19
    const-string v3, "enable_timedout_audio_debug_upload"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 446
    iget-object v3, p0, Ltv/alphonso/service/ProvClient;->mAudioCaptureService:Ltv/alphonso/audiocaptureservice/AudioCaptureService;

    iget-object v3, v3, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 448
    .restart local v0    # "msg":Landroid/os/Message;
    const-string v3, "enable_timedout_audio_debug_upload"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 450
    sget-boolean v3, Ltv/alphonso/service/ProvClient;->debug:Z

    if-eqz v3, :cond_1a

    .line 451
    sget-object v3, Ltv/alphonso/service/ProvClient;->TAG:Ljava/lang/String;

    const-string v4, "Sending ACS_ENABLE_AUDIO_UPLOAD message to AudioCaptureService."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    :cond_1a
    const/16 v3, 0x11

    iput v3, v0, Landroid/os/Message;->what:I

    .line 461
    :goto_2
    sget-boolean v3, Ltv/alphonso/service/ProvClient;->debug:Z

    if-eqz v3, :cond_1b

    .line 462
    sget-object v3, Ltv/alphonso/service/ProvClient;->TAG:Ljava/lang/String;

    const-string v4, "Sending ACS_SETUP message to AudioCaptureService."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    :cond_1b
    iget-object v3, p0, Ltv/alphonso/service/ProvClient;->mAudioCaptureService:Ltv/alphonso/audiocaptureservice/AudioCaptureService;

    iget-object v3, v3, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 466
    .end local v0    # "msg":Landroid/os/Message;
    :cond_1c
    const-string v3, "record_timeouts"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 468
    iget-object v3, p0, Ltv/alphonso/service/ProvClient;->mAudioCaptureService:Ltv/alphonso/audiocaptureservice/AudioCaptureService;

    iget-object v3, v3, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 469
    .restart local v0    # "msg":Landroid/os/Message;
    const-string v3, "record_timeouts"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 471
    sget-boolean v3, Ltv/alphonso/service/ProvClient;->debug:Z

    if-eqz v3, :cond_1d

    .line 472
    sget-object v3, Ltv/alphonso/service/ProvClient;->TAG:Ljava/lang/String;

    const-string v4, "Sending ACS_ENABLE_RECORD_TIMEOUTS message to AudioCaptureService."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    :cond_1d
    const/16 v3, 0xf

    iput v3, v0, Landroid/os/Message;->what:I

    .line 482
    :goto_3
    iget-object v3, p0, Ltv/alphonso/service/ProvClient;->mAudioCaptureService:Ltv/alphonso/audiocaptureservice/AudioCaptureService;

    iget-object v3, v3, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 434
    :cond_1e
    sget-boolean v3, Ltv/alphonso/service/ProvClient;->debug:Z

    if-eqz v3, :cond_1f

    .line 435
    sget-object v3, Ltv/alphonso/service/ProvClient;->TAG:Ljava/lang/String;

    const-string v4, "Sending ACS_DISABLE_AUDIO_UPLOAD message to AudioCaptureService."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    :cond_1f
    const/16 v3, 0xe

    iput v3, v0, Landroid/os/Message;->what:I

    goto/16 :goto_1

    .line 456
    :cond_20
    sget-boolean v3, Ltv/alphonso/service/ProvClient;->debug:Z

    if-eqz v3, :cond_21

    .line 457
    sget-object v3, Ltv/alphonso/service/ProvClient;->TAG:Ljava/lang/String;

    const-string v4, "Sending ACS_DISABLE_AUDIO_UPLOAD message to AudioCaptureService."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    :cond_21
    const/16 v3, 0x12

    iput v3, v0, Landroid/os/Message;->what:I

    goto :goto_2

    .line 477
    :cond_22
    sget-boolean v3, Ltv/alphonso/service/ProvClient;->debug:Z

    if-eqz v3, :cond_23

    .line 478
    sget-object v3, Ltv/alphonso/service/ProvClient;->TAG:Ljava/lang/String;

    const-string v4, "Sending ACS_DISABLE_RECORD_TIMEOUTS message to AudioCaptureService."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    :cond_23
    const/16 v3, 0x10

    iput v3, v0, Landroid/os/Message;->what:I

    goto :goto_3
.end method

.method private processClockSyncParams(Lorg/json/JSONObject;)V
    .locals 5
    .param p1, "jObj"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 772
    const-string v2, "clock_offset_poll_interval"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "save_n_clock_offset_values"

    .line 773
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "add_clock_offset_to_fprint"

    .line 774
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "clock_skew_server_name"

    .line 775
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "clock_skew_server_port"

    .line 776
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "clock_skew_insecure_server"

    .line 777
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 779
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 780
    .local v1, "params":Landroid/os/Bundle;
    const-string v2, "clock_offset_poll_interval"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 781
    const-string v2, "clock_sync_poll_interval"

    const-string v3, "clock_offset_poll_interval"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 784
    :cond_1
    const-string v2, "save_n_clock_offset_values"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 785
    const-string v2, "save_n_clock_offset_values"

    const-string v3, "save_n_clock_offset_values"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 788
    :cond_2
    const-string v2, "add_clock_offset_to_fprint"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 789
    const-string v2, "add_clock_offset_to_fprint"

    const-string v3, "add_clock_offset_to_fprint"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 792
    :cond_3
    const-string v2, "clock_skew_server_name"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 793
    const-string v2, "clock_skew_server_name"

    const-string v3, "clock_skew_server_name"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 796
    :cond_4
    const-string v2, "clock_skew_server_port"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 797
    const-string v2, "clock_skew_server_port"

    const-string v3, "clock_skew_server_port"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 800
    :cond_5
    const-string v2, "clock_skew_insecure_server"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 801
    const-string v2, "clock_skew_insecure_server"

    const-string v3, "clock_skew_insecure_server"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 804
    :cond_6
    sget-object v2, Ltv/alphonso/service/AlphonsoService;->singletonObject:Ltv/alphonso/service/AlphonsoService;

    iget-object v2, v2, Ltv/alphonso/service/AlphonsoService;->mHandler:Ltv/alphonso/service/AlphonsoService$MsgHandler;

    const/16 v3, 0x1c

    invoke-virtual {v2, v3}, Ltv/alphonso/service/AlphonsoService$MsgHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 805
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 807
    sget-boolean v2, Ltv/alphonso/service/ProvClient;->debug:Z

    if-eqz v2, :cond_7

    .line 808
    sget-object v2, Ltv/alphonso/service/ProvClient;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sending CLOCK_SYNC_CONFIG message to AlphonsoService."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    :cond_7
    sget-object v2, Ltv/alphonso/service/AlphonsoService;->singletonObject:Ltv/alphonso/service/AlphonsoService;

    iget-object v2, v2, Ltv/alphonso/service/AlphonsoService;->mHandler:Ltv/alphonso/service/AlphonsoService$MsgHandler;

    invoke-virtual {v2, v0}, Ltv/alphonso/service/AlphonsoService$MsgHandler;->sendMessage(Landroid/os/Message;)Z

    .line 811
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "params":Landroid/os/Bundle;
    :cond_8
    return-void
.end method

.method private processMiscParams(Lorg/json/JSONObject;)V
    .locals 8
    .param p1, "jObj"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 711
    const-string v4, "max_history_size"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "max_history_size"

    .line 712
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iget-object v5, p0, Ltv/alphonso/service/ProvClient;->mContext:Landroid/content/Context;

    invoke-static {v5}, Ltv/alphonso/utils/PreferencesManager;->getDBMAxRecords(Landroid/content/Context;)I

    move-result v5

    if-eq v4, v5, :cond_4

    .line 714
    sget-boolean v4, Ltv/alphonso/service/ProvClient;->debug:Z

    if-eqz v4, :cond_0

    .line 715
    sget-object v4, Ltv/alphonso/service/ProvClient;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DBMaxRecords "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Ltv/alphonso/service/ProvClient;->mContext:Landroid/content/Context;

    invoke-static {v6}, Ltv/alphonso/utils/PreferencesManager;->getDBMAxRecords(Landroid/content/Context;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is being changed by ProvServ to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "max_history_size"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    :cond_0
    iget-object v4, p0, Ltv/alphonso/service/ProvClient;->mContext:Landroid/content/Context;

    invoke-static {v4}, Ltv/alphonso/utils/PreferencesManager;->getDBMAxRecords(Landroid/content/Context;)I

    move-result v4

    const-string v5, "max_history_size"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    if-le v4, v5, :cond_3

    .line 719
    sget-boolean v4, Ltv/alphonso/service/ProvClient;->debug:Z

    if-eqz v4, :cond_1

    .line 720
    sget-object v4, Ltv/alphonso/service/ProvClient;->TAG:Ljava/lang/String;

    const-string v5, "Current DBMaxRecords is more than the new value."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    :cond_1
    iget-object v4, p0, Ltv/alphonso/service/ProvClient;->mContext:Landroid/content/Context;

    invoke-static {v4}, Ltv/alphonso/dbutil/database/DBAdapter;->getInstance(Landroid/content/Context;)Ltv/alphonso/dbutil/database/DBAdapter;

    move-result-object v1

    .line 723
    .local v1, "db":Ltv/alphonso/dbutil/database/DBAdapter;
    invoke-virtual {v1}, Ltv/alphonso/dbutil/database/DBAdapter;->getNumRecords()J

    move-result-wide v4

    long-to-int v0, v4

    .line 725
    .local v0, "currentDbSize":I
    const-string v4, "max_history_size"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    if-le v0, v4, :cond_3

    .line 727
    sget-boolean v4, Ltv/alphonso/service/ProvClient;->debug:Z

    if-eqz v4, :cond_2

    .line 728
    sget-object v4, Ltv/alphonso/service/ProvClient;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Deleting "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "max_history_size"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    sub-int v6, v0, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " oldest records."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    :cond_2
    const-string v4, "max_history_size"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    sub-int v4, v0, v4

    invoke-virtual {v1, v4}, Ltv/alphonso/dbutil/database/DBAdapter;->deleteNOldestRecords(I)V

    .line 733
    .end local v0    # "currentDbSize":I
    .end local v1    # "db":Ltv/alphonso/dbutil/database/DBAdapter;
    :cond_3
    iget-object v4, p0, Ltv/alphonso/service/ProvClient;->mContext:Landroid/content/Context;

    const-string v5, "max_history_size"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v4, v5}, Ltv/alphonso/utils/PreferencesManager;->setDBMAxRecords(Landroid/content/Context;I)V

    .line 736
    :cond_4
    const-string v4, "location_poll_interval"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, "location_poll_interval"

    .line 737
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    iget-object v6, p0, Ltv/alphonso/service/ProvClient;->mContext:Landroid/content/Context;

    invoke-static {v6}, Ltv/alphonso/utils/PreferencesManager;->getLocationPollInterval(Landroid/content/Context;)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-eqz v4, :cond_6

    .line 739
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 740
    .local v3, "params":Landroid/os/Bundle;
    const-string v4, "location_poll_interval"

    const-string v5, "location_poll_interval"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 742
    sget-object v4, Ltv/alphonso/service/AlphonsoService;->singletonObject:Ltv/alphonso/service/AlphonsoService;

    iget-object v4, v4, Ltv/alphonso/service/AlphonsoService;->mHandler:Ltv/alphonso/service/AlphonsoService$MsgHandler;

    const/16 v5, 0x2c

    invoke-virtual {v4, v5}, Ltv/alphonso/service/AlphonsoService$MsgHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 743
    .local v2, "msg":Landroid/os/Message;
    invoke-virtual {v2, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 745
    sget-boolean v4, Ltv/alphonso/service/ProvClient;->debug:Z

    if-eqz v4, :cond_5

    .line 746
    sget-object v4, Ltv/alphonso/service/ProvClient;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Sending LOCATION_CONFIG message to AlphonsoService."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    :cond_5
    sget-object v4, Ltv/alphonso/service/AlphonsoService;->singletonObject:Ltv/alphonso/service/AlphonsoService;

    iget-object v4, v4, Ltv/alphonso/service/AlphonsoService;->mHandler:Ltv/alphonso/service/AlphonsoService$MsgHandler;

    invoke-virtual {v4, v2}, Ltv/alphonso/service/AlphonsoService$MsgHandler;->sendMessage(Landroid/os/Message;)Z

    .line 750
    .end local v2    # "msg":Landroid/os/Message;
    .end local v3    # "params":Landroid/os/Bundle;
    :cond_6
    const-string v4, "ad_id_poll_duration"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    const-string v4, "ad_id_poll_duration"

    .line 751
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iget-object v5, p0, Ltv/alphonso/service/ProvClient;->mContext:Landroid/content/Context;

    invoke-static {v5}, Ltv/alphonso/utils/PreferencesManager;->getAdIdPollDuration(Landroid/content/Context;)I

    move-result v5

    if-eq v4, v5, :cond_8

    .line 753
    sget-object v4, Ltv/alphonso/service/AlphonsoService;->singletonObject:Ltv/alphonso/service/AlphonsoService;

    if-eqz v4, :cond_8

    .line 755
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 756
    .restart local v3    # "params":Landroid/os/Bundle;
    const-string v4, "ad_id_poll_duration"

    const-string v5, "ad_id_poll_duration"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 758
    sget-object v4, Ltv/alphonso/service/AlphonsoService;->singletonObject:Ltv/alphonso/service/AlphonsoService;

    iget-object v4, v4, Ltv/alphonso/service/AlphonsoService;->mHandler:Ltv/alphonso/service/AlphonsoService$MsgHandler;

    const/16 v5, 0x2a

    invoke-virtual {v4, v5}, Ltv/alphonso/service/AlphonsoService$MsgHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 759
    .restart local v2    # "msg":Landroid/os/Message;
    invoke-virtual {v2, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 761
    sget-boolean v4, Ltv/alphonso/service/ProvClient;->debug:Z

    if-eqz v4, :cond_7

    .line 762
    sget-object v4, Ltv/alphonso/service/ProvClient;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Sending AD_ID_POLL_CONFIG message to AlphonsoService."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    :cond_7
    sget-object v4, Ltv/alphonso/service/AlphonsoService;->singletonObject:Ltv/alphonso/service/AlphonsoService;

    iget-object v4, v4, Ltv/alphonso/service/AlphonsoService;->mHandler:Ltv/alphonso/service/AlphonsoService$MsgHandler;

    invoke-virtual {v4, v2}, Ltv/alphonso/service/AlphonsoService$MsgHandler;->sendMessage(Landroid/os/Message;)Z

    .line 767
    .end local v2    # "msg":Landroid/os/Message;
    .end local v3    # "params":Landroid/os/Bundle;
    :cond_8
    return-void
.end method

.method private processPrimeTimeParams(Lorg/json/JSONObject;)V
    .locals 10
    .param p1, "jObj"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x5

    .line 628
    const-string v6, "power_optimization_mode"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    const-string v6, "power_optimization_mode"

    .line 629
    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    const-string v6, "power_controls_weekdays"

    .line 630
    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 632
    const-string v6, "power_controls_weekdays"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 634
    .local v2, "jArray":Lorg/json/JSONArray;
    new-array v4, v7, [Ltv/alphonso/service/PrimeTime;

    .line 635
    .local v4, "primeTimeArray":[Ltv/alphonso/service/PrimeTime;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v7, :cond_0

    .line 636
    new-instance v6, Ltv/alphonso/service/PrimeTime;

    invoke-direct {v6}, Ltv/alphonso/service/PrimeTime;-><init>()V

    aput-object v6, v4, v1

    .line 635
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 638
    :cond_0
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v1, v6, :cond_9

    .line 640
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 641
    .local v0, "arrayEntry":Lorg/json/JSONObject;
    const-string v6, "begin"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 642
    aget-object v6, v4, v1

    const-string v7, "begin"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Ltv/alphonso/service/PrimeTime;->begin:Ljava/lang/String;

    .line 643
    :cond_1
    const-string v6, "end"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 644
    aget-object v6, v4, v1

    const-string v7, "end"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Ltv/alphonso/service/PrimeTime;->end:Ljava/lang/String;

    .line 645
    :cond_2
    const-string v6, "id_retries"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 646
    aget-object v6, v4, v1

    const-string v7, "id_retries"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Ltv/alphonso/service/PrimeTime;->captureCount:I

    .line 647
    :cond_3
    const-string v6, "id_attempt_sleep_interval"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 648
    aget-object v6, v4, v1

    const-string v7, "id_attempt_sleep_interval"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v6, Ltv/alphonso/service/PrimeTime;->captureScenarioSleepInterval:J

    .line 649
    :cond_4
    const-string v6, "id_attempt_sleep_interval_max"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 650
    aget-object v6, v4, v1

    const-string v7, "id_attempt_sleep_interval_max"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v6, Ltv/alphonso/service/PrimeTime;->captureScenarioSleepIntervalMax:J

    .line 651
    :cond_5
    const-string v6, "id_attempt_sleep_interval_livetv"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 652
    aget-object v6, v4, v1

    const-string v7, "id_attempt_sleep_interval_livetv"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v6, Ltv/alphonso/service/PrimeTime;->captureScenarioSleepIntervalLivetv:J

    .line 653
    :cond_6
    const-string v6, "id_attempt_sleep_interval_inhibiter_increment"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 654
    aget-object v6, v4, v1

    const-string v7, "id_attempt_sleep_interval_inhibiter_increment"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v8

    iput-wide v8, v6, Ltv/alphonso/service/PrimeTime;->captureScenarioSleepIntervalInhibiterIncrement:D

    .line 656
    :cond_7
    sget-boolean v6, Ltv/alphonso/service/ProvClient;->debug:Z

    if-eqz v6, :cond_8

    .line 657
    aget-object v6, v4, v1

    invoke-virtual {v6}, Ltv/alphonso/service/PrimeTime;->print()V

    .line 638
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 660
    .end local v0    # "arrayEntry":Lorg/json/JSONObject;
    :cond_9
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 661
    .local v5, "primeTimeParams":Landroid/os/Bundle;
    const-string v6, "prime_time_config"

    invoke-virtual {v5, v6, v4}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 663
    sget-object v6, Ltv/alphonso/service/AlphonsoService;->singletonObject:Ltv/alphonso/service/AlphonsoService;

    if-eqz v6, :cond_b

    .line 665
    sget-boolean v6, Ltv/alphonso/service/ProvClient;->debug:Z

    if-eqz v6, :cond_a

    .line 666
    sget-object v6, Ltv/alphonso/service/ProvClient;->TAG:Ljava/lang/String;

    const-string v7, "Sending PRIME_TIME_CONFIG message to AlphonsoService."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    :cond_a
    sget-object v6, Ltv/alphonso/service/AlphonsoService;->singletonObject:Ltv/alphonso/service/AlphonsoService;

    iget-object v6, v6, Ltv/alphonso/service/AlphonsoService;->mHandler:Ltv/alphonso/service/AlphonsoService$MsgHandler;

    invoke-virtual {v6}, Ltv/alphonso/service/AlphonsoService$MsgHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v3

    .line 669
    .local v3, "msg":Landroid/os/Message;
    const/16 v6, 0x2e

    iput v6, v3, Landroid/os/Message;->what:I

    .line 670
    invoke-virtual {v3, v5}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 672
    sget-object v6, Ltv/alphonso/service/AlphonsoService;->singletonObject:Ltv/alphonso/service/AlphonsoService;

    iget-object v6, v6, Ltv/alphonso/service/AlphonsoService;->mHandler:Ltv/alphonso/service/AlphonsoService$MsgHandler;

    invoke-virtual {v6, v3}, Ltv/alphonso/service/AlphonsoService$MsgHandler;->sendMessage(Landroid/os/Message;)Z

    .line 675
    .end local v1    # "i":I
    .end local v2    # "jArray":Lorg/json/JSONArray;
    .end local v3    # "msg":Landroid/os/Message;
    .end local v4    # "primeTimeArray":[Ltv/alphonso/service/PrimeTime;
    .end local v5    # "primeTimeParams":Landroid/os/Bundle;
    :cond_b
    return-void
.end method

.method private processProvClientParams(Lorg/json/JSONObject;)V
    .locals 6
    .param p1, "jObj"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1010
    const/4 v2, 0x5

    .line 1012
    .local v2, "retryExpBackoffMultiple":I
    const/4 v1, 0x5

    .line 1014
    .local v1, "retryExpBackoffFactorMin":I
    const/16 v0, 0x18

    .line 1017
    .local v0, "retryExpBackoffFactorMax":I
    const-string v3, "provserver_exp_backoff_retry_timer_multiple"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1019
    const-string v3, "provserver_exp_backoff_retry_timer_multiple"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 1020
    sget-boolean v3, Ltv/alphonso/service/ProvClient;->debug:Z

    if-eqz v3, :cond_0

    .line 1021
    sget-object v3, Ltv/alphonso/service/ProvClient;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Recvd retryExpBackoffMultiple: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1024
    :cond_0
    const-string v3, "provserver_exp_backoff_retry_timer_factor_min"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1026
    const-string v3, "provserver_exp_backoff_retry_timer_factor_min"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 1027
    sget-boolean v3, Ltv/alphonso/service/ProvClient;->debug:Z

    if-eqz v3, :cond_1

    .line 1028
    sget-object v3, Ltv/alphonso/service/ProvClient;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Recvd retryExpBackoffFactorMin: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    :cond_1
    const-string v3, "provserver_exp_backoff_retry_timer_factor_max"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1033
    const-string v3, "provserver_exp_backoff_retry_timer_factor_max"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 1034
    sget-boolean v3, Ltv/alphonso/service/ProvClient;->debug:Z

    if-eqz v3, :cond_2

    .line 1035
    sget-object v3, Ltv/alphonso/service/ProvClient;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Recvd retryExpBackoffFactorMax: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1038
    :cond_2
    invoke-direct {p0, v2, v1, v0}, Ltv/alphonso/service/ProvClient;->configureRetryExpBackoffParams(III)V

    .line 1041
    return-void
.end method

.method private processServerDomainPortConfig(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "server_name"    # Ljava/lang/String;
    .param p2, "server_port"    # Ljava/lang/String;
    .param p3, "insecure"    # Z
    .param p4, "server_port_ssl"    # Ljava/lang/String;
    .param p5, "server_port_nossl"    # Ljava/lang/String;

    .prologue
    .line 345
    const/4 v1, 0x0

    .line 346
    .local v1, "domain":Ljava/lang/String;
    const/4 v2, 0x0

    .line 348
    .local v2, "domain_ssl":Ljava/lang/String;
    if-nez p3, :cond_0

    if-eqz p5, :cond_7

    .line 350
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "http://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 356
    :goto_0
    if-eqz p4, :cond_1

    .line 357
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "https://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 359
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 360
    .local v0, "args":Landroid/os/Bundle;
    const-string v4, "server_domain"

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    if-eqz v2, :cond_2

    .line 363
    const-string v4, "server_domain_ssl"

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    :cond_2
    if-eqz p2, :cond_3

    .line 366
    const-string v4, "server_port"

    invoke-virtual {v0, v4, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    :cond_3
    if-eqz p5, :cond_4

    .line 369
    const-string v4, "server_port"

    invoke-virtual {v0, v4, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    :cond_4
    if-eqz p4, :cond_5

    .line 372
    const-string v4, "server_port_ssl"

    invoke-virtual {v0, v4, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    :cond_5
    const-string v4, "debug_logs_flag"

    iget-object v5, p0, Ltv/alphonso/service/ProvClient;->mContext:Landroid/content/Context;

    invoke-static {v5}, Ltv/alphonso/utils/PreferencesManager;->getDebugLogsFlag(Landroid/content/Context;)Z

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 376
    iget-object v4, p0, Ltv/alphonso/service/ProvClient;->mAlphonsoClient:Ltv/alphonso/alphonsoclient/AlphonsoClient;

    iget-object v4, v4, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v3

    .line 377
    .local v3, "msg":Landroid/os/Message;
    const/4 v4, 0x1

    iput v4, v3, Landroid/os/Message;->what:I

    .line 378
    invoke-virtual {v3, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 380
    sget-boolean v4, Ltv/alphonso/service/ProvClient;->debug:Z

    if-eqz v4, :cond_6

    .line 381
    sget-object v4, Ltv/alphonso/service/ProvClient;->TAG:Ljava/lang/String;

    const-string v5, "Sending SETUP message to AlphonsoClient Service"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    :cond_6
    iget-object v4, p0, Ltv/alphonso/service/ProvClient;->mAlphonsoClient:Ltv/alphonso/alphonsoclient/AlphonsoClient;

    iget-object v4, v4, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 383
    return-void

    .line 352
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v3    # "msg":Landroid/os/Message;
    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "https://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 353
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "https://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0
.end method

.method private processUIParams(Lorg/json/JSONObject;)V
    .locals 6
    .param p1, "jObj"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 816
    const/4 v0, 0x0

    .line 818
    .local v0, "change":Z
    const-string v3, "enable_debug_screen"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "enable_debug_screen"

    .line 819
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iget-object v4, p0, Ltv/alphonso/service/ProvClient;->mContext:Landroid/content/Context;

    invoke-static {v4}, Ltv/alphonso/utils/PreferencesManager;->getDebugScreenFlag(Landroid/content/Context;)Z

    move-result v4

    if-eq v3, v4, :cond_0

    .line 821
    iget-object v3, p0, Ltv/alphonso/service/ProvClient;->mContext:Landroid/content/Context;

    const-string v4, "enable_debug_screen"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v3, v4}, Ltv/alphonso/utils/PreferencesManager;->setDebugScreenFlag(Landroid/content/Context;Z)V

    .line 823
    const/4 v0, 0x1

    .line 826
    :cond_0
    if-eqz v0, :cond_2

    .line 828
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 829
    .local v2, "params":Landroid/os/Bundle;
    const-string v3, "misc_flags"

    invoke-direct {p0}, Ltv/alphonso/service/ProvClient;->getMiscFlags()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 831
    sget-object v3, Ltv/alphonso/service/AlphonsoService;->singletonObject:Ltv/alphonso/service/AlphonsoService;

    iget-object v3, v3, Ltv/alphonso/service/AlphonsoService;->mHandler:Ltv/alphonso/service/AlphonsoService$MsgHandler;

    const/16 v4, 0x22

    invoke-virtual {v3, v4}, Ltv/alphonso/service/AlphonsoService$MsgHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 832
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 834
    sget-boolean v3, Ltv/alphonso/service/ProvClient;->debug:Z

    if-eqz v3, :cond_1

    .line 835
    sget-object v3, Ltv/alphonso/service/ProvClient;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sending MISC_FLAGS_NOTIFICATION message to AlphonsoService."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    :cond_1
    sget-object v3, Ltv/alphonso/service/AlphonsoService;->singletonObject:Ltv/alphonso/service/AlphonsoService;

    iget-object v3, v3, Ltv/alphonso/service/AlphonsoService;->mHandler:Ltv/alphonso/service/AlphonsoService$MsgHandler;

    invoke-virtual {v3, v1}, Ltv/alphonso/service/AlphonsoService$MsgHandler;->sendMessage(Landroid/os/Message;)Z

    .line 838
    .end local v1    # "msg":Landroid/os/Message;
    .end local v2    # "params":Landroid/os/Bundle;
    :cond_2
    return-void
.end method

.method private randomWithRange(II)I
    .locals 6
    .param p1, "min"    # I
    .param p2, "max"    # I

    .prologue
    .line 971
    sub-int v1, p2, p1

    add-int/lit8 v0, v1, 0x1

    .line 972
    .local v0, "range":I
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    int-to-double v4, v0

    mul-double/2addr v2, v4

    double-to-int v1, v2

    add-int/2addr v1, p1

    return v1
.end method


# virtual methods
.method public getResultReceiver()Landroid/os/ResultReceiver;
    .locals 2

    .prologue
    .line 196
    iget-object v0, p0, Ltv/alphonso/service/ProvClient;->mReceiver:Landroid/os/ResultReceiver;

    if-nez v0, :cond_0

    .line 197
    new-instance v0, Ltv/alphonso/service/ProvClient$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Ltv/alphonso/service/ProvClient$1;-><init>(Ltv/alphonso/service/ProvClient;Landroid/os/Handler;)V

    iput-object v0, p0, Ltv/alphonso/service/ProvClient;->mReceiver:Landroid/os/ResultReceiver;

    .line 222
    :cond_0
    iget-object v0, p0, Ltv/alphonso/service/ProvClient;->mReceiver:Landroid/os/ResultReceiver;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Ltv/alphonso/service/ProvClient;->mState:I

    return v0
.end method

.method public processCleanupMessage()V
    .locals 2

    .prologue
    .line 113
    sget-boolean v0, Ltv/alphonso/service/ProvClient;->debug:Z

    if-eqz v0, :cond_0

    .line 114
    sget-object v0, Ltv/alphonso/service/ProvClient;->TAG:Ljava/lang/String;

    const-string v1, "CLEANUP ProvServer Client."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :cond_0
    invoke-virtual {p0}, Ltv/alphonso/service/ProvClient;->stopConfigRequestRetryTimer()V

    .line 118
    invoke-virtual {p0}, Ltv/alphonso/service/ProvClient;->stopConfigRequestLeaseTimer()V

    .line 119
    return-void
.end method

.method public processConfigRequestLeaseTimerExpiry()V
    .locals 2

    .prologue
    .line 125
    invoke-virtual {p0}, Ltv/alphonso/service/ProvClient;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 126
    sget-boolean v0, Ltv/alphonso/service/ProvClient;->debug:Z

    if-eqz v0, :cond_0

    .line 127
    sget-object v0, Ltv/alphonso/service/ProvClient;->TAG:Ljava/lang/String;

    const-string v1, "ProvClientService Setup not yet done. Ignore lease timer expiry!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    sget-boolean v0, Ltv/alphonso/service/ProvClient;->debug:Z

    if-eqz v0, :cond_2

    .line 132
    sget-object v0, Ltv/alphonso/service/ProvClient;->TAG:Ljava/lang/String;

    const-string v1, "ProvClientService lease timer expiry!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ltv/alphonso/service/ProvClient;->sendConfigRequestToProvServer(I)V

    goto :goto_0
.end method

.method public processConfigRequestRetryTimerExpiry()V
    .locals 2

    .prologue
    .line 140
    invoke-virtual {p0}, Ltv/alphonso/service/ProvClient;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 141
    sget-boolean v0, Ltv/alphonso/service/ProvClient;->debug:Z

    if-eqz v0, :cond_0

    .line 142
    sget-object v0, Ltv/alphonso/service/ProvClient;->TAG:Ljava/lang/String;

    const-string v1, "ProvClientService Setup not yet done. Ignore retry timer expiry!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 146
    :cond_1
    sget-boolean v0, Ltv/alphonso/service/ProvClient;->debug:Z

    if-eqz v0, :cond_2

    .line 147
    sget-object v0, Ltv/alphonso/service/ProvClient;->TAG:Ljava/lang/String;

    const-string v1, "ProvClientService retry timer expiry!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ltv/alphonso/service/ProvClient;->sendConfigRequestToProvServer(I)V

    goto :goto_0
.end method

.method public processLocationUpdate()V
    .locals 2

    .prologue
    .line 228
    sget-boolean v0, Ltv/alphonso/service/ProvClient;->debug:Z

    if-eqz v0, :cond_0

    .line 229
    sget-object v0, Ltv/alphonso/service/ProvClient;->TAG:Ljava/lang/String;

    const-string v1, "Received location update.."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    sget-object v0, Ltv/alphonso/service/ProvClient;->TAG:Ljava/lang/String;

    const-string v1, "Re-starting Prov-Server request configuration cycle."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    :cond_0
    invoke-virtual {p0}, Ltv/alphonso/service/ProvClient;->stopConfigRequestRetryTimer()V

    .line 235
    invoke-virtual {p0}, Ltv/alphonso/service/ProvClient;->stopConfigRequestLeaseTimer()V

    .line 237
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ltv/alphonso/service/ProvClient;->sendConfigRequestToProvServer(I)V

    .line 238
    return-void
.end method

.method public processProvServerConfig(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "resultData"    # Landroid/os/Bundle;

    .prologue
    .line 243
    const/4 v1, 0x0

    .line 247
    .local v1, "jObj":Lorg/json/JSONObject;
    const/4 v4, 0x0

    iput v4, p0, Ltv/alphonso/service/ProvClient;->mCurrentRetry:I

    .line 249
    const-string v4, "prov_serv_config_response"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 251
    .local v3, "json":Ljava/lang/String;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    .end local v1    # "jObj":Lorg/json/JSONObject;
    .local v2, "jObj":Lorg/json/JSONObject;
    :try_start_1
    const-string v4, "config_lease_time"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 255
    const-string v4, "config_lease_time"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Ltv/alphonso/service/ProvClient;->mConfigLeaseTime:J

    .line 256
    sget-boolean v4, Ltv/alphonso/service/ProvClient;->debug:Z

    if-eqz v4, :cond_0

    .line 257
    sget-object v4, Ltv/alphonso/service/ProvClient;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Recvd config_lease_time: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Ltv/alphonso/service/ProvClient;->mConfigLeaseTime:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    :cond_0
    invoke-virtual {p0}, Ltv/alphonso/service/ProvClient;->startConfigRequestLeaseTimer()V

    .line 262
    :cond_1
    invoke-direct {p0, v2}, Ltv/alphonso/service/ProvClient;->processProvClientParams(Lorg/json/JSONObject;)V

    .line 264
    invoke-direct {p0, v2}, Ltv/alphonso/service/ProvClient;->processAlphonsoClientServiceParams(Lorg/json/JSONObject;)V

    .line 266
    invoke-direct {p0, v2}, Ltv/alphonso/service/ProvClient;->processAudioCaptureServiceParams(Lorg/json/JSONObject;)V

    .line 270
    invoke-direct {p0, v2}, Ltv/alphonso/service/ProvClient;->processPrimeTimeParams(Lorg/json/JSONObject;)V

    .line 272
    invoke-direct {p0, v2}, Ltv/alphonso/service/ProvClient;->processMiscParams(Lorg/json/JSONObject;)V

    .line 274
    invoke-direct {p0, v2}, Ltv/alphonso/service/ProvClient;->processUIParams(Lorg/json/JSONObject;)V

    .line 276
    invoke-direct {p0, v2}, Ltv/alphonso/service/ProvClient;->processClockSyncParams(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v2

    .line 284
    .end local v2    # "jObj":Lorg/json/JSONObject;
    .restart local v1    # "jObj":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 278
    :catch_0
    move-exception v0

    .line 279
    .local v0, "e":Lorg/json/JSONException;
    :goto_1
    sget-object v4, Ltv/alphonso/service/ProvClient;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "JSONException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "in Provisioning Server response. Retrying..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 282
    invoke-virtual {p0}, Ltv/alphonso/service/ProvClient;->startConfigRequestRetryTimer()V

    goto :goto_0

    .line 278
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v1    # "jObj":Lorg/json/JSONObject;
    .restart local v2    # "jObj":Lorg/json/JSONObject;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "jObj":Lorg/json/JSONObject;
    .restart local v1    # "jObj":Lorg/json/JSONObject;
    goto :goto_1
.end method

.method public processProvServerConfigResponse(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 904
    if-eqz p1, :cond_0

    const-string v0, "result_code"

    .line 905
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 907
    invoke-virtual {p0, p1}, Ltv/alphonso/service/ProvClient;->processProvServerConfig(Landroid/os/Bundle;)V

    .line 934
    :goto_0
    return-void

    .line 911
    :cond_0
    sget-object v0, Ltv/alphonso/service/ProvClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "REST API call response is with error and code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "result_code"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    if-eqz p1, :cond_2

    const-string v0, "status_code"

    .line 915
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 916
    invoke-virtual {p0}, Ltv/alphonso/service/ProvClient;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 918
    sget-boolean v0, Ltv/alphonso/service/ProvClient;->debug:Z

    if-eqz v0, :cond_1

    .line 919
    sget-object v0, Ltv/alphonso/service/ProvClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received resposen with status code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "status_code"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    sget-object v0, Ltv/alphonso/service/ProvClient;->TAG:Ljava/lang/String;

    const-string v1, "Re-starting Prov-Server request configuration cycle."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    :cond_1
    invoke-virtual {p0}, Ltv/alphonso/service/ProvClient;->stopConfigRequestRetryTimer()V

    .line 925
    invoke-virtual {p0}, Ltv/alphonso/service/ProvClient;->stopConfigRequestLeaseTimer()V

    .line 927
    const-string v0, "status_code"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Ltv/alphonso/service/ProvClient;->sendConfigRequestToProvServer(I)V

    goto :goto_0

    .line 931
    :cond_2
    invoke-virtual {p0}, Ltv/alphonso/service/ProvClient;->startConfigRequestRetryTimer()V

    goto :goto_0
.end method

.method public processSetupMessage(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 83
    iget-object v0, p0, Ltv/alphonso/service/ProvClient;->mContext:Landroid/content/Context;

    invoke-static {v0}, Ltv/alphonso/utils/PreferencesManager;->getDebugLogsFlag(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Ltv/alphonso/service/ProvClient;->debug:Z

    .line 86
    invoke-virtual {p0}, Ltv/alphonso/service/ProvClient;->getState()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 87
    sget-boolean v0, Ltv/alphonso/service/ProvClient;->debug:Z

    if-eqz v0, :cond_0

    .line 88
    sget-object v0, Ltv/alphonso/service/ProvClient;->TAG:Ljava/lang/String;

    const-string v1, "ProvClientService Setup already done. No change in new Setup. Ignore!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    sget-boolean v0, Ltv/alphonso/service/ProvClient;->debug:Z

    if-eqz v0, :cond_2

    .line 93
    sget-object v0, Ltv/alphonso/service/ProvClient;->TAG:Ljava/lang/String;

    const-string v1, "Received Prov Client Setup message."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :cond_2
    const-string v0, "prov_server_domain"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "prov_server_port"

    .line 96
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 98
    const-string v0, "prov_server_domain"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "prov_server_port"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ltv/alphonso/service/ProvClient;->configureProvServerParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ltv/alphonso/service/ProvClient;->sendConfigRequestToProvServer(I)V

    .line 102
    invoke-virtual {p0, v2}, Ltv/alphonso/service/ProvClient;->setState(I)V

    goto :goto_0

    .line 106
    :cond_3
    sget-object v0, Ltv/alphonso/service/ProvClient;->TAG:Ljava/lang/String;

    const-string v1, "Provisioning Server domain and/or port missing in SETUP message. Ignore SETUP!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sendConfigRequestToProvServer(I)V
    .locals 4
    .param p1, "statusCode"    # I

    .prologue
    .line 177
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 179
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "com.alphonsoclient.android.EXTRA_ALPHONSO_RESULT_RECEIVER"

    invoke-virtual {p0}, Ltv/alphonso/service/ProvClient;->getResultReceiver()Landroid/os/ResultReceiver;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 181
    if-eqz p1, :cond_0

    .line 182
    const-string v2, "status_code"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 184
    :cond_0
    iget-object v2, p0, Ltv/alphonso/service/ProvClient;->mAlphonsoClient:Ltv/alphonso/alphonsoclient/AlphonsoClient;

    iget-object v2, v2, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 185
    .local v1, "msg":Landroid/os/Message;
    const/16 v2, 0xb

    iput v2, v1, Landroid/os/Message;->what:I

    .line 186
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 188
    sget-boolean v2, Ltv/alphonso/service/ProvClient;->debug:Z

    if-eqz v2, :cond_1

    .line 189
    sget-object v2, Ltv/alphonso/service/ProvClient;->TAG:Ljava/lang/String;

    const-string v3, "Sending PROV_SERVER_CONFIG_REQUEST message to AlphonsoClient."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :cond_1
    iget-object v2, p0, Ltv/alphonso/service/ProvClient;->mAlphonsoClient:Ltv/alphonso/alphonsoclient/AlphonsoClient;

    iget-object v2, v2, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 191
    return-void
.end method

.method public setState(I)V
    .locals 0
    .param p1, "mState"    # I

    .prologue
    .line 77
    iput p1, p0, Ltv/alphonso/service/ProvClient;->mState:I

    .line 78
    return-void
.end method

.method public startConfigRequestLeaseTimer()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 853
    iget-object v5, p0, Ltv/alphonso/service/ProvClient;->mContext:Landroid/content/Context;

    const-string v6, "alarm"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 854
    .local v0, "am":Landroid/app/AlarmManager;
    new-instance v1, Landroid/content/Intent;

    iget-object v5, p0, Ltv/alphonso/service/ProvClient;->mContext:Landroid/content/Context;

    const-class v6, Ltv/alphonso/service/AlphonsoService;

    invoke-direct {v1, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 855
    .local v1, "intent":Landroid/content/Intent;
    const-string v5, "PROV_CLIENT_CONFIG_REQUEST_LEASE_TIMER"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 856
    const-string v5, "tv.alphonso.service.AlphonsoService.EVENT"

    const/4 v6, 0x3

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 857
    iget-object v5, p0, Ltv/alphonso/service/ProvClient;->mContext:Landroid/content/Context;

    const/high16 v6, 0x8000000

    invoke-static {v5, v12, v1, v6}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 859
    .local v4, "pi":Landroid/app/PendingIntent;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Ltv/alphonso/service/ProvClient;->mConfigLeaseTime:J

    const-wide/16 v10, 0x2

    div-long/2addr v8, v10

    const-wide/16 v10, 0x3e8

    mul-long/2addr v8, v10

    add-long v2, v6, v8

    .line 860
    .local v2, "duration":J
    invoke-virtual {v0, v12, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 861
    return-void
.end method

.method public startConfigRequestRetryTimer()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 866
    iget v5, p0, Ltv/alphonso/service/ProvClient;->mCurrentRetry:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Ltv/alphonso/service/ProvClient;->mCurrentRetry:I

    .line 868
    iget-object v5, p0, Ltv/alphonso/service/ProvClient;->mContext:Landroid/content/Context;

    const-string v6, "alarm"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 869
    .local v0, "am":Landroid/app/AlarmManager;
    new-instance v1, Landroid/content/Intent;

    iget-object v5, p0, Ltv/alphonso/service/ProvClient;->mContext:Landroid/content/Context;

    const-class v6, Ltv/alphonso/service/AlphonsoService;

    invoke-direct {v1, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 870
    .local v1, "intent":Landroid/content/Intent;
    const-string v5, "PROV_CLIENT_CONFIG_REQUEST_RETRY_TIMER"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 871
    const-string v5, "tv.alphonso.service.AlphonsoService.EVENT"

    const/4 v6, 0x4

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 872
    iget-object v5, p0, Ltv/alphonso/service/ProvClient;->mContext:Landroid/content/Context;

    const/high16 v6, 0x8000000

    invoke-static {v5, v10, v1, v6}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 874
    .local v4, "pi":Landroid/app/PendingIntent;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {p0}, Ltv/alphonso/service/ProvClient;->getRetryTimerDuration()I

    move-result v5

    mul-int/lit16 v5, v5, 0x3e8

    int-to-long v8, v5

    add-long v2, v6, v8

    .line 875
    .local v2, "duration":J
    invoke-virtual {v0, v10, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 876
    return-void
.end method

.method public stopConfigRequestLeaseTimer()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    .line 880
    iget-object v3, p0, Ltv/alphonso/service/ProvClient;->mContext:Landroid/content/Context;

    const-string v4, "alarm"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 881
    .local v0, "am":Landroid/app/AlarmManager;
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Ltv/alphonso/service/ProvClient;->mContext:Landroid/content/Context;

    const-class v4, Ltv/alphonso/service/AlphonsoService;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 882
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "PROV_CLIENT_CONFIG_REQUEST_LEASE_TIMER"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 883
    const-string v3, "tv.alphonso.service.AlphonsoService.EVENT"

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 884
    iget-object v3, p0, Ltv/alphonso/service/ProvClient;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/high16 v5, 0x8000000

    invoke-static {v3, v4, v1, v5}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 885
    .local v2, "pi":Landroid/app/PendingIntent;
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 887
    sget-object v3, Ltv/alphonso/service/AlphonsoService;->singletonObject:Ltv/alphonso/service/AlphonsoService;

    iget-object v3, v3, Ltv/alphonso/service/AlphonsoService;->mHandler:Ltv/alphonso/service/AlphonsoService$MsgHandler;

    invoke-virtual {v3, v6}, Ltv/alphonso/service/AlphonsoService$MsgHandler;->removeMessages(I)V

    .line 888
    return-void
.end method

.method public stopConfigRequestRetryTimer()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    .line 892
    iget-object v3, p0, Ltv/alphonso/service/ProvClient;->mContext:Landroid/content/Context;

    const-string v4, "alarm"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 893
    .local v0, "am":Landroid/app/AlarmManager;
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Ltv/alphonso/service/ProvClient;->mContext:Landroid/content/Context;

    const-class v4, Ltv/alphonso/service/AlphonsoService;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 894
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "PROV_CLIENT_CONFIG_REQUEST_RETRY_TIMER"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 895
    const-string v3, "tv.alphonso.service.AlphonsoService.EVENT"

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 896
    iget-object v3, p0, Ltv/alphonso/service/ProvClient;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/high16 v5, 0x8000000

    invoke-static {v3, v4, v1, v5}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 897
    .local v2, "pi":Landroid/app/PendingIntent;
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 899
    sget-object v3, Ltv/alphonso/service/AlphonsoService;->singletonObject:Ltv/alphonso/service/AlphonsoService;

    iget-object v3, v3, Ltv/alphonso/service/AlphonsoService;->mHandler:Ltv/alphonso/service/AlphonsoService$MsgHandler;

    invoke-virtual {v3, v6}, Ltv/alphonso/service/AlphonsoService$MsgHandler;->removeMessages(I)V

    .line 900
    return-void
.end method
