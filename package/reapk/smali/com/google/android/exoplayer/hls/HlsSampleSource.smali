.class public final Lcom/google/android/exoplayer/hls/HlsSampleSource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer/SampleSource;
.implements Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;
.implements Lcom/google/android/exoplayer/upstream/Loader$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer/hls/HlsSampleSource$EventListener;
    }
.end annotation


# static fields
.field public static final DEFAULT_MIN_LOADABLE_RETRY_COUNT:I = 0x3

.field private static final NO_RESET_PENDING:J = -0x8000000000000000L

.field private static final PRIMARY_TYPE_AUDIO:I = 0x2

.field private static final PRIMARY_TYPE_NONE:I = 0x0

.field private static final PRIMARY_TYPE_TEXT:I = 0x1

.field private static final PRIMARY_TYPE_VIDEO:I = 0x3


# instance fields
.field private final bufferSizeContribution:I

.field private final chunkOperationHolder:Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;

.field private final chunkSource:Lcom/google/android/exoplayer/hls/HlsChunkSource;

.field private chunkSourceTrackIndices:[I

.field private currentLoadStartTimeMs:J

.field private currentLoadable:Lcom/google/android/exoplayer/chunk/Chunk;

.field private currentLoadableException:Ljava/io/IOException;

.field private currentLoadableExceptionCount:I

.field private currentLoadableExceptionTimestamp:J

.field private currentTsLoadable:Lcom/google/android/exoplayer/hls/TsChunk;

.field private downstreamFormat:Lcom/google/android/exoplayer/chunk/Format;

.field private downstreamMediaFormats:[Lcom/google/android/exoplayer/MediaFormat;

.field private downstreamPositionUs:J

.field private enabledTrackCount:I

.field private final eventHandler:Landroid/os/Handler;

.field private final eventListener:Lcom/google/android/exoplayer/hls/HlsSampleSource$EventListener;

.field private final eventSourceId:I

.field private extractorTrackEnabledStates:[Z

.field private extractorTrackIndices:[I

.field private final extractors:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private lastSeekPositionUs:J

.field private final loadControl:Lcom/google/android/exoplayer/LoadControl;

.field private loadControlRegistered:Z

.field private loader:Lcom/google/android/exoplayer/upstream/Loader;

.field private loadingFinished:Z

.field private final minLoadableRetryCount:I

.field private pendingDiscontinuities:[Z

.field private pendingResetPositionUs:J

.field private prepared:Z

.field private previousTsLoadable:Lcom/google/android/exoplayer/hls/TsChunk;

.field private remainingReleaseCount:I

.field private trackCount:I

.field private trackEnabledStates:[Z

.field private trackFormats:[Lcom/google/android/exoplayer/MediaFormat;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer/hls/HlsChunkSource;Lcom/google/android/exoplayer/LoadControl;I)V
    .locals 7
    .param p1, "chunkSource"    # Lcom/google/android/exoplayer/hls/HlsChunkSource;
    .param p2, "loadControl"    # Lcom/google/android/exoplayer/LoadControl;
    .param p3, "bufferSizeContribution"    # I

    .prologue
    const/4 v4, 0x0

    .line 98
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, v4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer/hls/HlsSampleSource;-><init>(Lcom/google/android/exoplayer/hls/HlsChunkSource;Lcom/google/android/exoplayer/LoadControl;ILandroid/os/Handler;Lcom/google/android/exoplayer/hls/HlsSampleSource$EventListener;I)V

    .line 99
    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer/hls/HlsChunkSource;Lcom/google/android/exoplayer/LoadControl;ILandroid/os/Handler;Lcom/google/android/exoplayer/hls/HlsSampleSource$EventListener;I)V
    .locals 8
    .param p1, "chunkSource"    # Lcom/google/android/exoplayer/hls/HlsChunkSource;
    .param p2, "loadControl"    # Lcom/google/android/exoplayer/LoadControl;
    .param p3, "bufferSizeContribution"    # I
    .param p4, "eventHandler"    # Landroid/os/Handler;
    .param p5, "eventListener"    # Lcom/google/android/exoplayer/hls/HlsSampleSource$EventListener;
    .param p6, "eventSourceId"    # I

    .prologue
    .line 103
    const/4 v7, 0x3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer/hls/HlsSampleSource;-><init>(Lcom/google/android/exoplayer/hls/HlsChunkSource;Lcom/google/android/exoplayer/LoadControl;ILandroid/os/Handler;Lcom/google/android/exoplayer/hls/HlsSampleSource$EventListener;II)V

    .line 104
    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer/hls/HlsChunkSource;Lcom/google/android/exoplayer/LoadControl;ILandroid/os/Handler;Lcom/google/android/exoplayer/hls/HlsSampleSource$EventListener;II)V
    .locals 2
    .param p1, "chunkSource"    # Lcom/google/android/exoplayer/hls/HlsChunkSource;
    .param p2, "loadControl"    # Lcom/google/android/exoplayer/LoadControl;
    .param p3, "bufferSizeContribution"    # I
    .param p4, "eventHandler"    # Landroid/os/Handler;
    .param p5, "eventListener"    # Lcom/google/android/exoplayer/hls/HlsSampleSource$EventListener;
    .param p6, "eventSourceId"    # I
    .param p7, "minLoadableRetryCount"    # I

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput-object p1, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->chunkSource:Lcom/google/android/exoplayer/hls/HlsChunkSource;

    .line 109
    iput-object p2, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->loadControl:Lcom/google/android/exoplayer/LoadControl;

    .line 110
    iput p3, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->bufferSizeContribution:I

    .line 111
    iput p7, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->minLoadableRetryCount:I

    .line 112
    iput-object p4, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->eventHandler:Landroid/os/Handler;

    .line 113
    iput-object p5, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->eventListener:Lcom/google/android/exoplayer/hls/HlsSampleSource$EventListener;

    .line 114
    iput p6, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->eventSourceId:I

    .line 115
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->pendingResetPositionUs:J

    .line 116
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->extractors:Ljava/util/LinkedList;

    .line 117
    new-instance v0, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;

    invoke-direct {v0}, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->chunkOperationHolder:Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;

    .line 118
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/exoplayer/hls/HlsSampleSource;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/android/exoplayer/hls/HlsSampleSource;

    .prologue
    .line 45
    iget v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->eventSourceId:I

    return v0
.end method

.method static synthetic access$100(Lcom/google/android/exoplayer/hls/HlsSampleSource;)Lcom/google/android/exoplayer/hls/HlsSampleSource$EventListener;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/exoplayer/hls/HlsSampleSource;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->eventListener:Lcom/google/android/exoplayer/hls/HlsSampleSource$EventListener;

    return-object v0
.end method

.method private buildTracks(Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;)V
    .locals 19
    .param p1, "extractor"    # Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;

    .prologue
    .line 490
    const/4 v13, 0x0

    .line 491
    .local v13, "primaryExtractorTrackType":I
    const/4 v12, -0x1

    .line 492
    .local v12, "primaryExtractorTrackIndex":I
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->getTrackCount()I

    move-result v6

    .line 493
    .local v6, "extractorTrackCount":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-ge v9, v6, :cond_5

    .line 494
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->getMediaFormat(I)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v11, v0, Lcom/google/android/exoplayer/MediaFormat;->mimeType:Ljava/lang/String;

    .line 496
    .local v11, "mimeType":Ljava/lang/String;
    invoke-static {v11}, Lcom/google/android/exoplayer/util/MimeTypes;->isVideo(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 497
    const/16 v16, 0x3

    .line 505
    .local v16, "trackType":I
    :goto_1
    move/from16 v0, v16

    if-le v0, v13, :cond_4

    .line 506
    move/from16 v13, v16

    .line 507
    move v12, v9

    .line 493
    :cond_0
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 498
    .end local v16    # "trackType":I
    :cond_1
    invoke-static {v11}, Lcom/google/android/exoplayer/util/MimeTypes;->isAudio(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 499
    const/16 v16, 0x2

    .restart local v16    # "trackType":I
    goto :goto_1

    .line 500
    .end local v16    # "trackType":I
    :cond_2
    invoke-static {v11}, Lcom/google/android/exoplayer/util/MimeTypes;->isText(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 501
    const/16 v16, 0x1

    .restart local v16    # "trackType":I
    goto :goto_1

    .line 503
    .end local v16    # "trackType":I
    :cond_3
    const/16 v16, 0x0

    .restart local v16    # "trackType":I
    goto :goto_1

    .line 508
    :cond_4
    move/from16 v0, v16

    if-ne v0, v13, :cond_0

    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v12, v0, :cond_0

    .line 511
    const/4 v12, -0x1

    goto :goto_2

    .line 516
    .end local v11    # "mimeType":Ljava/lang/String;
    .end local v16    # "trackType":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->chunkSource:Lcom/google/android/exoplayer/hls/HlsChunkSource;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/exoplayer/hls/HlsChunkSource;->getTrackCount()I

    move-result v2

    .line 517
    .local v2, "chunkSourceTrackCount":I
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v12, v0, :cond_7

    const/4 v3, 0x1

    .line 518
    .local v3, "expandPrimaryExtractorTrack":Z
    :goto_3
    move-object/from16 v0, p0

    iput v6, v0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->trackCount:I

    .line 519
    if-eqz v3, :cond_6

    .line 520
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->trackCount:I

    move/from16 v17, v0

    add-int/lit8 v18, v2, -0x1

    add-int v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/exoplayer/hls/HlsSampleSource;->trackCount:I

    .line 524
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->trackCount:I

    move/from16 v17, v0

    move/from16 v0, v17

    new-array v0, v0, [Lcom/google/android/exoplayer/MediaFormat;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/exoplayer/hls/HlsSampleSource;->trackFormats:[Lcom/google/android/exoplayer/MediaFormat;

    .line 525
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->trackCount:I

    move/from16 v17, v0

    move/from16 v0, v17

    new-array v0, v0, [Z

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/exoplayer/hls/HlsSampleSource;->trackEnabledStates:[Z

    .line 526
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->trackCount:I

    move/from16 v17, v0

    move/from16 v0, v17

    new-array v0, v0, [Z

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/exoplayer/hls/HlsSampleSource;->pendingDiscontinuities:[Z

    .line 527
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->trackCount:I

    move/from16 v17, v0

    move/from16 v0, v17

    new-array v0, v0, [Lcom/google/android/exoplayer/MediaFormat;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/exoplayer/hls/HlsSampleSource;->downstreamMediaFormats:[Lcom/google/android/exoplayer/MediaFormat;

    .line 528
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->trackCount:I

    move/from16 v17, v0

    move/from16 v0, v17

    new-array v0, v0, [I

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/exoplayer/hls/HlsSampleSource;->chunkSourceTrackIndices:[I

    .line 529
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->trackCount:I

    move/from16 v17, v0

    move/from16 v0, v17

    new-array v0, v0, [I

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/exoplayer/hls/HlsSampleSource;->extractorTrackIndices:[I

    .line 530
    new-array v0, v6, [Z

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/exoplayer/hls/HlsSampleSource;->extractorTrackEnabledStates:[Z

    .line 533
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->chunkSource:Lcom/google/android/exoplayer/hls/HlsChunkSource;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/exoplayer/hls/HlsChunkSource;->getDurationUs()J

    move-result-wide v4

    .line 534
    .local v4, "durationUs":J
    const/4 v14, 0x0

    .line 535
    .local v14, "trackIndex":I
    const/4 v9, 0x0

    move v15, v14

    .end local v14    # "trackIndex":I
    .local v15, "trackIndex":I
    :goto_4
    if-ge v9, v6, :cond_b

    .line 536
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->getMediaFormat(I)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5}, Lcom/google/android/exoplayer/MediaFormat;->copyWithDurationUs(J)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v8

    .line 537
    .local v8, "format":Lcom/google/android/exoplayer/MediaFormat;
    if-ne v9, v12, :cond_a

    .line 538
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_5
    if-ge v10, v2, :cond_9

    .line 539
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->extractorTrackIndices:[I

    move-object/from16 v17, v0

    aput v9, v17, v15

    .line 540
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->chunkSourceTrackIndices:[I

    move-object/from16 v17, v0

    aput v10, v17, v15

    .line 541
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->chunkSource:Lcom/google/android/exoplayer/hls/HlsChunkSource;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Lcom/google/android/exoplayer/hls/HlsChunkSource;->getFixedTrackVariant(I)Lcom/google/android/exoplayer/hls/Variant;

    move-result-object v7

    .line 542
    .local v7, "fixedTrackVariant":Lcom/google/android/exoplayer/hls/Variant;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->trackFormats:[Lcom/google/android/exoplayer/MediaFormat;

    move-object/from16 v18, v0

    add-int/lit8 v14, v15, 0x1

    .end local v15    # "trackIndex":I
    .restart local v14    # "trackIndex":I
    if-nez v7, :cond_8

    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lcom/google/android/exoplayer/MediaFormat;->copyAsAdaptive(Ljava/lang/String;)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v17

    :goto_6
    aput-object v17, v18, v15

    .line 538
    add-int/lit8 v10, v10, 0x1

    move v15, v14

    .end local v14    # "trackIndex":I
    .restart local v15    # "trackIndex":I
    goto :goto_5

    .line 517
    .end local v3    # "expandPrimaryExtractorTrack":Z
    .end local v4    # "durationUs":J
    .end local v7    # "fixedTrackVariant":Lcom/google/android/exoplayer/hls/Variant;
    .end local v8    # "format":Lcom/google/android/exoplayer/MediaFormat;
    .end local v10    # "j":I
    .end local v15    # "trackIndex":I
    :cond_7
    const/4 v3, 0x0

    goto/16 :goto_3

    .line 542
    .restart local v3    # "expandPrimaryExtractorTrack":Z
    .restart local v4    # "durationUs":J
    .restart local v7    # "fixedTrackVariant":Lcom/google/android/exoplayer/hls/Variant;
    .restart local v8    # "format":Lcom/google/android/exoplayer/MediaFormat;
    .restart local v10    # "j":I
    .restart local v14    # "trackIndex":I
    :cond_8
    iget-object v0, v7, Lcom/google/android/exoplayer/hls/Variant;->format:Lcom/google/android/exoplayer/chunk/Format;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v8, v0}, Lcom/google/android/exoplayer/hls/HlsSampleSource;->copyWithFixedTrackInfo(Lcom/google/android/exoplayer/MediaFormat;Lcom/google/android/exoplayer/chunk/Format;)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v17

    goto :goto_6

    .end local v7    # "fixedTrackVariant":Lcom/google/android/exoplayer/hls/Variant;
    .end local v14    # "trackIndex":I
    .restart local v15    # "trackIndex":I
    :cond_9
    move v14, v15

    .line 535
    .end local v10    # "j":I
    .end local v15    # "trackIndex":I
    .restart local v14    # "trackIndex":I
    :goto_7
    add-int/lit8 v9, v9, 0x1

    move v15, v14

    .end local v14    # "trackIndex":I
    .restart local v15    # "trackIndex":I
    goto :goto_4

    .line 546
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->extractorTrackIndices:[I

    move-object/from16 v17, v0

    aput v9, v17, v15

    .line 547
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->chunkSourceTrackIndices:[I

    move-object/from16 v17, v0

    const/16 v18, -0x1

    aput v18, v17, v15

    .line 548
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->trackFormats:[Lcom/google/android/exoplayer/MediaFormat;

    move-object/from16 v17, v0

    add-int/lit8 v14, v15, 0x1

    .end local v15    # "trackIndex":I
    .restart local v14    # "trackIndex":I
    aput-object v8, v17, v15

    goto :goto_7

    .line 551
    .end local v8    # "format":Lcom/google/android/exoplayer/MediaFormat;
    .end local v14    # "trackIndex":I
    .restart local v15    # "trackIndex":I
    :cond_b
    return-void
.end method

.method private clearCurrentLoadable()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 645
    iput-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->currentTsLoadable:Lcom/google/android/exoplayer/hls/TsChunk;

    .line 646
    iput-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->currentLoadable:Lcom/google/android/exoplayer/chunk/Chunk;

    .line 647
    iput-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->currentLoadableException:Ljava/io/IOException;

    .line 648
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->currentLoadableExceptionCount:I

    .line 649
    return-void
.end method

.method private clearState()V
    .locals 2

    .prologue
    .line 636
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->extractors:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 637
    iget-object v1, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->extractors:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;

    invoke-virtual {v1}, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->clear()V

    .line 636
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 639
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->extractors:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 640
    invoke-direct {p0}, Lcom/google/android/exoplayer/hls/HlsSampleSource;->clearCurrentLoadable()V

    .line 641
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->previousTsLoadable:Lcom/google/android/exoplayer/hls/TsChunk;

    .line 642
    return-void
.end method

.method private static copyWithFixedTrackInfo(Lcom/google/android/exoplayer/MediaFormat;Lcom/google/android/exoplayer/chunk/Format;)Lcom/google/android/exoplayer/MediaFormat;
    .locals 6
    .param p0, "format"    # Lcom/google/android/exoplayer/MediaFormat;
    .param p1, "fixedTrackFormat"    # Lcom/google/android/exoplayer/chunk/Format;

    .prologue
    const/4 v0, -0x1

    .line 130
    iget v1, p1, Lcom/google/android/exoplayer/chunk/Format;->width:I

    if-ne v1, v0, :cond_0

    move v3, v0

    .line 131
    .local v3, "width":I
    :goto_0
    iget v1, p1, Lcom/google/android/exoplayer/chunk/Format;->height:I

    if-ne v1, v0, :cond_1

    move v4, v0

    .line 132
    .local v4, "height":I
    :goto_1
    iget-object v1, p1, Lcom/google/android/exoplayer/chunk/Format;->id:Ljava/lang/String;

    iget v2, p1, Lcom/google/android/exoplayer/chunk/Format;->bitrate:I

    iget-object v5, p1, Lcom/google/android/exoplayer/chunk/Format;->language:Ljava/lang/String;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer/MediaFormat;->copyWithFixedTrackInfo(Ljava/lang/String;IIILjava/lang/String;)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v0

    return-object v0

    .line 130
    .end local v3    # "width":I
    .end local v4    # "height":I
    :cond_0
    iget v3, p1, Lcom/google/android/exoplayer/chunk/Format;->width:I

    goto :goto_0

    .line 131
    .restart local v3    # "width":I
    :cond_1
    iget v4, p1, Lcom/google/android/exoplayer/chunk/Format;->height:I

    goto :goto_1
.end method

.method private discardSamplesForDisabledTracks(Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;J)V
    .locals 2
    .param p1, "extractor"    # Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;
    .param p2, "timeUs"    # J

    .prologue
    .line 602
    invoke-virtual {p1}, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->isPrepared()Z

    move-result v1

    if-nez v1, :cond_1

    .line 610
    :cond_0
    return-void

    .line 605
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->extractorTrackEnabledStates:[Z

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 606
    iget-object v1, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->extractorTrackEnabledStates:[Z

    aget-boolean v1, v1, v0

    if-nez v1, :cond_2

    .line 607
    invoke-virtual {p1, v0, p2, p3}, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->discardUntil(IJ)V

    .line 605
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getCurrentExtractor()Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;
    .locals 3

    .prologue
    .line 592
    iget-object v1, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->extractors:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;

    .line 593
    .local v0, "extractor":Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->extractors:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/hls/HlsSampleSource;->haveSamplesForEnabledTracks(Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 595
    iget-object v1, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->extractors:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;

    invoke-virtual {v1}, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->clear()V

    .line 596
    iget-object v1, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->extractors:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "extractor":Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;
    check-cast v0, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;

    .restart local v0    # "extractor":Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;
    goto :goto_0

    .line 598
    :cond_0
    return-object v0
.end method

.method private getNextLoadPositionUs()J
    .locals 2

    .prologue
    .line 713
    invoke-direct {p0}, Lcom/google/android/exoplayer/hls/HlsSampleSource;->isPendingReset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 714
    iget-wide v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->pendingResetPositionUs:J

    .line 716
    :goto_0
    return-wide v0

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->loadingFinished:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->prepared:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->enabledTrackCount:I

    if-nez v0, :cond_2

    :cond_1
    const-wide/16 v0, -0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->currentTsLoadable:Lcom/google/android/exoplayer/hls/TsChunk;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->currentTsLoadable:Lcom/google/android/exoplayer/hls/TsChunk;

    iget-wide v0, v0, Lcom/google/android/exoplayer/hls/TsChunk;->endTimeUs:J

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->previousTsLoadable:Lcom/google/android/exoplayer/hls/TsChunk;

    iget-wide v0, v0, Lcom/google/android/exoplayer/hls/TsChunk;->endTimeUs:J

    goto :goto_0
.end method

.method private getRetryDelayMillis(J)J
    .locals 5
    .param p1, "errorCount"    # J

    .prologue
    .line 730
    const-wide/16 v0, 0x1

    sub-long v0, p1, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method private haveSamplesForEnabledTracks(Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;)Z
    .locals 3
    .param p1, "extractor"    # Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;

    .prologue
    const/4 v1, 0x0

    .line 613
    invoke-virtual {p1}, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->isPrepared()Z

    move-result v2

    if-nez v2, :cond_1

    .line 621
    :cond_0
    :goto_0
    return v1

    .line 616
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->extractorTrackEnabledStates:[Z

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 617
    iget-object v2, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->extractorTrackEnabledStates:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_2

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->hasSamples(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 618
    const/4 v1, 0x1

    goto :goto_0

    .line 616
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private isPendingReset()Z
    .locals 4

    .prologue
    .line 726
    iget-wide v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->pendingResetPositionUs:J

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

.method private isTsChunk(Lcom/google/android/exoplayer/chunk/Chunk;)Z
    .locals 1
    .param p1, "chunk"    # Lcom/google/android/exoplayer/chunk/Chunk;

    .prologue
    .line 722
    instance-of v0, p1, Lcom/google/android/exoplayer/hls/TsChunk;

    return v0
.end method

.method private maybeStartLoading()V
    .locals 31

    .prologue
    .line 652
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v28

    .line 653
    .local v28, "now":J
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer/hls/HlsSampleSource;->getNextLoadPositionUs()J

    move-result-wide v8

    .line 654
    .local v8, "nextLoadPositionUs":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->currentLoadableException:Ljava/io/IOException;

    if-eqz v4, :cond_2

    const/16 v25, 0x1

    .line 655
    .local v25, "isBackedOff":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->loader:Lcom/google/android/exoplayer/upstream/Loader;

    invoke-virtual {v4}, Lcom/google/android/exoplayer/upstream/Loader;->isLoading()Z

    move-result v4

    if-nez v4, :cond_0

    if-eqz v25, :cond_3

    :cond_0
    const/4 v10, 0x1

    .line 658
    .local v10, "loadingOrBackedOff":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->loadControl:Lcom/google/android/exoplayer/LoadControl;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->downstreamPositionUs:J

    move-object/from16 v5, p0

    invoke-interface/range {v4 .. v10}, Lcom/google/android/exoplayer/LoadControl;->update(Ljava/lang/Object;JJZ)Z

    move-result v27

    .line 660
    .local v27, "nextLoader":Z
    if-eqz v25, :cond_4

    .line 661
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->currentLoadableExceptionTimestamp:J

    sub-long v22, v28, v4

    .line 662
    .local v22, "elapsedMillis":J
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->currentLoadableExceptionCount:I

    int-to-long v4, v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/google/android/exoplayer/hls/HlsSampleSource;->getRetryDelayMillis(J)J

    move-result-wide v4

    cmp-long v4, v22, v4

    if-ltz v4, :cond_1

    .line 663
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->currentLoadableException:Ljava/io/IOException;

    .line 664
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->loader:Lcom/google/android/exoplayer/upstream/Loader;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->currentLoadable:Lcom/google/android/exoplayer/chunk/Chunk;

    move-object/from16 v0, p0

    invoke-virtual {v4, v5, v0}, Lcom/google/android/exoplayer/upstream/Loader;->startLoading(Lcom/google/android/exoplayer/upstream/Loader$Loadable;Lcom/google/android/exoplayer/upstream/Loader$Callback;)V

    .line 706
    .end local v22    # "elapsedMillis":J
    :cond_1
    :goto_2
    return-void

    .line 654
    .end local v10    # "loadingOrBackedOff":Z
    .end local v25    # "isBackedOff":Z
    .end local v27    # "nextLoader":Z
    :cond_2
    const/16 v25, 0x0

    goto :goto_0

    .line 655
    .restart local v25    # "isBackedOff":Z
    :cond_3
    const/4 v10, 0x0

    goto :goto_1

    .line 669
    .restart local v10    # "loadingOrBackedOff":Z
    .restart local v27    # "nextLoader":Z
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->loader:Lcom/google/android/exoplayer/upstream/Loader;

    invoke-virtual {v4}, Lcom/google/android/exoplayer/upstream/Loader;->isLoading()Z

    move-result v4

    if-nez v4, :cond_1

    if-eqz v27, :cond_1

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->prepared:Z

    if-eqz v4, :cond_5

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->enabledTrackCount:I

    if-eqz v4, :cond_1

    .line 673
    :cond_5
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->chunkSource:Lcom/google/android/exoplayer/hls/HlsChunkSource;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->previousTsLoadable:Lcom/google/android/exoplayer/hls/TsChunk;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->pendingResetPositionUs:J

    const-wide/high16 v12, -0x8000000000000000L

    cmp-long v4, v4, v12

    if-eqz v4, :cond_6

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->pendingResetPositionUs:J

    :goto_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->chunkOperationHolder:Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;

    invoke-virtual {v6, v7, v4, v5, v12}, Lcom/google/android/exoplayer/hls/HlsChunkSource;->getChunkOperation(Lcom/google/android/exoplayer/hls/TsChunk;JLcom/google/android/exoplayer/chunk/ChunkOperationHolder;)V

    .line 675
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->chunkOperationHolder:Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;

    iget-boolean v11, v4, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->endOfStream:Z

    .line 676
    .local v11, "endOfStream":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->chunkOperationHolder:Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;

    iget-object v0, v4, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->chunk:Lcom/google/android/exoplayer/chunk/Chunk;

    move-object/from16 v26, v0

    .line 677
    .local v26, "nextLoadable":Lcom/google/android/exoplayer/chunk/Chunk;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->chunkOperationHolder:Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;

    invoke-virtual {v4}, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->clear()V

    .line 679
    if-eqz v11, :cond_7

    .line 680
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->loadingFinished:Z

    .line 681
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->loadControl:Lcom/google/android/exoplayer/LoadControl;

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->downstreamPositionUs:J

    const-wide/16 v16, -0x1

    const/16 v18, 0x0

    move-object/from16 v13, p0

    invoke-interface/range {v12 .. v18}, Lcom/google/android/exoplayer/LoadControl;->update(Ljava/lang/Object;JJZ)Z

    goto :goto_2

    .line 673
    .end local v11    # "endOfStream":Z
    .end local v26    # "nextLoadable":Lcom/google/android/exoplayer/chunk/Chunk;
    :cond_6
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->downstreamPositionUs:J

    goto :goto_3

    .line 684
    .restart local v11    # "endOfStream":Z
    .restart local v26    # "nextLoadable":Lcom/google/android/exoplayer/chunk/Chunk;
    :cond_7
    if-eqz v26, :cond_1

    .line 688
    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/google/android/exoplayer/hls/HlsSampleSource;->currentLoadStartTimeMs:J

    .line 689
    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/exoplayer/hls/HlsSampleSource;->currentLoadable:Lcom/google/android/exoplayer/chunk/Chunk;

    .line 690
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->currentLoadable:Lcom/google/android/exoplayer/chunk/Chunk;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/google/android/exoplayer/hls/HlsSampleSource;->isTsChunk(Lcom/google/android/exoplayer/chunk/Chunk;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 691
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->currentLoadable:Lcom/google/android/exoplayer/chunk/Chunk;

    move-object/from16 v30, v0

    check-cast v30, Lcom/google/android/exoplayer/hls/TsChunk;

    .line 692
    .local v30, "tsChunk":Lcom/google/android/exoplayer/hls/TsChunk;
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer/hls/HlsSampleSource;->isPendingReset()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 693
    const-wide/high16 v4, -0x8000000000000000L

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->pendingResetPositionUs:J

    .line 695
    :cond_8
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/google/android/exoplayer/hls/TsChunk;->extractorWrapper:Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;

    move-object/from16 v24, v0

    .line 696
    .local v24, "extractorWrapper":Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->extractors:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_9

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->extractors:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v0, v24

    if-eq v4, v0, :cond_a

    .line 697
    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->loadControl:Lcom/google/android/exoplayer/LoadControl;

    invoke-interface {v4}, Lcom/google/android/exoplayer/LoadControl;->getAllocator()Lcom/google/android/exoplayer/upstream/Allocator;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->init(Lcom/google/android/exoplayer/upstream/Allocator;)V

    .line 698
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->extractors:Ljava/util/LinkedList;

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 700
    :cond_a
    move-object/from16 v0, v30

    iget-object v4, v0, Lcom/google/android/exoplayer/hls/TsChunk;->dataSpec:Lcom/google/android/exoplayer/upstream/DataSpec;

    iget-wide v13, v4, Lcom/google/android/exoplayer/upstream/DataSpec;->length:J

    move-object/from16 v0, v30

    iget v15, v0, Lcom/google/android/exoplayer/hls/TsChunk;->type:I

    move-object/from16 v0, v30

    iget v0, v0, Lcom/google/android/exoplayer/hls/TsChunk;->trigger:I

    move/from16 v16, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/google/android/exoplayer/hls/TsChunk;->format:Lcom/google/android/exoplayer/chunk/Format;

    move-object/from16 v17, v0

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/google/android/exoplayer/hls/TsChunk;->startTimeUs:J

    move-wide/from16 v18, v0

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/google/android/exoplayer/hls/TsChunk;->endTimeUs:J

    move-wide/from16 v20, v0

    move-object/from16 v12, p0

    invoke-direct/range {v12 .. v21}, Lcom/google/android/exoplayer/hls/HlsSampleSource;->notifyLoadStarted(JIILcom/google/android/exoplayer/chunk/Format;JJ)V

    .line 701
    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/exoplayer/hls/HlsSampleSource;->currentTsLoadable:Lcom/google/android/exoplayer/hls/TsChunk;

    .line 705
    .end local v24    # "extractorWrapper":Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;
    .end local v30    # "tsChunk":Lcom/google/android/exoplayer/hls/TsChunk;
    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->loader:Lcom/google/android/exoplayer/upstream/Loader;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->currentLoadable:Lcom/google/android/exoplayer/chunk/Chunk;

    move-object/from16 v0, p0

    invoke-virtual {v4, v5, v0}, Lcom/google/android/exoplayer/upstream/Loader;->startLoading(Lcom/google/android/exoplayer/upstream/Loader$Loadable;Lcom/google/android/exoplayer/upstream/Loader$Callback;)V

    goto/16 :goto_2

    .line 703
    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->currentLoadable:Lcom/google/android/exoplayer/chunk/Chunk;

    iget-object v4, v4, Lcom/google/android/exoplayer/chunk/Chunk;->dataSpec:Lcom/google/android/exoplayer/upstream/DataSpec;

    iget-wide v13, v4, Lcom/google/android/exoplayer/upstream/DataSpec;->length:J

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->currentLoadable:Lcom/google/android/exoplayer/chunk/Chunk;

    iget v15, v4, Lcom/google/android/exoplayer/chunk/Chunk;->type:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->currentLoadable:Lcom/google/android/exoplayer/chunk/Chunk;

    iget v0, v4, Lcom/google/android/exoplayer/chunk/Chunk;->trigger:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->currentLoadable:Lcom/google/android/exoplayer/chunk/Chunk;

    iget-object v0, v4, Lcom/google/android/exoplayer/chunk/Chunk;->format:Lcom/google/android/exoplayer/chunk/Format;

    move-object/from16 v17, v0

    const-wide/16 v18, -0x1

    const-wide/16 v20, -0x1

    move-object/from16 v12, p0

    invoke-direct/range {v12 .. v21}, Lcom/google/android/exoplayer/hls/HlsSampleSource;->notifyLoadStarted(JIILcom/google/android/exoplayer/chunk/Format;JJ)V

    goto :goto_4
.end method

.method private notifyDownstreamFormatChanged(Lcom/google/android/exoplayer/chunk/Format;IJ)V
    .locals 7
    .param p1, "format"    # Lcom/google/android/exoplayer/chunk/Format;
    .param p2, "trigger"    # I
    .param p3, "positionUs"    # J

    .prologue
    .line 785
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->eventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->eventListener:Lcom/google/android/exoplayer/hls/HlsSampleSource$EventListener;

    if-eqz v0, :cond_0

    .line 786
    iget-object v6, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->eventHandler:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/exoplayer/hls/HlsSampleSource$5;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer/hls/HlsSampleSource$5;-><init>(Lcom/google/android/exoplayer/hls/HlsSampleSource;Lcom/google/android/exoplayer/chunk/Format;IJ)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 793
    :cond_0
    return-void
.end method

.method private notifyLoadCanceled(J)V
    .locals 3
    .param p1, "bytesLoaded"    # J

    .prologue
    .line 763
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->eventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->eventListener:Lcom/google/android/exoplayer/hls/HlsSampleSource$EventListener;

    if-eqz v0, :cond_0

    .line 764
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->eventHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/exoplayer/hls/HlsSampleSource$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/exoplayer/hls/HlsSampleSource$3;-><init>(Lcom/google/android/exoplayer/hls/HlsSampleSource;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 771
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
    .line 751
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->eventHandler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->eventListener:Lcom/google/android/exoplayer/hls/HlsSampleSource$EventListener;

    if-eqz v2, :cond_0

    .line 752
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->eventHandler:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/exoplayer/hls/HlsSampleSource$2;

    move-object/from16 v4, p0

    move-wide/from16 v5, p1

    move/from16 v7, p3

    move/from16 v8, p4

    move-object/from16 v9, p5

    move-wide/from16 v10, p6

    move-wide/from16 v12, p8

    move-wide/from16 v14, p10

    move-wide/from16 v16, p12

    invoke-direct/range {v3 .. v17}, Lcom/google/android/exoplayer/hls/HlsSampleSource$2;-><init>(Lcom/google/android/exoplayer/hls/HlsSampleSource;JIILcom/google/android/exoplayer/chunk/Format;JJJJ)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 760
    :cond_0
    return-void
.end method

.method private notifyLoadError(Ljava/io/IOException;)V
    .locals 2
    .param p1, "e"    # Ljava/io/IOException;

    .prologue
    .line 774
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->eventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->eventListener:Lcom/google/android/exoplayer/hls/HlsSampleSource$EventListener;

    if-eqz v0, :cond_0

    .line 775
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->eventHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/exoplayer/hls/HlsSampleSource$4;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer/hls/HlsSampleSource$4;-><init>(Lcom/google/android/exoplayer/hls/HlsSampleSource;Ljava/io/IOException;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 782
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
    .line 739
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->eventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->eventListener:Lcom/google/android/exoplayer/hls/HlsSampleSource$EventListener;

    if-eqz v0, :cond_0

    .line 740
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->eventHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/exoplayer/hls/HlsSampleSource$1;

    move-object v2, p0

    move-wide v3, p1

    move v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    invoke-direct/range {v1 .. v11}, Lcom/google/android/exoplayer/hls/HlsSampleSource$1;-><init>(Lcom/google/android/exoplayer/hls/HlsSampleSource;JIILcom/google/android/exoplayer/chunk/Format;JJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 747
    :cond_0
    return-void
.end method

.method private restartFrom(J)V
    .locals 1
    .param p1, "positionUs"    # J

    .prologue
    .line 625
    iput-wide p1, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->pendingResetPositionUs:J

    .line 626
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->loadingFinished:Z

    .line 627
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->loader:Lcom/google/android/exoplayer/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/upstream/Loader;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 628
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->loader:Lcom/google/android/exoplayer/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/upstream/Loader;->cancelLoading()V

    .line 633
    :goto_0
    return-void

    .line 630
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer/hls/HlsSampleSource;->clearState()V

    .line 631
    invoke-direct {p0}, Lcom/google/android/exoplayer/hls/HlsSampleSource;->maybeStartLoading()V

    goto :goto_0
.end method

.method private seekToInternal(J)V
    .locals 3
    .param p1, "positionUs"    # J

    .prologue
    .line 575
    iput-wide p1, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->lastSeekPositionUs:J

    .line 576
    iput-wide p1, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->downstreamPositionUs:J

    .line 577
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->pendingDiscontinuities:[Z

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([ZZ)V

    .line 578
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->chunkSource:Lcom/google/android/exoplayer/hls/HlsChunkSource;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/hls/HlsChunkSource;->seek()V

    .line 579
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer/hls/HlsSampleSource;->restartFrom(J)V

    .line 580
    return-void
.end method

.method private setTrackEnabledState(IZ)V
    .locals 4
    .param p1, "track"    # I
    .param p2, "enabledState"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 561
    iget-object v1, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->trackEnabledStates:[Z

    aget-boolean v1, v1, p1

    if-eq v1, p2, :cond_1

    move v1, v2

    :goto_0
    invoke-static {v1}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 562
    iget-object v1, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->extractorTrackIndices:[I

    aget v0, v1, p1

    .line 563
    .local v0, "extractorTrack":I
    iget-object v1, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->extractorTrackEnabledStates:[Z

    aget-boolean v1, v1, v0

    if-eq v1, p2, :cond_0

    move v3, v2

    :cond_0
    invoke-static {v3}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 564
    iget-object v1, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->trackEnabledStates:[Z

    aput-boolean p2, v1, p1

    .line 565
    iget-object v1, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->extractorTrackEnabledStates:[Z

    aput-boolean p2, v1, v0

    .line 566
    iget v1, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->enabledTrackCount:I

    if-eqz p2, :cond_2

    :goto_1
    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->enabledTrackCount:I

    .line 567
    return-void

    .end local v0    # "extractorTrack":I
    :cond_1
    move v1, v3

    .line 561
    goto :goto_0

    .line 566
    .restart local v0    # "extractorTrack":I
    :cond_2
    const/4 v2, -0x1

    goto :goto_1
.end method


# virtual methods
.method public continueBuffering(IJ)Z
    .locals 8
    .param p1, "track"    # I
    .param p2, "playbackPositionUs"    # J

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 254
    iget-boolean v5, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->prepared:Z

    invoke-static {v5}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 255
    iget-object v5, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->trackEnabledStates:[Z

    aget-boolean v5, v5, p1

    invoke-static {v5}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 256
    iput-wide p2, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->downstreamPositionUs:J

    .line 257
    iget-object v5, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->extractors:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 258
    invoke-direct {p0}, Lcom/google/android/exoplayer/hls/HlsSampleSource;->getCurrentExtractor()Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;

    move-result-object v5

    iget-wide v6, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->downstreamPositionUs:J

    invoke-direct {p0, v5, v6, v7}, Lcom/google/android/exoplayer/hls/HlsSampleSource;->discardSamplesForDisabledTracks(Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;J)V

    .line 260
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer/hls/HlsSampleSource;->maybeStartLoading()V

    .line 261
    iget-boolean v5, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->loadingFinished:Z

    if-eqz v5, :cond_2

    .line 277
    :cond_1
    :goto_0
    return v3

    .line 264
    :cond_2
    invoke-direct {p0}, Lcom/google/android/exoplayer/hls/HlsSampleSource;->isPendingReset()Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->extractors:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_3
    move v3, v4

    .line 265
    goto :goto_0

    .line 267
    :cond_4
    const/4 v1, 0x0

    .local v1, "extractorIndex":I
    :goto_1
    iget-object v5, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->extractors:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    if-ge v1, v5, :cond_5

    .line 268
    iget-object v5, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->extractors:Ljava/util/LinkedList;

    invoke-virtual {v5, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;

    .line 269
    .local v0, "extractor":Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;
    invoke-virtual {v0}, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->isPrepared()Z

    move-result v5

    if-nez v5, :cond_6

    .end local v0    # "extractor":Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;
    :cond_5
    move v3, v4

    .line 277
    goto :goto_0

    .line 272
    .restart local v0    # "extractor":Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;
    :cond_6
    iget-object v5, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->extractorTrackIndices:[I

    aget v2, v5, p1

    .line 273
    .local v2, "extractorTrack":I
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->hasSamples(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 267
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public disable(I)V
    .locals 3
    .param p1, "track"    # I

    .prologue
    const/4 v2, 0x0

    .line 234
    iget-boolean v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->prepared:Z

    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 235
    invoke-direct {p0, p1, v2}, Lcom/google/android/exoplayer/hls/HlsSampleSource;->setTrackEnabledState(IZ)V

    .line 236
    iget v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->enabledTrackCount:I

    if-nez v0, :cond_1

    .line 237
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->chunkSource:Lcom/google/android/exoplayer/hls/HlsChunkSource;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/hls/HlsChunkSource;->reset()V

    .line 238
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->downstreamPositionUs:J

    .line 239
    iget-boolean v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->loadControlRegistered:Z

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->loadControl:Lcom/google/android/exoplayer/LoadControl;

    invoke-interface {v0, p0}, Lcom/google/android/exoplayer/LoadControl;->unregister(Ljava/lang/Object;)V

    .line 241
    iput-boolean v2, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->loadControlRegistered:Z

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->loader:Lcom/google/android/exoplayer/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/upstream/Loader;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 244
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->loader:Lcom/google/android/exoplayer/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/upstream/Loader;->cancelLoading()V

    .line 250
    :cond_1
    :goto_0
    return-void

    .line 246
    :cond_2
    invoke-direct {p0}, Lcom/google/android/exoplayer/hls/HlsSampleSource;->clearState()V

    .line 247
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->loadControl:Lcom/google/android/exoplayer/LoadControl;

    invoke-interface {v0}, Lcom/google/android/exoplayer/LoadControl;->trimAllocator()V

    goto :goto_0
.end method

.method public enable(IJ)V
    .locals 6
    .param p1, "track"    # I
    .param p2, "positionUs"    # J

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 195
    iget-boolean v2, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->prepared:Z

    invoke-static {v2}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 196
    invoke-direct {p0, p1, v4}, Lcom/google/android/exoplayer/hls/HlsSampleSource;->setTrackEnabledState(IZ)V

    .line 197
    iget-object v2, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->downstreamMediaFormats:[Lcom/google/android/exoplayer/MediaFormat;

    aput-object v5, v2, p1

    .line 198
    iget-object v2, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->pendingDiscontinuities:[Z

    const/4 v3, 0x0

    aput-boolean v3, v2, p1

    .line 199
    iput-object v5, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->downstreamFormat:Lcom/google/android/exoplayer/chunk/Format;

    .line 200
    iget-boolean v1, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->loadControlRegistered:Z

    .line 201
    .local v1, "wasLoadControlRegistered":Z
    iget-boolean v2, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->loadControlRegistered:Z

    if-nez v2, :cond_0

    .line 202
    iget-object v2, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->loadControl:Lcom/google/android/exoplayer/LoadControl;

    iget v3, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->bufferSizeContribution:I

    invoke-interface {v2, p0, v3}, Lcom/google/android/exoplayer/LoadControl;->register(Ljava/lang/Object;I)V

    .line 203
    iput-boolean v4, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->loadControlRegistered:Z

    .line 206
    :cond_0
    iget-object v2, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->chunkSource:Lcom/google/android/exoplayer/hls/HlsChunkSource;

    invoke-virtual {v2}, Lcom/google/android/exoplayer/hls/HlsChunkSource;->isLive()Z

    move-result v2

    if-eqz v2, :cond_1

    const-wide/16 p2, 0x0

    .line 207
    :cond_1
    iget-object v2, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->chunkSourceTrackIndices:[I

    aget v0, v2, p1

    .line 208
    .local v0, "chunkSourceTrack":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_3

    iget-object v2, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->chunkSource:Lcom/google/android/exoplayer/hls/HlsChunkSource;

    invoke-virtual {v2}, Lcom/google/android/exoplayer/hls/HlsChunkSource;->getSelectedTrackIndex()I

    move-result v2

    if-eq v0, v2, :cond_3

    .line 213
    iget-object v2, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->chunkSource:Lcom/google/android/exoplayer/hls/HlsChunkSource;

    invoke-virtual {v2, v0}, Lcom/google/android/exoplayer/hls/HlsChunkSource;->selectTrack(I)V

    .line 214
    invoke-direct {p0, p2, p3}, Lcom/google/android/exoplayer/hls/HlsSampleSource;->seekToInternal(J)V

    .line 230
    :cond_2
    :goto_0
    return-void

    .line 217
    :cond_3
    iget v2, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->enabledTrackCount:I

    if-ne v2, v4, :cond_2

    .line 218
    iput-wide p2, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->lastSeekPositionUs:J

    .line 219
    if-eqz v1, :cond_4

    iget-wide v2, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->downstreamPositionUs:J

    cmp-long v2, v2, p2

    if-nez v2, :cond_4

    .line 224
    invoke-direct {p0}, Lcom/google/android/exoplayer/hls/HlsSampleSource;->maybeStartLoading()V

    goto :goto_0

    .line 226
    :cond_4
    iput-wide p2, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->downstreamPositionUs:J

    .line 227
    invoke-direct {p0, p2, p3}, Lcom/google/android/exoplayer/hls/HlsSampleSource;->restartFrom(J)V

    goto :goto_0
.end method

.method public getBufferedPositionUs()J
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 375
    iget-boolean v2, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->prepared:Z

    invoke-static {v2}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 376
    iget v2, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->enabledTrackCount:I

    if-lez v2, :cond_1

    move v2, v3

    :goto_0
    invoke-static {v2}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 377
    invoke-direct {p0}, Lcom/google/android/exoplayer/hls/HlsSampleSource;->isPendingReset()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 378
    iget-wide v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->pendingResetPositionUs:J

    .line 388
    :cond_0
    :goto_1
    return-wide v0

    .line 376
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 379
    :cond_2
    iget-boolean v2, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->loadingFinished:Z

    if-eqz v2, :cond_3

    .line 380
    const-wide/16 v0, -0x3

    goto :goto_1

    .line 382
    :cond_3
    iget-object v2, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->extractors:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;

    invoke-virtual {v2}, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->getLargestParsedTimestampUs()J

    move-result-wide v0

    .line 383
    .local v0, "largestParsedTimestampUs":J
    iget-object v2, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->extractors:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-le v2, v3, :cond_4

    .line 386
    iget-object v2, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->extractors:Ljava/util/LinkedList;

    iget-object v3, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->extractors:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;

    invoke-virtual {v2}, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->getLargestParsedTimestampUs()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 388
    :cond_4
    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    iget-wide v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->downstreamPositionUs:J

    goto :goto_1
.end method

.method public getFormat(I)Lcom/google/android/exoplayer/MediaFormat;
    .locals 1
    .param p1, "track"    # I

    .prologue
    .line 189
    iget-boolean v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->prepared:Z

    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 190
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->trackFormats:[Lcom/google/android/exoplayer/MediaFormat;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getTrackCount()I
    .locals 1

    .prologue
    .line 183
    iget-boolean v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->prepared:Z

    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 184
    iget v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->trackCount:I

    return v0
.end method

.method public maybeThrowError()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 348
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->currentLoadableException:Ljava/io/IOException;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->currentLoadableExceptionCount:I

    iget v1, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->minLoadableRetryCount:I

    if-le v0, v1, :cond_0

    .line 349
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->currentLoadableException:Ljava/io/IOException;

    throw v0

    .line 350
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->currentLoadable:Lcom/google/android/exoplayer/chunk/Chunk;

    if-nez v0, :cond_1

    .line 351
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->chunkSource:Lcom/google/android/exoplayer/hls/HlsChunkSource;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/hls/HlsChunkSource;->maybeThrowError()V

    .line 353
    :cond_1
    return-void
.end method

.method public onLoadCanceled(Lcom/google/android/exoplayer/upstream/Loader$Loadable;)V
    .locals 2
    .param p1, "loadable"    # Lcom/google/android/exoplayer/upstream/Loader$Loadable;

    .prologue
    .line 428
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->currentLoadable:Lcom/google/android/exoplayer/chunk/Chunk;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/chunk/Chunk;->bytesLoaded()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer/hls/HlsSampleSource;->notifyLoadCanceled(J)V

    .line 429
    iget v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->enabledTrackCount:I

    if-lez v0, :cond_0

    .line 430
    iget-wide v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->pendingResetPositionUs:J

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer/hls/HlsSampleSource;->restartFrom(J)V

    .line 435
    :goto_0
    return-void

    .line 432
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer/hls/HlsSampleSource;->clearState()V

    .line 433
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->loadControl:Lcom/google/android/exoplayer/LoadControl;

    invoke-interface {v0}, Lcom/google/android/exoplayer/LoadControl;->trimAllocator()V

    goto :goto_0
.end method

.method public onLoadCompleted(Lcom/google/android/exoplayer/upstream/Loader$Loadable;)V
    .locals 14
    .param p1, "loadable"    # Lcom/google/android/exoplayer/upstream/Loader$Loadable;

    .prologue
    const-wide/16 v6, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 409
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->currentLoadable:Lcom/google/android/exoplayer/chunk/Chunk;

    if-ne p1, v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 410
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    .line 411
    .local v10, "now":J
    iget-wide v4, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->currentLoadStartTimeMs:J

    sub-long v12, v10, v4

    .line 412
    .local v12, "loadDurationMs":J
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->chunkSource:Lcom/google/android/exoplayer/hls/HlsChunkSource;

    iget-object v3, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->currentLoadable:Lcom/google/android/exoplayer/chunk/Chunk;

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer/hls/HlsChunkSource;->onChunkLoadCompleted(Lcom/google/android/exoplayer/chunk/Chunk;)V

    .line 413
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->currentLoadable:Lcom/google/android/exoplayer/chunk/Chunk;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/hls/HlsSampleSource;->isTsChunk(Lcom/google/android/exoplayer/chunk/Chunk;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 414
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->currentLoadable:Lcom/google/android/exoplayer/chunk/Chunk;

    iget-object v3, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->currentTsLoadable:Lcom/google/android/exoplayer/hls/TsChunk;

    if-ne v0, v3, :cond_1

    :goto_1
    invoke-static {v1}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 415
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->currentTsLoadable:Lcom/google/android/exoplayer/hls/TsChunk;

    iput-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->previousTsLoadable:Lcom/google/android/exoplayer/hls/TsChunk;

    .line 416
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->currentLoadable:Lcom/google/android/exoplayer/chunk/Chunk;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/chunk/Chunk;->bytesLoaded()J

    move-result-wide v1

    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->currentTsLoadable:Lcom/google/android/exoplayer/hls/TsChunk;

    iget v3, v0, Lcom/google/android/exoplayer/hls/TsChunk;->type:I

    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->currentTsLoadable:Lcom/google/android/exoplayer/hls/TsChunk;

    iget v4, v0, Lcom/google/android/exoplayer/hls/TsChunk;->trigger:I

    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->currentTsLoadable:Lcom/google/android/exoplayer/hls/TsChunk;

    iget-object v5, v0, Lcom/google/android/exoplayer/hls/TsChunk;->format:Lcom/google/android/exoplayer/chunk/Format;

    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->currentTsLoadable:Lcom/google/android/exoplayer/hls/TsChunk;

    iget-wide v6, v0, Lcom/google/android/exoplayer/hls/TsChunk;->startTimeUs:J

    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->currentTsLoadable:Lcom/google/android/exoplayer/hls/TsChunk;

    iget-wide v8, v0, Lcom/google/android/exoplayer/hls/TsChunk;->endTimeUs:J

    move-object v0, p0

    invoke-direct/range {v0 .. v13}, Lcom/google/android/exoplayer/hls/HlsSampleSource;->notifyLoadCompleted(JIILcom/google/android/exoplayer/chunk/Format;JJJJ)V

    .line 422
    :goto_2
    invoke-direct {p0}, Lcom/google/android/exoplayer/hls/HlsSampleSource;->clearCurrentLoadable()V

    .line 423
    invoke-direct {p0}, Lcom/google/android/exoplayer/hls/HlsSampleSource;->maybeStartLoading()V

    .line 424
    return-void

    .end local v10    # "now":J
    .end local v12    # "loadDurationMs":J
    :cond_0
    move v0, v2

    .line 409
    goto :goto_0

    .restart local v10    # "now":J
    .restart local v12    # "loadDurationMs":J
    :cond_1
    move v1, v2

    .line 414
    goto :goto_1

    .line 419
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->currentLoadable:Lcom/google/android/exoplayer/chunk/Chunk;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/chunk/Chunk;->bytesLoaded()J

    move-result-wide v1

    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->currentLoadable:Lcom/google/android/exoplayer/chunk/Chunk;

    iget v3, v0, Lcom/google/android/exoplayer/chunk/Chunk;->type:I

    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->currentLoadable:Lcom/google/android/exoplayer/chunk/Chunk;

    iget v4, v0, Lcom/google/android/exoplayer/chunk/Chunk;->trigger:I

    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->currentLoadable:Lcom/google/android/exoplayer/chunk/Chunk;

    iget-object v5, v0, Lcom/google/android/exoplayer/chunk/Chunk;->format:Lcom/google/android/exoplayer/chunk/Format;

    move-object v0, p0

    move-wide v8, v6

    invoke-direct/range {v0 .. v13}, Lcom/google/android/exoplayer/hls/HlsSampleSource;->notifyLoadCompleted(JIILcom/google/android/exoplayer/chunk/Format;JJJJ)V

    goto :goto_2
.end method

.method public onLoadError(Lcom/google/android/exoplayer/upstream/Loader$Loadable;Ljava/io/IOException;)V
    .locals 2
    .param p1, "loadable"    # Lcom/google/android/exoplayer/upstream/Loader$Loadable;
    .param p2, "e"    # Ljava/io/IOException;

    .prologue
    .line 439
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->chunkSource:Lcom/google/android/exoplayer/hls/HlsChunkSource;

    iget-object v1, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->currentLoadable:Lcom/google/android/exoplayer/chunk/Chunk;

    invoke-virtual {v0, v1, p2}, Lcom/google/android/exoplayer/hls/HlsChunkSource;->onChunkLoadError(Lcom/google/android/exoplayer/chunk/Chunk;Ljava/io/IOException;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 441
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->previousTsLoadable:Lcom/google/android/exoplayer/hls/TsChunk;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/exoplayer/hls/HlsSampleSource;->isPendingReset()Z

    move-result v0

    if-nez v0, :cond_0

    .line 442
    iget-wide v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->lastSeekPositionUs:J

    iput-wide v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->pendingResetPositionUs:J

    .line 444
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer/hls/HlsSampleSource;->clearCurrentLoadable()V

    .line 450
    :goto_0
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer/hls/HlsSampleSource;->notifyLoadError(Ljava/io/IOException;)V

    .line 451
    invoke-direct {p0}, Lcom/google/android/exoplayer/hls/HlsSampleSource;->maybeStartLoading()V

    .line 452
    return-void

    .line 446
    :cond_1
    iput-object p2, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->currentLoadableException:Ljava/io/IOException;

    .line 447
    iget v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->currentLoadableExceptionCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->currentLoadableExceptionCount:I

    .line 448
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->currentLoadableExceptionTimestamp:J

    goto :goto_0
.end method

.method public prepare(J)Z
    .locals 5
    .param p1, "positionUs"    # J

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 143
    iget-boolean v1, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->prepared:Z

    if-eqz v1, :cond_0

    move v1, v2

    .line 178
    :goto_0
    return v1

    .line 145
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->chunkSource:Lcom/google/android/exoplayer/hls/HlsChunkSource;

    invoke-virtual {v1}, Lcom/google/android/exoplayer/hls/HlsChunkSource;->prepare()Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v3

    .line 146
    goto :goto_0

    .line 148
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->extractors:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 151
    :goto_1
    iget-object v1, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->extractors:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;

    .line 152
    .local v0, "extractor":Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;
    invoke-virtual {v0}, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->isPrepared()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 153
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/hls/HlsSampleSource;->buildTracks(Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;)V

    .line 154
    iput-boolean v2, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->prepared:Z

    .line 155
    invoke-direct {p0}, Lcom/google/android/exoplayer/hls/HlsSampleSource;->maybeStartLoading()V

    move v1, v2

    .line 156
    goto :goto_0

    .line 157
    :cond_2
    iget-object v1, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->extractors:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-le v1, v2, :cond_3

    .line 158
    iget-object v1, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->extractors:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;

    invoke-virtual {v1}, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->clear()V

    goto :goto_1

    .line 165
    .end local v0    # "extractor":Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;
    :cond_3
    iget-object v1, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->loader:Lcom/google/android/exoplayer/upstream/Loader;

    if-nez v1, :cond_4

    .line 166
    new-instance v1, Lcom/google/android/exoplayer/upstream/Loader;

    const-string v4, "Loader:HLS"

    invoke-direct {v1, v4}, Lcom/google/android/exoplayer/upstream/Loader;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->loader:Lcom/google/android/exoplayer/upstream/Loader;

    .line 167
    iget-object v1, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->loadControl:Lcom/google/android/exoplayer/LoadControl;

    iget v4, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->bufferSizeContribution:I

    invoke-interface {v1, p0, v4}, Lcom/google/android/exoplayer/LoadControl;->register(Ljava/lang/Object;I)V

    .line 168
    iput-boolean v2, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->loadControlRegistered:Z

    .line 170
    :cond_4
    iget-object v1, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->loader:Lcom/google/android/exoplayer/upstream/Loader;

    invoke-virtual {v1}, Lcom/google/android/exoplayer/upstream/Loader;->isLoading()Z

    move-result v1

    if-nez v1, :cond_5

    .line 174
    iput-wide p1, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->pendingResetPositionUs:J

    .line 175
    iput-wide p1, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->downstreamPositionUs:J

    .line 177
    :cond_5
    invoke-direct {p0}, Lcom/google/android/exoplayer/hls/HlsSampleSource;->maybeStartLoading()V

    move v1, v3

    .line 178
    goto :goto_0
.end method

.method public readData(IJLcom/google/android/exoplayer/MediaFormatHolder;Lcom/google/android/exoplayer/SampleHolder;)I
    .locals 10
    .param p1, "track"    # I
    .param p2, "playbackPositionUs"    # J
    .param p4, "formatHolder"    # Lcom/google/android/exoplayer/MediaFormatHolder;
    .param p5, "sampleHolder"    # Lcom/google/android/exoplayer/SampleHolder;

    .prologue
    .line 291
    iget-boolean v5, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->prepared:Z

    invoke-static {v5}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 292
    iput-wide p2, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->downstreamPositionUs:J

    .line 294
    iget-object v5, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->pendingDiscontinuities:[Z

    aget-boolean v5, v5, p1

    if-nez v5, :cond_0

    invoke-direct {p0}, Lcom/google/android/exoplayer/hls/HlsSampleSource;->isPendingReset()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 295
    :cond_0
    const/4 v5, -0x2

    .line 343
    :goto_0
    return v5

    .line 298
    :cond_1
    invoke-direct {p0}, Lcom/google/android/exoplayer/hls/HlsSampleSource;->getCurrentExtractor()Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;

    move-result-object v1

    .line 299
    .local v1, "extractor":Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;
    invoke-virtual {v1}, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->isPrepared()Z

    move-result v5

    if-nez v5, :cond_2

    .line 300
    const/4 v5, -0x2

    goto :goto_0

    .line 303
    :cond_2
    iget-object v5, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->downstreamFormat:Lcom/google/android/exoplayer/chunk/Format;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->downstreamFormat:Lcom/google/android/exoplayer/chunk/Format;

    iget-object v6, v1, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->format:Lcom/google/android/exoplayer/chunk/Format;

    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer/chunk/Format;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 305
    :cond_3
    iget-object v5, v1, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->format:Lcom/google/android/exoplayer/chunk/Format;

    iget v6, v1, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->trigger:I

    iget-wide v8, v1, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->startTimeUs:J

    invoke-direct {p0, v5, v6, v8, v9}, Lcom/google/android/exoplayer/hls/HlsSampleSource;->notifyDownstreamFormatChanged(Lcom/google/android/exoplayer/chunk/Format;IJ)V

    .line 306
    iget-object v5, v1, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->format:Lcom/google/android/exoplayer/chunk/Format;

    iput-object v5, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->downstreamFormat:Lcom/google/android/exoplayer/chunk/Format;

    .line 309
    :cond_4
    iget-object v5, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->extractors:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_5

    .line 312
    iget-object v5, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->extractors:Ljava/util/LinkedList;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;

    invoke-virtual {v1, v5}, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->configureSpliceTo(Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;)V

    .line 315
    :cond_5
    iget-object v5, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->extractorTrackIndices:[I

    aget v3, v5, p1

    .line 316
    .local v3, "extractorTrack":I
    const/4 v2, 0x0

    .line 317
    .local v2, "extractorIndex":I
    :cond_6
    iget-object v5, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->extractors:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    add-int/lit8 v6, v2, 0x1

    if-le v5, v6, :cond_7

    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->hasSamples(I)Z

    move-result v5

    if-nez v5, :cond_7

    .line 320
    iget-object v5, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->extractors:Ljava/util/LinkedList;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v5, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "extractor":Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;
    check-cast v1, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;

    .line 321
    .restart local v1    # "extractor":Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;
    invoke-virtual {v1}, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->isPrepared()Z

    move-result v5

    if-nez v5, :cond_6

    .line 322
    const/4 v5, -0x2

    goto :goto_0

    .line 326
    :cond_7
    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->getMediaFormat(I)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v4

    .line 327
    .local v4, "mediaFormat":Lcom/google/android/exoplayer/MediaFormat;
    if-eqz v4, :cond_8

    iget-object v5, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->downstreamMediaFormats:[Lcom/google/android/exoplayer/MediaFormat;

    aget-object v5, v5, p1

    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer/MediaFormat;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 328
    iput-object v4, p4, Lcom/google/android/exoplayer/MediaFormatHolder;->format:Lcom/google/android/exoplayer/MediaFormat;

    .line 329
    iget-object v5, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->downstreamMediaFormats:[Lcom/google/android/exoplayer/MediaFormat;

    aput-object v4, v5, p1

    .line 330
    const/4 v5, -0x4

    goto :goto_0

    .line 333
    :cond_8
    invoke-virtual {v1, v3, p5}, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->getSample(ILcom/google/android/exoplayer/SampleHolder;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 334
    iget-wide v6, p5, Lcom/google/android/exoplayer/SampleHolder;->timeUs:J

    iget-wide v8, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->lastSeekPositionUs:J

    cmp-long v5, v6, v8

    if-gez v5, :cond_9

    const/4 v0, 0x1

    .line 335
    .local v0, "decodeOnly":Z
    :goto_1
    iget v6, p5, Lcom/google/android/exoplayer/SampleHolder;->flags:I

    if-eqz v0, :cond_a

    const/high16 v5, 0x8000000

    :goto_2
    or-int/2addr v5, v6

    iput v5, p5, Lcom/google/android/exoplayer/SampleHolder;->flags:I

    .line 336
    const/4 v5, -0x3

    goto/16 :goto_0

    .line 334
    .end local v0    # "decodeOnly":Z
    :cond_9
    const/4 v0, 0x0

    goto :goto_1

    .line 335
    .restart local v0    # "decodeOnly":Z
    :cond_a
    const/4 v5, 0x0

    goto :goto_2

    .line 339
    .end local v0    # "decodeOnly":Z
    :cond_b
    iget-boolean v5, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->loadingFinished:Z

    if-eqz v5, :cond_c

    .line 340
    const/4 v5, -0x1

    goto/16 :goto_0

    .line 343
    :cond_c
    const/4 v5, -0x2

    goto/16 :goto_0
.end method

.method public readDiscontinuity(I)J
    .locals 2
    .param p1, "track"    # I

    .prologue
    .line 282
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->pendingDiscontinuities:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->pendingDiscontinuities:[Z

    const/4 v1, 0x0

    aput-boolean v1, v0, p1

    .line 284
    iget-wide v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->lastSeekPositionUs:J

    .line 286
    :goto_0
    return-wide v0

    :cond_0
    const-wide/high16 v0, -0x8000000000000000L

    goto :goto_0
.end method

.method public register()Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;
    .locals 1

    .prologue
    .line 137
    iget v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->remainingReleaseCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->remainingReleaseCount:I

    .line 138
    return-object p0
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 394
    iget v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->remainingReleaseCount:I

    if-lez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 395
    iget v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->remainingReleaseCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->remainingReleaseCount:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->loader:Lcom/google/android/exoplayer/upstream/Loader;

    if-eqz v0, :cond_1

    .line 396
    iget-boolean v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->loadControlRegistered:Z

    if-eqz v0, :cond_0

    .line 397
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->loadControl:Lcom/google/android/exoplayer/LoadControl;

    invoke-interface {v0, p0}, Lcom/google/android/exoplayer/LoadControl;->unregister(Ljava/lang/Object;)V

    .line 398
    iput-boolean v1, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->loadControlRegistered:Z

    .line 400
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->loader:Lcom/google/android/exoplayer/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/upstream/Loader;->release()V

    .line 401
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->loader:Lcom/google/android/exoplayer/upstream/Loader;

    .line 403
    :cond_1
    return-void

    :cond_2
    move v0, v1

    .line 394
    goto :goto_0
.end method

.method public seekToUs(J)V
    .locals 3
    .param p1, "positionUs"    # J

    .prologue
    .line 357
    iget-boolean v2, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->prepared:Z

    invoke-static {v2}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 358
    iget v2, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->enabledTrackCount:I

    if-lez v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 360
    iget-object v2, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->chunkSource:Lcom/google/android/exoplayer/hls/HlsChunkSource;

    invoke-virtual {v2}, Lcom/google/android/exoplayer/hls/HlsChunkSource;->isLive()Z

    move-result v2

    if-eqz v2, :cond_0

    const-wide/16 p1, 0x0

    .line 363
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer/hls/HlsSampleSource;->isPendingReset()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-wide v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->pendingResetPositionUs:J

    .line 364
    .local v0, "currentPositionUs":J
    :goto_1
    iput-wide p1, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->downstreamPositionUs:J

    .line 365
    iput-wide p1, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->lastSeekPositionUs:J

    .line 366
    cmp-long v2, v0, p1

    if-nez v2, :cond_3

    .line 371
    :goto_2
    return-void

    .line 358
    .end local v0    # "currentPositionUs":J
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 363
    :cond_2
    iget-wide v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->downstreamPositionUs:J

    goto :goto_1

    .line 370
    .restart local v0    # "currentPositionUs":J
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer/hls/HlsSampleSource;->seekToInternal(J)V

    goto :goto_2
.end method

.method usToMs(J)J
    .locals 3
    .param p1, "timeUs"    # J

    .prologue
    .line 734
    const-wide/16 v0, 0x3e8

    div-long v0, p1, v0

    return-wide v0
.end method
