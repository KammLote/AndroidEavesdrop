.class final Lcom/google/android/exoplayer/extractor/ts/H264Reader;
.super Lcom/google/android/exoplayer/extractor/ts/ElementaryStreamReader;
.source "H264Reader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer/extractor/ts/H264Reader$IfrParserBuffer;
    }
.end annotation


# static fields
.field private static final FRAME_TYPE_ALL_I:I = 0x7

.field private static final FRAME_TYPE_I:I = 0x2

.field private static final NAL_UNIT_TYPE_AUD:I = 0x9

.field private static final NAL_UNIT_TYPE_IDR:I = 0x5

.field private static final NAL_UNIT_TYPE_IFR:I = 0x1

.field private static final NAL_UNIT_TYPE_PPS:I = 0x8

.field private static final NAL_UNIT_TYPE_SEI:I = 0x6

.field private static final NAL_UNIT_TYPE_SPS:I = 0x7


# instance fields
.field private foundFirstSample:Z

.field private hasOutputFormat:Z

.field private final ifrParserBuffer:Lcom/google/android/exoplayer/extractor/ts/H264Reader$IfrParserBuffer;

.field private isKeyframe:Z

.field private pesTimeUs:J

.field private final pps:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

.field private final prefixFlags:[Z

.field private samplePosition:J

.field private sampleTimeUs:J

.field private final sei:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

.field private final seiReader:Lcom/google/android/exoplayer/extractor/ts/SeiReader;

.field private final seiWrapper:Lcom/google/android/exoplayer/util/ParsableByteArray;

.field private final sps:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

.field private totalBytesWritten:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer/extractor/TrackOutput;Lcom/google/android/exoplayer/extractor/ts/SeiReader;Z)V
    .locals 3
    .param p1, "output"    # Lcom/google/android/exoplayer/extractor/TrackOutput;
    .param p2, "seiReader"    # Lcom/google/android/exoplayer/extractor/ts/SeiReader;
    .param p3, "allowNonIdrKeyframes"    # Z

    .prologue
    const/16 v2, 0x80

    .line 72
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/extractor/ts/ElementaryStreamReader;-><init>(Lcom/google/android/exoplayer/extractor/TrackOutput;)V

    .line 73
    iput-object p2, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->seiReader:Lcom/google/android/exoplayer/extractor/ts/SeiReader;

    .line 74
    const/4 v0, 0x3

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->prefixFlags:[Z

    .line 75
    if-eqz p3, :cond_0

    new-instance v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$IfrParserBuffer;

    invoke-direct {v0}, Lcom/google/android/exoplayer/extractor/ts/H264Reader$IfrParserBuffer;-><init>()V

    :goto_0
    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->ifrParserBuffer:Lcom/google/android/exoplayer/extractor/ts/H264Reader$IfrParserBuffer;

    .line 76
    new-instance v0, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    const/4 v1, 0x7

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;-><init>(II)V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->sps:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    .line 77
    new-instance v0, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    const/16 v1, 0x8

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;-><init>(II)V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->pps:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    .line 78
    new-instance v0, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    const/4 v1, 0x6

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;-><init>(II)V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->sei:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    .line 79
    new-instance v0, Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-direct {v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->seiWrapper:Lcom/google/android/exoplayer/util/ParsableByteArray;

    .line 80
    return-void

    .line 75
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private feedNalUnitTargetBuffersData([BII)V
    .locals 1
    .param p1, "dataArray"    # [B
    .param p2, "offset"    # I
    .param p3, "limit"    # I

    .prologue
    .line 187
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->ifrParserBuffer:Lcom/google/android/exoplayer/extractor/ts/H264Reader$IfrParserBuffer;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->ifrParserBuffer:Lcom/google/android/exoplayer/extractor/ts/H264Reader$IfrParserBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer/extractor/ts/H264Reader$IfrParserBuffer;->appendToNalUnit([BII)V

    .line 190
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->hasOutputFormat:Z

    if-nez v0, :cond_1

    .line 191
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->sps:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->appendToNalUnit([BII)V

    .line 192
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->pps:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->appendToNalUnit([BII)V

    .line 194
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->sei:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->appendToNalUnit([BII)V

    .line 195
    return-void
.end method

.method private feedNalUnitTargetBuffersStart(I)V
    .locals 1
    .param p1, "nalUnitType"    # I

    .prologue
    .line 176
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->ifrParserBuffer:Lcom/google/android/exoplayer/extractor/ts/H264Reader$IfrParserBuffer;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->ifrParserBuffer:Lcom/google/android/exoplayer/extractor/ts/H264Reader$IfrParserBuffer;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer/extractor/ts/H264Reader$IfrParserBuffer;->startNalUnit(I)V

    .line 179
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->hasOutputFormat:Z

    if-nez v0, :cond_1

    .line 180
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->sps:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->startNalUnit(I)V

    .line 181
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->pps:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->startNalUnit(I)V

    .line 183
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->sei:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->startNalUnit(I)V

    .line 184
    return-void
.end method

.method private feedNalUnitTargetEnd(JI)V
    .locals 3
    .param p1, "pesTimeUs"    # J
    .param p3, "discardPadding"    # I

    .prologue
    .line 198
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->sps:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v1, p3}, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->endNalUnit(I)Z

    .line 199
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->pps:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v1, p3}, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->endNalUnit(I)Z

    .line 200
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->sei:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v1, p3}, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->endNalUnit(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 201
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->sei:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    iget-object v1, v1, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->sei:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    iget v2, v2, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-static {v1, v2}, Lcom/google/android/exoplayer/util/NalUnitUtil;->unescapeStream([BI)I

    move-result v0

    .line 202
    .local v0, "unescapedLength":I
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->seiWrapper:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->sei:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    iget-object v2, v2, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    invoke-virtual {v1, v2, v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->reset([BI)V

    .line 203
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->seiWrapper:Lcom/google/android/exoplayer/util/ParsableByteArray;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 204
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->seiReader:Lcom/google/android/exoplayer/extractor/ts/SeiReader;

    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->seiWrapper:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v1, p1, p2, v2}, Lcom/google/android/exoplayer/extractor/ts/SeiReader;->consume(JLcom/google/android/exoplayer/util/ParsableByteArray;)V

    .line 206
    .end local v0    # "unescapedLength":I
    :cond_0
    return-void
.end method

.method private static parseMediaFormat(Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;)Lcom/google/android/exoplayer/MediaFormat;
    .locals 13
    .param p0, "sps"    # Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;
    .param p1, "pps"    # Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    .prologue
    const/4 v2, -0x1

    .line 209
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 210
    .local v8, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    iget v1, p0, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    iget-object v0, p1, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    iget v1, p1, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    iget v1, p0, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-static {v0, v1}, Lcom/google/android/exoplayer/util/NalUnitUtil;->unescapeStream([BI)I

    .line 215
    new-instance v11, Lcom/google/android/exoplayer/util/ParsableBitArray;

    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    invoke-direct {v11, v0}, Lcom/google/android/exoplayer/util/ParsableBitArray;-><init>([B)V

    .line 216
    .local v11, "bitArray":Lcom/google/android/exoplayer/util/ParsableBitArray;
    const/16 v0, 0x20

    invoke-virtual {v11, v0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->skipBits(I)V

    .line 217
    invoke-static {v11}, Lcom/google/android/exoplayer/util/CodecSpecificDataUtil;->parseSpsNalUnit(Lcom/google/android/exoplayer/util/ParsableBitArray;)Lcom/google/android/exoplayer/util/CodecSpecificDataUtil$SpsData;

    move-result-object v12

    .line 219
    .local v12, "parsedSpsData":Lcom/google/android/exoplayer/util/CodecSpecificDataUtil$SpsData;
    const/4 v0, 0x0

    const-string v1, "video/avc"

    const-wide/16 v4, -0x1

    iget v6, v12, Lcom/google/android/exoplayer/util/CodecSpecificDataUtil$SpsData;->width:I

    iget v7, v12, Lcom/google/android/exoplayer/util/CodecSpecificDataUtil$SpsData;->height:I

    iget v10, v12, Lcom/google/android/exoplayer/util/CodecSpecificDataUtil$SpsData;->pixelWidthAspectRatio:F

    move v3, v2

    move v9, v2

    invoke-static/range {v0 .. v10}, Lcom/google/android/exoplayer/MediaFormat;->createVideoFormat(Ljava/lang/String;Ljava/lang/String;IIJIILjava/util/List;IF)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public consume(Lcom/google/android/exoplayer/util/ParsableByteArray;)V
    .locals 18
    .param p1, "data"    # Lcom/google/android/exoplayer/util/ParsableByteArray;

    .prologue
    .line 102
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v3

    if-lez v3, :cond_0

    .line 103
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v14

    .line 104
    .local v14, "offset":I
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->limit()I

    move-result v11

    .line 105
    .local v11, "limit":I
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    .line 108
    .local v2, "dataArray":[B
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->totalBytesWritten:J

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v3

    int-to-long v0, v3

    move-wide/from16 v16, v0

    add-long v4, v4, v16

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->totalBytesWritten:J

    .line 109
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->output:Lcom/google/android/exoplayer/extractor/TrackOutput;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v4

    move-object/from16 v0, p1

    invoke-interface {v3, v0, v4}, Lcom/google/android/exoplayer/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer/util/ParsableByteArray;I)V

    .line 113
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->prefixFlags:[Z

    invoke-static {v2, v14, v11, v3}, Lcom/google/android/exoplayer/util/NalUnitUtil;->findNalUnit([BII[Z)I

    move-result v12

    .line 115
    .local v12, "nalUnitOffset":I
    if-ne v12, v11, :cond_1

    .line 117
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v14, v11}, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->feedNalUnitTargetBuffersData([BII)V

    .line 168
    .end local v2    # "dataArray":[B
    .end local v11    # "limit":I
    .end local v12    # "nalUnitOffset":I
    .end local v14    # "offset":I
    :cond_0
    return-void

    .line 122
    .restart local v2    # "dataArray":[B
    .restart local v11    # "limit":I
    .restart local v12    # "nalUnitOffset":I
    .restart local v14    # "offset":I
    :cond_1
    invoke-static {v2, v12}, Lcom/google/android/exoplayer/util/NalUnitUtil;->getNalUnitType([BI)I

    move-result v13

    .line 126
    .local v13, "nalUnitType":I
    sub-int v10, v12, v14

    .line 127
    .local v10, "lengthToNalUnit":I
    if-lez v10, :cond_2

    .line 128
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v14, v12}, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->feedNalUnitTargetBuffersData([BII)V

    .line 131
    :cond_2
    sparse-switch v13, :sswitch_data_0

    .line 161
    :goto_1
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->pesTimeUs:J

    if-gez v10, :cond_9

    neg-int v3, v10

    :goto_2
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v3}, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->feedNalUnitTargetEnd(JI)V

    .line 163
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->feedNalUnitTargetBuffersStart(I)V

    .line 165
    add-int/lit8 v14, v12, 0x3

    .line 166
    goto :goto_0

    .line 133
    :sswitch_0
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->isKeyframe:Z

    goto :goto_1

    .line 136
    :sswitch_1
    sub-int v8, v11, v12

    .line 137
    .local v8, "bytesWrittenPastNalUnit":I
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->foundFirstSample:Z

    if-eqz v3, :cond_6

    .line 138
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->ifrParserBuffer:Lcom/google/android/exoplayer/extractor/ts/H264Reader$IfrParserBuffer;

    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->ifrParserBuffer:Lcom/google/android/exoplayer/extractor/ts/H264Reader$IfrParserBuffer;

    invoke-virtual {v3}, Lcom/google/android/exoplayer/extractor/ts/H264Reader$IfrParserBuffer;->isCompleted()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 139
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->ifrParserBuffer:Lcom/google/android/exoplayer/extractor/ts/H264Reader$IfrParserBuffer;

    invoke-virtual {v3}, Lcom/google/android/exoplayer/extractor/ts/H264Reader$IfrParserBuffer;->getSliceType()I

    move-result v15

    .line 140
    .local v15, "sliceType":I
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->isKeyframe:Z

    const/4 v3, 0x2

    if-eq v15, v3, :cond_3

    const/4 v3, 0x7

    if-ne v15, v3, :cond_7

    :cond_3
    const/4 v3, 0x1

    :goto_3
    or-int/2addr v3, v4

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->isKeyframe:Z

    .line 141
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->ifrParserBuffer:Lcom/google/android/exoplayer/extractor/ts/H264Reader$IfrParserBuffer;

    invoke-virtual {v3}, Lcom/google/android/exoplayer/extractor/ts/H264Reader$IfrParserBuffer;->reset()V

    .line 143
    .end local v15    # "sliceType":I
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->isKeyframe:Z

    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->hasOutputFormat:Z

    if-nez v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->sps:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v3}, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->isCompleted()Z

    move-result v3

    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->pps:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v3}, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->isCompleted()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 144
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->output:Lcom/google/android/exoplayer/extractor/TrackOutput;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->sps:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->pps:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-static {v4, v5}, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->parseMediaFormat(Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/google/android/exoplayer/extractor/TrackOutput;->format(Lcom/google/android/exoplayer/MediaFormat;)V

    .line 145
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->hasOutputFormat:Z

    .line 147
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->isKeyframe:Z

    if-eqz v3, :cond_8

    const/4 v6, 0x1

    .line 148
    .local v6, "flags":I
    :goto_4
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->totalBytesWritten:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->samplePosition:J

    move-wide/from16 v16, v0

    sub-long v4, v4, v16

    long-to-int v3, v4

    sub-int v7, v3, v8

    .line 149
    .local v7, "size":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->output:Lcom/google/android/exoplayer/extractor/TrackOutput;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->sampleTimeUs:J

    const/4 v9, 0x0

    invoke-interface/range {v3 .. v9}, Lcom/google/android/exoplayer/extractor/TrackOutput;->sampleMetadata(JIII[B)V

    .line 151
    .end local v6    # "flags":I
    .end local v7    # "size":I
    :cond_6
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->foundFirstSample:Z

    .line 152
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->totalBytesWritten:J

    int-to-long v0, v8

    move-wide/from16 v16, v0

    sub-long v4, v4, v16

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->samplePosition:J

    .line 153
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->pesTimeUs:J

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->sampleTimeUs:J

    .line 154
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->isKeyframe:Z

    goto/16 :goto_1

    .line 140
    .restart local v15    # "sliceType":I
    :cond_7
    const/4 v3, 0x0

    goto/16 :goto_3

    .line 147
    .end local v15    # "sliceType":I
    :cond_8
    const/4 v6, 0x0

    goto :goto_4

    .line 161
    .end local v8    # "bytesWrittenPastNalUnit":I
    :cond_9
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 131
    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_0
        0x9 -> :sswitch_1
    .end sparse-switch
.end method

.method public packetFinished()V
    .locals 0

    .prologue
    .line 173
    return-void
.end method

.method public packetStarted(JZ)V
    .locals 1
    .param p1, "pesTimeUs"    # J
    .param p3, "dataAlignmentIndicator"    # Z

    .prologue
    .line 97
    iput-wide p1, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->pesTimeUs:J

    .line 98
    return-void
.end method

.method public seek()V
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->prefixFlags:[Z

    invoke-static {v0}, Lcom/google/android/exoplayer/util/NalUnitUtil;->clearPrefixFlags([Z)V

    .line 85
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->sps:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->reset()V

    .line 86
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->pps:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->reset()V

    .line 87
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->sei:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->reset()V

    .line 88
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->ifrParserBuffer:Lcom/google/android/exoplayer/extractor/ts/H264Reader$IfrParserBuffer;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->ifrParserBuffer:Lcom/google/android/exoplayer/extractor/ts/H264Reader$IfrParserBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/extractor/ts/H264Reader$IfrParserBuffer;->reset()V

    .line 91
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->foundFirstSample:Z

    .line 92
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->totalBytesWritten:J

    .line 93
    return-void
.end method
