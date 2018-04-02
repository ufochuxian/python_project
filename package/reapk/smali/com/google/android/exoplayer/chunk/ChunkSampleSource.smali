.class public Lcom/google/android/exoplayer/chunk/ChunkSampleSource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer/SampleSource;
.implements Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;
.implements Lcom/google/android/exoplayer/upstream/Loader$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer/chunk/ChunkSampleSource$EventListener;
    }
.end annotation


# static fields
.field public static final DEFAULT_MIN_LOADABLE_RETRY_COUNT:I = 0x3

.field private static final NO_RESET_PENDING:J = -0x8000000000000000L

.field private static final STATE_ENABLED:I = 0x3

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_INITIALIZED:I = 0x1

.field private static final STATE_PREPARED:I = 0x2


# instance fields
.field private final bufferSizeContribution:I

.field private final chunkSource:Lcom/google/android/exoplayer/chunk/ChunkSource;

.field private currentLoadStartTimeMs:J

.field private currentLoadableException:Ljava/io/IOException;

.field private currentLoadableExceptionCount:I

.field private currentLoadableExceptionTimestamp:J

.field private final currentLoadableHolder:Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;

.field private downstreamFormat:Lcom/google/android/exoplayer/chunk/Format;

.field private downstreamMediaFormat:Lcom/google/android/exoplayer/MediaFormat;

.field private downstreamPositionUs:J

.field private enabledTrackCount:I

.field private final eventHandler:Landroid/os/Handler;

.field private final eventListener:Lcom/google/android/exoplayer/chunk/ChunkSampleSource$EventListener;

.field private final eventSourceId:I

.field private lastPerformedBufferOperation:J

.field private lastSeekPositionUs:J

.field private final loadControl:Lcom/google/android/exoplayer/LoadControl;

.field private loader:Lcom/google/android/exoplayer/upstream/Loader;

.field private loadingFinished:Z

.field private final mediaChunks:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/google/android/exoplayer/chunk/BaseMediaChunk;",
            ">;"
        }
    .end annotation
.end field

.field private final minLoadableRetryCount:I

.field private pendingDiscontinuity:Z

.field private pendingResetPositionUs:J

.field private final readOnlyMediaChunks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer/chunk/BaseMediaChunk;",
            ">;"
        }
    .end annotation
.end field

.field private final sampleQueue:Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;

.field private state:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer/chunk/ChunkSource;Lcom/google/android/exoplayer/LoadControl;I)V
    .locals 7
    .param p1, "chunkSource"    # Lcom/google/android/exoplayer/chunk/ChunkSource;
    .param p2, "loadControl"    # Lcom/google/android/exoplayer/LoadControl;
    .param p3, "bufferSizeContribution"    # I

    .prologue
    const/4 v4, 0x0

    .line 89
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, v4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;-><init>(Lcom/google/android/exoplayer/chunk/ChunkSource;Lcom/google/android/exoplayer/LoadControl;ILandroid/os/Handler;Lcom/google/android/exoplayer/chunk/ChunkSampleSource$EventListener;I)V

    .line 90
    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer/chunk/ChunkSource;Lcom/google/android/exoplayer/LoadControl;ILandroid/os/Handler;Lcom/google/android/exoplayer/chunk/ChunkSampleSource$EventListener;I)V
    .locals 8
    .param p1, "chunkSource"    # Lcom/google/android/exoplayer/chunk/ChunkSource;
    .param p2, "loadControl"    # Lcom/google/android/exoplayer/LoadControl;
    .param p3, "bufferSizeContribution"    # I
    .param p4, "eventHandler"    # Landroid/os/Handler;
    .param p5, "eventListener"    # Lcom/google/android/exoplayer/chunk/ChunkSampleSource$EventListener;
    .param p6, "eventSourceId"    # I

    .prologue
    .line 109
    const/4 v7, 0x3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;-><init>(Lcom/google/android/exoplayer/chunk/ChunkSource;Lcom/google/android/exoplayer/LoadControl;ILandroid/os/Handler;Lcom/google/android/exoplayer/chunk/ChunkSampleSource$EventListener;II)V

    .line 110
    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer/chunk/ChunkSource;Lcom/google/android/exoplayer/LoadControl;ILandroid/os/Handler;Lcom/google/android/exoplayer/chunk/ChunkSampleSource$EventListener;II)V
    .locals 2
    .param p1, "chunkSource"    # Lcom/google/android/exoplayer/chunk/ChunkSource;
    .param p2, "loadControl"    # Lcom/google/android/exoplayer/LoadControl;
    .param p3, "bufferSizeContribution"    # I
    .param p4, "eventHandler"    # Landroid/os/Handler;
    .param p5, "eventListener"    # Lcom/google/android/exoplayer/chunk/ChunkSampleSource$EventListener;
    .param p6, "eventSourceId"    # I
    .param p7, "minLoadableRetryCount"    # I

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    iput-object p1, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->chunkSource:Lcom/google/android/exoplayer/chunk/ChunkSource;

    .line 133
    iput-object p2, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->loadControl:Lcom/google/android/exoplayer/LoadControl;

    .line 134
    iput p3, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->bufferSizeContribution:I

    .line 135
    iput-object p4, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->eventHandler:Landroid/os/Handler;

    .line 136
    iput-object p5, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->eventListener:Lcom/google/android/exoplayer/chunk/ChunkSampleSource$EventListener;

    .line 137
    iput p6, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->eventSourceId:I

    .line 138
    iput p7, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->minLoadableRetryCount:I

    .line 139
    new-instance v0, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;

    invoke-direct {v0}, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->currentLoadableHolder:Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;

    .line 140
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->mediaChunks:Ljava/util/LinkedList;

    .line 141
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->mediaChunks:Ljava/util/LinkedList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->readOnlyMediaChunks:Ljava/util/List;

    .line 142
    new-instance v0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;

    invoke-interface {p2}, Lcom/google/android/exoplayer/LoadControl;->getAllocator()Lcom/google/android/exoplayer/upstream/Allocator;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;-><init>(Lcom/google/android/exoplayer/upstream/Allocator;)V

    iput-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->sampleQueue:Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;

    .line 143
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->state:I

    .line 144
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->pendingResetPositionUs:J

    .line 145
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/exoplayer/chunk/ChunkSampleSource;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/android/exoplayer/chunk/ChunkSampleSource;

    .prologue
    .line 42
    iget v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->eventSourceId:I

    return v0
.end method

.method static synthetic access$100(Lcom/google/android/exoplayer/chunk/ChunkSampleSource;)Lcom/google/android/exoplayer/chunk/ChunkSampleSource$EventListener;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/exoplayer/chunk/ChunkSampleSource;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->eventListener:Lcom/google/android/exoplayer/chunk/ChunkSampleSource$EventListener;

    return-object v0
.end method

.method private clearCurrentLoadable()V
    .locals 2

    .prologue
    .line 410
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->currentLoadableHolder:Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->chunk:Lcom/google/android/exoplayer/chunk/Chunk;

    .line 411
    invoke-direct {p0}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->clearCurrentLoadableException()V

    .line 412
    return-void
.end method

.method private clearCurrentLoadableException()V
    .locals 1

    .prologue
    .line 415
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->currentLoadableException:Ljava/io/IOException;

    .line 416
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->currentLoadableExceptionCount:I

    .line 417
    return-void
.end method

.method private discardUpstreamMediaChunks(I)Z
    .locals 7
    .param p1, "queueLength"    # I

    .prologue
    .line 566
    iget-object v3, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->mediaChunks:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-gt v3, p1, :cond_0

    .line 567
    const/4 v3, 0x0

    .line 580
    :goto_0
    return v3

    .line 569
    :cond_0
    const-wide/16 v4, 0x0

    .line 570
    .local v4, "startTimeUs":J
    iget-object v3, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->mediaChunks:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;

    iget-wide v0, v3, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;->endTimeUs:J

    .line 572
    .local v0, "endTimeUs":J
    const/4 v2, 0x0

    .line 573
    .local v2, "removed":Lcom/google/android/exoplayer/chunk/BaseMediaChunk;
    :goto_1
    iget-object v3, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->mediaChunks:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-le v3, p1, :cond_1

    .line 574
    iget-object v3, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->mediaChunks:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "removed":Lcom/google/android/exoplayer/chunk/BaseMediaChunk;
    check-cast v2, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;

    .line 575
    .restart local v2    # "removed":Lcom/google/android/exoplayer/chunk/BaseMediaChunk;
    iget-wide v4, v2, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;->startTimeUs:J

    goto :goto_1

    .line 577
    :cond_1
    iget-object v3, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->sampleQueue:Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;

    invoke-virtual {v2}, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;->getFirstSampleIndex()I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->discardUpstreamSamples(I)V

    .line 579
    invoke-direct {p0, v4, v5, v0, v1}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->notifyUpstreamDiscarded(JJ)V

    .line 580
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private doChunkOperation()V
    .locals 6

    .prologue
    .line 552
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->currentLoadableHolder:Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->endOfStream:Z

    .line 553
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->currentLoadableHolder:Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;

    iget-object v1, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->readOnlyMediaChunks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, v0, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->queueSize:I

    .line 554
    iget-object v2, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->chunkSource:Lcom/google/android/exoplayer/chunk/ChunkSource;

    iget-object v3, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->readOnlyMediaChunks:Ljava/util/List;

    iget-wide v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->pendingResetPositionUs:J

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->pendingResetPositionUs:J

    :goto_0
    iget-object v4, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->currentLoadableHolder:Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;

    invoke-interface {v2, v3, v0, v1, v4}, Lcom/google/android/exoplayer/chunk/ChunkSource;->getChunkOperation(Ljava/util/List;JLcom/google/android/exoplayer/chunk/ChunkOperationHolder;)V

    .line 556
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->currentLoadableHolder:Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;

    iget-boolean v0, v0, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->endOfStream:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->loadingFinished:Z

    .line 557
    return-void

    .line 554
    :cond_0
    iget-wide v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->downstreamPositionUs:J

    goto :goto_0
.end method

.method private getNextLoadPositionUs()J
    .locals 2

    .prologue
    .line 463
    invoke-direct {p0}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->isPendingReset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 464
    iget-wide v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->pendingResetPositionUs:J

    .line 466
    :goto_0
    return-wide v0

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->loadingFinished:Z

    if-eqz v0, :cond_1

    const-wide/16 v0, -0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->mediaChunks:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;

    iget-wide v0, v0, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;->endTimeUs:J

    goto :goto_0
.end method

.method private getRetryDelayMillis(J)J
    .locals 5
    .param p1, "errorCount"    # J

    .prologue
    .line 592
    const-wide/16 v0, 0x1

    sub-long v0, p1, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method private isMediaChunk(Lcom/google/android/exoplayer/chunk/Chunk;)Z
    .locals 1
    .param p1, "chunk"    # Lcom/google/android/exoplayer/chunk/Chunk;

    .prologue
    .line 584
    instance-of v0, p1, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;

    return v0
.end method

.method private isPendingReset()Z
    .locals 4

    .prologue
    .line 588
    iget-wide v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->pendingResetPositionUs:J

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
    .locals 12

    .prologue
    const-wide/16 v6, -0x1

    .line 525
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->currentLoadableHolder:Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;

    iget-object v10, v0, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->chunk:Lcom/google/android/exoplayer/chunk/Chunk;

    .line 526
    .local v10, "currentLoadable":Lcom/google/android/exoplayer/chunk/Chunk;
    if-nez v10, :cond_0

    .line 544
    :goto_0
    return-void

    .line 530
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->currentLoadStartTimeMs:J

    .line 531
    invoke-direct {p0, v10}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->isMediaChunk(Lcom/google/android/exoplayer/chunk/Chunk;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v11, v10

    .line 532
    check-cast v11, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;

    .line 533
    .local v11, "mediaChunk":Lcom/google/android/exoplayer/chunk/BaseMediaChunk;
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->sampleQueue:Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;

    invoke-virtual {v11, v0}, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;->init(Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;)V

    .line 534
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->mediaChunks:Ljava/util/LinkedList;

    invoke-virtual {v0, v11}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 535
    invoke-direct {p0}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->isPendingReset()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 536
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->pendingResetPositionUs:J

    .line 538
    :cond_1
    iget-object v0, v11, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;->dataSpec:Lcom/google/android/exoplayer/upstream/DataSpec;

    iget-wide v1, v0, Lcom/google/android/exoplayer/upstream/DataSpec;->length:J

    iget v3, v11, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;->type:I

    iget v4, v11, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;->trigger:I

    iget-object v5, v11, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;->format:Lcom/google/android/exoplayer/chunk/Format;

    iget-wide v6, v11, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;->startTimeUs:J

    iget-wide v8, v11, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;->endTimeUs:J

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->notifyLoadStarted(JIILcom/google/android/exoplayer/chunk/Format;JJ)V

    .line 543
    .end local v11    # "mediaChunk":Lcom/google/android/exoplayer/chunk/BaseMediaChunk;
    :goto_1
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->loader:Lcom/google/android/exoplayer/upstream/Loader;

    invoke-virtual {v0, v10, p0}, Lcom/google/android/exoplayer/upstream/Loader;->startLoading(Lcom/google/android/exoplayer/upstream/Loader$Loadable;Lcom/google/android/exoplayer/upstream/Loader$Callback;)V

    goto :goto_0

    .line 541
    :cond_2
    iget-object v0, v10, Lcom/google/android/exoplayer/chunk/Chunk;->dataSpec:Lcom/google/android/exoplayer/upstream/DataSpec;

    iget-wide v1, v0, Lcom/google/android/exoplayer/upstream/DataSpec;->length:J

    iget v3, v10, Lcom/google/android/exoplayer/chunk/Chunk;->type:I

    iget v4, v10, Lcom/google/android/exoplayer/chunk/Chunk;->trigger:I

    iget-object v5, v10, Lcom/google/android/exoplayer/chunk/Chunk;->format:Lcom/google/android/exoplayer/chunk/Format;

    move-object v0, p0

    move-wide v8, v6

    invoke-direct/range {v0 .. v9}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->notifyLoadStarted(JIILcom/google/android/exoplayer/chunk/Format;JJ)V

    goto :goto_1
.end method

.method private notifyDownstreamFormatChanged(Lcom/google/android/exoplayer/chunk/Format;IJ)V
    .locals 7
    .param p1, "format"    # Lcom/google/android/exoplayer/chunk/Format;
    .param p2, "trigger"    # I
    .param p3, "positionUs"    # J

    .prologue
    .line 658
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->eventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->eventListener:Lcom/google/android/exoplayer/chunk/ChunkSampleSource$EventListener;

    if-eqz v0, :cond_0

    .line 659
    iget-object v6, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->eventHandler:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$6;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$6;-><init>(Lcom/google/android/exoplayer/chunk/ChunkSampleSource;Lcom/google/android/exoplayer/chunk/Format;IJ)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 666
    :cond_0
    return-void
.end method

.method private notifyLoadCanceled(J)V
    .locals 3
    .param p1, "bytesLoaded"    # J

    .prologue
    .line 625
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->eventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->eventListener:Lcom/google/android/exoplayer/chunk/ChunkSampleSource$EventListener;

    if-eqz v0, :cond_0

    .line 626
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->eventHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$3;-><init>(Lcom/google/android/exoplayer/chunk/ChunkSampleSource;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 633
    :cond_0
    return-void
.end method

.method private notifyLoadCompleted(JIILcom/google/android/exoplayer/chunk/Format;JJJJ)V
    .locals 18
    .param p1, "bytesLoaded"    # J
    .param p3, "type"    # I
    .param p4, "trigger"    # I
    .param p5, "format"    # Lcom/google/android/exoplayer/chunk/Format;
    .param p6, "mediaStartTimeUs"    # J
    .param p8, "mediaEndTimeUs"    # J
    .param p10, "elapsedRealtimeMs"    # J
    .param p12, "loadDurationMs"    # J

    .prologue
    .line 613
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->eventHandler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->eventListener:Lcom/google/android/exoplayer/chunk/ChunkSampleSource$EventListener;

    if-eqz v2, :cond_0

    .line 614
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->eventHandler:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$2;

    move-object/from16 v4, p0

    move-wide/from16 v5, p1

    move/from16 v7, p3

    move/from16 v8, p4

    move-object/from16 v9, p5

    move-wide/from16 v10, p6

    move-wide/from16 v12, p8

    move-wide/from16 v14, p10

    move-wide/from16 v16, p12

    invoke-direct/range {v3 .. v17}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$2;-><init>(Lcom/google/android/exoplayer/chunk/ChunkSampleSource;JIILcom/google/android/exoplayer/chunk/Format;JJJJ)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 622
    :cond_0
    return-void
.end method

.method private notifyLoadError(Ljava/io/IOException;)V
    .locals 2
    .param p1, "e"    # Ljava/io/IOException;

    .prologue
    .line 636
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->eventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->eventListener:Lcom/google/android/exoplayer/chunk/ChunkSampleSource$EventListener;

    if-eqz v0, :cond_0

    .line 637
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->eventHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$4;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$4;-><init>(Lcom/google/android/exoplayer/chunk/ChunkSampleSource;Ljava/io/IOException;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 644
    :cond_0
    return-void
.end method

.method private notifyLoadStarted(JIILcom/google/android/exoplayer/chunk/Format;JJ)V
    .locals 12
    .param p1, "length"    # J
    .param p3, "type"    # I
    .param p4, "trigger"    # I
    .param p5, "format"    # Lcom/google/android/exoplayer/chunk/Format;
    .param p6, "mediaStartTimeUs"    # J
    .param p8, "mediaEndTimeUs"    # J

    .prologue
    .line 601
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->eventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->eventListener:Lcom/google/android/exoplayer/chunk/ChunkSampleSource$EventListener;

    if-eqz v0, :cond_0

    .line 602
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->eventHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$1;

    move-object v2, p0

    move-wide v3, p1

    move v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    invoke-direct/range {v1 .. v11}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$1;-><init>(Lcom/google/android/exoplayer/chunk/ChunkSampleSource;JIILcom/google/android/exoplayer/chunk/Format;JJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 609
    :cond_0
    return-void
.end method

.method private notifyUpstreamDiscarded(JJ)V
    .locals 7
    .param p1, "mediaStartTimeUs"    # J
    .param p3, "mediaEndTimeUs"    # J

    .prologue
    .line 647
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->eventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->eventListener:Lcom/google/android/exoplayer/chunk/ChunkSampleSource$EventListener;

    if-eqz v0, :cond_0

    .line 648
    iget-object v6, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->eventHandler:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$5;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$5;-><init>(Lcom/google/android/exoplayer/chunk/ChunkSampleSource;JJ)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 655
    :cond_0
    return-void
.end method

.method private restartFrom(J)V
    .locals 1
    .param p1, "positionUs"    # J

    .prologue
    .line 397
    iput-wide p1, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->pendingResetPositionUs:J

    .line 398
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->loadingFinished:Z

    .line 399
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->loader:Lcom/google/android/exoplayer/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/upstream/Loader;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 400
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->loader:Lcom/google/android/exoplayer/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/upstream/Loader;->cancelLoading()V

    .line 407
    :goto_0
    return-void

    .line 402
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->sampleQueue:Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->clear()V

    .line 403
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->mediaChunks:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 404
    invoke-direct {p0}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->clearCurrentLoadable()V

    .line 405
    invoke-direct {p0}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->updateLoadControl()V

    goto :goto_0
.end method

.method private resumeFromBackOff()V
    .locals 4

    .prologue
    .line 478
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->currentLoadableException:Ljava/io/IOException;

    .line 480
    iget-object v2, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->currentLoadableHolder:Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;

    iget-object v0, v2, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->chunk:Lcom/google/android/exoplayer/chunk/Chunk;

    .line 481
    .local v0, "backedOffChunk":Lcom/google/android/exoplayer/chunk/Chunk;
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->isMediaChunk(Lcom/google/android/exoplayer/chunk/Chunk;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 482
    invoke-direct {p0}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->doChunkOperation()V

    .line 483
    iget-object v2, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->currentLoadableHolder:Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;

    iget v2, v2, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->queueSize:I

    invoke-direct {p0, v2}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->discardUpstreamMediaChunks(I)Z

    .line 484
    iget-object v2, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->currentLoadableHolder:Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;

    iget-object v2, v2, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->chunk:Lcom/google/android/exoplayer/chunk/Chunk;

    if-ne v2, v0, :cond_0

    .line 486
    iget-object v2, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->loader:Lcom/google/android/exoplayer/upstream/Loader;

    invoke-virtual {v2, v0, p0}, Lcom/google/android/exoplayer/upstream/Loader;->startLoading(Lcom/google/android/exoplayer/upstream/Loader$Loadable;Lcom/google/android/exoplayer/upstream/Loader$Callback;)V

    .line 522
    :goto_0
    return-void

    .line 489
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/exoplayer/chunk/Chunk;->bytesLoaded()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->notifyLoadCanceled(J)V

    .line 491
    invoke-direct {p0}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->maybeStartLoading()V

    goto :goto_0

    .line 496
    :cond_1
    iget-object v2, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->mediaChunks:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v2

    if-ne v0, v2, :cond_2

    .line 499
    iget-object v2, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->loader:Lcom/google/android/exoplayer/upstream/Loader;

    invoke-virtual {v2, v0, p0}, Lcom/google/android/exoplayer/upstream/Loader;->startLoading(Lcom/google/android/exoplayer/upstream/Loader$Loadable;Lcom/google/android/exoplayer/upstream/Loader$Callback;)V

    goto :goto_0

    .line 505
    :cond_2
    iget-object v2, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->mediaChunks:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;

    .line 506
    .local v1, "removedChunk":Lcom/google/android/exoplayer/chunk/BaseMediaChunk;
    if-ne v0, v1, :cond_3

    const/4 v2, 0x1

    :goto_1
    invoke-static {v2}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 507
    invoke-direct {p0}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->doChunkOperation()V

    .line 508
    iget-object v2, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->mediaChunks:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 510
    iget-object v2, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->currentLoadableHolder:Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;

    iget-object v2, v2, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->chunk:Lcom/google/android/exoplayer/chunk/Chunk;

    if-ne v2, v0, :cond_4

    .line 512
    iget-object v2, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->loader:Lcom/google/android/exoplayer/upstream/Loader;

    invoke-virtual {v2, v0, p0}, Lcom/google/android/exoplayer/upstream/Loader;->startLoading(Lcom/google/android/exoplayer/upstream/Loader$Loadable;Lcom/google/android/exoplayer/upstream/Loader$Callback;)V

    goto :goto_0

    .line 506
    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    .line 515
    :cond_4
    invoke-virtual {v0}, Lcom/google/android/exoplayer/chunk/Chunk;->bytesLoaded()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->notifyLoadCanceled(J)V

    .line 518
    iget-object v2, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->currentLoadableHolder:Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;

    iget v2, v2, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->queueSize:I

    invoke-direct {p0, v2}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->discardUpstreamMediaChunks(I)Z

    .line 519
    invoke-direct {p0}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->clearCurrentLoadableException()V

    .line 520
    invoke-direct {p0}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->maybeStartLoading()V

    goto :goto_0
.end method

.method private updateLoadControl()V
    .locals 14

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 420
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    .line 421
    .local v12, "now":J
    invoke-direct {p0}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->getNextLoadPositionUs()J

    move-result-wide v4

    .line 422
    .local v4, "nextLoadPositionUs":J
    iget-object v2, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->currentLoadableException:Ljava/io/IOException;

    if-eqz v2, :cond_5

    move v10, v0

    .line 423
    .local v10, "isBackedOff":Z
    :goto_0
    iget-object v2, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->loader:Lcom/google/android/exoplayer/upstream/Loader;

    invoke-virtual {v2}, Lcom/google/android/exoplayer/upstream/Loader;->isLoading()Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v10, :cond_6

    :cond_0
    move v6, v0

    .line 427
    .local v6, "loadingOrBackedOff":Z
    :goto_1
    if-nez v6, :cond_3

    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->currentLoadableHolder:Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;

    iget-object v0, v0, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->chunk:Lcom/google/android/exoplayer/chunk/Chunk;

    if-nez v0, :cond_1

    const-wide/16 v0, -0x1

    cmp-long v0, v4, v0

    if-nez v0, :cond_2

    :cond_1
    iget-wide v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->lastPerformedBufferOperation:J

    sub-long v0, v12, v0

    const-wide/16 v2, 0x7d0

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    .line 429
    :cond_2
    iput-wide v12, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->lastPerformedBufferOperation:J

    .line 430
    invoke-direct {p0}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->doChunkOperation()V

    .line 431
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->currentLoadableHolder:Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;

    iget v0, v0, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->queueSize:I

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->discardUpstreamMediaChunks(I)Z

    move-result v7

    .line 433
    .local v7, "chunksDiscarded":Z
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->currentLoadableHolder:Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;

    iget-object v0, v0, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->chunk:Lcom/google/android/exoplayer/chunk/Chunk;

    if-nez v0, :cond_7

    .line 435
    const-wide/16 v4, -0x1

    .line 443
    .end local v7    # "chunksDiscarded":Z
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->loadControl:Lcom/google/android/exoplayer/LoadControl;

    iget-wide v2, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->downstreamPositionUs:J

    move-object v1, p0

    invoke-interface/range {v0 .. v6}, Lcom/google/android/exoplayer/LoadControl;->update(Ljava/lang/Object;JJZ)Z

    move-result v11

    .line 445
    .local v11, "nextLoader":Z
    if-eqz v10, :cond_8

    .line 446
    iget-wide v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->currentLoadableExceptionTimestamp:J

    sub-long v8, v12, v0

    .line 447
    .local v8, "elapsedMillis":J
    iget v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->currentLoadableExceptionCount:I

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->getRetryDelayMillis(J)J

    move-result-wide v0

    cmp-long v0, v8, v0

    if-ltz v0, :cond_4

    .line 448
    invoke-direct {p0}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->resumeFromBackOff()V

    .line 456
    .end local v8    # "elapsedMillis":J
    :cond_4
    :goto_3
    return-void

    .end local v6    # "loadingOrBackedOff":Z
    .end local v10    # "isBackedOff":Z
    .end local v11    # "nextLoader":Z
    :cond_5
    move v10, v1

    .line 422
    goto :goto_0

    .restart local v10    # "isBackedOff":Z
    :cond_6
    move v6, v1

    .line 423
    goto :goto_1

    .line 436
    .restart local v6    # "loadingOrBackedOff":Z
    .restart local v7    # "chunksDiscarded":Z
    :cond_7
    if-eqz v7, :cond_3

    .line 438
    invoke-direct {p0}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->getNextLoadPositionUs()J

    move-result-wide v4

    goto :goto_2

    .line 453
    .end local v7    # "chunksDiscarded":Z
    .restart local v11    # "nextLoader":Z
    :cond_8
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->loader:Lcom/google/android/exoplayer/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/upstream/Loader;->isLoading()Z

    move-result v0

    if-nez v0, :cond_4

    if-eqz v11, :cond_4

    .line 454
    invoke-direct {p0}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->maybeStartLoading()V

    goto :goto_3
.end method


# virtual methods
.method public continueBuffering(IJ)Z
    .locals 4
    .param p1, "track"    # I
    .param p2, "positionUs"    # J

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 218
    iget v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->state:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 219
    iput-wide p2, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->downstreamPositionUs:J

    .line 220
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->chunkSource:Lcom/google/android/exoplayer/chunk/ChunkSource;

    invoke-interface {v0, p2, p3}, Lcom/google/android/exoplayer/chunk/ChunkSource;->continueBuffering(J)V

    .line 221
    invoke-direct {p0}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->updateLoadControl()V

    .line 222
    iget-boolean v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->loadingFinished:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->sampleQueue:Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v2, v1

    :cond_1
    return v2

    :cond_2
    move v0, v2

    .line 218
    goto :goto_0
.end method

.method public disable(I)V
    .locals 4
    .param p1, "track"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 198
    iget v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->state:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 199
    iget v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->enabledTrackCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->enabledTrackCount:I

    if-nez v0, :cond_1

    :goto_1
    invoke-static {v1}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 200
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->state:I

    .line 202
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->chunkSource:Lcom/google/android/exoplayer/chunk/ChunkSource;

    iget-object v1, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->mediaChunks:Ljava/util/LinkedList;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer/chunk/ChunkSource;->disable(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->loadControl:Lcom/google/android/exoplayer/LoadControl;

    invoke-interface {v0, p0}, Lcom/google/android/exoplayer/LoadControl;->unregister(Ljava/lang/Object;)V

    .line 205
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->loader:Lcom/google/android/exoplayer/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/upstream/Loader;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 206
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->loader:Lcom/google/android/exoplayer/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/upstream/Loader;->cancelLoading()V

    .line 214
    :goto_2
    return-void

    :cond_0
    move v0, v2

    .line 198
    goto :goto_0

    :cond_1
    move v1, v2

    .line 199
    goto :goto_1

    .line 208
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->sampleQueue:Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->clear()V

    .line 209
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->mediaChunks:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 210
    invoke-direct {p0}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->clearCurrentLoadable()V

    .line 211
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->loadControl:Lcom/google/android/exoplayer/LoadControl;

    invoke-interface {v0}, Lcom/google/android/exoplayer/LoadControl;->trimAllocator()V

    goto :goto_2

    .line 204
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->loadControl:Lcom/google/android/exoplayer/LoadControl;

    invoke-interface {v1, p0}, Lcom/google/android/exoplayer/LoadControl;->unregister(Ljava/lang/Object;)V

    .line 205
    iget-object v1, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->loader:Lcom/google/android/exoplayer/upstream/Loader;

    invoke-virtual {v1}, Lcom/google/android/exoplayer/upstream/Loader;->isLoading()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 206
    iget-object v1, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->loader:Lcom/google/android/exoplayer/upstream/Loader;

    invoke-virtual {v1}, Lcom/google/android/exoplayer/upstream/Loader;->cancelLoading()V

    .line 213
    :goto_3
    throw v0

    .line 208
    :cond_3
    iget-object v1, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->sampleQueue:Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;

    invoke-virtual {v1}, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->clear()V

    .line 209
    iget-object v1, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->mediaChunks:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 210
    invoke-direct {p0}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->clearCurrentLoadable()V

    .line 211
    iget-object v1, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->loadControl:Lcom/google/android/exoplayer/LoadControl;

    invoke-interface {v1}, Lcom/google/android/exoplayer/LoadControl;->trimAllocator()V

    goto :goto_3
.end method

.method public enable(IJ)V
    .locals 6
    .param p1, "track"    # I
    .param p2, "positionUs"    # J

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 183
    iget v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->state:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 184
    iget v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->enabledTrackCount:I

    add-int/lit8 v3, v0, 0x1

    iput v3, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->enabledTrackCount:I

    if-nez v0, :cond_1

    :goto_1
    invoke-static {v1}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 185
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->state:I

    .line 186
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->chunkSource:Lcom/google/android/exoplayer/chunk/ChunkSource;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer/chunk/ChunkSource;->enable(I)V

    .line 187
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->loadControl:Lcom/google/android/exoplayer/LoadControl;

    iget v1, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->bufferSizeContribution:I

    invoke-interface {v0, p0, v1}, Lcom/google/android/exoplayer/LoadControl;->register(Ljava/lang/Object;I)V

    .line 188
    iput-object v4, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->downstreamFormat:Lcom/google/android/exoplayer/chunk/Format;

    .line 189
    iput-object v4, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->downstreamMediaFormat:Lcom/google/android/exoplayer/MediaFormat;

    .line 190
    iput-wide p2, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->downstreamPositionUs:J

    .line 191
    iput-wide p2, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->lastSeekPositionUs:J

    .line 192
    iput-boolean v2, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->pendingDiscontinuity:Z

    .line 193
    invoke-direct {p0, p2, p3}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->restartFrom(J)V

    .line 194
    return-void

    :cond_0
    move v0, v2

    .line 183
    goto :goto_0

    :cond_1
    move v1, v2

    .line 184
    goto :goto_1
.end method

.method public getBufferedPositionUs()J
    .locals 4

    .prologue
    .line 320
    iget v2, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->state:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 321
    invoke-direct {p0}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->isPendingReset()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 322
    iget-wide v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->pendingResetPositionUs:J

    .line 327
    :cond_0
    :goto_1
    return-wide v0

    .line 320
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 323
    :cond_2
    iget-boolean v2, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->loadingFinished:Z

    if-eqz v2, :cond_3

    .line 324
    const-wide/16 v0, -0x3

    goto :goto_1

    .line 326
    :cond_3
    iget-object v2, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->sampleQueue:Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;

    invoke-virtual {v2}, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->getLargestParsedTimestampUs()J

    move-result-wide v0

    .line 327
    .local v0, "largestParsedTimestampUs":J
    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    iget-wide v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->downstreamPositionUs:J

    goto :goto_1
.end method

.method public getFormat(I)Lcom/google/android/exoplayer/MediaFormat;
    .locals 2
    .param p1, "track"    # I

    .prologue
    .line 177
    iget v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->state:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->state:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 178
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->chunkSource:Lcom/google/android/exoplayer/chunk/ChunkSource;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer/chunk/ChunkSource;->getFormat(I)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v0

    return-object v0

    .line 177
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTrackCount()I
    .locals 2

    .prologue
    .line 171
    iget v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->state:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->state:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 172
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->chunkSource:Lcom/google/android/exoplayer/chunk/ChunkSource;

    invoke-interface {v0}, Lcom/google/android/exoplayer/chunk/ChunkSource;->getTrackCount()I

    move-result v0

    return v0

    .line 171
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public maybeThrowError()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 311
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->currentLoadableException:Ljava/io/IOException;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->currentLoadableExceptionCount:I

    iget v1, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->minLoadableRetryCount:I

    if-le v0, v1, :cond_0

    .line 312
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->currentLoadableException:Ljava/io/IOException;

    throw v0

    .line 313
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->currentLoadableHolder:Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;

    iget-object v0, v0, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->chunk:Lcom/google/android/exoplayer/chunk/Chunk;

    if-nez v0, :cond_1

    .line 314
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->chunkSource:Lcom/google/android/exoplayer/chunk/ChunkSource;

    invoke-interface {v0}, Lcom/google/android/exoplayer/chunk/ChunkSource;->maybeThrowError()V

    .line 316
    :cond_1
    return-void
.end method

.method public onLoadCanceled(Lcom/google/android/exoplayer/upstream/Loader$Loadable;)V
    .locals 4
    .param p1, "loadable"    # Lcom/google/android/exoplayer/upstream/Loader$Loadable;

    .prologue
    .line 361
    iget-object v1, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->currentLoadableHolder:Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;

    iget-object v0, v1, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->chunk:Lcom/google/android/exoplayer/chunk/Chunk;

    .line 362
    .local v0, "currentLoadable":Lcom/google/android/exoplayer/chunk/Chunk;
    invoke-virtual {v0}, Lcom/google/android/exoplayer/chunk/Chunk;->bytesLoaded()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->notifyLoadCanceled(J)V

    .line 363
    invoke-direct {p0}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->clearCurrentLoadable()V

    .line 364
    iget v1, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->state:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 365
    iget-wide v2, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->pendingResetPositionUs:J

    invoke-direct {p0, v2, v3}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->restartFrom(J)V

    .line 372
    :goto_0
    return-void

    .line 367
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->sampleQueue:Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;

    invoke-virtual {v1}, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->clear()V

    .line 368
    iget-object v1, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->mediaChunks:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 369
    invoke-direct {p0}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->clearCurrentLoadable()V

    .line 370
    iget-object v1, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->loadControl:Lcom/google/android/exoplayer/LoadControl;

    invoke-interface {v1}, Lcom/google/android/exoplayer/LoadControl;->trimAllocator()V

    goto :goto_0
.end method

.method public onLoadCompleted(Lcom/google/android/exoplayer/upstream/Loader$Loadable;)V
    .locals 18
    .param p1, "loadable"    # Lcom/google/android/exoplayer/upstream/Loader$Loadable;

    .prologue
    .line 343
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    .line 344
    .local v12, "now":J
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->currentLoadStartTimeMs:J

    sub-long v14, v12, v2

    .line 345
    .local v14, "loadDurationMs":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->currentLoadableHolder:Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;

    iget-object v0, v2, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->chunk:Lcom/google/android/exoplayer/chunk/Chunk;

    move-object/from16 v16, v0

    .line 346
    .local v16, "currentLoadable":Lcom/google/android/exoplayer/chunk/Chunk;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->chunkSource:Lcom/google/android/exoplayer/chunk/ChunkSource;

    move-object/from16 v0, v16

    invoke-interface {v2, v0}, Lcom/google/android/exoplayer/chunk/ChunkSource;->onChunkLoadCompleted(Lcom/google/android/exoplayer/chunk/Chunk;)V

    .line 347
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->isMediaChunk(Lcom/google/android/exoplayer/chunk/Chunk;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v17, v16

    .line 348
    check-cast v17, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;

    .line 349
    .local v17, "mediaChunk":Lcom/google/android/exoplayer/chunk/BaseMediaChunk;
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/exoplayer/chunk/Chunk;->bytesLoaded()J

    move-result-wide v3

    move-object/from16 v0, v17

    iget v5, v0, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;->type:I

    move-object/from16 v0, v17

    iget v6, v0, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;->trigger:I

    move-object/from16 v0, v17

    iget-object v7, v0, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;->format:Lcom/google/android/exoplayer/chunk/Format;

    move-object/from16 v0, v17

    iget-wide v8, v0, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;->startTimeUs:J

    move-object/from16 v0, v17

    iget-wide v10, v0, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;->endTimeUs:J

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v15}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->notifyLoadCompleted(JIILcom/google/android/exoplayer/chunk/Format;JJJJ)V

    .line 355
    .end local v17    # "mediaChunk":Lcom/google/android/exoplayer/chunk/BaseMediaChunk;
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->clearCurrentLoadable()V

    .line 356
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->updateLoadControl()V

    .line 357
    return-void

    .line 352
    :cond_0
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/exoplayer/chunk/Chunk;->bytesLoaded()J

    move-result-wide v3

    move-object/from16 v0, v16

    iget v5, v0, Lcom/google/android/exoplayer/chunk/Chunk;->type:I

    move-object/from16 v0, v16

    iget v6, v0, Lcom/google/android/exoplayer/chunk/Chunk;->trigger:I

    move-object/from16 v0, v16

    iget-object v7, v0, Lcom/google/android/exoplayer/chunk/Chunk;->format:Lcom/google/android/exoplayer/chunk/Format;

    const-wide/16 v8, -0x1

    const-wide/16 v10, -0x1

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v15}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->notifyLoadCompleted(JIILcom/google/android/exoplayer/chunk/Format;JJJJ)V

    goto :goto_0
.end method

.method public onLoadError(Lcom/google/android/exoplayer/upstream/Loader$Loadable;Ljava/io/IOException;)V
    .locals 2
    .param p1, "loadable"    # Lcom/google/android/exoplayer/upstream/Loader$Loadable;
    .param p2, "e"    # Ljava/io/IOException;

    .prologue
    .line 376
    iput-object p2, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->currentLoadableException:Ljava/io/IOException;

    .line 377
    iget v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->currentLoadableExceptionCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->currentLoadableExceptionCount:I

    .line 378
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->currentLoadableExceptionTimestamp:J

    .line 379
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->notifyLoadError(Ljava/io/IOException;)V

    .line 380
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->chunkSource:Lcom/google/android/exoplayer/chunk/ChunkSource;

    iget-object v1, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->currentLoadableHolder:Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;

    iget-object v1, v1, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->chunk:Lcom/google/android/exoplayer/chunk/Chunk;

    invoke-interface {v0, v1, p2}, Lcom/google/android/exoplayer/chunk/ChunkSource;->onChunkLoadError(Lcom/google/android/exoplayer/chunk/Chunk;Ljava/lang/Exception;)V

    .line 381
    invoke-direct {p0}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->updateLoadControl()V

    .line 382
    return-void
.end method

.method protected onSampleRead(Lcom/google/android/exoplayer/chunk/MediaChunk;Lcom/google/android/exoplayer/SampleHolder;)V
    .locals 0
    .param p1, "mediaChunk"    # Lcom/google/android/exoplayer/chunk/MediaChunk;
    .param p2, "sampleHolder"    # Lcom/google/android/exoplayer/SampleHolder;

    .prologue
    .line 394
    return-void
.end method

.method public prepare(J)Z
    .locals 6
    .param p1, "positionUs"    # J

    .prologue
    const/4 v5, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 156
    iget v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->state:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->state:I

    if-ne v0, v5, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 157
    iget v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->state:I

    if-ne v0, v5, :cond_2

    .line 166
    :goto_1
    return v2

    :cond_1
    move v0, v1

    .line 156
    goto :goto_0

    .line 159
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->chunkSource:Lcom/google/android/exoplayer/chunk/ChunkSource;

    invoke-interface {v0}, Lcom/google/android/exoplayer/chunk/ChunkSource;->prepare()Z

    move-result v0

    if-nez v0, :cond_3

    move v2, v1

    .line 160
    goto :goto_1

    .line 162
    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->chunkSource:Lcom/google/android/exoplayer/chunk/ChunkSource;

    invoke-interface {v0}, Lcom/google/android/exoplayer/chunk/ChunkSource;->getTrackCount()I

    move-result v0

    if-lez v0, :cond_4

    .line 163
    new-instance v0, Lcom/google/android/exoplayer/upstream/Loader;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Loader:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->chunkSource:Lcom/google/android/exoplayer/chunk/ChunkSource;

    invoke-interface {v4, v1}, Lcom/google/android/exoplayer/chunk/ChunkSource;->getFormat(I)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/exoplayer/MediaFormat;->mimeType:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/upstream/Loader;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->loader:Lcom/google/android/exoplayer/upstream/Loader;

    .line 165
    :cond_4
    iput v5, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->state:I

    goto :goto_1
.end method

.method public readData(IJLcom/google/android/exoplayer/MediaFormatHolder;Lcom/google/android/exoplayer/SampleHolder;)I
    .locals 8
    .param p1, "track"    # I
    .param p2, "positionUs"    # J
    .param p4, "formatHolder"    # Lcom/google/android/exoplayer/MediaFormatHolder;
    .param p5, "sampleHolder"    # Lcom/google/android/exoplayer/SampleHolder;

    .prologue
    .line 236
    iget v4, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->state:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    const/4 v4, 0x1

    :goto_0
    invoke-static {v4}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 237
    iput-wide p2, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->downstreamPositionUs:J

    .line 239
    iget-boolean v4, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->pendingDiscontinuity:Z

    if-nez v4, :cond_0

    invoke-direct {p0}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->isPendingReset()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 240
    :cond_0
    const/4 v4, -0x2

    .line 279
    :goto_1
    return v4

    .line 236
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 243
    :cond_2
    iget-object v4, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->sampleQueue:Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;

    invoke-virtual {v4}, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    const/4 v2, 0x1

    .line 244
    .local v2, "haveSamples":Z
    :goto_2
    iget-object v4, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->mediaChunks:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;

    .line 245
    .local v0, "currentChunk":Lcom/google/android/exoplayer/chunk/BaseMediaChunk;
    :goto_3
    if-eqz v2, :cond_4

    iget-object v4, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->mediaChunks:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_4

    iget-object v4, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->mediaChunks:Ljava/util/LinkedList;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;

    invoke-virtual {v4}, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;->getFirstSampleIndex()I

    move-result v4

    iget-object v5, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->sampleQueue:Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;

    invoke-virtual {v5}, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->getReadIndex()I

    move-result v5

    if-gt v4, v5, :cond_4

    .line 246
    iget-object v4, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->mediaChunks:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 247
    iget-object v4, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->mediaChunks:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "currentChunk":Lcom/google/android/exoplayer/chunk/BaseMediaChunk;
    check-cast v0, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;

    .restart local v0    # "currentChunk":Lcom/google/android/exoplayer/chunk/BaseMediaChunk;
    goto :goto_3

    .line 243
    .end local v0    # "currentChunk":Lcom/google/android/exoplayer/chunk/BaseMediaChunk;
    .end local v2    # "haveSamples":Z
    :cond_3
    const/4 v2, 0x0

    goto :goto_2

    .line 250
    .restart local v0    # "currentChunk":Lcom/google/android/exoplayer/chunk/BaseMediaChunk;
    .restart local v2    # "haveSamples":Z
    :cond_4
    iget-object v4, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->downstreamFormat:Lcom/google/android/exoplayer/chunk/Format;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->downstreamFormat:Lcom/google/android/exoplayer/chunk/Format;

    iget-object v5, v0, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;->format:Lcom/google/android/exoplayer/chunk/Format;

    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer/chunk/Format;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 251
    :cond_5
    iget-object v4, v0, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;->format:Lcom/google/android/exoplayer/chunk/Format;

    iget v5, v0, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;->trigger:I

    iget-wide v6, v0, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;->startTimeUs:J

    invoke-direct {p0, v4, v5, v6, v7}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->notifyDownstreamFormatChanged(Lcom/google/android/exoplayer/chunk/Format;IJ)V

    .line 252
    iget-object v4, v0, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;->format:Lcom/google/android/exoplayer/chunk/Format;

    iput-object v4, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->downstreamFormat:Lcom/google/android/exoplayer/chunk/Format;

    .line 255
    :cond_6
    if-nez v2, :cond_7

    iget-boolean v4, v0, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;->isMediaFormatFinal:Z

    if-eqz v4, :cond_8

    .line 256
    :cond_7
    invoke-virtual {v0}, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;->getMediaFormat()Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v3

    .line 257
    .local v3, "mediaFormat":Lcom/google/android/exoplayer/MediaFormat;
    iget-object v4, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->downstreamMediaFormat:Lcom/google/android/exoplayer/MediaFormat;

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer/MediaFormat;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 258
    iput-object v3, p4, Lcom/google/android/exoplayer/MediaFormatHolder;->format:Lcom/google/android/exoplayer/MediaFormat;

    .line 259
    invoke-virtual {v0}, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;->getDrmInitData()Lcom/google/android/exoplayer/drm/DrmInitData;

    move-result-object v4

    iput-object v4, p4, Lcom/google/android/exoplayer/MediaFormatHolder;->drmInitData:Lcom/google/android/exoplayer/drm/DrmInitData;

    .line 260
    iput-object v3, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->downstreamMediaFormat:Lcom/google/android/exoplayer/MediaFormat;

    .line 261
    const/4 v4, -0x4

    goto :goto_1

    .line 265
    .end local v3    # "mediaFormat":Lcom/google/android/exoplayer/MediaFormat;
    :cond_8
    if-nez v2, :cond_a

    .line 266
    iget-boolean v4, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->loadingFinished:Z

    if-eqz v4, :cond_9

    .line 267
    const/4 v4, -0x1

    goto/16 :goto_1

    .line 269
    :cond_9
    const/4 v4, -0x2

    goto/16 :goto_1

    .line 272
    :cond_a
    iget-object v4, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->sampleQueue:Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;

    invoke-virtual {v4, p5}, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->getSample(Lcom/google/android/exoplayer/SampleHolder;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 273
    iget-wide v4, p5, Lcom/google/android/exoplayer/SampleHolder;->timeUs:J

    iget-wide v6, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->lastSeekPositionUs:J

    cmp-long v4, v4, v6

    if-gez v4, :cond_b

    const/4 v1, 0x1

    .line 274
    .local v1, "decodeOnly":Z
    :goto_4
    iget v5, p5, Lcom/google/android/exoplayer/SampleHolder;->flags:I

    if-eqz v1, :cond_c

    const/high16 v4, 0x8000000

    :goto_5
    or-int/2addr v4, v5

    iput v4, p5, Lcom/google/android/exoplayer/SampleHolder;->flags:I

    .line 275
    invoke-virtual {p0, v0, p5}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->onSampleRead(Lcom/google/android/exoplayer/chunk/MediaChunk;Lcom/google/android/exoplayer/SampleHolder;)V

    .line 276
    const/4 v4, -0x3

    goto/16 :goto_1

    .line 273
    .end local v1    # "decodeOnly":Z
    :cond_b
    const/4 v1, 0x0

    goto :goto_4

    .line 274
    .restart local v1    # "decodeOnly":Z
    :cond_c
    const/4 v4, 0x0

    goto :goto_5

    .line 279
    .end local v1    # "decodeOnly":Z
    :cond_d
    const/4 v4, -0x2

    goto/16 :goto_1
.end method

.method public readDiscontinuity(I)J
    .locals 2
    .param p1, "track"    # I

    .prologue
    .line 227
    iget-boolean v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->pendingDiscontinuity:Z

    if-eqz v0, :cond_0

    .line 228
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->pendingDiscontinuity:Z

    .line 229
    iget-wide v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->lastSeekPositionUs:J

    .line 231
    :goto_0
    return-wide v0

    :cond_0
    const-wide/high16 v0, -0x8000000000000000L

    goto :goto_0
.end method

.method public register()Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 149
    iget v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->state:I

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 150
    iput v1, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->state:I

    .line 151
    return-object p0

    .line 149
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public release()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 333
    iget v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->state:I

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 334
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->loader:Lcom/google/android/exoplayer/upstream/Loader;

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->loader:Lcom/google/android/exoplayer/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/upstream/Loader;->release()V

    .line 336
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->loader:Lcom/google/android/exoplayer/upstream/Loader;

    .line 338
    :cond_0
    iput v1, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->state:I

    .line 339
    return-void

    :cond_1
    move v0, v1

    .line 333
    goto :goto_0
.end method

.method public seekToUs(J)V
    .locals 9
    .param p1, "positionUs"    # J

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 284
    iget v4, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->state:I

    const/4 v7, 0x3

    if-ne v4, v7, :cond_0

    move v4, v5

    :goto_0
    invoke-static {v4}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 286
    invoke-direct {p0}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->isPendingReset()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-wide v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->pendingResetPositionUs:J

    .line 287
    .local v0, "currentPositionUs":J
    :goto_1
    iput-wide p1, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->downstreamPositionUs:J

    .line 288
    iput-wide p1, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->lastSeekPositionUs:J

    .line 289
    cmp-long v4, v0, p1

    if-nez v4, :cond_2

    .line 307
    :goto_2
    return-void

    .end local v0    # "currentPositionUs":J
    :cond_0
    move v4, v6

    .line 284
    goto :goto_0

    .line 286
    :cond_1
    iget-wide v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->downstreamPositionUs:J

    goto :goto_1

    .line 294
    .restart local v0    # "currentPositionUs":J
    :cond_2
    invoke-direct {p0}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->isPendingReset()Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->sampleQueue:Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;

    invoke-virtual {v4, p1, p2}, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->skipToKeyframeBefore(J)Z

    move-result v4

    if-eqz v4, :cond_3

    move v3, v5

    .line 295
    .local v3, "seekInsideBuffer":Z
    :goto_3
    if-eqz v3, :cond_5

    .line 297
    iget-object v4, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->sampleQueue:Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;

    invoke-virtual {v4}, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    move v2, v5

    .line 298
    .local v2, "haveSamples":Z
    :goto_4
    if-eqz v2, :cond_6

    iget-object v4, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->mediaChunks:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    if-le v4, v5, :cond_6

    iget-object v4, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->mediaChunks:Ljava/util/LinkedList;

    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;

    invoke-virtual {v4}, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;->getFirstSampleIndex()I

    move-result v4

    iget-object v6, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->sampleQueue:Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;

    invoke-virtual {v6}, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->getReadIndex()I

    move-result v6

    if-gt v4, v6, :cond_6

    .line 299
    iget-object v4, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->mediaChunks:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    goto :goto_4

    .end local v2    # "haveSamples":Z
    .end local v3    # "seekInsideBuffer":Z
    :cond_3
    move v3, v6

    .line 294
    goto :goto_3

    .restart local v3    # "seekInsideBuffer":Z
    :cond_4
    move v2, v6

    .line 297
    goto :goto_4

    .line 303
    :cond_5
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->restartFrom(J)V

    .line 306
    :cond_6
    iput-boolean v5, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->pendingDiscontinuity:Z

    goto :goto_2
.end method

.method protected final usToMs(J)J
    .locals 3
    .param p1, "timeUs"    # J

    .prologue
    .line 596
    const-wide/16 v0, 0x3e8

    div-long v0, p1, v0

    return-wide v0
.end method
