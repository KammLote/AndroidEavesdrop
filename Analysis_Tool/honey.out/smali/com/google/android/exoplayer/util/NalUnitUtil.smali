.class public final Lcom/google/android/exoplayer/util/NalUnitUtil;
.super Ljava/lang/Object;
.source "NalUnitUtil.java"


# static fields
.field public static final ASPECT_RATIO_IDC_VALUES:[F

.field public static final EXTENDED_SAR:I = 0xff

.field public static final NAL_START_CODE:[B

.field private static final NAL_UNIT_TYPE_SPS:I = 0x7

.field private static scratchEscapePositions:[I

.field private static final scratchEscapePositionsLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/exoplayer/util/NalUnitUtil;->NAL_START_CODE:[B

    .line 32
    const/16 v0, 0x11

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/android/exoplayer/util/NalUnitUtil;->ASPECT_RATIO_IDC_VALUES:[F

    .line 54
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer/util/NalUnitUtil;->scratchEscapePositionsLock:Ljava/lang/Object;

    .line 60
    const/16 v0, 0xa

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/exoplayer/util/NalUnitUtil;->scratchEscapePositions:[I

    return-void

    .line 27
    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    .line 32
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f8ba2e9
        0x3f68ba2f
        0x3fba2e8c
        0x3f9b26ca
        0x400ba2e9
        0x3fe8ba2f
        0x403a2e8c
        0x401b26ca
        0x3fd1745d
        0x3fae8ba3
        0x3ff83e10
        0x3fcede62
        0x3faaaaab
        0x3fc00000    # 1.5f
        0x40000000    # 2.0f
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 281
    return-void
.end method

.method public static clearPrefixFlags([Z)V
    .locals 2
    .param p0, "prefixFlags"    # [Z

    .prologue
    const/4 v1, 0x0

    .line 265
    aput-boolean v1, p0, v1

    .line 266
    const/4 v0, 0x1

    aput-boolean v1, p0, v0

    .line 267
    const/4 v0, 0x2

    aput-boolean v1, p0, v0

    .line 268
    return-void
.end method

.method public static discardToSps(Ljava/nio/ByteBuffer;)V
    .locals 7
    .param p0, "data"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 119
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 120
    .local v1, "length":I
    const/4 v0, 0x0

    .line 121
    .local v0, "consecutiveZeros":I
    const/4 v2, 0x0

    .line 122
    .local v2, "offset":I
    :goto_0
    add-int/lit8 v5, v2, 0x1

    if-ge v5, v1, :cond_3

    .line 123
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    and-int/lit16 v4, v5, 0xff

    .line 124
    .local v4, "value":I
    const/4 v5, 0x3

    if-ne v0, v5, :cond_0

    .line 125
    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p0, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    and-int/lit8 v5, v5, 0x1f

    const/4 v6, 0x7

    if-ne v5, v6, :cond_1

    .line 127
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 128
    .local v3, "offsetData":Ljava/nio/ByteBuffer;
    add-int/lit8 v5, v2, -0x3

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 129
    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 130
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 131
    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 144
    .end local v3    # "offsetData":Ljava/nio/ByteBuffer;
    .end local v4    # "value":I
    :goto_1
    return-void

    .line 134
    .restart local v4    # "value":I
    :cond_0
    if-nez v4, :cond_1

    .line 135
    add-int/lit8 v0, v0, 0x1

    .line 137
    :cond_1
    if-eqz v4, :cond_2

    .line 138
    const/4 v0, 0x0

    .line 140
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 141
    goto :goto_0

    .line 143
    .end local v4    # "value":I
    :cond_3
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    goto :goto_1
.end method

.method public static findNalUnit([BII[Z)I
    .locals 7
    .param p0, "data"    # [B
    .param p1, "startOffset"    # I
    .param p2, "endOffset"    # I
    .param p3, "prefixFlags"    # [Z

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 203
    sub-int v1, p2, p1

    .line 205
    .local v1, "length":I
    if-ltz v1, :cond_1

    move v3, v4

    :goto_0
    invoke-static {v3}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 206
    if-nez v1, :cond_2

    .line 256
    .end local p2    # "endOffset":I
    :cond_0
    :goto_1
    return p2

    .restart local p2    # "endOffset":I
    :cond_1
    move v3, v5

    .line 205
    goto :goto_0

    .line 210
    :cond_2
    if-eqz p3, :cond_5

    .line 211
    aget-boolean v3, p3, v5

    if-eqz v3, :cond_3

    .line 212
    invoke-static {p3}, Lcom/google/android/exoplayer/util/NalUnitUtil;->clearPrefixFlags([Z)V

    .line 213
    add-int/lit8 p2, p1, -0x3

    goto :goto_1

    .line 214
    :cond_3
    if-le v1, v4, :cond_4

    aget-boolean v3, p3, v4

    if-eqz v3, :cond_4

    aget-byte v3, p0, p1

    if-ne v3, v4, :cond_4

    .line 215
    invoke-static {p3}, Lcom/google/android/exoplayer/util/NalUnitUtil;->clearPrefixFlags([Z)V

    .line 216
    add-int/lit8 p2, p1, -0x2

    goto :goto_1

    .line 217
    :cond_4
    if-le v1, v6, :cond_5

    aget-boolean v3, p3, v6

    if-eqz v3, :cond_5

    aget-byte v3, p0, p1

    if-nez v3, :cond_5

    add-int/lit8 v3, p1, 0x1

    aget-byte v3, p0, v3

    if-ne v3, v4, :cond_5

    .line 219
    invoke-static {p3}, Lcom/google/android/exoplayer/util/NalUnitUtil;->clearPrefixFlags([Z)V

    .line 220
    add-int/lit8 p2, p1, -0x1

    goto :goto_1

    .line 224
    :cond_5
    add-int/lit8 v2, p2, -0x1

    .line 227
    .local v2, "limit":I
    add-int/lit8 v0, p1, 0x2

    .local v0, "i":I
    :goto_2
    if-ge v0, v2, :cond_9

    .line 228
    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xfe

    if-eqz v3, :cond_6

    .line 227
    :goto_3
    add-int/lit8 v0, v0, 0x3

    goto :goto_2

    .line 231
    :cond_6
    add-int/lit8 v3, v0, -0x2

    aget-byte v3, p0, v3

    if-nez v3, :cond_8

    add-int/lit8 v3, v0, -0x1

    aget-byte v3, p0, v3

    if-nez v3, :cond_8

    aget-byte v3, p0, v0

    if-ne v3, v4, :cond_8

    .line 232
    if-eqz p3, :cond_7

    .line 233
    invoke-static {p3}, Lcom/google/android/exoplayer/util/NalUnitUtil;->clearPrefixFlags([Z)V

    .line 235
    :cond_7
    add-int/lit8 p2, v0, -0x2

    goto :goto_1

    .line 239
    :cond_8
    add-int/lit8 v0, v0, -0x2

    goto :goto_3

    .line 243
    :cond_9
    if-eqz p3, :cond_0

    .line 245
    if-le v1, v6, :cond_b

    add-int/lit8 v3, p2, -0x3

    aget-byte v3, p0, v3

    if-nez v3, :cond_a

    add-int/lit8 v3, p2, -0x2

    aget-byte v3, p0, v3

    if-nez v3, :cond_a

    add-int/lit8 v3, p2, -0x1

    aget-byte v3, p0, v3

    if-ne v3, v4, :cond_a

    move v3, v4

    :goto_4
    aput-boolean v3, p3, v5

    .line 250
    if-le v1, v4, :cond_10

    add-int/lit8 v3, p2, -0x2

    aget-byte v3, p0, v3

    if-nez v3, :cond_f

    add-int/lit8 v3, p2, -0x1

    aget-byte v3, p0, v3

    if-nez v3, :cond_f

    move v3, v4

    :goto_5
    aput-boolean v3, p3, v4

    .line 253
    add-int/lit8 v3, p2, -0x1

    aget-byte v3, p0, v3

    if-nez v3, :cond_12

    :goto_6
    aput-boolean v4, p3, v6

    goto/16 :goto_1

    :cond_a
    move v3, v5

    .line 245
    goto :goto_4

    :cond_b
    if-ne v1, v6, :cond_d

    aget-boolean v3, p3, v6

    if-eqz v3, :cond_c

    add-int/lit8 v3, p2, -0x2

    aget-byte v3, p0, v3

    if-nez v3, :cond_c

    add-int/lit8 v3, p2, -0x1

    aget-byte v3, p0, v3

    if-ne v3, v4, :cond_c

    move v3, v4

    goto :goto_4

    :cond_c
    move v3, v5

    goto :goto_4

    :cond_d
    aget-boolean v3, p3, v4

    if-eqz v3, :cond_e

    add-int/lit8 v3, p2, -0x1

    aget-byte v3, p0, v3

    if-ne v3, v4, :cond_e

    move v3, v4

    goto :goto_4

    :cond_e
    move v3, v5

    goto :goto_4

    :cond_f
    move v3, v5

    .line 250
    goto :goto_5

    :cond_10
    aget-boolean v3, p3, v6

    if-eqz v3, :cond_11

    add-int/lit8 v3, p2, -0x1

    aget-byte v3, p0, v3

    if-nez v3, :cond_11

    move v3, v4

    goto :goto_5

    :cond_11
    move v3, v5

    goto :goto_5

    :cond_12
    move v4, v5

    .line 253
    goto :goto_6
.end method

.method private static findNextUnescapeIndex([BII)I
    .locals 3
    .param p0, "bytes"    # [B
    .param p1, "offset"    # I
    .param p2, "limit"    # I

    .prologue
    .line 271
    move v0, p1

    .local v0, "i":I
    :goto_0
    add-int/lit8 v1, p2, -0x2

    if-ge v0, v1, :cond_1

    .line 272
    aget-byte v1, p0, v0

    if-nez v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    aget-byte v1, p0, v1

    if-nez v1, :cond_0

    add-int/lit8 v1, v0, 0x2

    aget-byte v1, p0, v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 276
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 271
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, p2

    .line 276
    goto :goto_1
.end method

.method public static getH265NalUnitType([BI)I
    .locals 1
    .param p0, "data"    # [B
    .param p1, "offset"    # I

    .prologue
    .line 177
    add-int/lit8 v0, p1, 0x3

    aget-byte v0, p0, v0

    and-int/lit8 v0, v0, 0x7e

    shr-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static getNalUnitType([BI)I
    .locals 1
    .param p0, "data"    # [B
    .param p1, "offset"    # I

    .prologue
    .line 165
    add-int/lit8 v0, p1, 0x3

    aget-byte v0, p0, v0

    and-int/lit8 v0, v0, 0x1f

    return v0
.end method

.method public static parseChildNalUnit(Lcom/google/android/exoplayer/util/ParsableByteArray;)[B
    .locals 3
    .param p0, "atom"    # Lcom/google/android/exoplayer/util/ParsableByteArray;

    .prologue
    .line 150
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedShort()I

    move-result v0

    .line 151
    .local v0, "length":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v1

    .line 152
    .local v1, "offset":I
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 153
    iget-object v2, p0, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    invoke-static {v2, v1, v0}, Lcom/google/android/exoplayer/util/CodecSpecificDataUtil;->buildNalUnit([BII)[B

    move-result-object v2

    return-object v2
.end method

.method public static unescapeStream([BI)I
    .locals 14
    .param p0, "data"    # [B
    .param p1, "limit"    # I

    .prologue
    .line 74
    sget-object v12, Lcom/google/android/exoplayer/util/NalUnitUtil;->scratchEscapePositionsLock:Ljava/lang/Object;

    monitor-enter v12

    .line 75
    const/4 v4, 0x0

    .line 76
    .local v4, "position":I
    const/4 v6, 0x0

    .local v6, "scratchEscapeCount":I
    move v7, v6

    .line 77
    .end local v6    # "scratchEscapeCount":I
    .local v7, "scratchEscapeCount":I
    :cond_0
    :goto_0
    if-ge v4, p1, :cond_2

    .line 78
    :try_start_0
    invoke-static {p0, v4, p1}, Lcom/google/android/exoplayer/util/NalUnitUtil;->findNextUnescapeIndex([BII)I

    move-result v4

    .line 79
    if-ge v4, p1, :cond_0

    .line 80
    sget-object v11, Lcom/google/android/exoplayer/util/NalUnitUtil;->scratchEscapePositions:[I

    array-length v11, v11

    if-gt v11, v7, :cond_1

    .line 82
    sget-object v11, Lcom/google/android/exoplayer/util/NalUnitUtil;->scratchEscapePositions:[I

    sget-object v13, Lcom/google/android/exoplayer/util/NalUnitUtil;->scratchEscapePositions:[I

    array-length v13, v13

    mul-int/lit8 v13, v13, 0x2

    invoke-static {v11, v13}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v11

    sput-object v11, Lcom/google/android/exoplayer/util/NalUnitUtil;->scratchEscapePositions:[I

    .line 85
    :cond_1
    sget-object v11, Lcom/google/android/exoplayer/util/NalUnitUtil;->scratchEscapePositions:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "scratchEscapeCount":I
    .restart local v6    # "scratchEscapeCount":I
    :try_start_1
    aput v4, v11, v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 86
    add-int/lit8 v4, v4, 0x3

    move v7, v6

    .end local v6    # "scratchEscapeCount":I
    .restart local v7    # "scratchEscapeCount":I
    goto :goto_0

    .line 90
    :cond_2
    sub-int v8, p1, v7

    .line 91
    .local v8, "unescapedLength":I
    const/4 v1, 0x0

    .line 92
    .local v1, "escapedPosition":I
    const/4 v9, 0x0

    .line 93
    .local v9, "unescapedPosition":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v7, :cond_3

    .line 94
    :try_start_2
    sget-object v11, Lcom/google/android/exoplayer/util/NalUnitUtil;->scratchEscapePositions:[I

    aget v3, v11, v2

    .line 95
    .local v3, "nextEscapePosition":I
    sub-int v0, v3, v1

    .line 96
    .local v0, "copyLength":I
    invoke-static {p0, v1, p0, v9, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 97
    add-int/2addr v9, v0

    .line 98
    add-int/lit8 v10, v9, 0x1

    .end local v9    # "unescapedPosition":I
    .local v10, "unescapedPosition":I
    const/4 v11, 0x0

    aput-byte v11, p0, v9

    .line 99
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "unescapedPosition":I
    .restart local v9    # "unescapedPosition":I
    const/4 v11, 0x0

    aput-byte v11, p0, v10

    .line 100
    add-int/lit8 v11, v0, 0x3

    add-int/2addr v1, v11

    .line 93
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 103
    .end local v0    # "copyLength":I
    .end local v3    # "nextEscapePosition":I
    :cond_3
    sub-int v5, v8, v9

    .line 104
    .local v5, "remainingLength":I
    invoke-static {p0, v1, p0, v9, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 105
    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return v8

    .line 106
    .end local v1    # "escapedPosition":I
    .end local v2    # "i":I
    .end local v5    # "remainingLength":I
    .end local v8    # "unescapedLength":I
    .end local v9    # "unescapedPosition":I
    :catchall_0
    move-exception v11

    move v6, v7

    .end local v7    # "scratchEscapeCount":I
    .restart local v6    # "scratchEscapeCount":I
    :goto_2
    :try_start_3
    monitor-exit v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v11

    :catchall_1
    move-exception v11

    goto :goto_2
.end method
