.class Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;
.super Ljava/lang/Object;
.source "ExtractorSampleSource.java"

# interfaces
.implements Lcom/google/android/exoplayer/upstream/Loader$Loadable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExtractingLoadable"
.end annotation


# instance fields
.field private final allocator:Lcom/google/android/exoplayer/upstream/Allocator;

.field private final dataSource:Lcom/google/android/exoplayer/upstream/DataSource;

.field private final extractorHolder:Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$ExtractorHolder;

.field private volatile loadCanceled:Z

.field private pendingExtractorSeek:Z

.field private final positionHolder:Lcom/google/android/exoplayer/extractor/PositionHolder;

.field private final requestedBufferSize:I

.field private final uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$ExtractorHolder;Lcom/google/android/exoplayer/upstream/Allocator;IJ)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "dataSource"    # Lcom/google/android/exoplayer/upstream/DataSource;
    .param p3, "extractorHolder"    # Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$ExtractorHolder;
    .param p4, "allocator"    # Lcom/google/android/exoplayer/upstream/Allocator;
    .param p5, "requestedBufferSize"    # I
    .param p6, "position"    # J

    .prologue
    .line 692
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 693
    invoke-static {p1}, Lcom/google/android/exoplayer/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;->uri:Landroid/net/Uri;

    .line 694
    invoke-static {p2}, Lcom/google/android/exoplayer/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/upstream/DataSource;

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;->dataSource:Lcom/google/android/exoplayer/upstream/DataSource;

    .line 695
    invoke-static {p3}, Lcom/google/android/exoplayer/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$ExtractorHolder;

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;->extractorHolder:Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$ExtractorHolder;

    .line 696
    invoke-static {p4}, Lcom/google/android/exoplayer/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/upstream/Allocator;

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;->allocator:Lcom/google/android/exoplayer/upstream/Allocator;

    .line 697
    iput p5, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;->requestedBufferSize:I

    .line 698
    new-instance v0, Lcom/google/android/exoplayer/extractor/PositionHolder;

    invoke-direct {v0}, Lcom/google/android/exoplayer/extractor/PositionHolder;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;->positionHolder:Lcom/google/android/exoplayer/extractor/PositionHolder;

    .line 699
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;->positionHolder:Lcom/google/android/exoplayer/extractor/PositionHolder;

    iput-wide p6, v0, Lcom/google/android/exoplayer/extractor/PositionHolder;->position:J

    .line 700
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;->pendingExtractorSeek:Z

    .line 701
    return-void
.end method


# virtual methods
.method public cancelLoad()V
    .locals 1

    .prologue
    .line 705
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;->loadCanceled:Z

    .line 706
    return-void
.end method

.method public isLoadCanceled()Z
    .locals 1

    .prologue
    .line 710
    iget-boolean v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;->loadCanceled:Z

    return v0
.end method

.method public load()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 715
    const/4 v9, 0x0

    .line 716
    .local v9, "result":I
    :goto_0
    if-nez v9, :cond_7

    iget-boolean v1, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;->loadCanceled:Z

    if-nez v1, :cond_7

    .line 717
    const/4 v8, 0x0

    .line 719
    .local v8, "input":Lcom/google/android/exoplayer/extractor/ExtractorInput;
    :try_start_0
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;->positionHolder:Lcom/google/android/exoplayer/extractor/PositionHolder;

    iget-wide v2, v1, Lcom/google/android/exoplayer/extractor/PositionHolder;->position:J

    .line 720
    .local v2, "position":J
    iget-object v10, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;->dataSource:Lcom/google/android/exoplayer/upstream/DataSource;

    new-instance v0, Lcom/google/android/exoplayer/upstream/DataSpec;

    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;->uri:Landroid/net/Uri;

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer/upstream/DataSpec;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    invoke-interface {v10, v0}, Lcom/google/android/exoplayer/upstream/DataSource;->open(Lcom/google/android/exoplayer/upstream/DataSpec;)J

    move-result-wide v4

    .line 721
    .local v4, "length":J
    const-wide/16 v10, -0x1

    cmp-long v1, v4, v10

    if-eqz v1, :cond_0

    .line 722
    add-long/2addr v4, v2

    .line 724
    :cond_0
    new-instance v0, Lcom/google/android/exoplayer/extractor/DefaultExtractorInput;

    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;->dataSource:Lcom/google/android/exoplayer/upstream/DataSource;

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer/extractor/DefaultExtractorInput;-><init>(Lcom/google/android/exoplayer/upstream/DataSource;JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 725
    .end local v8    # "input":Lcom/google/android/exoplayer/extractor/ExtractorInput;
    .local v0, "input":Lcom/google/android/exoplayer/extractor/ExtractorInput;
    :try_start_1
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;->extractorHolder:Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$ExtractorHolder;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$ExtractorHolder;->selectExtractor(Lcom/google/android/exoplayer/extractor/ExtractorInput;)Lcom/google/android/exoplayer/extractor/Extractor;

    move-result-object v7

    .line 726
    .local v7, "extractor":Lcom/google/android/exoplayer/extractor/Extractor;
    iget-boolean v1, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;->pendingExtractorSeek:Z

    if-eqz v1, :cond_1

    .line 727
    invoke-interface {v7}, Lcom/google/android/exoplayer/extractor/Extractor;->seek()V

    .line 728
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;->pendingExtractorSeek:Z

    .line 730
    :cond_1
    :goto_1
    if-nez v9, :cond_2

    iget-boolean v1, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;->loadCanceled:Z

    if-nez v1, :cond_2

    .line 731
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;->allocator:Lcom/google/android/exoplayer/upstream/Allocator;

    iget v6, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;->requestedBufferSize:I

    invoke-interface {v1, v6}, Lcom/google/android/exoplayer/upstream/Allocator;->blockWhileTotalBytesAllocatedExceeds(I)V

    .line 732
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;->positionHolder:Lcom/google/android/exoplayer/extractor/PositionHolder;

    invoke-interface {v7, v0, v1}, Lcom/google/android/exoplayer/extractor/Extractor;->read(Lcom/google/android/exoplayer/extractor/ExtractorInput;Lcom/google/android/exoplayer/extractor/PositionHolder;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v9

    goto :goto_1

    .line 736
    :cond_2
    const/4 v1, 0x1

    if-ne v9, v1, :cond_4

    .line 737
    const/4 v9, 0x0

    .line 741
    :cond_3
    :goto_2
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;->dataSource:Lcom/google/android/exoplayer/upstream/DataSource;

    invoke-interface {v1}, Lcom/google/android/exoplayer/upstream/DataSource;->close()V

    goto :goto_0

    .line 738
    :cond_4
    if-eqz v0, :cond_3

    .line 739
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;->positionHolder:Lcom/google/android/exoplayer/extractor/PositionHolder;

    invoke-interface {v0}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->getPosition()J

    move-result-wide v10

    iput-wide v10, v1, Lcom/google/android/exoplayer/extractor/PositionHolder;->position:J

    goto :goto_2

    .line 736
    .end local v0    # "input":Lcom/google/android/exoplayer/extractor/ExtractorInput;
    .end local v2    # "position":J
    .end local v4    # "length":J
    .end local v7    # "extractor":Lcom/google/android/exoplayer/extractor/Extractor;
    .restart local v8    # "input":Lcom/google/android/exoplayer/extractor/ExtractorInput;
    :catchall_0
    move-exception v1

    move-object v0, v8

    .end local v8    # "input":Lcom/google/android/exoplayer/extractor/ExtractorInput;
    .restart local v0    # "input":Lcom/google/android/exoplayer/extractor/ExtractorInput;
    :goto_3
    const/4 v6, 0x1

    if-ne v9, v6, :cond_6

    .line 737
    const/4 v9, 0x0

    .line 741
    :cond_5
    :goto_4
    iget-object v6, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;->dataSource:Lcom/google/android/exoplayer/upstream/DataSource;

    invoke-interface {v6}, Lcom/google/android/exoplayer/upstream/DataSource;->close()V

    throw v1

    .line 738
    :cond_6
    if-eqz v0, :cond_5

    .line 739
    iget-object v6, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;->positionHolder:Lcom/google/android/exoplayer/extractor/PositionHolder;

    invoke-interface {v0}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->getPosition()J

    move-result-wide v10

    iput-wide v10, v6, Lcom/google/android/exoplayer/extractor/PositionHolder;->position:J

    goto :goto_4

    .line 744
    .end local v0    # "input":Lcom/google/android/exoplayer/extractor/ExtractorInput;
    :cond_7
    return-void

    .line 736
    .restart local v0    # "input":Lcom/google/android/exoplayer/extractor/ExtractorInput;
    .restart local v2    # "position":J
    .restart local v4    # "length":J
    :catchall_1
    move-exception v1

    goto :goto_3
.end method
