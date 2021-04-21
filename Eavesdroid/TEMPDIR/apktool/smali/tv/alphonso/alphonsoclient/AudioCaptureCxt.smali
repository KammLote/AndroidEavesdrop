.class public Ltv/alphonso/alphonsoclient/AudioCaptureCxt;
.super Ljava/lang/Object;
.source "AudioCaptureCxt.java"


# static fields
.field public static final RESULT_FAIL:I = 0x1

.field public static final RESULT_PENDING:I = 0x1

.field public static final RESULT_SUCCESS:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private acrType:Ljava/lang/String;

.field private captureContextId:Ljava/lang/String;

.field private captureId:I

.field public captureTime:J

.field public fpMessageStartTimestamp:J

.field public fpSessionStartTimestamp:J

.field public interPktStartSendTime:J

.field public interPktStartSendTimeIterations:J

.field public numPktsRcvd:I

.field public numPktsSent:I

.field public pktDoneSend:J

.field public pktStartSend:J

.field public resultIssued:Z

.field public rttForPackets:J

.field public rttForPacketsIterations:J

.field public sendNone:Z

.field public sendRemainder:Z

.field private token:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Ltv/alphonso/alphonsoclient/AlphonsoClient;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ltv/alphonso/alphonsoclient/AudioCaptureCxt;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object v3, p0, Ltv/alphonso/alphonsoclient/AudioCaptureCxt;->captureContextId:Ljava/lang/String;

    .line 16
    iput v2, p0, Ltv/alphonso/alphonsoclient/AudioCaptureCxt;->numPktsSent:I

    .line 17
    iput v2, p0, Ltv/alphonso/alphonsoclient/AudioCaptureCxt;->numPktsRcvd:I

    .line 18
    iput-object v3, p0, Ltv/alphonso/alphonsoclient/AudioCaptureCxt;->token:Ljava/lang/String;

    .line 19
    iput-object v3, p0, Ltv/alphonso/alphonsoclient/AudioCaptureCxt;->acrType:Ljava/lang/String;

    .line 20
    iput v2, p0, Ltv/alphonso/alphonsoclient/AudioCaptureCxt;->captureId:I

    .line 22
    iput-wide v0, p0, Ltv/alphonso/alphonsoclient/AudioCaptureCxt;->pktStartSend:J

    .line 23
    iput-wide v0, p0, Ltv/alphonso/alphonsoclient/AudioCaptureCxt;->pktDoneSend:J

    .line 25
    iput-wide v0, p0, Ltv/alphonso/alphonsoclient/AudioCaptureCxt;->interPktStartSendTime:J

    .line 26
    iput-wide v0, p0, Ltv/alphonso/alphonsoclient/AudioCaptureCxt;->interPktStartSendTimeIterations:J

    .line 28
    iput-wide v0, p0, Ltv/alphonso/alphonsoclient/AudioCaptureCxt;->rttForPackets:J

    .line 29
    iput-wide v0, p0, Ltv/alphonso/alphonsoclient/AudioCaptureCxt;->rttForPacketsIterations:J

    .line 31
    iput-boolean v2, p0, Ltv/alphonso/alphonsoclient/AudioCaptureCxt;->resultIssued:Z

    .line 33
    iput-boolean v2, p0, Ltv/alphonso/alphonsoclient/AudioCaptureCxt;->sendRemainder:Z

    .line 35
    iput-boolean v2, p0, Ltv/alphonso/alphonsoclient/AudioCaptureCxt;->sendNone:Z

    .line 38
    iput-wide v0, p0, Ltv/alphonso/alphonsoclient/AudioCaptureCxt;->fpMessageStartTimestamp:J

    .line 40
    iput-wide v0, p0, Ltv/alphonso/alphonsoclient/AudioCaptureCxt;->fpSessionStartTimestamp:J

    .line 42
    iput-wide v0, p0, Ltv/alphonso/alphonsoclient/AudioCaptureCxt;->captureTime:J

    return-void
.end method


# virtual methods
.method public getAcrType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Ltv/alphonso/alphonsoclient/AudioCaptureCxt;->acrType:Ljava/lang/String;

    return-object v0
.end method

.method public getAverageInterPktStartSendTime()Ljava/lang/String;
    .locals 4

    .prologue
    .line 135
    iget-wide v0, p0, Ltv/alphonso/alphonsoclient/AudioCaptureCxt;->interPktStartSendTime:J

    iget-wide v2, p0, Ltv/alphonso/alphonsoclient/AudioCaptureCxt;->interPktStartSendTimeIterations:J

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ltv/alphonso/utils/Utils;->getDurationAsString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAverageRtt()Ljava/lang/String;
    .locals 4

    .prologue
    .line 141
    iget-wide v0, p0, Ltv/alphonso/alphonsoclient/AudioCaptureCxt;->rttForPackets:J

    iget-wide v2, p0, Ltv/alphonso/alphonsoclient/AudioCaptureCxt;->rttForPacketsIterations:J

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ltv/alphonso/utils/Utils;->getDurationAsString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCaptureContextId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Ltv/alphonso/alphonsoclient/AudioCaptureCxt;->captureContextId:Ljava/lang/String;

    return-object v0
.end method

.method public getCaptureId()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Ltv/alphonso/alphonsoclient/AudioCaptureCxt;->captureId:I

    return v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Ltv/alphonso/alphonsoclient/AudioCaptureCxt;->token:Ljava/lang/String;

    return-object v0
.end method

.method public setAcrType(Ljava/lang/String;)V
    .locals 0
    .param p1, "acrType"    # Ljava/lang/String;

    .prologue
    .line 67
    iput-object p1, p0, Ltv/alphonso/alphonsoclient/AudioCaptureCxt;->acrType:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public setCaptureContextId(Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 49
    if-eqz p1, :cond_0

    .line 50
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ltv/alphonso/alphonsoclient/AudioCaptureCxt;->captureContextId:Ljava/lang/String;

    .line 52
    :cond_0
    return-void
.end method

.method public setCaptureId(I)V
    .locals 0
    .param p1, "captureId"    # I

    .prologue
    .line 75
    iput p1, p0, Ltv/alphonso/alphonsoclient/AudioCaptureCxt;->captureId:I

    .line 76
    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 59
    iput-object p1, p0, Ltv/alphonso/alphonsoclient/AudioCaptureCxt;->token:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public updateStatsAfterHttpSend()V
    .locals 6

    .prologue
    .line 110
    iget-boolean v2, p0, Ltv/alphonso/alphonsoclient/AudioCaptureCxt;->resultIssued:Z

    if-eqz v2, :cond_0

    .line 130
    :goto_0
    return-void

    .line 113
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Ltv/alphonso/alphonsoclient/AudioCaptureCxt;->pktDoneSend:J

    .line 115
    iget-wide v2, p0, Ltv/alphonso/alphonsoclient/AudioCaptureCxt;->pktDoneSend:J

    iget-wide v4, p0, Ltv/alphonso/alphonsoclient/AudioCaptureCxt;->pktStartSend:J

    sub-long v0, v2, v4

    .line 116
    .local v0, "curRttForPackets":J
    sget-boolean v2, Ltv/alphonso/alphonsoclient/AlphonsoClient;->debug:Z

    if-eqz v2, :cond_1

    .line 117
    sget-object v2, Ltv/alphonso/alphonsoclient/AudioCaptureCxt;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Current rttForPackets = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0, v1}, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->getDurationAsString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :cond_1
    iget-wide v2, p0, Ltv/alphonso/alphonsoclient/AudioCaptureCxt;->rttForPacketsIterations:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Ltv/alphonso/alphonsoclient/AudioCaptureCxt;->rttForPacketsIterations:J

    .line 120
    iget-wide v2, p0, Ltv/alphonso/alphonsoclient/AudioCaptureCxt;->rttForPackets:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Ltv/alphonso/alphonsoclient/AudioCaptureCxt;->rttForPackets:J

    .line 122
    sget-wide v2, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->rttForPacketsMin:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    sget-wide v2, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->rttForPacketsMin:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_3

    .line 124
    :cond_2
    sput-wide v0, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->rttForPacketsMin:J

    .line 126
    :cond_3
    sget-wide v2, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->rttForPacketsMax:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_4

    .line 127
    sput-wide v0, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->rttForPacketsMax:J

    .line 129
    :cond_4
    iget-wide v2, p0, Ltv/alphonso/alphonsoclient/AudioCaptureCxt;->rttForPackets:J

    iget-wide v4, p0, Ltv/alphonso/alphonsoclient/AudioCaptureCxt;->rttForPacketsIterations:J

    div-long/2addr v2, v4

    sput-wide v2, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->rttForPacketsAvg:J

    goto :goto_0
.end method

.method public updateStatsBeforeHttpSend()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    .line 80
    iget-boolean v4, p0, Ltv/alphonso/alphonsoclient/AudioCaptureCxt;->resultIssued:Z

    if-eqz v4, :cond_0

    .line 106
    :goto_0
    return-void

    .line 83
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 85
    .local v2, "curTime":J
    iget-wide v4, p0, Ltv/alphonso/alphonsoclient/AudioCaptureCxt;->pktStartSend:J

    cmp-long v4, v4, v8

    if-eqz v4, :cond_5

    .line 87
    iget-wide v4, p0, Ltv/alphonso/alphonsoclient/AudioCaptureCxt;->interPktStartSendTimeIterations:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, p0, Ltv/alphonso/alphonsoclient/AudioCaptureCxt;->interPktStartSendTimeIterations:J

    .line 89
    iget-wide v4, p0, Ltv/alphonso/alphonsoclient/AudioCaptureCxt;->pktDoneSend:J

    sub-long v0, v2, v4

    .line 90
    .local v0, "curInterPktStartSendTime":J
    sget-boolean v4, Ltv/alphonso/alphonsoclient/AlphonsoClient;->debug:Z

    if-eqz v4, :cond_1

    .line 91
    sget-object v4, Ltv/alphonso/alphonsoclient/AudioCaptureCxt;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Current interPktStartSendTime = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0, v1}, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->getDurationAsString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :cond_1
    sget-wide v4, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->interPktStartSendTimeMin:J

    cmp-long v4, v4, v8

    if-eqz v4, :cond_2

    sget-wide v4, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->interPktStartSendTimeMin:J

    cmp-long v4, v0, v4

    if-gez v4, :cond_3

    .line 95
    :cond_2
    sput-wide v0, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->interPktStartSendTimeMin:J

    .line 97
    :cond_3
    sget-wide v4, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->interPktStartSendTimeMax:J

    cmp-long v4, v0, v4

    if-lez v4, :cond_4

    .line 98
    sput-wide v0, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->interPktStartSendTimeMax:J

    .line 100
    :cond_4
    iget-wide v4, p0, Ltv/alphonso/alphonsoclient/AudioCaptureCxt;->interPktStartSendTime:J

    add-long/2addr v4, v0

    iput-wide v4, p0, Ltv/alphonso/alphonsoclient/AudioCaptureCxt;->interPktStartSendTime:J

    .line 102
    iget-wide v4, p0, Ltv/alphonso/alphonsoclient/AudioCaptureCxt;->interPktStartSendTime:J

    iget-wide v6, p0, Ltv/alphonso/alphonsoclient/AudioCaptureCxt;->interPktStartSendTimeIterations:J

    div-long/2addr v4, v6

    sput-wide v4, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->interPktStartSendTimeAvg:J

    .line 105
    .end local v0    # "curInterPktStartSendTime":J
    :cond_5
    iput-wide v2, p0, Ltv/alphonso/alphonsoclient/AudioCaptureCxt;->pktStartSend:J

    goto :goto_0
.end method
