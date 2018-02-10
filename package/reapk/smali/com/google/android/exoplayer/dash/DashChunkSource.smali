.class public Lcom/google/android/exoplayer/dash/DashChunkSource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer/chunk/ChunkSource;
.implements Lcom/google/android/exoplayer/dash/DashTrackSelector$Output;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer/dash/DashChunkSource$PeriodHolder;,
        Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;,
        Lcom/google/android/exoplayer/dash/DashChunkSource$ExposedTrack;,
        Lcom/google/android/exoplayer/dash/DashChunkSource$NoAdaptationSetException;,
        Lcom/google/android/exoplayer/dash/DashChunkSource$EventListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DashChunkSource"


# instance fields
.field private final adaptiveFormatEvaluator:Lcom/google/android/exoplayer/chunk/FormatEvaluator;

.field private availableRange:Lcom/google/android/exoplayer/TimeRange;

.field private final availableRangeValues:[J

.field private currentManifest:Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

.field private final dataSource:Lcom/google/android/exoplayer/upstream/DataSource;

.field private final elapsedRealtimeOffsetUs:J

.field private enabledTrack:Lcom/google/android/exoplayer/dash/DashChunkSource$ExposedTrack;

.field private final evaluation:Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;

.field private final eventHandler:Landroid/os/Handler;

.field private final eventListener:Lcom/google/android/exoplayer/dash/DashChunkSource$EventListener;

.field private final eventSourceId:I

.field private fatalError:Ljava/io/IOException;

.field private lastChunkWasInitialization:Z

.field private final live:Z

.field private final liveEdgeLatencyUs:J

.field private final manifestFetcher:Lcom/google/android/exoplayer/util/ManifestFetcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer/util/ManifestFetcher",
            "<",
            "Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;",
            ">;"
        }
    .end annotation
.end field

.field private nextPeriodHolderIndex:I

.field private final periodHolders:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/exoplayer/dash/DashChunkSource$PeriodHolder;",
            ">;"
        }
    .end annotation
.end field

.field private prepareCalled:Z

.field private processedManifest:Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

.field private startAtLiveEdge:Z

.field private final systemClock:Lcom/google/android/exoplayer/util/Clock;

.field private final trackSelector:Lcom/google/android/exoplayer/dash/DashTrackSelector;

.field private final tracks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/exoplayer/dash/DashChunkSource$ExposedTrack;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer/dash/DashTrackSelector;Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/chunk/FormatEvaluator;JILjava/util/List;)V
    .locals 2
    .param p1, "trackSelector"    # Lcom/google/android/exoplayer/dash/DashTrackSelector;
    .param p2, "dataSource"    # Lcom/google/android/exoplayer/upstream/DataSource;
    .param p3, "adaptiveFormatEvaluator"    # Lcom/google/android/exoplayer/chunk/FormatEvaluator;
    .param p4, "durationMs"    # J
    .param p6, "adaptationSetType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer/dash/DashTrackSelector;",
            "Lcom/google/android/exoplayer/upstream/DataSource;",
            "Lcom/google/android/exoplayer/chunk/FormatEvaluator;",
            "JI",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer/dash/mpd/Representation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 145
    .local p7, "representations":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer/dash/mpd/Representation;>;"
    invoke-static {p4, p5, p6, p7}, Lcom/google/android/exoplayer/dash/DashChunkSource;->buildManifest(JILjava/util/List;)Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/android/exoplayer/dash/DashChunkSource;-><init>(Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;Lcom/google/android/exoplayer/dash/DashTrackSelector;Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/chunk/FormatEvaluator;)V

    .line 146
    return-void
.end method

.method public varargs constructor <init>(Lcom/google/android/exoplayer/dash/DashTrackSelector;Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/chunk/FormatEvaluator;JI[Lcom/google/android/exoplayer/dash/mpd/Representation;)V
    .locals 8
    .param p1, "trackSelector"    # Lcom/google/android/exoplayer/dash/DashTrackSelector;
    .param p2, "dataSource"    # Lcom/google/android/exoplayer/upstream/DataSource;
    .param p3, "adaptiveFormatEvaluator"    # Lcom/google/android/exoplayer/chunk/FormatEvaluator;
    .param p4, "durationMs"    # J
    .param p6, "adaptationSetType"    # I
    .param p7, "representations"    # [Lcom/google/android/exoplayer/dash/mpd/Representation;

    .prologue
    .line 124
    invoke-static {p7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer/dash/DashChunkSource;-><init>(Lcom/google/android/exoplayer/dash/DashTrackSelector;Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/chunk/FormatEvaluator;JILjava/util/List;)V

    .line 125
    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;Lcom/google/android/exoplayer/dash/DashTrackSelector;Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/chunk/FormatEvaluator;)V
    .locals 16
    .param p1, "manifest"    # Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;
    .param p2, "trackSelector"    # Lcom/google/android/exoplayer/dash/DashTrackSelector;
    .param p3, "dataSource"    # Lcom/google/android/exoplayer/upstream/DataSource;
    .param p4, "adaptiveFormatEvaluator"    # Lcom/google/android/exoplayer/chunk/FormatEvaluator;

    .prologue
    .line 161
    const/4 v2, 0x0

    new-instance v7, Lcom/google/android/exoplayer/util/SystemClock;

    invoke-direct {v7}, Lcom/google/android/exoplayer/util/SystemClock;-><init>()V

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    invoke-direct/range {v1 .. v15}, Lcom/google/android/exoplayer/dash/DashChunkSource;-><init>(Lcom/google/android/exoplayer/util/ManifestFetcher;Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;Lcom/google/android/exoplayer/dash/DashTrackSelector;Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/chunk/FormatEvaluator;Lcom/google/android/exoplayer/util/Clock;JJZLandroid/os/Handler;Lcom/google/android/exoplayer/dash/DashChunkSource$EventListener;I)V

    .line 162
    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer/util/ManifestFetcher;Lcom/google/android/exoplayer/dash/DashTrackSelector;Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/chunk/FormatEvaluator;JJLandroid/os/Handler;Lcom/google/android/exoplayer/dash/DashChunkSource$EventListener;I)V
    .locals 17
    .param p2, "trackSelector"    # Lcom/google/android/exoplayer/dash/DashTrackSelector;
    .param p3, "dataSource"    # Lcom/google/android/exoplayer/upstream/DataSource;
    .param p4, "adaptiveFormatEvaluator"    # Lcom/google/android/exoplayer/chunk/FormatEvaluator;
    .param p5, "liveEdgeLatencyMs"    # J
    .param p7, "elapsedRealtimeOffsetMs"    # J
    .param p9, "eventHandler"    # Landroid/os/Handler;
    .param p10, "eventListener"    # Lcom/google/android/exoplayer/dash/DashChunkSource$EventListener;
    .param p11, "eventSourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer/util/ManifestFetcher",
            "<",
            "Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;",
            ">;",
            "Lcom/google/android/exoplayer/dash/DashTrackSelector;",
            "Lcom/google/android/exoplayer/upstream/DataSource;",
            "Lcom/google/android/exoplayer/chunk/FormatEvaluator;",
            "JJ",
            "Landroid/os/Handler;",
            "Lcom/google/android/exoplayer/dash/DashChunkSource$EventListener;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 199
    .local p1, "manifestFetcher":Lcom/google/android/exoplayer/util/ManifestFetcher;, "Lcom/google/android/exoplayer/util/ManifestFetcher<Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer/util/ManifestFetcher;->getManifest()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

    new-instance v7, Lcom/google/android/exoplayer/util/SystemClock;

    invoke-direct {v7}, Lcom/google/android/exoplayer/util/SystemClock;-><init>()V

    const-wide/16 v0, 0x3e8

    mul-long v8, p5, v0

    const-wide/16 v0, 0x3e8

    mul-long v10, p7, v0

    const/4 v12, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v13, p9

    move-object/from16 v14, p10

    move/from16 v15, p11

    invoke-direct/range {v1 .. v15}, Lcom/google/android/exoplayer/dash/DashChunkSource;-><init>(Lcom/google/android/exoplayer/util/ManifestFetcher;Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;Lcom/google/android/exoplayer/dash/DashTrackSelector;Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/chunk/FormatEvaluator;Lcom/google/android/exoplayer/util/Clock;JJZLandroid/os/Handler;Lcom/google/android/exoplayer/dash/DashChunkSource$EventListener;I)V

    .line 201
    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer/util/ManifestFetcher;Lcom/google/android/exoplayer/dash/DashTrackSelector;Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/chunk/FormatEvaluator;JJZLandroid/os/Handler;Lcom/google/android/exoplayer/dash/DashChunkSource$EventListener;I)V
    .locals 17
    .param p2, "trackSelector"    # Lcom/google/android/exoplayer/dash/DashTrackSelector;
    .param p3, "dataSource"    # Lcom/google/android/exoplayer/upstream/DataSource;
    .param p4, "adaptiveFormatEvaluator"    # Lcom/google/android/exoplayer/chunk/FormatEvaluator;
    .param p5, "liveEdgeLatencyMs"    # J
    .param p7, "elapsedRealtimeOffsetMs"    # J
    .param p9, "startAtLiveEdge"    # Z
    .param p10, "eventHandler"    # Landroid/os/Handler;
    .param p11, "eventListener"    # Lcom/google/android/exoplayer/dash/DashChunkSource$EventListener;
    .param p12, "eventSourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer/util/ManifestFetcher",
            "<",
            "Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;",
            ">;",
            "Lcom/google/android/exoplayer/dash/DashTrackSelector;",
            "Lcom/google/android/exoplayer/upstream/DataSource;",
            "Lcom/google/android/exoplayer/chunk/FormatEvaluator;",
            "JJZ",
            "Landroid/os/Handler;",
            "Lcom/google/android/exoplayer/dash/DashChunkSource$EventListener;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 238
    .local p1, "manifestFetcher":Lcom/google/android/exoplayer/util/ManifestFetcher;, "Lcom/google/android/exoplayer/util/ManifestFetcher<Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer/util/ManifestFetcher;->getManifest()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

    new-instance v7, Lcom/google/android/exoplayer/util/SystemClock;

    invoke-direct {v7}, Lcom/google/android/exoplayer/util/SystemClock;-><init>()V

    const-wide/16 v0, 0x3e8

    mul-long v8, p5, v0

    const-wide/16 v0, 0x3e8

    mul-long v10, p7, v0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v12, p9

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    move/from16 v15, p12

    invoke-direct/range {v1 .. v15}, Lcom/google/android/exoplayer/dash/DashChunkSource;-><init>(Lcom/google/android/exoplayer/util/ManifestFetcher;Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;Lcom/google/android/exoplayer/dash/DashTrackSelector;Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/chunk/FormatEvaluator;Lcom/google/android/exoplayer/util/Clock;JJZLandroid/os/Handler;Lcom/google/android/exoplayer/dash/DashChunkSource$EventListener;I)V

    .line 240
    return-void
.end method

.method constructor <init>(Lcom/google/android/exoplayer/util/ManifestFetcher;Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;Lcom/google/android/exoplayer/dash/DashTrackSelector;Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/chunk/FormatEvaluator;Lcom/google/android/exoplayer/util/Clock;JJZLandroid/os/Handler;Lcom/google/android/exoplayer/dash/DashChunkSource$EventListener;I)V
    .locals 1
    .param p2, "initialManifest"    # Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;
    .param p3, "trackSelector"    # Lcom/google/android/exoplayer/dash/DashTrackSelector;
    .param p4, "dataSource"    # Lcom/google/android/exoplayer/upstream/DataSource;
    .param p5, "adaptiveFormatEvaluator"    # Lcom/google/android/exoplayer/chunk/FormatEvaluator;
    .param p6, "systemClock"    # Lcom/google/android/exoplayer/util/Clock;
    .param p7, "liveEdgeLatencyUs"    # J
    .param p9, "elapsedRealtimeOffsetUs"    # J
    .param p11, "startAtLiveEdge"    # Z
    .param p12, "eventHandler"    # Landroid/os/Handler;
    .param p13, "eventListener"    # Lcom/google/android/exoplayer/dash/DashChunkSource$EventListener;
    .param p14, "eventSourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer/util/ManifestFetcher",
            "<",
            "Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;",
            ">;",
            "Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;",
            "Lcom/google/android/exoplayer/dash/DashTrackSelector;",
            "Lcom/google/android/exoplayer/upstream/DataSource;",
            "Lcom/google/android/exoplayer/chunk/FormatEvaluator;",
            "Lcom/google/android/exoplayer/util/Clock;",
            "JJZ",
            "Landroid/os/Handler;",
            "Lcom/google/android/exoplayer/dash/DashChunkSource$EventListener;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 245
    .local p1, "manifestFetcher":Lcom/google/android/exoplayer/util/ManifestFetcher;, "Lcom/google/android/exoplayer/util/ManifestFetcher<Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 246
    iput-object p1, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->manifestFetcher:Lcom/google/android/exoplayer/util/ManifestFetcher;

    .line 247
    iput-object p2, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->currentManifest:Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

    .line 248
    iput-object p3, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->trackSelector:Lcom/google/android/exoplayer/dash/DashTrackSelector;

    .line 249
    iput-object p4, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->dataSource:Lcom/google/android/exoplayer/upstream/DataSource;

    .line 250
    iput-object p5, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->adaptiveFormatEvaluator:Lcom/google/android/exoplayer/chunk/FormatEvaluator;

    .line 251
    iput-object p6, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->systemClock:Lcom/google/android/exoplayer/util/Clock;

    .line 252
    iput-wide p7, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->liveEdgeLatencyUs:J

    .line 253
    iput-wide p9, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->elapsedRealtimeOffsetUs:J

    .line 254
    iput-boolean p11, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->startAtLiveEdge:Z

    .line 255
    iput-object p12, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->eventHandler:Landroid/os/Handler;

    .line 256
    iput-object p13, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->eventListener:Lcom/google/android/exoplayer/dash/DashChunkSource$EventListener;

    .line 257
    iput p14, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->eventSourceId:I

    .line 258
    new-instance v0, Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;

    invoke-direct {v0}, Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->evaluation:Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;

    .line 259
    const/4 v0, 0x2

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->availableRangeValues:[J

    .line 260
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->periodHolders:Landroid/util/SparseArray;

    .line 261
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->tracks:Ljava/util/ArrayList;

    .line 262
    iget-boolean v0, p2, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;->dynamic:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->live:Z

    .line 263
    return-void
.end method

.method static synthetic access$300(Lcom/google/android/exoplayer/dash/DashChunkSource;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/android/exoplayer/dash/DashChunkSource;

    .prologue
    .line 78
    iget v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->eventSourceId:I

    return v0
.end method

.method static synthetic access$400(Lcom/google/android/exoplayer/dash/DashChunkSource;)Lcom/google/android/exoplayer/dash/DashChunkSource$EventListener;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/exoplayer/dash/DashChunkSource;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->eventListener:Lcom/google/android/exoplayer/dash/DashChunkSource$EventListener;

    return-object v0
.end method

.method private static buildManifest(JILjava/util/List;)Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;
    .locals 20
    .param p0, "durationMs"    # J
    .param p2, "adaptationSetType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer/dash/mpd/Representation;",
            ">;)",
            "Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;"
        }
    .end annotation

    .prologue
    .line 266
    .local p3, "representations":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer/dash/mpd/Representation;>;"
    new-instance v2, Lcom/google/android/exoplayer/dash/mpd/AdaptationSet;

    const/4 v3, 0x0

    move/from16 v0, p2

    move-object/from16 v1, p3

    invoke-direct {v2, v3, v0, v1}, Lcom/google/android/exoplayer/dash/mpd/AdaptationSet;-><init>(IILjava/util/List;)V

    .line 267
    .local v2, "adaptationSet":Lcom/google/android/exoplayer/dash/mpd/AdaptationSet;
    new-instance v18, Lcom/google/android/exoplayer/dash/mpd/Period;

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-direct {v0, v3, v4, v5, v6}, Lcom/google/android/exoplayer/dash/mpd/Period;-><init>(Ljava/lang/String;JLjava/util/List;)V

    .line 268
    .local v18, "period":Lcom/google/android/exoplayer/dash/mpd/Period;
    new-instance v3, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

    const-wide/16 v4, -0x1

    const-wide/16 v8, -0x1

    const/4 v10, 0x0

    const-wide/16 v11, -0x1

    const-wide/16 v13, -0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v18 .. v18}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v17

    move-wide/from16 v6, p0

    invoke-direct/range {v3 .. v17}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;-><init>(JJJZJJLcom/google/android/exoplayer/dash/mpd/UtcTimingElement;Ljava/lang/String;Ljava/util/List;)V

    return-object v3
.end method

.method private findPeriodHolder(J)Lcom/google/android/exoplayer/dash/DashChunkSource$PeriodHolder;
    .locals 5
    .param p1, "positionUs"    # J

    .prologue
    const/4 v4, 0x0

    .line 688
    iget-object v2, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->periodHolders:Landroid/util/SparseArray;

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer/dash/DashChunkSource$PeriodHolder;

    invoke-virtual {v2}, Lcom/google/android/exoplayer/dash/DashChunkSource$PeriodHolder;->getAvailableStartTimeUs()J

    move-result-wide v2

    cmp-long v2, p1, v2

    if-gez v2, :cond_0

    .line 689
    iget-object v2, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->periodHolders:Landroid/util/SparseArray;

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer/dash/DashChunkSource$PeriodHolder;

    .line 700
    :goto_0
    return-object v2

    .line 692
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->periodHolders:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_2

    .line 693
    iget-object v2, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->periodHolders:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer/dash/DashChunkSource$PeriodHolder;

    .line 694
    .local v1, "periodHolder":Lcom/google/android/exoplayer/dash/DashChunkSource$PeriodHolder;
    invoke-virtual {v1}, Lcom/google/android/exoplayer/dash/DashChunkSource$PeriodHolder;->getAvailableEndTimeUs()J

    move-result-wide v2

    cmp-long v2, p1, v2

    if-gez v2, :cond_1

    move-object v2, v1

    .line 695
    goto :goto_0

    .line 692
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 700
    .end local v1    # "periodHolder":Lcom/google/android/exoplayer/dash/DashChunkSource$PeriodHolder;
    :cond_2
    iget-object v2, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->periodHolders:Landroid/util/SparseArray;

    iget-object v3, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->periodHolders:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer/dash/DashChunkSource$PeriodHolder;

    goto :goto_0
.end method

.method private getAvailableRange(J)Lcom/google/android/exoplayer/TimeRange;
    .locals 21
    .param p1, "nowUnixTimeUs"    # J

    .prologue
    .line 753
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer/dash/DashChunkSource;->periodHolders:Landroid/util/SparseArray;

    const/4 v12, 0x0

    invoke-virtual {v3, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer/dash/DashChunkSource$PeriodHolder;

    .line 754
    .local v2, "firstPeriod":Lcom/google/android/exoplayer/dash/DashChunkSource$PeriodHolder;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer/dash/DashChunkSource;->periodHolders:Landroid/util/SparseArray;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/exoplayer/dash/DashChunkSource;->periodHolders:Landroid/util/SparseArray;

    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v3, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/exoplayer/dash/DashChunkSource$PeriodHolder;

    .line 756
    .local v13, "lastPeriod":Lcom/google/android/exoplayer/dash/DashChunkSource$PeriodHolder;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer/dash/DashChunkSource;->currentManifest:Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

    iget-boolean v3, v3, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;->dynamic:Z

    if-eqz v3, :cond_0

    invoke-virtual {v13}, Lcom/google/android/exoplayer/dash/DashChunkSource$PeriodHolder;->isIndexExplicit()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 757
    :cond_0
    new-instance v3, Lcom/google/android/exoplayer/TimeRange$StaticTimeRange;

    invoke-virtual {v2}, Lcom/google/android/exoplayer/dash/DashChunkSource$PeriodHolder;->getAvailableStartTimeUs()J

    move-result-wide v14

    invoke-virtual {v13}, Lcom/google/android/exoplayer/dash/DashChunkSource$PeriodHolder;->getAvailableEndTimeUs()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-direct {v3, v14, v15, v0, v1}, Lcom/google/android/exoplayer/TimeRange$StaticTimeRange;-><init>(JJ)V

    .line 764
    :goto_0
    return-object v3

    .line 760
    :cond_1
    invoke-virtual {v2}, Lcom/google/android/exoplayer/dash/DashChunkSource$PeriodHolder;->getAvailableStartTimeUs()J

    move-result-wide v4

    .line 761
    .local v4, "minStartPositionUs":J
    invoke-virtual {v13}, Lcom/google/android/exoplayer/dash/DashChunkSource$PeriodHolder;->isIndexUnbounded()Z

    move-result v3

    if-eqz v3, :cond_2

    const-wide v6, 0x7fffffffffffffffL

    .line 762
    .local v6, "maxEndPositionUs":J
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer/dash/DashChunkSource;->systemClock:Lcom/google/android/exoplayer/util/Clock;

    invoke-interface {v3}, Lcom/google/android/exoplayer/util/Clock;->elapsedRealtime()J

    move-result-wide v14

    const-wide/16 v16, 0x3e8

    mul-long v14, v14, v16

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer/dash/DashChunkSource;->currentManifest:Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

    iget-wide v0, v3, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;->availabilityStartTime:J

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x3e8

    mul-long v16, v16, v18

    sub-long v16, p1, v16

    sub-long v8, v14, v16

    .line 763
    .local v8, "elapsedRealtimeAtZeroUs":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer/dash/DashChunkSource;->currentManifest:Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

    iget-wide v14, v3, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;->timeShiftBufferDepth:J

    const-wide/16 v16, -0x1

    cmp-long v3, v14, v16

    if-nez v3, :cond_3

    const-wide/16 v10, -0x1

    .line 764
    .local v10, "timeShiftBufferDepthUs":J
    :goto_2
    new-instance v3, Lcom/google/android/exoplayer/TimeRange$DynamicTimeRange;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/exoplayer/dash/DashChunkSource;->systemClock:Lcom/google/android/exoplayer/util/Clock;

    invoke-direct/range {v3 .. v12}, Lcom/google/android/exoplayer/TimeRange$DynamicTimeRange;-><init>(JJJJLcom/google/android/exoplayer/util/Clock;)V

    goto :goto_0

    .line 761
    .end local v6    # "maxEndPositionUs":J
    .end local v8    # "elapsedRealtimeAtZeroUs":J
    .end local v10    # "timeShiftBufferDepthUs":J
    :cond_2
    invoke-virtual {v13}, Lcom/google/android/exoplayer/dash/DashChunkSource$PeriodHolder;->getAvailableEndTimeUs()J

    move-result-wide v6

    goto :goto_1

    .line 763
    .restart local v6    # "maxEndPositionUs":J
    .restart local v8    # "elapsedRealtimeAtZeroUs":J
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer/dash/DashChunkSource;->currentManifest:Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

    iget-wide v14, v3, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;->timeShiftBufferDepth:J

    const-wide/16 v16, 0x3e8

    mul-long v10, v14, v16

    goto :goto_2
.end method

.method private static getMediaMimeType(Lcom/google/android/exoplayer/chunk/Format;)Ljava/lang/String;
    .locals 3
    .param p0, "format"    # Lcom/google/android/exoplayer/chunk/Format;

    .prologue
    .line 289
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/Format;->mimeType:Ljava/lang/String;

    .line 290
    .local v0, "formatMimeType":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/exoplayer/util/MimeTypes;->isAudio(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 291
    iget-object v1, p0, Lcom/google/android/exoplayer/chunk/Format;->codecs:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/exoplayer/util/MimeTypes;->getAudioMediaMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 304
    .end local v0    # "formatMimeType":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 292
    .restart local v0    # "formatMimeType":Ljava/lang/String;
    :cond_1
    invoke-static {v0}, Lcom/google/android/exoplayer/util/MimeTypes;->isVideo(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 293
    iget-object v1, p0, Lcom/google/android/exoplayer/chunk/Format;->codecs:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/exoplayer/util/MimeTypes;->getVideoMediaMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 294
    :cond_2
    invoke-static {v0}, Lcom/google/android/exoplayer/dash/DashChunkSource;->mimeTypeIsRawText(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 296
    const-string v1, "application/mp4"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 297
    const-string v1, "stpp"

    iget-object v2, p0, Lcom/google/android/exoplayer/chunk/Format;->codecs:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 298
    const-string v0, "application/ttml+xml"

    goto :goto_0

    .line 300
    :cond_3
    const-string v1, "wvtt"

    iget-object v2, p0, Lcom/google/android/exoplayer/chunk/Format;->codecs:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 301
    const-string v0, "application/x-mp4vtt"

    goto :goto_0

    .line 304
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getNowUnixTimeUs()J
    .locals 6

    .prologue
    const-wide/16 v4, 0x3e8

    .line 679
    iget-wide v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->elapsedRealtimeOffsetUs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 680
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->systemClock:Lcom/google/android/exoplayer/util/Clock;

    invoke-interface {v0}, Lcom/google/android/exoplayer/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    mul-long/2addr v0, v4

    iget-wide v2, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->elapsedRealtimeOffsetUs:J

    add-long/2addr v0, v2

    .line 682
    :goto_0
    return-wide v0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    mul-long/2addr v0, v4

    goto :goto_0
.end method

.method private static getTrackFormat(ILcom/google/android/exoplayer/chunk/Format;Ljava/lang/String;J)Lcom/google/android/exoplayer/MediaFormat;
    .locals 11
    .param p0, "adaptationSetType"    # I
    .param p1, "format"    # Lcom/google/android/exoplayer/chunk/Format;
    .param p2, "mediaMimeType"    # Ljava/lang/String;
    .param p3, "durationUs"    # J

    .prologue
    const/4 v3, -0x1

    const/4 v8, 0x0

    .line 272
    packed-switch p0, :pswitch_data_0

    .line 282
    :goto_0
    return-object v8

    .line 274
    :pswitch_0
    iget-object v0, p1, Lcom/google/android/exoplayer/chunk/Format;->id:Ljava/lang/String;

    iget v2, p1, Lcom/google/android/exoplayer/chunk/Format;->bitrate:I

    iget v6, p1, Lcom/google/android/exoplayer/chunk/Format;->width:I

    iget v7, p1, Lcom/google/android/exoplayer/chunk/Format;->height:I

    move-object v1, p2

    move-wide v4, p3

    invoke-static/range {v0 .. v8}, Lcom/google/android/exoplayer/MediaFormat;->createVideoFormat(Ljava/lang/String;Ljava/lang/String;IIJIILjava/util/List;)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v8

    goto :goto_0

    .line 277
    :pswitch_1
    iget-object v0, p1, Lcom/google/android/exoplayer/chunk/Format;->id:Ljava/lang/String;

    iget v2, p1, Lcom/google/android/exoplayer/chunk/Format;->bitrate:I

    iget v6, p1, Lcom/google/android/exoplayer/chunk/Format;->audioChannels:I

    iget v7, p1, Lcom/google/android/exoplayer/chunk/Format;->audioSamplingRate:I

    iget-object v9, p1, Lcom/google/android/exoplayer/chunk/Format;->language:Ljava/lang/String;

    move-object v1, p2

    move-wide v4, p3

    invoke-static/range {v0 .. v9}, Lcom/google/android/exoplayer/MediaFormat;->createAudioFormat(Ljava/lang/String;Ljava/lang/String;IIJIILjava/util/List;Ljava/lang/String;)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v8

    goto :goto_0

    .line 280
    :pswitch_2
    iget-object v1, p1, Lcom/google/android/exoplayer/chunk/Format;->id:Ljava/lang/String;

    iget v3, p1, Lcom/google/android/exoplayer/chunk/Format;->bitrate:I

    iget-object v6, p1, Lcom/google/android/exoplayer/chunk/Format;->language:Ljava/lang/String;

    move-object v2, p2

    move-wide v4, p3

    invoke-static/range {v1 .. v6}, Lcom/google/android/exoplayer/MediaFormat;->createTextFormat(Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v8

    goto :goto_0

    .line 272
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static mimeTypeIsRawText(Ljava/lang/String;)Z
    .locals 1
    .param p0, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 313
    const-string v0, "text/vtt"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "application/ttml+xml"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method static mimeTypeIsWebm(Ljava/lang/String;)Z
    .locals 1
    .param p0, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 308
    const-string v0, "video/webm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "audio/webm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "application/webm"

    .line 309
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 308
    :goto_0
    return v0

    .line 309
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private newInitializationChunk(Lcom/google/android/exoplayer/dash/mpd/RangedUri;Lcom/google/android/exoplayer/dash/mpd/RangedUri;Lcom/google/android/exoplayer/dash/mpd/Representation;Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper;Lcom/google/android/exoplayer/upstream/DataSource;II)Lcom/google/android/exoplayer/chunk/Chunk;
    .locals 9
    .param p1, "initializationUri"    # Lcom/google/android/exoplayer/dash/mpd/RangedUri;
    .param p2, "indexUri"    # Lcom/google/android/exoplayer/dash/mpd/RangedUri;
    .param p3, "representation"    # Lcom/google/android/exoplayer/dash/mpd/Representation;
    .param p4, "extractor"    # Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper;
    .param p5, "dataSource"    # Lcom/google/android/exoplayer/upstream/DataSource;
    .param p6, "manifestIndex"    # I
    .param p7, "trigger"    # I

    .prologue
    .line 643
    if-eqz p1, :cond_1

    .line 646
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer/dash/mpd/RangedUri;->attemptMerge(Lcom/google/android/exoplayer/dash/mpd/RangedUri;)Lcom/google/android/exoplayer/dash/mpd/RangedUri;

    move-result-object v8

    .line 647
    .local v8, "requestUri":Lcom/google/android/exoplayer/dash/mpd/RangedUri;
    if-nez v8, :cond_0

    .line 648
    move-object v8, p1

    .line 653
    :cond_0
    :goto_0
    new-instance v0, Lcom/google/android/exoplayer/upstream/DataSpec;

    invoke-virtual {v8}, Lcom/google/android/exoplayer/dash/mpd/RangedUri;->getUri()Landroid/net/Uri;

    move-result-object v1

    iget-wide v2, v8, Lcom/google/android/exoplayer/dash/mpd/RangedUri;->start:J

    iget-wide v4, v8, Lcom/google/android/exoplayer/dash/mpd/RangedUri;->length:J

    invoke-virtual {p3}, Lcom/google/android/exoplayer/dash/mpd/Representation;->getCacheKey()Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer/upstream/DataSpec;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    .line 654
    .local v0, "dataSpec":Lcom/google/android/exoplayer/upstream/DataSpec;
    new-instance v1, Lcom/google/android/exoplayer/chunk/InitializationChunk;

    iget-object v5, p3, Lcom/google/android/exoplayer/dash/mpd/Representation;->format:Lcom/google/android/exoplayer/chunk/Format;

    move-object v2, p5

    move-object v3, v0

    move/from16 v4, p7

    move-object v6, p4

    move v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer/chunk/InitializationChunk;-><init>(Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/upstream/DataSpec;ILcom/google/android/exoplayer/chunk/Format;Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper;I)V

    return-object v1

    .line 651
    .end local v0    # "dataSpec":Lcom/google/android/exoplayer/upstream/DataSpec;
    .end local v8    # "requestUri":Lcom/google/android/exoplayer/dash/mpd/RangedUri;
    :cond_1
    move-object v8, p2

    .restart local v8    # "requestUri":Lcom/google/android/exoplayer/dash/mpd/RangedUri;
    goto :goto_0
.end method

.method private notifyAvailableRangeChanged(Lcom/google/android/exoplayer/TimeRange;)V
    .locals 2
    .param p1, "seekRange"    # Lcom/google/android/exoplayer/TimeRange;

    .prologue
    .line 768
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->eventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->eventListener:Lcom/google/android/exoplayer/dash/DashChunkSource$EventListener;

    if-eqz v0, :cond_0

    .line 769
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->eventHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/exoplayer/dash/DashChunkSource$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer/dash/DashChunkSource$1;-><init>(Lcom/google/android/exoplayer/dash/DashChunkSource;Lcom/google/android/exoplayer/TimeRange;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 776
    :cond_0
    return-void
.end method

.method private processManifest(Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;)V
    .locals 14
    .param p1, "manifest"    # Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

    .prologue
    .line 705
    const/4 v8, 0x0

    invoke-virtual {p1, v8}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;->getPeriod(I)Lcom/google/android/exoplayer/dash/mpd/Period;

    move-result-object v1

    .line 706
    .local v1, "firstPeriod":Lcom/google/android/exoplayer/dash/mpd/Period;
    :goto_0
    iget-object v8, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->periodHolders:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-lez v8, :cond_0

    iget-object v8, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->periodHolders:Landroid/util/SparseArray;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/exoplayer/dash/DashChunkSource$PeriodHolder;

    iget-wide v8, v8, Lcom/google/android/exoplayer/dash/DashChunkSource$PeriodHolder;->startTimeUs:J

    iget-wide v10, v1, Lcom/google/android/exoplayer/dash/mpd/Period;->startMs:J

    const-wide/16 v12, 0x3e8

    mul-long/2addr v10, v12

    cmp-long v8, v8, v10

    if-gez v8, :cond_0

    .line 707
    iget-object v8, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->periodHolders:Landroid/util/SparseArray;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/exoplayer/dash/DashChunkSource$PeriodHolder;

    .line 709
    .local v6, "periodHolder":Lcom/google/android/exoplayer/dash/DashChunkSource$PeriodHolder;
    iget-object v8, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->periodHolders:Landroid/util/SparseArray;

    iget v9, v6, Lcom/google/android/exoplayer/dash/DashChunkSource$PeriodHolder;->localIndex:I

    invoke-virtual {v8, v9}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_0

    .line 716
    .end local v6    # "periodHolder":Lcom/google/android/exoplayer/dash/DashChunkSource$PeriodHolder;
    :cond_0
    iget-object v8, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->periodHolders:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    invoke-virtual {p1}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;->getPeriodCount()I

    move-result v9

    if-le v8, v9, :cond_1

    .line 750
    :goto_1
    return-void

    .line 722
    :cond_1
    :try_start_0
    iget-object v8, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->periodHolders:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v7

    .line 723
    .local v7, "periodHolderCount":I
    if-lez v7, :cond_2

    .line 724
    iget-object v8, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->periodHolders:Landroid/util/SparseArray;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/exoplayer/dash/DashChunkSource$PeriodHolder;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->enabledTrack:Lcom/google/android/exoplayer/dash/DashChunkSource$ExposedTrack;

    invoke-virtual {v8, p1, v9, v10}, Lcom/google/android/exoplayer/dash/DashChunkSource$PeriodHolder;->updatePeriod(Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;ILcom/google/android/exoplayer/dash/DashChunkSource$ExposedTrack;)V

    .line 725
    const/4 v8, 0x1

    if-le v7, v8, :cond_2

    .line 726
    add-int/lit8 v4, v7, -0x1

    .line 727
    .local v4, "lastIndex":I
    iget-object v8, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->periodHolders:Landroid/util/SparseArray;

    invoke-virtual {v8, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/exoplayer/dash/DashChunkSource$PeriodHolder;

    iget-object v9, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->enabledTrack:Lcom/google/android/exoplayer/dash/DashChunkSource$ExposedTrack;

    invoke-virtual {v8, p1, v4, v9}, Lcom/google/android/exoplayer/dash/DashChunkSource$PeriodHolder;->updatePeriod(Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;ILcom/google/android/exoplayer/dash/DashChunkSource$ExposedTrack;)V
    :try_end_0
    .catch Lcom/google/android/exoplayer/BehindLiveWindowException; {:try_start_0 .. :try_end_0} :catch_0

    .line 736
    .end local v4    # "lastIndex":I
    :cond_2
    iget-object v8, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->periodHolders:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v3

    .local v3, "i":I
    :goto_2
    invoke-virtual {p1}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;->getPeriodCount()I

    move-result v8

    if-ge v3, v8, :cond_3

    .line 737
    new-instance v2, Lcom/google/android/exoplayer/dash/DashChunkSource$PeriodHolder;

    iget v8, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->nextPeriodHolderIndex:I

    iget-object v9, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->enabledTrack:Lcom/google/android/exoplayer/dash/DashChunkSource$ExposedTrack;

    invoke-direct {v2, v8, p1, v3, v9}, Lcom/google/android/exoplayer/dash/DashChunkSource$PeriodHolder;-><init>(ILcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;ILcom/google/android/exoplayer/dash/DashChunkSource$ExposedTrack;)V

    .line 738
    .local v2, "holder":Lcom/google/android/exoplayer/dash/DashChunkSource$PeriodHolder;
    iget-object v8, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->periodHolders:Landroid/util/SparseArray;

    iget v9, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->nextPeriodHolderIndex:I

    invoke-virtual {v8, v9, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 739
    iget v8, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->nextPeriodHolderIndex:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->nextPeriodHolderIndex:I

    .line 736
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 730
    .end local v2    # "holder":Lcom/google/android/exoplayer/dash/DashChunkSource$PeriodHolder;
    .end local v3    # "i":I
    .end local v7    # "periodHolderCount":I
    :catch_0
    move-exception v0

    .line 731
    .local v0, "e":Lcom/google/android/exoplayer/BehindLiveWindowException;
    iput-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->fatalError:Ljava/io/IOException;

    goto :goto_1

    .line 743
    .end local v0    # "e":Lcom/google/android/exoplayer/BehindLiveWindowException;
    .restart local v3    # "i":I
    .restart local v7    # "periodHolderCount":I
    :cond_3
    invoke-direct {p0}, Lcom/google/android/exoplayer/dash/DashChunkSource;->getNowUnixTimeUs()J

    move-result-wide v8

    invoke-direct {p0, v8, v9}, Lcom/google/android/exoplayer/dash/DashChunkSource;->getAvailableRange(J)Lcom/google/android/exoplayer/TimeRange;

    move-result-object v5

    .line 744
    .local v5, "newAvailableRange":Lcom/google/android/exoplayer/TimeRange;
    iget-object v8, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->availableRange:Lcom/google/android/exoplayer/TimeRange;

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->availableRange:Lcom/google/android/exoplayer/TimeRange;

    invoke-virtual {v8, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 745
    :cond_4
    iput-object v5, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->availableRange:Lcom/google/android/exoplayer/TimeRange;

    .line 746
    iget-object v8, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->availableRange:Lcom/google/android/exoplayer/TimeRange;

    invoke-direct {p0, v8}, Lcom/google/android/exoplayer/dash/DashChunkSource;->notifyAvailableRangeChanged(Lcom/google/android/exoplayer/TimeRange;)V

    .line 749
    :cond_5
    iput-object p1, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->currentManifest:Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

    goto :goto_1
.end method


# virtual methods
.method public adaptiveTrack(Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;II[I)V
    .locals 18
    .param p1, "manifest"    # Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;
    .param p2, "periodIndex"    # I
    .param p3, "adaptationSetIndex"    # I
    .param p4, "representationIndices"    # [I

    .prologue
    .line 583
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/dash/DashChunkSource;->adaptiveFormatEvaluator:Lcom/google/android/exoplayer/chunk/FormatEvaluator;

    if-nez v2, :cond_0

    .line 584
    const-string v2, "DashChunkSource"

    const-string v3, "Skipping adaptive track (missing format evaluator)"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    :goto_0
    return-void

    .line 587
    :cond_0
    invoke-virtual/range {p1 .. p2}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;->getPeriod(I)Lcom/google/android/exoplayer/dash/mpd/Period;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/exoplayer/dash/mpd/Period;->adaptationSets:Ljava/util/List;

    move/from16 v0, p3

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/exoplayer/dash/mpd/AdaptationSet;

    .line 588
    .local v8, "adaptationSet":Lcom/google/android/exoplayer/dash/mpd/AdaptationSet;
    const/4 v6, 0x0

    .line 589
    .local v6, "maxWidth":I
    const/4 v7, 0x0

    .line 590
    .local v7, "maxHeight":I
    const/4 v11, 0x0

    .line 591
    .local v11, "maxHeightRepresentationFormat":Lcom/google/android/exoplayer/chunk/Format;
    move-object/from16 v0, p4

    array-length v2, v0

    new-array v5, v2, [Lcom/google/android/exoplayer/chunk/Format;

    .line 592
    .local v5, "representationFormats":[Lcom/google/android/exoplayer/chunk/Format;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    array-length v2, v5

    if-ge v10, v2, :cond_3

    .line 593
    iget-object v2, v8, Lcom/google/android/exoplayer/dash/mpd/AdaptationSet;->representations:Ljava/util/List;

    aget v3, p4, v10

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer/dash/mpd/Representation;

    iget-object v9, v2, Lcom/google/android/exoplayer/dash/mpd/Representation;->format:Lcom/google/android/exoplayer/chunk/Format;

    .line 594
    .local v9, "format":Lcom/google/android/exoplayer/chunk/Format;
    if-eqz v11, :cond_1

    iget v2, v9, Lcom/google/android/exoplayer/chunk/Format;->height:I

    if-le v2, v7, :cond_2

    .line 595
    :cond_1
    move-object v11, v9

    .line 597
    :cond_2
    iget v2, v9, Lcom/google/android/exoplayer/chunk/Format;->width:I

    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 598
    iget v2, v9, Lcom/google/android/exoplayer/chunk/Format;->height:I

    invoke-static {v7, v2}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 599
    aput-object v9, v5, v10

    .line 592
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 601
    .end local v9    # "format":Lcom/google/android/exoplayer/chunk/Format;
    :cond_3
    new-instance v2, Lcom/google/android/exoplayer/chunk/Format$DecreasingBandwidthComparator;

    invoke-direct {v2}, Lcom/google/android/exoplayer/chunk/Format$DecreasingBandwidthComparator;-><init>()V

    invoke-static {v5, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 602
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/exoplayer/dash/DashChunkSource;->live:Z

    if-eqz v2, :cond_4

    const-wide/16 v14, -0x1

    .line 603
    .local v14, "trackDurationUs":J
    :goto_2
    invoke-static {v11}, Lcom/google/android/exoplayer/dash/DashChunkSource;->getMediaMimeType(Lcom/google/android/exoplayer/chunk/Format;)Ljava/lang/String;

    move-result-object v12

    .line 604
    .local v12, "mediaMimeType":Ljava/lang/String;
    if-nez v12, :cond_5

    .line 605
    const-string v2, "DashChunkSource"

    const-string v3, "Skipped adaptive track (unknown media mime type)"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 602
    .end local v12    # "mediaMimeType":Ljava/lang/String;
    .end local v14    # "trackDurationUs":J
    :cond_4
    move-object/from16 v0, p1

    iget-wide v2, v0, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;->duration:J

    const-wide/16 v16, 0x3e8

    mul-long v14, v2, v16

    goto :goto_2

    .line 608
    .restart local v12    # "mediaMimeType":Ljava/lang/String;
    .restart local v14    # "trackDurationUs":J
    :cond_5
    iget v2, v8, Lcom/google/android/exoplayer/dash/mpd/AdaptationSet;->type:I

    invoke-static {v2, v11, v12, v14, v15}, Lcom/google/android/exoplayer/dash/DashChunkSource;->getTrackFormat(ILcom/google/android/exoplayer/chunk/Format;Ljava/lang/String;J)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v13

    .line 609
    .local v13, "trackFormat":Lcom/google/android/exoplayer/MediaFormat;
    if-nez v13, :cond_6

    .line 610
    const-string v2, "DashChunkSource"

    const-string v3, "Skipped adaptive track (unknown media format)"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 613
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/dash/DashChunkSource;->tracks:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    new-instance v2, Lcom/google/android/exoplayer/dash/DashChunkSource$ExposedTrack;

    const/4 v3, 0x0

    invoke-virtual {v13, v3}, Lcom/google/android/exoplayer/MediaFormat;->copyAsAdaptive(Ljava/lang/String;)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v3

    move/from16 v4, p3

    invoke-direct/range {v2 .. v7}, Lcom/google/android/exoplayer/dash/DashChunkSource$ExposedTrack;-><init>(Lcom/google/android/exoplayer/MediaFormat;I[Lcom/google/android/exoplayer/chunk/Format;II)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method public continueBuffering(J)V
    .locals 8
    .param p1, "playbackPositionUs"    # J

    .prologue
    .line 364
    iget-object v3, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->manifestFetcher:Lcom/google/android/exoplayer/util/ManifestFetcher;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->currentManifest:Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

    iget-boolean v3, v3, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;->dynamic:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->fatalError:Ljava/io/IOException;

    if-eqz v3, :cond_1

    .line 388
    :cond_0
    :goto_0
    return-void

    .line 368
    :cond_1
    iget-object v3, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->manifestFetcher:Lcom/google/android/exoplayer/util/ManifestFetcher;

    invoke-virtual {v3}, Lcom/google/android/exoplayer/util/ManifestFetcher;->getManifest()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

    .line 369
    .local v2, "newManifest":Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;
    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->processedManifest:Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

    if-eq v2, v3, :cond_2

    .line 370
    invoke-direct {p0, v2}, Lcom/google/android/exoplayer/dash/DashChunkSource;->processManifest(Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;)V

    .line 373
    iput-object v2, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->processedManifest:Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

    .line 380
    :cond_2
    iget-object v3, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->currentManifest:Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

    iget-wide v0, v3, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;->minUpdatePeriod:J

    .line 381
    .local v0, "minUpdatePeriod":J
    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-nez v3, :cond_3

    .line 382
    const-wide/16 v0, 0x1388

    .line 385
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-object v3, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->manifestFetcher:Lcom/google/android/exoplayer/util/ManifestFetcher;

    invoke-virtual {v3}, Lcom/google/android/exoplayer/util/ManifestFetcher;->getManifestLoadStartTimestamp()J

    move-result-wide v6

    add-long/2addr v6, v0

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    .line 386
    iget-object v3, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->manifestFetcher:Lcom/google/android/exoplayer/util/ManifestFetcher;

    invoke-virtual {v3}, Lcom/google/android/exoplayer/util/ManifestFetcher;->requestRefresh()V

    goto :goto_0
.end method

.method public disable(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/google/android/exoplayer/chunk/MediaChunk;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "queue":Ljava/util/List;, "Ljava/util/List<+Lcom/google/android/exoplayer/chunk/MediaChunk;>;"
    const/4 v1, 0x0

    .line 568
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->enabledTrack:Lcom/google/android/exoplayer/dash/DashChunkSource$ExposedTrack;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/dash/DashChunkSource$ExposedTrack;->isAdaptive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 569
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->adaptiveFormatEvaluator:Lcom/google/android/exoplayer/chunk/FormatEvaluator;

    invoke-interface {v0}, Lcom/google/android/exoplayer/chunk/FormatEvaluator;->disable()V

    .line 571
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->manifestFetcher:Lcom/google/android/exoplayer/util/ManifestFetcher;

    if-eqz v0, :cond_1

    .line 572
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->manifestFetcher:Lcom/google/android/exoplayer/util/ManifestFetcher;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/util/ManifestFetcher;->disable()V

    .line 574
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->periodHolders:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 575
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->evaluation:Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;

    iput-object v1, v0, Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;->format:Lcom/google/android/exoplayer/chunk/Format;

    .line 576
    iput-object v1, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->availableRange:Lcom/google/android/exoplayer/TimeRange;

    .line 577
    iput-object v1, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->fatalError:Ljava/io/IOException;

    .line 578
    iput-object v1, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->enabledTrack:Lcom/google/android/exoplayer/dash/DashChunkSource$ExposedTrack;

    .line 579
    return-void
.end method

.method public enable(I)V
    .locals 1
    .param p1, "track"    # I

    .prologue
    .line 350
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->tracks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/dash/DashChunkSource$ExposedTrack;

    iput-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->enabledTrack:Lcom/google/android/exoplayer/dash/DashChunkSource$ExposedTrack;

    .line 351
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->enabledTrack:Lcom/google/android/exoplayer/dash/DashChunkSource$ExposedTrack;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/dash/DashChunkSource$ExposedTrack;->isAdaptive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->adaptiveFormatEvaluator:Lcom/google/android/exoplayer/chunk/FormatEvaluator;

    invoke-interface {v0}, Lcom/google/android/exoplayer/chunk/FormatEvaluator;->enable()V

    .line 354
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->manifestFetcher:Lcom/google/android/exoplayer/util/ManifestFetcher;

    if-eqz v0, :cond_1

    .line 355
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->manifestFetcher:Lcom/google/android/exoplayer/util/ManifestFetcher;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/util/ManifestFetcher;->enable()V

    .line 356
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->manifestFetcher:Lcom/google/android/exoplayer/util/ManifestFetcher;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/util/ManifestFetcher;->getManifest()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/dash/DashChunkSource;->processManifest(Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;)V

    .line 360
    :goto_0
    return-void

    .line 358
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->currentManifest:Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/dash/DashChunkSource;->processManifest(Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;)V

    goto :goto_0
.end method

.method public fixedTrack(Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;III)V
    .locals 10
    .param p1, "manifest"    # Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;
    .param p2, "periodIndex"    # I
    .param p3, "adaptationSetIndex"    # I
    .param p4, "representationIndex"    # I

    .prologue
    .line 618
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;->getPeriod(I)Lcom/google/android/exoplayer/dash/mpd/Period;

    move-result-object v5

    iget-object v1, v5, Lcom/google/android/exoplayer/dash/mpd/Period;->adaptationSets:Ljava/util/List;

    .line 619
    .local v1, "adaptationSets":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer/dash/mpd/AdaptationSet;>;"
    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/dash/mpd/AdaptationSet;

    .line 620
    .local v0, "adaptationSet":Lcom/google/android/exoplayer/dash/mpd/AdaptationSet;
    iget-object v5, v0, Lcom/google/android/exoplayer/dash/mpd/AdaptationSet;->representations:Ljava/util/List;

    invoke-interface {v5, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/exoplayer/dash/mpd/Representation;

    iget-object v3, v5, Lcom/google/android/exoplayer/dash/mpd/Representation;->format:Lcom/google/android/exoplayer/chunk/Format;

    .line 621
    .local v3, "representationFormat":Lcom/google/android/exoplayer/chunk/Format;
    invoke-static {v3}, Lcom/google/android/exoplayer/dash/DashChunkSource;->getMediaMimeType(Lcom/google/android/exoplayer/chunk/Format;)Ljava/lang/String;

    move-result-object v2

    .line 622
    .local v2, "mediaMimeType":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 623
    const-string v5, "DashChunkSource"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Skipped track "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/google/android/exoplayer/chunk/Format;->id:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " (unknown media mime type)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    :goto_0
    return-void

    .line 626
    :cond_0
    iget v5, v0, Lcom/google/android/exoplayer/dash/mpd/AdaptationSet;->type:I

    iget-boolean v6, p1, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;->dynamic:Z

    if-eqz v6, :cond_1

    const-wide/16 v6, -0x1

    :goto_1
    invoke-static {v5, v3, v2, v6, v7}, Lcom/google/android/exoplayer/dash/DashChunkSource;->getTrackFormat(ILcom/google/android/exoplayer/chunk/Format;Ljava/lang/String;J)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v4

    .line 628
    .local v4, "trackFormat":Lcom/google/android/exoplayer/MediaFormat;
    if-nez v4, :cond_2

    .line 629
    const-string v5, "DashChunkSource"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Skipped track "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/google/android/exoplayer/chunk/Format;->id:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " (unknown media format)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 626
    .end local v4    # "trackFormat":Lcom/google/android/exoplayer/MediaFormat;
    :cond_1
    iget-wide v6, p1, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;->duration:J

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    goto :goto_1

    .line 632
    .restart local v4    # "trackFormat":Lcom/google/android/exoplayer/MediaFormat;
    :cond_2
    iget-object v5, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->tracks:Ljava/util/ArrayList;

    new-instance v6, Lcom/google/android/exoplayer/dash/DashChunkSource$ExposedTrack;

    invoke-direct {v6, v4, p3, v3}, Lcom/google/android/exoplayer/dash/DashChunkSource$ExposedTrack;-><init>(Lcom/google/android/exoplayer/MediaFormat;ILcom/google/android/exoplayer/chunk/Format;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method getAvailableRange()Lcom/google/android/exoplayer/TimeRange;
    .locals 1

    .prologue
    .line 637
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->availableRange:Lcom/google/android/exoplayer/TimeRange;

    return-object v0
.end method

.method public final getChunkOperation(Ljava/util/List;JLcom/google/android/exoplayer/chunk/ChunkOperationHolder;)V
    .locals 30
    .param p2, "playbackPositionUs"    # J
    .param p4, "out"    # Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/google/android/exoplayer/chunk/MediaChunk;",
            ">;J",
            "Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;",
            ")V"
        }
    .end annotation

    .prologue
    .line 392
    .local p1, "queue":Ljava/util/List;, "Ljava/util/List<+Lcom/google/android/exoplayer/chunk/MediaChunk;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/dash/DashChunkSource;->fatalError:Ljava/io/IOException;

    if-eqz v4, :cond_1

    .line 393
    const/4 v4, 0x0

    move-object/from16 v0, p4

    iput-object v4, v0, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->chunk:Lcom/google/android/exoplayer/chunk/Chunk;

    .line 525
    :cond_0
    :goto_0
    return-void

    .line 397
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/dash/DashChunkSource;->evaluation:Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v8

    iput v8, v4, Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;->queueSize:I

    .line 398
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/dash/DashChunkSource;->evaluation:Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;

    iget-object v4, v4, Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;->format:Lcom/google/android/exoplayer/chunk/Format;

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/google/android/exoplayer/dash/DashChunkSource;->lastChunkWasInitialization:Z

    if-nez v4, :cond_3

    .line 399
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/dash/DashChunkSource;->enabledTrack:Lcom/google/android/exoplayer/dash/DashChunkSource$ExposedTrack;

    invoke-virtual {v4}, Lcom/google/android/exoplayer/dash/DashChunkSource$ExposedTrack;->isAdaptive()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 400
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/dash/DashChunkSource;->adaptiveFormatEvaluator:Lcom/google/android/exoplayer/chunk/FormatEvaluator;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/exoplayer/dash/DashChunkSource;->enabledTrack:Lcom/google/android/exoplayer/dash/DashChunkSource$ExposedTrack;

    invoke-static {v8}, Lcom/google/android/exoplayer/dash/DashChunkSource$ExposedTrack;->access$000(Lcom/google/android/exoplayer/dash/DashChunkSource$ExposedTrack;)[Lcom/google/android/exoplayer/chunk/Format;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/exoplayer/dash/DashChunkSource;->evaluation:Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;

    move-object/from16 v5, p1

    move-wide/from16 v6, p2

    invoke-interface/range {v4 .. v9}, Lcom/google/android/exoplayer/chunk/FormatEvaluator;->evaluate(Ljava/util/List;J[Lcom/google/android/exoplayer/chunk/Format;Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;)V

    .line 407
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/dash/DashChunkSource;->evaluation:Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;

    iget-object v0, v4, Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;->format:Lcom/google/android/exoplayer/chunk/Format;

    move-object/from16 v23, v0

    .line 408
    .local v23, "selectedFormat":Lcom/google/android/exoplayer/chunk/Format;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/dash/DashChunkSource;->evaluation:Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;

    iget v4, v4, Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;->queueSize:I

    move-object/from16 v0, p4

    iput v4, v0, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->queueSize:I

    .line 410
    if-nez v23, :cond_5

    .line 411
    const/4 v4, 0x0

    move-object/from16 v0, p4

    iput-object v4, v0, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->chunk:Lcom/google/android/exoplayer/chunk/Chunk;

    goto :goto_0

    .line 402
    .end local v23    # "selectedFormat":Lcom/google/android/exoplayer/chunk/Format;
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/dash/DashChunkSource;->evaluation:Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/exoplayer/dash/DashChunkSource;->enabledTrack:Lcom/google/android/exoplayer/dash/DashChunkSource$ExposedTrack;

    invoke-static {v8}, Lcom/google/android/exoplayer/dash/DashChunkSource$ExposedTrack;->access$100(Lcom/google/android/exoplayer/dash/DashChunkSource$ExposedTrack;)Lcom/google/android/exoplayer/chunk/Format;

    move-result-object v8

    iput-object v8, v4, Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;->format:Lcom/google/android/exoplayer/chunk/Format;

    .line 403
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/dash/DashChunkSource;->evaluation:Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;

    const/4 v8, 0x2

    iput v8, v4, Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;->trigger:I

    goto :goto_1

    .line 413
    .restart local v23    # "selectedFormat":Lcom/google/android/exoplayer/chunk/Format;
    :cond_5
    move-object/from16 v0, p4

    iget v4, v0, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->queueSize:I

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v8

    if-ne v4, v8, :cond_6

    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->chunk:Lcom/google/android/exoplayer/chunk/Chunk;

    if-eqz v4, :cond_6

    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->chunk:Lcom/google/android/exoplayer/chunk/Chunk;

    iget-object v4, v4, Lcom/google/android/exoplayer/chunk/Chunk;->format:Lcom/google/android/exoplayer/chunk/Format;

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Lcom/google/android/exoplayer/chunk/Format;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 420
    :cond_6
    const/4 v4, 0x0

    move-object/from16 v0, p4

    iput-object v4, v0, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->chunk:Lcom/google/android/exoplayer/chunk/Chunk;

    .line 425
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/dash/DashChunkSource;->availableRange:Lcom/google/android/exoplayer/TimeRange;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/exoplayer/dash/DashChunkSource;->availableRangeValues:[J

    invoke-interface {v4, v8}, Lcom/google/android/exoplayer/TimeRange;->getCurrentBoundsUs([J)[J

    .line 426
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 427
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/google/android/exoplayer/dash/DashChunkSource;->live:Z

    if-eqz v4, :cond_7

    .line 428
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/google/android/exoplayer/dash/DashChunkSource;->startAtLiveEdge:Z

    if-eqz v4, :cond_c

    .line 431
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/dash/DashChunkSource;->availableRangeValues:[J

    const/4 v8, 0x0

    aget-wide v8, v4, v8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/dash/DashChunkSource;->availableRangeValues:[J

    const/4 v11, 0x1

    aget-wide v26, v4, v11

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/exoplayer/dash/DashChunkSource;->liveEdgeLatencyUs:J

    move-wide/from16 v28, v0

    sub-long v26, v26, v28

    move-wide/from16 v0, v26

    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    .line 439
    :cond_7
    :goto_2
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer/dash/DashChunkSource;->findPeriodHolder(J)Lcom/google/android/exoplayer/dash/DashChunkSource$PeriodHolder;

    move-result-object v19

    .line 440
    .local v19, "periodHolder":Lcom/google/android/exoplayer/dash/DashChunkSource$PeriodHolder;
    const/16 v24, 0x1

    .line 496
    .local v24, "startingNewPeriod":Z
    :cond_8
    :goto_3
    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/google/android/exoplayer/dash/DashChunkSource$PeriodHolder;->representationHolders:Ljava/util/HashMap;

    move-object/from16 v0, v23

    iget-object v8, v0, Lcom/google/android/exoplayer/chunk/Format;->id:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;

    .line 497
    .local v10, "representationHolder":Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;
    iget-object v7, v10, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->representation:Lcom/google/android/exoplayer/dash/mpd/Representation;

    .line 499
    .local v7, "selectedRepresentation":Lcom/google/android/exoplayer/dash/mpd/Representation;
    const/4 v5, 0x0

    .line 500
    .local v5, "pendingInitializationUri":Lcom/google/android/exoplayer/dash/mpd/RangedUri;
    const/4 v6, 0x0

    .line 502
    .local v6, "pendingIndexUri":Lcom/google/android/exoplayer/dash/mpd/RangedUri;
    iget-object v12, v10, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->mediaFormat:Lcom/google/android/exoplayer/MediaFormat;

    .line 503
    .local v12, "mediaFormat":Lcom/google/android/exoplayer/MediaFormat;
    if-nez v12, :cond_9

    .line 504
    invoke-virtual {v7}, Lcom/google/android/exoplayer/dash/mpd/Representation;->getInitializationUri()Lcom/google/android/exoplayer/dash/mpd/RangedUri;

    move-result-object v5

    .line 506
    :cond_9
    iget-object v4, v10, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->segmentIndex:Lcom/google/android/exoplayer/dash/DashSegmentIndex;

    if-nez v4, :cond_a

    .line 507
    invoke-virtual {v7}, Lcom/google/android/exoplayer/dash/mpd/Representation;->getIndexUri()Lcom/google/android/exoplayer/dash/mpd/RangedUri;

    move-result-object v6

    .line 510
    :cond_a
    if-nez v5, :cond_b

    if-eqz v6, :cond_13

    .line 512
    :cond_b
    iget-object v8, v10, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->extractorWrapper:Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/exoplayer/dash/DashChunkSource;->dataSource:Lcom/google/android/exoplayer/upstream/DataSource;

    move-object/from16 v0, v19

    iget v10, v0, Lcom/google/android/exoplayer/dash/DashChunkSource$PeriodHolder;->localIndex:I

    .end local v10    # "representationHolder":Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/dash/DashChunkSource;->evaluation:Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;

    iget v11, v4, Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;->trigger:I

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v11}, Lcom/google/android/exoplayer/dash/DashChunkSource;->newInitializationChunk(Lcom/google/android/exoplayer/dash/mpd/RangedUri;Lcom/google/android/exoplayer/dash/mpd/RangedUri;Lcom/google/android/exoplayer/dash/mpd/Representation;Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper;Lcom/google/android/exoplayer/upstream/DataSource;II)Lcom/google/android/exoplayer/chunk/Chunk;

    move-result-object v16

    .line 514
    .local v16, "initializationChunk":Lcom/google/android/exoplayer/chunk/Chunk;
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/google/android/exoplayer/dash/DashChunkSource;->lastChunkWasInitialization:Z

    .line 515
    move-object/from16 v0, v16

    move-object/from16 v1, p4

    iput-object v0, v1, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->chunk:Lcom/google/android/exoplayer/chunk/Chunk;

    goto/16 :goto_0

    .line 434
    .end local v5    # "pendingInitializationUri":Lcom/google/android/exoplayer/dash/mpd/RangedUri;
    .end local v6    # "pendingIndexUri":Lcom/google/android/exoplayer/dash/mpd/RangedUri;
    .end local v7    # "selectedRepresentation":Lcom/google/android/exoplayer/dash/mpd/Representation;
    .end local v12    # "mediaFormat":Lcom/google/android/exoplayer/MediaFormat;
    .end local v16    # "initializationChunk":Lcom/google/android/exoplayer/chunk/Chunk;
    .end local v19    # "periodHolder":Lcom/google/android/exoplayer/dash/DashChunkSource$PeriodHolder;
    .end local v24    # "startingNewPeriod":Z
    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/dash/DashChunkSource;->availableRangeValues:[J

    const/4 v8, 0x1

    aget-wide v8, v4, v8

    const-wide/16 v26, 0x1

    sub-long v8, v8, v26

    move-wide/from16 v0, p2

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    .line 435
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/dash/DashChunkSource;->availableRangeValues:[J

    const/4 v8, 0x0

    aget-wide v8, v4, v8

    move-wide/from16 v0, p2

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    goto :goto_2

    .line 442
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/google/android/exoplayer/dash/DashChunkSource;->startAtLiveEdge:Z

    if-eqz v4, :cond_e

    .line 445
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/google/android/exoplayer/dash/DashChunkSource;->startAtLiveEdge:Z

    .line 448
    :cond_e
    move-object/from16 v0, p4

    iget v4, v0, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->queueSize:I

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/google/android/exoplayer/chunk/MediaChunk;

    .line 449
    .local v22, "previous":Lcom/google/android/exoplayer/chunk/MediaChunk;
    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/google/android/exoplayer/chunk/MediaChunk;->endTimeUs:J

    move-wide/from16 v20, v0

    .line 450
    .local v20, "nextSegmentStartTimeUs":J
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/google/android/exoplayer/dash/DashChunkSource;->live:Z

    if-eqz v4, :cond_f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/dash/DashChunkSource;->availableRangeValues:[J

    const/4 v8, 0x0

    aget-wide v8, v4, v8

    cmp-long v4, v20, v8

    if-gez v4, :cond_f

    .line 452
    new-instance v4, Lcom/google/android/exoplayer/BehindLiveWindowException;

    invoke-direct {v4}, Lcom/google/android/exoplayer/BehindLiveWindowException;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/google/android/exoplayer/dash/DashChunkSource;->fatalError:Ljava/io/IOException;

    goto/16 :goto_0

    .line 454
    :cond_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/dash/DashChunkSource;->currentManifest:Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

    iget-boolean v4, v4, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;->dynamic:Z

    if-eqz v4, :cond_10

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/dash/DashChunkSource;->availableRangeValues:[J

    const/4 v8, 0x1

    aget-wide v8, v4, v8

    cmp-long v4, v20, v8

    if-gez v4, :cond_0

    .line 464
    :cond_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/dash/DashChunkSource;->periodHolders:Landroid/util/SparseArray;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/exoplayer/dash/DashChunkSource;->periodHolders:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v4, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/google/android/exoplayer/dash/DashChunkSource$PeriodHolder;

    .line 465
    .local v17, "lastPeriodHolder":Lcom/google/android/exoplayer/dash/DashChunkSource$PeriodHolder;
    move-object/from16 v0, v22

    iget v4, v0, Lcom/google/android/exoplayer/chunk/MediaChunk;->parentId:I

    move-object/from16 v0, v17

    iget v8, v0, Lcom/google/android/exoplayer/dash/DashChunkSource$PeriodHolder;->localIndex:I

    if-ne v4, v8, :cond_11

    .line 466
    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/google/android/exoplayer/dash/DashChunkSource$PeriodHolder;->representationHolders:Ljava/util/HashMap;

    move-object/from16 v0, v22

    iget-object v8, v0, Lcom/google/android/exoplayer/chunk/MediaChunk;->format:Lcom/google/android/exoplayer/chunk/Format;

    iget-object v8, v8, Lcom/google/android/exoplayer/chunk/Format;->id:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;

    .line 467
    .restart local v10    # "representationHolder":Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;
    invoke-virtual/range {v22 .. v22}, Lcom/google/android/exoplayer/chunk/MediaChunk;->getNextChunkIndex()I

    move-result v4

    invoke-virtual {v10, v4}, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->isBeyondLastSegment(I)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 468
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/dash/DashChunkSource;->currentManifest:Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

    iget-boolean v4, v4, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;->dynamic:Z

    if-nez v4, :cond_0

    .line 470
    const/4 v4, 0x1

    move-object/from16 v0, p4

    iput-boolean v4, v0, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->endOfStream:Z

    goto/16 :goto_0

    .line 477
    .end local v10    # "representationHolder":Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;
    :cond_11
    const/16 v24, 0x0

    .line 478
    .restart local v24    # "startingNewPeriod":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/dash/DashChunkSource;->periodHolders:Landroid/util/SparseArray;

    move-object/from16 v0, v22

    iget v8, v0, Lcom/google/android/exoplayer/chunk/MediaChunk;->parentId:I

    invoke-virtual {v4, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/google/android/exoplayer/dash/DashChunkSource$PeriodHolder;

    .line 479
    .restart local v19    # "periodHolder":Lcom/google/android/exoplayer/dash/DashChunkSource$PeriodHolder;
    if-nez v19, :cond_12

    .line 484
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/dash/DashChunkSource;->periodHolders:Landroid/util/SparseArray;

    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v19

    .end local v19    # "periodHolder":Lcom/google/android/exoplayer/dash/DashChunkSource$PeriodHolder;
    check-cast v19, Lcom/google/android/exoplayer/dash/DashChunkSource$PeriodHolder;

    .line 485
    .restart local v19    # "periodHolder":Lcom/google/android/exoplayer/dash/DashChunkSource$PeriodHolder;
    const/16 v24, 0x1

    goto/16 :goto_3

    .line 486
    :cond_12
    invoke-virtual/range {v19 .. v19}, Lcom/google/android/exoplayer/dash/DashChunkSource$PeriodHolder;->isIndexUnbounded()Z

    move-result v4

    if-nez v4, :cond_8

    .line 487
    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/google/android/exoplayer/dash/DashChunkSource$PeriodHolder;->representationHolders:Ljava/util/HashMap;

    move-object/from16 v0, v22

    iget-object v8, v0, Lcom/google/android/exoplayer/chunk/MediaChunk;->format:Lcom/google/android/exoplayer/chunk/Format;

    iget-object v8, v8, Lcom/google/android/exoplayer/chunk/Format;->id:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;

    .line 488
    .restart local v10    # "representationHolder":Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;
    invoke-virtual/range {v22 .. v22}, Lcom/google/android/exoplayer/chunk/MediaChunk;->getNextChunkIndex()I

    move-result v4

    invoke-virtual {v10, v4}, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->isBeyondLastSegment(I)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 490
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/dash/DashChunkSource;->periodHolders:Landroid/util/SparseArray;

    move-object/from16 v0, v22

    iget v8, v0, Lcom/google/android/exoplayer/chunk/MediaChunk;->parentId:I

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v4, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v19

    .end local v19    # "periodHolder":Lcom/google/android/exoplayer/dash/DashChunkSource$PeriodHolder;
    check-cast v19, Lcom/google/android/exoplayer/dash/DashChunkSource$PeriodHolder;

    .line 491
    .restart local v19    # "periodHolder":Lcom/google/android/exoplayer/dash/DashChunkSource$PeriodHolder;
    const/16 v24, 0x1

    goto/16 :goto_3

    .line 519
    .end local v17    # "lastPeriodHolder":Lcom/google/android/exoplayer/dash/DashChunkSource$PeriodHolder;
    .end local v20    # "nextSegmentStartTimeUs":J
    .end local v22    # "previous":Lcom/google/android/exoplayer/chunk/MediaChunk;
    .restart local v5    # "pendingInitializationUri":Lcom/google/android/exoplayer/dash/mpd/RangedUri;
    .restart local v6    # "pendingIndexUri":Lcom/google/android/exoplayer/dash/mpd/RangedUri;
    .restart local v7    # "selectedRepresentation":Lcom/google/android/exoplayer/dash/mpd/Representation;
    .restart local v12    # "mediaFormat":Lcom/google/android/exoplayer/MediaFormat;
    :cond_13
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_14

    move-wide/from16 v0, p2

    invoke-virtual {v10, v0, v1}, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->getSegmentNum(J)I

    move-result v14

    .line 521
    .local v14, "segmentNum":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/exoplayer/dash/DashChunkSource;->dataSource:Lcom/google/android/exoplayer/upstream/DataSource;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/exoplayer/dash/DashChunkSource;->enabledTrack:Lcom/google/android/exoplayer/dash/DashChunkSource$ExposedTrack;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/dash/DashChunkSource;->evaluation:Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;

    iget v15, v4, Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;->trigger:I

    move-object/from16 v8, p0

    move-object/from16 v9, v19

    invoke-virtual/range {v8 .. v15}, Lcom/google/android/exoplayer/dash/DashChunkSource;->newMediaChunk(Lcom/google/android/exoplayer/dash/DashChunkSource$PeriodHolder;Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/MediaFormat;Lcom/google/android/exoplayer/dash/DashChunkSource$ExposedTrack;II)Lcom/google/android/exoplayer/chunk/Chunk;

    move-result-object v18

    .line 523
    .local v18, "nextMediaChunk":Lcom/google/android/exoplayer/chunk/Chunk;
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/google/android/exoplayer/dash/DashChunkSource;->lastChunkWasInitialization:Z

    .line 524
    move-object/from16 v0, v18

    move-object/from16 v1, p4

    iput-object v0, v1, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->chunk:Lcom/google/android/exoplayer/chunk/Chunk;

    goto/16 :goto_0

    .line 519
    .end local v14    # "segmentNum":I
    .end local v18    # "nextMediaChunk":Lcom/google/android/exoplayer/chunk/Chunk;
    :cond_14
    if-eqz v24, :cond_15

    .line 520
    invoke-virtual {v10}, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->getFirstAvailableSegmentNum()I

    move-result v14

    goto :goto_4

    :cond_15
    move-object/from16 v0, p4

    iget v4, v0, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->queueSize:I

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer/chunk/MediaChunk;

    invoke-virtual {v4}, Lcom/google/android/exoplayer/chunk/MediaChunk;->getNextChunkIndex()I

    move-result v14

    goto :goto_4
.end method

.method public final getFormat(I)Lcom/google/android/exoplayer/MediaFormat;
    .locals 1
    .param p1, "track"    # I

    .prologue
    .line 345
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->tracks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/dash/DashChunkSource$ExposedTrack;

    iget-object v0, v0, Lcom/google/android/exoplayer/dash/DashChunkSource$ExposedTrack;->trackFormat:Lcom/google/android/exoplayer/MediaFormat;

    return-object v0
.end method

.method public getTrackCount()I
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->tracks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public maybeThrowError()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 318
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->fatalError:Ljava/io/IOException;

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->fatalError:Ljava/io/IOException;

    throw v0

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->manifestFetcher:Lcom/google/android/exoplayer/util/ManifestFetcher;

    if-eqz v0, :cond_1

    .line 321
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->manifestFetcher:Lcom/google/android/exoplayer/util/ManifestFetcher;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/util/ManifestFetcher;->maybeThrowError()V

    .line 323
    :cond_1
    return-void
.end method

.method protected newMediaChunk(Lcom/google/android/exoplayer/dash/DashChunkSource$PeriodHolder;Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/MediaFormat;Lcom/google/android/exoplayer/dash/DashChunkSource$ExposedTrack;II)Lcom/google/android/exoplayer/chunk/Chunk;
    .locals 28
    .param p1, "periodHolder"    # Lcom/google/android/exoplayer/dash/DashChunkSource$PeriodHolder;
    .param p2, "representationHolder"    # Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;
    .param p3, "dataSource"    # Lcom/google/android/exoplayer/upstream/DataSource;
    .param p4, "mediaFormat"    # Lcom/google/android/exoplayer/MediaFormat;
    .param p5, "enabledTrack"    # Lcom/google/android/exoplayer/dash/DashChunkSource$ExposedTrack;
    .param p6, "segmentNum"    # I
    .param p7, "trigger"    # I

    .prologue
    .line 659
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->representation:Lcom/google/android/exoplayer/dash/mpd/Representation;

    move-object/from16 v23, v0

    .line 660
    .local v23, "representation":Lcom/google/android/exoplayer/dash/mpd/Representation;
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/google/android/exoplayer/dash/mpd/Representation;->format:Lcom/google/android/exoplayer/chunk/Format;

    move-object/from16 v22, v0

    .line 661
    .local v22, "format":Lcom/google/android/exoplayer/chunk/Format;
    move-object/from16 v0, p2

    move/from16 v1, p6

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->getSegmentStartTimeUs(I)J

    move-result-wide v26

    .line 662
    .local v26, "startTimeUs":J
    move-object/from16 v0, p2

    move/from16 v1, p6

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->getSegmentEndTimeUs(I)J

    move-result-wide v10

    .line 663
    .local v10, "endTimeUs":J
    move-object/from16 v0, p2

    move/from16 v1, p6

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->getSegmentUrl(I)Lcom/google/android/exoplayer/dash/mpd/RangedUri;

    move-result-object v24

    .line 664
    .local v24, "segmentUri":Lcom/google/android/exoplayer/dash/mpd/RangedUri;
    new-instance v2, Lcom/google/android/exoplayer/upstream/DataSpec;

    invoke-virtual/range {v24 .. v24}, Lcom/google/android/exoplayer/dash/mpd/RangedUri;->getUri()Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, v24

    iget-wide v4, v0, Lcom/google/android/exoplayer/dash/mpd/RangedUri;->start:J

    move-object/from16 v0, v24

    iget-wide v6, v0, Lcom/google/android/exoplayer/dash/mpd/RangedUri;->length:J

    invoke-virtual/range {v23 .. v23}, Lcom/google/android/exoplayer/dash/mpd/Representation;->getCacheKey()Ljava/lang/String;

    move-result-object v8

    invoke-direct/range {v2 .. v8}, Lcom/google/android/exoplayer/upstream/DataSpec;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    .line 666
    .local v2, "dataSpec":Lcom/google/android/exoplayer/upstream/DataSpec;
    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/google/android/exoplayer/dash/DashChunkSource$PeriodHolder;->startTimeUs:J

    move-object/from16 v0, v23

    iget-wide v6, v0, Lcom/google/android/exoplayer/dash/mpd/Representation;->presentationTimeOffsetUs:J

    sub-long v13, v4, v6

    .line 667
    .local v13, "sampleOffsetUs":J
    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/google/android/exoplayer/chunk/Format;->mimeType:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/exoplayer/dash/DashChunkSource;->mimeTypeIsRawText(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 668
    new-instance v3, Lcom/google/android/exoplayer/chunk/SingleSampleMediaChunk;

    const/4 v6, 0x1

    move-object/from16 v0, p5

    iget-object v13, v0, Lcom/google/android/exoplayer/dash/DashChunkSource$ExposedTrack;->trackFormat:Lcom/google/android/exoplayer/MediaFormat;

    .end local v13    # "sampleOffsetUs":J
    const/4 v14, 0x0

    move-object/from16 v0, p1

    iget v15, v0, Lcom/google/android/exoplayer/dash/DashChunkSource$PeriodHolder;->localIndex:I

    move-object/from16 v4, p3

    move-object v5, v2

    move-object/from16 v7, v22

    move-wide/from16 v8, v26

    move/from16 v12, p6

    invoke-direct/range {v3 .. v15}, Lcom/google/android/exoplayer/chunk/SingleSampleMediaChunk;-><init>(Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/upstream/DataSpec;ILcom/google/android/exoplayer/chunk/Format;JJILcom/google/android/exoplayer/MediaFormat;Lcom/google/android/exoplayer/drm/DrmInitData;I)V

    .line 672
    :goto_0
    return-object v3

    .line 671
    .restart local v13    # "sampleOffsetUs":J
    :cond_0
    if-eqz p4, :cond_1

    const/16 v20, 0x1

    .line 672
    .local v20, "isMediaFormatFinal":Z
    :goto_1
    new-instance v3, Lcom/google/android/exoplayer/chunk/ContainerMediaChunk;

    move-object/from16 v0, p2

    iget-object v15, v0, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->extractorWrapper:Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper;

    move-object/from16 v0, p5

    iget v0, v0, Lcom/google/android/exoplayer/dash/DashChunkSource$ExposedTrack;->adaptiveMaxWidth:I

    move/from16 v17, v0

    move-object/from16 v0, p5

    iget v0, v0, Lcom/google/android/exoplayer/dash/DashChunkSource$ExposedTrack;->adaptiveMaxHeight:I

    move/from16 v18, v0

    .line 674
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer/dash/DashChunkSource$PeriodHolder;->access$200(Lcom/google/android/exoplayer/dash/DashChunkSource$PeriodHolder;)Lcom/google/android/exoplayer/drm/DrmInitData;

    move-result-object v19

    move-object/from16 v0, p1

    iget v0, v0, Lcom/google/android/exoplayer/dash/DashChunkSource$PeriodHolder;->localIndex:I

    move/from16 v21, v0

    move-object/from16 v4, p3

    move-object v5, v2

    move/from16 v6, p7

    move-object/from16 v7, v22

    move-wide/from16 v8, v26

    move/from16 v12, p6

    move-object/from16 v16, p4

    invoke-direct/range {v3 .. v21}, Lcom/google/android/exoplayer/chunk/ContainerMediaChunk;-><init>(Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/upstream/DataSpec;ILcom/google/android/exoplayer/chunk/Format;JJIJLcom/google/android/exoplayer/chunk/ChunkExtractorWrapper;Lcom/google/android/exoplayer/MediaFormat;IILcom/google/android/exoplayer/drm/DrmInitData;ZI)V

    goto :goto_0

    .line 671
    .end local v20    # "isMediaFormatFinal":Z
    :cond_1
    const/16 v20, 0x0

    goto :goto_1
.end method

.method public onChunkLoadCompleted(Lcom/google/android/exoplayer/chunk/Chunk;)V
    .locals 7
    .param p1, "chunk"    # Lcom/google/android/exoplayer/chunk/Chunk;

    .prologue
    .line 531
    instance-of v4, p1, Lcom/google/android/exoplayer/chunk/InitializationChunk;

    if-eqz v4, :cond_0

    move-object v1, p1

    .line 532
    check-cast v1, Lcom/google/android/exoplayer/chunk/InitializationChunk;

    .line 533
    .local v1, "initializationChunk":Lcom/google/android/exoplayer/chunk/InitializationChunk;
    iget-object v4, v1, Lcom/google/android/exoplayer/chunk/InitializationChunk;->format:Lcom/google/android/exoplayer/chunk/Format;

    iget-object v0, v4, Lcom/google/android/exoplayer/chunk/Format;->id:Ljava/lang/String;

    .line 534
    .local v0, "formatId":Ljava/lang/String;
    iget-object v4, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->periodHolders:Landroid/util/SparseArray;

    iget v5, v1, Lcom/google/android/exoplayer/chunk/InitializationChunk;->parentId:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer/dash/DashChunkSource$PeriodHolder;

    .line 535
    .local v2, "periodHolder":Lcom/google/android/exoplayer/dash/DashChunkSource$PeriodHolder;
    if-nez v2, :cond_1

    .line 557
    .end local v0    # "formatId":Ljava/lang/String;
    .end local v1    # "initializationChunk":Lcom/google/android/exoplayer/chunk/InitializationChunk;
    .end local v2    # "periodHolder":Lcom/google/android/exoplayer/dash/DashChunkSource$PeriodHolder;
    :cond_0
    :goto_0
    return-void

    .line 540
    .restart local v0    # "formatId":Ljava/lang/String;
    .restart local v1    # "initializationChunk":Lcom/google/android/exoplayer/chunk/InitializationChunk;
    .restart local v2    # "periodHolder":Lcom/google/android/exoplayer/dash/DashChunkSource$PeriodHolder;
    :cond_1
    iget-object v4, v2, Lcom/google/android/exoplayer/dash/DashChunkSource$PeriodHolder;->representationHolders:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;

    .line 541
    .local v3, "representationHolder":Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;
    invoke-virtual {v1}, Lcom/google/android/exoplayer/chunk/InitializationChunk;->hasFormat()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 542
    invoke-virtual {v1}, Lcom/google/android/exoplayer/chunk/InitializationChunk;->getFormat()Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v4

    iput-object v4, v3, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->mediaFormat:Lcom/google/android/exoplayer/MediaFormat;

    .line 547
    :cond_2
    iget-object v4, v3, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->segmentIndex:Lcom/google/android/exoplayer/dash/DashSegmentIndex;

    if-nez v4, :cond_3

    invoke-virtual {v1}, Lcom/google/android/exoplayer/chunk/InitializationChunk;->hasSeekMap()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 548
    new-instance v5, Lcom/google/android/exoplayer/dash/DashWrappingSegmentIndex;

    invoke-virtual {v1}, Lcom/google/android/exoplayer/chunk/InitializationChunk;->getSeekMap()Lcom/google/android/exoplayer/extractor/SeekMap;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer/extractor/ChunkIndex;

    iget-object v6, v1, Lcom/google/android/exoplayer/chunk/InitializationChunk;->dataSpec:Lcom/google/android/exoplayer/upstream/DataSpec;

    iget-object v6, v6, Lcom/google/android/exoplayer/upstream/DataSpec;->uri:Landroid/net/Uri;

    .line 549
    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v4, v6}, Lcom/google/android/exoplayer/dash/DashWrappingSegmentIndex;-><init>(Lcom/google/android/exoplayer/extractor/ChunkIndex;Ljava/lang/String;)V

    iput-object v5, v3, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->segmentIndex:Lcom/google/android/exoplayer/dash/DashSegmentIndex;

    .line 553
    :cond_3
    invoke-static {v2}, Lcom/google/android/exoplayer/dash/DashChunkSource$PeriodHolder;->access$200(Lcom/google/android/exoplayer/dash/DashChunkSource$PeriodHolder;)Lcom/google/android/exoplayer/drm/DrmInitData;

    move-result-object v4

    if-nez v4, :cond_0

    invoke-virtual {v1}, Lcom/google/android/exoplayer/chunk/InitializationChunk;->hasDrmInitData()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 554
    invoke-virtual {v1}, Lcom/google/android/exoplayer/chunk/InitializationChunk;->getDrmInitData()Lcom/google/android/exoplayer/drm/DrmInitData;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/google/android/exoplayer/dash/DashChunkSource$PeriodHolder;->access$202(Lcom/google/android/exoplayer/dash/DashChunkSource$PeriodHolder;Lcom/google/android/exoplayer/drm/DrmInitData;)Lcom/google/android/exoplayer/drm/DrmInitData;

    goto :goto_0
.end method

.method public onChunkLoadError(Lcom/google/android/exoplayer/chunk/Chunk;Ljava/lang/Exception;)V
    .locals 0
    .param p1, "chunk"    # Lcom/google/android/exoplayer/chunk/Chunk;
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    .line 562
    return-void
.end method

.method public prepare()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 327
    iget-boolean v3, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->prepareCalled:Z

    if-nez v3, :cond_0

    .line 328
    iput-boolean v1, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->prepareCalled:Z

    .line 330
    :try_start_0
    iget-object v3, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->trackSelector:Lcom/google/android/exoplayer/dash/DashTrackSelector;

    iget-object v4, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->currentManifest:Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5, p0}, Lcom/google/android/exoplayer/dash/DashTrackSelector;->selectTracks(Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;ILcom/google/android/exoplayer/dash/DashTrackSelector$Output;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 335
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->fatalError:Ljava/io/IOException;

    if-nez v3, :cond_1

    :goto_1
    return v1

    .line 331
    :catch_0
    move-exception v0

    .line 332
    .local v0, "e":Ljava/io/IOException;
    iput-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->fatalError:Ljava/io/IOException;

    goto :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    move v1, v2

    .line 335
    goto :goto_1
.end method
