.class public abstract Ltv/alphonso/audiocaptureservice/AudioCaptureClient;
.super Ljava/lang/Object;
.source "AudioCaptureClient.java"


# static fields
.field protected static final CONTINUE:B = 0x2t

.field protected static final FAIL:B = 0x1t

.field protected static final SUCCESS:B


# instance fields
.field protected mAlphonsoClient:Ltv/alphonso/alphonsoclient/AlphonsoClient;

.field public mAudioBufferTimestampGMT:J

.field protected mAudioCaptureService:Ltv/alphonso/audiocaptureservice/AudioCaptureService;

.field protected mAudioFPUploadService:Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;

.field protected mAudioFileUpload:Z

.field protected mAudioFileUploadTimedout:Z

.field protected mCaptureInstance:Ltv/alphonso/audiocaptureservice/CaptureEntity;

.field public mClockSkew:J

.field protected mContext:Landroid/content/Context;

.field protected mDeviceId:Ljava/lang/String;

.field protected mRecordTimeouts:Z

.field protected mToken:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureClient;->mDeviceId:Ljava/lang/String;

    .line 12
    iput-object v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureClient;->mContext:Landroid/content/Context;

    .line 13
    iput-boolean v1, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureClient;->mAudioFileUpload:Z

    .line 14
    iput-boolean v1, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureClient;->mAudioFileUploadTimedout:Z

    .line 15
    iput-object v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureClient;->mCaptureInstance:Ltv/alphonso/audiocaptureservice/CaptureEntity;

    .line 16
    iput-object v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureClient;->mAudioFPUploadService:Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;

    .line 17
    iput-object v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureClient;->mAlphonsoClient:Ltv/alphonso/alphonsoclient/AlphonsoClient;

    .line 18
    iput-boolean v1, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureClient;->mRecordTimeouts:Z

    .line 19
    iput-object v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureClient;->mToken:Ljava/lang/String;

    .line 20
    iput-wide v2, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureClient;->mAudioBufferTimestampGMT:J

    .line 21
    iput-object v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureClient;->mAudioCaptureService:Ltv/alphonso/audiocaptureservice/AudioCaptureService;

    .line 22
    iput-wide v2, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureClient;->mClockSkew:J

    return-void
.end method


# virtual methods
.method public abstract destroy()V
.end method

.method public abstract getAcrType()Ljava/lang/String;
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureClient;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public abstract init(Ljava/lang/String;Landroid/content/Context;Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;Ltv/alphonso/alphonsoclient/AlphonsoClient;Ltv/alphonso/audiocaptureservice/AudioCaptureService;)V
.end method

.method public isAudioFileUpload()Z
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureClient;->mAudioFileUpload:Z

    return v0
.end method

.method public isAudioFileUploadTimedout()Z
    .locals 1

    .prologue
    .line 64
    iget-boolean v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureClient;->mAudioFileUploadTimedout:Z

    return v0
.end method

.method public isRecordTimeouts()Z
    .locals 1

    .prologue
    .line 76
    iget-boolean v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureClient;->mRecordTimeouts:Z

    return v0
.end method

.method public abstract send([BII)B
.end method

.method public setAudioFileUpload(Z)V
    .locals 0
    .param p1, "mAudioFileUpload"    # Z

    .prologue
    .line 68
    iput-boolean p1, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureClient;->mAudioFileUpload:Z

    .line 69
    return-void
.end method

.method public setAudioFileUploadTimedout(Z)V
    .locals 0
    .param p1, "mAudioFileUploadTimedout"    # Z

    .prologue
    .line 72
    iput-boolean p1, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureClient;->mAudioFileUploadTimedout:Z

    .line 73
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 56
    iput-object p1, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureClient;->mContext:Landroid/content/Context;

    .line 57
    return-void
.end method

.method public setDeviceId(Ljava/lang/String;)V
    .locals 0
    .param p1, "mDeviceId"    # Ljava/lang/String;

    .prologue
    .line 48
    iput-object p1, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureClient;->mDeviceId:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setRecordTimeouts(Z)V
    .locals 0
    .param p1, "recordTimeouts"    # Z

    .prologue
    .line 80
    iput-boolean p1, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureClient;->mRecordTimeouts:Z

    .line 81
    return-void
.end method

.method public abstract start(Ltv/alphonso/audiocaptureservice/CaptureEntity;)V
.end method

.method public abstract stop(Ljava/lang/String;)V
.end method

.method public updateDeviceIdParams(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 85
    const-string v0, "device_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltv/alphonso/audiocaptureservice/AudioCaptureClient;->setDeviceId(Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method public abstract uploadAudioFileIfRequired(Ljava/lang/String;)V
.end method
