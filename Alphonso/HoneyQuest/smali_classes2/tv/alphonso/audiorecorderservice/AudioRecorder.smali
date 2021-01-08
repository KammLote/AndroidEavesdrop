.class public Ltv/alphonso/audiorecorderservice/AudioRecorder;
.super Ljava/lang/Object;
.source "AudioRecorder.java"


# static fields
.field private static final FAIL:B = 0x1t

.field private static final RECORDER_AUDIO_ENCODING:I = 0x2

.field private static final RECORDER_BIG_BUFFER_MULTIPLIER:I = 0x10

.field private static final RECORDER_CHANNELS:I = 0x10

.field private static final RECORDER_SAMPLERATE_44100:I = 0xac44

.field private static final RECORDER_SAMPLERATE_8000:I = 0x1f40

.field private static final RECORDER_SMALL_BUFFER_MULTIPLIER:I = 0x4

.field private static final SUCCESS:B

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mClients:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Messenger;",
            ">;"
        }
    .end annotation
.end field

.field private mMinBufferSizeBytes:I

.field private mNumPacketsSent:I

.field private mRecorder:Landroid/media/AudioRecord;

.field private mSampleRate:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Ltv/alphonso/audiorecorderservice/AudioRecorder;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ltv/alphonso/audiorecorderservice/AudioRecorder;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Messenger;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "clients":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Messenger;>;"
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object v0, p0, Ltv/alphonso/audiorecorderservice/AudioRecorder;->mRecorder:Landroid/media/AudioRecord;

    .line 29
    iput-object v0, p0, Ltv/alphonso/audiorecorderservice/AudioRecorder;->mClients:Ljava/util/ArrayList;

    .line 30
    const v0, 0xac44

    iput v0, p0, Ltv/alphonso/audiorecorderservice/AudioRecorder;->mSampleRate:I

    .line 31
    iput v1, p0, Ltv/alphonso/audiorecorderservice/AudioRecorder;->mMinBufferSizeBytes:I

    .line 32
    iput v1, p0, Ltv/alphonso/audiorecorderservice/AudioRecorder;->mNumPacketsSent:I

    .line 37
    iput-object p1, p0, Ltv/alphonso/audiorecorderservice/AudioRecorder;->mClients:Ljava/util/ArrayList;

    .line 38
    return-void
.end method

.method private sendAudioPktToClients([B)V
    .locals 5
    .param p1, "shortBuffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 148
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Ltv/alphonso/audiorecorderservice/AudioRecorder;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 150
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 152
    .local v2, "params":Landroid/os/Bundle;
    const-string v3, "audio_pkt"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 153
    const-string v3, "sample_rate"

    iget v4, p0, Ltv/alphonso/audiorecorderservice/AudioRecorder;->mSampleRate:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 155
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 156
    .local v1, "msg":Landroid/os/Message;
    const/16 v3, 0x20

    iput v3, v1, Landroid/os/Message;->what:I

    .line 157
    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 159
    iget-object v3, p0, Ltv/alphonso/audiorecorderservice/AudioRecorder;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Messenger;

    invoke-virtual {v3, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 148
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 161
    .end local v1    # "msg":Landroid/os/Message;
    .end local v2    # "params":Landroid/os/Bundle;
    :cond_0
    return-void
.end method


# virtual methods
.method public cleanupAudioRecorder()V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Ltv/alphonso/audiorecorderservice/AudioRecorder;->mRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    .line 54
    iget-object v0, p0, Ltv/alphonso/audiorecorderservice/AudioRecorder;->mRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Ltv/alphonso/audiorecorderservice/AudioRecorder;->mRecorder:Landroid/media/AudioRecord;

    .line 56
    return-void
.end method

.method public continueRecording()V
    .locals 0

    .prologue
    .line 106
    invoke-virtual {p0}, Ltv/alphonso/audiorecorderservice/AudioRecorder;->readRecorder()V

    .line 107
    return-void
.end method

.method public readRecorder()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 112
    const/4 v1, 0x0

    .line 113
    .local v1, "read":I
    iget v5, p0, Ltv/alphonso/audiorecorderservice/AudioRecorder;->mMinBufferSizeBytes:I

    mul-int/lit8 v3, v5, 0x4

    .line 114
    .local v3, "shortBufferSizeBytes":I
    new-array v2, v3, [B

    .line 117
    .local v2, "shortBuffer":[B
    iget-object v5, p0, Ltv/alphonso/audiorecorderservice/AudioRecorder;->mRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v5, v2, v6, v3}, Landroid/media/AudioRecord;->read([BII)I

    move-result v1

    .line 122
    if-lez v1, :cond_0

    if-eq v1, v3, :cond_0

    .line 125
    new-array v4, v1, [B

    .line 126
    .local v4, "temp":[B
    invoke-static {v2, v6, v4, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 128
    move-object v2, v4

    .line 129
    move v3, v1

    .line 135
    .end local v4    # "temp":[B
    :cond_0
    :try_start_0
    invoke-direct {p0, v2}, Ltv/alphonso/audiorecorderservice/AudioRecorder;->sendAudioPktToClients([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    :goto_0
    iget v5, p0, Ltv/alphonso/audiorecorderservice/AudioRecorder;->mNumPacketsSent:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Ltv/alphonso/audiorecorderservice/AudioRecorder;->mNumPacketsSent:I

    .line 143
    sget-object v5, Ltv/alphonso/audiorecorderservice/AudioRecorder;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mNumPacketsSent = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Ltv/alphonso/audiorecorderservice/AudioRecorder;->mNumPacketsSent:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    return-void

    .line 137
    :catch_0
    move-exception v0

    .line 139
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setupAudioRecorder()V
    .locals 2

    .prologue
    .line 42
    invoke-virtual {p0}, Ltv/alphonso/audiorecorderservice/AudioRecorder;->setupSampleRate()B

    move-result v0

    if-nez v0, :cond_0

    .line 43
    invoke-virtual {p0}, Ltv/alphonso/audiorecorderservice/AudioRecorder;->setupAudioRecorderInstance()B

    move-result v0

    if-nez v0, :cond_0

    .line 45
    sget-object v0, Ltv/alphonso/audiorecorderservice/AudioRecorder;->TAG:Ljava/lang/String;

    const-string v1, "setupAudioRecorder() SUCCESS!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    :cond_0
    iget-object v0, p0, Ltv/alphonso/audiorecorderservice/AudioRecorder;->mRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    .line 49
    return-void
.end method

.method public setupAudioRecorderInstance()B
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 80
    :try_start_0
    new-instance v0, Landroid/media/AudioRecord;

    const/4 v1, 0x1

    iget v2, p0, Ltv/alphonso/audiorecorderservice/AudioRecorder;->mSampleRate:I

    const/16 v3, 0x10

    const/4 v4, 0x2

    iget v5, p0, Ltv/alphonso/audiorecorderservice/AudioRecorder;->mMinBufferSizeBytes:I

    mul-int/lit8 v5, v5, 0x10

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v0, p0, Ltv/alphonso/audiorecorderservice/AudioRecorder;->mRecorder:Landroid/media/AudioRecord;

    .line 86
    iget-object v0, p0, Ltv/alphonso/audiorecorderservice/AudioRecorder;->mRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v0

    if-eq v0, v7, :cond_0

    .line 88
    sget-object v0, Ltv/alphonso/audiorecorderservice/AudioRecorder;->TAG:Ljava/lang/String;

    const-string v1, "setupAudioRecorderInstance() Failure: Could not initialize the AudioRecroder."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v7

    .line 100
    :goto_0
    return v0

    .line 92
    :catch_0
    move-exception v6

    .line 94
    .local v6, "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    iput-object v0, p0, Ltv/alphonso/audiorecorderservice/AudioRecorder;->mRecorder:Landroid/media/AudioRecord;

    .line 95
    sget-object v0, Ltv/alphonso/audiorecorderservice/AudioRecorder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setupAudioRecorderInstance() Failure: Could not initialize the AudioRecroder."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v7

    .line 96
    goto :goto_0

    .line 99
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_0
    sget-object v0, Ltv/alphonso/audiorecorderservice/AudioRecorder;->TAG:Ljava/lang/String;

    const-string v1, "setupAudioRecorderInstance() SUCCESS!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setupSampleRate()B
    .locals 3

    .prologue
    .line 60
    sget-object v0, Ltv/alphonso/audiorecorderservice/AudioRecorder;->TAG:Ljava/lang/String;

    const-string v1, "setupSampleRate() : Could not set sample rate to 44.1K, trying for 8K."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    const/16 v0, 0x1f40

    iput v0, p0, Ltv/alphonso/audiorecorderservice/AudioRecorder;->mSampleRate:I

    .line 62
    iget v0, p0, Ltv/alphonso/audiorecorderservice/AudioRecorder;->mSampleRate:I

    const/16 v1, 0x10

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    iput v0, p0, Ltv/alphonso/audiorecorderservice/AudioRecorder;->mMinBufferSizeBytes:I

    .line 66
    iget v0, p0, Ltv/alphonso/audiorecorderservice/AudioRecorder;->mMinBufferSizeBytes:I

    if-gez v0, :cond_0

    .line 68
    sget-object v0, Ltv/alphonso/audiorecorderservice/AudioRecorder;->TAG:Ljava/lang/String;

    const-string v1, "setupSampleRate() Failure: Could not get a proper mMinBufferSizeBytes."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    const/4 v0, 0x1

    .line 72
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
