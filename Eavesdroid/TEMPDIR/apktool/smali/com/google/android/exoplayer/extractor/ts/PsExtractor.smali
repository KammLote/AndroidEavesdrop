.class public final Lcom/google/android/exoplayer/extractor/ts/PsExtractor;
.super Ljava/lang/Object;
.source "PsExtractor.java"

# interfaces
.implements Lcom/google/android/exoplayer/extractor/Extractor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer/extractor/ts/PsExtractor$PesReader;
    }
.end annotation


# static fields
.field public static final AUDIO_STREAM:I = 0xc0

.field public static final AUDIO_STREAM_MASK:I = 0xe0

.field private static final MAX_SEARCH_LENGTH:J = 0x100000L

.field private static final MPEG_PROGRAM_END_CODE:I = 0x1b9

.field private static final PACKET_START_CODE_PREFIX:I = 0x1

.field private static final PACK_START_CODE:I = 0x1ba

.field public static final PRIVATE_STREAM_1:I = 0xbd

.field private static final SYSTEM_HEADER_START_CODE:I = 0x1bb

.field public static final VIDEO_STREAM:I = 0xe0

.field public static final VIDEO_STREAM_MASK:I = 0xf0


# instance fields
.field private foundAllTracks:Z

.field private foundAudioTrack:Z

.field private foundVideoTrack:Z

.field private output:Lcom/google/android/exoplayer/extractor/ExtractorOutput;

.field private final psPacketBuffer:Lcom/google/android/exoplayer/util/ParsableByteArray;

.field private final psPayloadReaders:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/exoplayer/extractor/ts/PsExtractor$PesReader;",
            ">;"
        }
    .end annotation
.end field

.field private final ptsTimestampAdjuster:Lcom/google/android/exoplayer/extractor/ts/PtsTimestampAdjuster;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 58
    new-instance v0, Lcom/google/android/exoplayer/extractor/ts/PtsTimestampAdjuster;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Lcom/google/android/exoplayer/extractor/ts/PtsTimestampAdjuster;-><init>(J)V

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/extractor/ts/PsExtractor;-><init>(Lcom/google/android/exoplayer/extractor/ts/PtsTimestampAdjuster;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer/extractor/ts/PtsTimestampAdjuster;)V
    .locals 2
    .param p1, "ptsTimestampAdjuster"    # Lcom/google/android/exoplayer/extractor/ts/PtsTimestampAdjuster;

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/google/android/exoplayer/extractor/ts/PsExtractor;->ptsTimestampAdjuster:Lcom/google/android/exoplayer/extractor/ts/PtsTimestampAdjuster;

    .line 63
    new-instance v0, Lcom/google/android/exoplayer/util/ParsableByteArray;

    const/16 v1, 0x1000

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/PsExtractor;->psPacketBuffer:Lcom/google/android/exoplayer/util/ParsableByteArray;

    .line 64
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/PsExtractor;->psPayloadReaders:Landroid/util/SparseArray;

    .line 65
    return-void
.end method


# virtual methods
.method public init(Lcom/google/android/exoplayer/extractor/ExtractorOutput;)V
    .locals 1
    .param p1, "output"    # Lcom/google/android/exoplayer/extractor/ExtractorOutput;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/google/android/exoplayer/extractor/ts/PsExtractor;->output:Lcom/google/android/exoplayer/extractor/ExtractorOutput;

    .line 111
    sget-object v0, Lcom/google/android/exoplayer/extractor/SeekMap;->UNSEEKABLE:Lcom/google/android/exoplayer/extractor/SeekMap;

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer/extractor/ExtractorOutput;->seekMap(Lcom/google/android/exoplayer/extractor/SeekMap;)V

    .line 112
    return-void
.end method

.method public read(Lcom/google/android/exoplayer/extractor/ExtractorInput;Lcom/google/android/exoplayer/extractor/PositionHolder;)I
    .locals 12
    .param p1, "input"    # Lcom/google/android/exoplayer/extractor/ExtractorInput;
    .param p2, "seekPosition"    # Lcom/google/android/exoplayer/extractor/PositionHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 126
    iget-object v8, p0, Lcom/google/android/exoplayer/extractor/ts/PsExtractor;->psPacketBuffer:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v8, v8, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    const/4 v9, 0x0

    const/4 v10, 0x4

    const/4 v11, 0x1

    invoke-interface {p1, v8, v9, v10, v11}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->peekFully([BIIZ)Z

    move-result v8

    if-nez v8, :cond_0

    .line 127
    const/4 v8, -0x1

    .line 217
    :goto_0
    return v8

    .line 130
    :cond_0
    iget-object v8, p0, Lcom/google/android/exoplayer/extractor/ts/PsExtractor;->psPacketBuffer:Lcom/google/android/exoplayer/util/ParsableByteArray;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 131
    iget-object v8, p0, Lcom/google/android/exoplayer/extractor/ts/PsExtractor;->psPacketBuffer:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v8}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 132
    .local v1, "nextStartCode":I
    const/16 v8, 0x1b9

    if-ne v1, v8, :cond_1

    .line 133
    const/4 v8, -0x1

    goto :goto_0

    .line 134
    :cond_1
    const/16 v8, 0x1ba

    if-ne v1, v8, :cond_2

    .line 136
    iget-object v8, p0, Lcom/google/android/exoplayer/extractor/ts/PsExtractor;->psPacketBuffer:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v8, v8, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    const/4 v9, 0x0

    const/16 v10, 0xa

    invoke-interface {p1, v8, v9, v10}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->peekFully([BII)V

    .line 139
    iget-object v8, p0, Lcom/google/android/exoplayer/extractor/ts/PsExtractor;->psPacketBuffer:Lcom/google/android/exoplayer/util/ParsableByteArray;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 140
    iget-object v8, p0, Lcom/google/android/exoplayer/extractor/ts/PsExtractor;->psPacketBuffer:Lcom/google/android/exoplayer/util/ParsableByteArray;

    const/16 v9, 0x9

    invoke-virtual {v8, v9}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 143
    iget-object v8, p0, Lcom/google/android/exoplayer/extractor/ts/PsExtractor;->psPacketBuffer:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v8}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v8

    and-int/lit8 v2, v8, 0x7

    .line 146
    .local v2, "packStuffingLength":I
    add-int/lit8 v8, v2, 0xe

    invoke-interface {p1, v8}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->skipFully(I)V

    .line 147
    const/4 v8, 0x0

    goto :goto_0

    .line 148
    .end local v2    # "packStuffingLength":I
    :cond_2
    const/16 v8, 0x1bb

    if-ne v1, v8, :cond_3

    .line 150
    iget-object v8, p0, Lcom/google/android/exoplayer/extractor/ts/PsExtractor;->psPacketBuffer:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v8, v8, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    const/4 v9, 0x0

    const/4 v10, 0x2

    invoke-interface {p1, v8, v9, v10}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->peekFully([BII)V

    .line 153
    iget-object v8, p0, Lcom/google/android/exoplayer/extractor/ts/PsExtractor;->psPacketBuffer:Lcom/google/android/exoplayer/util/ParsableByteArray;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 154
    iget-object v8, p0, Lcom/google/android/exoplayer/extractor/ts/PsExtractor;->psPacketBuffer:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v8}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedShort()I

    move-result v7

    .line 155
    .local v7, "systemHeaderLength":I
    add-int/lit8 v8, v7, 0x6

    invoke-interface {p1, v8}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->skipFully(I)V

    .line 156
    const/4 v8, 0x0

    goto :goto_0

    .line 157
    .end local v7    # "systemHeaderLength":I
    :cond_3
    and-int/lit16 v8, v1, -0x100

    shr-int/lit8 v8, v8, 0x8

    const/4 v9, 0x1

    if-eq v8, v9, :cond_4

    .line 158
    const/4 v8, 0x1

    invoke-interface {p1, v8}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->skipFully(I)V

    .line 159
    const/4 v8, 0x0

    goto :goto_0

    .line 164
    :cond_4
    and-int/lit16 v6, v1, 0xff

    .line 167
    .local v6, "streamId":I
    iget-object v8, p0, Lcom/google/android/exoplayer/extractor/ts/PsExtractor;->psPayloadReaders:Landroid/util/SparseArray;

    invoke-virtual {v8, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer/extractor/ts/PsExtractor$PesReader;

    .line 168
    .local v4, "payloadReader":Lcom/google/android/exoplayer/extractor/ts/PsExtractor$PesReader;
    iget-boolean v8, p0, Lcom/google/android/exoplayer/extractor/ts/PsExtractor;->foundAllTracks:Z

    if-nez v8, :cond_9

    .line 169
    if-nez v4, :cond_6

    .line 170
    const/4 v0, 0x0

    .line 171
    .local v0, "elementaryStreamReader":Lcom/google/android/exoplayer/extractor/ts/ElementaryStreamReader;
    iget-boolean v8, p0, Lcom/google/android/exoplayer/extractor/ts/PsExtractor;->foundAudioTrack:Z

    if-nez v8, :cond_a

    const/16 v8, 0xbd

    if-ne v6, v8, :cond_a

    .line 175
    new-instance v0, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;

    .end local v0    # "elementaryStreamReader":Lcom/google/android/exoplayer/extractor/ts/ElementaryStreamReader;
    iget-object v8, p0, Lcom/google/android/exoplayer/extractor/ts/PsExtractor;->output:Lcom/google/android/exoplayer/extractor/ExtractorOutput;

    invoke-interface {v8, v6}, Lcom/google/android/exoplayer/extractor/ExtractorOutput;->track(I)Lcom/google/android/exoplayer/extractor/TrackOutput;

    move-result-object v8

    const/4 v9, 0x0

    invoke-direct {v0, v8, v9}, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;-><init>(Lcom/google/android/exoplayer/extractor/TrackOutput;Z)V

    .line 176
    .restart local v0    # "elementaryStreamReader":Lcom/google/android/exoplayer/extractor/ts/ElementaryStreamReader;
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/google/android/exoplayer/extractor/ts/PsExtractor;->foundAudioTrack:Z

    .line 184
    :cond_5
    :goto_1
    if-eqz v0, :cond_6

    .line 185
    new-instance v4, Lcom/google/android/exoplayer/extractor/ts/PsExtractor$PesReader;

    .end local v4    # "payloadReader":Lcom/google/android/exoplayer/extractor/ts/PsExtractor$PesReader;
    iget-object v8, p0, Lcom/google/android/exoplayer/extractor/ts/PsExtractor;->ptsTimestampAdjuster:Lcom/google/android/exoplayer/extractor/ts/PtsTimestampAdjuster;

    invoke-direct {v4, v0, v8}, Lcom/google/android/exoplayer/extractor/ts/PsExtractor$PesReader;-><init>(Lcom/google/android/exoplayer/extractor/ts/ElementaryStreamReader;Lcom/google/android/exoplayer/extractor/ts/PtsTimestampAdjuster;)V

    .line 186
    .restart local v4    # "payloadReader":Lcom/google/android/exoplayer/extractor/ts/PsExtractor$PesReader;
    iget-object v8, p0, Lcom/google/android/exoplayer/extractor/ts/PsExtractor;->psPayloadReaders:Landroid/util/SparseArray;

    invoke-virtual {v8, v6, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 189
    .end local v0    # "elementaryStreamReader":Lcom/google/android/exoplayer/extractor/ts/ElementaryStreamReader;
    :cond_6
    iget-boolean v8, p0, Lcom/google/android/exoplayer/extractor/ts/PsExtractor;->foundAudioTrack:Z

    if-eqz v8, :cond_7

    iget-boolean v8, p0, Lcom/google/android/exoplayer/extractor/ts/PsExtractor;->foundVideoTrack:Z

    if-nez v8, :cond_8

    :cond_7
    invoke-interface {p1}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->getPosition()J

    move-result-wide v8

    const-wide/32 v10, 0x100000

    cmp-long v8, v8, v10

    if-lez v8, :cond_9

    .line 190
    :cond_8
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/google/android/exoplayer/extractor/ts/PsExtractor;->foundAllTracks:Z

    .line 191
    iget-object v8, p0, Lcom/google/android/exoplayer/extractor/ts/PsExtractor;->output:Lcom/google/android/exoplayer/extractor/ExtractorOutput;

    invoke-interface {v8}, Lcom/google/android/exoplayer/extractor/ExtractorOutput;->endTracks()V

    .line 196
    :cond_9
    iget-object v8, p0, Lcom/google/android/exoplayer/extractor/ts/PsExtractor;->psPacketBuffer:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v8, v8, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    const/4 v9, 0x0

    const/4 v10, 0x2

    invoke-interface {p1, v8, v9, v10}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->peekFully([BII)V

    .line 197
    iget-object v8, p0, Lcom/google/android/exoplayer/extractor/ts/PsExtractor;->psPacketBuffer:Lcom/google/android/exoplayer/util/ParsableByteArray;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 198
    iget-object v8, p0, Lcom/google/android/exoplayer/extractor/ts/PsExtractor;->psPacketBuffer:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v8}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedShort()I

    move-result v3

    .line 199
    .local v3, "payloadLength":I
    add-int/lit8 v5, v3, 0x6

    .line 201
    .local v5, "pesLength":I
    if-nez v4, :cond_c

    .line 203
    invoke-interface {p1, v5}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->skipFully(I)V

    .line 217
    :goto_2
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 177
    .end local v3    # "payloadLength":I
    .end local v5    # "pesLength":I
    .restart local v0    # "elementaryStreamReader":Lcom/google/android/exoplayer/extractor/ts/ElementaryStreamReader;
    :cond_a
    iget-boolean v8, p0, Lcom/google/android/exoplayer/extractor/ts/PsExtractor;->foundAudioTrack:Z

    if-nez v8, :cond_b

    and-int/lit16 v8, v6, 0xe0

    const/16 v9, 0xc0

    if-ne v8, v9, :cond_b

    .line 178
    new-instance v0, Lcom/google/android/exoplayer/extractor/ts/MpegAudioReader;

    .end local v0    # "elementaryStreamReader":Lcom/google/android/exoplayer/extractor/ts/ElementaryStreamReader;
    iget-object v8, p0, Lcom/google/android/exoplayer/extractor/ts/PsExtractor;->output:Lcom/google/android/exoplayer/extractor/ExtractorOutput;

    invoke-interface {v8, v6}, Lcom/google/android/exoplayer/extractor/ExtractorOutput;->track(I)Lcom/google/android/exoplayer/extractor/TrackOutput;

    move-result-object v8

    invoke-direct {v0, v8}, Lcom/google/android/exoplayer/extractor/ts/MpegAudioReader;-><init>(Lcom/google/android/exoplayer/extractor/TrackOutput;)V

    .line 179
    .restart local v0    # "elementaryStreamReader":Lcom/google/android/exoplayer/extractor/ts/ElementaryStreamReader;
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/google/android/exoplayer/extractor/ts/PsExtractor;->foundAudioTrack:Z

    goto :goto_1

    .line 180
    :cond_b
    iget-boolean v8, p0, Lcom/google/android/exoplayer/extractor/ts/PsExtractor;->foundVideoTrack:Z

    if-nez v8, :cond_5

    and-int/lit16 v8, v6, 0xf0

    const/16 v9, 0xe0

    if-ne v8, v9, :cond_5

    .line 181
    new-instance v0, Lcom/google/android/exoplayer/extractor/ts/H262Reader;

    .end local v0    # "elementaryStreamReader":Lcom/google/android/exoplayer/extractor/ts/ElementaryStreamReader;
    iget-object v8, p0, Lcom/google/android/exoplayer/extractor/ts/PsExtractor;->output:Lcom/google/android/exoplayer/extractor/ExtractorOutput;

    invoke-interface {v8, v6}, Lcom/google/android/exoplayer/extractor/ExtractorOutput;->track(I)Lcom/google/android/exoplayer/extractor/TrackOutput;

    move-result-object v8

    invoke-direct {v0, v8}, Lcom/google/android/exoplayer/extractor/ts/H262Reader;-><init>(Lcom/google/android/exoplayer/extractor/TrackOutput;)V

    .line 182
    .restart local v0    # "elementaryStreamReader":Lcom/google/android/exoplayer/extractor/ts/ElementaryStreamReader;
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/google/android/exoplayer/extractor/ts/PsExtractor;->foundVideoTrack:Z

    goto :goto_1

    .line 205
    .end local v0    # "elementaryStreamReader":Lcom/google/android/exoplayer/extractor/ts/ElementaryStreamReader;
    .restart local v3    # "payloadLength":I
    .restart local v5    # "pesLength":I
    :cond_c
    iget-object v8, p0, Lcom/google/android/exoplayer/extractor/ts/PsExtractor;->psPacketBuffer:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v8}, Lcom/google/android/exoplayer/util/ParsableByteArray;->capacity()I

    move-result v8

    if-ge v8, v5, :cond_d

    .line 207
    iget-object v8, p0, Lcom/google/android/exoplayer/extractor/ts/PsExtractor;->psPacketBuffer:Lcom/google/android/exoplayer/util/ParsableByteArray;

    new-array v9, v5, [B

    invoke-virtual {v8, v9, v5}, Lcom/google/android/exoplayer/util/ParsableByteArray;->reset([BI)V

    .line 210
    :cond_d
    iget-object v8, p0, Lcom/google/android/exoplayer/extractor/ts/PsExtractor;->psPacketBuffer:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v8, v8, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    const/4 v9, 0x0

    invoke-interface {p1, v8, v9, v5}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->readFully([BII)V

    .line 211
    iget-object v8, p0, Lcom/google/android/exoplayer/extractor/ts/PsExtractor;->psPacketBuffer:Lcom/google/android/exoplayer/util/ParsableByteArray;

    const/4 v9, 0x6

    invoke-virtual {v8, v9}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 212
    iget-object v8, p0, Lcom/google/android/exoplayer/extractor/ts/PsExtractor;->psPacketBuffer:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v8, v5}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setLimit(I)V

    .line 213
    iget-object v8, p0, Lcom/google/android/exoplayer/extractor/ts/PsExtractor;->psPacketBuffer:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v9, p0, Lcom/google/android/exoplayer/extractor/ts/PsExtractor;->output:Lcom/google/android/exoplayer/extractor/ExtractorOutput;

    invoke-virtual {v4, v8, v9}, Lcom/google/android/exoplayer/extractor/ts/PsExtractor$PesReader;->consume(Lcom/google/android/exoplayer/util/ParsableByteArray;Lcom/google/android/exoplayer/extractor/ExtractorOutput;)V

    .line 214
    iget-object v8, p0, Lcom/google/android/exoplayer/extractor/ts/PsExtractor;->psPacketBuffer:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v9, p0, Lcom/google/android/exoplayer/extractor/ts/PsExtractor;->psPacketBuffer:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v9}, Lcom/google/android/exoplayer/util/ParsableByteArray;->capacity()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setLimit(I)V

    goto :goto_2
.end method

.method public seek()V
    .locals 2

    .prologue
    .line 116
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/PsExtractor;->ptsTimestampAdjuster:Lcom/google/android/exoplayer/extractor/ts/PtsTimestampAdjuster;

    invoke-virtual {v1}, Lcom/google/android/exoplayer/extractor/ts/PtsTimestampAdjuster;->reset()V

    .line 117
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/PsExtractor;->psPayloadReaders:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 118
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/PsExtractor;->psPayloadReaders:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer/extractor/ts/PsExtractor$PesReader;

    invoke-virtual {v1}, Lcom/google/android/exoplayer/extractor/ts/PsExtractor$PesReader;->seek()V

    .line 117
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 120
    :cond_0
    return-void
.end method

.method public sniff(Lcom/google/android/exoplayer/extractor/ExtractorInput;)Z
    .locals 10
    .param p1, "input"    # Lcom/google/android/exoplayer/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 71
    const/16 v4, 0xe

    new-array v1, v4, [B

    .line 72
    .local v1, "scratch":[B
    const/16 v4, 0xe

    invoke-interface {p1, v1, v3, v4}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->peekFully([BII)V

    .line 75
    const/16 v4, 0x1ba

    aget-byte v5, v1, v3

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x18

    aget-byte v6, v1, v2

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v5, v6

    aget-byte v6, v1, v9

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    aget-byte v6, v1, v7

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v5, v6

    if-eq v4, v5, :cond_1

    .line 104
    :cond_0
    :goto_0
    return v3

    .line 80
    :cond_1
    aget-byte v4, v1, v8

    and-int/lit16 v4, v4, 0xc4

    const/16 v5, 0x44

    if-ne v4, v5, :cond_0

    .line 84
    const/4 v4, 0x6

    aget-byte v4, v1, v4

    and-int/lit8 v4, v4, 0x4

    if-ne v4, v8, :cond_0

    .line 88
    const/16 v4, 0x8

    aget-byte v4, v1, v4

    and-int/lit8 v4, v4, 0x4

    if-ne v4, v8, :cond_0

    .line 92
    const/16 v4, 0x9

    aget-byte v4, v1, v4

    and-int/lit8 v4, v4, 0x1

    if-ne v4, v2, :cond_0

    .line 96
    const/16 v4, 0xc

    aget-byte v4, v1, v4

    and-int/lit8 v4, v4, 0x3

    if-ne v4, v7, :cond_0

    .line 100
    const/16 v4, 0xd

    aget-byte v4, v1, v4

    and-int/lit8 v0, v4, 0x7

    .line 101
    .local v0, "packStuffingLength":I
    invoke-interface {p1, v0}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->advancePeekPosition(I)V

    .line 103
    invoke-interface {p1, v1, v3, v7}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->peekFully([BII)V

    .line 104
    aget-byte v4, v1, v3

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    aget-byte v5, v1, v2

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    aget-byte v5, v1, v9

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v4, v5

    if-ne v2, v4, :cond_2

    :goto_1
    move v3, v2

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_1
.end method
