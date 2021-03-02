.class public final Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;
.super Ljava/lang/Object;
.source "Mp4Extractor.java"

# interfaces
.implements Lcom/google/android/exoplayer/extractor/Extractor;
.implements Lcom/google/android/exoplayer/extractor/SeekMap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor$Mp4Track;
    }
.end annotation


# static fields
.field private static final BRAND_QUICKTIME:I

.field private static final RELOAD_MINIMUM_SEEK_DISTANCE:J = 0x40000L

.field private static final STATE_AFTER_SEEK:I = 0x0

.field private static final STATE_READING_ATOM_HEADER:I = 0x1

.field private static final STATE_READING_ATOM_PAYLOAD:I = 0x2

.field private static final STATE_READING_SAMPLE:I = 0x3


# instance fields
.field private atomData:Lcom/google/android/exoplayer/util/ParsableByteArray;

.field private final atomHeader:Lcom/google/android/exoplayer/util/ParsableByteArray;

.field private atomHeaderBytesRead:I

.field private atomSize:J

.field private atomType:I

.field private final containerAtoms:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;",
            ">;"
        }
    .end annotation
.end field

.field private extractorOutput:Lcom/google/android/exoplayer/extractor/ExtractorOutput;

.field private isQuickTime:Z

.field private final nalLength:Lcom/google/android/exoplayer/util/ParsableByteArray;

.field private final nalStartCode:Lcom/google/android/exoplayer/util/ParsableByteArray;

.field private parserState:I

.field private sampleBytesWritten:I

.field private sampleCurrentNalBytesRemaining:I

.field private sampleSize:I

.field private tracks:[Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor$Mp4Track;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-string v0, "qt  "

    invoke-static {v0}, Lcom/google/android/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->BRAND_QUICKTIME:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Lcom/google/android/exoplayer/util/ParsableByteArray;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->atomHeader:Lcom/google/android/exoplayer/util/ParsableByteArray;

    .line 81
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/Stack;

    .line 82
    new-instance v0, Lcom/google/android/exoplayer/util/ParsableByteArray;

    sget-object v1, Lcom/google/android/exoplayer/util/NalUnitUtil;->NAL_START_CODE:[B

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->nalStartCode:Lcom/google/android/exoplayer/util/ParsableByteArray;

    .line 83
    new-instance v0, Lcom/google/android/exoplayer/util/ParsableByteArray;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->nalLength:Lcom/google/android/exoplayer/util/ParsableByteArray;

    .line 84
    invoke-direct {p0}, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->enterReadingAtomHeaderState()V

    .line 85
    return-void
.end method

.method private enterReadingAtomHeaderState()V
    .locals 1

    .prologue
    .line 164
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->parserState:I

    .line 165
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    .line 166
    return-void
.end method

.method private getTrackIndexOfEarliestCurrentSample()I
    .locals 9

    .prologue
    .line 408
    const/4 v2, -0x1

    .line 409
    .local v2, "earliestSampleTrackIndex":I
    const-wide v0, 0x7fffffffffffffffL

    .line 410
    .local v0, "earliestSampleOffset":J
    const/4 v5, 0x0

    .local v5, "trackIndex":I
    :goto_0
    iget-object v8, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->tracks:[Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor$Mp4Track;

    array-length v8, v8

    if-ge v5, v8, :cond_2

    .line 411
    iget-object v8, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->tracks:[Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor$Mp4Track;

    aget-object v4, v8, v5

    .line 412
    .local v4, "track":Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor$Mp4Track;
    iget v3, v4, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor$Mp4Track;->sampleIndex:I

    .line 413
    .local v3, "sampleIndex":I
    iget-object v8, v4, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Lcom/google/android/exoplayer/extractor/mp4/TrackSampleTable;

    iget v8, v8, Lcom/google/android/exoplayer/extractor/mp4/TrackSampleTable;->sampleCount:I

    if-ne v3, v8, :cond_1

    .line 410
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 417
    :cond_1
    iget-object v8, v4, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Lcom/google/android/exoplayer/extractor/mp4/TrackSampleTable;

    iget-object v8, v8, Lcom/google/android/exoplayer/extractor/mp4/TrackSampleTable;->offsets:[J

    aget-wide v6, v8, v3

    .line 418
    .local v6, "trackSampleOffset":J
    cmp-long v8, v6, v0

    if-gez v8, :cond_0

    .line 419
    move-wide v0, v6

    .line 420
    move v2, v5

    goto :goto_1

    .line 424
    .end local v3    # "sampleIndex":I
    .end local v4    # "track":Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor$Mp4Track;
    .end local v6    # "trackSampleOffset":J
    :cond_2
    return v2
.end method

.method private static processFtypAtom(Lcom/google/android/exoplayer/util/ParsableByteArray;)Z
    .locals 4
    .param p0, "atomData"    # Lcom/google/android/exoplayer/util/ParsableByteArray;

    .prologue
    const/4 v1, 0x1

    .line 259
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 260
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 261
    .local v0, "majorBrand":I
    sget v2, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->BRAND_QUICKTIME:I

    if-ne v0, v2, :cond_0

    .line 270
    :goto_0
    return v1

    .line 264
    :cond_0
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 265
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v2

    if-lez v2, :cond_2

    .line 266
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v2

    sget v3, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->BRAND_QUICKTIME:I

    if-ne v2, v3, :cond_1

    goto :goto_0

    .line 270
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private processMoovAtom(Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;)V
    .locals 19
    .param p1, "moov"    # Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;

    .prologue
    .line 277
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 278
    .local v15, "tracks":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor$Mp4Track;>;"
    const-wide v4, 0x7fffffffffffffffL

    .line 279
    .local v4, "earliestSampleOffset":J
    const/4 v3, 0x0

    .line 280
    .local v3, "gaplessInfo":Lcom/google/android/exoplayer/extractor/GaplessInfo;
    sget v17, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_udta:I

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;

    move-result-object v16

    .line 281
    .local v16, "udta":Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;
    if-eqz v16, :cond_0

    .line 282
    invoke-static/range {v16 .. v16}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers;->parseUdta(Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;)Lcom/google/android/exoplayer/extractor/GaplessInfo;

    move-result-object v3

    .line 284
    :cond_0
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->containerChildren:Ljava/util/List;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v8, v0, :cond_4

    .line 285
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->containerChildren:Ljava/util/List;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;

    .line 286
    .local v2, "atom":Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;
    iget v0, v2, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->type:I

    move/from16 v17, v0

    sget v18, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_trak:I

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_2

    .line 284
    :cond_1
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 290
    :cond_2
    sget v17, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_mvhd:I

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;

    move-result-object v17

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->isQuickTime:Z

    move/from16 v18, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v2, v0, v1}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers;->parseTrak(Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;Z)Lcom/google/android/exoplayer/extractor/mp4/Track;

    move-result-object v13

    .line 292
    .local v13, "track":Lcom/google/android/exoplayer/extractor/mp4/Track;
    if-eqz v13, :cond_1

    .line 296
    sget v17, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_mdia:I

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;

    move-result-object v17

    sget v18, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_minf:I

    invoke-virtual/range {v17 .. v18}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;

    move-result-object v17

    sget v18, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_stbl:I

    invoke-virtual/range {v17 .. v18}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;

    move-result-object v12

    .line 298
    .local v12, "stblAtom":Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;
    invoke-static {v13, v12}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers;->parseStbl(Lcom/google/android/exoplayer/extractor/mp4/Track;Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;)Lcom/google/android/exoplayer/extractor/mp4/TrackSampleTable;

    move-result-object v14

    .line 299
    .local v14, "trackSampleTable":Lcom/google/android/exoplayer/extractor/mp4/TrackSampleTable;
    iget v0, v14, Lcom/google/android/exoplayer/extractor/mp4/TrackSampleTable;->sampleCount:I

    move/from16 v17, v0

    if-eqz v17, :cond_1

    .line 303
    new-instance v11, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor$Mp4Track;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->extractorOutput:Lcom/google/android/exoplayer/extractor/ExtractorOutput;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v8}, Lcom/google/android/exoplayer/extractor/ExtractorOutput;->track(I)Lcom/google/android/exoplayer/extractor/TrackOutput;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v11, v13, v14, v0}, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor$Mp4Track;-><init>(Lcom/google/android/exoplayer/extractor/mp4/Track;Lcom/google/android/exoplayer/extractor/mp4/TrackSampleTable;Lcom/google/android/exoplayer/extractor/TrackOutput;)V

    .line 306
    .local v11, "mp4Track":Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor$Mp4Track;
    iget v0, v14, Lcom/google/android/exoplayer/extractor/mp4/TrackSampleTable;->maximumSize:I

    move/from16 v17, v0

    add-int/lit8 v9, v17, 0x1e

    .line 307
    .local v9, "maxInputSize":I
    iget-object v0, v13, Lcom/google/android/exoplayer/extractor/mp4/Track;->mediaFormat:Lcom/google/android/exoplayer/MediaFormat;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Lcom/google/android/exoplayer/MediaFormat;->copyWithMaxInputSize(I)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v10

    .line 308
    .local v10, "mediaFormat":Lcom/google/android/exoplayer/MediaFormat;
    if-eqz v3, :cond_3

    .line 309
    iget v0, v3, Lcom/google/android/exoplayer/extractor/GaplessInfo;->encoderDelay:I

    move/from16 v17, v0

    iget v0, v3, Lcom/google/android/exoplayer/extractor/GaplessInfo;->encoderPadding:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Lcom/google/android/exoplayer/MediaFormat;->copyWithGaplessInfo(II)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v10

    .line 312
    :cond_3
    iget-object v0, v11, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor$Mp4Track;->trackOutput:Lcom/google/android/exoplayer/extractor/TrackOutput;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v10}, Lcom/google/android/exoplayer/extractor/TrackOutput;->format(Lcom/google/android/exoplayer/MediaFormat;)V

    .line 313
    invoke-interface {v15, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 315
    iget-object v0, v14, Lcom/google/android/exoplayer/extractor/mp4/TrackSampleTable;->offsets:[J

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget-wide v6, v17, v18

    .line 316
    .local v6, "firstSampleOffset":J
    cmp-long v17, v6, v4

    if-gez v17, :cond_1

    .line 317
    move-wide v4, v6

    goto/16 :goto_1

    .line 320
    .end local v2    # "atom":Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;
    .end local v6    # "firstSampleOffset":J
    .end local v9    # "maxInputSize":I
    .end local v10    # "mediaFormat":Lcom/google/android/exoplayer/MediaFormat;
    .end local v11    # "mp4Track":Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor$Mp4Track;
    .end local v12    # "stblAtom":Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;
    .end local v13    # "track":Lcom/google/android/exoplayer/extractor/mp4/Track;
    .end local v14    # "trackSampleTable":Lcom/google/android/exoplayer/extractor/mp4/TrackSampleTable;
    :cond_4
    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor$Mp4Track;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v15, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor$Mp4Track;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->tracks:[Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor$Mp4Track;

    .line 321
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->extractorOutput:Lcom/google/android/exoplayer/extractor/ExtractorOutput;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/google/android/exoplayer/extractor/ExtractorOutput;->endTracks()V

    .line 322
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->extractorOutput:Lcom/google/android/exoplayer/extractor/ExtractorOutput;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer/extractor/ExtractorOutput;->seekMap(Lcom/google/android/exoplayer/extractor/SeekMap;)V

    .line 323
    return-void
.end method

.method private readAtomHeader(Lcom/google/android/exoplayer/extractor/ExtractorInput;)Z
    .locals 12
    .param p1, "input"    # Lcom/google/android/exoplayer/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x2

    const/4 v4, 0x1

    const/16 v10, 0x8

    const/4 v5, 0x0

    .line 169
    iget v3, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    if-nez v3, :cond_1

    .line 171
    iget-object v3, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->atomHeader:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v3, v3, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    invoke-interface {p1, v3, v5, v10, v4}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->readFully([BIIZ)Z

    move-result v3

    if-nez v3, :cond_0

    .line 205
    :goto_0
    return v5

    .line 174
    :cond_0
    iput v10, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    .line 175
    iget-object v3, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->atomHeader:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v3, v5}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 176
    iget-object v3, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->atomHeader:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v3}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->atomSize:J

    .line 177
    iget-object v3, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->atomHeader:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v3}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v3

    iput v3, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->atomType:I

    .line 180
    :cond_1
    iget-wide v6, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->atomSize:J

    const-wide/16 v8, 0x1

    cmp-long v3, v6, v8

    if-nez v3, :cond_2

    .line 182
    const/16 v2, 0x8

    .line 183
    .local v2, "headerBytesRemaining":I
    iget-object v3, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->atomHeader:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v3, v3, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    invoke-interface {p1, v3, v10, v2}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->readFully([BII)V

    .line 184
    iget v3, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    .line 185
    iget-object v3, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->atomHeader:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v3}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->atomSize:J

    .line 188
    .end local v2    # "headerBytesRemaining":I
    :cond_2
    iget v3, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->atomType:I

    invoke-static {v3}, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->shouldParseContainerAtom(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 189
    invoke-interface {p1}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->getPosition()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->atomSize:J

    add-long/2addr v6, v8

    iget v3, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    int-to-long v8, v3

    sub-long v0, v6, v8

    .line 190
    .local v0, "endPosition":J
    iget-object v3, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/Stack;

    new-instance v5, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;

    iget v6, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->atomType:I

    invoke-direct {v5, v6, v0, v1}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;-><init>(IJ)V

    invoke-virtual {v3, v5}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 191
    invoke-direct {p0}, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->enterReadingAtomHeaderState()V

    .end local v0    # "endPosition":J
    :goto_1
    move v5, v4

    .line 205
    goto :goto_0

    .line 192
    :cond_3
    iget v3, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->atomType:I

    invoke-static {v3}, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->shouldParseLeafAtom(I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 195
    iget v3, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    if-ne v3, v10, :cond_4

    move v3, v4

    :goto_2
    invoke-static {v3}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 196
    iget-wide v6, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->atomSize:J

    const-wide/32 v8, 0x7fffffff

    cmp-long v3, v6, v8

    if-gtz v3, :cond_5

    move v3, v4

    :goto_3
    invoke-static {v3}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 197
    new-instance v3, Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-wide v6, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->atomSize:J

    long-to-int v6, v6

    invoke-direct {v3, v6}, Lcom/google/android/exoplayer/util/ParsableByteArray;-><init>(I)V

    iput-object v3, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->atomData:Lcom/google/android/exoplayer/util/ParsableByteArray;

    .line 198
    iget-object v3, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->atomHeader:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v3, v3, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    iget-object v6, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->atomData:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v6, v6, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    invoke-static {v3, v5, v6, v5, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 199
    iput v11, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->parserState:I

    goto :goto_1

    :cond_4
    move v3, v5

    .line 195
    goto :goto_2

    :cond_5
    move v3, v5

    .line 196
    goto :goto_3

    .line 201
    :cond_6
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->atomData:Lcom/google/android/exoplayer/util/ParsableByteArray;

    .line 202
    iput v11, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->parserState:I

    goto :goto_1
.end method

.method private readAtomPayload(Lcom/google/android/exoplayer/extractor/ExtractorInput;Lcom/google/android/exoplayer/extractor/PositionHolder;)Z
    .locals 10
    .param p1, "input"    # Lcom/google/android/exoplayer/extractor/ExtractorInput;
    .param p2, "positionHolder"    # Lcom/google/android/exoplayer/extractor/PositionHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 215
    iget-wide v6, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->atomSize:J

    iget v8, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    int-to-long v8, v8

    sub-long v2, v6, v8

    .line 216
    .local v2, "atomPayloadSize":J
    invoke-interface {p1}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->getPosition()J

    move-result-wide v6

    add-long v0, v6, v2

    .line 217
    .local v0, "atomEndPosition":J
    const/4 v5, 0x0

    .line 218
    .local v5, "seekRequired":Z
    iget-object v6, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->atomData:Lcom/google/android/exoplayer/util/ParsableByteArray;

    if-eqz v6, :cond_2

    .line 219
    iget-object v6, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->atomData:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v6, v6, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    iget v7, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    long-to-int v8, v2

    invoke-interface {p1, v6, v7, v8}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->readFully([BII)V

    .line 220
    iget v6, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->atomType:I

    sget v7, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_ftyp:I

    if-ne v6, v7, :cond_1

    .line 221
    iget-object v6, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->atomData:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-static {v6}, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->processFtypAtom(Lcom/google/android/exoplayer/util/ParsableByteArray;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->isQuickTime:Z

    .line 235
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_5

    iget-object v6, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;

    iget-wide v6, v6, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->endPosition:J

    cmp-long v6, v6, v0

    if-nez v6, :cond_5

    .line 236
    iget-object v6, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;

    .line 237
    .local v4, "containerAtom":Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;
    iget v6, v4, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->type:I

    sget v7, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_moov:I

    if-ne v6, v7, :cond_4

    .line 239
    invoke-direct {p0, v4}, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->processMoovAtom(Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;)V

    .line 240
    iget-object v6, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->clear()V

    .line 241
    const/4 v6, 0x3

    iput v6, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->parserState:I

    .line 242
    const/4 v5, 0x0

    .line 249
    .end local v4    # "containerAtom":Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;
    .end local v5    # "seekRequired":Z
    :goto_1
    return v5

    .line 222
    .restart local v5    # "seekRequired":Z
    :cond_1
    iget-object v6, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 223
    iget-object v6, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;

    new-instance v7, Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;

    iget v8, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->atomType:I

    iget-object v9, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->atomData:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-direct {v7, v8, v9}, Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;-><init>(ILcom/google/android/exoplayer/util/ParsableByteArray;)V

    invoke-virtual {v6, v7}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->add(Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;)V

    goto :goto_0

    .line 227
    :cond_2
    const-wide/32 v6, 0x40000

    cmp-long v6, v2, v6

    if-gez v6, :cond_3

    .line 228
    long-to-int v6, v2

    invoke-interface {p1, v6}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->skipFully(I)V

    goto :goto_0

    .line 230
    :cond_3
    invoke-interface {p1}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->getPosition()J

    move-result-wide v6

    add-long/2addr v6, v2

    iput-wide v6, p2, Lcom/google/android/exoplayer/extractor/PositionHolder;->position:J

    .line 231
    const/4 v5, 0x1

    goto :goto_0

    .line 243
    .restart local v4    # "containerAtom":Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;
    :cond_4
    iget-object v6, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 244
    iget-object v6, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;

    invoke-virtual {v6, v4}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->add(Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;)V

    goto :goto_0

    .line 248
    .end local v4    # "containerAtom":Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;
    :cond_5
    invoke-direct {p0}, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->enterReadingAtomHeaderState()V

    goto :goto_1
.end method

.method private readSample(Lcom/google/android/exoplayer/extractor/ExtractorInput;Lcom/google/android/exoplayer/extractor/PositionHolder;)I
    .locals 20
    .param p1, "input"    # Lcom/google/android/exoplayer/extractor/ExtractorInput;
    .param p2, "positionHolder"    # Lcom/google/android/exoplayer/extractor/PositionHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 343
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->getTrackIndexOfEarliestCurrentSample()I

    move-result v18

    .line 344
    .local v18, "trackIndex":I
    const/4 v4, -0x1

    move/from16 v0, v18

    if-ne v0, v4, :cond_0

    .line 345
    const/4 v4, -0x1

    .line 400
    :goto_0
    return v4

    .line 347
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->tracks:[Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor$Mp4Track;

    aget-object v15, v4, v18

    .line 348
    .local v15, "track":Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor$Mp4Track;
    iget-object v3, v15, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor$Mp4Track;->trackOutput:Lcom/google/android/exoplayer/extractor/TrackOutput;

    .line 349
    .local v3, "trackOutput":Lcom/google/android/exoplayer/extractor/TrackOutput;
    iget v14, v15, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor$Mp4Track;->sampleIndex:I

    .line 350
    .local v14, "sampleIndex":I
    iget-object v4, v15, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Lcom/google/android/exoplayer/extractor/mp4/TrackSampleTable;

    iget-object v4, v4, Lcom/google/android/exoplayer/extractor/mp4/TrackSampleTable;->offsets:[J

    aget-wide v12, v4, v14

    .line 351
    .local v12, "position":J
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->getPosition()J

    move-result-wide v4

    sub-long v4, v12, v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    int-to-long v6, v6

    add-long v16, v4, v6

    .line 352
    .local v16, "skipAmount":J
    const-wide/16 v4, 0x0

    cmp-long v4, v16, v4

    if-ltz v4, :cond_1

    const-wide/32 v4, 0x40000

    cmp-long v4, v16, v4

    if-ltz v4, :cond_2

    .line 353
    :cond_1
    move-object/from16 v0, p2

    iput-wide v12, v0, Lcom/google/android/exoplayer/extractor/PositionHolder;->position:J

    .line 354
    const/4 v4, 0x1

    goto :goto_0

    .line 356
    :cond_2
    move-wide/from16 v0, v16

    long-to-int v4, v0

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->skipFully(I)V

    .line 357
    iget-object v4, v15, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Lcom/google/android/exoplayer/extractor/mp4/TrackSampleTable;

    iget-object v4, v4, Lcom/google/android/exoplayer/extractor/mp4/TrackSampleTable;->sizes:[I

    aget v4, v4, v14

    move-object/from16 v0, p0

    iput v4, v0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->sampleSize:I

    .line 358
    iget-object v4, v15, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor$Mp4Track;->track:Lcom/google/android/exoplayer/extractor/mp4/Track;

    iget v4, v4, Lcom/google/android/exoplayer/extractor/mp4/Track;->nalUnitLengthFieldLength:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_4

    .line 361
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->nalLength:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v2, v4, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    .line 362
    .local v2, "nalLengthData":[B
    const/4 v4, 0x0

    const/4 v5, 0x0

    aput-byte v5, v2, v4

    .line 363
    const/4 v4, 0x1

    const/4 v5, 0x0

    aput-byte v5, v2, v4

    .line 364
    const/4 v4, 0x2

    const/4 v5, 0x0

    aput-byte v5, v2, v4

    .line 365
    iget-object v4, v15, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor$Mp4Track;->track:Lcom/google/android/exoplayer/extractor/mp4/Track;

    iget v10, v4, Lcom/google/android/exoplayer/extractor/mp4/Track;->nalUnitLengthFieldLength:I

    .line 366
    .local v10, "nalUnitLengthFieldLength":I
    iget-object v4, v15, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor$Mp4Track;->track:Lcom/google/android/exoplayer/extractor/mp4/Track;

    iget v4, v4, Lcom/google/android/exoplayer/extractor/mp4/Track;->nalUnitLengthFieldLength:I

    rsub-int/lit8 v11, v4, 0x4

    .line 370
    .local v11, "nalUnitLengthFieldLengthDiff":I
    :goto_1
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->sampleSize:I

    if-ge v4, v5, :cond_5

    .line 371
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    if-nez v4, :cond_3

    .line 373
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->nalLength:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v4, v4, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    move-object/from16 v0, p1

    invoke-interface {v0, v4, v11, v10}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->readFully([BII)V

    .line 374
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->nalLength:Lcom/google/android/exoplayer/util/ParsableByteArray;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 375
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->nalLength:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v4}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    .line 377
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->nalStartCode:Lcom/google/android/exoplayer/util/ParsableByteArray;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 378
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->nalStartCode:Lcom/google/android/exoplayer/util/ParsableByteArray;

    const/4 v5, 0x4

    invoke-interface {v3, v4, v5}, Lcom/google/android/exoplayer/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer/util/ParsableByteArray;I)V

    .line 379
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    add-int/lit8 v4, v4, 0x4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    .line 380
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->sampleSize:I

    add-int/2addr v4, v11

    move-object/from16 v0, p0

    iput v4, v0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->sampleSize:I

    goto :goto_1

    .line 383
    :cond_3
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-interface {v3, v0, v4, v5}, Lcom/google/android/exoplayer/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer/extractor/ExtractorInput;IZ)I

    move-result v19

    .line 384
    .local v19, "writtenBytes":I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    add-int v4, v4, v19

    move-object/from16 v0, p0

    iput v4, v0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    .line 385
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    sub-int v4, v4, v19

    move-object/from16 v0, p0

    iput v4, v0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    goto :goto_1

    .line 389
    .end local v2    # "nalLengthData":[B
    .end local v10    # "nalUnitLengthFieldLength":I
    .end local v11    # "nalUnitLengthFieldLengthDiff":I
    .end local v19    # "writtenBytes":I
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->sampleSize:I

    if-ge v4, v5, :cond_5

    .line 390
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->sampleSize:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    sub-int/2addr v4, v5

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-interface {v3, v0, v4, v5}, Lcom/google/android/exoplayer/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer/extractor/ExtractorInput;IZ)I

    move-result v19

    .line 391
    .restart local v19    # "writtenBytes":I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    add-int v4, v4, v19

    move-object/from16 v0, p0

    iput v4, v0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    .line 392
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    sub-int v4, v4, v19

    move-object/from16 v0, p0

    iput v4, v0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    goto :goto_2

    .line 395
    .end local v19    # "writtenBytes":I
    :cond_5
    iget-object v4, v15, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Lcom/google/android/exoplayer/extractor/mp4/TrackSampleTable;

    iget-object v4, v4, Lcom/google/android/exoplayer/extractor/mp4/TrackSampleTable;->timestampsUs:[J

    aget-wide v4, v4, v14

    iget-object v6, v15, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Lcom/google/android/exoplayer/extractor/mp4/TrackSampleTable;

    iget-object v6, v6, Lcom/google/android/exoplayer/extractor/mp4/TrackSampleTable;->flags:[I

    aget v6, v6, v14

    move-object/from16 v0, p0

    iget v7, v0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->sampleSize:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface/range {v3 .. v9}, Lcom/google/android/exoplayer/extractor/TrackOutput;->sampleMetadata(JIII[B)V

    .line 397
    iget v4, v15, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor$Mp4Track;->sampleIndex:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v15, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor$Mp4Track;->sampleIndex:I

    .line 398
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    .line 399
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    .line 400
    const/4 v4, 0x0

    goto/16 :goto_0
.end method

.method private static shouldParseContainerAtom(I)Z
    .locals 1
    .param p0, "atom"    # I

    .prologue
    .line 442
    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_moov:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_trak:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_mdia:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_minf:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_stbl:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_edts:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_udta:I

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static shouldParseLeafAtom(I)Z
    .locals 1
    .param p0, "atom"    # I

    .prologue
    .line 431
    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_mdhd:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_mvhd:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_hdlr:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_stsd:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_stts:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_stss:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_ctts:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_elst:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_stsc:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_stsz:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_stco:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_co64:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_tkhd:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_ftyp:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_meta:I

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getPosition(J)J
    .locals 9
    .param p1, "timeUs"    # J

    .prologue
    .line 143
    const-wide v0, 0x7fffffffffffffffL

    .line 144
    .local v0, "earliestSamplePosition":J
    const/4 v6, 0x0

    .local v6, "trackIndex":I
    :goto_0
    iget-object v7, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->tracks:[Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor$Mp4Track;

    array-length v7, v7

    if-ge v6, v7, :cond_2

    .line 145
    iget-object v7, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->tracks:[Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor$Mp4Track;

    aget-object v7, v7, v6

    iget-object v5, v7, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Lcom/google/android/exoplayer/extractor/mp4/TrackSampleTable;

    .line 146
    .local v5, "sampleTable":Lcom/google/android/exoplayer/extractor/mp4/TrackSampleTable;
    invoke-virtual {v5, p1, p2}, Lcom/google/android/exoplayer/extractor/mp4/TrackSampleTable;->getIndexOfEarlierOrEqualSynchronizationSample(J)I

    move-result v4

    .line 147
    .local v4, "sampleIndex":I
    const/4 v7, -0x1

    if-ne v4, v7, :cond_0

    .line 149
    invoke-virtual {v5, p1, p2}, Lcom/google/android/exoplayer/extractor/mp4/TrackSampleTable;->getIndexOfLaterOrEqualSynchronizationSample(J)I

    move-result v4

    .line 151
    :cond_0
    iget-object v7, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->tracks:[Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor$Mp4Track;

    aget-object v7, v7, v6

    iput v4, v7, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor$Mp4Track;->sampleIndex:I

    .line 153
    iget-object v7, v5, Lcom/google/android/exoplayer/extractor/mp4/TrackSampleTable;->offsets:[J

    aget-wide v2, v7, v4

    .line 154
    .local v2, "offset":J
    cmp-long v7, v2, v0

    if-gez v7, :cond_1

    .line 155
    move-wide v0, v2

    .line 144
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 158
    .end local v2    # "offset":J
    .end local v4    # "sampleIndex":I
    .end local v5    # "sampleTable":Lcom/google/android/exoplayer/extractor/mp4/TrackSampleTable;
    :cond_2
    return-wide v0
.end method

.method public init(Lcom/google/android/exoplayer/extractor/ExtractorOutput;)V
    .locals 0
    .param p1, "output"    # Lcom/google/android/exoplayer/extractor/ExtractorOutput;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->extractorOutput:Lcom/google/android/exoplayer/extractor/ExtractorOutput;

    .line 95
    return-void
.end method

.method public isSeekable()Z
    .locals 1

    .prologue
    .line 138
    const/4 v0, 0x1

    return v0
.end method

.method public read(Lcom/google/android/exoplayer/extractor/ExtractorInput;Lcom/google/android/exoplayer/extractor/PositionHolder;)I
    .locals 4
    .param p1, "input"    # Lcom/google/android/exoplayer/extractor/ExtractorInput;
    .param p2, "seekPosition"    # Lcom/google/android/exoplayer/extractor/PositionHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 110
    :cond_0
    :goto_0
    iget v0, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->parserState:I

    packed-switch v0, :pswitch_data_0

    .line 129
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->readSample(Lcom/google/android/exoplayer/extractor/ExtractorInput;Lcom/google/android/exoplayer/extractor/PositionHolder;)I

    move-result v0

    :goto_1
    return v0

    .line 112
    :pswitch_0
    invoke-interface {p1}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->getPosition()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 113
    invoke-direct {p0}, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->enterReadingAtomHeaderState()V

    goto :goto_0

    .line 115
    :cond_1
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->parserState:I

    goto :goto_0

    .line 119
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->readAtomHeader(Lcom/google/android/exoplayer/extractor/ExtractorInput;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 120
    const/4 v0, -0x1

    goto :goto_1

    .line 124
    :pswitch_2
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->readAtomPayload(Lcom/google/android/exoplayer/extractor/ExtractorInput;Lcom/google/android/exoplayer/extractor/PositionHolder;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    const/4 v0, 0x1

    goto :goto_1

    .line 110
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public seek()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 99
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 100
    iput v1, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    .line 101
    iput v1, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    .line 102
    iput v1, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    .line 103
    iput v1, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->parserState:I

    .line 104
    return-void
.end method

.method public sniff(Lcom/google/android/exoplayer/extractor/ExtractorInput;)Z
    .locals 1
    .param p1, "input"    # Lcom/google/android/exoplayer/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 89
    invoke-static {p1}, Lcom/google/android/exoplayer/extractor/mp4/Sniffer;->sniffUnfragmented(Lcom/google/android/exoplayer/extractor/ExtractorInput;)Z

    move-result v0

    return v0
.end method
