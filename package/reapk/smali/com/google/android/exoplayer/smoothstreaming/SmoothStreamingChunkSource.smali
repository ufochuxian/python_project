.class public Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer/chunk/ChunkSource;
.implements Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingTrackSelector$Output;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;
    }
.end annotation


# static fields
.field private static final INITIALIZATION_VECTOR_SIZE:I = 0x8

.field private static final MINIMUM_MANIFEST_REFRESH_PERIOD_MS:I = 0x1388


# instance fields
.field private final adaptiveFormatEvaluator:Lcom/google/android/exoplayer/chunk/FormatEvaluator;

.field private currentManifest:Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;

.field private currentManifestChunkOffset:I

.field private final dataSource:Lcom/google/android/exoplayer/upstream/DataSource;

.field private final drmInitData:Lcom/google/android/exoplayer/drm/DrmInitData$Mapped;

.field private enabledTrack:Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;

.field private final evaluation:Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;

.field private final extractorWrappers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private fatalError:Ljava/io/IOException;

.field private final live:Z

.field private final liveEdgeLatencyUs:J

.field private final manifestFetcher:Lcom/google/android/exoplayer/util/ManifestFetcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer/util/ManifestFetcher",
            "<",
            "Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;",
            ">;"
        }
    .end annotation
.end field

.field private final mediaFormats:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/exoplayer/MediaFormat;",
            ">;"
        }
    .end annotation
.end field

.field private needManifestRefresh:Z

.field private prepareCalled:Z

.field private final trackEncryptionBoxes:[Lcom/google/android/exoplayer/extractor/mp4/TrackEncryptionBox;

.field private final trackSelector:Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingTrackSelector;

.field private final tracks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingTrackSelector;Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/chunk/FormatEvaluator;)V
    .locals 8
    .param p1, "manifest"    # Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;
    .param p2, "trackSelector"    # Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingTrackSelector;
    .param p3, "dataSource"    # Lcom/google/android/exoplayer/upstream/DataSource;
    .param p4, "adaptiveFormatEvaluator"    # Lcom/google/android/exoplayer/chunk/FormatEvaluator;

    .prologue
    .line 128
    const/4 v1, 0x0

    const-wide/16 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;-><init>(Lcom/google/android/exoplayer/util/ManifestFetcher;Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingTrackSelector;Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/chunk/FormatEvaluator;J)V

    .line 129
    return-void
.end method

.method private constructor <init>(Lcom/google/android/exoplayer/util/ManifestFetcher;Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingTrackSelector;Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/chunk/FormatEvaluator;J)V
    .locals 8
    .param p2, "initialManifest"    # Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;
    .param p3, "trackSelector"    # Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingTrackSelector;
    .param p4, "dataSource"    # Lcom/google/android/exoplayer/upstream/DataSource;
    .param p5, "adaptiveFormatEvaluator"    # Lcom/google/android/exoplayer/chunk/FormatEvaluator;
    .param p6, "liveEdgeLatencyMs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer/util/ManifestFetcher",
            "<",
            "Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;",
            ">;",
            "Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;",
            "Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingTrackSelector;",
            "Lcom/google/android/exoplayer/upstream/DataSource;",
            "Lcom/google/android/exoplayer/chunk/FormatEvaluator;",
            "J)V"
        }
    .end annotation

    .prologue
    .local p1, "manifestFetcher":Lcom/google/android/exoplayer/util/ManifestFetcher;, "Lcom/google/android/exoplayer/util/ManifestFetcher<Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;>;"
    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    iput-object p1, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->manifestFetcher:Lcom/google/android/exoplayer/util/ManifestFetcher;

    .line 134
    iput-object p2, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->currentManifest:Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;

    .line 135
    iput-object p3, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->trackSelector:Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingTrackSelector;

    .line 136
    iput-object p4, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->dataSource:Lcom/google/android/exoplayer/upstream/DataSource;

    .line 137
    iput-object p5, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->adaptiveFormatEvaluator:Lcom/google/android/exoplayer/chunk/FormatEvaluator;

    .line 138
    const-wide/16 v2, 0x3e8

    mul-long/2addr v2, p6

    iput-wide v2, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->liveEdgeLatencyUs:J

    .line 139
    new-instance v2, Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;

    invoke-direct {v2}, Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;-><init>()V

    iput-object v2, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->evaluation:Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;

    .line 140
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->tracks:Ljava/util/ArrayList;

    .line 141
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->extractorWrappers:Landroid/util/SparseArray;

    .line 142
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->mediaFormats:Landroid/util/SparseArray;

    .line 143
    iget-boolean v2, p2, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;->isLive:Z

    iput-boolean v2, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->live:Z

    .line 145
    iget-object v1, p2, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;->protectionElement:Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$ProtectionElement;

    .line 146
    .local v1, "protectionElement":Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$ProtectionElement;
    if-eqz v1, :cond_0

    .line 147
    iget-object v2, v1, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$ProtectionElement;->data:[B

    invoke-static {v2}, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->getProtectionElementKeyId([B)[B

    move-result-object v0

    .line 148
    .local v0, "keyId":[B
    new-array v2, v6, [Lcom/google/android/exoplayer/extractor/mp4/TrackEncryptionBox;

    iput-object v2, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->trackEncryptionBoxes:[Lcom/google/android/exoplayer/extractor/mp4/TrackEncryptionBox;

    .line 149
    iget-object v2, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->trackEncryptionBoxes:[Lcom/google/android/exoplayer/extractor/mp4/TrackEncryptionBox;

    const/4 v3, 0x0

    new-instance v4, Lcom/google/android/exoplayer/extractor/mp4/TrackEncryptionBox;

    const/16 v5, 0x8

    invoke-direct {v4, v6, v5, v0}, Lcom/google/android/exoplayer/extractor/mp4/TrackEncryptionBox;-><init>(ZI[B)V

    aput-object v4, v2, v3

    .line 150
    new-instance v2, Lcom/google/android/exoplayer/drm/DrmInitData$Mapped;

    invoke-direct {v2}, Lcom/google/android/exoplayer/drm/DrmInitData$Mapped;-><init>()V

    iput-object v2, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->drmInitData:Lcom/google/android/exoplayer/drm/DrmInitData$Mapped;

    .line 151
    iget-object v2, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->drmInitData:Lcom/google/android/exoplayer/drm/DrmInitData$Mapped;

    iget-object v3, v1, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$ProtectionElement;->uuid:Ljava/util/UUID;

    new-instance v4, Lcom/google/android/exoplayer/drm/DrmInitData$SchemeInitData;

    const-string v5, "video/mp4"

    iget-object v6, v1, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$ProtectionElement;->data:[B

    invoke-direct {v4, v5, v6}, Lcom/google/android/exoplayer/drm/DrmInitData$SchemeInitData;-><init>(Ljava/lang/String;[B)V

    invoke-virtual {v2, v3, v4}, Lcom/google/android/exoplayer/drm/DrmInitData$Mapped;->put(Ljava/util/UUID;Lcom/google/android/exoplayer/drm/DrmInitData$SchemeInitData;)V

    .line 156
    .end local v0    # "keyId":[B
    :goto_0
    return-void

    .line 153
    :cond_0
    iput-object v4, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->trackEncryptionBoxes:[Lcom/google/android/exoplayer/extractor/mp4/TrackEncryptionBox;

    .line 154
    iput-object v4, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->drmInitData:Lcom/google/android/exoplayer/drm/DrmInitData$Mapped;

    goto :goto_0
.end method

.method public constructor <init>(Lcom/google/android/exoplayer/util/ManifestFetcher;Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingTrackSelector;Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/chunk/FormatEvaluator;J)V
    .locals 9
    .param p2, "trackSelector"    # Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingTrackSelector;
    .param p3, "dataSource"    # Lcom/google/android/exoplayer/upstream/DataSource;
    .param p4, "adaptiveFormatEvaluator"    # Lcom/google/android/exoplayer/chunk/FormatEvaluator;
    .param p5, "liveEdgeLatencyMs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer/util/ManifestFetcher",
            "<",
            "Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;",
            ">;",
            "Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingTrackSelector;",
            "Lcom/google/android/exoplayer/upstream/DataSource;",
            "Lcom/google/android/exoplayer/chunk/FormatEvaluator;",
            "J)V"
        }
    .end annotation

    .prologue
    .line 112
    .local p1, "manifestFetcher":Lcom/google/android/exoplayer/util/ManifestFetcher;, "Lcom/google/android/exoplayer/util/ManifestFetcher<Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;>;"
    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ManifestFetcher;->getManifest()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-wide v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;-><init>(Lcom/google/android/exoplayer/util/ManifestFetcher;Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingTrackSelector;Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/chunk/FormatEvaluator;J)V

    .line 113
    return-void
.end method

.method private static getLiveSeekPosition(Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;J)J
    .locals 11
    .param p0, "manifest"    # Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;
    .param p1, "liveEdgeLatencyUs"    # J

    .prologue
    .line 169
    const-wide/high16 v4, -0x8000000000000000L

    .line 170
    .local v4, "liveEdgeTimestampUs":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v6, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;->streamElements:[Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;

    array-length v6, v6

    if-ge v2, v6, :cond_1

    .line 171
    iget-object v6, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;->streamElements:[Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;

    aget-object v3, v6, v2

    .line 172
    .local v3, "streamElement":Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;
    iget v6, v3, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->chunkCount:I

    if-lez v6, :cond_0

    .line 173
    iget v6, v3, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->chunkCount:I

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v3, v6}, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->getStartTimeUs(I)J

    move-result-wide v6

    iget v8, v3, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->chunkCount:I

    add-int/lit8 v8, v8, -0x1

    .line 174
    invoke-virtual {v3, v8}, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->getChunkDurationUs(I)J

    move-result-wide v8

    add-long v0, v6, v8

    .line 175
    .local v0, "elementLiveEdgeTimestampUs":J
    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 170
    .end local v0    # "elementLiveEdgeTimestampUs":J
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 178
    .end local v3    # "streamElement":Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;
    :cond_1
    sub-long v6, v4, p1

    return-wide v6
.end method

.method private static getManifestTrackIndex(Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;Lcom/google/android/exoplayer/chunk/Format;)I
    .locals 5
    .param p0, "element"    # Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;
    .param p1, "format"    # Lcom/google/android/exoplayer/chunk/Format;

    .prologue
    .line 182
    iget-object v1, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->tracks:[Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$TrackElement;

    .line 183
    .local v1, "tracks":[Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$TrackElement;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 184
    aget-object v2, v1, v0

    iget-object v2, v2, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$TrackElement;->format:Lcom/google/android/exoplayer/chunk/Format;

    invoke-virtual {v2, p1}, Lcom/google/android/exoplayer/chunk/Format;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 185
    return v0

    .line 183
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 189
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid format: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static getManifestTrackKey(II)I
    .locals 1
    .param p0, "elementIndex"    # I
    .param p1, "trackIndex"    # I

    .prologue
    const/high16 v0, 0x10000

    .line 204
    if-gt p0, v0, :cond_0

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 205
    shl-int/lit8 v0, p0, 0x10

    or-int/2addr v0, p1

    return v0

    .line 204
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getProtectionElementKeyId([B)[B
    .locals 8
    .param p0, "initData"    # [B

    .prologue
    const/4 v7, 0x0

    .line 209
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 210
    .local v2, "initDataStringBuilder":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v5, p0

    if-ge v0, v5, :cond_0

    .line 211
    aget-byte v5, p0, v0

    int-to-char v5, v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 210
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 213
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 214
    .local v1, "initDataString":Ljava/lang/String;
    const-string v5, "<KID>"

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x5

    const-string v6, "</KID>"

    invoke-virtual {v1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 215
    .local v4, "keyIdString":Ljava/lang/String;
    invoke-static {v4, v7}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    .line 216
    .local v3, "keyId":[B
    const/4 v5, 0x3

    invoke-static {v3, v7, v5}, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->swap([BII)V

    .line 217
    const/4 v5, 0x1

    const/4 v6, 0x2

    invoke-static {v3, v5, v6}, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->swap([BII)V

    .line 218
    const/4 v5, 0x4

    const/4 v6, 0x5

    invoke-static {v3, v5, v6}, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->swap([BII)V

    .line 219
    const/4 v5, 0x6

    const/4 v6, 0x7

    invoke-static {v3, v5, v6}, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->swap([BII)V

    .line 220
    return-object v3
.end method

.method private initManifestTrack(Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;II)Lcom/google/android/exoplayer/MediaFormat;
    .locals 31
    .param p1, "manifest"    # Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;
    .param p2, "elementIndex"    # I
    .param p3, "trackIndex"    # I

    .prologue
    .line 452
    invoke-static/range {p2 .. p3}, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->getManifestTrackKey(II)I

    move-result v28

    .line 453
    .local v28, "manifestTrackKey":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->mediaFormats:Landroid/util/SparseArray;

    move/from16 v0, v28

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/google/android/exoplayer/MediaFormat;

    .line 454
    .local v20, "mediaFormat":Lcom/google/android/exoplayer/MediaFormat;
    if-eqz v20, :cond_0

    move-object/from16 v29, v20

    .line 501
    .end local v20    # "mediaFormat":Lcom/google/android/exoplayer/MediaFormat;
    .local v29, "mediaFormat":Lcom/google/android/exoplayer/MediaFormat;
    :goto_0
    return-object v29

    .line 460
    .end local v29    # "mediaFormat":Lcom/google/android/exoplayer/MediaFormat;
    .restart local v20    # "mediaFormat":Lcom/google/android/exoplayer/MediaFormat;
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->live:Z

    if-eqz v2, :cond_1

    const-wide/16 v6, -0x1

    .line 461
    .local v6, "durationUs":J
    :goto_1
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;->streamElements:[Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;

    aget-object v26, v2, p2

    .line 462
    .local v26, "element":Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;
    move-object/from16 v0, v26

    iget-object v2, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->tracks:[Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$TrackElement;

    aget-object v2, v2, p3

    iget-object v0, v2, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$TrackElement;->format:Lcom/google/android/exoplayer/chunk/Format;

    move-object/from16 v27, v0

    .line 463
    .local v27, "format":Lcom/google/android/exoplayer/chunk/Format;
    move-object/from16 v0, v26

    iget-object v2, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->tracks:[Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$TrackElement;

    aget-object v2, v2, p3

    iget-object v0, v2, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$TrackElement;->csd:[[B

    move-object/from16 v25, v0

    .line 465
    .local v25, "csdArray":[[B
    move-object/from16 v0, v26

    iget v2, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->type:I

    packed-switch v2, :pswitch_data_0

    .line 488
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v26

    iget v4, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->type:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 460
    .end local v6    # "durationUs":J
    .end local v25    # "csdArray":[[B
    .end local v26    # "element":Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;
    .end local v27    # "format":Lcom/google/android/exoplayer/chunk/Format;
    :cond_1
    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;->durationUs:J

    goto :goto_1

    .line 467
    .restart local v6    # "durationUs":J
    .restart local v25    # "csdArray":[[B
    .restart local v26    # "element":Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;
    .restart local v27    # "format":Lcom/google/android/exoplayer/chunk/Format;
    :pswitch_0
    move-object/from16 v0, v27

    iget-object v2, v0, Lcom/google/android/exoplayer/chunk/Format;->id:Ljava/lang/String;

    move-object/from16 v0, v27

    iget-object v3, v0, Lcom/google/android/exoplayer/chunk/Format;->mimeType:Ljava/lang/String;

    move-object/from16 v0, v27

    iget v4, v0, Lcom/google/android/exoplayer/chunk/Format;->bitrate:I

    const/4 v5, -0x1

    move-object/from16 v0, v27

    iget v8, v0, Lcom/google/android/exoplayer/chunk/Format;->width:I

    move-object/from16 v0, v27

    iget v9, v0, Lcom/google/android/exoplayer/chunk/Format;->height:I

    .line 468
    invoke-static/range {v25 .. v25}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    .line 467
    invoke-static/range {v2 .. v10}, Lcom/google/android/exoplayer/MediaFormat;->createVideoFormat(Ljava/lang/String;Ljava/lang/String;IIJIILjava/util/List;)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v20

    .line 469
    sget v13, Lcom/google/android/exoplayer/extractor/mp4/Track;->TYPE_vide:I

    .line 492
    .local v13, "mp4TrackType":I
    :goto_2
    new-instance v30, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;

    const/4 v2, 0x3

    move-object/from16 v0, v30

    invoke-direct {v0, v2}, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;-><init>(I)V

    .line 494
    .local v30, "mp4Extractor":Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;
    new-instance v11, Lcom/google/android/exoplayer/extractor/mp4/Track;

    move-object/from16 v0, v26

    iget-wide v14, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->timescale:J

    const-wide/16 v16, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->trackEncryptionBoxes:[Lcom/google/android/exoplayer/extractor/mp4/TrackEncryptionBox;

    move-object/from16 v21, v0

    sget v2, Lcom/google/android/exoplayer/extractor/mp4/Track;->TYPE_vide:I

    if-ne v13, v2, :cond_3

    const/16 v22, 0x4

    :goto_3
    const/16 v23, 0x0

    const/16 v24, 0x0

    move/from16 v12, p3

    move-wide/from16 v18, v6

    invoke-direct/range {v11 .. v24}, Lcom/google/android/exoplayer/extractor/mp4/Track;-><init>(IIJJJLcom/google/android/exoplayer/MediaFormat;[Lcom/google/android/exoplayer/extractor/mp4/TrackEncryptionBox;I[J[J)V

    .line 496
    .local v11, "mp4Track":Lcom/google/android/exoplayer/extractor/mp4/Track;
    move-object/from16 v0, v30

    invoke-virtual {v0, v11}, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->setTrack(Lcom/google/android/exoplayer/extractor/mp4/Track;)V

    .line 499
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->mediaFormats:Landroid/util/SparseArray;

    move/from16 v0, v28

    move-object/from16 v1, v20

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 500
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->extractorWrappers:Landroid/util/SparseArray;

    new-instance v3, Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper;

    move-object/from16 v0, v30

    invoke-direct {v3, v0}, Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper;-><init>(Lcom/google/android/exoplayer/extractor/Extractor;)V

    move/from16 v0, v28

    invoke-virtual {v2, v0, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object/from16 v29, v20

    .line 501
    .end local v20    # "mediaFormat":Lcom/google/android/exoplayer/MediaFormat;
    .restart local v29    # "mediaFormat":Lcom/google/android/exoplayer/MediaFormat;
    goto/16 :goto_0

    .line 473
    .end local v11    # "mp4Track":Lcom/google/android/exoplayer/extractor/mp4/Track;
    .end local v13    # "mp4TrackType":I
    .end local v29    # "mediaFormat":Lcom/google/android/exoplayer/MediaFormat;
    .end local v30    # "mp4Extractor":Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;
    .restart local v20    # "mediaFormat":Lcom/google/android/exoplayer/MediaFormat;
    :pswitch_1
    if-eqz v25, :cond_2

    .line 474
    invoke-static/range {v25 .. v25}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    .line 479
    .local v10, "csd":Ljava/util/List;, "Ljava/util/List<[B>;"
    :goto_4
    move-object/from16 v0, v27

    iget-object v2, v0, Lcom/google/android/exoplayer/chunk/Format;->id:Ljava/lang/String;

    move-object/from16 v0, v27

    iget-object v3, v0, Lcom/google/android/exoplayer/chunk/Format;->mimeType:Ljava/lang/String;

    move-object/from16 v0, v27

    iget v4, v0, Lcom/google/android/exoplayer/chunk/Format;->bitrate:I

    const/4 v5, -0x1

    move-object/from16 v0, v27

    iget v8, v0, Lcom/google/android/exoplayer/chunk/Format;->audioChannels:I

    move-object/from16 v0, v27

    iget v9, v0, Lcom/google/android/exoplayer/chunk/Format;->audioSamplingRate:I

    move-object/from16 v0, v27

    iget-object v11, v0, Lcom/google/android/exoplayer/chunk/Format;->language:Ljava/lang/String;

    invoke-static/range {v2 .. v11}, Lcom/google/android/exoplayer/MediaFormat;->createAudioFormat(Ljava/lang/String;Ljava/lang/String;IIJIILjava/util/List;Ljava/lang/String;)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v20

    .line 481
    sget v13, Lcom/google/android/exoplayer/extractor/mp4/Track;->TYPE_soun:I

    .line 482
    .restart local v13    # "mp4TrackType":I
    goto :goto_2

    .line 476
    .end local v10    # "csd":Ljava/util/List;, "Ljava/util/List<[B>;"
    .end local v13    # "mp4TrackType":I
    :cond_2
    move-object/from16 v0, v27

    iget v2, v0, Lcom/google/android/exoplayer/chunk/Format;->audioSamplingRate:I

    move-object/from16 v0, v27

    iget v3, v0, Lcom/google/android/exoplayer/chunk/Format;->audioChannels:I

    .line 477
    invoke-static {v2, v3}, Lcom/google/android/exoplayer/util/CodecSpecificDataUtil;->buildAacAudioSpecificConfig(II)[B

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    .restart local v10    # "csd":Ljava/util/List;, "Ljava/util/List<[B>;"
    goto :goto_4

    .line 484
    .end local v10    # "csd":Ljava/util/List;, "Ljava/util/List<[B>;"
    :pswitch_2
    move-object/from16 v0, v27

    iget-object v3, v0, Lcom/google/android/exoplayer/chunk/Format;->id:Ljava/lang/String;

    move-object/from16 v0, v27

    iget-object v4, v0, Lcom/google/android/exoplayer/chunk/Format;->mimeType:Ljava/lang/String;

    move-object/from16 v0, v27

    iget v5, v0, Lcom/google/android/exoplayer/chunk/Format;->bitrate:I

    move-object/from16 v0, v27

    iget-object v8, v0, Lcom/google/android/exoplayer/chunk/Format;->language:Ljava/lang/String;

    invoke-static/range {v3 .. v8}, Lcom/google/android/exoplayer/MediaFormat;->createTextFormat(Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v20

    .line 485
    sget v13, Lcom/google/android/exoplayer/extractor/mp4/Track;->TYPE_text:I

    .line 486
    .restart local v13    # "mp4TrackType":I
    goto/16 :goto_2

    .line 494
    .restart local v30    # "mp4Extractor":Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;
    :cond_3
    const/16 v22, -0x1

    goto :goto_3

    .line 465
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private static newMediaChunk(Lcom/google/android/exoplayer/chunk/Format;Landroid/net/Uri;Ljava/lang/String;Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper;Lcom/google/android/exoplayer/drm/DrmInitData;Lcom/google/android/exoplayer/upstream/DataSource;IJJILcom/google/android/exoplayer/MediaFormat;II)Lcom/google/android/exoplayer/chunk/MediaChunk;
    .locals 25
    .param p0, "formatInfo"    # Lcom/google/android/exoplayer/chunk/Format;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "cacheKey"    # Ljava/lang/String;
    .param p3, "extractorWrapper"    # Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper;
    .param p4, "drmInitData"    # Lcom/google/android/exoplayer/drm/DrmInitData;
    .param p5, "dataSource"    # Lcom/google/android/exoplayer/upstream/DataSource;
    .param p6, "chunkIndex"    # I
    .param p7, "chunkStartTimeUs"    # J
    .param p9, "chunkEndTimeUs"    # J
    .param p11, "trigger"    # I
    .param p12, "mediaFormat"    # Lcom/google/android/exoplayer/MediaFormat;
    .param p13, "adaptiveMaxWidth"    # I
    .param p14, "adaptiveMaxHeight"    # I

    .prologue
    .line 195
    const-wide/16 v2, 0x0

    .line 196
    .local v2, "offset":J
    new-instance v0, Lcom/google/android/exoplayer/upstream/DataSpec;

    const-wide/16 v4, -0x1

    move-object/from16 v1, p1

    move-object/from16 v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer/upstream/DataSpec;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    .line 199
    .local v0, "dataSpec":Lcom/google/android/exoplayer/upstream/DataSpec;
    new-instance v5, Lcom/google/android/exoplayer/chunk/ContainerMediaChunk;

    const/16 v22, 0x1

    const/16 v23, -0x1

    move-object/from16 v6, p5

    move-object v7, v0

    move/from16 v8, p11

    move-object/from16 v9, p0

    move-wide/from16 v10, p7

    move-wide/from16 v12, p9

    move/from16 v14, p6

    move-wide/from16 v15, p7

    move-object/from16 v17, p3

    move-object/from16 v18, p12

    move/from16 v19, p13

    move/from16 v20, p14

    move-object/from16 v21, p4

    invoke-direct/range {v5 .. v23}, Lcom/google/android/exoplayer/chunk/ContainerMediaChunk;-><init>(Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/upstream/DataSpec;ILcom/google/android/exoplayer/chunk/Format;JJIJLcom/google/android/exoplayer/chunk/ChunkExtractorWrapper;Lcom/google/android/exoplayer/MediaFormat;IILcom/google/android/exoplayer/drm/DrmInitData;ZI)V

    return-object v5
.end method

.method private static swap([BII)V
    .locals 2
    .param p0, "data"    # [B
    .param p1, "firstPosition"    # I
    .param p2, "secondPosition"    # I

    .prologue
    .line 224
    aget-byte v0, p0, p1

    .line 225
    .local v0, "temp":B
    aget-byte v1, p0, p2

    aput-byte v1, p0, p1

    .line 226
    aput-byte v0, p0, p2

    .line 227
    return-void
.end method


# virtual methods
.method public adaptiveTrack(Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;I[I)V
    .locals 12
    .param p1, "manifest"    # Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;
    .param p2, "element"    # I
    .param p3, "trackIndices"    # [I

    .prologue
    .line 420
    iget-object v0, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->adaptiveFormatEvaluator:Lcom/google/android/exoplayer/chunk/FormatEvaluator;

    if-nez v0, :cond_0

    .line 442
    :goto_0
    return-void

    .line 424
    :cond_0
    const/4 v8, 0x0

    .line 425
    .local v8, "maxHeightMediaFormat":Lcom/google/android/exoplayer/MediaFormat;
    iget-object v0, p1, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;->streamElements:[Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;

    aget-object v10, v0, p2

    .line 426
    .local v10, "streamElement":Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;
    const/4 v4, -0x1

    .line 427
    .local v4, "maxWidth":I
    const/4 v5, -0x1

    .line 428
    .local v5, "maxHeight":I
    array-length v0, p3

    new-array v3, v0, [Lcom/google/android/exoplayer/chunk/Format;

    .line 429
    .local v3, "formats":[Lcom/google/android/exoplayer/chunk/Format;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    array-length v0, v3

    if-ge v6, v0, :cond_3

    .line 430
    aget v7, p3, v6

    .line 431
    .local v7, "manifestTrackIndex":I
    iget-object v0, v10, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->tracks:[Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$TrackElement;

    aget-object v0, v0, v7

    iget-object v0, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$TrackElement;->format:Lcom/google/android/exoplayer/chunk/Format;

    aput-object v0, v3, v6

    .line 432
    invoke-direct {p0, p1, p2, v7}, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->initManifestTrack(Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;II)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v9

    .line 433
    .local v9, "mediaFormat":Lcom/google/android/exoplayer/MediaFormat;
    if-eqz v8, :cond_1

    iget v0, v9, Lcom/google/android/exoplayer/MediaFormat;->height:I

    if-le v0, v5, :cond_2

    .line 434
    :cond_1
    move-object v8, v9

    .line 436
    :cond_2
    iget v0, v9, Lcom/google/android/exoplayer/MediaFormat;->width:I

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 437
    iget v0, v9, Lcom/google/android/exoplayer/MediaFormat;->height:I

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 429
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 439
    .end local v7    # "manifestTrackIndex":I
    .end local v9    # "mediaFormat":Lcom/google/android/exoplayer/MediaFormat;
    :cond_3
    new-instance v0, Lcom/google/android/exoplayer/chunk/Format$DecreasingBandwidthComparator;

    invoke-direct {v0}, Lcom/google/android/exoplayer/chunk/Format$DecreasingBandwidthComparator;-><init>()V

    invoke-static {v3, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 440
    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Lcom/google/android/exoplayer/MediaFormat;->copyAsAdaptive(Ljava/lang/String;)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v1

    .line 441
    .local v1, "adaptiveMediaFormat":Lcom/google/android/exoplayer/MediaFormat;
    iget-object v11, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->tracks:Ljava/util/ArrayList;

    new-instance v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;-><init>(Lcom/google/android/exoplayer/MediaFormat;I[Lcom/google/android/exoplayer/chunk/Format;II)V

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public continueBuffering(J)V
    .locals 14
    .param p1, "playbackPositionUs"    # J

    .prologue
    .line 276
    iget-object v8, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->manifestFetcher:Lcom/google/android/exoplayer/util/ManifestFetcher;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->currentManifest:Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;

    iget-boolean v8, v8, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;->isLive:Z

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->fatalError:Ljava/io/IOException;

    if-eqz v8, :cond_1

    .line 308
    :cond_0
    :goto_0
    return-void

    .line 280
    :cond_1
    iget-object v8, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->manifestFetcher:Lcom/google/android/exoplayer/util/ManifestFetcher;

    invoke-virtual {v8}, Lcom/google/android/exoplayer/util/ManifestFetcher;->getManifest()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;

    .line 281
    .local v5, "newManifest":Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;
    iget-object v8, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->currentManifest:Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;

    if-eq v8, v5, :cond_3

    if-eqz v5, :cond_3

    .line 282
    iget-object v8, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->currentManifest:Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;

    iget-object v8, v8, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;->streamElements:[Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;

    iget-object v9, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->enabledTrack:Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;

    invoke-static {v9}, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;->access$000(Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;)I

    move-result v9

    aget-object v0, v8, v9

    .line 283
    .local v0, "currentElement":Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;
    iget v1, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->chunkCount:I

    .line 284
    .local v1, "currentElementChunkCount":I
    iget-object v8, v5, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;->streamElements:[Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;

    iget-object v9, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->enabledTrack:Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;

    invoke-static {v9}, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;->access$000(Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;)I

    move-result v9

    aget-object v4, v8, v9

    .line 285
    .local v4, "newElement":Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;
    if-eqz v1, :cond_2

    iget v8, v4, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->chunkCount:I

    if-nez v8, :cond_4

    .line 287
    :cond_2
    iget v8, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->currentManifestChunkOffset:I

    add-int/2addr v8, v1

    iput v8, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->currentManifestChunkOffset:I

    .line 300
    :goto_1
    iput-object v5, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->currentManifest:Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;

    .line 301
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->needManifestRefresh:Z

    .line 304
    .end local v0    # "currentElement":Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;
    .end local v1    # "currentElementChunkCount":I
    .end local v4    # "newElement":Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;
    :cond_3
    iget-boolean v8, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->needManifestRefresh:Z

    if-eqz v8, :cond_0

    .line 305
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    iget-object v10, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->manifestFetcher:Lcom/google/android/exoplayer/util/ManifestFetcher;

    invoke-virtual {v10}, Lcom/google/android/exoplayer/util/ManifestFetcher;->getManifestLoadStartTimestamp()J

    move-result-wide v10

    const-wide/16 v12, 0x1388

    add-long/2addr v10, v12

    cmp-long v8, v8, v10

    if-lez v8, :cond_0

    .line 306
    iget-object v8, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->manifestFetcher:Lcom/google/android/exoplayer/util/ManifestFetcher;

    invoke-virtual {v8}, Lcom/google/android/exoplayer/util/ManifestFetcher;->requestRefresh()V

    goto :goto_0

    .line 289
    .restart local v0    # "currentElement":Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;
    .restart local v1    # "currentElementChunkCount":I
    .restart local v4    # "newElement":Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;
    :cond_4
    add-int/lit8 v8, v1, -0x1

    invoke-virtual {v0, v8}, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->getStartTimeUs(I)J

    move-result-wide v8

    add-int/lit8 v10, v1, -0x1

    .line 290
    invoke-virtual {v0, v10}, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->getChunkDurationUs(I)J

    move-result-wide v10

    add-long v2, v8, v10

    .line 291
    .local v2, "currentElementEndTimeUs":J
    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->getStartTimeUs(I)J

    move-result-wide v6

    .line 292
    .local v6, "newElementStartTimeUs":J
    cmp-long v8, v2, v6

    if-gtz v8, :cond_5

    .line 294
    iget v8, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->currentManifestChunkOffset:I

    add-int/2addr v8, v1

    iput v8, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->currentManifestChunkOffset:I

    goto :goto_1

    .line 297
    :cond_5
    iget v8, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->currentManifestChunkOffset:I

    invoke-virtual {v0, v6, v7}, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->getChunkIndex(J)I

    move-result v9

    add-int/2addr v8, v9

    iput v8, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->currentManifestChunkOffset:I

    goto :goto_1
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

    .line 408
    iget-object v0, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->enabledTrack:Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;->isAdaptive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 409
    iget-object v0, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->adaptiveFormatEvaluator:Lcom/google/android/exoplayer/chunk/FormatEvaluator;

    invoke-interface {v0}, Lcom/google/android/exoplayer/chunk/FormatEvaluator;->disable()V

    .line 411
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->manifestFetcher:Lcom/google/android/exoplayer/util/ManifestFetcher;

    if-eqz v0, :cond_1

    .line 412
    iget-object v0, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->manifestFetcher:Lcom/google/android/exoplayer/util/ManifestFetcher;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/util/ManifestFetcher;->disable()V

    .line 414
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->evaluation:Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;

    iput-object v1, v0, Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;->format:Lcom/google/android/exoplayer/chunk/Format;

    .line 415
    iput-object v1, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->fatalError:Ljava/io/IOException;

    .line 416
    return-void
.end method

.method public enable(I)V
    .locals 1
    .param p1, "track"    # I

    .prologue
    .line 265
    iget-object v0, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->tracks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;

    iput-object v0, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->enabledTrack:Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;

    .line 266
    iget-object v0, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->enabledTrack:Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;->isAdaptive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->adaptiveFormatEvaluator:Lcom/google/android/exoplayer/chunk/FormatEvaluator;

    invoke-interface {v0}, Lcom/google/android/exoplayer/chunk/FormatEvaluator;->enable()V

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->manifestFetcher:Lcom/google/android/exoplayer/util/ManifestFetcher;

    if-eqz v0, :cond_1

    .line 270
    iget-object v0, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->manifestFetcher:Lcom/google/android/exoplayer/util/ManifestFetcher;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/util/ManifestFetcher;->enable()V

    .line 272
    :cond_1
    return-void
.end method

.method public fixedTrack(Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;II)V
    .locals 4
    .param p1, "manifest"    # Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;
    .param p2, "element"    # I
    .param p3, "trackIndex"    # I

    .prologue
    .line 446
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->initManifestTrack(Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;II)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v1

    .line 447
    .local v1, "mediaFormat":Lcom/google/android/exoplayer/MediaFormat;
    iget-object v2, p1, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;->streamElements:[Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;

    aget-object v2, v2, p2

    iget-object v2, v2, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->tracks:[Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$TrackElement;

    aget-object v2, v2, p3

    iget-object v0, v2, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$TrackElement;->format:Lcom/google/android/exoplayer/chunk/Format;

    .line 448
    .local v0, "format":Lcom/google/android/exoplayer/chunk/Format;
    iget-object v2, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->tracks:Ljava/util/ArrayList;

    new-instance v3, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;

    invoke-direct {v3, v1, p2, v0}, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;-><init>(Lcom/google/android/exoplayer/MediaFormat;ILcom/google/android/exoplayer/chunk/Format;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 449
    return-void
.end method

.method public final getChunkOperation(Ljava/util/List;JLcom/google/android/exoplayer/chunk/ChunkOperationHolder;)V
    .locals 28
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
    .line 314
    .local p1, "queue":Ljava/util/List;, "Ljava/util/List<+Lcom/google/android/exoplayer/chunk/MediaChunk;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->fatalError:Ljava/io/IOException;

    if-eqz v4, :cond_1

    .line 315
    const/4 v4, 0x0

    move-object/from16 v0, p4

    iput-object v4, v0, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->chunk:Lcom/google/android/exoplayer/chunk/Chunk;

    .line 394
    :cond_0
    :goto_0
    return-void

    .line 319
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->evaluation:Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v7

    iput v7, v4, Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;->queueSize:I

    .line 320
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->enabledTrack:Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;

    invoke-virtual {v4}, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;->isAdaptive()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 321
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->adaptiveFormatEvaluator:Lcom/google/android/exoplayer/chunk/FormatEvaluator;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->enabledTrack:Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;

    invoke-static {v7}, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;->access$100(Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;)[Lcom/google/android/exoplayer/chunk/Format;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->evaluation:Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;

    move-object/from16 v5, p1

    move-wide/from16 v6, p2

    invoke-interface/range {v4 .. v9}, Lcom/google/android/exoplayer/chunk/FormatEvaluator;->evaluate(Ljava/util/List;J[Lcom/google/android/exoplayer/chunk/Format;Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;)V

    .line 327
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->evaluation:Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;

    iget-object v5, v4, Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;->format:Lcom/google/android/exoplayer/chunk/Format;

    .line 328
    .local v5, "selectedFormat":Lcom/google/android/exoplayer/chunk/Format;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->evaluation:Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;

    iget v4, v4, Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;->queueSize:I

    move-object/from16 v0, p4

    iput v4, v0, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->queueSize:I

    .line 330
    if-nez v5, :cond_3

    .line 331
    const/4 v4, 0x0

    move-object/from16 v0, p4

    iput-object v4, v0, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->chunk:Lcom/google/android/exoplayer/chunk/Chunk;

    goto :goto_0

    .line 323
    .end local v5    # "selectedFormat":Lcom/google/android/exoplayer/chunk/Format;
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->evaluation:Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->enabledTrack:Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;

    invoke-static {v7}, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;->access$200(Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;)Lcom/google/android/exoplayer/chunk/Format;

    move-result-object v7

    iput-object v7, v4, Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;->format:Lcom/google/android/exoplayer/chunk/Format;

    .line 324
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->evaluation:Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;

    const/4 v7, 0x2

    iput v7, v4, Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;->trigger:I

    goto :goto_1

    .line 333
    .restart local v5    # "selectedFormat":Lcom/google/android/exoplayer/chunk/Format;
    :cond_3
    move-object/from16 v0, p4

    iget v4, v0, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->queueSize:I

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v7

    if-ne v4, v7, :cond_4

    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->chunk:Lcom/google/android/exoplayer/chunk/Chunk;

    if-eqz v4, :cond_4

    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->chunk:Lcom/google/android/exoplayer/chunk/Chunk;

    iget-object v4, v4, Lcom/google/android/exoplayer/chunk/Chunk;->format:Lcom/google/android/exoplayer/chunk/Format;

    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer/chunk/Format;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 340
    :cond_4
    const/4 v4, 0x0

    move-object/from16 v0, p4

    iput-object v4, v0, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->chunk:Lcom/google/android/exoplayer/chunk/Chunk;

    .line 342
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->currentManifest:Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;

    iget-object v4, v4, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;->streamElements:[Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->enabledTrack:Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;

    invoke-static {v7}, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;->access$000(Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;)I

    move-result v7

    aget-object v26, v4, v7

    .line 343
    .local v26, "streamElement":Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;
    move-object/from16 v0, v26

    iget v4, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->chunkCount:I

    if-nez v4, :cond_6

    .line 344
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->currentManifest:Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;

    iget-boolean v4, v4, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;->isLive:Z

    if-eqz v4, :cond_5

    .line 345
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->needManifestRefresh:Z

    goto/16 :goto_0

    .line 347
    :cond_5
    const/4 v4, 0x1

    move-object/from16 v0, p4

    iput-boolean v4, v0, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->endOfStream:Z

    goto/16 :goto_0

    .line 353
    :cond_6
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 354
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->live:Z

    if-eqz v4, :cond_7

    .line 355
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->currentManifest:Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->liveEdgeLatencyUs:J

    invoke-static {v4, v8, v9}, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->getLiveSeekPosition(Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;J)J

    move-result-wide p2

    .line 357
    :cond_7
    move-object/from16 v0, v26

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->getChunkIndex(J)I

    move-result v20

    .line 363
    .local v20, "chunkIndex":I
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->live:Z

    if-eqz v4, :cond_9

    if-gez v20, :cond_9

    .line 365
    new-instance v4, Lcom/google/android/exoplayer/BehindLiveWindowException;

    invoke-direct {v4}, Lcom/google/android/exoplayer/BehindLiveWindowException;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->fatalError:Ljava/io/IOException;

    goto/16 :goto_0

    .line 359
    .end local v20    # "chunkIndex":I
    :cond_8
    move-object/from16 v0, p4

    iget v4, v0, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->queueSize:I

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/google/android/exoplayer/chunk/MediaChunk;

    .line 360
    .local v25, "previous":Lcom/google/android/exoplayer/chunk/MediaChunk;
    move-object/from16 v0, v25

    iget v4, v0, Lcom/google/android/exoplayer/chunk/MediaChunk;->chunkIndex:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iget v7, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->currentManifestChunkOffset:I

    sub-int v20, v4, v7

    .restart local v20    # "chunkIndex":I
    goto :goto_2

    .line 367
    .end local v25    # "previous":Lcom/google/android/exoplayer/chunk/MediaChunk;
    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->currentManifest:Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;

    iget-boolean v4, v4, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;->isLive:Z

    if-eqz v4, :cond_c

    .line 368
    move-object/from16 v0, v26

    iget v4, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->chunkCount:I

    move/from16 v0, v20

    if-lt v0, v4, :cond_a

    .line 370
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->needManifestRefresh:Z

    goto/16 :goto_0

    .line 372
    :cond_a
    move-object/from16 v0, v26

    iget v4, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->chunkCount:I

    add-int/lit8 v4, v4, -0x1

    move/from16 v0, v20

    if-ne v0, v4, :cond_b

    .line 375
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->needManifestRefresh:Z

    .line 382
    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->currentManifest:Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;

    iget-boolean v4, v4, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;->isLive:Z

    if-nez v4, :cond_d

    move-object/from16 v0, v26

    iget v4, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->chunkCount:I

    add-int/lit8 v4, v4, -0x1

    move/from16 v0, v20

    if-ne v0, v4, :cond_d

    const/16 v21, 0x1

    .line 383
    .local v21, "isLastChunk":Z
    :goto_3
    move-object/from16 v0, v26

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->getStartTimeUs(I)J

    move-result-wide v12

    .line 384
    .local v12, "chunkStartTimeUs":J
    if-eqz v21, :cond_e

    const-wide/16 v14, -0x1

    .line 385
    .local v14, "chunkEndTimeUs":J
    :goto_4
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->currentManifestChunkOffset:I

    add-int v11, v20, v4

    .line 387
    .local v11, "currentAbsoluteChunkIndex":I
    move-object/from16 v0, v26

    invoke-static {v0, v5}, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->getManifestTrackIndex(Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;Lcom/google/android/exoplayer/chunk/Format;)I

    move-result v22

    .line 388
    .local v22, "manifestTrackIndex":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->enabledTrack:Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;

    invoke-static {v4}, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;->access$000(Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;)I

    move-result v4

    move/from16 v0, v22

    invoke-static {v4, v0}, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->getManifestTrackKey(II)I

    move-result v23

    .line 389
    .local v23, "manifestTrackKey":I
    move-object/from16 v0, v26

    move/from16 v1, v22

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->buildRequestUri(II)Landroid/net/Uri;

    move-result-object v6

    .line 390
    .local v6, "uri":Landroid/net/Uri;
    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->extractorWrappers:Landroid/util/SparseArray;

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->drmInitData:Lcom/google/android/exoplayer/drm/DrmInitData$Mapped;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->dataSource:Lcom/google/android/exoplayer/upstream/DataSource;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->evaluation:Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;

    iget v0, v4, Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;->trigger:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->mediaFormats:Landroid/util/SparseArray;

    .line 391
    move/from16 v0, v23

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/google/android/exoplayer/MediaFormat;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->enabledTrack:Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;

    .line 392
    invoke-static {v4}, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;->access$300(Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;)I

    move-result v18

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->enabledTrack:Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;

    invoke-static {v4}, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;->access$400(Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;)I

    move-result v19

    .line 390
    invoke-static/range {v5 .. v19}, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->newMediaChunk(Lcom/google/android/exoplayer/chunk/Format;Landroid/net/Uri;Ljava/lang/String;Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper;Lcom/google/android/exoplayer/drm/DrmInitData;Lcom/google/android/exoplayer/upstream/DataSource;IJJILcom/google/android/exoplayer/MediaFormat;II)Lcom/google/android/exoplayer/chunk/MediaChunk;

    move-result-object v24

    .line 393
    .local v24, "mediaChunk":Lcom/google/android/exoplayer/chunk/Chunk;
    move-object/from16 v0, v24

    move-object/from16 v1, p4

    iput-object v0, v1, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->chunk:Lcom/google/android/exoplayer/chunk/Chunk;

    goto/16 :goto_0

    .line 377
    .end local v6    # "uri":Landroid/net/Uri;
    .end local v11    # "currentAbsoluteChunkIndex":I
    .end local v12    # "chunkStartTimeUs":J
    .end local v14    # "chunkEndTimeUs":J
    .end local v21    # "isLastChunk":Z
    .end local v22    # "manifestTrackIndex":I
    .end local v23    # "manifestTrackKey":I
    .end local v24    # "mediaChunk":Lcom/google/android/exoplayer/chunk/Chunk;
    :cond_c
    move-object/from16 v0, v26

    iget v4, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->chunkCount:I

    move/from16 v0, v20

    if-lt v0, v4, :cond_b

    .line 378
    const/4 v4, 0x1

    move-object/from16 v0, p4

    iput-boolean v4, v0, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->endOfStream:Z

    goto/16 :goto_0

    .line 382
    :cond_d
    const/16 v21, 0x0

    goto/16 :goto_3

    .line 384
    .restart local v12    # "chunkStartTimeUs":J
    .restart local v21    # "isLastChunk":Z
    :cond_e
    move-object/from16 v0, v26

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->getChunkDurationUs(I)J

    move-result-wide v8

    add-long v14, v12, v8

    goto/16 :goto_4
.end method

.method public final getFormat(I)Lcom/google/android/exoplayer/MediaFormat;
    .locals 1
    .param p1, "track"    # I

    .prologue
    .line 258
    iget-object v0, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->tracks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;

    iget-object v0, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;->trackFormat:Lcom/google/android/exoplayer/MediaFormat;

    return-object v0
.end method

.method public getTrackCount()I
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->tracks:Ljava/util/ArrayList;

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
    .line 231
    iget-object v0, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->fatalError:Ljava/io/IOException;

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->fatalError:Ljava/io/IOException;

    throw v0

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->manifestFetcher:Lcom/google/android/exoplayer/util/ManifestFetcher;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/util/ManifestFetcher;->maybeThrowError()V

    .line 236
    return-void
.end method

.method public onChunkLoadCompleted(Lcom/google/android/exoplayer/chunk/Chunk;)V
    .locals 0
    .param p1, "chunk"    # Lcom/google/android/exoplayer/chunk/Chunk;

    .prologue
    .line 399
    return-void
.end method

.method public onChunkLoadError(Lcom/google/android/exoplayer/chunk/Chunk;Ljava/lang/Exception;)V
    .locals 0
    .param p1, "chunk"    # Lcom/google/android/exoplayer/chunk/Chunk;
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    .line 404
    return-void
.end method

.method public prepare()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 240
    iget-boolean v2, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->prepareCalled:Z

    if-nez v2, :cond_0

    .line 241
    iput-boolean v1, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->prepareCalled:Z

    .line 243
    :try_start_0
    iget-object v2, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->trackSelector:Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingTrackSelector;

    iget-object v3, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->currentManifest:Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;

    invoke-interface {v2, v3, p0}, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingTrackSelector;->selectTracks(Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingTrackSelector$Output;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->fatalError:Ljava/io/IOException;

    if-nez v2, :cond_1

    :goto_1
    return v1

    .line 244
    :catch_0
    move-exception v0

    .line 245
    .local v0, "e":Ljava/io/IOException;
    iput-object v0, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->fatalError:Ljava/io/IOException;

    goto :goto_0

    .line 248
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method
