.class public Ltv/alphonso/audiocaptureservice/RecorderThread;
.super Ljava/lang/Object;
.source "RecorderThread.java"


# static fields
.field private static final FAIL:B = 0x1t

.field private static final RECORDER_AUDIO_BYTES_PER_SEC:I = 0x3e80

.field private static final RECORDER_AUDIO_ENCODING:I = 0x2

.field private static final RECORDER_BIG_BUFFER_MULTIPLIER:I = 0x10

.field private static final RECORDER_CHANNELS:I = 0x10

.field private static final RECORDER_SAMPLERATE_44100:I = 0xac44

.field private static final RECORDER_SAMPLERATE_8000:I = 0x1f40

.field private static final RECORDER_SMALL_BUFFER_MULTIPLIER:I = 0x4

.field public static final RECORDER_STATE_NULL:I = 0x0

.field public static final RECORDER_STATE_PREPARED:I = 0x1

.field public static final RECORDER_STATE_RECORDING:I = 0x2

.field private static final SUCCESS:B

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private clients:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ltv/alphonso/audiocaptureservice/AudioCaptureClient;",
            ">;"
        }
    .end annotation
.end field

.field private mMinBufferSizeBytes:I

.field private mNumPacketsSent:I

.field public mPreBuffer:Ltv/alphonso/audiocaptureservice/FifoBuffer;

.field public mPreBufferSize:I

.field public mRecorder:Landroid/media/AudioRecord;

.field private mSampleRate:I

.field public mState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Ltv/alphonso/audiocaptureservice/RecorderThread;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ltv/alphonso/audiocaptureservice/RecorderThread;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object v2, p0, Ltv/alphonso/audiocaptureservice/RecorderThread;->mRecorder:Landroid/media/AudioRecord;

    .line 38
    iput v1, p0, Ltv/alphonso/audiocaptureservice/RecorderThread;->mState:I

    .line 39
    const v0, 0xac44

    iput v0, p0, Ltv/alphonso/audiocaptureservice/RecorderThread;->mSampleRate:I

    .line 40
    iput v1, p0, Ltv/alphonso/audiocaptureservice/RecorderThread;->mMinBufferSizeBytes:I

    .line 41
    iput v1, p0, Ltv/alphonso/audiocaptureservice/RecorderThread;->mNumPacketsSent:I

    .line 43
    iput v1, p0, Ltv/alphonso/audiocaptureservice/RecorderThread;->mPreBufferSize:I

    .line 44
    new-instance v0, Ltv/alphonso/audiocaptureservice/FifoBuffer;

    invoke-direct {v0}, Ltv/alphonso/audiocaptureservice/FifoBuffer;-><init>()V

    iput-object v0, p0, Ltv/alphonso/audiocaptureservice/RecorderThread;->mPreBuffer:Ltv/alphonso/audiocaptureservice/FifoBuffer;

    .line 46
    iput-object v2, p0, Ltv/alphonso/audiocaptureservice/RecorderThread;->clients:Landroid/util/SparseArray;

    .line 16
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Ltv/alphonso/audiocaptureservice/RecorderThread;->clients:Landroid/util/SparseArray;

    .line 17
    return-void
.end method


# virtual methods
.method public addClient(ILtv/alphonso/audiocaptureservice/AudioCaptureClient;)V
    .locals 3
    .param p1, "acrType"    # I
    .param p2, "client"    # Ltv/alphonso/audiocaptureservice/AudioCaptureClient;

    .prologue
    .line 287
    sget-boolean v0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->debug:Z

    if-eqz v0, :cond_0

    .line 288
    sget-object v0, Ltv/alphonso/audiocaptureservice/RecorderThread;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adding client of acrType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    :cond_0
    iget-object v0, p0, Ltv/alphonso/audiocaptureservice/RecorderThread;->clients:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 290
    return-void
.end method

.method public cleanupAudioRecorder()V
    .locals 3

    .prologue
    .line 145
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Ltv/alphonso/audiocaptureservice/RecorderThread;->clients:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 147
    iget-object v1, p0, Ltv/alphonso/audiocaptureservice/RecorderThread;->clients:Landroid/util/SparseArray;

    iget-object v2, p0, Ltv/alphonso/audiocaptureservice/RecorderThread;->clients:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltv/alphonso/audiocaptureservice/AudioCaptureClient;

    invoke-virtual {v1}, Ltv/alphonso/audiocaptureservice/AudioCaptureClient;->destroy()V

    .line 145
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 151
    :cond_0
    iget-object v1, p0, Ltv/alphonso/audiocaptureservice/RecorderThread;->clients:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 153
    iget-object v1, p0, Ltv/alphonso/audiocaptureservice/RecorderThread;->mRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->release()V

    .line 154
    const/4 v1, 0x0

    iput-object v1, p0, Ltv/alphonso/audiocaptureservice/RecorderThread;->mRecorder:Landroid/media/AudioRecord;

    .line 155
    return-void
.end method

.method public continueRecording()V
    .locals 0

    .prologue
    .line 130
    invoke-virtual {p0}, Ltv/alphonso/audiocaptureservice/RecorderThread;->readRecorder()V

    .line 131
    return-void
.end method

.method public deleteClient(I)V
    .locals 4
    .param p1, "acrType"    # I

    .prologue
    .line 295
    iget-object v1, p0, Ltv/alphonso/audiocaptureservice/RecorderThread;->clients:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/alphonso/audiocaptureservice/AudioCaptureClient;

    .line 297
    .local v0, "client":Ltv/alphonso/audiocaptureservice/AudioCaptureClient;
    if-eqz v0, :cond_1

    .line 298
    sget-boolean v1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->debug:Z

    if-eqz v1, :cond_0

    .line 299
    sget-object v1, Ltv/alphonso/audiocaptureservice/RecorderThread;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleting client of acrType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    :cond_0
    iget-object v1, p0, Ltv/alphonso/audiocaptureservice/RecorderThread;->clients:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 301
    invoke-virtual {v0}, Ltv/alphonso/audiocaptureservice/AudioCaptureClient;->destroy()V

    .line 303
    :cond_1
    return-void
.end method

.method public destroyRecorder()V
    .locals 0

    .prologue
    .line 58
    invoke-virtual {p0}, Ltv/alphonso/audiocaptureservice/RecorderThread;->cleanupAudioRecorder()V

    .line 59
    return-void
.end method

.method public getCurrentPreBufferSizeInMS()I
    .locals 2

    .prologue
    .line 351
    iget-object v0, p0, Ltv/alphonso/audiocaptureservice/RecorderThread;->mPreBuffer:Ltv/alphonso/audiocaptureservice/FifoBuffer;

    invoke-virtual {v0}, Ltv/alphonso/audiocaptureservice/FifoBuffer;->getCurrentSize()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x467a0000    # 16000.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Ltv/alphonso/audiocaptureservice/RecorderThread;->mState:I

    return v0
.end method

.method public prepareRecorder()V
    .locals 1

    .prologue
    .line 63
    invoke-virtual {p0}, Ltv/alphonso/audiocaptureservice/RecorderThread;->getState()I

    move-result v0

    if-nez v0, :cond_0

    .line 65
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ltv/alphonso/audiocaptureservice/RecorderThread;->setState(I)V

    .line 67
    iget-object v0, p0, Ltv/alphonso/audiocaptureservice/RecorderThread;->mRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    .line 71
    :cond_0
    return-void
.end method

.method public readRecorder()V
    .locals 14

    .prologue
    .line 214
    const/4 v5, 0x0

    .line 215
    .local v5, "read":I
    iget v10, p0, Ltv/alphonso/audiocaptureservice/RecorderThread;->mMinBufferSizeBytes:I

    mul-int/lit8 v8, v10, 0x4

    .line 216
    .local v8, "shortBufferSizeBytes":I
    new-array v7, v8, [B

    .line 218
    .local v7, "shortBuffer":[B
    invoke-virtual {p0}, Ltv/alphonso/audiocaptureservice/RecorderThread;->getState()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_0

    .line 220
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v10, p0, Ltv/alphonso/audiocaptureservice/RecorderThread;->clients:Landroid/util/SparseArray;

    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v10

    if-ge v4, v10, :cond_0

    .line 221
    iget-object v10, p0, Ltv/alphonso/audiocaptureservice/RecorderThread;->clients:Landroid/util/SparseArray;

    iget-object v11, p0, Ltv/alphonso/audiocaptureservice/RecorderThread;->clients:Landroid/util/SparseArray;

    invoke-virtual {v11, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ltv/alphonso/audiocaptureservice/AudioCaptureClient;

    invoke-static {}, Ltv/alphonso/utils/Utils;->getTimeStamp()J

    move-result-wide v12

    iput-wide v12, v10, Ltv/alphonso/audiocaptureservice/AudioCaptureClient;->mAudioBufferTimestampGMT:J

    .line 220
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 226
    .end local v4    # "i":I
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 227
    .local v0, "curTime1":J
    iget-object v10, p0, Ltv/alphonso/audiocaptureservice/RecorderThread;->mRecorder:Landroid/media/AudioRecord;

    const/4 v11, 0x0

    invoke-virtual {v10, v7, v11, v8}, Landroid/media/AudioRecord;->read([BII)I

    move-result v5

    .line 229
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    sub-long v2, v10, v0

    .line 236
    .local v2, "delay":J
    if-lez v5, :cond_1

    if-eq v5, v8, :cond_1

    .line 238
    new-array v9, v5, [B

    .line 239
    .local v9, "temp":[B
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v7, v10, v9, v11, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 241
    move-object v7, v9

    .line 242
    move v8, v5

    .line 246
    .end local v9    # "temp":[B
    :cond_1
    invoke-virtual {p0}, Ltv/alphonso/audiocaptureservice/RecorderThread;->getState()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_6

    .line 248
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_1
    iget-object v10, p0, Ltv/alphonso/audiocaptureservice/RecorderThread;->clients:Landroid/util/SparseArray;

    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v10

    if-ge v4, v10, :cond_2

    .line 250
    iget-object v10, p0, Ltv/alphonso/audiocaptureservice/RecorderThread;->clients:Landroid/util/SparseArray;

    iget-object v11, p0, Ltv/alphonso/audiocaptureservice/RecorderThread;->clients:Landroid/util/SparseArray;

    invoke-virtual {v11, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ltv/alphonso/audiocaptureservice/AudioCaptureClient;

    iget v11, p0, Ltv/alphonso/audiocaptureservice/RecorderThread;->mSampleRate:I

    invoke-virtual {v10, v7, v8, v11}, Ltv/alphonso/audiocaptureservice/AudioCaptureClient;->send([BII)B

    move-result v6

    .line 252
    .local v6, "retval":B
    const/4 v10, 0x1

    if-ne v6, v10, :cond_4

    .line 254
    sget-object v10, Ltv/alphonso/audiocaptureservice/RecorderThread;->TAG:Ljava/lang/String;

    const-string v11, "Error from AudioCaptureClient."

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    .end local v6    # "retval":B
    :cond_2
    :goto_2
    iget v10, p0, Ltv/alphonso/audiocaptureservice/RecorderThread;->mNumPacketsSent:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Ltv/alphonso/audiocaptureservice/RecorderThread;->mNumPacketsSent:I

    .line 282
    .end local v4    # "i":I
    :cond_3
    :goto_3
    return-void

    .line 257
    .restart local v4    # "i":I
    .restart local v6    # "retval":B
    :cond_4
    if-nez v6, :cond_5

    .line 260
    const-string v10, "Success"

    invoke-virtual {p0, v10}, Ltv/alphonso/audiocaptureservice/RecorderThread;->stopRecording(Ljava/lang/String;)V

    goto :goto_2

    .line 248
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 270
    .end local v4    # "i":I
    .end local v6    # "retval":B
    :cond_6
    iget v10, p0, Ltv/alphonso/audiocaptureservice/RecorderThread;->mPreBufferSize:I

    if-lez v10, :cond_7

    .line 272
    iget-object v10, p0, Ltv/alphonso/audiocaptureservice/RecorderThread;->mPreBuffer:Ltv/alphonso/audiocaptureservice/FifoBuffer;

    invoke-virtual {v10, v7, v8}, Ltv/alphonso/audiocaptureservice/FifoBuffer;->push([BI)V

    .line 274
    sget-boolean v10, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->debug:Z

    if-eqz v10, :cond_3

    .line 275
    sget-object v10, Ltv/alphonso/audiocaptureservice/RecorderThread;->TAG:Ljava/lang/String;

    const-string v11, "Pushing audio-pkt into fifo, Recorder not in RECORDER_STATE_RECORDING state."

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 279
    :cond_7
    sget-boolean v10, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->debug:Z

    if-eqz v10, :cond_3

    .line 280
    sget-object v10, Ltv/alphonso/audiocaptureservice/RecorderThread;->TAG:Ljava/lang/String;

    const-string v11, "Dumping audio-pkt, Recorder not in RECORDER_STATE_RECORDING state."

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public setAudioCaptureUploadOnClient(Z)V
    .locals 3
    .param p1, "upload"    # Z

    .prologue
    .line 307
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Ltv/alphonso/audiocaptureservice/RecorderThread;->clients:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 309
    iget-object v1, p0, Ltv/alphonso/audiocaptureservice/RecorderThread;->clients:Landroid/util/SparseArray;

    iget-object v2, p0, Ltv/alphonso/audiocaptureservice/RecorderThread;->clients:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltv/alphonso/audiocaptureservice/AudioCaptureClient;

    iput-boolean p1, v1, Ltv/alphonso/audiocaptureservice/AudioCaptureClient;->mAudioFileUpload:Z

    .line 307
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 311
    :cond_0
    return-void
.end method

.method public setAudioCaptureUploadTimedoutOnClient(Z)V
    .locals 3
    .param p1, "upload"    # Z

    .prologue
    .line 315
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Ltv/alphonso/audiocaptureservice/RecorderThread;->clients:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 317
    iget-object v1, p0, Ltv/alphonso/audiocaptureservice/RecorderThread;->clients:Landroid/util/SparseArray;

    iget-object v2, p0, Ltv/alphonso/audiocaptureservice/RecorderThread;->clients:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltv/alphonso/audiocaptureservice/AudioCaptureClient;

    iput-boolean p1, v1, Ltv/alphonso/audiocaptureservice/AudioCaptureClient;->mAudioFileUploadTimedout:Z

    .line 315
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 319
    :cond_0
    return-void
.end method

.method public setClockSkewOnClient(J)V
    .locals 5
    .param p1, "clockSkew"    # J

    .prologue
    .line 331
    sget-boolean v1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->debug:Z

    if-eqz v1, :cond_0

    .line 332
    sget-object v1, Ltv/alphonso/audiocaptureservice/RecorderThread;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clockSkew being set as: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Ltv/alphonso/audiocaptureservice/RecorderThread;->clients:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 335
    iget-object v1, p0, Ltv/alphonso/audiocaptureservice/RecorderThread;->clients:Landroid/util/SparseArray;

    iget-object v2, p0, Ltv/alphonso/audiocaptureservice/RecorderThread;->clients:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltv/alphonso/audiocaptureservice/AudioCaptureClient;

    iput-wide p1, v1, Ltv/alphonso/audiocaptureservice/AudioCaptureClient;->mClockSkew:J

    .line 333
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 337
    :cond_1
    return-void
.end method

.method public setPreBufferSize(I)V
    .locals 2
    .param p1, "preBufferSize"    # I

    .prologue
    .line 341
    iget v0, p0, Ltv/alphonso/audiocaptureservice/RecorderThread;->mPreBufferSize:I

    if-eq v0, p1, :cond_0

    .line 343
    iput p1, p0, Ltv/alphonso/audiocaptureservice/RecorderThread;->mPreBufferSize:I

    .line 345
    iget-object v0, p0, Ltv/alphonso/audiocaptureservice/RecorderThread;->mPreBuffer:Ltv/alphonso/audiocaptureservice/FifoBuffer;

    iget v1, p0, Ltv/alphonso/audiocaptureservice/RecorderThread;->mPreBufferSize:I

    div-int/lit16 v1, v1, 0x3e8

    mul-int/lit16 v1, v1, 0x3e80

    invoke-virtual {v0, v1}, Ltv/alphonso/audiocaptureservice/FifoBuffer;->setSizeLimit(I)V

    .line 347
    :cond_0
    return-void
.end method

.method public setRecordTimeoutstOnClient(Z)V
    .locals 3
    .param p1, "recordTimeouts"    # Z

    .prologue
    .line 323
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Ltv/alphonso/audiocaptureservice/RecorderThread;->clients:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 325
    iget-object v1, p0, Ltv/alphonso/audiocaptureservice/RecorderThread;->clients:Landroid/util/SparseArray;

    iget-object v2, p0, Ltv/alphonso/audiocaptureservice/RecorderThread;->clients:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltv/alphonso/audiocaptureservice/AudioCaptureClient;

    iput-boolean p1, v1, Ltv/alphonso/audiocaptureservice/AudioCaptureClient;->mRecordTimeouts:Z

    .line 323
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 327
    :cond_0
    return-void
.end method

.method public setState(I)V
    .locals 0
    .param p1, "mState"    # I

    .prologue
    .line 53
    iput p1, p0, Ltv/alphonso/audiocaptureservice/RecorderThread;->mState:I

    .line 54
    return-void
.end method

.method public setupAudioRecorder()V
    .locals 2

    .prologue
    .line 135
    invoke-virtual {p0}, Ltv/alphonso/audiocaptureservice/RecorderThread;->setupSampleRate()B

    move-result v0

    if-nez v0, :cond_0

    .line 136
    invoke-virtual {p0}, Ltv/alphonso/audiocaptureservice/RecorderThread;->setupAudioRecorderInstance()B

    move-result v0

    if-nez v0, :cond_0

    .line 138
    sget-boolean v0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->debug:Z

    if-eqz v0, :cond_0

    .line 139
    sget-object v0, Ltv/alphonso/audiocaptureservice/RecorderThread;->TAG:Ljava/lang/String;

    const-string v1, "setupAudioRecorder() SUCCESS!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :cond_0
    return-void
.end method

.method public setupAudioRecorderInstance()B
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 191
    :try_start_0
    new-instance v0, Landroid/media/AudioRecord;

    const/4 v1, 0x1

    iget v2, p0, Ltv/alphonso/audiocaptureservice/RecorderThread;->mSampleRate:I

    const/16 v3, 0x10

    const/4 v4, 0x2

    iget v5, p0, Ltv/alphonso/audiocaptureservice/RecorderThread;->mMinBufferSizeBytes:I

    mul-int/lit8 v5, v5, 0x10

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v0, p0, Ltv/alphonso/audiocaptureservice/RecorderThread;->mRecorder:Landroid/media/AudioRecord;

    .line 197
    iget-object v0, p0, Ltv/alphonso/audiocaptureservice/RecorderThread;->mRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v0

    if-eq v0, v7, :cond_0

    .line 198
    sget-object v0, Ltv/alphonso/audiocaptureservice/RecorderThread;->TAG:Ljava/lang/String;

    const-string v1, "AudioCaptureSetup Failure: Could not initialize the AudioRecroder."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v7

    .line 209
    :goto_0
    return v0

    .line 201
    :catch_0
    move-exception v6

    .line 202
    .local v6, "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    iput-object v0, p0, Ltv/alphonso/audiocaptureservice/RecorderThread;->mRecorder:Landroid/media/AudioRecord;

    .line 203
    sget-object v0, Ltv/alphonso/audiocaptureservice/RecorderThread;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AudioCaptureSetup Failure: Could not initialize the AudioRecroder."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v7

    .line 204
    goto :goto_0

    .line 207
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_0
    sget-boolean v0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->debug:Z

    if-eqz v0, :cond_1

    .line 208
    sget-object v0, Ltv/alphonso/audiocaptureservice/RecorderThread;->TAG:Ljava/lang/String;

    const-string v1, "AudioCaptureSetup SUCCESS!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setupSampleRate()B
    .locals 3

    .prologue
    .line 169
    sget-boolean v0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->debug:Z

    if-eqz v0, :cond_0

    .line 170
    sget-object v0, Ltv/alphonso/audiocaptureservice/RecorderThread;->TAG:Ljava/lang/String;

    const-string v1, "AudioCaptureSetup : Could not set sample rate to 44.1K, trying for 8K."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :cond_0
    const/16 v0, 0x1f40

    iput v0, p0, Ltv/alphonso/audiocaptureservice/RecorderThread;->mSampleRate:I

    .line 172
    iget v0, p0, Ltv/alphonso/audiocaptureservice/RecorderThread;->mSampleRate:I

    const/16 v1, 0x10

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    iput v0, p0, Ltv/alphonso/audiocaptureservice/RecorderThread;->mMinBufferSizeBytes:I

    .line 176
    iget v0, p0, Ltv/alphonso/audiocaptureservice/RecorderThread;->mMinBufferSizeBytes:I

    if-gez v0, :cond_1

    .line 177
    sget-object v0, Ltv/alphonso/audiocaptureservice/RecorderThread;->TAG:Ljava/lang/String;

    const-string v1, "AudioCaptureSetup Failure: Could not get a proper mMinBufferSizeBytes."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    const/4 v0, 0x1

    .line 184
    :goto_0
    return v0

    .line 180
    :cond_1
    sget-boolean v0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->debug:Z

    if-eqz v0, :cond_2

    .line 181
    sget-object v0, Ltv/alphonso/audiocaptureservice/RecorderThread;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AudioCaptureSetup : mMinBufferSizeBytes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ltv/alphonso/audiocaptureservice/RecorderThread;->mMinBufferSizeBytes:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startRecording(Ltv/alphonso/audiocaptureservice/CaptureEntity;)V
    .locals 6
    .param p1, "captureInstance"    # Ltv/alphonso/audiocaptureservice/CaptureEntity;

    .prologue
    .line 85
    invoke-virtual {p0}, Ltv/alphonso/audiocaptureservice/RecorderThread;->getState()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 87
    const/4 v3, 0x0

    iput v3, p0, Ltv/alphonso/audiocaptureservice/RecorderThread;->mNumPacketsSent:I

    .line 89
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Ltv/alphonso/audiocaptureservice/RecorderThread;->clients:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 91
    iget-object v3, p0, Ltv/alphonso/audiocaptureservice/RecorderThread;->clients:Landroid/util/SparseArray;

    iget-object v4, p0, Ltv/alphonso/audiocaptureservice/RecorderThread;->clients:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ltv/alphonso/audiocaptureservice/AudioCaptureClient;

    invoke-virtual {v3, p1}, Ltv/alphonso/audiocaptureservice/AudioCaptureClient;->start(Ltv/alphonso/audiocaptureservice/CaptureEntity;)V

    .line 93
    iget v3, p0, Ltv/alphonso/audiocaptureservice/RecorderThread;->mPreBufferSize:I

    if-lez v3, :cond_1

    iget-object v3, p0, Ltv/alphonso/audiocaptureservice/RecorderThread;->mPreBuffer:Ltv/alphonso/audiocaptureservice/FifoBuffer;

    .line 94
    invoke-virtual {v3}, Ltv/alphonso/audiocaptureservice/FifoBuffer;->getCurrentSize()I

    move-result v3

    if-lez v3, :cond_1

    .line 96
    const/4 v1, 0x0

    .local v1, "clientIdx":I
    :goto_1
    iget-object v3, p0, Ltv/alphonso/audiocaptureservice/RecorderThread;->clients:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 98
    iget-object v3, p0, Ltv/alphonso/audiocaptureservice/RecorderThread;->mPreBuffer:Ltv/alphonso/audiocaptureservice/FifoBuffer;

    invoke-virtual {v3}, Ltv/alphonso/audiocaptureservice/FifoBuffer;->getByteArray()[B

    move-result-object v0

    .line 100
    .local v0, "array":[B
    sget-boolean v3, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->debug:Z

    if-eqz v3, :cond_0

    .line 101
    sget-object v3, Ltv/alphonso/audiocaptureservice/RecorderThread;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pre-buffered audio pkt: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_0
    iget-object v3, p0, Ltv/alphonso/audiocaptureservice/RecorderThread;->clients:Landroid/util/SparseArray;

    iget-object v4, p0, Ltv/alphonso/audiocaptureservice/RecorderThread;->clients:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ltv/alphonso/audiocaptureservice/AudioCaptureClient;

    array-length v4, v0

    iget v5, p0, Ltv/alphonso/audiocaptureservice/RecorderThread;->mSampleRate:I

    invoke-virtual {v3, v0, v4, v5}, Ltv/alphonso/audiocaptureservice/AudioCaptureClient;->send([BII)B

    .line 96
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 89
    .end local v0    # "array":[B
    .end local v1    # "clientIdx":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 108
    :cond_2
    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Ltv/alphonso/audiocaptureservice/RecorderThread;->setState(I)V

    .line 110
    .end local v2    # "i":I
    :cond_3
    return-void
.end method

.method public stopRecording(Ljava/lang/String;)V
    .locals 4
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 114
    invoke-virtual {p0}, Ltv/alphonso/audiocaptureservice/RecorderThread;->getState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 116
    sget-boolean v1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->debug:Z

    if-eqz v1, :cond_0

    .line 117
    sget-object v1, Ltv/alphonso/audiocaptureservice/RecorderThread;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "numOfPackets sent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Ltv/alphonso/audiocaptureservice/RecorderThread;->mNumPacketsSent:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Ltv/alphonso/audiocaptureservice/RecorderThread;->clients:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 121
    iget-object v1, p0, Ltv/alphonso/audiocaptureservice/RecorderThread;->clients:Landroid/util/SparseArray;

    iget-object v2, p0, Ltv/alphonso/audiocaptureservice/RecorderThread;->clients:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltv/alphonso/audiocaptureservice/AudioCaptureClient;

    invoke-virtual {v1, p1}, Ltv/alphonso/audiocaptureservice/AudioCaptureClient;->stop(Ljava/lang/String;)V

    .line 119
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 124
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ltv/alphonso/audiocaptureservice/RecorderThread;->setState(I)V

    .line 126
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method public unPrepareRecorder()V
    .locals 2

    .prologue
    .line 75
    invoke-virtual {p0}, Ltv/alphonso/audiocaptureservice/RecorderThread;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 77
    iget-object v0, p0, Ltv/alphonso/audiocaptureservice/RecorderThread;->mRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    .line 79
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ltv/alphonso/audiocaptureservice/RecorderThread;->setState(I)V

    .line 81
    :cond_0
    return-void
.end method

.method public updateDeviceIdParams(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 356
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Ltv/alphonso/audiocaptureservice/RecorderThread;->clients:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 358
    iget-object v1, p0, Ltv/alphonso/audiocaptureservice/RecorderThread;->clients:Landroid/util/SparseArray;

    iget-object v2, p0, Ltv/alphonso/audiocaptureservice/RecorderThread;->clients:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltv/alphonso/audiocaptureservice/AudioCaptureClient;

    invoke-virtual {v1, p1}, Ltv/alphonso/audiocaptureservice/AudioCaptureClient;->updateDeviceIdParams(Landroid/os/Bundle;)V

    .line 356
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 360
    :cond_0
    return-void
.end method
