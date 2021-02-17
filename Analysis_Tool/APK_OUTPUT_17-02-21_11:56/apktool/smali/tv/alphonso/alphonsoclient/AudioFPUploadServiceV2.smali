.class public Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;
.super Ljava/lang/Object;
.source "AudioFPUploadServiceV2.java"


# static fields
.field public static final ALPHONSO_IDENTIFICATION_PROTOCOL_API_VERSION:Ljava/lang/String; = "v5"

.field public static final AUDIO_CAPTURE_END:I = 0x3

.field public static final AUDIO_CAPTURE_START:I = 0x1

.field public static final AUDIO_CAPTURE_UPDATE:I = 0x2

.field public static final AUDIO_FP_CAPTURE_END:I = 0x6

.field public static final AUDIO_FP_CAPTURE_START:I = 0x4

.field public static final AUDIO_FP_CAPTURE_UPDATE:I = 0x5

.field public static final AUDIO_FP_UPLOAD_SERVICE_DESTROY:I = 0xa

.field public static final AUDIO_FP_UPLOAD_SERVICE_SETUP:I = 0x9

.field public static final EXTRA_RESULT_RECEIVER:Ljava/lang/String; = "tv.alphonso.alphonsoclient.AudioFPUploadServiceV2.EXTRA_RESULT_RECEIVER"

.field public static final FAIL:I = 0x1

.field public static final GET_STATS:I = 0x7

.field public static final LOCATION_UPDATE:I = 0xb

.field public static final PROV_CLIENT_RECEIVER_UPDATE:I = 0xc

.field public static final RESET_STATS:I = 0x8

.field public static final STOP_CAPTURE:I = 0x10

.field public static final SUCCESS:I

.field private static final TAG:Ljava/lang/String;

.field public static audioCaptureContext:Ltv/alphonso/alphonsoclient/AudioCaptureCxt;

.field public static final audioFPUploadServiceEventStrings:[Ljava/lang/String;

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

.field private mAudioCaptureCxtTable:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ltv/alphonso/alphonsoclient/AudioCaptureCxt;",
            ">;"
        }
    .end annotation
.end field

.field private mAudioStream:Ljava/io/ByteArrayOutputStream;

.field public mCallback:Landroid/os/Handler$Callback;

.field private mContext:Landroid/content/Context;

.field private mCookie:Lorg/apache/http/client/CookieStore;

.field public mHandler:Landroid/os/Handler;

.field private mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

.field private mProvClientReceiver:Landroid/os/ResultReceiver;

.field private mThread:Landroid/os/HandlerThread;

.field private mUserLocationInfo:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 30
    const-class v0, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->TAG:Ljava/lang/String;

    .line 48
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "INVALID_EVENT"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "AUDIO_CAPTURE_START"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "AUDIO_CAPTURE_UPDATE"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "AUDIO_CAPTURE_END"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "AUDIO_FP_CAPTURE_START"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "AUDIO_FP_CAPTURE_UPDATE"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "AUDIO_FP_CAPTURE_END"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "GET_STATS"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "RESET_STATS"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "AUDIO_FP_UPLOAD_SERVICE_SETUP"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "AUDIO_FP_UPLOAD_SERVICE_DESTROY"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "LOCATION_UPDATE"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "PROV_CLIENT_RECEIVER_UPDATE"

    aput-object v2, v0, v1

    sput-object v0, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->audioFPUploadServiceEventStrings:[Ljava/lang/String;

    .line 91
    const/4 v0, 0x0

    sput-object v0, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->audioCaptureContext:Ltv/alphonso/alphonsoclient/AudioCaptureCxt;

    .line 93
    sput-wide v4, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->interPktStartSendTimeAvg:J

    .line 94
    sput-wide v4, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->interPktStartSendTimeMin:J

    .line 95
    sput-wide v4, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->interPktStartSendTimeMax:J

    .line 97
    sput-wide v4, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->rttForPacketsAvg:J

    .line 98
    sput-wide v4, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->rttForPacketsMin:J

    .line 99
    sput-wide v4, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->rttForPacketsMax:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ltv/alphonso/alphonsoclient/ViewingInfoService;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "viewingInfoService"    # Ltv/alphonso/alphonsoclient/ViewingInfoService;

    .prologue
    const/4 v1, 0x0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object v1, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->mThread:Landroid/os/HandlerThread;

    .line 73
    iput-object v1, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->mContext:Landroid/content/Context;

    .line 74
    iput-object v1, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->mHandler:Landroid/os/Handler;

    .line 75
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->mAudioStream:Ljava/io/ByteArrayOutputStream;

    .line 76
    iput-object v1, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->mAlphonsoServerDomain:Ljava/lang/String;

    .line 77
    iput-object v1, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->mAlphonsoServerPort:Ljava/lang/String;

    .line 78
    iput-object v1, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->mAlphonsoUid:Ljava/lang/String;

    .line 79
    iput-object v1, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 80
    iput-object v1, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->mApiKey:Ljava/lang/String;

    .line 81
    iput-object v1, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->mUserLocationInfo:Ljava/lang/String;

    .line 82
    iput-object v1, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->mProvClientReceiver:Landroid/os/ResultReceiver;

    .line 84
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->mAudioCaptureCxtTable:Ljava/util/LinkedHashMap;

    .line 86
    iput-object v1, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->mCookie:Lorg/apache/http/client/CookieStore;

    .line 227
    new-instance v0, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2$1;

    invoke-direct {v0, p0}, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2$1;-><init>(Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;)V

    iput-object v0, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->mCallback:Landroid/os/Handler$Callback;

    .line 103
    iput-object p1, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->mContext:Landroid/content/Context;

    .line 105
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "AudioFPUploadServiceV2"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->mThread:Landroid/os/HandlerThread;

    .line 107
    iget-object v0, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 109
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->mCallback:Landroid/os/Handler$Callback;

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->mHandler:Landroid/os/Handler;

    .line 110
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->processAudioCaptureStart(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$1000(Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->processLocationUpdateMessage(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$1100(Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->processProvClientReceiverUpdate(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$200(Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->processAudioCaptureUpdate(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$300(Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->processAudioCaptureEnd(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$400(Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->processAudioFPCaptureStart(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$500(Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->processAudioFPCaptureUpdate(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$600(Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->processAudioFPCaptureEnd(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$700(Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 0
    .param p0, "x0"    # Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;
    .param p1, "x1"    # Landroid/os/Bundle;
    .param p2, "x2"    # Landroid/os/ResultReceiver;

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->processGetStatsRequest(Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    return-void
.end method

.method static synthetic access$800(Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->processSetupMessage(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$900(Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;)V
    .locals 0
    .param p0, "x0"    # Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;

    .prologue
    .line 28
    invoke-direct {p0}, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->processDestroyMessage()V

    return-void
.end method

.method private cleanupCaptureContext(Ltv/alphonso/alphonsoclient/AudioCaptureCxt;)V
    .locals 4
    .param p1, "captureContext"    # Ltv/alphonso/alphonsoclient/AudioCaptureCxt;

    .prologue
    .line 917
    iget-object v0, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->mAudioCaptureCxtTable:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ltv/alphonso/alphonsoclient/AudioCaptureCxt;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 919
    sget-boolean v0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->debug:Z

    if-eqz v0, :cond_0

    .line 920
    sget-object v0, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AlphonsoClient: NumPktSent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Ltv/alphonso/alphonsoclient/AudioCaptureCxt;->numPktsSent:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    :cond_0
    const/4 p1, 0x0

    .line 924
    sget-boolean v0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->debug:Z

    if-eqz v0, :cond_1

    .line 925
    sget-object v0, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AlphonsoClient: Min interPktStartSendTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->interPktStartSendTimeMin:J

    invoke-static {v2, v3}, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->getDurationAsString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    sget-object v0, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AlphonsoClient: Max interPktStartSendTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->interPktStartSendTimeMax:J

    invoke-static {v2, v3}, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->getDurationAsString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    sget-object v0, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AlphonsoClient: Avg interPktStartSendTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->interPktStartSendTimeAvg:J

    invoke-static {v2, v3}, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->getDurationAsString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    sget-object v0, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AlphonsoClient: Min rtt: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->rttForPacketsMin:J

    invoke-static {v2, v3}, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->getDurationAsString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    sget-object v0, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AlphonsoClient: Max rtt: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->rttForPacketsMax:J

    invoke-static {v2, v3}, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->getDurationAsString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    sget-object v0, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AlphonsoClient: Avg rtt: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->rttForPacketsAvg:J

    invoke-static {v2, v3}, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->getDurationAsString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    :cond_1
    iget-object v0, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->mAudioStream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 934
    return-void
.end method

.method private getAlphonsoServerUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 189
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 190
    .local v0, "str":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->getAlphonsoServerDomain()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 191
    invoke-virtual {p0}, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->getAlphonsoServerPort()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 192
    invoke-virtual {p0}, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->getAlphonsoServerDomain()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 193
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 194
    invoke-virtual {p0}, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->getAlphonsoServerPort()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 195
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 196
    const-string v1, "v5"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 198
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getAlphonsoUid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->mAlphonsoUid:Ljava/lang/String;

    return-object v0
.end method

.method private getAlphonsoUidSuffix(Z)Ljava/lang/String;
    .locals 3
    .param p1, "withQuestionMark"    # Z

    .prologue
    .line 203
    invoke-direct {p0}, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->getAlphonsoUid()Ljava/lang/String;

    move-result-object v0

    .line 205
    .local v0, "alphonso_uid":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 206
    .local v1, "str":Ljava/lang/StringBuffer;
    if-eqz v0, :cond_0

    .line 207
    if-eqz p1, :cond_1

    .line 208
    const-string v2, "?alp_uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 211
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 213
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 210
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

    .line 955
    div-long v4, p0, v6

    long-to-int v1, v4

    .line 956
    .local v1, "seconds":I
    rem-long v4, p0, v6

    long-to-int v0, v4

    .line 958
    .local v0, "milliSeconds":I
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 959
    .local v2, "str":Ljava/lang/StringBuffer;
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 960
    const-string v3, "s "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 961
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 962
    const-string v3, "ms."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 964
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private getHttpClient()Lorg/apache/http/client/HttpClient;
    .locals 3

    .prologue
    .line 115
    iget-object v0, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    if-nez v0, :cond_1

    .line 117
    sget-boolean v0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->debug:Z

    if-eqz v0, :cond_0

    .line 118
    sget-object v0, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->TAG:Ljava/lang/String;

    const-string v1, "Allocating new HTTP Client."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :cond_0
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    invoke-virtual {p0, v0}, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->setHttpClient(Lorg/apache/http/impl/client/DefaultHttpClient;)V

    .line 120
    iget-object v0, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    const-string v1, "http.tcp.nodelay"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 123
    :cond_1
    iget-object v0, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    return-object v0
.end method

.method private invokeHttpUrlConnectionRestApi(Ljava/lang/StringBuffer;Ljava/util/LinkedHashMap;Landroid/os/Bundle;)V
    .locals 3
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
    .line 907
    .local p2, "params":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 908
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "tv.alphonso.alphonsoclient.HttpRestService.verb"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 909
    const-string v1, "tv.alphonso.alphonsoclient.HttpRestService.params"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 912
    invoke-static {}, Ltv/alphonso/alphonsoclient/HttpRestService;->getInstance()Ltv/alphonso/alphonsoclient/HttpRestService;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, p3}, Ltv/alphonso/alphonsoclient/HttpRestService;->handleRequest(Landroid/net/Uri;Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 913
    return-void
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
    .line 574
    .local p2, "params":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 575
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "com.AlphonsoClient.android.EXTRA_HTTP_VERB"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 576
    const-string v1, "com.AlphonsoClient.android.EXTRA_PARAMS"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 579
    invoke-static {}, Ltv/alphonso/alphonsoclient/RESTService;->getInstance()Ltv/alphonso/alphonsoclient/RESTService;

    move-result-object v1

    invoke-direct {p0}, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->getHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0, p3}, Ltv/alphonso/alphonsoclient/RESTService;->handleMessage(Lorg/apache/http/client/HttpClient;Landroid/net/Uri;Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 581
    invoke-direct {p0}, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->getHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v1

    check-cast v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getCookieStore()Lorg/apache/http/client/CookieStore;

    move-result-object v1

    iput-object v1, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->mCookie:Lorg/apache/http/client/CookieStore;

    .line 582
    return-void
.end method

.method private process202(Ltv/alphonso/alphonsoclient/AudioCaptureCxt;Landroid/os/Bundle;Z)V
    .locals 7
    .param p1, "captureContext"    # Ltv/alphonso/alphonsoclient/AudioCaptureCxt;
    .param p2, "result"    # Landroid/os/Bundle;
    .param p3, "fingerprintApi"    # Z

    .prologue
    .line 619
    sget-boolean v4, Ltv/alphonso/alphonsoclient/AlphonsoClient;->debug:Z

    if-eqz v4, :cond_0

    .line 620
    sget-object v4, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->TAG:Ljava/lang/String;

    const-string v5, "REST API Call to server has 202 Accepted response"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    :cond_0
    iget v4, p1, Ltv/alphonso/alphonsoclient/AudioCaptureCxt;->numPktsSent:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p1, Ltv/alphonso/alphonsoclient/AudioCaptureCxt;->numPktsSent:I

    .line 623
    iget v4, p1, Ltv/alphonso/alphonsoclient/AudioCaptureCxt;->numPktsRcvd:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p1, Ltv/alphonso/alphonsoclient/AudioCaptureCxt;->numPktsRcvd:I

    .line 625
    const-string v4, "com.AlphonsoClient.android.REST_RESULT"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 626
    .local v3, "json":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 627
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2

    .line 629
    :cond_1
    sget-object v4, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->TAG:Ljava/lang/String;

    const-string v5, "JSON response is empty."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    :goto_0
    return-void

    .line 636
    :cond_2
    const/4 v1, 0x0

    .line 638
    .local v1, "jObj":Lorg/json/JSONObject;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 640
    .end local v1    # "jObj":Lorg/json/JSONObject;
    .local v2, "jObj":Lorg/json/JSONObject;
    :try_start_1
    const-string v4, "send"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 642
    const-string v4, "send"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p1, v4, p3}, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->processSendObject(Ltv/alphonso/alphonsoclient/AudioCaptureCxt;Ljava/lang/String;Z)V

    .line 645
    :cond_3
    iget-boolean v4, p1, Ltv/alphonso/alphonsoclient/AudioCaptureCxt;->sendRemainder:Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v4, :cond_4

    :cond_4
    move-object v1, v2

    .line 651
    .end local v2    # "jObj":Lorg/json/JSONObject;
    .restart local v1    # "jObj":Lorg/json/JSONObject;
    goto :goto_0

    .line 648
    :catch_0
    move-exception v0

    .line 649
    .local v0, "e":Lorg/json/JSONException;
    :goto_1
    sget-object v4, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->TAG:Ljava/lang/String;

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

    .line 650
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 648
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

.method private processAudioCaptureEnd(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 489
    sget-boolean v5, Ltv/alphonso/alphonsoclient/AlphonsoClient;->debug:Z

    if-eqz v5, :cond_0

    .line 490
    sget-object v5, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->TAG:Ljava/lang/String;

    const-string v6, "AlphonsoClient: Rcvd AUDIO_CAPTURE_END request."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    :cond_0
    iget-object v5, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->mContext:Landroid/content/Context;

    invoke-static {v5}, Ltv/alphonso/utils/Utils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 493
    sget-object v5, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->TAG:Ljava/lang/String;

    const-string v6, "Network unavailable."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    :goto_0
    return-void

    .line 497
    :cond_1
    iget-object v5, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->mAudioCaptureCxtTable:Ljava/util/LinkedHashMap;

    const-string v6, "token"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/alphonso/alphonsoclient/AudioCaptureCxt;

    .line 498
    .local v0, "captureContext":Ltv/alphonso/alphonsoclient/AudioCaptureCxt;
    if-nez v0, :cond_2

    .line 500
    sget-object v5, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->TAG:Ljava/lang/String;

    const-string v6, "AUDIO_CAPTURE_END request with null captureContext. Dropping request."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 504
    :cond_2
    invoke-direct {p0}, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->getAlphonsoServerUrl()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 505
    sget-object v5, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->TAG:Ljava/lang/String;

    const-string v6, "Alphonso server domain/port not set. Dropping request!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 509
    :cond_3
    iget-object v5, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->mAudioStream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v5

    if-nez v5, :cond_4

    .line 511
    const-string v5, "timestamp"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v0, Ltv/alphonso/alphonsoclient/AudioCaptureCxt;->fpMessageStartTimestamp:J

    .line 512
    sget-boolean v5, Ltv/alphonso/alphonsoclient/AlphonsoClient;->debug:Z

    if-eqz v5, :cond_4

    .line 513
    sget-object v5, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "start-timestamp: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, v0, Ltv/alphonso/alphonsoclient/AudioCaptureCxt;->fpMessageStartTimestamp:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    :cond_4
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 518
    .local v1, "params":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v5, "type"

    const-string v6, "end"

    invoke-virtual {v1, v5, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    const-string v5, "end_status"

    const-string v6, "result"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 522
    const-string v5, "device_id"

    const-string v6, "device_id"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 523
    const-string v5, "token"

    invoke-virtual {v0}, Ltv/alphonso/alphonsoclient/AudioCaptureCxt;->getToken()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 526
    const-string v5, "ts_start"

    iget-wide v6, v0, Ltv/alphonso/alphonsoclient/AudioCaptureCxt;->fpMessageStartTimestamp:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    const-string v5, "ts_end"

    const-string v6, "timestamp"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 530
    const-string v5, "sequence"

    iget v6, v0, Ltv/alphonso/alphonsoclient/AudioCaptureCxt;->numPktsSent:I

    add-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 533
    const-string v5, "time_zone"

    invoke-static {}, Ltv/alphonso/utils/Utils;->getTimeZoneOffsetInMinutesFromUTC()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 536
    const-string v5, "dst_flag"

    invoke-static {}, Ltv/alphonso/utils/Utils;->isDSTOperational()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 538
    sget-boolean v5, Ltv/alphonso/alphonsoclient/AlphonsoClient;->debug:Z

    if-eqz v5, :cond_5

    .line 539
    sget-object v5, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Aggregated audio pkt size: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->mAudioStream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    :cond_5
    iget-object v5, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->mAudioStream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 541
    .local v2, "rawAudio":[B
    array-length v5, v2

    if-eqz v5, :cond_6

    .line 543
    const-string v5, "payload"

    const/4 v6, 0x0

    invoke-static {v2, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 544
    const-string v5, "length"

    array-length v6, v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 546
    :cond_6
    iget-object v5, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->mAudioStream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 549
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 550
    .local v4, "uri":Ljava/lang/StringBuffer;
    invoke-direct {p0}, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->getAlphonsoServerUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 551
    const-string v5, "/audio/buffer"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 552
    const/4 v5, 0x1

    invoke-direct {p0, v5}, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->getAlphonsoUidSuffix(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 554
    iget-object v5, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->mApiKey:Ljava/lang/String;

    if-eqz v5, :cond_7

    .line 555
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "&api_key="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->mApiKey:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 558
    :cond_7
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 560
    .local v3, "resultData":Landroid/os/Bundle;
    sput-object v0, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->audioCaptureContext:Ltv/alphonso/alphonsoclient/AudioCaptureCxt;

    .line 563
    invoke-direct {p0, v4, v1, v3}, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->invokeRESTApi(Ljava/lang/StringBuffer;Ljava/util/LinkedHashMap;Landroid/os/Bundle;)V

    .line 565
    const/4 v5, 0x0

    sput-object v5, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->audioCaptureContext:Ltv/alphonso/alphonsoclient/AudioCaptureCxt;

    .line 567
    invoke-direct {p0, v0}, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->cleanupCaptureContext(Ltv/alphonso/alphonsoclient/AudioCaptureCxt;)V

    goto/16 :goto_0
.end method

.method private processAudioCaptureResponse(Ltv/alphonso/alphonsoclient/AudioCaptureCxt;Landroid/os/Bundle;Z)V
    .locals 4
    .param p1, "captureContext"    # Ltv/alphonso/alphonsoclient/AudioCaptureCxt;
    .param p2, "result"    # Landroid/os/Bundle;
    .param p3, "fingerprintApi"    # Z

    .prologue
    .line 588
    const-string v1, "status_code"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 594
    .local v0, "statusCode":I
    const/16 v1, 0xca

    if-ne v1, v0, :cond_1

    .line 596
    invoke-direct {p0, p1, p2, p3}, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->process202(Ltv/alphonso/alphonsoclient/AudioCaptureCxt;Landroid/os/Bundle;Z)V

    .line 614
    :cond_0
    :goto_0
    return-void

    .line 598
    :cond_1
    const/16 v1, 0xc8

    if-ne v1, v0, :cond_2

    .line 600
    sget-boolean v1, Ltv/alphonso/alphonsoclient/AlphonsoClient;->debug:Z

    if-eqz v1, :cond_0

    .line 601
    sget-object v1, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->TAG:Ljava/lang/String;

    const-string v2, "Received 200 OK REST API response."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 605
    :cond_2
    const/16 v1, 0x1f7

    if-eq v1, v0, :cond_3

    const/16 v1, 0x3ea

    if-ne v1, v0, :cond_4

    :cond_3
    iget-object v1, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->mProvClientReceiver:Landroid/os/ResultReceiver;

    if-eqz v1, :cond_4

    .line 609
    iget-object v1, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->mProvClientReceiver:Landroid/os/ResultReceiver;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 612
    :cond_4
    sget-object v1, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "REST API Call to server failed. HTTP code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private processAudioCaptureStart(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 354
    new-instance v0, Ltv/alphonso/alphonsoclient/AudioCaptureCxt;

    invoke-direct {v0}, Ltv/alphonso/alphonsoclient/AudioCaptureCxt;-><init>()V

    .line 355
    .local v0, "captureContext":Ltv/alphonso/alphonsoclient/AudioCaptureCxt;
    const-string v1, "token"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltv/alphonso/alphonsoclient/AudioCaptureCxt;->setToken(Ljava/lang/String;)V

    .line 356
    const-string v1, "ACR_SERVER"

    invoke-virtual {v0, v1}, Ltv/alphonso/alphonsoclient/AudioCaptureCxt;->setAcrType(Ljava/lang/String;)V

    .line 357
    const-string v1, "capture_id"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ltv/alphonso/alphonsoclient/AudioCaptureCxt;->setCaptureId(I)V

    .line 358
    const-string v1, "capture_time"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Ltv/alphonso/alphonsoclient/AudioCaptureCxt;->captureTime:J

    .line 360
    iget-object v1, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->mAudioCaptureCxtTable:Ljava/util/LinkedHashMap;

    const-string v2, "token"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    invoke-direct {p0, p1}, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->processAudioCaptureUpdate(Landroid/os/Bundle;)V

    .line 363
    return-void
.end method

.method private processAudioCaptureUpdate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x1

    .line 368
    iget-object v6, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->mContext:Landroid/content/Context;

    invoke-static {v6}, Ltv/alphonso/utils/Utils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 369
    sget-object v6, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->TAG:Ljava/lang/String;

    const-string v7, "Network unavailable."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    :cond_0
    :goto_0
    return-void

    .line 373
    :cond_1
    iget-object v6, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->mAudioCaptureCxtTable:Ljava/util/LinkedHashMap;

    const-string v7, "token"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/alphonso/alphonsoclient/AudioCaptureCxt;

    .line 374
    .local v0, "captureContext":Ltv/alphonso/alphonsoclient/AudioCaptureCxt;
    if-nez v0, :cond_2

    .line 376
    sget-object v6, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->TAG:Ljava/lang/String;

    const-string v7, "AUDIO_CAPTURE_UPDATE request with null captureContext. Dropping request."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 380
    :cond_2
    invoke-direct {p0}, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->getAlphonsoServerUrl()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 381
    sget-object v6, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->TAG:Ljava/lang/String;

    const-string v7, "Alphonso server domain/port not set. Dropping request!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 387
    :cond_3
    invoke-direct {p0}, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->getAlphonsoUid()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_4

    .line 388
    sget-object v6, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->TAG:Ljava/lang/String;

    const-string v7, "Alphonso UID is not yet known. Dropping Audio Capture message!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 392
    :cond_4
    sget-boolean v6, Ltv/alphonso/alphonsoclient/AlphonsoClient;->debug:Z

    if-eqz v6, :cond_5

    .line 393
    sget-object v6, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->TAG:Ljava/lang/String;

    const-string v7, "Processing AudioCaptureUpdate."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    :cond_5
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 396
    .local v2, "params":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v6, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->mAudioStream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v6

    if-nez v6, :cond_6

    .line 398
    const-string v6, "timestamp"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v0, Ltv/alphonso/alphonsoclient/AudioCaptureCxt;->fpMessageStartTimestamp:J

    .line 399
    sget-boolean v6, Ltv/alphonso/alphonsoclient/AlphonsoClient;->debug:Z

    if-eqz v6, :cond_6

    .line 400
    sget-object v6, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "start-timestamp: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, v0, Ltv/alphonso/alphonsoclient/AudioCaptureCxt;->fpMessageStartTimestamp:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    :cond_6
    :try_start_0
    iget-object v6, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->mAudioStream:Ljava/io/ByteArrayOutputStream;

    const-string v7, "samples"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 411
    :goto_1
    iget v6, v0, Ltv/alphonso/alphonsoclient/AudioCaptureCxt;->numPktsSent:I

    if-lez v6, :cond_8

    iget-boolean v6, v0, Ltv/alphonso/alphonsoclient/AudioCaptureCxt;->sendRemainder:Z

    if-nez v6, :cond_7

    iget-object v6, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x5

    .line 413
    invoke-virtual {v6, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 415
    :cond_7
    sget-boolean v6, Ltv/alphonso/alphonsoclient/AlphonsoClient;->debug:Z

    if-eqz v6, :cond_0

    .line 416
    sget-object v6, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->TAG:Ljava/lang/String;

    const-string v7, "Going back to dequue."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 405
    :catch_0
    move-exception v1

    .line 407
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 408
    sget-object v6, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IOException "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 421
    .end local v1    # "e":Ljava/io/IOException;
    :cond_8
    iget v6, v0, Ltv/alphonso/alphonsoclient/AudioCaptureCxt;->numPktsSent:I

    if-nez v6, :cond_e

    .line 422
    const-string v6, "type"

    const-string v7, "start"

    invoke-virtual {v2, v6, v7}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    const-string v6, "record_failure"

    const-string v7, "record_failure"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    const-string v6, "capture_time"

    iget-wide v8, v0, Ltv/alphonso/alphonsoclient/AudioCaptureCxt;->captureTime:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    iget-object v6, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->mUserLocationInfo:Ljava/lang/String;

    if-eqz v6, :cond_d

    .line 427
    const-string v6, "user_location_info"

    iget-object v7, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->mUserLocationInfo:Ljava/lang/String;

    invoke-virtual {v2, v6, v7}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    :cond_9
    :goto_2
    const-string v6, "device_id"

    const-string v7, "device_id"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    const-string v6, "token"

    invoke-virtual {v0}, Ltv/alphonso/alphonsoclient/AudioCaptureCxt;->getToken()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    const-string v6, "sequence"

    iget v7, v0, Ltv/alphonso/alphonsoclient/AudioCaptureCxt;->numPktsSent:I

    add-int/lit8 v7, v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    const-string v6, "time_zone"

    invoke-static {}, Ltv/alphonso/utils/Utils;->getTimeZoneOffsetInMinutesFromUTC()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    const-string v6, "dst_flag"

    invoke-static {}, Ltv/alphonso/utils/Utils;->isDSTOperational()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    const-string v6, "ts_start"

    iget-wide v8, v0, Ltv/alphonso/alphonsoclient/AudioCaptureCxt;->fpMessageStartTimestamp:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    const-string v6, "ts_end"

    const-string v7, "timestamp"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    sget-boolean v6, Ltv/alphonso/alphonsoclient/AlphonsoClient;->debug:Z

    if-eqz v6, :cond_a

    .line 454
    sget-object v6, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Aggregated audio pkt size: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->mAudioStream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    :cond_a
    iget-object v6, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->mAudioStream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 456
    .local v3, "rawAudio":[B
    array-length v6, v3

    if-eqz v6, :cond_b

    .line 458
    const-string v6, "payload"

    const/4 v7, 0x0

    invoke-static {v3, v7}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    const-string v6, "length"

    array-length v7, v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    :cond_b
    iget-object v6, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->mAudioStream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 464
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 465
    .local v5, "uri":Ljava/lang/StringBuffer;
    invoke-direct {p0}, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->getAlphonsoServerUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 466
    const-string v6, "/audio/buffer"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 467
    invoke-direct {p0, v10}, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->getAlphonsoUidSuffix(Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 469
    iget-object v6, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->mApiKey:Ljava/lang/String;

    if-eqz v6, :cond_c

    .line 470
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "&api_key="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->mApiKey:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 473
    :cond_c
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 475
    .local v4, "resultData":Landroid/os/Bundle;
    sput-object v0, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->audioCaptureContext:Ltv/alphonso/alphonsoclient/AudioCaptureCxt;

    .line 478
    invoke-direct {p0, v5, v2, v4}, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->invokeRESTApi(Ljava/lang/StringBuffer;Ljava/util/LinkedHashMap;Landroid/os/Bundle;)V

    .line 480
    const/4 v6, 0x0

    sput-object v6, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->audioCaptureContext:Ltv/alphonso/alphonsoclient/AudioCaptureCxt;

    .line 483
    invoke-direct {p0, v0, v4, v10}, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->processAudioCaptureResponse(Ltv/alphonso/alphonsoclient/AudioCaptureCxt;Landroid/os/Bundle;Z)V

    goto/16 :goto_0

    .line 430
    .end local v3    # "rawAudio":[B
    .end local v4    # "resultData":Landroid/os/Bundle;
    .end local v5    # "uri":Ljava/lang/StringBuffer;
    :cond_d
    sget-boolean v6, Ltv/alphonso/alphonsoclient/AlphonsoClient;->debug:Z

    if-eqz v6, :cond_9

    .line 431
    sget-object v6, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->TAG:Ljava/lang/String;

    const-string v7, "No location available."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 435
    :cond_e
    const-string v6, "type"

    const-string v7, "middle"

    invoke-virtual {v2, v6, v7}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2
.end method

.method private processAudioFPCaptureEnd(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 812
    sget-boolean v5, Ltv/alphonso/alphonsoclient/AlphonsoClient;->debug:Z

    if-eqz v5, :cond_0

    .line 813
    sget-object v5, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->TAG:Ljava/lang/String;

    const-string v6, "AlphonsoClient: Rcvd AUDIO_FP_CAPTURE_END request."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    :cond_0
    iget-object v5, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->mContext:Landroid/content/Context;

    invoke-static {v5}, Ltv/alphonso/utils/Utils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 816
    sget-object v5, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->TAG:Ljava/lang/String;

    const-string v6, "Network unavailable."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    :goto_0
    return-void

    .line 820
    :cond_1
    iget-object v5, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->mAudioCaptureCxtTable:Ljava/util/LinkedHashMap;

    const-string v6, "token"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltv/alphonso/alphonsoclient/AudioCaptureCxt;

    .line 821
    .local v1, "captureContext":Ltv/alphonso/alphonsoclient/AudioCaptureCxt;
    if-nez v1, :cond_2

    .line 823
    sget-object v5, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->TAG:Ljava/lang/String;

    const-string v6, "AUDIO_FP_CAPTURE_END request with null captureContext. Dropping request."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 827
    :cond_2
    invoke-direct {p0}, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->getAlphonsoServerUrl()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 828
    sget-object v5, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->TAG:Ljava/lang/String;

    const-string v6, "Alphonso server domain/port not set. Dropping request!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 832
    :cond_3
    iget-object v5, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->mAudioStream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v5

    if-nez v5, :cond_4

    .line 834
    const-string v5, "timestamp"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v1, Ltv/alphonso/alphonsoclient/AudioCaptureCxt;->fpMessageStartTimestamp:J

    .line 835
    sget-boolean v5, Ltv/alphonso/alphonsoclient/AlphonsoClient;->debug:Z

    if-eqz v5, :cond_4

    .line 836
    sget-object v5, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "start-timestamp: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, v1, Ltv/alphonso/alphonsoclient/AudioCaptureCxt;->fpMessageStartTimestamp:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    :cond_4
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 841
    .local v2, "params":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v5, "type"

    const-string v6, "end"

    invoke-virtual {v2, v5, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 843
    const-string v5, "end_status"

    const-string v6, "result"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 845
    const-string v5, "device_id"

    const-string v6, "device_id"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 848
    const-string v5, "ts_start"

    iget-wide v6, v1, Ltv/alphonso/alphonsoclient/AudioCaptureCxt;->fpMessageStartTimestamp:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 851
    const-string v5, "ts_end"

    const-string v6, "timestamp"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 853
    sget-boolean v5, Ltv/alphonso/alphonsoclient/AlphonsoClient;->debug:Z

    if-eqz v5, :cond_5

    .line 854
    sget-object v5, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "end-timestamp: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ts_end"

    invoke-virtual {v2, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    :cond_5
    sget-boolean v5, Ltv/alphonso/alphonsoclient/AlphonsoClient;->debug:Z

    if-eqz v5, :cond_6

    .line 857
    sget-object v5, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "time duration of session: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "timestamp"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    iget-wide v10, v1, Ltv/alphonso/alphonsoclient/AudioCaptureCxt;->fpSessionStartTimestamp:J

    sub-long/2addr v8, v10

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " for token: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ltv/alphonso/alphonsoclient/AudioCaptureCxt;->getToken()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    :cond_6
    const-string v5, "session_duration"

    const-string v6, "timestamp"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    iget-wide v8, v1, Ltv/alphonso/alphonsoclient/AudioCaptureCxt;->fpSessionStartTimestamp:J

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 862
    const-string v5, "time_zone"

    invoke-static {}, Ltv/alphonso/utils/Utils;->getTimeZoneOffsetInMinutesFromUTC()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 865
    const-string v5, "dst_flag"

    invoke-static {}, Ltv/alphonso/utils/Utils;->isDSTOperational()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 867
    const-string v5, "token"

    invoke-virtual {v1}, Ltv/alphonso/alphonsoclient/AudioCaptureCxt;->getToken()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 868
    const-string v5, "sequence"

    iget v6, v1, Ltv/alphonso/alphonsoclient/AudioCaptureCxt;->numPktsSent:I

    add-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 870
    sget-boolean v5, Ltv/alphonso/alphonsoclient/AlphonsoClient;->debug:Z

    if-eqz v5, :cond_7

    .line 871
    sget-object v5, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Aggregated FP size: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->mAudioStream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    :cond_7
    iget-object v5, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->mAudioStream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 874
    .local v0, "audioFingerprint":[B
    array-length v5, v0

    if-eqz v5, :cond_8

    .line 876
    const-string v5, "payload"

    const/4 v6, 0x0

    invoke-static {v0, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 877
    const-string v5, "length"

    array-length v6, v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 879
    :cond_8
    iget-object v5, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->mAudioStream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 882
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 883
    .local v4, "uri":Ljava/lang/StringBuffer;
    invoke-direct {p0}, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->getAlphonsoServerUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 884
    const-string v5, "/audio/fingerprint"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 885
    const/4 v5, 0x1

    invoke-direct {p0, v5}, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->getAlphonsoUidSuffix(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 887
    iget-object v5, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->mApiKey:Ljava/lang/String;

    if-eqz v5, :cond_9

    .line 888
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "&api_key="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->mApiKey:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 891
    :cond_9
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 893
    .local v3, "resultData":Landroid/os/Bundle;
    sput-object v1, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->audioCaptureContext:Ltv/alphonso/alphonsoclient/AudioCaptureCxt;

    .line 896
    invoke-direct {p0, v4, v2, v3}, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->invokeHttpUrlConnectionRestApi(Ljava/lang/StringBuffer;Ljava/util/LinkedHashMap;Landroid/os/Bundle;)V

    .line 898
    const/4 v5, 0x0

    sput-object v5, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->audioCaptureContext:Ltv/alphonso/alphonsoclient/AudioCaptureCxt;

    .line 900
    invoke-direct {p0, v1}, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->cleanupCaptureContext(Ltv/alphonso/alphonsoclient/AudioCaptureCxt;)V

    goto/16 :goto_0
.end method

.method private processAudioFPCaptureStart(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 677
    new-instance v0, Ltv/alphonso/alphonsoclient/AudioCaptureCxt;

    invoke-direct {v0}, Ltv/alphonso/alphonsoclient/AudioCaptureCxt;-><init>()V

    .line 678
    .local v0, "captureContext":Ltv/alphonso/alphonsoclient/AudioCaptureCxt;
    const-string v1, "token"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltv/alphonso/alphonsoclient/AudioCaptureCxt;->setToken(Ljava/lang/String;)V

    .line 679
    const-string v1, "ACR_SPLIT"

    invoke-virtual {v0, v1}, Ltv/alphonso/alphonsoclient/AudioCaptureCxt;->setAcrType(Ljava/lang/String;)V

    .line 680
    const-string v1, "capture_id"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ltv/alphonso/alphonsoclient/AudioCaptureCxt;->setCaptureId(I)V

    .line 681
    const-string v1, "capture_time"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Ltv/alphonso/alphonsoclient/AudioCaptureCxt;->captureTime:J

    .line 683
    iget-object v1, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->mAudioCaptureCxtTable:Ljava/util/LinkedHashMap;

    const-string v2, "token"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 685
    invoke-direct {p0, p1}, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->processAudioFPCaptureUpdate(Landroid/os/Bundle;)V

    .line 686
    return-void
.end method

.method private processAudioFPCaptureUpdate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x1

    .line 691
    iget-object v6, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->mContext:Landroid/content/Context;

    invoke-static {v6}, Ltv/alphonso/utils/Utils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 692
    sget-object v6, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->TAG:Ljava/lang/String;

    const-string v7, "Network unavailable."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    :cond_0
    :goto_0
    return-void

    .line 696
    :cond_1
    iget-object v6, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->mAudioCaptureCxtTable:Ljava/util/LinkedHashMap;

    const-string v7, "token"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltv/alphonso/alphonsoclient/AudioCaptureCxt;

    .line 697
    .local v1, "captureContext":Ltv/alphonso/alphonsoclient/AudioCaptureCxt;
    if-nez v1, :cond_2

    .line 699
    sget-object v6, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->TAG:Ljava/lang/String;

    const-string v7, "AUDIO_FP_CAPTURE_UPDATE request with null captureContext. Dropping request."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 703
    :cond_2
    invoke-direct {p0}, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->getAlphonsoServerUrl()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 704
    sget-object v6, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->TAG:Ljava/lang/String;

    const-string v7, "Alphonso server domain/port not set. Dropping request!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 708
    :cond_3
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 710
    .local v3, "params":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v6, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->mAudioStream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v6

    if-nez v6, :cond_5

    .line 712
    const-string v6, "timestamp"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v1, Ltv/alphonso/alphonsoclient/AudioCaptureCxt;->fpMessageStartTimestamp:J

    .line 713
    sget-boolean v6, Ltv/alphonso/alphonsoclient/AlphonsoClient;->debug:Z

    if-eqz v6, :cond_4

    .line 714
    sget-object v6, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "start-timestamp: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, v1, Ltv/alphonso/alphonsoclient/AudioCaptureCxt;->fpMessageStartTimestamp:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    :cond_4
    iget v6, v1, Ltv/alphonso/alphonsoclient/AudioCaptureCxt;->numPktsSent:I

    if-nez v6, :cond_5

    .line 717
    iget-wide v6, v1, Ltv/alphonso/alphonsoclient/AudioCaptureCxt;->fpMessageStartTimestamp:J

    iput-wide v6, v1, Ltv/alphonso/alphonsoclient/AudioCaptureCxt;->fpSessionStartTimestamp:J

    .line 722
    :cond_5
    :try_start_0
    iget-object v6, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->mAudioStream:Ljava/io/ByteArrayOutputStream;

    const-string v7, "fingerprint"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 730
    :goto_1
    iget v6, v1, Ltv/alphonso/alphonsoclient/AudioCaptureCxt;->numPktsSent:I

    if-lez v6, :cond_7

    iget-boolean v6, v1, Ltv/alphonso/alphonsoclient/AudioCaptureCxt;->sendRemainder:Z

    if-nez v6, :cond_6

    iget-object v6, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x5

    .line 732
    invoke-virtual {v6, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 734
    :cond_6
    sget-boolean v6, Ltv/alphonso/alphonsoclient/AlphonsoClient;->debug:Z

    if-eqz v6, :cond_0

    .line 735
    sget-object v6, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->TAG:Ljava/lang/String;

    const-string v7, "Going back to dequue."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 724
    :catch_0
    move-exception v2

    .line 726
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 727
    sget-object v6, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IOException "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 739
    .end local v2    # "e":Ljava/io/IOException;
    :cond_7
    iget v6, v1, Ltv/alphonso/alphonsoclient/AudioCaptureCxt;->numPktsSent:I

    if-nez v6, :cond_e

    .line 740
    const-string v6, "type"

    const-string v7, "start"

    invoke-virtual {v3, v6, v7}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 741
    const-string v6, "record_failure"

    const-string v7, "record_failure"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 742
    const-string v6, "capture_time"

    iget-wide v8, v1, Ltv/alphonso/alphonsoclient/AudioCaptureCxt;->captureTime:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 744
    iget-object v6, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->mUserLocationInfo:Ljava/lang/String;

    if-eqz v6, :cond_d

    .line 745
    const-string v6, "user_location_info"

    iget-object v7, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->mUserLocationInfo:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 755
    :cond_8
    :goto_2
    const-string v6, "device_id"

    const-string v7, "device_id"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 758
    const-string v6, "ts_start"

    iget-wide v8, v1, Ltv/alphonso/alphonsoclient/AudioCaptureCxt;->fpMessageStartTimestamp:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 761
    const-string v6, "ts_end"

    const-string v7, "timestamp"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 763
    sget-boolean v6, Ltv/alphonso/alphonsoclient/AlphonsoClient;->debug:Z

    if-eqz v6, :cond_9

    .line 764
    sget-object v6, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "end-timestamp: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ts_end"

    invoke-virtual {v3, v8}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    :cond_9
    const-string v6, "time_zone"

    invoke-static {}, Ltv/alphonso/utils/Utils;->getTimeZoneOffsetInMinutesFromUTC()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 770
    const-string v6, "dst_flag"

    invoke-static {}, Ltv/alphonso/utils/Utils;->isDSTOperational()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 772
    const-string v6, "token"

    invoke-virtual {v1}, Ltv/alphonso/alphonsoclient/AudioCaptureCxt;->getToken()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 773
    const-string v6, "sequence"

    iget v7, v1, Ltv/alphonso/alphonsoclient/AudioCaptureCxt;->numPktsSent:I

    add-int/lit8 v7, v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 775
    sget-boolean v6, Ltv/alphonso/alphonsoclient/AlphonsoClient;->debug:Z

    if-eqz v6, :cond_a

    .line 776
    sget-object v6, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Aggregated FP size: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->mAudioStream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    :cond_a
    iget-object v6, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->mAudioStream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 779
    .local v0, "audioFingerprint":[B
    array-length v6, v0

    if-eqz v6, :cond_b

    .line 781
    const-string v6, "payload"

    const/4 v7, 0x0

    invoke-static {v0, v7}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 782
    const-string v6, "length"

    array-length v7, v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 784
    :cond_b
    iget-object v6, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->mAudioStream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 787
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 788
    .local v5, "uri":Ljava/lang/StringBuffer;
    invoke-direct {p0}, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->getAlphonsoServerUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 789
    const-string v6, "/audio/fingerprint"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 790
    invoke-direct {p0, v10}, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->getAlphonsoUidSuffix(Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 792
    iget-object v6, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->mApiKey:Ljava/lang/String;

    if-eqz v6, :cond_c

    .line 793
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "&api_key="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->mApiKey:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 796
    :cond_c
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 798
    .local v4, "resultData":Landroid/os/Bundle;
    sput-object v1, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->audioCaptureContext:Ltv/alphonso/alphonsoclient/AudioCaptureCxt;

    .line 801
    invoke-direct {p0, v5, v3, v4}, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->invokeHttpUrlConnectionRestApi(Ljava/lang/StringBuffer;Ljava/util/LinkedHashMap;Landroid/os/Bundle;)V

    .line 803
    const/4 v6, 0x0

    sput-object v6, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->audioCaptureContext:Ltv/alphonso/alphonsoclient/AudioCaptureCxt;

    .line 806
    invoke-direct {p0, v1, v4, v10}, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->processAudioCaptureResponse(Ltv/alphonso/alphonsoclient/AudioCaptureCxt;Landroid/os/Bundle;Z)V

    goto/16 :goto_0

    .line 748
    .end local v0    # "audioFingerprint":[B
    .end local v4    # "resultData":Landroid/os/Bundle;
    .end local v5    # "uri":Ljava/lang/StringBuffer;
    :cond_d
    sget-boolean v6, Ltv/alphonso/alphonsoclient/AlphonsoClient;->debug:Z

    if-eqz v6, :cond_8

    .line 749
    sget-object v6, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->TAG:Ljava/lang/String;

    const-string v7, "No location available."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 753
    :cond_e
    const-string v6, "type"

    const-string v7, "middle"

    invoke-virtual {v3, v6, v7}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2
.end method

.method private processDestroyMessage()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 333
    sget-boolean v0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->debug:Z

    if-eqz v0, :cond_0

    .line 334
    sget-object v0, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->TAG:Ljava/lang/String;

    const-string v1, "Rcvd Destroy message."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    :cond_0
    iget-object v0, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->mAudioCaptureCxtTable:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 338
    sget-object v0, Ltv/alphonso/service/AlphonsoService;->singletonObject:Ltv/alphonso/service/AlphonsoService;

    if-eqz v0, :cond_2

    .line 340
    sget-boolean v0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->debug:Z

    if-eqz v0, :cond_1

    .line 341
    sget-object v0, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->TAG:Ljava/lang/String;

    const-string v1, "Sending AUDIO_FP_UPLOAD_SERVICE_CLEANUP_DONE message to AlphonsoService."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    :cond_1
    sget-object v0, Ltv/alphonso/service/AlphonsoService;->singletonObject:Ltv/alphonso/service/AlphonsoService;

    iget-object v0, v0, Ltv/alphonso/service/AlphonsoService;->mHandler:Ltv/alphonso/service/AlphonsoService$MsgHandler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ltv/alphonso/service/AlphonsoService$MsgHandler;->sendEmptyMessage(I)Z

    .line 346
    :cond_2
    iput-object v2, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->mHandler:Landroid/os/Handler;

    .line 347
    iput-object v2, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->mContext:Landroid/content/Context;

    .line 348
    iget-object v0, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 349
    return-void
.end method

.method private processGetStatsRequest(Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 4
    .param p1, "extras"    # Landroid/os/Bundle;
    .param p2, "resultReceiver"    # Landroid/os/ResultReceiver;

    .prologue
    .line 939
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 941
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "interPktStartSendTimeAvg"

    sget-wide v2, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->interPktStartSendTimeAvg:J

    invoke-static {v2, v3}, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->getDurationAsString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 942
    const-string v1, "interPktStartSendTimeMin"

    sget-wide v2, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->interPktStartSendTimeMin:J

    invoke-static {v2, v3}, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->getDurationAsString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 943
    const-string v1, "interPktStartSendTimeMax"

    sget-wide v2, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->interPktStartSendTimeMax:J

    invoke-static {v2, v3}, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->getDurationAsString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 944
    const-string v1, "rttForPacketsAvg"

    sget-wide v2, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->rttForPacketsAvg:J

    invoke-static {v2, v3}, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->getDurationAsString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 945
    const-string v1, "rttForPacketsIterationsMin"

    sget-wide v2, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->rttForPacketsMin:J

    invoke-static {v2, v3}, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->getDurationAsString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 946
    const-string v1, "rttForPacketsIterationsMax"

    sget-wide v2, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->rttForPacketsMax:J

    invoke-static {v2, v3}, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->getDurationAsString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 949
    const/4 v1, 0x0

    invoke-virtual {p2, v1, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 950
    return-void
.end method

.method private processLocationUpdateMessage(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 1000
    const-string v1, "user_location_info"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1002
    .local v0, "userLocationInfo":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 1003
    sget-object v1, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->TAG:Ljava/lang/String;

    const-string v2, "Location Update message without user_location_info!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    :cond_0
    :goto_0
    return-void

    .line 1007
    :cond_1
    iput-object v0, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->mUserLocationInfo:Ljava/lang/String;

    .line 1008
    sget-boolean v1, Ltv/alphonso/alphonsoclient/AlphonsoClient;->debug:Z

    if-eqz v1, :cond_0

    .line 1009
    sget-object v1, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Rcvd user location info :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->mUserLocationInfo:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private processProvClientReceiverUpdate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 327
    const-string v0, "prov_client_receiver"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/ResultReceiver;

    iput-object v0, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->mProvClientReceiver:Landroid/os/ResultReceiver;

    .line 328
    return-void
.end method

.method private processSendObject(Ltv/alphonso/alphonsoclient/AudioCaptureCxt;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "captureContext"    # Ltv/alphonso/alphonsoclient/AudioCaptureCxt;
    .param p2, "send"    # Ljava/lang/String;
    .param p3, "fingerprintApi"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 659
    const-string v0, "N"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 672
    :cond_0
    :goto_0
    return-void

    .line 663
    :cond_1
    const-string v0, "remainder"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 665
    iput-boolean v1, p1, Ltv/alphonso/alphonsoclient/AudioCaptureCxt;->sendRemainder:Z

    goto :goto_0

    .line 668
    :cond_2
    const-string v0, "none"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 670
    iput-boolean v1, p1, Ltv/alphonso/alphonsoclient/AudioCaptureCxt;->sendNone:Z

    goto :goto_0
.end method

.method private processSetupMessage(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 306
    const-string v0, "server_domain"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->setAlphonsoServerDomain(Ljava/lang/String;)V

    .line 307
    const-string v0, "server_port"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->setAlphonsoServerPort(Ljava/lang/String;)V

    .line 308
    const-string v0, "alp_uid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->setAlphonsoUid(Ljava/lang/String;)V

    .line 309
    const-string v0, "api_key"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->setApiKey(Ljava/lang/String;)V

    .line 311
    const-string v0, "prov_client_receiver"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 312
    const-string v0, "prov_client_receiver"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/ResultReceiver;

    iput-object v0, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->mProvClientReceiver:Landroid/os/ResultReceiver;

    .line 314
    :cond_0
    iget-object v0, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 315
    iget-object v0, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 316
    iget-object v0, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 317
    iget-object v0, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 318
    iget-object v0, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 319
    iget-object v0, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 321
    iget-object v0, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->mAudioCaptureCxtTable:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 322
    return-void
.end method

.method private setAlphonsoServerDomain(Ljava/lang/String;)V
    .locals 3
    .param p1, "domain"    # Ljava/lang/String;

    .prologue
    .line 144
    if-eqz p1, :cond_1

    .line 145
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->mAlphonsoServerDomain:Ljava/lang/String;

    .line 146
    sget-boolean v0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->debug:Z

    if-eqz v0, :cond_0

    .line 147
    sget-object v0, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Alphonso Server Domain set as: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->mAlphonsoServerDomain:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 150
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->mAlphonsoServerDomain:Ljava/lang/String;

    goto :goto_0
.end method

.method private setAlphonsoServerPort(Ljava/lang/String;)V
    .locals 3
    .param p1, "port"    # Ljava/lang/String;

    .prologue
    .line 161
    if-eqz p1, :cond_1

    .line 162
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->mAlphonsoServerPort:Ljava/lang/String;

    .line 163
    sget-boolean v0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->debug:Z

    if-eqz v0, :cond_0

    .line 164
    sget-object v0, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Alphonso Server Port set as: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->mAlphonsoServerPort:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :cond_0
    :goto_0
    return-void

    .line 167
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->mAlphonsoServerPort:Ljava/lang/String;

    goto :goto_0
.end method

.method private setAlphonsoUid(Ljava/lang/String;)V
    .locals 1
    .param p1, "alphonso_uid"    # Ljava/lang/String;

    .prologue
    .line 173
    if-eqz p1, :cond_0

    .line 174
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->mAlphonsoUid:Ljava/lang/String;

    .line 179
    :goto_0
    return-void

    .line 177
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->mAlphonsoUid:Ljava/lang/String;

    goto :goto_0
.end method

.method private setApiKey(Ljava/lang/String;)V
    .locals 1
    .param p1, "apiKey"    # Ljava/lang/String;

    .prologue
    .line 218
    if-eqz p1, :cond_0

    .line 219
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->mApiKey:Ljava/lang/String;

    .line 224
    :goto_0
    return-void

    .line 222
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->mApiKey:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public getAlphonsoServerDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->mAlphonsoServerDomain:Ljava/lang/String;

    return-object v0
.end method

.method public getAlphonsoServerPort()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->mAlphonsoServerPort:Ljava/lang/String;

    return-object v0
.end method

.method public resetCookie()V
    .locals 1

    .prologue
    .line 134
    const/4 v0, 0x0

    iput-object v0, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->mCookie:Lorg/apache/http/client/CookieStore;

    .line 135
    return-void
.end method

.method public resetStats()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 970
    sput-wide v0, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->interPktStartSendTimeAvg:J

    .line 971
    sput-wide v0, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->interPktStartSendTimeMin:J

    .line 972
    sput-wide v0, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->interPktStartSendTimeMax:J

    .line 974
    sput-wide v0, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->rttForPacketsAvg:J

    .line 975
    sput-wide v0, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->rttForPacketsMin:J

    .line 976
    sput-wide v0, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->rttForPacketsMax:J

    .line 977
    return-void
.end method

.method public setHttpClient(Lorg/apache/http/impl/client/DefaultHttpClient;)V
    .locals 0
    .param p1, "client"    # Lorg/apache/http/impl/client/DefaultHttpClient;

    .prologue
    .line 128
    iput-object p1, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 129
    return-void
.end method
