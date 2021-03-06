.class public final Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;
.super Ljava/lang/Object;
.source "ExtractorSampleSource.java"

# interfaces
.implements Lcom/google/android/exoplayer/SampleSource;
.implements Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;
.implements Lcom/google/android/exoplayer/extractor/ExtractorOutput;
.implements Lcom/google/android/exoplayer/upstream/Loader$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$ExtractorHolder;,
        Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;,
        Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$InternalTrackOutput;,
        Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$UnrecognizedInputFormatException;
    }
.end annotation


# static fields
.field private static final DEFAULT_EXTRACTOR_CLASSES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/android/exoplayer/extractor/Extractor;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final DEFAULT_MIN_LOADABLE_RETRY_COUNT_LIVE:I = 0x6

.field public static final DEFAULT_MIN_LOADABLE_RETRY_COUNT_ON_DEMAND:I = 0x3

.field private static final MIN_RETRY_COUNT_DEFAULT_FOR_MEDIA:I = -0x1

.field private static final NO_RESET_PENDING:J = -0x8000000000000000L


# instance fields
.field private final allocator:Lcom/google/android/exoplayer/upstream/Allocator;

.field private currentLoadableException:Ljava/io/IOException;

.field private currentLoadableExceptionCount:I

.field private currentLoadableExceptionTimestamp:J

.field private final dataSource:Lcom/google/android/exoplayer/upstream/DataSource;

.field private downstreamPositionUs:J

.field private volatile drmInitData:Lcom/google/android/exoplayer/drm/DrmInitData;

.field private enabledTrackCount:I

.field private extractedSampleCount:I

.field private extractedSampleCountAtStartOfLoad:I

.field private final extractorHolder:Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$ExtractorHolder;

.field private havePendingNextSampleUs:Z

.field private lastSeekPositionUs:J

.field private loadable:Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;

.field private loader:Lcom/google/android/exoplayer/upstream/Loader;

.field private loadingFinished:Z

.field private maxTrackDurationUs:J

.field private mediaFormats:[Lcom/google/android/exoplayer/MediaFormat;

.field private final minLoadableRetryCount:I

.field private pendingDiscontinuities:[Z

.field private pendingMediaFormat:[Z

.field private pendingNextSampleUs:J

.field private pendingResetPositionUs:J

.field private prepared:Z

.field private remainingReleaseCount:I

.field private final requestedBufferSize:I

.field private final sampleQueues:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$InternalTrackOutput;",
            ">;"
        }
    .end annotation
.end field

.field private sampleTimeOffsetUs:J

.field private volatile seekMap:Lcom/google/android/exoplayer/extractor/SeekMap;

.field private trackEnabledStates:[Z

.field private volatile tracksBuilt:Z

.field private final uri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->DEFAULT_EXTRACTOR_CLASSES:Ljava/util/List;

    .line 108
    :try_start_0
    sget-object v0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->DEFAULT_EXTRACTOR_CLASSES:Ljava/util/List;

    const-string v1, "com.google.android.exoplayer.extractor.webm.WebmExtractor"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/google/android/exoplayer/extractor/Extractor;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_7

    .line 115
    :goto_0
    :try_start_1
    sget-object v0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->DEFAULT_EXTRACTOR_CLASSES:Ljava/util/List;

    const-string v1, "com.google.android.exoplayer.extractor.mp4.FragmentedMp4Extractor"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/google/android/exoplayer/extractor/Extractor;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_6

    .line 122
    :goto_1
    :try_start_2
    sget-object v0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->DEFAULT_EXTRACTOR_CLASSES:Ljava/util/List;

    const-string v1, "com.google.android.exoplayer.extractor.mp4.Mp4Extractor"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/google/android/exoplayer/extractor/Extractor;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_5

    .line 129
    :goto_2
    :try_start_3
    sget-object v0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->DEFAULT_EXTRACTOR_CLASSES:Ljava/util/List;

    const-string v1, "com.google.android.exoplayer.extractor.mp3.Mp3Extractor"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/google/android/exoplayer/extractor/Extractor;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_4

    .line 136
    :goto_3
    :try_start_4
    sget-object v0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->DEFAULT_EXTRACTOR_CLASSES:Ljava/util/List;

    const-string v1, "com.google.android.exoplayer.extractor.ts.AdtsExtractor"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/google/android/exoplayer/extractor/Extractor;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_3

    .line 143
    :goto_4
    :try_start_5
    sget-object v0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->DEFAULT_EXTRACTOR_CLASSES:Ljava/util/List;

    const-string v1, "com.google.android.exoplayer.extractor.ts.TsExtractor"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/google/android/exoplayer/extractor/Extractor;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_2

    .line 150
    :goto_5
    :try_start_6
    sget-object v0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->DEFAULT_EXTRACTOR_CLASSES:Ljava/util/List;

    const-string v1, "com.google.android.exoplayer.extractor.flv.FlvExtractor"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/google/android/exoplayer/extractor/Extractor;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_6} :catch_1

    .line 157
    :goto_6
    :try_start_7
    sget-object v0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->DEFAULT_EXTRACTOR_CLASSES:Ljava/util/List;

    const-string v1, "com.google.android.exoplayer.extractor.ts.PsExtractor"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/google/android/exoplayer/extractor/Extractor;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catch Ljava/lang/ClassNotFoundException; {:try_start_7 .. :try_end_7} :catch_0

    .line 163
    :goto_7
    return-void

    .line 160
    :catch_0
    move-exception v0

    goto :goto_7

    .line 153
    :catch_1
    move-exception v0

    goto :goto_6

    .line 146
    :catch_2
    move-exception v0

    goto :goto_5

    .line 139
    :catch_3
    move-exception v0

    goto :goto_4

    .line 132
    :catch_4
    move-exception v0

    goto :goto_3

    .line 125
    :catch_5
    move-exception v0

    goto :goto_2

    .line 118
    :catch_6
    move-exception v0

    goto :goto_1

    .line 111
    :catch_7
    move-exception v0

    goto/16 :goto_0
.end method

.method public varargs constructor <init>(Landroid/net/Uri;Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/upstream/Allocator;II[Lcom/google/android/exoplayer/extractor/Extractor;)V
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "dataSource"    # Lcom/google/android/exoplayer/upstream/DataSource;
    .param p3, "allocator"    # Lcom/google/android/exoplayer/upstream/Allocator;
    .param p4, "requestedBufferSize"    # I
    .param p5, "minLoadableRetryCount"    # I
    .param p6, "extractors"    # [Lcom/google/android/exoplayer/extractor/Extractor;

    .prologue
    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 233
    iput-object p1, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->uri:Landroid/net/Uri;

    .line 234
    iput-object p2, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->dataSource:Lcom/google/android/exoplayer/upstream/DataSource;

    .line 235
    iput-object p3, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->allocator:Lcom/google/android/exoplayer/upstream/Allocator;

    .line 236
    iput p4, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->requestedBufferSize:I

    .line 237
    iput p5, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->minLoadableRetryCount:I

    .line 238
    if-eqz p6, :cond_0

    array-length v2, p6

    if-nez v2, :cond_1

    .line 239
    :cond_0
    sget-object v2, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->DEFAULT_EXTRACTOR_CLASSES:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array p6, v2, [Lcom/google/android/exoplayer/extractor/Extractor;

    .line 240
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p6

    if-ge v1, v2, :cond_1

    .line 242
    :try_start_0
    sget-object v2, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->DEFAULT_EXTRACTOR_CLASSES:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer/extractor/Extractor;

    aput-object v2, p6, v1
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 240
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 243
    :catch_0
    move-exception v0

    .line 244
    .local v0, "e":Ljava/lang/InstantiationException;
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Unexpected error creating default extractor"

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 245
    .end local v0    # "e":Ljava/lang/InstantiationException;
    :catch_1
    move-exception v0

    .line 246
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Unexpected error creating default extractor"

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 250
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    .end local v1    # "i":I
    :cond_1
    new-instance v2, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$ExtractorHolder;

    invoke-direct {v2, p6, p0}, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$ExtractorHolder;-><init>([Lcom/google/android/exoplayer/extractor/Extractor;Lcom/google/android/exoplayer/extractor/ExtractorOutput;)V

    iput-object v2, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->extractorHolder:Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$ExtractorHolder;

    .line 251
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->sampleQueues:Landroid/util/SparseArray;

    .line 252
    const-wide/high16 v2, -0x8000000000000000L

    iput-wide v2, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->pendingResetPositionUs:J

    .line 253
    return-void
.end method

.method public varargs constructor <init>(Landroid/net/Uri;Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/upstream/Allocator;I[Lcom/google/android/exoplayer/extractor/Extractor;)V
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "dataSource"    # Lcom/google/android/exoplayer/upstream/DataSource;
    .param p3, "allocator"    # Lcom/google/android/exoplayer/upstream/Allocator;
    .param p4, "requestedBufferSize"    # I
    .param p5, "extractors"    # [Lcom/google/android/exoplayer/extractor/Extractor;

    .prologue
    .line 216
    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;-><init>(Landroid/net/Uri;Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/upstream/Allocator;II[Lcom/google/android/exoplayer/extractor/Extractor;)V

    .line 218
    return-void
.end method

.method static synthetic access$008(Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;)I
    .locals 2
    .param p0, "x0"    # Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;

    .prologue
    .line 69
    iget v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->extractedSampleCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->extractedSampleCount:I

    return v0
.end method

.method private clearState()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 637
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 638
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$InternalTrackOutput;

    invoke-virtual {v1}, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$InternalTrackOutput;->clear()V

    .line 637
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 640
    :cond_0
    iput-object v2, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->loadable:Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;

    .line 641
    iput-object v2, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->currentLoadableException:Ljava/io/IOException;

    .line 642
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->currentLoadableExceptionCount:I

    .line 643
    return-void
.end method

.method private createLoadableFromPositionUs(J)Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;
    .locals 9
    .param p1, "positionUs"    # J

    .prologue
    .line 615
    new-instance v0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;

    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->uri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->dataSource:Lcom/google/android/exoplayer/upstream/DataSource;

    iget-object v3, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->extractorHolder:Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$ExtractorHolder;

    iget-object v4, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->allocator:Lcom/google/android/exoplayer/upstream/Allocator;

    iget v5, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->requestedBufferSize:I

    iget-object v6, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->seekMap:Lcom/google/android/exoplayer/extractor/SeekMap;

    invoke-interface {v6, p1, p2}, Lcom/google/android/exoplayer/extractor/SeekMap;->getPosition(J)J

    move-result-wide v6

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;-><init>(Landroid/net/Uri;Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$ExtractorHolder;Lcom/google/android/exoplayer/upstream/Allocator;IJ)V

    return-object v0
.end method

.method private createLoadableFromStart()Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;
    .locals 8

    .prologue
    .line 610
    new-instance v0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;

    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->uri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->dataSource:Lcom/google/android/exoplayer/upstream/DataSource;

    iget-object v3, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->extractorHolder:Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$ExtractorHolder;

    iget-object v4, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->allocator:Lcom/google/android/exoplayer/upstream/Allocator;

    iget v5, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->requestedBufferSize:I

    const-wide/16 v6, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;-><init>(Landroid/net/Uri;Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$ExtractorHolder;Lcom/google/android/exoplayer/upstream/Allocator;IJ)V

    return-object v0
.end method

.method private discardSamplesForDisabledTracks(J)V
    .locals 3
    .param p1, "timeUs"    # J

    .prologue
    .line 629
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->trackEnabledStates:[Z

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 630
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->trackEnabledStates:[Z

    aget-boolean v1, v1, v0

    if-nez v1, :cond_0

    .line 631
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$InternalTrackOutput;

    invoke-virtual {v1, p1, p2}, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$InternalTrackOutput;->discardUntil(J)V

    .line 629
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 634
    :cond_1
    return-void
.end method

.method private getRetryDelayMillis(J)J
    .locals 5
    .param p1, "errorCount"    # J

    .prologue
    .line 654
    const-wide/16 v0, 0x1

    sub-long v0, p1, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method private haveFormatsForAllTracks()Z
    .locals 2

    .prologue
    .line 620
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 621
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$InternalTrackOutput;

    invoke-virtual {v1}, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$InternalTrackOutput;->hasFormat()Z

    move-result v1

    if-nez v1, :cond_0

    .line 622
    const/4 v1, 0x0

    .line 625
    :goto_1
    return v1

    .line 620
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 625
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private isCurrentLoadableExceptionFatal()Z
    .locals 1

    .prologue
    .line 650
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->currentLoadableException:Ljava/io/IOException;

    instance-of v0, v0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$UnrecognizedInputFormatException;

    return v0
.end method

.method private isPendingReset()Z
    .locals 4

    .prologue
    .line 646
    iget-wide v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->pendingResetPositionUs:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private maybeStartLoading()V
    .locals 14

    .prologue
    const-wide/16 v12, -0x1

    const-wide/high16 v10, -0x8000000000000000L

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 544
    iget-boolean v5, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->loadingFinished:Z

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->loader:Lcom/google/android/exoplayer/upstream/Loader;

    invoke-virtual {v5}, Lcom/google/android/exoplayer/upstream/Loader;->isLoading()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 607
    :cond_0
    :goto_0
    return-void

    .line 548
    :cond_1
    iget-object v5, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->currentLoadableException:Ljava/io/IOException;

    if-eqz v5, :cond_7

    .line 549
    invoke-direct {p0}, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->isCurrentLoadableExceptionFatal()Z

    move-result v5

    if-nez v5, :cond_0

    .line 552
    iget-object v5, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->loadable:Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;

    if-eqz v5, :cond_2

    move v3, v4

    :cond_2
    invoke-static {v3}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 553
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->currentLoadableExceptionTimestamp:J

    sub-long v0, v6, v8

    .line 554
    .local v0, "elapsedMillis":J
    iget v3, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->currentLoadableExceptionCount:I

    int-to-long v6, v3

    invoke-direct {p0, v6, v7}, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->getRetryDelayMillis(J)J

    move-result-wide v6

    cmp-long v3, v0, v6

    if-ltz v3, :cond_0

    .line 555
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->currentLoadableException:Ljava/io/IOException;

    .line 556
    iget-boolean v3, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->prepared:Z

    if-nez v3, :cond_5

    .line 560
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v3, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 561
    iget-object v3, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$InternalTrackOutput;

    invoke-virtual {v3}, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$InternalTrackOutput;->clear()V

    .line 560
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 563
    :cond_3
    invoke-direct {p0}, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->createLoadableFromStart()Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->loadable:Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;

    .line 581
    .end local v2    # "i":I
    :cond_4
    :goto_2
    iget v3, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->extractedSampleCount:I

    iput v3, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->extractedSampleCountAtStartOfLoad:I

    .line 582
    iget-object v3, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->loader:Lcom/google/android/exoplayer/upstream/Loader;

    iget-object v4, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->loadable:Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;

    invoke-virtual {v3, v4, p0}, Lcom/google/android/exoplayer/upstream/Loader;->startLoading(Lcom/google/android/exoplayer/upstream/Loader$Loadable;Lcom/google/android/exoplayer/upstream/Loader$Callback;)V

    goto :goto_0

    .line 564
    :cond_5
    iget-object v3, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->seekMap:Lcom/google/android/exoplayer/extractor/SeekMap;

    invoke-interface {v3}, Lcom/google/android/exoplayer/extractor/SeekMap;->isSeekable()Z

    move-result v3

    if-nez v3, :cond_4

    iget-wide v6, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->maxTrackDurationUs:J

    cmp-long v3, v6, v12

    if-nez v3, :cond_4

    .line 569
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_3
    iget-object v3, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_6

    .line 570
    iget-object v3, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$InternalTrackOutput;

    invoke-virtual {v3}, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$InternalTrackOutput;->clear()V

    .line 569
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 572
    :cond_6
    invoke-direct {p0}, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->createLoadableFromStart()Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->loadable:Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;

    .line 575
    iget-wide v6, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->downstreamPositionUs:J

    iput-wide v6, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->pendingNextSampleUs:J

    .line 576
    iput-boolean v4, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->havePendingNextSampleUs:Z

    goto :goto_2

    .line 590
    .end local v0    # "elapsedMillis":J
    .end local v2    # "i":I
    :cond_7
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->sampleTimeOffsetUs:J

    .line 591
    iput-boolean v3, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->havePendingNextSampleUs:Z

    .line 593
    iget-boolean v3, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->prepared:Z

    if-nez v3, :cond_8

    .line 594
    invoke-direct {p0}, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->createLoadableFromStart()Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->loadable:Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;

    .line 605
    :goto_4
    iget v3, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->extractedSampleCount:I

    iput v3, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->extractedSampleCountAtStartOfLoad:I

    .line 606
    iget-object v3, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->loader:Lcom/google/android/exoplayer/upstream/Loader;

    iget-object v4, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->loadable:Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;

    invoke-virtual {v3, v4, p0}, Lcom/google/android/exoplayer/upstream/Loader;->startLoading(Lcom/google/android/exoplayer/upstream/Loader$Loadable;Lcom/google/android/exoplayer/upstream/Loader$Callback;)V

    goto/16 :goto_0

    .line 596
    :cond_8
    invoke-direct {p0}, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->isPendingReset()Z

    move-result v3

    invoke-static {v3}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 597
    iget-wide v6, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->maxTrackDurationUs:J

    cmp-long v3, v6, v12

    if-eqz v3, :cond_9

    iget-wide v6, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->pendingResetPositionUs:J

    iget-wide v8, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->maxTrackDurationUs:J

    cmp-long v3, v6, v8

    if-ltz v3, :cond_9

    .line 598
    iput-boolean v4, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->loadingFinished:Z

    .line 599
    iput-wide v10, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->pendingResetPositionUs:J

    goto/16 :goto_0

    .line 602
    :cond_9
    iget-wide v4, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->pendingResetPositionUs:J

    invoke-direct {p0, v4, v5}, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->createLoadableFromPositionUs(J)Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->loadable:Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;

    .line 603
    iput-wide v10, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->pendingResetPositionUs:J

    goto :goto_4
.end method

.method private restartFrom(J)V
    .locals 1
    .param p1, "positionUs"    # J

    .prologue
    .line 533
    iput-wide p1, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->pendingResetPositionUs:J

    .line 534
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->loadingFinished:Z

    .line 535
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->loader:Lcom/google/android/exoplayer/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/upstream/Loader;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 536
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->loader:Lcom/google/android/exoplayer/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/upstream/Loader;->cancelLoading()V

    .line 541
    :goto_0
    return-void

    .line 538
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->clearState()V

    .line 539
    invoke-direct {p0}, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->maybeStartLoading()V

    goto :goto_0
.end method


# virtual methods
.method public continueBuffering(IJ)Z
    .locals 6
    .param p1, "track"    # I
    .param p2, "playbackPositionUs"    # J

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 340
    iget-boolean v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->prepared:Z

    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 341
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->trackEnabledStates:[Z

    aget-boolean v0, v0, p1

    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 342
    iput-wide p2, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->downstreamPositionUs:J

    .line 343
    iget-wide v4, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->downstreamPositionUs:J

    invoke-direct {p0, v4, v5}, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->discardSamplesForDisabledTracks(J)V

    .line 344
    iget-boolean v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->loadingFinished:Z

    if-eqz v0, :cond_0

    .line 351
    :goto_0
    return v1

    .line 347
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->maybeStartLoading()V

    .line 348
    invoke-direct {p0}, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->isPendingReset()Z

    move-result v0

    if-eqz v0, :cond_1

    move v1, v2

    .line 349
    goto :goto_0

    .line 351
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$InternalTrackOutput;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$InternalTrackOutput;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method public disable(I)V
    .locals 3
    .param p1, "track"    # I

    .prologue
    const/4 v2, 0x0

    .line 323
    iget-boolean v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->prepared:Z

    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 324
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->trackEnabledStates:[Z

    aget-boolean v0, v0, p1

    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 325
    iget v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->enabledTrackCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->enabledTrackCount:I

    .line 326
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->trackEnabledStates:[Z

    aput-boolean v2, v0, p1

    .line 327
    iget v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->enabledTrackCount:I

    if-nez v0, :cond_0

    .line 328
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->downstreamPositionUs:J

    .line 329
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->loader:Lcom/google/android/exoplayer/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/upstream/Loader;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 330
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->loader:Lcom/google/android/exoplayer/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/upstream/Loader;->cancelLoading()V

    .line 336
    :cond_0
    :goto_0
    return-void

    .line 332
    :cond_1
    invoke-direct {p0}, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->clearState()V

    .line 333
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->allocator:Lcom/google/android/exoplayer/upstream/Allocator;

    invoke-interface {v0, v2}, Lcom/google/android/exoplayer/upstream/Allocator;->trim(I)V

    goto :goto_0
.end method

.method public drmInitData(Lcom/google/android/exoplayer/drm/DrmInitData;)V
    .locals 0
    .param p1, "drmInitData"    # Lcom/google/android/exoplayer/drm/DrmInitData;

    .prologue
    .line 527
    iput-object p1, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->drmInitData:Lcom/google/android/exoplayer/drm/DrmInitData;

    .line 528
    return-void
.end method

.method public enable(IJ)V
    .locals 4
    .param p1, "track"    # I
    .param p2, "positionUs"    # J

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 306
    iget-boolean v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->prepared:Z

    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 307
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->trackEnabledStates:[Z

    aget-boolean v0, v0, p1

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 308
    iget v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->enabledTrackCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->enabledTrackCount:I

    .line 309
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->trackEnabledStates:[Z

    aput-boolean v1, v0, p1

    .line 310
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->pendingMediaFormat:[Z

    aput-boolean v1, v0, p1

    .line 311
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->pendingDiscontinuities:[Z

    aput-boolean v2, v0, p1

    .line 312
    iget v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->enabledTrackCount:I

    if-ne v0, v1, :cond_1

    .line 314
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->seekMap:Lcom/google/android/exoplayer/extractor/SeekMap;

    invoke-interface {v0}, Lcom/google/android/exoplayer/extractor/SeekMap;->isSeekable()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 p2, 0x0

    .line 315
    :cond_0
    iput-wide p2, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->downstreamPositionUs:J

    .line 316
    iput-wide p2, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->lastSeekPositionUs:J

    .line 317
    invoke-direct {p0, p2, p3}, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->restartFrom(J)V

    .line 319
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 307
    goto :goto_0
.end method

.method public endTracks()V
    .locals 1

    .prologue
    .line 517
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->tracksBuilt:Z

    .line 518
    return-void
.end method

.method public getBufferedPositionUs()J
    .locals 6

    .prologue
    .line 453
    iget-boolean v1, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->loadingFinished:Z

    if-eqz v1, :cond_1

    .line 454
    const-wide/16 v2, -0x3

    .line 463
    :cond_0
    :goto_0
    return-wide v2

    .line 455
    :cond_1
    invoke-direct {p0}, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->isPendingReset()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 456
    iget-wide v2, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->pendingResetPositionUs:J

    goto :goto_0

    .line 458
    :cond_2
    const-wide/high16 v2, -0x8000000000000000L

    .line 459
    .local v2, "largestParsedTimestampUs":J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 460
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$InternalTrackOutput;

    invoke-virtual {v1}, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$InternalTrackOutput;->getLargestParsedTimestampUs()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 459
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 463
    :cond_3
    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    iget-wide v2, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->downstreamPositionUs:J

    goto :goto_0
.end method

.method public getFormat(I)Lcom/google/android/exoplayer/MediaFormat;
    .locals 1
    .param p1, "track"    # I

    .prologue
    .line 300
    iget-boolean v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->prepared:Z

    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 301
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->mediaFormats:[Lcom/google/android/exoplayer/MediaFormat;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getTrackCount()I
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    return v0
.end method

.method public maybeThrowError()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 401
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->currentLoadableException:Ljava/io/IOException;

    if-nez v1, :cond_1

    .line 418
    :cond_0
    return-void

    .line 404
    :cond_1
    invoke-direct {p0}, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->isCurrentLoadableExceptionFatal()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 405
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->currentLoadableException:Ljava/io/IOException;

    throw v1

    .line 408
    :cond_2
    iget v1, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->minLoadableRetryCount:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    .line 409
    iget v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->minLoadableRetryCount:I

    .line 415
    .local v0, "minLoadableRetryCountForMedia":I
    :goto_0
    iget v1, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->currentLoadableExceptionCount:I

    if-le v1, v0, :cond_0

    .line 416
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->currentLoadableException:Ljava/io/IOException;

    throw v1

    .line 411
    .end local v0    # "minLoadableRetryCountForMedia":I
    :cond_3
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->seekMap:Lcom/google/android/exoplayer/extractor/SeekMap;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->seekMap:Lcom/google/android/exoplayer/extractor/SeekMap;

    invoke-interface {v1}, Lcom/google/android/exoplayer/extractor/SeekMap;->isSeekable()Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v0, 0x6

    .restart local v0    # "minLoadableRetryCountForMedia":I
    :goto_1
    goto :goto_0

    .end local v0    # "minLoadableRetryCountForMedia":I
    :cond_4
    const/4 v0, 0x3

    goto :goto_1
.end method

.method public onLoadCanceled(Lcom/google/android/exoplayer/upstream/Loader$Loadable;)V
    .locals 2
    .param p1, "loadable"    # Lcom/google/android/exoplayer/upstream/Loader$Loadable;

    .prologue
    .line 486
    iget v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->enabledTrackCount:I

    if-lez v0, :cond_0

    .line 487
    iget-wide v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->pendingResetPositionUs:J

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->restartFrom(J)V

    .line 492
    :goto_0
    return-void

    .line 489
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->clearState()V

    .line 490
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->allocator:Lcom/google/android/exoplayer/upstream/Allocator;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer/upstream/Allocator;->trim(I)V

    goto :goto_0
.end method

.method public onLoadCompleted(Lcom/google/android/exoplayer/upstream/Loader$Loadable;)V
    .locals 1
    .param p1, "loadable"    # Lcom/google/android/exoplayer/upstream/Loader$Loadable;

    .prologue
    .line 481
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->loadingFinished:Z

    .line 482
    return-void
.end method

.method public onLoadError(Lcom/google/android/exoplayer/upstream/Loader$Loadable;Ljava/io/IOException;)V
    .locals 2
    .param p1, "ignored"    # Lcom/google/android/exoplayer/upstream/Loader$Loadable;
    .param p2, "e"    # Ljava/io/IOException;

    .prologue
    .line 496
    iput-object p2, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->currentLoadableException:Ljava/io/IOException;

    .line 497
    iget v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->extractedSampleCount:I

    iget v1, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->extractedSampleCountAtStartOfLoad:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->currentLoadableExceptionCount:I

    .line 499
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->currentLoadableExceptionTimestamp:J

    .line 500
    invoke-direct {p0}, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->maybeStartLoading()V

    .line 501
    return-void

    .line 497
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->currentLoadableExceptionCount:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public prepare(J)Z
    .locals 12
    .param p1, "positionUs"    # J

    .prologue
    const-wide/16 v10, -0x1

    const/4 v4, 0x1

    .line 263
    iget-boolean v3, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->prepared:Z

    if-eqz v3, :cond_0

    move v3, v4

    .line 290
    :goto_0
    return v3

    .line 266
    :cond_0
    iget-object v3, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->loader:Lcom/google/android/exoplayer/upstream/Loader;

    if-nez v3, :cond_1

    .line 267
    new-instance v3, Lcom/google/android/exoplayer/upstream/Loader;

    const-string v5, "Loader:ExtractorSampleSource"

    invoke-direct {v3, v5}, Lcom/google/android/exoplayer/upstream/Loader;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->loader:Lcom/google/android/exoplayer/upstream/Loader;

    .line 270
    :cond_1
    invoke-direct {p0}, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->maybeStartLoading()V

    .line 272
    iget-object v3, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->seekMap:Lcom/google/android/exoplayer/extractor/SeekMap;

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->tracksBuilt:Z

    if-eqz v3, :cond_4

    invoke-direct {p0}, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->haveFormatsForAllTracks()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 273
    iget-object v3, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 274
    .local v2, "trackCount":I
    new-array v3, v2, [Z

    iput-object v3, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->trackEnabledStates:[Z

    .line 275
    new-array v3, v2, [Z

    iput-object v3, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->pendingDiscontinuities:[Z

    .line 276
    new-array v3, v2, [Z

    iput-object v3, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->pendingMediaFormat:[Z

    .line 277
    new-array v3, v2, [Lcom/google/android/exoplayer/MediaFormat;

    iput-object v3, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->mediaFormats:[Lcom/google/android/exoplayer/MediaFormat;

    .line 278
    iput-wide v10, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->maxTrackDurationUs:J

    .line 279
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_3

    .line 280
    iget-object v3, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$InternalTrackOutput;

    invoke-virtual {v3}, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$InternalTrackOutput;->getFormat()Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v0

    .line 281
    .local v0, "format":Lcom/google/android/exoplayer/MediaFormat;
    iget-object v3, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->mediaFormats:[Lcom/google/android/exoplayer/MediaFormat;

    aput-object v0, v3, v1

    .line 282
    iget-wide v6, v0, Lcom/google/android/exoplayer/MediaFormat;->durationUs:J

    cmp-long v3, v6, v10

    if-eqz v3, :cond_2

    iget-wide v6, v0, Lcom/google/android/exoplayer/MediaFormat;->durationUs:J

    iget-wide v8, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->maxTrackDurationUs:J

    cmp-long v3, v6, v8

    if-lez v3, :cond_2

    .line 283
    iget-wide v6, v0, Lcom/google/android/exoplayer/MediaFormat;->durationUs:J

    iput-wide v6, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->maxTrackDurationUs:J

    .line 279
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 286
    .end local v0    # "format":Lcom/google/android/exoplayer/MediaFormat;
    :cond_3
    iput-boolean v4, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->prepared:Z

    move v3, v4

    .line 287
    goto :goto_0

    .line 290
    .end local v1    # "i":I
    .end local v2    # "trackCount":I
    :cond_4
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public readData(IJLcom/google/android/exoplayer/MediaFormatHolder;Lcom/google/android/exoplayer/SampleHolder;)I
    .locals 8
    .param p1, "track"    # I
    .param p2, "playbackPositionUs"    # J
    .param p4, "formatHolder"    # Lcom/google/android/exoplayer/MediaFormatHolder;
    .param p5, "sampleHolder"    # Lcom/google/android/exoplayer/SampleHolder;

    .prologue
    const/4 v3, -0x2

    const/4 v2, 0x0

    .line 366
    iput-wide p2, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->downstreamPositionUs:J

    .line 368
    iget-object v4, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->pendingDiscontinuities:[Z

    aget-boolean v4, v4, p1

    if-nez v4, :cond_0

    invoke-direct {p0}, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->isPendingReset()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    move v2, v3

    .line 396
    :goto_0
    return v2

    .line 372
    :cond_1
    iget-object v4, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$InternalTrackOutput;

    .line 373
    .local v1, "sampleQueue":Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$InternalTrackOutput;
    iget-object v4, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->pendingMediaFormat:[Z

    aget-boolean v4, v4, p1

    if-eqz v4, :cond_2

    .line 374
    invoke-virtual {v1}, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$InternalTrackOutput;->getFormat()Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v3

    iput-object v3, p4, Lcom/google/android/exoplayer/MediaFormatHolder;->format:Lcom/google/android/exoplayer/MediaFormat;

    .line 375
    iget-object v3, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->drmInitData:Lcom/google/android/exoplayer/drm/DrmInitData;

    iput-object v3, p4, Lcom/google/android/exoplayer/MediaFormatHolder;->drmInitData:Lcom/google/android/exoplayer/drm/DrmInitData;

    .line 376
    iget-object v3, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->pendingMediaFormat:[Z

    aput-boolean v2, v3, p1

    .line 377
    const/4 v2, -0x4

    goto :goto_0

    .line 380
    :cond_2
    invoke-virtual {v1, p5}, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$InternalTrackOutput;->getSample(Lcom/google/android/exoplayer/SampleHolder;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 381
    iget-wide v4, p5, Lcom/google/android/exoplayer/SampleHolder;->timeUs:J

    iget-wide v6, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->lastSeekPositionUs:J

    cmp-long v3, v4, v6

    if-gez v3, :cond_4

    const/4 v0, 0x1

    .line 382
    .local v0, "decodeOnly":Z
    :goto_1
    iget v4, p5, Lcom/google/android/exoplayer/SampleHolder;->flags:I

    if-eqz v0, :cond_5

    const/high16 v3, 0x8000000

    :goto_2
    or-int/2addr v3, v4

    iput v3, p5, Lcom/google/android/exoplayer/SampleHolder;->flags:I

    .line 383
    iget-boolean v3, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->havePendingNextSampleUs:Z

    if-eqz v3, :cond_3

    .line 385
    iget-wide v4, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->pendingNextSampleUs:J

    iget-wide v6, p5, Lcom/google/android/exoplayer/SampleHolder;->timeUs:J

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->sampleTimeOffsetUs:J

    .line 386
    iput-boolean v2, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->havePendingNextSampleUs:Z

    .line 388
    :cond_3
    iget-wide v2, p5, Lcom/google/android/exoplayer/SampleHolder;->timeUs:J

    iget-wide v4, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->sampleTimeOffsetUs:J

    add-long/2addr v2, v4

    iput-wide v2, p5, Lcom/google/android/exoplayer/SampleHolder;->timeUs:J

    .line 389
    const/4 v2, -0x3

    goto :goto_0

    .end local v0    # "decodeOnly":Z
    :cond_4
    move v0, v2

    .line 381
    goto :goto_1

    .restart local v0    # "decodeOnly":Z
    :cond_5
    move v3, v2

    .line 382
    goto :goto_2

    .line 392
    .end local v0    # "decodeOnly":Z
    :cond_6
    iget-boolean v2, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->loadingFinished:Z

    if-eqz v2, :cond_7

    .line 393
    const/4 v2, -0x1

    goto :goto_0

    :cond_7
    move v2, v3

    .line 396
    goto :goto_0
.end method

.method public readDiscontinuity(I)J
    .locals 2
    .param p1, "track"    # I

    .prologue
    .line 356
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->pendingDiscontinuities:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->pendingDiscontinuities:[Z

    const/4 v1, 0x0

    aput-boolean v1, v0, p1

    .line 358
    iget-wide v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->lastSeekPositionUs:J

    .line 360
    :goto_0
    return-wide v0

    :cond_0
    const-wide/high16 v0, -0x8000000000000000L

    goto :goto_0
.end method

.method public register()Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;
    .locals 1

    .prologue
    .line 257
    iget v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->remainingReleaseCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->remainingReleaseCount:I

    .line 258
    return-object p0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 470
    iget v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->remainingReleaseCount:I

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 471
    iget v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->remainingReleaseCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->remainingReleaseCount:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->loader:Lcom/google/android/exoplayer/upstream/Loader;

    if-eqz v0, :cond_0

    .line 472
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->loader:Lcom/google/android/exoplayer/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/upstream/Loader;->release()V

    .line 473
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->loader:Lcom/google/android/exoplayer/upstream/Loader;

    .line 475
    :cond_0
    return-void

    .line 470
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public seekMap(Lcom/google/android/exoplayer/extractor/SeekMap;)V
    .locals 0
    .param p1, "seekMap"    # Lcom/google/android/exoplayer/extractor/SeekMap;

    .prologue
    .line 522
    iput-object p1, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->seekMap:Lcom/google/android/exoplayer/extractor/SeekMap;

    .line 523
    return-void
.end method

.method public seekToUs(J)V
    .locals 7
    .param p1, "positionUs"    # J

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 422
    iget-boolean v4, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->prepared:Z

    invoke-static {v4}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 423
    iget v4, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->enabledTrackCount:I

    if-lez v4, :cond_2

    move v4, v5

    :goto_0
    invoke-static {v4}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 425
    iget-object v4, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->seekMap:Lcom/google/android/exoplayer/extractor/SeekMap;

    invoke-interface {v4}, Lcom/google/android/exoplayer/extractor/SeekMap;->isSeekable()Z

    move-result v4

    if-nez v4, :cond_0

    const-wide/16 p1, 0x0

    .line 427
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->isPendingReset()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-wide v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->pendingResetPositionUs:J

    .line 428
    .local v0, "currentPositionUs":J
    :goto_1
    iput-wide p1, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->downstreamPositionUs:J

    .line 429
    iput-wide p1, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->lastSeekPositionUs:J

    .line 430
    cmp-long v4, v0, p1

    if-nez v4, :cond_4

    .line 449
    :cond_1
    return-void

    .end local v0    # "currentPositionUs":J
    :cond_2
    move v4, v6

    .line 423
    goto :goto_0

    .line 427
    :cond_3
    iget-wide v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->downstreamPositionUs:J

    goto :goto_1

    .line 435
    .restart local v0    # "currentPositionUs":J
    :cond_4
    invoke-direct {p0}, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->isPendingReset()Z

    move-result v4

    if-nez v4, :cond_5

    move v3, v5

    .line 436
    .local v3, "seekInsideBuffer":Z
    :goto_2
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    if-eqz v3, :cond_6

    iget-object v4, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v2, v4, :cond_6

    .line 437
    iget-object v4, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$InternalTrackOutput;

    invoke-virtual {v4, p1, p2}, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$InternalTrackOutput;->skipToKeyframeBefore(J)Z

    move-result v4

    and-int/2addr v3, v4

    .line 436
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .end local v2    # "i":I
    .end local v3    # "seekInsideBuffer":Z
    :cond_5
    move v3, v6

    .line 435
    goto :goto_2

    .line 441
    .restart local v2    # "i":I
    .restart local v3    # "seekInsideBuffer":Z
    :cond_6
    if-nez v3, :cond_7

    .line 442
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->restartFrom(J)V

    .line 446
    :cond_7
    const/4 v2, 0x0

    :goto_4
    iget-object v4, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->pendingDiscontinuities:[Z

    array-length v4, v4

    if-ge v2, v4, :cond_1

    .line 447
    iget-object v4, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->pendingDiscontinuities:[Z

    aput-boolean v5, v4, v2

    .line 446
    add-int/lit8 v2, v2, 0x1

    goto :goto_4
.end method

.method public track(I)Lcom/google/android/exoplayer/extractor/TrackOutput;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 507
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$InternalTrackOutput;

    .line 508
    .local v0, "sampleQueue":Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$InternalTrackOutput;
    if-nez v0, :cond_0

    .line 509
    new-instance v0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$InternalTrackOutput;

    .end local v0    # "sampleQueue":Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$InternalTrackOutput;
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->allocator:Lcom/google/android/exoplayer/upstream/Allocator;

    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$InternalTrackOutput;-><init>(Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;Lcom/google/android/exoplayer/upstream/Allocator;)V

    .line 510
    .restart local v0    # "sampleQueue":Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$InternalTrackOutput;
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 512
    :cond_0
    return-object v0
.end method
