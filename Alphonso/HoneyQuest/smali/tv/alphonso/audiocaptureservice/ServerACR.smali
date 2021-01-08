.class public Ltv/alphonso/audiocaptureservice/ServerACR;
.super Ltv/alphonso/audiocaptureservice/AudioCaptureClient;
.source "ServerACR.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mNumPacketsSent:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Ltv/alphonso/audiocaptureservice/RecorderThread;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ltv/alphonso/audiocaptureservice/ServerACR;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ltv/alphonso/audiocaptureservice/AudioCaptureClient;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput v0, p0, Ltv/alphonso/audiocaptureservice/ServerACR;->mNumPacketsSent:I

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 132
    invoke-virtual {p0, v0}, Ltv/alphonso/audiocaptureservice/ServerACR;->setContext(Landroid/content/Context;)V

    .line 133
    iput-object v0, p0, Ltv/alphonso/audiocaptureservice/ServerACR;->mAudioFPUploadService:Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;

    .line 134
    return-void
.end method

.method public getAcrType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    const-string v0, "server"

    return-object v0
.end method

.method public init(Ljava/lang/String;Landroid/content/Context;Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;Ltv/alphonso/alphonsoclient/AlphonsoClient;Ltv/alphonso/audiocaptureservice/AudioCaptureService;)V
    .locals 0
    .param p1, "deviceId"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "audioFPUploadService"    # Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;
    .param p4, "alphonsoClient"    # Ltv/alphonso/alphonsoclient/AlphonsoClient;
    .param p5, "audioCaptureService"    # Ltv/alphonso/audiocaptureservice/AudioCaptureService;

    .prologue
    .line 26
    iput-object p3, p0, Ltv/alphonso/audiocaptureservice/ServerACR;->mAudioFPUploadService:Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;

    .line 28
    iput-object p4, p0, Ltv/alphonso/audiocaptureservice/ServerACR;->mAlphonsoClient:Ltv/alphonso/alphonsoclient/AlphonsoClient;

    .line 30
    iput-object p5, p0, Ltv/alphonso/audiocaptureservice/ServerACR;->mAudioCaptureService:Ltv/alphonso/audiocaptureservice/AudioCaptureService;

    .line 32
    invoke-virtual {p0, p1}, Ltv/alphonso/audiocaptureservice/ServerACR;->setDeviceId(Ljava/lang/String;)V

    .line 33
    invoke-virtual {p0, p2}, Ltv/alphonso/audiocaptureservice/ServerACR;->setContext(Landroid/content/Context;)V

    .line 34
    return-void
.end method

.method public send([BII)B
    .locals 8
    .param p1, "bytes"    # [B
    .param p2, "numBytes"    # I
    .param p3, "sampleRate"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x2

    .line 51
    invoke-virtual {p0}, Ltv/alphonso/audiocaptureservice/ServerACR;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Ltv/alphonso/utils/Utils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 52
    sget-object v2, Ltv/alphonso/audiocaptureservice/ServerACR;->TAG:Ljava/lang/String;

    const-string v3, "Network unavailable."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :cond_0
    :goto_0
    return v6

    .line 56
    :cond_1
    iget v2, p0, Ltv/alphonso/audiocaptureservice/ServerACR;->mNumPacketsSent:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ltv/alphonso/audiocaptureservice/ServerACR;->mNumPacketsSent:I

    .line 58
    iget-object v2, p0, Ltv/alphonso/audiocaptureservice/ServerACR;->mAudioFPUploadService:Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;

    if-eqz v2, :cond_0

    .line 59
    iget-object v2, p0, Ltv/alphonso/audiocaptureservice/ServerACR;->mAudioFPUploadService:Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;

    iget-object v2, v2, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 61
    .local v0, "msg":Landroid/os/Message;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 62
    .local v1, "params":Landroid/os/Bundle;
    const-string v2, "pkt_ctr"

    iget v3, p0, Ltv/alphonso/audiocaptureservice/ServerACR;->mNumPacketsSent:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 63
    const-string v2, "samples"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 64
    const-string v2, "sample_rate"

    int-to-float v3, p3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 65
    const-string v2, "device_id"

    iget-object v3, p0, Ltv/alphonso/audiocaptureservice/ServerACR;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const-string v2, "start_time"

    iget-object v3, p0, Ltv/alphonso/audiocaptureservice/ServerACR;->mCaptureInstance:Ltv/alphonso/audiocaptureservice/CaptureEntity;

    iget-wide v4, v3, Ltv/alphonso/audiocaptureservice/CaptureEntity;->mStartTime:J

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 68
    iget v2, p0, Ltv/alphonso/audiocaptureservice/ServerACR;->mNumPacketsSent:I

    if-ne v2, v7, :cond_3

    .line 70
    sget-boolean v2, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->debug:Z

    if-eqz v2, :cond_2

    .line 71
    sget-object v2, Ltv/alphonso/audiocaptureservice/ServerACR;->TAG:Ljava/lang/String;

    const-string v3, "Sending AUDIO_CAPTURE_START request to AudioFPUploadService."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :cond_2
    const-string v2, "capture_id"

    iget-object v3, p0, Ltv/alphonso/audiocaptureservice/ServerACR;->mCaptureInstance:Ltv/alphonso/audiocaptureservice/CaptureEntity;

    iget v3, v3, Ltv/alphonso/audiocaptureservice/CaptureEntity;->mCaptureId:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 74
    const-string v2, "timestamp"

    iget-object v3, p0, Ltv/alphonso/audiocaptureservice/ServerACR;->mCaptureInstance:Ltv/alphonso/audiocaptureservice/CaptureEntity;

    iget-wide v4, v3, Ltv/alphonso/audiocaptureservice/CaptureEntity;->mStartTimestampGMT:J

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 75
    const-string v2, "capture_time"

    iget-object v3, p0, Ltv/alphonso/audiocaptureservice/ServerACR;->mAudioCaptureService:Ltv/alphonso/audiocaptureservice/AudioCaptureService;

    iget-wide v4, v3, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCaptureDuration:J

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 76
    iput v7, v0, Landroid/os/Message;->what:I

    .line 83
    :goto_1
    const-string v2, "token"

    iget-object v3, p0, Ltv/alphonso/audiocaptureservice/ServerACR;->mToken:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const-string v2, "record_failure"

    iget-boolean v3, p0, Ltv/alphonso/audiocaptureservice/ServerACR;->mRecordTimeouts:Z

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 85
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 86
    iget-object v2, p0, Ltv/alphonso/audiocaptureservice/ServerACR;->mAudioFPUploadService:Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;

    iget-object v2, v2, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 79
    :cond_3
    const-string v2, "timestamp"

    iget-wide v4, p0, Ltv/alphonso/audiocaptureservice/ServerACR;->mAudioBufferTimestampGMT:J

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 80
    iput v6, v0, Landroid/os/Message;->what:I

    goto :goto_1
.end method

.method public start(Ltv/alphonso/audiocaptureservice/CaptureEntity;)V
    .locals 2
    .param p1, "captureInstance"    # Ltv/alphonso/audiocaptureservice/CaptureEntity;

    .prologue
    .line 40
    iput-object p1, p0, Ltv/alphonso/audiocaptureservice/ServerACR;->mCaptureInstance:Ltv/alphonso/audiocaptureservice/CaptureEntity;

    .line 41
    iget-object v0, p0, Ltv/alphonso/audiocaptureservice/ServerACR;->mCaptureInstance:Ltv/alphonso/audiocaptureservice/CaptureEntity;

    invoke-virtual {p0}, Ltv/alphonso/audiocaptureservice/ServerACR;->getAcrType()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Ltv/alphonso/audiocaptureservice/CaptureEntity;->mAcrTypeForAudioFilename:Ljava/lang/String;

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ltv/alphonso/audiocaptureservice/ServerACR;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltv/alphonso/audiocaptureservice/ServerACR;->mCaptureInstance:Ltv/alphonso/audiocaptureservice/CaptureEntity;

    iget-object v1, v1, Ltv/alphonso/audiocaptureservice/CaptureEntity;->mStartTimeYYMMDD:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltv/alphonso/audiocaptureservice/ServerACR;->mToken:Ljava/lang/String;

    .line 44
    iget-object v0, p0, Ltv/alphonso/audiocaptureservice/ServerACR;->mCaptureInstance:Ltv/alphonso/audiocaptureservice/CaptureEntity;

    iget-object v1, p0, Ltv/alphonso/audiocaptureservice/ServerACR;->mToken:Ljava/lang/String;

    iput-object v1, v0, Ltv/alphonso/audiocaptureservice/CaptureEntity;->mToken:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public stop(Ljava/lang/String;)V
    .locals 6
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 96
    iget-object v2, p0, Ltv/alphonso/audiocaptureservice/ServerACR;->mAudioFPUploadService:Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;

    if-eqz v2, :cond_1

    .line 97
    iget-object v2, p0, Ltv/alphonso/audiocaptureservice/ServerACR;->mAudioFPUploadService:Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;

    iget-object v2, v2, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 99
    .local v0, "msg":Landroid/os/Message;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 100
    .local v1, "params":Landroid/os/Bundle;
    const-string v2, "device_id"

    iget-object v3, p0, Ltv/alphonso/audiocaptureservice/ServerACR;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string v2, "Cancelled"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 103
    const-string v2, "result"

    const-string v3, "cancel"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    :goto_0
    const-string v2, "token"

    iget-object v3, p0, Ltv/alphonso/audiocaptureservice/ServerACR;->mToken:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const-string v2, "timestamp"

    invoke-static {}, Ltv/alphonso/utils/Utils;->getTimeStamp()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 114
    const/4 v2, 0x3

    iput v2, v0, Landroid/os/Message;->what:I

    .line 116
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 118
    sget-boolean v2, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->debug:Z

    if-eqz v2, :cond_0

    .line 119
    sget-object v2, Ltv/alphonso/audiocaptureservice/ServerACR;->TAG:Ljava/lang/String;

    const-string v3, "Sending AUDIO_CAPTURE_END message to AudioFPUploadService Service."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :cond_0
    iget-object v2, p0, Ltv/alphonso/audiocaptureservice/ServerACR;->mAudioFPUploadService:Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;

    iget-object v2, v2, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 123
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "params":Landroid/os/Bundle;
    :cond_1
    const/4 v2, 0x0

    iput v2, p0, Ltv/alphonso/audiocaptureservice/ServerACR;->mNumPacketsSent:I

    .line 125
    const/4 v2, 0x0

    iput-object v2, p0, Ltv/alphonso/audiocaptureservice/ServerACR;->mCaptureInstance:Ltv/alphonso/audiocaptureservice/CaptureEntity;

    .line 126
    return-void

    .line 104
    .restart local v0    # "msg":Landroid/os/Message;
    .restart local v1    # "params":Landroid/os/Bundle;
    :cond_2
    const-string v2, "Timed_out"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "Final_Time_out"

    .line 105
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 106
    :cond_3
    const-string v2, "result"

    const-string v3, "timeout"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 107
    :cond_4
    const-string v2, "Interrupted"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 108
    const-string v2, "result"

    const-string v3, "killed"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 110
    :cond_5
    const-string v2, "result"

    const-string v3, "server_last"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public uploadAudioFileIfRequired(Ljava/lang/String;)V
    .locals 0
    .param p1, "resultSuffix"    # Ljava/lang/String;

    .prologue
    .line 141
    return-void
.end method
