.class public final Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer/extractor/ExtractorOutput;
.implements Lcom/google/android/exoplayer/extractor/TrackOutput;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper$SingleTrackOutput;
    }
.end annotation


# instance fields
.field private final extractor:Lcom/google/android/exoplayer/extractor/Extractor;

.field private extractorInitialized:Z

.field private output:Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper$SingleTrackOutput;

.field private seenTrack:Z


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer/extractor/Extractor;)V
    .locals 0
    .param p1, "extractor"    # Lcom/google/android/exoplayer/extractor/Extractor;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper;->extractor:Lcom/google/android/exoplayer/extractor/Extractor;

    .line 49
    return-void
.end method


# virtual methods
.method public drmInitData(Lcom/google/android/exoplayer/drm/DrmInitData;)V
    .locals 1
    .param p1, "drmInitData"    # Lcom/google/android/exoplayer/drm/DrmInitData;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper;->output:Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper$SingleTrackOutput;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper$SingleTrackOutput;->drmInitData(Lcom/google/android/exoplayer/drm/DrmInitData;)V

    .line 105
    return-void
.end method

.method public endTracks()V
    .locals 1

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper;->seenTrack:Z

    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 95
    return-void
.end method

.method public format(Lcom/google/android/exoplayer/MediaFormat;)V
    .locals 1
    .param p1, "format"    # Lcom/google/android/exoplayer/MediaFormat;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper;->output:Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper$SingleTrackOutput;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper$SingleTrackOutput;->format(Lcom/google/android/exoplayer/MediaFormat;)V

    .line 110
    return-void
.end method

.method public init(Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper$SingleTrackOutput;)V
    .locals 1
    .param p1, "output"    # Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper$SingleTrackOutput;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper;->output:Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper$SingleTrackOutput;

    .line 59
    iget-boolean v0, p0, Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper;->extractorInitialized:Z

    if-nez v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper;->extractor:Lcom/google/android/exoplayer/extractor/Extractor;

    invoke-interface {v0, p0}, Lcom/google/android/exoplayer/extractor/Extractor;->init(Lcom/google/android/exoplayer/extractor/ExtractorOutput;)V

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper;->extractorInitialized:Z

    .line 65
    :goto_0
    return-void

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper;->extractor:Lcom/google/android/exoplayer/extractor/Extractor;

    invoke-interface {v0}, Lcom/google/android/exoplayer/extractor/Extractor;->seek()V

    goto :goto_0
.end method

.method public read(Lcom/google/android/exoplayer/extractor/ExtractorInput;)I
    .locals 4
    .param p1, "input"    # Lcom/google/android/exoplayer/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 78
    iget-object v2, p0, Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper;->extractor:Lcom/google/android/exoplayer/extractor/Extractor;

    const/4 v3, 0x0

    invoke-interface {v2, p1, v3}, Lcom/google/android/exoplayer/extractor/Extractor;->read(Lcom/google/android/exoplayer/extractor/ExtractorInput;Lcom/google/android/exoplayer/extractor/PositionHolder;)I

    move-result v0

    .line 79
    .local v0, "result":I
    if-eq v0, v1, :cond_0

    :goto_0
    invoke-static {v1}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 80
    return v0

    .line 79
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public sampleData(Lcom/google/android/exoplayer/extractor/ExtractorInput;IZ)I
    .locals 1
    .param p1, "input"    # Lcom/google/android/exoplayer/extractor/ExtractorInput;
    .param p2, "length"    # I
    .param p3, "allowEndOfInput"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 116
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper;->output:Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper$SingleTrackOutput;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper$SingleTrackOutput;->sampleData(Lcom/google/android/exoplayer/extractor/ExtractorInput;IZ)I

    move-result v0

    return v0
.end method

.method public sampleData(Lcom/google/android/exoplayer/util/ParsableByteArray;I)V
    .locals 1
    .param p1, "data"    # Lcom/google/android/exoplayer/util/ParsableByteArray;
    .param p2, "length"    # I

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper;->output:Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper$SingleTrackOutput;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper$SingleTrackOutput;->sampleData(Lcom/google/android/exoplayer/util/ParsableByteArray;I)V

    .line 122
    return-void
.end method

.method public sampleMetadata(JIII[B)V
    .locals 9
    .param p1, "timeUs"    # J
    .param p3, "flags"    # I
    .param p4, "size"    # I
    .param p5, "offset"    # I
    .param p6, "encryptionKey"    # [B

    .prologue
    .line 126
    iget-object v1, p0, Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper;->output:Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper$SingleTrackOutput;

    move-wide v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-interface/range {v1 .. v7}, Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper$SingleTrackOutput;->sampleMetadata(JIII[B)V

    .line 127
    return-void
.end method

.method public seekMap(Lcom/google/android/exoplayer/extractor/SeekMap;)V
    .locals 1
    .param p1, "seekMap"    # Lcom/google/android/exoplayer/extractor/SeekMap;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper;->output:Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper$SingleTrackOutput;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper$SingleTrackOutput;->seekMap(Lcom/google/android/exoplayer/extractor/SeekMap;)V

    .line 100
    return-void
.end method

.method public track(I)Lcom/google/android/exoplayer/extractor/TrackOutput;
    .locals 2
    .param p1, "id"    # I

    .prologue
    const/4 v1, 0x1

    .line 85
    iget-boolean v0, p0, Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper;->seenTrack:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 86
    iput-boolean v1, p0, Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper;->seenTrack:Z

    .line 87
    return-object p0

    .line 85
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
