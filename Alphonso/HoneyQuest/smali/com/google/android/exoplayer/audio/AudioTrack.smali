.class public final Lcom/google/android/exoplayer/audio/AudioTrack;
.super Ljava/lang/Object;
.source "AudioTrack.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtilV23;,
        Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtilV19;,
        Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;,
        Lcom/google/android/exoplayer/audio/AudioTrack$InvalidAudioTrackTimestampException;,
        Lcom/google/android/exoplayer/audio/AudioTrack$WriteException;,
        Lcom/google/android/exoplayer/audio/AudioTrack$InitializationException;
    }
.end annotation


# static fields
.field private static final BUFFER_MULTIPLICATION_FACTOR:I = 0x4

.field public static final CURRENT_POSITION_NOT_SET:J = -0x8000000000000000L

.field private static final MAX_AUDIO_TIMESTAMP_OFFSET_US:J = 0x4c4b40L

.field private static final MAX_BUFFER_DURATION_US:J = 0xb71b0L

.field private static final MAX_LATENCY_US:J = 0x4c4b40L

.field private static final MAX_PLAYHEAD_OFFSET_COUNT:I = 0xa

.field private static final MIN_BUFFER_DURATION_US:J = 0x3d090L

.field private static final MIN_PLAYHEAD_OFFSET_SAMPLE_INTERVAL_US:I = 0x7530

.field private static final MIN_TIMESTAMP_SAMPLE_INTERVAL_US:I = 0x7a120

.field private static final PASSTHROUGH_BUFFER_DURATION_US:J = 0x3d090L

.field public static final RESULT_BUFFER_CONSUMED:I = 0x2

.field public static final RESULT_POSITION_DISCONTINUITY:I = 0x1

.field public static final SESSION_ID_NOT_SET:I = 0x0

.field private static final START_IN_SYNC:I = 0x1

.field private static final START_NEED_SYNC:I = 0x2

.field private static final START_NOT_SET:I = 0x0

.field private static final TAG:Ljava/lang/String; = "AudioTrack"

.field public static enablePreV21AudioSessionWorkaround:Z

.field public static failOnSpuriousAudioTimestamp:Z


# instance fields
.field private final audioCapabilities:Lcom/google/android/exoplayer/audio/AudioCapabilities;

.field private audioTimestampSet:Z

.field private audioTrack:Landroid/media/AudioTrack;

.field private final audioTrackUtil:Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;

.field private bufferBytesRemaining:I

.field private bufferSize:I

.field private bufferSizeUs:J

.field private channelConfig:I

.field private encoding:I

.field private framesPerEncodedSample:I

.field private getLatencyMethod:Ljava/lang/reflect/Method;

.field private keepSessionIdAudioTrack:Landroid/media/AudioTrack;

.field private lastPlayheadSampleTimeUs:J

.field private lastTimestampSampleTimeUs:J

.field private latencyUs:J

.field private nextPlayheadOffsetIndex:I

.field private passthrough:Z

.field private pcmFrameSize:I

.field private playheadOffsetCount:I

.field private final playheadOffsets:[J

.field private final releasingConditionVariable:Landroid/os/ConditionVariable;

.field private resumeSystemTimeUs:J

.field private sampleRate:I

.field private smoothedPlayheadOffsetUs:J

.field private startMediaTimeState:I

.field private startMediaTimeUs:J

.field private final streamType:I

.field private submittedEncodedFrames:J

.field private submittedPcmBytes:J

.field private temporaryBuffer:[B

.field private temporaryBufferOffset:I

.field private volume:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 179
    sput-boolean v0, Lcom/google/android/exoplayer/audio/AudioTrack;->enablePreV21AudioSessionWorkaround:Z

    .line 188
    sput-boolean v0, Lcom/google/android/exoplayer/audio/AudioTrack;->failOnSpuriousAudioTimestamp:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 235
    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer/audio/AudioTrack;-><init>(Lcom/google/android/exoplayer/audio/AudioCapabilities;I)V

    .line 236
    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer/audio/AudioCapabilities;I)V
    .locals 4
    .param p1, "audioCapabilities"    # Lcom/google/android/exoplayer/audio/AudioCapabilities;
    .param p2, "streamType"    # I

    .prologue
    const/4 v3, 0x0

    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 245
    iput-object p1, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioCapabilities:Lcom/google/android/exoplayer/audio/AudioCapabilities;

    .line 246
    iput p2, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->streamType:I

    .line 247
    new-instance v0, Landroid/os/ConditionVariable;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/ConditionVariable;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->releasingConditionVariable:Landroid/os/ConditionVariable;

    .line 248
    sget v0, Lcom/google/android/exoplayer/util/Util;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 250
    :try_start_0
    const-class v1, Landroid/media/AudioTrack;

    const-string v2, "getLatency"

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->getLatencyMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    :cond_0
    :goto_0
    sget v0, Lcom/google/android/exoplayer/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 257
    new-instance v0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtilV23;

    invoke-direct {v0}, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtilV23;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrackUtil:Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;

    .line 263
    :goto_1
    const/16 v0, 0xa

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->playheadOffsets:[J

    .line 264
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->volume:F

    .line 265
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->startMediaTimeState:I

    .line 266
    return-void

    .line 258
    :cond_1
    sget v0, Lcom/google/android/exoplayer/util/Util;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_2

    .line 259
    new-instance v0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtilV19;

    invoke-direct {v0}, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtilV19;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrackUtil:Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;

    goto :goto_1

    .line 261
    :cond_2
    new-instance v0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;

    invoke-direct {v0, v3}, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;-><init>(Lcom/google/android/exoplayer/audio/AudioTrack$1;)V

    iput-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrackUtil:Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;

    goto :goto_1

    .line 252
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/google/android/exoplayer/audio/AudioTrack;)Landroid/os/ConditionVariable;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/exoplayer/audio/AudioTrack;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->releasingConditionVariable:Landroid/os/ConditionVariable;

    return-object v0
.end method

.method private checkAudioTrackInitialized()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/audio/AudioTrack$InitializationException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 890
    iget-object v1, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->getState()I

    move-result v0

    .line 891
    .local v0, "state":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 892
    return-void

    .line 896
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 901
    iput-object v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    .line 904
    :goto_0
    new-instance v1, Lcom/google/android/exoplayer/audio/AudioTrack$InitializationException;

    iget v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->sampleRate:I

    iget v3, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->channelConfig:I

    iget v4, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->bufferSize:I

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/google/android/exoplayer/audio/AudioTrack$InitializationException;-><init>(IIII)V

    throw v1

    .line 897
    :catch_0
    move-exception v1

    .line 901
    iput-object v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    goto :goto_0

    :catchall_0
    move-exception v1

    iput-object v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    throw v1
.end method

.method private durationUsToFrames(J)J
    .locals 5
    .param p1, "durationUs"    # J

    .prologue
    .line 916
    iget v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->sampleRate:I

    int-to-long v0, v0

    mul-long/2addr v0, p1

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private framesToDurationUs(J)J
    .locals 5
    .param p1, "frameCount"    # J

    .prologue
    .line 912
    const-wide/32 v0, 0xf4240

    mul-long/2addr v0, p1

    iget v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->sampleRate:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private static getEncodingForMimeType(Ljava/lang/String;)I
    .locals 3
    .param p0, "mimeType"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 953
    const/4 v1, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 963
    :goto_1
    return v0

    .line 953
    :sswitch_0
    const-string v2, "audio/ac3"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v1, v0

    goto :goto_0

    :sswitch_1
    const-string v2, "audio/eac3"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string v2, "audio/vnd.dts"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :sswitch_3
    const-string v2, "audio/vnd.dts.hd"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    .line 955
    :pswitch_0
    const/4 v0, 0x5

    goto :goto_1

    .line 957
    :pswitch_1
    const/4 v0, 0x6

    goto :goto_1

    .line 959
    :pswitch_2
    const/4 v0, 0x7

    goto :goto_1

    .line 961
    :pswitch_3
    const/16 v0, 0x8

    goto :goto_1

    .line 953
    :sswitch_data_0
    .sparse-switch
        -0x41455b98 -> :sswitch_2
        0xb269698 -> :sswitch_0
        0x59ae0c65 -> :sswitch_1
        0x59c2dc42 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static getFramesPerEncodedSample(ILjava/nio/ByteBuffer;)I
    .locals 3
    .param p0, "encoding"    # I
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 968
    const/4 v0, 0x7

    if-eq p0, v0, :cond_0

    const/16 v0, 0x8

    if-ne p0, v0, :cond_1

    .line 969
    :cond_0
    invoke-static {p1}, Lcom/google/android/exoplayer/util/DtsUtil;->parseDtsAudioSampleCount(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 973
    :goto_0
    return v0

    .line 970
    :cond_1
    const/4 v0, 0x5

    if-ne p0, v0, :cond_2

    .line 971
    invoke-static {}, Lcom/google/android/exoplayer/util/Ac3Util;->getAc3SyncframeAudioSampleCount()I

    move-result v0

    goto :goto_0

    .line 972
    :cond_2
    const/4 v0, 0x6

    if-ne p0, v0, :cond_3

    .line 973
    invoke-static {p1}, Lcom/google/android/exoplayer/util/Ac3Util;->parseEAc3SyncframeAudioSampleCount(Ljava/nio/ByteBuffer;)I

    move-result v0

    goto :goto_0

    .line 975
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected audio encoding: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getSubmittedFrames()J
    .locals 2

    .prologue
    .line 920
    iget-boolean v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->passthrough:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->submittedEncodedFrames:J

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->submittedPcmBytes:J

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer/audio/AudioTrack;->pcmBytesToFrames(J)J

    move-result-wide v0

    goto :goto_0
.end method

.method private hasCurrentPositionUs()Z
    .locals 1

    .prologue
    .line 795
    invoke-virtual {p0}, Lcom/google/android/exoplayer/audio/AudioTrack;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->startMediaTimeState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private maybeSampleSyncParams()V
    .locals 20

    .prologue
    .line 802
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrackUtil:Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;

    invoke-virtual {v9}, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;->getPlaybackHeadPositionUs()J

    move-result-wide v10

    .line 803
    .local v10, "playbackPositionUs":J
    const-wide/16 v14, 0x0

    cmp-long v9, v10, v14

    if-nez v9, :cond_1

    .line 880
    :cond_0
    :goto_0
    return-void

    .line 807
    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v14

    const-wide/16 v16, 0x3e8

    div-long v12, v14, v16

    .line 808
    .local v12, "systemClockUs":J
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->lastPlayheadSampleTimeUs:J

    sub-long v14, v12, v14

    const-wide/16 v16, 0x7530

    cmp-long v9, v14, v16

    if-ltz v9, :cond_3

    .line 810
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->playheadOffsets:[J

    move-object/from16 v0, p0

    iget v14, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->nextPlayheadOffsetIndex:I

    sub-long v16, v10, v12

    aput-wide v16, v9, v14

    .line 811
    move-object/from16 v0, p0

    iget v9, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->nextPlayheadOffsetIndex:I

    add-int/lit8 v9, v9, 0x1

    rem-int/lit8 v9, v9, 0xa

    move-object/from16 v0, p0

    iput v9, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->nextPlayheadOffsetIndex:I

    .line 812
    move-object/from16 v0, p0

    iget v9, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->playheadOffsetCount:I

    const/16 v14, 0xa

    if-ge v9, v14, :cond_2

    .line 813
    move-object/from16 v0, p0

    iget v9, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->playheadOffsetCount:I

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, p0

    iput v9, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->playheadOffsetCount:I

    .line 815
    :cond_2
    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->lastPlayheadSampleTimeUs:J

    .line 816
    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->smoothedPlayheadOffsetUs:J

    .line 817
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget v9, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->playheadOffsetCount:I

    if-ge v7, v9, :cond_3

    .line 818
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->smoothedPlayheadOffsetUs:J

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->playheadOffsets:[J

    aget-wide v16, v9, v7

    move-object/from16 v0, p0

    iget v9, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->playheadOffsetCount:I

    int-to-long v0, v9

    move-wide/from16 v18, v0

    div-long v16, v16, v18

    add-long v14, v14, v16

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->smoothedPlayheadOffsetUs:J

    .line 817
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 822
    .end local v7    # "i":I
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer/audio/AudioTrack;->needsPassthroughWorkarounds()Z

    move-result v9

    if-nez v9, :cond_0

    .line 828
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->lastTimestampSampleTimeUs:J

    sub-long v14, v12, v14

    const-wide/32 v16, 0x7a120

    cmp-long v9, v14, v16

    if-ltz v9, :cond_0

    .line 829
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrackUtil:Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;

    invoke-virtual {v9}, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;->updateTimestamp()Z

    move-result v9

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTimestampSet:Z

    .line 830
    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTimestampSet:Z

    if-eqz v9, :cond_4

    .line 832
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrackUtil:Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;

    invoke-virtual {v9}, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;->getTimestampNanoTime()J

    move-result-wide v14

    const-wide/16 v16, 0x3e8

    div-long v4, v14, v16

    .line 833
    .local v4, "audioTimestampUs":J
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrackUtil:Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;

    invoke-virtual {v9}, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;->getTimestampFramePosition()J

    move-result-wide v2

    .line 834
    .local v2, "audioTimestampFramePosition":J
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->resumeSystemTimeUs:J

    cmp-long v9, v4, v14

    if-gez v9, :cond_6

    .line 836
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTimestampSet:Z

    .line 860
    .end local v2    # "audioTimestampFramePosition":J
    .end local v4    # "audioTimestampUs":J
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->getLatencyMethod:Ljava/lang/reflect/Method;

    if-eqz v9, :cond_5

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->passthrough:Z

    if-nez v9, :cond_5

    .line 864
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->getLatencyMethod:Ljava/lang/reflect/Method;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    const/4 v9, 0x0

    check-cast v9, [Ljava/lang/Object;

    invoke-virtual {v14, v15, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    int-to-long v14, v9

    const-wide/16 v16, 0x3e8

    mul-long v14, v14, v16

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->bufferSizeUs:J

    move-wide/from16 v16, v0

    sub-long v14, v14, v16

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->latencyUs:J

    .line 867
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->latencyUs:J

    const-wide/16 v16, 0x0

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->latencyUs:J

    .line 869
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->latencyUs:J

    const-wide/32 v16, 0x4c4b40

    cmp-long v9, v14, v16

    if-lez v9, :cond_5

    .line 870
    const-string v9, "AudioTrack"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Ignoring impossibly large audio latency: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->latencyUs:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v9, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->latencyUs:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 878
    :cond_5
    :goto_3
    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->lastTimestampSampleTimeUs:J

    goto/16 :goto_0

    .line 837
    .restart local v2    # "audioTimestampFramePosition":J
    .restart local v4    # "audioTimestampUs":J
    :cond_6
    sub-long v14, v4, v12

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(J)J

    move-result-wide v14

    const-wide/32 v16, 0x4c4b40

    cmp-long v9, v14, v16

    if-lez v9, :cond_8

    .line 839
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Spurious audio timestamp (system clock mismatch): "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v14, ", "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v14, ", "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v14, ", "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 842
    .local v8, "message":Ljava/lang/String;
    sget-boolean v9, Lcom/google/android/exoplayer/audio/AudioTrack;->failOnSpuriousAudioTimestamp:Z

    if-eqz v9, :cond_7

    .line 843
    new-instance v9, Lcom/google/android/exoplayer/audio/AudioTrack$InvalidAudioTrackTimestampException;

    invoke-direct {v9, v8}, Lcom/google/android/exoplayer/audio/AudioTrack$InvalidAudioTrackTimestampException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 845
    :cond_7
    const-string v9, "AudioTrack"

    invoke-static {v9, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTimestampSet:Z

    goto/16 :goto_2

    .line 847
    .end local v8    # "message":Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/google/android/exoplayer/audio/AudioTrack;->framesToDurationUs(J)J

    move-result-wide v14

    sub-long/2addr v14, v10

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(J)J

    move-result-wide v14

    const-wide/32 v16, 0x4c4b40

    cmp-long v9, v14, v16

    if-lez v9, :cond_4

    .line 850
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Spurious audio timestamp (frame position mismatch): "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v14, ", "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v14, ", "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v14, ", "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 853
    .restart local v8    # "message":Ljava/lang/String;
    sget-boolean v9, Lcom/google/android/exoplayer/audio/AudioTrack;->failOnSpuriousAudioTimestamp:Z

    if-eqz v9, :cond_9

    .line 854
    new-instance v9, Lcom/google/android/exoplayer/audio/AudioTrack$InvalidAudioTrackTimestampException;

    invoke-direct {v9, v8}, Lcom/google/android/exoplayer/audio/AudioTrack$InvalidAudioTrackTimestampException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 856
    :cond_9
    const-string v9, "AudioTrack"

    invoke-static {v9, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTimestampSet:Z

    goto/16 :goto_2

    .line 873
    .end local v2    # "audioTimestampFramePosition":J
    .end local v4    # "audioTimestampUs":J
    .end local v8    # "message":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 875
    .local v6, "e":Ljava/lang/Exception;
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->getLatencyMethod:Ljava/lang/reflect/Method;

    goto/16 :goto_3
.end method

.method private needsPassthroughWorkarounds()Z
    .locals 2

    .prologue
    .line 937
    sget v0, Lcom/google/android/exoplayer/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_1

    iget v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->encoding:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->encoding:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private overrideHasPendingData()Z
    .locals 2

    .prologue
    .line 947
    invoke-direct {p0}, Lcom/google/android/exoplayer/audio/AudioTrack;->needsPassthroughWorkarounds()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private pcmBytesToFrames(J)J
    .locals 3
    .param p1, "byteCount"    # J

    .prologue
    .line 908
    iget v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->pcmFrameSize:I

    int-to-long v0, v0

    div-long v0, p1, v0

    return-wide v0
.end method

.method private releaseKeepSessionIdAudioTrack()V
    .locals 2

    .prologue
    .line 776
    iget-object v1, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->keepSessionIdAudioTrack:Landroid/media/AudioTrack;

    if-nez v1, :cond_0

    .line 789
    :goto_0
    return-void

    .line 781
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->keepSessionIdAudioTrack:Landroid/media/AudioTrack;

    .line 782
    .local v0, "toRelease":Landroid/media/AudioTrack;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->keepSessionIdAudioTrack:Landroid/media/AudioTrack;

    .line 783
    new-instance v1, Lcom/google/android/exoplayer/audio/AudioTrack$2;

    invoke-direct {v1, p0, v0}, Lcom/google/android/exoplayer/audio/AudioTrack$2;-><init>(Lcom/google/android/exoplayer/audio/AudioTrack;Landroid/media/AudioTrack;)V

    invoke-virtual {v1}, Lcom/google/android/exoplayer/audio/AudioTrack$2;->start()V

    goto :goto_0
.end method

.method private resetSyncParams()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 924
    iput-wide v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->smoothedPlayheadOffsetUs:J

    .line 925
    iput v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->playheadOffsetCount:I

    .line 926
    iput v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->nextPlayheadOffsetIndex:I

    .line 927
    iput-wide v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->lastPlayheadSampleTimeUs:J

    .line 928
    iput-boolean v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTimestampSet:Z

    .line 929
    iput-wide v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->lastTimestampSampleTimeUs:J

    .line 930
    return-void
.end method

.method private setAudioTrackVolume()V
    .locals 2

    .prologue
    .line 698
    invoke-virtual {p0}, Lcom/google/android/exoplayer/audio/AudioTrack;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 705
    :goto_0
    return-void

    .line 700
    :cond_0
    sget v0, Lcom/google/android/exoplayer/util/Util;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 701
    iget-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    iget v1, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->volume:F

    invoke-static {v0, v1}, Lcom/google/android/exoplayer/audio/AudioTrack;->setAudioTrackVolumeV21(Landroid/media/AudioTrack;F)V

    goto :goto_0

    .line 703
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    iget v1, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->volume:F

    invoke-static {v0, v1}, Lcom/google/android/exoplayer/audio/AudioTrack;->setAudioTrackVolumeV3(Landroid/media/AudioTrack;F)V

    goto :goto_0
.end method

.method private static setAudioTrackVolumeV21(Landroid/media/AudioTrack;F)V
    .locals 0
    .param p0, "audioTrack"    # Landroid/media/AudioTrack;
    .param p1, "volume"    # F
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 709
    invoke-virtual {p0, p1}, Landroid/media/AudioTrack;->setVolume(F)I

    .line 710
    return-void
.end method

.method private static setAudioTrackVolumeV3(Landroid/media/AudioTrack;F)V
    .locals 0
    .param p0, "audioTrack"    # Landroid/media/AudioTrack;
    .param p1, "volume"    # F

    .prologue
    .line 714
    invoke-virtual {p0, p1, p1}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    .line 715
    return-void
.end method

.method private static writeNonBlockingV21(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;I)I
    .locals 1
    .param p0, "audioTrack"    # Landroid/media/AudioTrack;
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "size"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 664
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result v0

    return v0
.end method


# virtual methods
.method public configure(Landroid/media/MediaFormat;Z)V
    .locals 1
    .param p1, "format"    # Landroid/media/MediaFormat;
    .param p2, "passthrough"    # Z

    .prologue
    .line 343
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/exoplayer/audio/AudioTrack;->configure(Landroid/media/MediaFormat;ZI)V

    .line 344
    return-void
.end method

.method public configure(Landroid/media/MediaFormat;ZI)V
    .locals 18
    .param p1, "format"    # Landroid/media/MediaFormat;
    .param p2, "passthrough"    # Z
    .param p3, "specifiedBufferSize"    # I

    .prologue
    .line 355
    const-string v11, "channel-count"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v3

    .line 357
    .local v3, "channelCount":I
    packed-switch v3, :pswitch_data_0

    .line 383
    new-instance v11, Ljava/lang/IllegalArgumentException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unsupported channel count: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 359
    :pswitch_0
    const/4 v2, 0x4

    .line 385
    .local v2, "channelConfig":I
    :goto_0
    const-string v11, "sample-rate"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v10

    .line 386
    .local v10, "sampleRate":I
    const-string v11, "mime"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 387
    .local v6, "mimeType":Ljava/lang/String;
    if-eqz p2, :cond_0

    invoke-static {v6}, Lcom/google/android/exoplayer/audio/AudioTrack;->getEncodingForMimeType(Ljava/lang/String;)I

    move-result v4

    .line 388
    .local v4, "encoding":I
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/audio/AudioTrack;->isInitialized()Z

    move-result v11

    if-eqz v11, :cond_1

    move-object/from16 v0, p0

    iget v11, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->sampleRate:I

    if-ne v11, v10, :cond_1

    move-object/from16 v0, p0

    iget v11, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->channelConfig:I

    if-ne v11, v2, :cond_1

    move-object/from16 v0, p0

    iget v11, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->encoding:I

    if-ne v11, v4, :cond_1

    .line 428
    :goto_2
    return-void

    .line 362
    .end local v2    # "channelConfig":I
    .end local v4    # "encoding":I
    .end local v6    # "mimeType":Ljava/lang/String;
    .end local v10    # "sampleRate":I
    :pswitch_1
    const/16 v2, 0xc

    .line 363
    .restart local v2    # "channelConfig":I
    goto :goto_0

    .line 365
    .end local v2    # "channelConfig":I
    :pswitch_2
    const/16 v2, 0x1c

    .line 366
    .restart local v2    # "channelConfig":I
    goto :goto_0

    .line 368
    .end local v2    # "channelConfig":I
    :pswitch_3
    const/16 v2, 0xcc

    .line 369
    .restart local v2    # "channelConfig":I
    goto :goto_0

    .line 371
    .end local v2    # "channelConfig":I
    :pswitch_4
    const/16 v2, 0xdc

    .line 372
    .restart local v2    # "channelConfig":I
    goto :goto_0

    .line 374
    .end local v2    # "channelConfig":I
    :pswitch_5
    const/16 v2, 0xfc

    .line 375
    .restart local v2    # "channelConfig":I
    goto :goto_0

    .line 377
    .end local v2    # "channelConfig":I
    :pswitch_6
    const/16 v2, 0x4fc

    .line 378
    .restart local v2    # "channelConfig":I
    goto :goto_0

    .line 380
    .end local v2    # "channelConfig":I
    :pswitch_7
    sget v2, Lcom/google/android/exoplayer/C;->CHANNEL_OUT_7POINT1_SURROUND:I

    .line 381
    .restart local v2    # "channelConfig":I
    goto :goto_0

    .line 387
    .restart local v6    # "mimeType":Ljava/lang/String;
    .restart local v10    # "sampleRate":I
    :cond_0
    const/4 v4, 0x2

    goto :goto_1

    .line 394
    .restart local v4    # "encoding":I
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/audio/AudioTrack;->reset()V

    .line 396
    move-object/from16 v0, p0

    iput v4, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->encoding:I

    .line 397
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/exoplayer/audio/AudioTrack;->passthrough:Z

    .line 398
    move-object/from16 v0, p0

    iput v10, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->sampleRate:I

    .line 399
    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->channelConfig:I

    .line 400
    mul-int/lit8 v11, v3, 0x2

    move-object/from16 v0, p0

    iput v11, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->pcmFrameSize:I

    .line 402
    if-eqz p3, :cond_2

    .line 403
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/exoplayer/audio/AudioTrack;->bufferSize:I

    .line 426
    :goto_3
    if-eqz p2, :cond_9

    const-wide/16 v12, -0x1

    :goto_4
    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->bufferSizeUs:J

    goto :goto_2

    .line 404
    :cond_2
    if-eqz p2, :cond_5

    .line 407
    const/4 v11, 0x5

    if-eq v4, v11, :cond_3

    const/4 v11, 0x6

    if-ne v4, v11, :cond_4

    .line 409
    :cond_3
    const/16 v11, 0x5000

    move-object/from16 v0, p0

    iput v11, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->bufferSize:I

    goto :goto_3

    .line 412
    :cond_4
    const v11, 0xc000

    move-object/from16 v0, p0

    iput v11, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->bufferSize:I

    goto :goto_3

    .line 415
    :cond_5
    invoke-static {v10, v2, v4}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v8

    .line 417
    .local v8, "minBufferSize":I
    const/4 v11, -0x2

    if-eq v8, v11, :cond_6

    const/4 v11, 0x1

    :goto_5
    invoke-static {v11}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 418
    mul-int/lit8 v9, v8, 0x4

    .line 419
    .local v9, "multipliedBufferSize":I
    const-wide/32 v12, 0x3d090

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/google/android/exoplayer/audio/AudioTrack;->durationUsToFrames(J)J

    move-result-wide v12

    long-to-int v11, v12

    move-object/from16 v0, p0

    iget v12, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->pcmFrameSize:I

    mul-int v7, v11, v12

    .line 420
    .local v7, "minAppBufferSize":I
    int-to-long v12, v8

    const-wide/32 v14, 0xb71b0

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/google/android/exoplayer/audio/AudioTrack;->durationUsToFrames(J)J

    move-result-wide v14

    move-object/from16 v0, p0

    iget v11, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->pcmFrameSize:I

    int-to-long v0, v11

    move-wide/from16 v16, v0

    mul-long v14, v14, v16

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    long-to-int v5, v12

    .line 422
    .local v5, "maxAppBufferSize":I
    if-ge v9, v7, :cond_7

    .end local v7    # "minAppBufferSize":I
    :goto_6
    move-object/from16 v0, p0

    iput v7, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->bufferSize:I

    goto :goto_3

    .line 417
    .end local v5    # "maxAppBufferSize":I
    .end local v9    # "multipliedBufferSize":I
    :cond_6
    const/4 v11, 0x0

    goto :goto_5

    .line 422
    .restart local v5    # "maxAppBufferSize":I
    .restart local v7    # "minAppBufferSize":I
    .restart local v9    # "multipliedBufferSize":I
    :cond_7
    if-le v9, v5, :cond_8

    move v7, v5

    goto :goto_6

    :cond_8
    move v7, v9

    goto :goto_6

    .line 426
    .end local v5    # "maxAppBufferSize":I
    .end local v7    # "minAppBufferSize":I
    .end local v8    # "minBufferSize":I
    .end local v9    # "multipliedBufferSize":I
    :cond_9
    move-object/from16 v0, p0

    iget v11, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->bufferSize:I

    int-to-long v12, v11

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/google/android/exoplayer/audio/AudioTrack;->pcmBytesToFrames(J)J

    move-result-wide v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/google/android/exoplayer/audio/AudioTrack;->framesToDurationUs(J)J

    move-result-wide v12

    goto :goto_4

    .line 357
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public getBufferSize()I
    .locals 1

    .prologue
    .line 499
    iget v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->bufferSize:I

    return v0
.end method

.method public getBufferSizeUs()J
    .locals 2

    .prologue
    .line 513
    iget-wide v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->bufferSizeUs:J

    return-wide v0
.end method

.method public getCurrentPositionUs(Z)J
    .locals 18
    .param p1, "sourceEnded"    # Z

    .prologue
    .line 297
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer/audio/AudioTrack;->hasCurrentPositionUs()Z

    move-result v14

    if-nez v14, :cond_1

    .line 298
    const-wide/high16 v6, -0x8000000000000000L

    .line 332
    :cond_0
    :goto_0
    return-wide v6

    .line 301
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v14}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v14

    const/4 v15, 0x3

    if-ne v14, v15, :cond_2

    .line 302
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer/audio/AudioTrack;->maybeSampleSyncParams()V

    .line 305
    :cond_2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v14

    const-wide/16 v16, 0x3e8

    div-long v12, v14, v16

    .line 307
    .local v12, "systemClockUs":J
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTimestampSet:Z

    if-eqz v14, :cond_3

    .line 309
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrackUtil:Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;

    invoke-virtual {v14}, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;->getTimestampNanoTime()J

    move-result-wide v14

    const-wide/16 v16, 0x3e8

    div-long v14, v14, v16

    sub-long v10, v12, v14

    .line 311
    .local v10, "presentationDiff":J
    long-to-float v14, v10

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrackUtil:Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;

    invoke-virtual {v15}, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;->getPlaybackSpeed()F

    move-result v15

    mul-float/2addr v14, v15

    float-to-long v2, v14

    .line 313
    .local v2, "actualSpeedPresentationDiff":J
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/google/android/exoplayer/audio/AudioTrack;->durationUsToFrames(J)J

    move-result-wide v8

    .line 315
    .local v8, "framesDiff":J
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrackUtil:Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;

    invoke-virtual {v14}, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;->getTimestampFramePosition()J

    move-result-wide v14

    add-long v4, v14, v8

    .line 316
    .local v4, "currentFramePosition":J
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/google/android/exoplayer/audio/AudioTrack;->framesToDurationUs(J)J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->startMediaTimeUs:J

    move-wide/from16 v16, v0

    add-long v6, v14, v16

    .line 317
    .local v6, "currentPositionUs":J
    goto :goto_0

    .line 318
    .end local v2    # "actualSpeedPresentationDiff":J
    .end local v4    # "currentFramePosition":J
    .end local v6    # "currentPositionUs":J
    .end local v8    # "framesDiff":J
    .end local v10    # "presentationDiff":J
    :cond_3
    move-object/from16 v0, p0

    iget v14, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->playheadOffsetCount:I

    if-nez v14, :cond_4

    .line 320
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrackUtil:Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;

    invoke-virtual {v14}, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;->getPlaybackHeadPositionUs()J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->startMediaTimeUs:J

    move-wide/from16 v16, v0

    add-long v6, v14, v16

    .line 327
    .restart local v6    # "currentPositionUs":J
    :goto_1
    if-nez p1, :cond_0

    .line 328
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->latencyUs:J

    sub-long/2addr v6, v14

    goto :goto_0

    .line 325
    .end local v6    # "currentPositionUs":J
    :cond_4
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->smoothedPlayheadOffsetUs:J

    add-long/2addr v14, v12

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->startMediaTimeUs:J

    move-wide/from16 v16, v0

    add-long v6, v14, v16

    .restart local v6    # "currentPositionUs":J
    goto :goto_1
.end method

.method public handleBuffer(Ljava/nio/ByteBuffer;IIJ)I
    .locals 22
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "offset"    # I
    .param p3, "size"    # I
    .param p4, "presentationTimeUs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/audio/AudioTrack$WriteException;
        }
    .end annotation

    .prologue
    .line 553
    if-nez p3, :cond_1

    .line 554
    const/4 v11, 0x2

    .line 648
    :cond_0
    :goto_0
    return v11

    .line 557
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer/audio/AudioTrack;->needsPassthroughWorkarounds()Z

    move-result v16

    if-eqz v16, :cond_3

    .line 560
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v16

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_2

    .line 561
    const/4 v11, 0x0

    goto :goto_0

    .line 567
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrackUtil:Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;->getPlaybackHeadPosition()J

    move-result-wide v16

    const-wide/16 v18, 0x0

    cmp-long v16, v16, v18

    if-eqz v16, :cond_3

    .line 569
    const/4 v11, 0x0

    goto :goto_0

    .line 573
    :cond_3
    const/4 v11, 0x0

    .line 574
    .local v11, "result":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->bufferBytesRemaining:I

    move/from16 v16, v0

    if-nez v16, :cond_8

    .line 577
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/exoplayer/audio/AudioTrack;->bufferBytesRemaining:I

    .line 578
    invoke-virtual/range {p1 .. p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 579
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->passthrough:Z

    move/from16 v16, v0

    if-eqz v16, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->framesPerEncodedSample:I

    move/from16 v16, v0

    if-nez v16, :cond_4

    .line 581
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->encoding:I

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/google/android/exoplayer/audio/AudioTrack;->getFramesPerEncodedSample(ILjava/nio/ByteBuffer;)I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/exoplayer/audio/AudioTrack;->framesPerEncodedSample:I

    .line 583
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->passthrough:Z

    move/from16 v16, v0

    if-eqz v16, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->framesPerEncodedSample:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-long v14, v0

    .line 584
    .local v14, "frames":J
    :goto_1
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/google/android/exoplayer/audio/AudioTrack;->framesToDurationUs(J)J

    move-result-wide v4

    .line 586
    .local v4, "bufferDurationUs":J
    sub-long v6, p4, v4

    .line 587
    .local v6, "bufferStartTime":J
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->startMediaTimeState:I

    move/from16 v16, v0

    if-nez v16, :cond_b

    .line 588
    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v16

    move-wide/from16 v0, v16

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/google/android/exoplayer/audio/AudioTrack;->startMediaTimeUs:J

    .line 589
    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/exoplayer/audio/AudioTrack;->startMediaTimeState:I

    .line 607
    :cond_5
    :goto_2
    sget v16, Lcom/google/android/exoplayer/util/Util;->SDK_INT:I

    const/16 v17, 0x15

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_8

    .line 609
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->temporaryBuffer:[B

    move-object/from16 v16, v0

    if-eqz v16, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->temporaryBuffer:[B

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    move/from16 v1, p3

    if-ge v0, v1, :cond_7

    .line 610
    :cond_6
    move/from16 v0, p3

    new-array v0, v0, [B

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/exoplayer/audio/AudioTrack;->temporaryBuffer:[B

    .line 612
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->temporaryBuffer:[B

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 613
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/exoplayer/audio/AudioTrack;->temporaryBufferOffset:I

    .line 617
    .end local v4    # "bufferDurationUs":J
    .end local v6    # "bufferStartTime":J
    .end local v14    # "frames":J
    :cond_8
    const/4 v10, 0x0

    .line 618
    .local v10, "bytesWritten":I
    sget v16, Lcom/google/android/exoplayer/util/Util;->SDK_INT:I

    const/16 v17, 0x15

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_d

    .line 620
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->submittedPcmBytes:J

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrackUtil:Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;->getPlaybackHeadPosition()J

    move-result-wide v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->pcmFrameSize:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    mul-long v18, v18, v20

    sub-long v16, v16, v18

    move-wide/from16 v0, v16

    long-to-int v8, v0

    .line 622
    .local v8, "bytesPending":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->bufferSize:I

    move/from16 v16, v0

    sub-int v9, v16, v8

    .line 623
    .local v9, "bytesToWrite":I
    if-lez v9, :cond_9

    .line 624
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->bufferBytesRemaining:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-static {v0, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 625
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->temporaryBuffer:[B

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->temporaryBufferOffset:I

    move/from16 v18, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2, v9}, Landroid/media/AudioTrack;->write([BII)I

    move-result v10

    .line 626
    if-ltz v10, :cond_9

    .line 627
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->temporaryBufferOffset:I

    move/from16 v16, v0

    add-int v16, v16, v10

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/exoplayer/audio/AudioTrack;->temporaryBufferOffset:I

    .line 634
    .end local v8    # "bytesPending":I
    .end local v9    # "bytesToWrite":I
    :cond_9
    :goto_3
    if-gez v10, :cond_e

    .line 635
    new-instance v16, Lcom/google/android/exoplayer/audio/AudioTrack$WriteException;

    move-object/from16 v0, v16

    invoke-direct {v0, v10}, Lcom/google/android/exoplayer/audio/AudioTrack$WriteException;-><init>(I)V

    throw v16

    .line 583
    .end local v10    # "bytesWritten":I
    :cond_a
    move/from16 v0, p3

    int-to-long v0, v0

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer/audio/AudioTrack;->pcmBytesToFrames(J)J

    move-result-wide v14

    goto/16 :goto_1

    .line 592
    .restart local v4    # "bufferDurationUs":J
    .restart local v6    # "bufferStartTime":J
    .restart local v14    # "frames":J
    :cond_b
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->startMediaTimeUs:J

    move-wide/from16 v16, v0

    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer/audio/AudioTrack;->getSubmittedFrames()J

    move-result-wide v18

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer/audio/AudioTrack;->framesToDurationUs(J)J

    move-result-wide v18

    add-long v12, v16, v18

    .line 593
    .local v12, "expectedBufferStartTime":J
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->startMediaTimeState:I

    move/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_c

    sub-long v16, v12, v6

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->abs(J)J

    move-result-wide v16

    const-wide/32 v18, 0x30d40

    cmp-long v16, v16, v18

    if-lez v16, :cond_c

    .line 595
    const-string v16, "AudioTrack"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Discontinuity detected [expected "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", got "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "]"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    const/16 v16, 0x2

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/exoplayer/audio/AudioTrack;->startMediaTimeState:I

    .line 599
    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->startMediaTimeState:I

    move/from16 v16, v0

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_5

    .line 602
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->startMediaTimeUs:J

    move-wide/from16 v16, v0

    sub-long v18, v6, v12

    add-long v16, v16, v18

    move-wide/from16 v0, v16

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/google/android/exoplayer/audio/AudioTrack;->startMediaTimeUs:J

    .line 603
    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/exoplayer/audio/AudioTrack;->startMediaTimeState:I

    .line 604
    or-int/lit8 v11, v11, 0x1

    goto/16 :goto_2

    .line 631
    .end local v4    # "bufferDurationUs":J
    .end local v6    # "bufferStartTime":J
    .end local v12    # "expectedBufferStartTime":J
    .end local v14    # "frames":J
    .restart local v10    # "bytesWritten":I
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->bufferBytesRemaining:I

    move/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    move/from16 v2, v17

    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer/audio/AudioTrack;->writeNonBlockingV21(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;I)I

    move-result v10

    goto/16 :goto_3

    .line 638
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->bufferBytesRemaining:I

    move/from16 v16, v0

    sub-int v16, v16, v10

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/exoplayer/audio/AudioTrack;->bufferBytesRemaining:I

    .line 639
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->passthrough:Z

    move/from16 v16, v0

    if-nez v16, :cond_f

    .line 640
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->submittedPcmBytes:J

    move-wide/from16 v16, v0

    int-to-long v0, v10

    move-wide/from16 v18, v0

    add-long v16, v16, v18

    move-wide/from16 v0, v16

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/google/android/exoplayer/audio/AudioTrack;->submittedPcmBytes:J

    .line 642
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->bufferBytesRemaining:I

    move/from16 v16, v0

    if-nez v16, :cond_0

    .line 643
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->passthrough:Z

    move/from16 v16, v0

    if-eqz v16, :cond_10

    .line 644
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->submittedEncodedFrames:J

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer/audio/AudioTrack;->framesPerEncodedSample:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    add-long v16, v16, v18

    move-wide/from16 v0, v16

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/google/android/exoplayer/audio/AudioTrack;->submittedEncodedFrames:J

    .line 646
    :cond_10
    or-int/lit8 v11, v11, 0x2

    goto/16 :goto_0
.end method

.method public handleDiscontinuity()V
    .locals 2

    .prologue
    .line 531
    iget v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->startMediaTimeState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 532
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->startMediaTimeState:I

    .line 534
    :cond_0
    return-void
.end method

.method public handleEndOfStream()V
    .locals 4

    .prologue
    .line 656
    invoke-virtual {p0}, Lcom/google/android/exoplayer/audio/AudioTrack;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 657
    iget-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrackUtil:Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;

    invoke-direct {p0}, Lcom/google/android/exoplayer/audio/AudioTrack;->getSubmittedFrames()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;->handleEndOfStream(J)V

    .line 659
    :cond_0
    return-void
.end method

.method public hasPendingData()Z
    .locals 4

    .prologue
    .line 671
    invoke-virtual {p0}, Lcom/google/android/exoplayer/audio/AudioTrack;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/exoplayer/audio/AudioTrack;->getSubmittedFrames()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrackUtil:Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;

    invoke-virtual {v2}, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;->getPlaybackHeadPosition()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/exoplayer/audio/AudioTrack;->overrideHasPendingData()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initialize()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/audio/AudioTrack$InitializationException;
        }
    .end annotation

    .prologue
    .line 436
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer/audio/AudioTrack;->initialize(I)I

    move-result v0

    return v0
.end method

.method public initialize(I)I
    .locals 8
    .param p1, "sessionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/audio/AudioTrack$InitializationException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 452
    iget-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->releasingConditionVariable:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 454
    if-nez p1, :cond_2

    .line 455
    new-instance v0, Landroid/media/AudioTrack;

    iget v1, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->streamType:I

    iget v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->sampleRate:I

    iget v3, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->channelConfig:I

    iget v4, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->encoding:I

    iget v5, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->bufferSize:I

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    .line 462
    :goto_0
    invoke-direct {p0}, Lcom/google/android/exoplayer/audio/AudioTrack;->checkAudioTrackInitialized()V

    .line 464
    iget-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getAudioSessionId()I

    move-result p1

    .line 465
    sget-boolean v0, Lcom/google/android/exoplayer/audio/AudioTrack;->enablePreV21AudioSessionWorkaround:Z

    if-eqz v0, :cond_1

    .line 466
    sget v0, Lcom/google/android/exoplayer/util/Util;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_1

    .line 469
    iget-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->keepSessionIdAudioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->keepSessionIdAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getAudioSessionId()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 471
    invoke-direct {p0}, Lcom/google/android/exoplayer/audio/AudioTrack;->releaseKeepSessionIdAudioTrack()V

    .line 473
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->keepSessionIdAudioTrack:Landroid/media/AudioTrack;

    if-nez v0, :cond_1

    .line 474
    const/16 v2, 0xfa0

    .line 475
    .local v2, "sampleRate":I
    const/4 v3, 0x4

    .line 476
    .local v3, "channelConfig":I
    const/4 v4, 0x2

    .line 477
    .local v4, "encoding":I
    const/4 v5, 0x2

    .line 478
    .local v5, "bufferSize":I
    new-instance v0, Landroid/media/AudioTrack;

    iget v1, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->streamType:I

    const/4 v6, 0x0

    move v7, p1

    invoke-direct/range {v0 .. v7}, Landroid/media/AudioTrack;-><init>(IIIIIII)V

    iput-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->keepSessionIdAudioTrack:Landroid/media/AudioTrack;

    .line 484
    .end local v2    # "sampleRate":I
    .end local v3    # "channelConfig":I
    .end local v4    # "encoding":I
    .end local v5    # "bufferSize":I
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrackUtil:Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;

    iget-object v1, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    invoke-direct {p0}, Lcom/google/android/exoplayer/audio/AudioTrack;->needsPassthroughWorkarounds()Z

    move-result v6

    invoke-virtual {v0, v1, v6}, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;->reconfigure(Landroid/media/AudioTrack;Z)V

    .line 485
    invoke-direct {p0}, Lcom/google/android/exoplayer/audio/AudioTrack;->setAudioTrackVolume()V

    .line 487
    return p1

    .line 459
    :cond_2
    new-instance v0, Landroid/media/AudioTrack;

    iget v1, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->streamType:I

    iget v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->sampleRate:I

    iget v3, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->channelConfig:I

    iget v4, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->encoding:I

    iget v5, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->bufferSize:I

    move v7, p1

    invoke-direct/range {v0 .. v7}, Landroid/media/AudioTrack;-><init>(IIIIIII)V

    iput-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    goto :goto_0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPassthroughSupported(Ljava/lang/String;)Z
    .locals 2
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 273
    iget-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioCapabilities:Lcom/google/android/exoplayer/audio/AudioCapabilities;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioCapabilities:Lcom/google/android/exoplayer/audio/AudioCapabilities;

    invoke-static {p1}, Lcom/google/android/exoplayer/audio/AudioTrack;->getEncodingForMimeType(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer/audio/AudioCapabilities;->supportsEncoding(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 721
    invoke-virtual {p0}, Lcom/google/android/exoplayer/audio/AudioTrack;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 722
    invoke-direct {p0}, Lcom/google/android/exoplayer/audio/AudioTrack;->resetSyncParams()V

    .line 723
    iget-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrackUtil:Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;->pause()V

    .line 725
    :cond_0
    return-void
.end method

.method public play()V
    .locals 4

    .prologue
    .line 520
    invoke-virtual {p0}, Lcom/google/android/exoplayer/audio/AudioTrack;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 521
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->resumeSystemTimeUs:J

    .line 522
    iget-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    .line 524
    :cond_0
    return-void
.end method

.method public release()V
    .locals 0

    .prologue
    .line 768
    invoke-virtual {p0}, Lcom/google/android/exoplayer/audio/AudioTrack;->reset()V

    .line 769
    invoke-direct {p0}, Lcom/google/android/exoplayer/audio/AudioTrack;->releaseKeepSessionIdAudioTrack()V

    .line 770
    return-void
.end method

.method public reset()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    .line 733
    invoke-virtual {p0}, Lcom/google/android/exoplayer/audio/AudioTrack;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 734
    iput-wide v4, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->submittedPcmBytes:J

    .line 735
    iput-wide v4, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->submittedEncodedFrames:J

    .line 736
    iput v3, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->framesPerEncodedSample:I

    .line 737
    iput v3, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->bufferBytesRemaining:I

    .line 738
    iput v3, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->startMediaTimeState:I

    .line 739
    iput-wide v4, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->latencyUs:J

    .line 740
    invoke-direct {p0}, Lcom/google/android/exoplayer/audio/AudioTrack;->resetSyncParams()V

    .line 741
    iget-object v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    .line 742
    .local v0, "playState":I
    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 743
    iget-object v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->pause()V

    .line 746
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    .line 747
    .local v1, "toRelease":Landroid/media/AudioTrack;
    iput-object v6, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    .line 748
    iget-object v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrackUtil:Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;

    invoke-virtual {v2, v6, v3}, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;->reconfigure(Landroid/media/AudioTrack;Z)V

    .line 749
    iget-object v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->releasingConditionVariable:Landroid/os/ConditionVariable;

    invoke-virtual {v2}, Landroid/os/ConditionVariable;->close()V

    .line 750
    new-instance v2, Lcom/google/android/exoplayer/audio/AudioTrack$1;

    invoke-direct {v2, p0, v1}, Lcom/google/android/exoplayer/audio/AudioTrack$1;-><init>(Lcom/google/android/exoplayer/audio/AudioTrack;Landroid/media/AudioTrack;)V

    invoke-virtual {v2}, Lcom/google/android/exoplayer/audio/AudioTrack$1;->start()V

    .line 762
    .end local v0    # "playState":I
    .end local v1    # "toRelease":Landroid/media/AudioTrack;
    :cond_1
    return-void
.end method

.method public setPlaybackParams(Landroid/media/PlaybackParams;)V
    .locals 1
    .param p1, "playbackParams"    # Landroid/media/PlaybackParams;

    .prologue
    .line 683
    iget-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->audioTrackUtil:Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;->setPlaybackParameters(Landroid/media/PlaybackParams;)V

    .line 684
    return-void
.end method

.method public setVolume(F)V
    .locals 1
    .param p1, "volume"    # F

    .prologue
    .line 691
    iget v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->volume:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 692
    iput p1, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->volume:F

    .line 693
    invoke-direct {p0}, Lcom/google/android/exoplayer/audio/AudioTrack;->setAudioTrackVolume()V

    .line 695
    :cond_0
    return-void
.end method
