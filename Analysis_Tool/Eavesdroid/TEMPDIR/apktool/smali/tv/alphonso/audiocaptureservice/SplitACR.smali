.class public Ltv/alphonso/audiocaptureservice/SplitACR;
.super Ltv/alphonso/audiocaptureservice/LocalACR;
.source "SplitACR.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected mFpDelay:J

.field protected mFpEnd:J

.field protected mFpStart:J

.field private mNumFPsSent:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Ltv/alphonso/audiocaptureservice/SplitACR;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ltv/alphonso/audiocaptureservice/SplitACR;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 10
    invoke-direct {p0}, Ltv/alphonso/audiocaptureservice/LocalACR;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Ltv/alphonso/audiocaptureservice/SplitACR;->mNumFPsSent:I

    .line 16
    iput-wide v2, p0, Ltv/alphonso/audiocaptureservice/SplitACR;->mFpStart:J

    .line 17
    iput-wide v2, p0, Ltv/alphonso/audiocaptureservice/SplitACR;->mFpEnd:J

    .line 18
    iput-wide v2, p0, Ltv/alphonso/audiocaptureservice/SplitACR;->mFpDelay:J

    return-void
.end method


# virtual methods
.method public getAcrType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    const-string v0, "split"

    return-object v0
.end method

.method public send([BII)B
    .locals 8
    .param p1, "bytes"    # [B
    .param p2, "numBytes"    # I
    .param p3, "sampleRate"    # I

    .prologue
    const-wide/16 v6, 0x0

    .line 23
    const/4 v0, 0x0

    .line 25
    .local v0, "fingerPrint":[B
    iget-wide v2, p0, Ltv/alphonso/audiocaptureservice/SplitACR;->mFpStart:J

    cmp-long v1, v2, v6

    if-nez v1, :cond_0

    .line 26
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Ltv/alphonso/audiocaptureservice/SplitACR;->mFpStart:J

    .line 29
    :cond_0
    iget-object v1, p0, Ltv/alphonso/audiocaptureservice/SplitACR;->mLocalAudioMatchingToken:[Ljava/lang/String;

    iget v2, p0, Ltv/alphonso/audiocaptureservice/SplitACR;->mCurrentTokenIndex:I

    aget-object v1, v1, v2

    invoke-virtual {p0, v1, p1, p2}, Ltv/alphonso/audiocaptureservice/SplitACR;->acrFingerprintOctet(Ljava/lang/String;[BI)[B

    move-result-object v0

    .line 32
    if-eqz v0, :cond_2

    array-length v1, v0

    if-eqz v1, :cond_2

    .line 35
    iget-wide v2, p0, Ltv/alphonso/audiocaptureservice/SplitACR;->mFpStart:J

    cmp-long v1, v2, v6

    if-eqz v1, :cond_1

    iget-wide v2, p0, Ltv/alphonso/audiocaptureservice/SplitACR;->mFpEnd:J

    cmp-long v1, v2, v6

    if-nez v1, :cond_1

    .line 37
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Ltv/alphonso/audiocaptureservice/SplitACR;->mFpEnd:J

    .line 38
    iget-wide v2, p0, Ltv/alphonso/audiocaptureservice/SplitACR;->mFpEnd:J

    iget-wide v4, p0, Ltv/alphonso/audiocaptureservice/SplitACR;->mFpStart:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Ltv/alphonso/audiocaptureservice/SplitACR;->mFpDelay:J

    .line 39
    sget-boolean v1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->debug:Z

    if-eqz v1, :cond_1

    .line 40
    sget-object v1, Ltv/alphonso/audiocaptureservice/SplitACR;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Delay = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Ltv/alphonso/audiocaptureservice/SplitACR;->mFpDelay:J

    invoke-static {v4, v5}, Ltv/alphonso/utils/Utils;->getDurationAsString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; Fp-size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ltv/alphonso/audiocaptureservice/SplitACR;->mToken:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " timestamp: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Ltv/alphonso/audiocaptureservice/SplitACR;->mAudioBufferTimestampGMT:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    :cond_1
    invoke-virtual {p0, v0, p3}, Ltv/alphonso/audiocaptureservice/SplitACR;->sendFingerprint([BI)V

    .line 45
    iput-wide v6, p0, Ltv/alphonso/audiocaptureservice/SplitACR;->mFpStart:J

    .line 46
    iput-wide v6, p0, Ltv/alphonso/audiocaptureservice/SplitACR;->mFpEnd:J

    .line 49
    :cond_2
    const/4 v1, 0x2

    return v1
.end method

.method protected sendFingerprint([BI)V
    .locals 8
    .param p1, "fingerPrint"    # [B
    .param p2, "sampleRate"    # I

    .prologue
    .line 98
    invoke-virtual {p0}, Ltv/alphonso/audiocaptureservice/SplitACR;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Ltv/alphonso/utils/Utils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 99
    sget-object v4, Ltv/alphonso/audiocaptureservice/SplitACR;->TAG:Ljava/lang/String;

    const-string v5, "Network unavailable."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    iget v4, p0, Ltv/alphonso/audiocaptureservice/SplitACR;->mNumFPsSent:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Ltv/alphonso/audiocaptureservice/SplitACR;->mNumFPsSent:I

    .line 105
    iget-object v4, p0, Ltv/alphonso/audiocaptureservice/SplitACR;->mAudioFPUploadService:Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;

    if-eqz v4, :cond_0

    .line 106
    iget-object v4, p0, Ltv/alphonso/audiocaptureservice/SplitACR;->mAudioFPUploadService:Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;

    iget-object v4, v4, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 108
    .local v0, "msg":Landroid/os/Message;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 109
    .local v1, "params":Landroid/os/Bundle;
    const-string v4, "fp_ctr"

    iget v5, p0, Ltv/alphonso/audiocaptureservice/SplitACR;->mNumFPsSent:I

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 110
    const-string v4, "device_id"

    iget-object v5, p0, Ltv/alphonso/audiocaptureservice/SplitACR;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const-string v4, "fingerprint"

    invoke-virtual {v1, v4, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 112
    const-string v4, "sample_rate"

    int-to-float v5, p2

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 114
    const-wide/16 v2, 0x0

    .line 115
    .local v2, "timestamp":J
    iget v4, p0, Ltv/alphonso/audiocaptureservice/SplitACR;->mNumFPsSent:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4

    .line 117
    sget-boolean v4, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->debug:Z

    if-eqz v4, :cond_2

    .line 118
    sget-object v4, Ltv/alphonso/audiocaptureservice/SplitACR;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Sending AUDIO_FP_CAPTURE_START request to AudioFPUploadService for token: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Ltv/alphonso/audiocaptureservice/SplitACR;->mToken:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :cond_2
    const-string v4, "capture_id"

    iget-object v5, p0, Ltv/alphonso/audiocaptureservice/SplitACR;->mCaptureInstance:Ltv/alphonso/audiocaptureservice/CaptureEntity;

    iget v5, v5, Ltv/alphonso/audiocaptureservice/CaptureEntity;->mCaptureId:I

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 120
    const/4 v4, 0x4

    iput v4, v0, Landroid/os/Message;->what:I

    .line 122
    iget-object v4, p0, Ltv/alphonso/audiocaptureservice/SplitACR;->mCaptureInstance:Ltv/alphonso/audiocaptureservice/CaptureEntity;

    iget-wide v4, v4, Ltv/alphonso/audiocaptureservice/CaptureEntity;->mStartTimestampGMT:J

    iget-wide v6, p0, Ltv/alphonso/audiocaptureservice/SplitACR;->mClockSkew:J

    add-long v2, v4, v6

    .line 124
    sget-boolean v4, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->debug:Z

    if-eqz v4, :cond_3

    .line 125
    sget-object v4, Ltv/alphonso/audiocaptureservice/SplitACR;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "actual: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Ltv/alphonso/audiocaptureservice/SplitACR;->mCaptureInstance:Ltv/alphonso/audiocaptureservice/CaptureEntity;

    iget-wide v6, v6, Ltv/alphonso/audiocaptureservice/CaptureEntity;->mStartTimestampGMT:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; ClockSkew: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Ltv/alphonso/audiocaptureservice/SplitACR;->mClockSkew:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; new: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :cond_3
    const-string v4, "timestamp"

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 128
    const-string v4, "capture_time"

    iget-object v5, p0, Ltv/alphonso/audiocaptureservice/SplitACR;->mAudioCaptureService:Ltv/alphonso/audiocaptureservice/AudioCaptureService;

    iget-wide v6, v5, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCaptureDuration:J

    invoke-virtual {v1, v4, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 138
    :goto_1
    const-string v4, "token"

    iget-object v5, p0, Ltv/alphonso/audiocaptureservice/SplitACR;->mToken:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const-string v4, "record_failure"

    iget-boolean v5, p0, Ltv/alphonso/audiocaptureservice/SplitACR;->mRecordTimeouts:Z

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 140
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 141
    iget-object v4, p0, Ltv/alphonso/audiocaptureservice/SplitACR;->mAudioFPUploadService:Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;

    iget-object v4, v4, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 132
    :cond_4
    iget-wide v4, p0, Ltv/alphonso/audiocaptureservice/SplitACR;->mAudioBufferTimestampGMT:J

    iget-wide v6, p0, Ltv/alphonso/audiocaptureservice/SplitACR;->mClockSkew:J

    add-long v2, v4, v6

    .line 133
    const-string v4, "timestamp"

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 135
    const/4 v4, 0x5

    iput v4, v0, Landroid/os/Message;->what:I

    goto :goto_1
.end method

.method public stop(Ljava/lang/String;)V
    .locals 10
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    const-wide/16 v8, 0x0

    .line 56
    iget-object v4, p0, Ltv/alphonso/audiocaptureservice/SplitACR;->mAudioFPUploadService:Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;

    if-eqz v4, :cond_6

    iget v4, p0, Ltv/alphonso/audiocaptureservice/SplitACR;->mNumFPsSent:I

    if-lez v4, :cond_6

    .line 58
    iget-object v4, p0, Ltv/alphonso/audiocaptureservice/SplitACR;->mAudioFPUploadService:Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;

    iget-object v4, v4, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 60
    .local v0, "msg":Landroid/os/Message;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 61
    .local v1, "params":Landroid/os/Bundle;
    const-string v4, "device_id"

    iget-object v5, p0, Ltv/alphonso/audiocaptureservice/SplitACR;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const-string v4, "Cancelled"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 64
    const-string v4, "result"

    const-string v5, "cancel"

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    :goto_0
    const-string v4, "token"

    iget-object v5, p0, Ltv/alphonso/audiocaptureservice/SplitACR;->mToken:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-static {}, Ltv/alphonso/utils/Utils;->getTimeStamp()J

    move-result-wide v4

    iget-wide v6, p0, Ltv/alphonso/audiocaptureservice/SplitACR;->mClockSkew:J

    add-long v2, v4, v6

    .line 75
    .local v2, "timestamp":J
    const-string v4, "timestamp"

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 76
    const/4 v4, 0x6

    iput v4, v0, Landroid/os/Message;->what:I

    .line 77
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 79
    sget-boolean v4, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->debug:Z

    if-eqz v4, :cond_0

    .line 80
    sget-object v4, Ltv/alphonso/audiocaptureservice/SplitACR;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Sending AUDIO_FP_CAPTURE_END message to AudioFPUploadService for token: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Ltv/alphonso/audiocaptureservice/SplitACR;->mToken:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :cond_0
    iget-object v4, p0, Ltv/alphonso/audiocaptureservice/SplitACR;->mAudioFPUploadService:Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;

    iget-object v4, v4, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 88
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "params":Landroid/os/Bundle;
    .end local v2    # "timestamp":J
    :cond_1
    :goto_1
    const/4 v4, 0x0

    iput v4, p0, Ltv/alphonso/audiocaptureservice/SplitACR;->mNumFPsSent:I

    .line 90
    iput-wide v8, p0, Ltv/alphonso/audiocaptureservice/SplitACR;->mFpStart:J

    .line 91
    iput-wide v8, p0, Ltv/alphonso/audiocaptureservice/SplitACR;->mFpEnd:J

    .line 92
    invoke-super {p0, p1}, Ltv/alphonso/audiocaptureservice/LocalACR;->stop(Ljava/lang/String;)V

    .line 93
    return-void

    .line 65
    .restart local v0    # "msg":Landroid/os/Message;
    .restart local v1    # "params":Landroid/os/Bundle;
    :cond_2
    const-string v4, "Timed_out"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "Final_Time_out"

    .line 66
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 67
    :cond_3
    const-string v4, "result"

    const-string v5, "timeout"

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 68
    :cond_4
    const-string v4, "Interrupted"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 69
    const-string v4, "result"

    const-string v5, "killed"

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 71
    :cond_5
    const-string v4, "result"

    const-string v5, "server_last"

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 84
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "params":Landroid/os/Bundle;
    :cond_6
    sget-boolean v4, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->debug:Z

    if-eqz v4, :cond_1

    .line 85
    sget-object v4, Ltv/alphonso/audiocaptureservice/SplitACR;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Since no FPs sent, suppressing AUDIO_FP_CAPTURE_END for token: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Ltv/alphonso/audiocaptureservice/SplitACR;->mToken:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
