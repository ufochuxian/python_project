.class public final Lcom/google/android/exoplayer/FrameworkSampleSource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer/SampleSource;
.implements Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final ALLOWED_FLAGS_MASK:I = 0x3

.field private static final TRACK_STATE_DISABLED:I = 0x0

.field private static final TRACK_STATE_ENABLED:I = 0x1

.field private static final TRACK_STATE_FORMAT_SENT:I = 0x2


# instance fields
.field private final context:Landroid/content/Context;

.field private extractor:Landroid/media/MediaExtractor;

.field private final fileDescriptor:Ljava/io/FileDescriptor;

.field private final fileDescriptorLength:J

.field private final fileDescriptorOffset:J

.field private final headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private lastSeekPositionUs:J

.field private pendingDiscontinuities:[Z

.field private pendingSeekPositionUs:J

.field private preparationError:Ljava/io/IOException;

.field private prepared:Z

.field private remainingReleaseCount:I

.field private trackFormats:[Lcom/google/android/exoplayer/MediaFormat;

.field private trackStates:[I

.field private final uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-wide/16 v2, 0x0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    sget v0, Lcom/google/android/exoplayer/util/Util;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 97
    invoke-static {p1}, Lcom/google/android/exoplayer/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/exoplayer/FrameworkSampleSource;->context:Landroid/content/Context;

    .line 98
    invoke-static {p2}, Lcom/google/android/exoplayer/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/android/exoplayer/FrameworkSampleSource;->uri:Landroid/net/Uri;

    .line 99
    iput-object p3, p0, Lcom/google/android/exoplayer/FrameworkSampleSource;->headers:Ljava/util/Map;

    .line 100
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer/FrameworkSampleSource;->fileDescriptor:Ljava/io/FileDescriptor;

    .line 101
    iput-wide v2, p0, Lcom/google/android/exoplayer/FrameworkSampleSource;->fileDescriptorOffset:J

    .line 102
    iput-wide v2, p0, Lcom/google/android/exoplayer/FrameworkSampleSource;->fileDescriptorLength:J

    .line 103
    return-void

    .line 96
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/io/FileDescriptor;JJ)V
    .locals 4
    .param p1, "fileDescriptor"    # Ljava/io/FileDescriptor;
    .param p2, "fileDescriptorOffset"    # J
    .param p4, "fileDescriptorLength"    # J

    .prologue
    const/4 v2, 0x0

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    sget v0, Lcom/google/android/exoplayer/util/Util;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 117
    invoke-static {p1}, Lcom/google/android/exoplayer/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/FileDescriptor;

    iput-object v0, p0, Lcom/google/android/exoplayer/FrameworkSampleSource;->fileDescriptor:Ljava/io/FileDescriptor;

    .line 118
    iput-wide p2, p0, Lcom/google/android/exoplayer/FrameworkSampleSource;->fileDescriptorOffset:J

    .line 119
    iput-wide p4, p0, Lcom/google/android/exoplayer/FrameworkSampleSource;->fileDescriptorLength:J

    .line 120
    iput-object v2, p0, Lcom/google/android/exoplayer/FrameworkSampleSource;->context:Landroid/content/Context;

    .line 121
    iput-object v2, p0, Lcom/google/android/exoplayer/FrameworkSampleSource;->uri:Landroid/net/Uri;

    .line 122
    iput-object v2, p0, Lcom/google/android/exoplayer/FrameworkSampleSource;->headers:Ljava/util/Map;

    .line 123
    return-void

    .line 116
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static createMediaFormat(Landroid/media/MediaFormat;)Lcom/google/android/exoplayer/MediaFormat;
    .locals 28
    .param p0, "format"    # Landroid/media/MediaFormat;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .prologue
    .line 127
    const-string v4, "mime"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 128
    .local v5, "mimeType":Ljava/lang/String;
    const-string v4, "language"

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/google/android/exoplayer/FrameworkSampleSource;->getOptionalStringV16(Landroid/media/MediaFormat;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 129
    .local v16, "language":Ljava/lang/String;
    const-string v4, "max-input-size"

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/google/android/exoplayer/FrameworkSampleSource;->getOptionalIntegerV16(Landroid/media/MediaFormat;Ljava/lang/String;)I

    move-result v7

    .line 130
    .local v7, "maxInputSize":I
    const-string v4, "width"

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/google/android/exoplayer/FrameworkSampleSource;->getOptionalIntegerV16(Landroid/media/MediaFormat;Ljava/lang/String;)I

    move-result v10

    .line 131
    .local v10, "width":I
    const-string v4, "height"

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/google/android/exoplayer/FrameworkSampleSource;->getOptionalIntegerV16(Landroid/media/MediaFormat;Ljava/lang/String;)I

    move-result v11

    .line 132
    .local v11, "height":I
    const-string v4, "rotation-degrees"

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/google/android/exoplayer/FrameworkSampleSource;->getOptionalIntegerV16(Landroid/media/MediaFormat;Ljava/lang/String;)I

    move-result v12

    .line 133
    .local v12, "rotationDegrees":I
    const-string v4, "channel-count"

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/google/android/exoplayer/FrameworkSampleSource;->getOptionalIntegerV16(Landroid/media/MediaFormat;Ljava/lang/String;)I

    move-result v14

    .line 134
    .local v14, "channelCount":I
    const-string v4, "sample-rate"

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/google/android/exoplayer/FrameworkSampleSource;->getOptionalIntegerV16(Landroid/media/MediaFormat;Ljava/lang/String;)I

    move-result v15

    .line 135
    .local v15, "sampleRate":I
    const-string v4, "encoder-delay"

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/google/android/exoplayer/FrameworkSampleSource;->getOptionalIntegerV16(Landroid/media/MediaFormat;Ljava/lang/String;)I

    move-result v23

    .line 136
    .local v23, "encoderDelay":I
    const-string v4, "encoder-padding"

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/google/android/exoplayer/FrameworkSampleSource;->getOptionalIntegerV16(Landroid/media/MediaFormat;Ljava/lang/String;)I

    move-result v24

    .line 137
    .local v24, "encoderPadding":I
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 138
    .local v19, "initializationData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    const/16 v27, 0x0

    .local v27, "i":I
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "csd-"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 139
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "csd-"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v25

    .line 140
    .local v25, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual/range {v25 .. v25}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    new-array v0, v4, [B

    move-object/from16 v26, v0

    .line 141
    .local v26, "data":[B
    invoke-virtual/range {v25 .. v26}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 142
    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    invoke-virtual/range {v25 .. v25}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 138
    add-int/lit8 v27, v27, 0x1

    goto :goto_0

    .line 145
    .end local v25    # "buffer":Ljava/nio/ByteBuffer;
    .end local v26    # "data":[B
    :cond_0
    const-string v4, "durationUs"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "durationUs"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/media/MediaFormat;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 147
    .local v8, "durationUs":J
    :goto_1
    new-instance v3, Lcom/google/android/exoplayer/MediaFormat;

    const/4 v4, 0x0

    const/4 v6, -0x1

    const/high16 v13, -0x40800000    # -1.0f

    const-wide v17, 0x7fffffffffffffffL

    const/16 v20, 0x0

    const/16 v21, -0x1

    const/16 v22, -0x1

    invoke-direct/range {v3 .. v24}, Lcom/google/android/exoplayer/MediaFormat;-><init>(Ljava/lang/String;Ljava/lang/String;IIJIIIFIILjava/lang/String;JLjava/util/List;ZIIII)V

    .line 150
    .local v3, "mediaFormat":Lcom/google/android/exoplayer/MediaFormat;
    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/google/android/exoplayer/MediaFormat;->setFrameworkFormatV16(Landroid/media/MediaFormat;)V

    .line 151
    return-object v3

    .line 145
    .end local v3    # "mediaFormat":Lcom/google/android/exoplayer/MediaFormat;
    .end local v8    # "durationUs":J
    :cond_1
    const-wide/16 v8, -0x1

    goto :goto_1
.end method

.method private getDrmInitDataV18()Lcom/google/android/exoplayer/drm/DrmInitData;
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .prologue
    .line 320
    iget-object v4, p0, Lcom/google/android/exoplayer/FrameworkSampleSource;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v4}, Landroid/media/MediaExtractor;->getPsshInfo()Ljava/util/Map;

    move-result-object v2

    .line 321
    .local v2, "psshInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;[B>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 322
    :cond_0
    const/4 v0, 0x0

    .line 329
    :cond_1
    return-object v0

    .line 324
    :cond_2
    new-instance v0, Lcom/google/android/exoplayer/drm/DrmInitData$Mapped;

    invoke-direct {v0}, Lcom/google/android/exoplayer/drm/DrmInitData$Mapped;-><init>()V

    .line 325
    .local v0, "drmInitData":Lcom/google/android/exoplayer/drm/DrmInitData$Mapped;
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/UUID;

    .line 326
    .local v3, "uuid":Ljava/util/UUID;
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    invoke-static {v3, v4}, Lcom/google/android/exoplayer/extractor/mp4/PsshAtomUtil;->buildPsshAtom(Ljava/util/UUID;[B)[B

    move-result-object v1

    .line 327
    .local v1, "psshAtom":[B
    new-instance v4, Lcom/google/android/exoplayer/drm/DrmInitData$SchemeInitData;

    const-string v6, "video/mp4"

    invoke-direct {v4, v6, v1}, Lcom/google/android/exoplayer/drm/DrmInitData$SchemeInitData;-><init>(Ljava/lang/String;[B)V

    invoke-virtual {v0, v3, v4}, Lcom/google/android/exoplayer/drm/DrmInitData$Mapped;->put(Ljava/util/UUID;Lcom/google/android/exoplayer/drm/DrmInitData$SchemeInitData;)V

    goto :goto_0
.end method

.method private static final getOptionalIntegerV16(Landroid/media/MediaFormat;Ljava/lang/String;)I
    .locals 1
    .param p0, "format"    # Landroid/media/MediaFormat;
    .param p1, "key"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 161
    invoke-virtual {p0, p1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private static final getOptionalStringV16(Landroid/media/MediaFormat;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "format"    # Landroid/media/MediaFormat;
    .param p1, "key"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 156
    invoke-virtual {p0, p1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private seekToUsInternal(JZ)V
    .locals 5
    .param p1, "positionUs"    # J
    .param p3, "force"    # Z

    .prologue
    .line 335
    if-nez p3, :cond_0

    iget-wide v2, p0, Lcom/google/android/exoplayer/FrameworkSampleSource;->pendingSeekPositionUs:J

    cmp-long v1, v2, p1

    if-eqz v1, :cond_2

    .line 336
    :cond_0
    iput-wide p1, p0, Lcom/google/android/exoplayer/FrameworkSampleSource;->lastSeekPositionUs:J

    .line 337
    iput-wide p1, p0, Lcom/google/android/exoplayer/FrameworkSampleSource;->pendingSeekPositionUs:J

    .line 338
    iget-object v1, p0, Lcom/google/android/exoplayer/FrameworkSampleSource;->extractor:Landroid/media/MediaExtractor;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, p2, v2}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 339
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer/FrameworkSampleSource;->trackStates:[I

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 340
    iget-object v1, p0, Lcom/google/android/exoplayer/FrameworkSampleSource;->trackStates:[I

    aget v1, v1, v0

    if-eqz v1, :cond_1

    .line 341
    iget-object v1, p0, Lcom/google/android/exoplayer/FrameworkSampleSource;->pendingDiscontinuities:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    .line 339
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 345
    .end local v0    # "i":I
    :cond_2
    return-void
.end method


# virtual methods
.method public continueBuffering(IJ)Z
    .locals 1
    .param p1, "track"    # I
    .param p2, "positionUs"    # J

    .prologue
    .line 227
    const/4 v0, 0x1

    return v0
.end method

.method public disable(I)V
    .locals 2
    .param p1, "track"    # I

    .prologue
    const/4 v1, 0x0

    .line 276
    iget-boolean v0, p0, Lcom/google/android/exoplayer/FrameworkSampleSource;->prepared:Z

    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 277
    iget-object v0, p0, Lcom/google/android/exoplayer/FrameworkSampleSource;->trackStates:[I

    aget v0, v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 278
    iget-object v0, p0, Lcom/google/android/exoplayer/FrameworkSampleSource;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0, p1}, Landroid/media/MediaExtractor;->unselectTrack(I)V

    .line 279
    iget-object v0, p0, Lcom/google/android/exoplayer/FrameworkSampleSource;->pendingDiscontinuities:[Z

    aput-boolean v1, v0, p1

    .line 280
    iget-object v0, p0, Lcom/google/android/exoplayer/FrameworkSampleSource;->trackStates:[I

    aput v1, v0, p1

    .line 281
    return-void

    :cond_0
    move v0, v1

    .line 277
    goto :goto_0
.end method

.method public enable(IJ)V
    .locals 6
    .param p1, "track"    # I
    .param p2, "positionUs"    # J

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 214
    iget-boolean v0, p0, Lcom/google/android/exoplayer/FrameworkSampleSource;->prepared:Z

    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 215
    iget-object v0, p0, Lcom/google/android/exoplayer/FrameworkSampleSource;->trackStates:[I

    aget v0, v0, p1

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 216
    iget-object v0, p0, Lcom/google/android/exoplayer/FrameworkSampleSource;->trackStates:[I

    aput v1, v0, p1

    .line 217
    iget-object v0, p0, Lcom/google/android/exoplayer/FrameworkSampleSource;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0, p1}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 218
    const-wide/16 v4, 0x0

    cmp-long v0, p2, v4

    if-eqz v0, :cond_1

    :goto_1
    invoke-direct {p0, p2, p3, v1}, Lcom/google/android/exoplayer/FrameworkSampleSource;->seekToUsInternal(JZ)V

    .line 219
    return-void

    :cond_0
    move v0, v2

    .line 215
    goto :goto_0

    :cond_1
    move v1, v2

    .line 218
    goto :goto_1
.end method

.method public getBufferedPositionUs()J
    .locals 7

    .prologue
    const-wide/16 v4, -0x1

    .line 298
    iget-boolean v6, p0, Lcom/google/android/exoplayer/FrameworkSampleSource;->prepared:Z

    invoke-static {v6}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 299
    iget-object v6, p0, Lcom/google/android/exoplayer/FrameworkSampleSource;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v6}, Landroid/media/MediaExtractor;->getCachedDuration()J

    move-result-wide v0

    .line 300
    .local v0, "bufferedDurationUs":J
    cmp-long v6, v0, v4

    if-nez v6, :cond_0

    .line 304
    :goto_0
    return-wide v4

    .line 303
    :cond_0
    iget-object v6, p0, Lcom/google/android/exoplayer/FrameworkSampleSource;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v6}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v2

    .line 304
    .local v2, "sampleTime":J
    cmp-long v4, v2, v4

    if-nez v4, :cond_1

    const-wide/16 v4, -0x3

    goto :goto_0

    :cond_1
    add-long v4, v2, v0

    goto :goto_0
.end method

.method public getFormat(I)Lcom/google/android/exoplayer/MediaFormat;
    .locals 1
    .param p1, "track"    # I

    .prologue
    .line 208
    iget-boolean v0, p0, Lcom/google/android/exoplayer/FrameworkSampleSource;->prepared:Z

    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 209
    iget-object v0, p0, Lcom/google/android/exoplayer/FrameworkSampleSource;->trackFormats:[Lcom/google/android/exoplayer/MediaFormat;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getTrackCount()I
    .locals 1

    .prologue
    .line 202
    iget-boolean v0, p0, Lcom/google/android/exoplayer/FrameworkSampleSource;->prepared:Z

    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 203
    iget-object v0, p0, Lcom/google/android/exoplayer/FrameworkSampleSource;->trackStates:[I

    array-length v0, v0

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
    .line 285
    iget-object v0, p0, Lcom/google/android/exoplayer/FrameworkSampleSource;->preparationError:Ljava/io/IOException;

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/google/android/exoplayer/FrameworkSampleSource;->preparationError:Ljava/io/IOException;

    throw v0

    .line 288
    :cond_0
    return-void
.end method

.method public prepare(J)Z
    .locals 10
    .param p1, "positionUs"    # J

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 172
    iget-boolean v0, p0, Lcom/google/android/exoplayer/FrameworkSampleSource;->prepared:Z

    if-nez v0, :cond_3

    .line 173
    iget-object v0, p0, Lcom/google/android/exoplayer/FrameworkSampleSource;->preparationError:Ljava/io/IOException;

    if-eqz v0, :cond_0

    move v0, v8

    .line 197
    :goto_0
    return v0

    .line 177
    :cond_0
    new-instance v0, Landroid/media/MediaExtractor;

    invoke-direct {v0}, Landroid/media/MediaExtractor;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/FrameworkSampleSource;->extractor:Landroid/media/MediaExtractor;

    .line 179
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer/FrameworkSampleSource;->context:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 180
    iget-object v0, p0, Lcom/google/android/exoplayer/FrameworkSampleSource;->extractor:Landroid/media/MediaExtractor;

    iget-object v1, p0, Lcom/google/android/exoplayer/FrameworkSampleSource;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/exoplayer/FrameworkSampleSource;->uri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/google/android/exoplayer/FrameworkSampleSource;->headers:Ljava/util/Map;

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MediaExtractor;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    :goto_1
    iget-object v0, p0, Lcom/google/android/exoplayer/FrameworkSampleSource;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/exoplayer/FrameworkSampleSource;->trackStates:[I

    .line 190
    iget-object v0, p0, Lcom/google/android/exoplayer/FrameworkSampleSource;->trackStates:[I

    array-length v0, v0

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/google/android/exoplayer/FrameworkSampleSource;->pendingDiscontinuities:[Z

    .line 191
    iget-object v0, p0, Lcom/google/android/exoplayer/FrameworkSampleSource;->trackStates:[I

    array-length v0, v0

    new-array v0, v0, [Lcom/google/android/exoplayer/MediaFormat;

    iput-object v0, p0, Lcom/google/android/exoplayer/FrameworkSampleSource;->trackFormats:[Lcom/google/android/exoplayer/MediaFormat;

    .line 192
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    iget-object v0, p0, Lcom/google/android/exoplayer/FrameworkSampleSource;->trackStates:[I

    array-length v0, v0

    if-ge v7, v0, :cond_2

    .line 193
    iget-object v0, p0, Lcom/google/android/exoplayer/FrameworkSampleSource;->trackFormats:[Lcom/google/android/exoplayer/MediaFormat;

    iget-object v1, p0, Lcom/google/android/exoplayer/FrameworkSampleSource;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v1, v7}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/exoplayer/FrameworkSampleSource;->createMediaFormat(Landroid/media/MediaFormat;)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v1

    aput-object v1, v0, v7

    .line 192
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 182
    .end local v7    # "i":I
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/exoplayer/FrameworkSampleSource;->extractor:Landroid/media/MediaExtractor;

    iget-object v1, p0, Lcom/google/android/exoplayer/FrameworkSampleSource;->fileDescriptor:Ljava/io/FileDescriptor;

    iget-wide v2, p0, Lcom/google/android/exoplayer/FrameworkSampleSource;->fileDescriptorOffset:J

    iget-wide v4, p0, Lcom/google/android/exoplayer/FrameworkSampleSource;->fileDescriptorLength:J

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaExtractor;->setDataSource(Ljava/io/FileDescriptor;JJ)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 184
    :catch_0
    move-exception v6

    .line 185
    .local v6, "e":Ljava/io/IOException;
    iput-object v6, p0, Lcom/google/android/exoplayer/FrameworkSampleSource;->preparationError:Ljava/io/IOException;

    move v0, v8

    .line 186
    goto :goto_0

    .line 195
    .end local v6    # "e":Ljava/io/IOException;
    .restart local v7    # "i":I
    :cond_2
    iput-boolean v9, p0, Lcom/google/android/exoplayer/FrameworkSampleSource;->prepared:Z

    .end local v7    # "i":I
    :cond_3
    move v0, v9

    .line 197
    goto :goto_0
.end method

.method public readData(IJLcom/google/android/exoplayer/MediaFormatHolder;Lcom/google/android/exoplayer/SampleHolder;)I
    .locals 6
    .param p1, "track"    # I
    .param p2, "positionUs"    # J
    .param p4, "formatHolder"    # Lcom/google/android/exoplayer/MediaFormatHolder;
    .param p5, "sampleHolder"    # Lcom/google/android/exoplayer/SampleHolder;

    .prologue
    const/4 v5, 0x2

    const/4 v3, 0x0

    const/4 v4, -0x2

    .line 241
    iget-boolean v2, p0, Lcom/google/android/exoplayer/FrameworkSampleSource;->prepared:Z

    invoke-static {v2}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 242
    iget-object v2, p0, Lcom/google/android/exoplayer/FrameworkSampleSource;->trackStates:[I

    aget v2, v2, p1

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 243
    iget-object v2, p0, Lcom/google/android/exoplayer/FrameworkSampleSource;->pendingDiscontinuities:[Z

    aget-boolean v2, v2, p1

    if-eqz v2, :cond_1

    .line 270
    :goto_1
    return v4

    :cond_0
    move v2, v3

    .line 242
    goto :goto_0

    .line 246
    :cond_1
    iget-object v2, p0, Lcom/google/android/exoplayer/FrameworkSampleSource;->trackStates:[I

    aget v2, v2, p1

    if-eq v2, v5, :cond_3

    .line 247
    iget-object v2, p0, Lcom/google/android/exoplayer/FrameworkSampleSource;->trackFormats:[Lcom/google/android/exoplayer/MediaFormat;

    aget-object v2, v2, p1

    iput-object v2, p4, Lcom/google/android/exoplayer/MediaFormatHolder;->format:Lcom/google/android/exoplayer/MediaFormat;

    .line 248
    sget v2, Lcom/google/android/exoplayer/util/Util;->SDK_INT:I

    const/16 v3, 0x12

    if-lt v2, v3, :cond_2

    invoke-direct {p0}, Lcom/google/android/exoplayer/FrameworkSampleSource;->getDrmInitDataV18()Lcom/google/android/exoplayer/drm/DrmInitData;

    move-result-object v2

    :goto_2
    iput-object v2, p4, Lcom/google/android/exoplayer/MediaFormatHolder;->drmInitData:Lcom/google/android/exoplayer/drm/DrmInitData;

    .line 249
    iget-object v2, p0, Lcom/google/android/exoplayer/FrameworkSampleSource;->trackStates:[I

    aput v5, v2, p1

    .line 250
    const/4 v4, -0x4

    goto :goto_1

    .line 248
    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    .line 252
    :cond_3
    iget-object v2, p0, Lcom/google/android/exoplayer/FrameworkSampleSource;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v2}, Landroid/media/MediaExtractor;->getSampleTrackIndex()I

    move-result v0

    .line 253
    .local v0, "extractorTrackIndex":I
    if-ne v0, p1, :cond_6

    .line 254
    iget-object v2, p5, Lcom/google/android/exoplayer/SampleHolder;->data:Ljava/nio/ByteBuffer;

    if-eqz v2, :cond_5

    .line 255
    iget-object v2, p5, Lcom/google/android/exoplayer/SampleHolder;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 256
    .local v1, "offset":I
    iget-object v2, p0, Lcom/google/android/exoplayer/FrameworkSampleSource;->extractor:Landroid/media/MediaExtractor;

    iget-object v3, p5, Lcom/google/android/exoplayer/SampleHolder;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v3, v1}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v2

    iput v2, p5, Lcom/google/android/exoplayer/SampleHolder;->size:I

    .line 257
    iget-object v2, p5, Lcom/google/android/exoplayer/SampleHolder;->data:Ljava/nio/ByteBuffer;

    iget v3, p5, Lcom/google/android/exoplayer/SampleHolder;->size:I

    add-int/2addr v3, v1

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 261
    .end local v1    # "offset":I
    :goto_3
    iget-object v2, p0, Lcom/google/android/exoplayer/FrameworkSampleSource;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v2}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v2

    iput-wide v2, p5, Lcom/google/android/exoplayer/SampleHolder;->timeUs:J

    .line 262
    iget-object v2, p0, Lcom/google/android/exoplayer/FrameworkSampleSource;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v2}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v2

    and-int/lit8 v2, v2, 0x3

    iput v2, p5, Lcom/google/android/exoplayer/SampleHolder;->flags:I

    .line 263
    invoke-virtual {p5}, Lcom/google/android/exoplayer/SampleHolder;->isEncrypted()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 264
    iget-object v2, p5, Lcom/google/android/exoplayer/SampleHolder;->cryptoInfo:Lcom/google/android/exoplayer/CryptoInfo;

    iget-object v3, p0, Lcom/google/android/exoplayer/FrameworkSampleSource;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer/CryptoInfo;->setFromExtractorV16(Landroid/media/MediaExtractor;)V

    .line 266
    :cond_4
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/google/android/exoplayer/FrameworkSampleSource;->pendingSeekPositionUs:J

    .line 267
    iget-object v2, p0, Lcom/google/android/exoplayer/FrameworkSampleSource;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v2}, Landroid/media/MediaExtractor;->advance()Z

    .line 268
    const/4 v4, -0x3

    goto :goto_1

    .line 259
    :cond_5
    iput v3, p5, Lcom/google/android/exoplayer/SampleHolder;->size:I

    goto :goto_3

    .line 270
    :cond_6
    if-gez v0, :cond_7

    const/4 v2, -0x1

    :goto_4
    move v4, v2

    goto :goto_1

    :cond_7
    move v2, v4

    goto :goto_4
.end method

.method public readDiscontinuity(I)J
    .locals 2
    .param p1, "track"    # I

    .prologue
    .line 232
    iget-object v0, p0, Lcom/google/android/exoplayer/FrameworkSampleSource;->pendingDiscontinuities:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/google/android/exoplayer/FrameworkSampleSource;->pendingDiscontinuities:[Z

    const/4 v1, 0x0

    aput-boolean v1, v0, p1

    .line 234
    iget-wide v0, p0, Lcom/google/android/exoplayer/FrameworkSampleSource;->lastSeekPositionUs:J

    .line 236
    :goto_0
    return-wide v0

    :cond_0
    const-wide/high16 v0, -0x8000000000000000L

    goto :goto_0
.end method

.method public register()Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;
    .locals 1

    .prologue
    .line 166
    iget v0, p0, Lcom/google/android/exoplayer/FrameworkSampleSource;->remainingReleaseCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer/FrameworkSampleSource;->remainingReleaseCount:I

    .line 167
    return-object p0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 310
    iget v0, p0, Lcom/google/android/exoplayer/FrameworkSampleSource;->remainingReleaseCount:I

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 311
    iget v0, p0, Lcom/google/android/exoplayer/FrameworkSampleSource;->remainingReleaseCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer/FrameworkSampleSource;->remainingReleaseCount:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/FrameworkSampleSource;->extractor:Landroid/media/MediaExtractor;

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/google/android/exoplayer/FrameworkSampleSource;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    .line 313
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer/FrameworkSampleSource;->extractor:Landroid/media/MediaExtractor;

    .line 315
    :cond_0
    return-void

    .line 310
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public seekToUs(J)V
    .locals 1
    .param p1, "positionUs"    # J

    .prologue
    .line 292
    iget-boolean v0, p0, Lcom/google/android/exoplayer/FrameworkSampleSource;->prepared:Z

    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 293
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer/FrameworkSampleSource;->seekToUsInternal(JZ)V

    .line 294
    return-void
.end method
