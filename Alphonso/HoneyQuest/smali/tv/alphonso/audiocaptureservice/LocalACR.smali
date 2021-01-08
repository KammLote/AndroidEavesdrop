.class public Ltv/alphonso/audiocaptureservice/LocalACR;
.super Ltv/alphonso/audiocaptureservice/AudioCaptureClient;
.source "LocalACR.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAcrShift:B

.field protected mCurrentTokenIndex:I

.field protected mLocalAudioMatchingToken:[Ljava/lang/String;

.field private mOnBoardAudioDBFileDir:Ljava/lang/String;

.field private mOnBoardAudioDBFilePath:Ljava/lang/String;

.field protected mSuccessResultSuffix:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Ltv/alphonso/audiocaptureservice/LocalACR;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ltv/alphonso/audiocaptureservice/LocalACR;->TAG:Ljava/lang/String;

    .line 272
    const-string v0, "acr"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 273
    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 12
    invoke-direct {p0}, Ltv/alphonso/audiocaptureservice/AudioCaptureClient;-><init>()V

    .line 16
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "LocalACR1"

    aput-object v2, v0, v1

    const-string v1, "LocalACR2"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string v2, "LocalACR3"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "LocalACR4"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "LocalACR5"

    aput-object v2, v0, v1

    iput-object v0, p0, Ltv/alphonso/audiocaptureservice/LocalACR;->mLocalAudioMatchingToken:[Ljava/lang/String;

    .line 17
    const/4 v0, -0x1

    iput v0, p0, Ltv/alphonso/audiocaptureservice/LocalACR;->mCurrentTokenIndex:I

    .line 18
    iput-object v3, p0, Ltv/alphonso/audiocaptureservice/LocalACR;->mSuccessResultSuffix:Ljava/lang/String;

    .line 20
    iput-object v3, p0, Ltv/alphonso/audiocaptureservice/LocalACR;->mOnBoardAudioDBFilePath:Ljava/lang/String;

    .line 21
    iput-object v3, p0, Ltv/alphonso/audiocaptureservice/LocalACR;->mOnBoardAudioDBFileDir:Ljava/lang/String;

    .line 22
    iput-byte v4, p0, Ltv/alphonso/audiocaptureservice/LocalACR;->mAcrShift:B

    return-void
.end method

.method private parseField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "result"    # Ljava/lang/String;

    .prologue
    .line 128
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 131
    .local v2, "startIndex":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v2

    add-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 133
    .local v1, "fieldResult":Ljava/lang/String;
    const/16 v3, 0x22

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 134
    .local v0, "endIndex":I
    const/4 v3, 0x0

    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 136
    return-object v1
.end method


# virtual methods
.method public native acrConfig(II)Ljava/lang/String;
.end method

.method public native acrDestroy()V
.end method

.method public native acrFingerprintOctet(Ljava/lang/String;[BI)[B
.end method

.method public native acrInit(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public native acrLookupFingerprint(Ljava/lang/String;[BI)Ljava/lang/String;
.end method

.method public native acrLookupOctet(Ljava/lang/String;[BI)Ljava/lang/String;
.end method

.method public native acrTokenDestroy(Ljava/lang/String;)V
.end method

.method public native acrTokenNew(Ljava/lang/String;)I
.end method

.method public destroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 97
    invoke-virtual {p0}, Ltv/alphonso/audiocaptureservice/LocalACR;->acrDestroy()V

    .line 98
    invoke-virtual {p0, v0}, Ltv/alphonso/audiocaptureservice/LocalACR;->setOnBoardAudioDBFilePath(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0, v0}, Ltv/alphonso/audiocaptureservice/LocalACR;->setOnBoardAudioDBFileDir(Ljava/lang/String;)V

    .line 100
    iput-object v0, p0, Ltv/alphonso/audiocaptureservice/LocalACR;->mAudioFPUploadService:Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;

    .line 101
    return-void
.end method

.method public getAcrShift()B
    .locals 1

    .prologue
    .line 225
    iget-byte v0, p0, Ltv/alphonso/audiocaptureservice/LocalACR;->mAcrShift:B

    return v0
.end method

.method public getAcrType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 243
    const-string v0, "device"

    return-object v0
.end method

.method public getOnBoardAudioDBFileDir()Ljava/lang/String;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Ltv/alphonso/audiocaptureservice/LocalACR;->mOnBoardAudioDBFileDir:Ljava/lang/String;

    return-object v0
.end method

.method public getOnBoardAudioDBFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Ltv/alphonso/audiocaptureservice/LocalACR;->mOnBoardAudioDBFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getSuccessResultSuffix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Ltv/alphonso/audiocaptureservice/LocalACR;->mSuccessResultSuffix:Ljava/lang/String;

    return-object v0
.end method

.method public init(Ljava/lang/String;Landroid/content/Context;Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;Ltv/alphonso/alphonsoclient/AlphonsoClient;Ltv/alphonso/audiocaptureservice/AudioCaptureService;)V
    .locals 4
    .param p1, "deviceId"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "audioFPUploadService"    # Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;
    .param p4, "alphonsoClient"    # Ltv/alphonso/alphonsoclient/AlphonsoClient;
    .param p5, "audioCaptureService"    # Ltv/alphonso/audiocaptureservice/AudioCaptureService;

    .prologue
    .line 31
    iput-object p3, p0, Ltv/alphonso/audiocaptureservice/LocalACR;->mAudioFPUploadService:Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;

    .line 33
    iput-object p4, p0, Ltv/alphonso/audiocaptureservice/LocalACR;->mAlphonsoClient:Ltv/alphonso/alphonsoclient/AlphonsoClient;

    .line 35
    iput-object p5, p0, Ltv/alphonso/audiocaptureservice/LocalACR;->mAudioCaptureService:Ltv/alphonso/audiocaptureservice/AudioCaptureService;

    .line 37
    invoke-virtual {p0}, Ltv/alphonso/audiocaptureservice/LocalACR;->getOnBoardAudioDBFileDir()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ltv/alphonso/audiocaptureservice/LocalACR;->getOnBoardAudioDBFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Ltv/alphonso/audiocaptureservice/LocalACR;->acrInit(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 38
    .local v0, "retval":I
    sget-boolean v1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->debug:Z

    if-eqz v1, :cond_0

    .line 39
    sget-object v1, Ltv/alphonso/audiocaptureservice/LocalACR;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "retval of acrInit() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    :cond_0
    invoke-virtual {p0, p1}, Ltv/alphonso/audiocaptureservice/LocalACR;->setDeviceId(Ljava/lang/String;)V

    .line 42
    invoke-virtual {p0, p2}, Ltv/alphonso/audiocaptureservice/LocalACR;->setContext(Landroid/content/Context;)V

    .line 43
    return-void
.end method

.method protected processResult(Ljava/lang/String;)B
    .locals 2
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 189
    if-nez p1, :cond_1

    .line 191
    sget-boolean v0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->debug:Z

    if-eqz v0, :cond_0

    .line 192
    sget-object v0, Ltv/alphonso/audiocaptureservice/LocalACR;->TAG:Ljava/lang/String;

    const-string v1, "NULL return from acr-lookup"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :cond_0
    const/4 v0, 0x1

    .line 203
    :goto_0
    return v0

    .line 195
    :cond_1
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 197
    const/4 v0, 0x2

    goto :goto_0

    .line 201
    :cond_2
    invoke-virtual {p0, p1}, Ltv/alphonso/audiocaptureservice/LocalACR;->sendAudioCaptureResult(Ljava/lang/String;)V

    .line 203
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public send([BII)B
    .locals 3
    .param p1, "bytes"    # [B
    .param p2, "numBytes"    # I
    .param p3, "sampleRate"    # I

    .prologue
    .line 67
    const/4 v0, 0x0

    .line 68
    .local v0, "result":Ljava/lang/String;
    iget-object v1, p0, Ltv/alphonso/audiocaptureservice/LocalACR;->mLocalAudioMatchingToken:[Ljava/lang/String;

    iget v2, p0, Ltv/alphonso/audiocaptureservice/LocalACR;->mCurrentTokenIndex:I

    aget-object v1, v1, v2

    invoke-virtual {p0, v1, p1, p2}, Ltv/alphonso/audiocaptureservice/LocalACR;->acrLookupOctet(Ljava/lang/String;[BI)Ljava/lang/String;

    move-result-object v0

    .line 70
    invoke-virtual {p0, v0}, Ltv/alphonso/audiocaptureservice/LocalACR;->processResult(Ljava/lang/String;)B

    move-result v1

    return v1
.end method

.method protected sendAudioCaptureResult(Ljava/lang/String;)V
    .locals 10
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 106
    const-string v6, "title"

    invoke-direct {p0, v6, p1}, Ltv/alphonso/audiocaptureservice/LocalACR;->parseField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 107
    .local v5, "title":Ljava/lang/String;
    const-string v6, "logo_filename"

    invoke-direct {p0, v6, p1}, Ltv/alphonso/audiocaptureservice/LocalACR;->parseField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 108
    .local v1, "logo_filename":Ljava/lang/String;
    const-string v6, "content_id"

    invoke-direct {p0, v6, p1}, Ltv/alphonso/audiocaptureservice/LocalACR;->parseField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 110
    .local v2, "content_id":J
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 111
    .local v4, "temp":Ljava/lang/String;
    const-string v6, "\\."

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-virtual {p0, v6}, Ltv/alphonso/audiocaptureservice/LocalACR;->setSuccessResultSuffix(Ljava/lang/String;)V

    .line 113
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 114
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v6, "title"

    invoke-virtual {v0, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const-string v6, "logo_filename"

    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const-string v6, "acr_type"

    const-string v7, "ACR_LOCAL"

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const-string v6, "capture_id"

    iget-object v7, p0, Ltv/alphonso/audiocaptureservice/LocalACR;->mCaptureInstance:Ltv/alphonso/audiocaptureservice/CaptureEntity;

    iget v7, v7, Ltv/alphonso/audiocaptureservice/CaptureEntity;->mCaptureId:I

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 118
    const-string v6, "content_id"

    invoke-virtual {v0, v6, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 119
    const-string v6, "timestamp"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    invoke-virtual {v0, v6, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 123
    return-void
.end method

.method public setAcrShift(B)V
    .locals 0
    .param p1, "mAcrShift"    # B

    .prologue
    .line 229
    iput-byte p1, p0, Ltv/alphonso/audiocaptureservice/LocalACR;->mAcrShift:B

    .line 230
    return-void
.end method

.method public setOnBoardAudioDBFileDir(Ljava/lang/String;)V
    .locals 0
    .param p1, "mOnBoardAudioDBFileDir"    # Ljava/lang/String;

    .prologue
    .line 221
    iput-object p1, p0, Ltv/alphonso/audiocaptureservice/LocalACR;->mOnBoardAudioDBFileDir:Ljava/lang/String;

    .line 222
    return-void
.end method

.method public setOnBoardAudioDBFilePath(Ljava/lang/String;)V
    .locals 0
    .param p1, "mOnBoardAudioDBFilePath"    # Ljava/lang/String;

    .prologue
    .line 213
    iput-object p1, p0, Ltv/alphonso/audiocaptureservice/LocalACR;->mOnBoardAudioDBFilePath:Ljava/lang/String;

    .line 214
    return-void
.end method

.method public setSuccessResultSuffix(Ljava/lang/String;)V
    .locals 0
    .param p1, "mSuccessResultSuffix"    # Ljava/lang/String;

    .prologue
    .line 237
    iput-object p1, p0, Ltv/alphonso/audiocaptureservice/LocalACR;->mSuccessResultSuffix:Ljava/lang/String;

    .line 238
    return-void
.end method

.method public start(Ltv/alphonso/audiocaptureservice/CaptureEntity;)V
    .locals 4
    .param p1, "captureInstance"    # Ltv/alphonso/audiocaptureservice/CaptureEntity;

    .prologue
    .line 48
    iget v0, p0, Ltv/alphonso/audiocaptureservice/LocalACR;->mCurrentTokenIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ltv/alphonso/audiocaptureservice/LocalACR;->mCurrentTokenIndex:I

    .line 49
    iget v0, p0, Ltv/alphonso/audiocaptureservice/LocalACR;->mCurrentTokenIndex:I

    rem-int/lit8 v0, v0, 0x5

    iput v0, p0, Ltv/alphonso/audiocaptureservice/LocalACR;->mCurrentTokenIndex:I

    .line 51
    iget-object v0, p0, Ltv/alphonso/audiocaptureservice/LocalACR;->mLocalAudioMatchingToken:[Ljava/lang/String;

    iget v1, p0, Ltv/alphonso/audiocaptureservice/LocalACR;->mCurrentTokenIndex:I

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Ltv/alphonso/audiocaptureservice/LocalACR;->acrTokenNew(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    sget-object v0, Ltv/alphonso/audiocaptureservice/LocalACR;->TAG:Ljava/lang/String;

    const-string v1, "Error from acrTokenNew()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :cond_0
    iput-object p1, p0, Ltv/alphonso/audiocaptureservice/LocalACR;->mCaptureInstance:Ltv/alphonso/audiocaptureservice/CaptureEntity;

    .line 56
    iget-object v0, p0, Ltv/alphonso/audiocaptureservice/LocalACR;->mCaptureInstance:Ltv/alphonso/audiocaptureservice/CaptureEntity;

    invoke-virtual {p0}, Ltv/alphonso/audiocaptureservice/LocalACR;->getAcrType()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Ltv/alphonso/audiocaptureservice/CaptureEntity;->mAcrTypeForAudioFilename:Ljava/lang/String;

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ltv/alphonso/audiocaptureservice/LocalACR;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltv/alphonso/audiocaptureservice/LocalACR;->mCaptureInstance:Ltv/alphonso/audiocaptureservice/CaptureEntity;

    iget-wide v2, v1, Ltv/alphonso/audiocaptureservice/CaptureEntity;->mStartTimestampGMT:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltv/alphonso/audiocaptureservice/LocalACR;->mToken:Ljava/lang/String;

    .line 61
    iget-object v0, p0, Ltv/alphonso/audiocaptureservice/LocalACR;->mCaptureInstance:Ltv/alphonso/audiocaptureservice/CaptureEntity;

    iget-object v1, p0, Ltv/alphonso/audiocaptureservice/LocalACR;->mToken:Ljava/lang/String;

    iput-object v1, v0, Ltv/alphonso/audiocaptureservice/CaptureEntity;->mToken:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public stop(Ljava/lang/String;)V
    .locals 3
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 76
    iget-object v0, p0, Ltv/alphonso/audiocaptureservice/LocalACR;->mLocalAudioMatchingToken:[Ljava/lang/String;

    iget v1, p0, Ltv/alphonso/audiocaptureservice/LocalACR;->mCurrentTokenIndex:I

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Ltv/alphonso/audiocaptureservice/LocalACR;->acrTokenDestroy(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0}, Ltv/alphonso/audiocaptureservice/LocalACR;->getSuccessResultSuffix()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "Cancelled"

    .line 80
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Timed_out"

    .line 81
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Final_Time_out"

    .line 82
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Interrupted"

    .line 83
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    invoke-virtual {p0, p1}, Ltv/alphonso/audiocaptureservice/LocalACR;->setSuccessResultSuffix(Ljava/lang/String;)V

    .line 87
    :cond_0
    invoke-virtual {p0, p1}, Ltv/alphonso/audiocaptureservice/LocalACR;->uploadAudioFileIfRequired(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0, v2}, Ltv/alphonso/audiocaptureservice/LocalACR;->setSuccessResultSuffix(Ljava/lang/String;)V

    .line 91
    iput-object v2, p0, Ltv/alphonso/audiocaptureservice/LocalACR;->mCaptureInstance:Ltv/alphonso/audiocaptureservice/CaptureEntity;

    .line 92
    return-void
.end method

.method public uploadAudioFileIfRequired(Ljava/lang/String;)V
    .locals 7
    .param p1, "resultSuffix"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0x5f

    .line 146
    invoke-virtual {p0}, Ltv/alphonso/audiocaptureservice/LocalACR;->getOnBoardAudioDBFileDir()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 147
    invoke-virtual {p0}, Ltv/alphonso/audiocaptureservice/LocalACR;->isAudioFileUpload()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 148
    invoke-virtual {p0}, Ltv/alphonso/audiocaptureservice/LocalACR;->getSuccessResultSuffix()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    .line 149
    :cond_0
    invoke-virtual {p0}, Ltv/alphonso/audiocaptureservice/LocalACR;->isAudioFileUploadTimedout()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 150
    invoke-virtual {p0}, Ltv/alphonso/audiocaptureservice/LocalACR;->getSuccessResultSuffix()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    .line 152
    :cond_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 154
    .local v1, "params":Landroid/os/Bundle;
    const-string v3, "device_id"

    iget-object v4, p0, Ltv/alphonso/audiocaptureservice/LocalACR;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    const-string v3, "start_time"

    iget-object v4, p0, Ltv/alphonso/audiocaptureservice/LocalACR;->mCaptureInstance:Ltv/alphonso/audiocaptureservice/CaptureEntity;

    iget-object v4, v4, Ltv/alphonso/audiocaptureservice/CaptureEntity;->mStartTimeYYMMDD:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    const-string v3, "acr_type"

    invoke-virtual {p0}, Ltv/alphonso/audiocaptureservice/LocalACR;->getAcrType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    const-string v3, "token"

    iget-object v4, p0, Ltv/alphonso/audiocaptureservice/LocalACR;->mToken:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const/4 v2, 0x0

    .line 160
    .local v2, "suffix":Ljava/lang/String;
    invoke-virtual {p0}, Ltv/alphonso/audiocaptureservice/LocalACR;->getSuccessResultSuffix()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 161
    invoke-virtual {p0}, Ltv/alphonso/audiocaptureservice/LocalACR;->getSuccessResultSuffix()Ljava/lang/String;

    move-result-object v2

    .line 167
    :goto_0
    const/16 v3, 0x20

    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    .line 170
    const/16 v3, 0x26

    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    .line 172
    const-string v3, "result_suffix"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    const-string v3, "filename"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ltv/alphonso/audiocaptureservice/LocalACR;->getOnBoardAudioDBFileDir()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Ltv/alphonso/audiocaptureservice/LocalACR;->mLocalAudioMatchingToken:[Ljava/lang/String;

    iget v6, p0, Ltv/alphonso/audiocaptureservice/LocalACR;->mCurrentTokenIndex:I

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".audio.raw"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    iget-object v3, p0, Ltv/alphonso/audiocaptureservice/LocalACR;->mAlphonsoClient:Ltv/alphonso/alphonsoclient/AlphonsoClient;

    iget-object v3, v3, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 177
    .local v0, "msg":Landroid/os/Message;
    const/16 v3, 0x8

    iput v3, v0, Landroid/os/Message;->what:I

    .line 178
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 180
    sget-boolean v3, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->debug:Z

    if-eqz v3, :cond_2

    .line 181
    sget-object v3, Ltv/alphonso/audiocaptureservice/LocalACR;->TAG:Ljava/lang/String;

    const-string v4, "Sending AUDIO_CLIP_UPLOAD message to AlphonsoClient Service"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :cond_2
    iget-object v3, p0, Ltv/alphonso/audiocaptureservice/LocalACR;->mAlphonsoClient:Ltv/alphonso/alphonsoclient/AlphonsoClient;

    iget-object v3, v3, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 184
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "params":Landroid/os/Bundle;
    .end local v2    # "suffix":Ljava/lang/String;
    :cond_3
    return-void

    .line 164
    .restart local v1    # "params":Landroid/os/Bundle;
    .restart local v2    # "suffix":Ljava/lang/String;
    :cond_4
    move-object v2, p1

    goto :goto_0
.end method
