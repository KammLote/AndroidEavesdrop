.class public Ltv/alphonso/alphonsoclient/AudioFPUploadService;
.super Ljava/lang/Object;
.source "AudioFPUploadService.java"


# static fields
.field public static final ALPHONSO_VERSION:Ljava/lang/String; = "v1"

.field public static final AUDIO_CAPTURE_END:I = 0x3

.field public static final AUDIO_CAPTURE_START:I = 0x1

.field public static final AUDIO_CAPTURE_UPDATE:I = 0x2

.field public static final AUDIO_FP_CAPTURE_END:I = 0x6

.field public static final AUDIO_FP_CAPTURE_START:I = 0x4

.field public static final AUDIO_FP_CAPTURE_UPDATE:I = 0x5

.field public static final AUDIO_FP_UPLOAD_SERVICE_DESTROY:I = 0xa

.field public static final AUDIO_FP_UPLOAD_SERVICE_SETUP:I = 0x9

.field public static final EXTRA_RESULT_RECEIVER:Ljava/lang/String; = "tv.alphonso.alphonsoclient.AudioFPUploadService.EXTRA_RESULT_RECEIVER"

.field public static final FAIL:I = 0x1

.field public static final GET_STATS:I = 0x7

.field public static final RESET_STATS:I = 0x8

.field public static final SUCCESS:I

.field private static final TAG:Ljava/lang/String;

.field public static captureContext:Ltv/alphonso/alphonsoclient/AudioCaptureCxt;

.field public static interPktStartSendTimeAvg:J

.field public static interPktStartSendTimeMax:J

.field public static interPktStartSendTimeMin:J

.field public static rttForPacketsAvg:J

.field public static rttForPacketsMax:J

.field public static rttForPacketsMin:J


# instance fields
.field private mAlphonsoServerDomain:Ljava/lang/String;

.field private mAlphonsoServerPort:Ljava/lang/String;

.field private mAlphonsoUid:Ljava/lang/String;

.field private mApiKey:Ljava/lang/String;

.field private mAudioStream:Ljava/io/ByteArrayOutputStream;

.field public mCallback:Landroid/os/Handler$Callback;

.field private mContext:Landroid/content/Context;

.field private mCookie:Lorg/apache/http/client/CookieStore;

.field public mHandler:Landroid/os/Handler;

.field private mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

.field private mThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 32
    const-class v0, Ltv/alphonso/alphonsoclient/AudioFPUploadService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->TAG:Ljava/lang/String;

    .line 53
    const/4 v0, 0x0

    sput-object v0, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->captureContext:Ltv/alphonso/alphonsoclient/AudioCaptureCxt;

    .line 69
    sput-wide v2, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->interPktStartSendTimeAvg:J

    .line 70
    sput-wide v2, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->interPktStartSendTimeMin:J

    .line 71
    sput-wide v2, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->interPktStartSendTimeMax:J

    .line 73
    sput-wide v2, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->rttForPacketsAvg:J

    .line 74
    sput-wide v2, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->rttForPacketsMin:J

    .line 75
    sput-wide v2, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->rttForPacketsMax:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object v1, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->mThread:Landroid/os/HandlerThread;

    .line 57
    iput-object v1, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->mContext:Landroid/content/Context;

    .line 58
    iput-object v1, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->mHandler:Landroid/os/Handler;

    .line 59
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->mAudioStream:Ljava/io/ByteArrayOutputStream;

    .line 60
    iput-object v1, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->mAlphonsoServerDomain:Ljava/lang/String;

    .line 61
    iput-object v1, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->mAlphonsoServerPort:Ljava/lang/String;

    .line 62
    iput-object v1, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->mAlphonsoUid:Ljava/lang/String;

    .line 63
    iput-object v1, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 64
    iput-object v1, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->mApiKey:Ljava/lang/String;

    .line 66
    iput-object v1, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->mCookie:Lorg/apache/http/client/CookieStore;

    .line 204
    new-instance v0, Ltv/alphonso/alphonsoclient/AudioFPUploadService$1;

    invoke-direct {v0, p0}, Ltv/alphonso/alphonsoclient/AudioFPUploadService$1;-><init>(Ltv/alphonso/alphonsoclient/AudioFPUploadService;)V

    iput-object v0, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->mCallback:Landroid/os/Handler$Callback;

    .line 80
    iput-object p1, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->mContext:Landroid/content/Context;

    .line 82
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "AudioFPUploadService"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->mThread:Landroid/os/HandlerThread;

    .line 84
    iget-object v0, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 86
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->mCallback:Landroid/os/Handler$Callback;

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->mHandler:Landroid/os/Handler;

    .line 87
    return-void
.end method

.method static synthetic access$000(Ltv/alphonso/alphonsoclient/AudioFPUploadService;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 0
    .param p0, "x0"    # Ltv/alphonso/alphonsoclient/AudioFPUploadService;
    .param p1, "x1"    # Landroid/os/Bundle;
    .param p2, "x2"    # Landroid/os/ResultReceiver;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->processAudioCaptureStart(Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    return-void
.end method

.method static synthetic access$100(Ltv/alphonso/alphonsoclient/AudioFPUploadService;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 0
    .param p0, "x0"    # Ltv/alphonso/alphonsoclient/AudioFPUploadService;
    .param p1, "x1"    # Landroid/os/Bundle;
    .param p2, "x2"    # Landroid/os/ResultReceiver;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->processAudioCaptureUpdate(Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    return-void
.end method

.method static synthetic access$200(Ltv/alphonso/alphonsoclient/AudioFPUploadService;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Ltv/alphonso/alphonsoclient/AudioFPUploadService;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->processAudioCaptureEnd(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$300(Ltv/alphonso/alphonsoclient/AudioFPUploadService;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 0
    .param p0, "x0"    # Ltv/alphonso/alphonsoclient/AudioFPUploadService;
    .param p1, "x1"    # Landroid/os/Bundle;
    .param p2, "x2"    # Landroid/os/ResultReceiver;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->processAudioFPCaptureStart(Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    return-void
.end method

.method static synthetic access$400(Ltv/alphonso/alphonsoclient/AudioFPUploadService;Landroid/os/Bundle;Landroid/os/ResultReceiver;Z)V
    .locals 0
    .param p0, "x0"    # Ltv/alphonso/alphonsoclient/AudioFPUploadService;
    .param p1, "x1"    # Landroid/os/Bundle;
    .param p2, "x2"    # Landroid/os/ResultReceiver;
    .param p3, "x3"    # Z

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->processAudioFPCaptureUpdate(Landroid/os/Bundle;Landroid/os/ResultReceiver;Z)V

    return-void
.end method

.method static synthetic access$500(Ltv/alphonso/alphonsoclient/AudioFPUploadService;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Ltv/alphonso/alphonsoclient/AudioFPUploadService;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->processAudioFPCaptureEnd(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$600(Ltv/alphonso/alphonsoclient/AudioFPUploadService;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 0
    .param p0, "x0"    # Ltv/alphonso/alphonsoclient/AudioFPUploadService;
    .param p1, "x1"    # Landroid/os/Bundle;
    .param p2, "x2"    # Landroid/os/ResultReceiver;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->processGetStatsRequest(Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    return-void
.end method

.method static synthetic access$700(Ltv/alphonso/alphonsoclient/AudioFPUploadService;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Ltv/alphonso/alphonsoclient/AudioFPUploadService;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->processSetupMessage(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$800(Ltv/alphonso/alphonsoclient/AudioFPUploadService;)V
    .locals 0
    .param p0, "x0"    # Ltv/alphonso/alphonsoclient/AudioFPUploadService;

    .prologue
    .line 30
    invoke-direct {p0}, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->processDestroyMessage()V

    return-void
.end method

.method static synthetic access$900()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private cleanupCaptureContext()V
    .locals 4

    .prologue
    .line 713
    sget-boolean v0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->debug:Z

    if-eqz v0, :cond_0

    .line 714
    sget-object v0, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AlphonsoClient: NumPktSent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->captureContext:Ltv/alphonso/alphonsoclient/AudioCaptureCxt;

    iget v2, v2, Ltv/alphonso/alphonsoclient/AudioCaptureCxt;->numPktsSent:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->captureContext:Ltv/alphonso/alphonsoclient/AudioCaptureCxt;

    .line 718
    sget-boolean v0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->debug:Z

    if-eqz v0, :cond_1

    .line 719
    sget-object v0, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AlphonsoClient: Min interPktStartSendTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->interPktStartSendTimeMin:J

    invoke-static {v2, v3}, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->getDurationAsString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    sget-object v0, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AlphonsoClient: Max interPktStartSendTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->interPktStartSendTimeMax:J

    invoke-static {v2, v3}, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->getDurationAsString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    sget-object v0, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AlphonsoClient: Avg interPktStartSendTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->interPktStartSendTimeAvg:J

    invoke-static {v2, v3}, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->getDurationAsString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    sget-object v0, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AlphonsoClient: Min rtt: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->rttForPacketsMin:J

    invoke-static {v2, v3}, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->getDurationAsString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    sget-object v0, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AlphonsoClient: Max rtt: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->rttForPacketsMax:J

    invoke-static {v2, v3}, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->getDurationAsString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    sget-object v0, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AlphonsoClient: Avg rtt: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->rttForPacketsAvg:J

    invoke-static {v2, v3}, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->getDurationAsString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    :cond_1
    iget-object v0, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->mAudioStream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 728
    return-void
.end method

.method private getAlphonsoServerUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 166
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 167
    .local v0, "str":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->getAlphonsoServerDomain()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 168
    invoke-virtual {p0}, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->getAlphonsoServerPort()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 169
    invoke-virtual {p0}, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->getAlphonsoServerDomain()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 170
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 171
    invoke-virtual {p0}, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->getAlphonsoServerPort()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 172
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 173
    const-string v1, "v1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 175
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getAlphonsoUid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->mAlphonsoUid:Ljava/lang/String;

    return-object v0
.end method

.method private getAlphonsoUidSuffix(Z)Ljava/lang/String;
    .locals 3
    .param p1, "withQuestionMark"    # Z

    .prologue
    .line 180
    invoke-direct {p0}, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->getAlphonsoUid()Ljava/lang/String;

    move-result-object v0

    .line 182
    .local v0, "alphonso_uid":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 183
    .local v1, "str":Ljava/lang/StringBuffer;
    if-eqz v0, :cond_0

    .line 184
    if-eqz p1, :cond_1

    .line 185
    const-string v2, "?alp_uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 188
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 190
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 187
    :cond_1
    const-string v2, "alp_uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public static getDurationAsString(J)Ljava/lang/String;
    .locals 8
    .param p0, "duration"    # J

    .prologue
    const-wide/16 v6, 0x3e8

    .line 749
    div-long v4, p0, v6

    long-to-int v1, v4

    .line 750
    .local v1, "seconds":I
    rem-long v4, p0, v6

    long-to-int v0, v4

    .line 752
    .local v0, "milliSeconds":I
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 753
    .local v2, "str":Ljava/lang/StringBuffer;
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 754
    const-string v3, "s "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 755
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 756
    const-string v3, "ms."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 758
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private getHttpClient()Lorg/apache/http/client/HttpClient;
    .locals 3

    .prologue
    .line 92
    iget-object v0, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    if-nez v0, :cond_1

    .line 94
    sget-boolean v0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->debug:Z

    if-eqz v0, :cond_0

    .line 95
    sget-object v0, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->TAG:Ljava/lang/String;

    const-string v1, "Allocating new HTTP Client."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :cond_0
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    invoke-virtual {p0, v0}, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->setHttpClient(Lorg/apache/http/impl/client/DefaultHttpClient;)V

    .line 97
    iget-object v0, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    const-string v1, "http.tcp.nodelay"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 100
    :cond_1
    iget-object v0, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    return-object v0
.end method

.method private invokeRESTApi(Ljava/lang/StringBuffer;Ljava/util/LinkedHashMap;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "uri"    # Ljava/lang/StringBuffer;
    .param p3, "resultData"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuffer;",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 455
    .local p2, "params":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 456
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "com.AlphonsoClient.android.EXTRA_HTTP_VERB"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 457
    const-string v1, "com.AlphonsoClient.android.EXTRA_PARAMS"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 460
    invoke-static {}, Ltv/alphonso/alphonsoclient/RESTService;->getInstance()Ltv/alphonso/alphonsoclient/RESTService;

    move-result-object v1

    invoke-direct {p0}, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->getHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0, p3}, Ltv/alphonso/alphonsoclient/RESTService;->handleMessage(Lorg/apache/http/client/HttpClient;Landroid/net/Uri;Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 462
    invoke-direct {p0}, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->getHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v1

    check-cast v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getCookieStore()Lorg/apache/http/client/CookieStore;

    move-result-object v1

    iput-object v1, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->mCookie:Lorg/apache/http/client/CookieStore;

    .line 463
    return-void
.end method

.method private processAudioCaptureEnd(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 403
    sget-boolean v3, Ltv/alphonso/alphonsoclient/AlphonsoClient;->debug:Z

    if-eqz v3, :cond_0

    .line 404
    sget-object v3, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->TAG:Ljava/lang/String;

    const-string v4, "AlphonsoClient: Rcvd AUDIO_CAPTURE_END request."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    :cond_0
    iget-object v3, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Ltv/alphonso/utils/Utils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 407
    sget-object v3, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->TAG:Ljava/lang/String;

    const-string v4, "Network unavailable."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    :goto_0
    return-void

    .line 410
    :cond_1
    sget-object v3, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->captureContext:Ltv/alphonso/alphonsoclient/AudioCaptureCxt;

    if-nez v3, :cond_2

    .line 412
    sget-object v3, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->TAG:Ljava/lang/String;

    const-string v4, "AUDIO_CAPTURE_END request with null captureContext. Dropping request."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 416
    :cond_2
    invoke-direct {p0}, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->getAlphonsoServerUrl()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 417
    sget-object v3, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->TAG:Ljava/lang/String;

    const-string v4, "Alphonso server domain/port not set. Dropping request!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 421
    :cond_3
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 423
    .local v0, "params":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "result"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 424
    const-string v3, "type"

    const-string v4, "ack"

    invoke-virtual {v0, v3, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    :goto_1
    const-string v3, "device_id"

    const-string v4, "device_id"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    const-string v3, "token"

    sget-object v4, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->captureContext:Ltv/alphonso/alphonsoclient/AudioCaptureCxt;

    invoke-virtual {v4}, Ltv/alphonso/alphonsoclient/AudioCaptureCxt;->getToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 435
    .local v2, "uri":Ljava/lang/StringBuffer;
    invoke-direct {p0}, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->getAlphonsoServerUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 436
    const-string v3, "/audio/buffer"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 437
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->getAlphonsoUidSuffix(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 439
    iget-object v3, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->mApiKey:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 440
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "&api_key="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->mApiKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 443
    :cond_4
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 446
    .local v1, "resultData":Landroid/os/Bundle;
    invoke-direct {p0, v2, v0, v1}, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->invokeRESTApi(Ljava/lang/StringBuffer;Ljava/util/LinkedHashMap;Landroid/os/Bundle;)V

    .line 448
    invoke-direct {p0}, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->cleanupCaptureContext()V

    goto/16 :goto_0

    .line 427
    .end local v1    # "resultData":Landroid/os/Bundle;
    .end local v2    # "uri":Ljava/lang/StringBuffer;
    :cond_5
    const-string v3, "type"

    const-string v4, "abort"

    invoke-virtual {v0, v3, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method private processAudioCaptureResponse(Landroid/os/Bundle;Z)V
    .locals 10
    .param p1, "result"    # Landroid/os/Bundle;
    .param p2, "fingerprintApi"    # Z

    .prologue
    .line 468
    const-string v7, "status_code"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 470
    .local v5, "statusCode":I
    const/16 v7, 0xc8

    if-ne v7, v5, :cond_8

    .line 472
    sget-object v7, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->captureContext:Ltv/alphonso/alphonsoclient/AudioCaptureCxt;

    iget v8, v7, Ltv/alphonso/alphonsoclient/AudioCaptureCxt;->numPktsSent:I

    add-int/lit8 v8, v8, 0x1

    iput v8, v7, Ltv/alphonso/alphonsoclient/AudioCaptureCxt;->numPktsSent:I

    .line 473
    sget-boolean v7, Ltv/alphonso/alphonsoclient/AlphonsoClient;->debug:Z

    if-eqz v7, :cond_0

    .line 474
    sget-object v7, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->TAG:Ljava/lang/String;

    const-string v8, "REST API Call to server has 200 OK response"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    :cond_0
    const-string v7, "com.AlphonsoClient.android.REST_RESULT"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 477
    .local v4, "json":Ljava/lang/String;
    sget-boolean v7, Ltv/alphonso/alphonsoclient/AlphonsoClient;->debug:Z

    if-eqz v7, :cond_1

    .line 478
    sget-object v7, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "REST API call response "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    :cond_1
    const/4 v2, 0x0

    .line 481
    .local v2, "jObj":Lorg/json/JSONObject;
    const/4 v6, 0x0

    .line 483
    .local v6, "title":Ljava/lang/String;
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 485
    .end local v2    # "jObj":Lorg/json/JSONObject;
    .local v3, "jObj":Lorg/json/JSONObject;
    :try_start_1
    const-string v7, "title"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 487
    const-string v7, "title"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 489
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 490
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v7, "Title"

    invoke-virtual {v0, v7, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    const-string v7, "logo_filename"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 493
    const-string v7, "logo_filename"

    const-string v8, "logo_filename"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    :cond_2
    const-string v7, "brand"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 497
    const-string v7, "brand"

    const-string v8, "brand"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    :cond_3
    const-string v7, "content_id"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 501
    const-string v7, "content_id"

    const-string v8, "content_id"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-virtual {v0, v7, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 504
    :cond_4
    const-string v7, "acr_type"

    sget-object v8, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->captureContext:Ltv/alphonso/alphonsoclient/AudioCaptureCxt;

    invoke-virtual {v8}, Ltv/alphonso/alphonsoclient/AudioCaptureCxt;->getAcrType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    const-string v7, "capture_id"

    sget-object v8, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->captureContext:Ltv/alphonso/alphonsoclient/AudioCaptureCxt;

    invoke-virtual {v8}, Ltv/alphonso/alphonsoclient/AudioCaptureCxt;->getCaptureId()I

    move-result v8

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 506
    const-string v7, "timestamp"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    invoke-virtual {v0, v7, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 510
    if-eqz p2, :cond_7

    .line 511
    sget-object v7, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->captureContext:Ltv/alphonso/alphonsoclient/AudioCaptureCxt;

    if-eqz v7, :cond_5

    .line 512
    sget-object v7, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->captureContext:Ltv/alphonso/alphonsoclient/AudioCaptureCxt;

    const/4 v8, 0x1

    iput-boolean v8, v7, Ltv/alphonso/alphonsoclient/AudioCaptureCxt;->resultIssued:Z

    .line 520
    :cond_5
    :goto_0
    iget-object v7, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 521
    iget-object v7, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x5

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeMessages(I)V

    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_6
    move-object v2, v3

    .line 550
    .end local v3    # "jObj":Lorg/json/JSONObject;
    .end local v4    # "json":Ljava/lang/String;
    .end local v6    # "title":Ljava/lang/String;
    :goto_1
    return-void

    .line 517
    .restart local v0    # "bundle":Landroid/os/Bundle;
    .restart local v3    # "jObj":Lorg/json/JSONObject;
    .restart local v4    # "json":Ljava/lang/String;
    .restart local v6    # "title":Ljava/lang/String;
    :cond_7
    const/4 v7, 0x0

    invoke-direct {p0, v7}, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->processAudioCaptureEnd(Landroid/os/Bundle;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 526
    .end local v0    # "bundle":Landroid/os/Bundle;
    :catch_0
    move-exception v1

    move-object v2, v3

    .line 527
    .end local v3    # "jObj":Lorg/json/JSONObject;
    .local v1, "e":Lorg/json/JSONException;
    .restart local v2    # "jObj":Lorg/json/JSONObject;
    :goto_2
    sget-object v7, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "JSONException: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 532
    .end local v1    # "e":Lorg/json/JSONException;
    .end local v2    # "jObj":Lorg/json/JSONObject;
    .end local v4    # "json":Ljava/lang/String;
    .end local v6    # "title":Ljava/lang/String;
    :cond_8
    const/16 v7, 0xca

    if-ne v7, v5, :cond_a

    .line 537
    sget-boolean v7, Ltv/alphonso/alphonsoclient/AlphonsoClient;->debug:Z

    if-eqz v7, :cond_9

    .line 538
    sget-object v7, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->TAG:Ljava/lang/String;

    const-string v8, "REST API Call to server has 202 Accepted response"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    :cond_9
    sget-object v7, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->captureContext:Ltv/alphonso/alphonsoclient/AudioCaptureCxt;

    iget v8, v7, Ltv/alphonso/alphonsoclient/AudioCaptureCxt;->numPktsSent:I

    add-int/lit8 v8, v8, 0x1

    iput v8, v7, Ltv/alphonso/alphonsoclient/AudioCaptureCxt;->numPktsSent:I

    .line 541
    sget-object v7, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->captureContext:Ltv/alphonso/alphonsoclient/AudioCaptureCxt;

    iget v8, v7, Ltv/alphonso/alphonsoclient/AudioCaptureCxt;->numPktsRcvd:I

    add-int/lit8 v8, v8, 0x1

    iput v8, v7, Ltv/alphonso/alphonsoclient/AudioCaptureCxt;->numPktsRcvd:I

    goto :goto_1

    .line 545
    :cond_a
    sget-object v7, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "REST API Call to server failed. HTTP code: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 526
    .restart local v2    # "jObj":Lorg/json/JSONObject;
    .restart local v4    # "json":Ljava/lang/String;
    .restart local v6    # "title":Ljava/lang/String;
    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method private processAudioCaptureStart(Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 2
    .param p1, "extras"    # Landroid/os/Bundle;
    .param p2, "resultReceiver"    # Landroid/os/ResultReceiver;

    .prologue
    .line 300
    new-instance v0, Ltv/alphonso/alphonsoclient/AudioCaptureCxt;

    invoke-direct {v0}, Ltv/alphonso/alphonsoclient/AudioCaptureCxt;-><init>()V

    sput-object v0, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->captureContext:Ltv/alphonso/alphonsoclient/AudioCaptureCxt;

    .line 302
    sget-object v0, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->captureContext:Ltv/alphonso/alphonsoclient/AudioCaptureCxt;

    const-string v1, "token"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltv/alphonso/alphonsoclient/AudioCaptureCxt;->setToken(Ljava/lang/String;)V

    .line 303
    sget-object v0, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->captureContext:Ltv/alphonso/alphonsoclient/AudioCaptureCxt;

    const-string v1, "ACR_SERVER"

    invoke-virtual {v0, v1}, Ltv/alphonso/alphonsoclient/AudioCaptureCxt;->setAcrType(Ljava/lang/String;)V

    .line 304
    sget-object v0, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->captureContext:Ltv/alphonso/alphonsoclient/AudioCaptureCxt;

    const-string v1, "capture_id"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ltv/alphonso/alphonsoclient/AudioCaptureCxt;->setCaptureId(I)V

    .line 306
    invoke-direct {p0, p1, p2}, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->processAudioCaptureUpdate(Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    .line 307
    return-void
.end method

.method private processAudioCaptureUpdate(Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 9
    .param p1, "args"    # Landroid/os/Bundle;
    .param p2, "resultReceiver"    # Landroid/os/ResultReceiver;

    .prologue
    const/4 v8, 0x1

    .line 312
    iget-object v5, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->mContext:Landroid/content/Context;

    invoke-static {v5}, Ltv/alphonso/utils/Utils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 313
    sget-object v5, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->TAG:Ljava/lang/String;

    const-string v6, "Network unavailable."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    :cond_0
    :goto_0
    return-void

    .line 317
    :cond_1
    sget-object v5, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->captureContext:Ltv/alphonso/alphonsoclient/AudioCaptureCxt;

    if-nez v5, :cond_2

    .line 319
    sget-object v5, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->TAG:Ljava/lang/String;

    const-string v6, "AUDIO_CAPTURE_UPDATE request with null captureContext. Dropping request."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 323
    :cond_2
    sget-object v5, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->captureContext:Ltv/alphonso/alphonsoclient/AudioCaptureCxt;

    iget-boolean v5, v5, Ltv/alphonso/alphonsoclient/AudioCaptureCxt;->resultIssued:Z

    if-eqz v5, :cond_3

    .line 324
    sget-boolean v5, Ltv/alphonso/alphonsoclient/AlphonsoClient;->debug:Z

    if-eqz v5, :cond_0

    .line 325
    sget-object v5, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->TAG:Ljava/lang/String;

    const-string v6, "Result is already issued. Drop the AUDIO_CAPTURE_UPDATE packet!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 329
    :cond_3
    invoke-direct {p0}, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->getAlphonsoServerUrl()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 330
    sget-object v5, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->TAG:Ljava/lang/String;

    const-string v6, "Alphonso server domain/port not set. Dropping request!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 336
    :cond_4
    invoke-direct {p0}, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->getAlphonsoUid()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_5

    .line 337
    sget-object v5, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->TAG:Ljava/lang/String;

    const-string v6, "Alphonso UID is not yet known. Dropping Audio Capture message!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 341
    :cond_5
    sget-boolean v5, Ltv/alphonso/alphonsoclient/AlphonsoClient;->debug:Z

    if-eqz v5, :cond_6

    .line 342
    sget-object v5, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->TAG:Ljava/lang/String;

    const-string v6, "Processing AudioCaptureUpdate."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    :cond_6
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 346
    .local v1, "params":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :try_start_0
    iget-object v5, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->mAudioStream:Ljava/io/ByteArrayOutputStream;

    const-string v6, "samples"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 354
    :goto_1
    iget-object v5, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 356
    sget-boolean v5, Ltv/alphonso/alphonsoclient/AlphonsoClient;->debug:Z

    if-eqz v5, :cond_0

    .line 357
    sget-object v5, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->TAG:Ljava/lang/String;

    const-string v6, "Going back to dequue."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 348
    :catch_0
    move-exception v0

    .line 350
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 351
    sget-object v5, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IOException "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 362
    .end local v0    # "e":Ljava/io/IOException;
    :cond_7
    sget-object v5, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->captureContext:Ltv/alphonso/alphonsoclient/AudioCaptureCxt;

    iget v5, v5, Ltv/alphonso/alphonsoclient/AudioCaptureCxt;->numPktsSent:I

    if-nez v5, :cond_b

    .line 363
    const-string v5, "type"

    const-string v6, "start"

    invoke-virtual {v1, v5, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    :goto_2
    const-string v5, "device_id"

    const-string v6, "device_id"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    const-string v5, "token"

    sget-object v6, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->captureContext:Ltv/alphonso/alphonsoclient/AudioCaptureCxt;

    invoke-virtual {v6}, Ltv/alphonso/alphonsoclient/AudioCaptureCxt;->getToken()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    const-string v5, "sequence"

    sget-object v6, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->captureContext:Ltv/alphonso/alphonsoclient/AudioCaptureCxt;

    iget v6, v6, Ltv/alphonso/alphonsoclient/AudioCaptureCxt;->numPktsSent:I

    add-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    sget-boolean v5, Ltv/alphonso/alphonsoclient/AlphonsoClient;->debug:Z

    if-eqz v5, :cond_8

    .line 372
    sget-object v5, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Aggregated audio pkt size: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->mAudioStream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    :cond_8
    iget-object v5, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->mAudioStream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 374
    .local v2, "rawAudio":[B
    array-length v5, v2

    if-eqz v5, :cond_9

    .line 376
    const-string v5, "payload"

    const/4 v6, 0x0

    invoke-static {v2, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    const-string v5, "length"

    array-length v6, v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    :cond_9
    iget-object v5, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->mAudioStream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 382
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 383
    .local v4, "uri":Ljava/lang/StringBuffer;
    invoke-direct {p0}, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->getAlphonsoServerUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 384
    const-string v5, "/audio/buffer"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 385
    invoke-direct {p0, v8}, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->getAlphonsoUidSuffix(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 387
    iget-object v5, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->mApiKey:Ljava/lang/String;

    if-eqz v5, :cond_a

    .line 388
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "&api_key="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->mApiKey:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 391
    :cond_a
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 394
    .local v3, "resultData":Landroid/os/Bundle;
    invoke-direct {p0, v4, v1, v3}, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->invokeRESTApi(Ljava/lang/StringBuffer;Ljava/util/LinkedHashMap;Landroid/os/Bundle;)V

    .line 397
    invoke-direct {p0, v3, v8}, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->processAudioCaptureResponse(Landroid/os/Bundle;Z)V

    goto/16 :goto_0

    .line 365
    .end local v2    # "rawAudio":[B
    .end local v3    # "resultData":Landroid/os/Bundle;
    .end local v4    # "uri":Ljava/lang/StringBuffer;
    :cond_b
    const-string v5, "type"

    const-string v6, "middle"

    invoke-virtual {v1, v5, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2
.end method

.method private processAudioFPCaptureEnd(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    .line 653
    iget-object v3, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->mAudioStream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v3

    if-eqz v3, :cond_1

    .line 655
    sget-boolean v3, Ltv/alphonso/alphonsoclient/AlphonsoClient;->debug:Z

    if-eqz v3, :cond_0

    .line 656
    sget-object v3, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->TAG:Ljava/lang/String;

    const-string v4, "Aggregated audio-buffers available. Trigger AUDIO_FP_CAPTURE_UPDATE."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    :cond_0
    const/4 v3, 0x0

    invoke-direct {p0, p1, v3, v5}, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->processAudioFPCaptureUpdate(Landroid/os/Bundle;Landroid/os/ResultReceiver;Z)V

    .line 661
    :cond_1
    sget-boolean v3, Ltv/alphonso/alphonsoclient/AlphonsoClient;->debug:Z

    if-eqz v3, :cond_2

    .line 662
    sget-object v3, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->TAG:Ljava/lang/String;

    const-string v4, "AlphonsoClient: Rcvd AUDIO_FP_CAPTURE_END request."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    :cond_2
    iget-object v3, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Ltv/alphonso/utils/Utils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 665
    sget-object v3, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->TAG:Ljava/lang/String;

    const-string v4, "Network unavailable."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    :goto_0
    return-void

    .line 669
    :cond_3
    sget-object v3, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->captureContext:Ltv/alphonso/alphonsoclient/AudioCaptureCxt;

    if-nez v3, :cond_4

    .line 671
    sget-object v3, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->TAG:Ljava/lang/String;

    const-string v4, "AUDIO_FP_CAPTURE_END request with null captureContext. Dropping request."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 675
    :cond_4
    invoke-direct {p0}, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->getAlphonsoServerUrl()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 676
    sget-object v3, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->TAG:Ljava/lang/String;

    const-string v4, "Alphonso server domain/port not set. Dropping request!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 680
    :cond_5
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 682
    .local v0, "params":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "result"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 683
    const-string v3, "type"

    const-string v4, "ack"

    invoke-virtual {v0, v3, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 689
    :goto_1
    const-string v3, "device_id"

    const-string v4, "device_id"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 690
    const-string v3, "token"

    sget-object v4, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->captureContext:Ltv/alphonso/alphonsoclient/AudioCaptureCxt;

    invoke-virtual {v4}, Ltv/alphonso/alphonsoclient/AudioCaptureCxt;->getToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 693
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 694
    .local v2, "uri":Ljava/lang/StringBuffer;
    invoke-direct {p0}, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->getAlphonsoServerUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 695
    const-string v3, "/audio/fingerprint"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 696
    invoke-direct {p0, v5}, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->getAlphonsoUidSuffix(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 698
    iget-object v3, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->mApiKey:Ljava/lang/String;

    if-eqz v3, :cond_6

    .line 699
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "&api_key="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->mApiKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 702
    :cond_6
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 705
    .local v1, "resultData":Landroid/os/Bundle;
    invoke-direct {p0, v2, v0, v1}, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->invokeRESTApi(Ljava/lang/StringBuffer;Ljava/util/LinkedHashMap;Landroid/os/Bundle;)V

    .line 707
    invoke-direct {p0}, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->cleanupCaptureContext()V

    goto/16 :goto_0

    .line 686
    .end local v1    # "resultData":Landroid/os/Bundle;
    .end local v2    # "uri":Ljava/lang/StringBuffer;
    :cond_7
    const-string v3, "type"

    const-string v4, "abort"

    invoke-virtual {v0, v3, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method private processAudioFPCaptureStart(Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 2
    .param p1, "extras"    # Landroid/os/Bundle;
    .param p2, "resultReceiver"    # Landroid/os/ResultReceiver;

    .prologue
    .line 556
    new-instance v0, Ltv/alphonso/alphonsoclient/AudioCaptureCxt;

    invoke-direct {v0}, Ltv/alphonso/alphonsoclient/AudioCaptureCxt;-><init>()V

    sput-object v0, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->captureContext:Ltv/alphonso/alphonsoclient/AudioCaptureCxt;

    .line 558
    sget-object v0, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->captureContext:Ltv/alphonso/alphonsoclient/AudioCaptureCxt;

    const-string v1, "token"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltv/alphonso/alphonsoclient/AudioCaptureCxt;->setToken(Ljava/lang/String;)V

    .line 559
    sget-object v0, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->captureContext:Ltv/alphonso/alphonsoclient/AudioCaptureCxt;

    const-string v1, "ACR_SPLIT"

    invoke-virtual {v0, v1}, Ltv/alphonso/alphonsoclient/AudioCaptureCxt;->setAcrType(Ljava/lang/String;)V

    .line 560
    sget-object v0, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->captureContext:Ltv/alphonso/alphonsoclient/AudioCaptureCxt;

    const-string v1, "capture_id"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ltv/alphonso/alphonsoclient/AudioCaptureCxt;->setCaptureId(I)V

    .line 562
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->processAudioFPCaptureUpdate(Landroid/os/Bundle;Landroid/os/ResultReceiver;Z)V

    .line 563
    return-void
.end method

.method private processAudioFPCaptureUpdate(Landroid/os/Bundle;Landroid/os/ResultReceiver;Z)V
    .locals 9
    .param p1, "args"    # Landroid/os/Bundle;
    .param p2, "resultReceiver"    # Landroid/os/ResultReceiver;
    .param p3, "endTriggered"    # Z

    .prologue
    const/4 v8, 0x1

    .line 568
    iget-object v5, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->mContext:Landroid/content/Context;

    invoke-static {v5}, Ltv/alphonso/utils/Utils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 569
    sget-object v5, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->TAG:Ljava/lang/String;

    const-string v6, "Network unavailable."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    :cond_0
    :goto_0
    return-void

    .line 573
    :cond_1
    sget-object v5, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->captureContext:Ltv/alphonso/alphonsoclient/AudioCaptureCxt;

    if-nez v5, :cond_2

    .line 575
    sget-object v5, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->TAG:Ljava/lang/String;

    const-string v6, "AUDIO_FP_CAPTURE_UPDATE request with null captureContext. Dropping request."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 579
    :cond_2
    sget-object v5, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->captureContext:Ltv/alphonso/alphonsoclient/AudioCaptureCxt;

    iget-boolean v5, v5, Ltv/alphonso/alphonsoclient/AudioCaptureCxt;->resultIssued:Z

    if-eqz v5, :cond_3

    .line 580
    sget-boolean v5, Ltv/alphonso/alphonsoclient/AlphonsoClient;->debug:Z

    if-eqz v5, :cond_0

    .line 581
    sget-object v5, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->TAG:Ljava/lang/String;

    const-string v6, "Result is already issued. Drop the FP packet!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 585
    :cond_3
    invoke-direct {p0}, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->getAlphonsoServerUrl()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 586
    sget-object v5, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->TAG:Ljava/lang/String;

    const-string v6, "Alphonso server domain/port not set. Dropping request!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 590
    :cond_4
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 592
    .local v2, "params":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez p3, :cond_5

    .line 595
    :try_start_0
    iget-object v5, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->mAudioStream:Ljava/io/ByteArrayOutputStream;

    const-string v6, "fingerprint"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 603
    :goto_1
    iget-object v5, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 605
    sget-boolean v5, Ltv/alphonso/alphonsoclient/AlphonsoClient;->debug:Z

    if-eqz v5, :cond_0

    .line 606
    sget-object v5, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->TAG:Ljava/lang/String;

    const-string v6, "Going back to dequue."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 597
    :catch_0
    move-exception v1

    .line 599
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 600
    sget-object v5, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IOException "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 611
    .end local v1    # "e":Ljava/io/IOException;
    :cond_5
    sget-object v5, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->captureContext:Ltv/alphonso/alphonsoclient/AudioCaptureCxt;

    iget v5, v5, Ltv/alphonso/alphonsoclient/AudioCaptureCxt;->numPktsSent:I

    if-nez v5, :cond_9

    .line 612
    const-string v5, "type"

    const-string v6, "start"

    invoke-virtual {v2, v5, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 616
    :goto_2
    const-string v5, "device_id"

    const-string v6, "device_id"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 617
    const-string v5, "token"

    sget-object v6, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->captureContext:Ltv/alphonso/alphonsoclient/AudioCaptureCxt;

    invoke-virtual {v6}, Ltv/alphonso/alphonsoclient/AudioCaptureCxt;->getToken()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 618
    const-string v5, "sequence"

    sget-object v6, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->captureContext:Ltv/alphonso/alphonsoclient/AudioCaptureCxt;

    iget v6, v6, Ltv/alphonso/alphonsoclient/AudioCaptureCxt;->numPktsSent:I

    add-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 620
    sget-boolean v5, Ltv/alphonso/alphonsoclient/AlphonsoClient;->debug:Z

    if-eqz v5, :cond_6

    .line 621
    sget-object v5, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Aggregated FP size: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->mAudioStream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    :cond_6
    iget-object v5, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->mAudioStream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 623
    .local v0, "audioFingerprint":[B
    array-length v5, v0

    if-eqz v5, :cond_7

    .line 625
    const-string v5, "payload"

    const/4 v6, 0x0

    invoke-static {v0, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 626
    const-string v5, "length"

    array-length v6, v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 628
    :cond_7
    iget-object v5, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->mAudioStream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 631
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 632
    .local v4, "uri":Ljava/lang/StringBuffer;
    invoke-direct {p0}, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->getAlphonsoServerUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 633
    const-string v5, "/audio/fingerprint"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 634
    invoke-direct {p0, v8}, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->getAlphonsoUidSuffix(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 636
    iget-object v5, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->mApiKey:Ljava/lang/String;

    if-eqz v5, :cond_8

    .line 637
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "&api_key="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->mApiKey:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 640
    :cond_8
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 643
    .local v3, "resultData":Landroid/os/Bundle;
    invoke-direct {p0, v4, v2, v3}, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->invokeRESTApi(Ljava/lang/StringBuffer;Ljava/util/LinkedHashMap;Landroid/os/Bundle;)V

    .line 646
    invoke-direct {p0, v3, v8}, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->processAudioCaptureResponse(Landroid/os/Bundle;Z)V

    goto/16 :goto_0

    .line 614
    .end local v0    # "audioFingerprint":[B
    .end local v3    # "resultData":Landroid/os/Bundle;
    .end local v4    # "uri":Ljava/lang/StringBuffer;
    :cond_9
    const-string v5, "type"

    const-string v6, "middle"

    invoke-virtual {v2, v5, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2
.end method

.method private processDestroyMessage()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 281
    sget-boolean v0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->debug:Z

    if-eqz v0, :cond_0

    .line 282
    sget-object v0, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->TAG:Ljava/lang/String;

    const-string v1, "Rcvd Destroy message."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    :cond_0
    sget-object v0, Ltv/alphonso/service/AlphonsoService;->singletonObject:Ltv/alphonso/service/AlphonsoService;

    if-eqz v0, :cond_2

    .line 286
    sget-boolean v0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->debug:Z

    if-eqz v0, :cond_1

    .line 287
    sget-object v0, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->TAG:Ljava/lang/String;

    const-string v1, "Sending AUDIO_FP_UPLOAD_SERVICE_CLEANUP_DONE message to AlphonsoService."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    :cond_1
    sget-object v0, Ltv/alphonso/service/AlphonsoService;->singletonObject:Ltv/alphonso/service/AlphonsoService;

    iget-object v0, v0, Ltv/alphonso/service/AlphonsoService;->mHandler:Ltv/alphonso/service/AlphonsoService$MsgHandler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ltv/alphonso/service/AlphonsoService$MsgHandler;->sendEmptyMessage(I)Z

    .line 292
    :cond_2
    iput-object v2, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->mHandler:Landroid/os/Handler;

    .line 293
    iput-object v2, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->mContext:Landroid/content/Context;

    .line 294
    iget-object v0, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 295
    return-void
.end method

.method private processGetStatsRequest(Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 4
    .param p1, "extras"    # Landroid/os/Bundle;
    .param p2, "resultReceiver"    # Landroid/os/ResultReceiver;

    .prologue
    .line 733
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 735
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "interPktStartSendTimeAvg"

    sget-wide v2, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->interPktStartSendTimeAvg:J

    invoke-static {v2, v3}, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->getDurationAsString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 736
    const-string v1, "interPktStartSendTimeMin"

    sget-wide v2, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->interPktStartSendTimeMin:J

    invoke-static {v2, v3}, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->getDurationAsString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 737
    const-string v1, "interPktStartSendTimeMax"

    sget-wide v2, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->interPktStartSendTimeMax:J

    invoke-static {v2, v3}, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->getDurationAsString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 738
    const-string v1, "rttForPacketsAvg"

    sget-wide v2, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->rttForPacketsAvg:J

    invoke-static {v2, v3}, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->getDurationAsString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    const-string v1, "rttForPacketsIterationsMin"

    sget-wide v2, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->rttForPacketsMin:J

    invoke-static {v2, v3}, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->getDurationAsString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 740
    const-string v1, "rttForPacketsIterationsMax"

    sget-wide v2, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->rttForPacketsMax:J

    invoke-static {v2, v3}, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->getDurationAsString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    const/4 v1, 0x0

    invoke-virtual {p2, v1, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 744
    return-void
.end method

.method private processSetupMessage(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 272
    const-string v0, "server_domain"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->setAlphonsoServerDomain(Ljava/lang/String;)V

    .line 273
    const-string v0, "server_port"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->setAlphonsoServerPort(Ljava/lang/String;)V

    .line 274
    const-string v0, "alp_uid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->setAlphonsoUid(Ljava/lang/String;)V

    .line 275
    const-string v0, "api_key"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->setApiKey(Ljava/lang/String;)V

    .line 276
    return-void
.end method

.method private setAlphonsoServerDomain(Ljava/lang/String;)V
    .locals 3
    .param p1, "domain"    # Ljava/lang/String;

    .prologue
    .line 121
    if-eqz p1, :cond_1

    .line 122
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->mAlphonsoServerDomain:Ljava/lang/String;

    .line 123
    sget-boolean v0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->debug:Z

    if-eqz v0, :cond_0

    .line 124
    sget-object v0, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Alphonso Server Domain set as: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->mAlphonsoServerDomain:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->mAlphonsoServerDomain:Ljava/lang/String;

    goto :goto_0
.end method

.method private setAlphonsoServerPort(Ljava/lang/String;)V
    .locals 3
    .param p1, "port"    # Ljava/lang/String;

    .prologue
    .line 138
    if-eqz p1, :cond_1

    .line 139
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->mAlphonsoServerPort:Ljava/lang/String;

    .line 140
    sget-boolean v0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->debug:Z

    if-eqz v0, :cond_0

    .line 141
    sget-object v0, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Alphonso Server Port set as: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->mAlphonsoServerPort:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 144
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->mAlphonsoServerPort:Ljava/lang/String;

    goto :goto_0
.end method

.method private setAlphonsoUid(Ljava/lang/String;)V
    .locals 1
    .param p1, "alphonso_uid"    # Ljava/lang/String;

    .prologue
    .line 150
    if-eqz p1, :cond_0

    .line 151
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->mAlphonsoUid:Ljava/lang/String;

    .line 156
    :goto_0
    return-void

    .line 154
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->mAlphonsoUid:Ljava/lang/String;

    goto :goto_0
.end method

.method private setApiKey(Ljava/lang/String;)V
    .locals 1
    .param p1, "apiKey"    # Ljava/lang/String;

    .prologue
    .line 195
    if-eqz p1, :cond_0

    .line 196
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->mApiKey:Ljava/lang/String;

    .line 201
    :goto_0
    return-void

    .line 199
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->mApiKey:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public getAlphonsoServerDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->mAlphonsoServerDomain:Ljava/lang/String;

    return-object v0
.end method

.method public getAlphonsoServerPort()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->mAlphonsoServerPort:Ljava/lang/String;

    return-object v0
.end method

.method public resetCookie()V
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x0

    iput-object v0, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->mCookie:Lorg/apache/http/client/CookieStore;

    .line 112
    return-void
.end method

.method public resetStats()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 764
    sput-wide v0, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->interPktStartSendTimeAvg:J

    .line 765
    sput-wide v0, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->interPktStartSendTimeMin:J

    .line 766
    sput-wide v0, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->interPktStartSendTimeMax:J

    .line 768
    sput-wide v0, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->rttForPacketsAvg:J

    .line 769
    sput-wide v0, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->rttForPacketsMin:J

    .line 770
    sput-wide v0, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->rttForPacketsMax:J

    .line 771
    return-void
.end method

.method public setHttpClient(Lorg/apache/http/impl/client/DefaultHttpClient;)V
    .locals 0
    .param p1, "client"    # Lorg/apache/http/impl/client/DefaultHttpClient;

    .prologue
    .line 105
    iput-object p1, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 106
    return-void
.end method
