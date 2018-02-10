.class public Lcom/google/android/exoplayer/hls/HlsChunkSource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer/hls/HlsTrackSelector$Output;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer/hls/HlsChunkSource$EncryptionKeyChunk;,
        Lcom/google/android/exoplayer/hls/HlsChunkSource$MediaPlaylistChunk;,
        Lcom/google/android/exoplayer/hls/HlsChunkSource$ExposedTrack;,
        Lcom/google/android/exoplayer/hls/HlsChunkSource$EventListener;
    }
.end annotation


# static fields
.field private static final AAC_FILE_EXTENSION:Ljava/lang/String; = ".aac"

.field public static final ADAPTIVE_MODE_ABRUPT:I = 0x3

.field public static final ADAPTIVE_MODE_NONE:I = 0x0

.field public static final ADAPTIVE_MODE_SPLICE:I = 0x1

.field private static final BANDWIDTH_FRACTION:F = 0.8f

.field public static final DEFAULT_MAX_BUFFER_TO_SWITCH_DOWN_MS:J = 0x4e20L

.field public static final DEFAULT_MIN_BUFFER_TO_SWITCH_UP_MS:J = 0x1388L

.field public static final DEFAULT_PLAYLIST_BLACKLIST_MS:J = 0xea60L

.field private static final MP3_FILE_EXTENSION:Ljava/lang/String; = ".mp3"

.field private static final TAG:Ljava/lang/String; = "HlsChunkSource"

.field private static final VTT_FILE_EXTENSION:Ljava/lang/String; = ".vtt"

.field private static final WEBVTT_FILE_EXTENSION:Ljava/lang/String; = ".webvtt"


# instance fields
.field private final adaptiveMode:I

.field private final bandwidthMeter:Lcom/google/android/exoplayer/upstream/BandwidthMeter;

.field private final baseUri:Ljava/lang/String;

.field private final dataSource:Lcom/google/android/exoplayer/upstream/DataSource;

.field private durationUs:J

.field private encryptionIv:[B

.field private encryptionIvString:Ljava/lang/String;

.field private encryptionKey:[B

.field private encryptionKeyUri:Landroid/net/Uri;

.field private fatalError:Ljava/io/IOException;

.field private final isMaster:Z

.field private live:Z

.field private final masterPlaylist:Lcom/google/android/exoplayer/hls/HlsMasterPlaylist;

.field private final maxBufferDurationToSwitchDownUs:J

.field private final minBufferDurationToSwitchUpUs:J

.field private final playlistParser:Lcom/google/android/exoplayer/hls/HlsPlaylistParser;

.field private prepareCalled:Z

.field private scratchSpace:[B

.field private selectedTrackIndex:I

.field private selectedVariantIndex:I

.field private final timestampAdjusterProvider:Lcom/google/android/exoplayer/hls/PtsTimestampAdjusterProvider;

.field private final trackSelector:Lcom/google/android/exoplayer/hls/HlsTrackSelector;

.field private final tracks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/exoplayer/hls/HlsChunkSource$ExposedTrack;",
            ">;"
        }
    .end annotation
.end field

.field private variantBlacklistTimes:[J

.field private variantLastPlaylistLoadTimesMs:[J

.field private variantPlaylists:[Lcom/google/android/exoplayer/hls/HlsMediaPlaylist;

.field private variants:[Lcom/google/android/exoplayer/hls/Variant;


# direct methods
.method public constructor <init>(ZLcom/google/android/exoplayer/upstream/DataSource;Ljava/lang/String;Lcom/google/android/exoplayer/hls/HlsPlaylist;Lcom/google/android/exoplayer/hls/HlsTrackSelector;Lcom/google/android/exoplayer/upstream/BandwidthMeter;Lcom/google/android/exoplayer/hls/PtsTimestampAdjusterProvider;I)V
    .locals 14
    .param p1, "isMaster"    # Z
    .param p2, "dataSource"    # Lcom/google/android/exoplayer/upstream/DataSource;
    .param p3, "playlistUrl"    # Ljava/lang/String;
    .param p4, "playlist"    # Lcom/google/android/exoplayer/hls/HlsPlaylist;
    .param p5, "trackSelector"    # Lcom/google/android/exoplayer/hls/HlsTrackSelector;
    .param p6, "bandwidthMeter"    # Lcom/google/android/exoplayer/upstream/BandwidthMeter;
    .param p7, "timestampAdjusterProvider"    # Lcom/google/android/exoplayer/hls/PtsTimestampAdjusterProvider;
    .param p8, "adaptiveMode"    # I

    .prologue
    .line 167
    const-wide/16 v10, 0x1388

    const-wide/16 v12, 0x4e20

    move-object v1, p0

    move v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v1 .. v13}, Lcom/google/android/exoplayer/hls/HlsChunkSource;-><init>(ZLcom/google/android/exoplayer/upstream/DataSource;Ljava/lang/String;Lcom/google/android/exoplayer/hls/HlsPlaylist;Lcom/google/android/exoplayer/hls/HlsTrackSelector;Lcom/google/android/exoplayer/upstream/BandwidthMeter;Lcom/google/android/exoplayer/hls/PtsTimestampAdjusterProvider;IJJ)V

    .line 169
    return-void
.end method

.method public constructor <init>(ZLcom/google/android/exoplayer/upstream/DataSource;Ljava/lang/String;Lcom/google/android/exoplayer/hls/HlsPlaylist;Lcom/google/android/exoplayer/hls/HlsTrackSelector;Lcom/google/android/exoplayer/upstream/BandwidthMeter;Lcom/google/android/exoplayer/hls/PtsTimestampAdjusterProvider;IJJ)V
    .locals 15
    .param p1, "isMaster"    # Z
    .param p2, "dataSource"    # Lcom/google/android/exoplayer/upstream/DataSource;
    .param p3, "playlistUrl"    # Ljava/lang/String;
    .param p4, "playlist"    # Lcom/google/android/exoplayer/hls/HlsPlaylist;
    .param p5, "trackSelector"    # Lcom/google/android/exoplayer/hls/HlsTrackSelector;
    .param p6, "bandwidthMeter"    # Lcom/google/android/exoplayer/upstream/BandwidthMeter;
    .param p7, "timestampAdjusterProvider"    # Lcom/google/android/exoplayer/hls/PtsTimestampAdjusterProvider;
    .param p8, "adaptiveMode"    # I
    .param p9, "minBufferDurationToSwitchUpMs"    # J
    .param p11, "maxBufferDurationToSwitchDownMs"    # J

    .prologue
    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 202
    move/from16 v0, p1

    iput-boolean v0, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->isMaster:Z

    .line 203
    move-object/from16 v0, p2

    iput-object v0, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->dataSource:Lcom/google/android/exoplayer/upstream/DataSource;

    .line 204
    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->trackSelector:Lcom/google/android/exoplayer/hls/HlsTrackSelector;

    .line 205
    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->bandwidthMeter:Lcom/google/android/exoplayer/upstream/BandwidthMeter;

    .line 206
    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->timestampAdjusterProvider:Lcom/google/android/exoplayer/hls/PtsTimestampAdjusterProvider;

    .line 207
    move/from16 v0, p8

    iput v0, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->adaptiveMode:I

    .line 208
    const-wide/16 v4, 0x3e8

    mul-long v4, v4, p9

    iput-wide v4, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->minBufferDurationToSwitchUpUs:J

    .line 209
    const-wide/16 v4, 0x3e8

    mul-long v4, v4, p11

    iput-wide v4, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->maxBufferDurationToSwitchDownUs:J

    .line 210
    move-object/from16 v0, p4

    iget-object v3, v0, Lcom/google/android/exoplayer/hls/HlsPlaylist;->baseUri:Ljava/lang/String;

    iput-object v3, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->baseUri:Ljava/lang/String;

    .line 211
    new-instance v3, Lcom/google/android/exoplayer/hls/HlsPlaylistParser;

    invoke-direct {v3}, Lcom/google/android/exoplayer/hls/HlsPlaylistParser;-><init>()V

    iput-object v3, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->playlistParser:Lcom/google/android/exoplayer/hls/HlsPlaylistParser;

    .line 212
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->tracks:Ljava/util/ArrayList;

    .line 214
    move-object/from16 v0, p4

    iget v3, v0, Lcom/google/android/exoplayer/hls/HlsPlaylist;->type:I

    if-nez v3, :cond_0

    .line 215
    check-cast p4, Lcom/google/android/exoplayer/hls/HlsMasterPlaylist;

    .end local p4    # "playlist":Lcom/google/android/exoplayer/hls/HlsPlaylist;
    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->masterPlaylist:Lcom/google/android/exoplayer/hls/HlsMasterPlaylist;

    .line 222
    :goto_0
    return-void

    .line 217
    .restart local p4    # "playlist":Lcom/google/android/exoplayer/hls/HlsPlaylist;
    :cond_0
    new-instance v2, Lcom/google/android/exoplayer/chunk/Format;

    const-string v3, "0"

    const-string v4, "application/x-mpegURL"

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/high16 v7, -0x40800000    # -1.0f

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct/range {v2 .. v12}, Lcom/google/android/exoplayer/chunk/Format;-><init>(Ljava/lang/String;Ljava/lang/String;IIFIIILjava/lang/String;Ljava/lang/String;)V

    .line 218
    .local v2, "format":Lcom/google/android/exoplayer/chunk/Format;
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 219
    .local v13, "variants":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer/hls/Variant;>;"
    new-instance v3, Lcom/google/android/exoplayer/hls/Variant;

    move-object/from16 v0, p3

    invoke-direct {v3, v0, v2}, Lcom/google/android/exoplayer/hls/Variant;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer/chunk/Format;)V

    invoke-interface {v13, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    new-instance v3, Lcom/google/android/exoplayer/hls/HlsMasterPlaylist;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-direct {v3, v0, v13, v4}, Lcom/google/android/exoplayer/hls/HlsMasterPlaylist;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    iput-object v3, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->masterPlaylist:Lcom/google/android/exoplayer/hls/HlsMasterPlaylist;

    goto :goto_0
.end method

.method private allVariantsBlacklisted()Z
    .locals 6

    .prologue
    .line 725
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->variantBlacklistTimes:[J

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 726
    iget-object v1, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->variantBlacklistTimes:[J

    aget-wide v2, v1, v0

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 727
    const/4 v1, 0x0

    .line 730
    :goto_1
    return v1

    .line 725
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 730
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private clearEncryptionData()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 711
    iput-object v0, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->encryptionKeyUri:Landroid/net/Uri;

    .line 712
    iput-object v0, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->encryptionKey:[B

    .line 713
    iput-object v0, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->encryptionIvString:Ljava/lang/String;

    .line 714
    iput-object v0, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->encryptionIv:[B

    .line 715
    return-void
.end method

.method private clearStaleBlacklistedVariants()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    .line 734
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 735
    .local v0, "currentTime":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->variantBlacklistTimes:[J

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 736
    iget-object v3, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->variantBlacklistTimes:[J

    aget-wide v4, v3, v2

    cmp-long v3, v4, v8

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->variantBlacklistTimes:[J

    aget-wide v4, v3, v2

    sub-long v4, v0, v4

    const-wide/32 v6, 0xea60

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    .line 737
    iget-object v3, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->variantBlacklistTimes:[J

    aput-wide v8, v3, v2

    .line 735
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 740
    :cond_1
    return-void
.end method

.method private getLiveStartChunkMediaSequence(I)I
    .locals 4
    .param p1, "variantIndex"    # I

    .prologue
    .line 675
    iget-object v2, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->variantPlaylists:[Lcom/google/android/exoplayer/hls/HlsMediaPlaylist;

    aget-object v1, v2, p1

    .line 676
    .local v1, "mediaPlaylist":Lcom/google/android/exoplayer/hls/HlsMediaPlaylist;
    iget-object v2, v1, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist;->segments:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x3

    if-le v2, v3, :cond_0

    iget-object v2, v1, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist;->segments:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x3

    .line 677
    .local v0, "chunkIndex":I
    :goto_0
    iget v2, v1, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist;->mediaSequence:I

    add-int/2addr v2, v0

    return v2

    .line 676
    .end local v0    # "chunkIndex":I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getNextVariantIndex(Lcom/google/android/exoplayer/hls/TsChunk;J)I
    .locals 12
    .param p1, "previousTsChunk"    # Lcom/google/android/exoplayer/hls/TsChunk;
    .param p2, "playbackPositionUs"    # J

    .prologue
    const-wide/16 v10, 0x0

    .line 612
    invoke-direct {p0}, Lcom/google/android/exoplayer/hls/HlsChunkSource;->clearStaleBlacklistedVariants()V

    .line 613
    iget-object v7, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->bandwidthMeter:Lcom/google/android/exoplayer/upstream/BandwidthMeter;

    invoke-interface {v7}, Lcom/google/android/exoplayer/upstream/BandwidthMeter;->getBitrateEstimate()J

    move-result-wide v0

    .line 614
    .local v0, "bitrateEstimate":J
    iget-object v7, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->variantBlacklistTimes:[J

    iget v8, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->selectedVariantIndex:I

    aget-wide v8, v7, v8

    cmp-long v7, v8, v10

    if-eqz v7, :cond_1

    .line 616
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer/hls/HlsChunkSource;->getVariantIndexForBandwidth(J)I

    move-result v6

    .line 641
    :cond_0
    :goto_0
    return v6

    .line 618
    :cond_1
    if-nez p1, :cond_2

    .line 620
    iget v6, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->selectedVariantIndex:I

    goto :goto_0

    .line 622
    :cond_2
    const-wide/16 v8, -0x1

    cmp-long v7, v0, v8

    if-nez v7, :cond_3

    .line 624
    iget v6, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->selectedVariantIndex:I

    goto :goto_0

    .line 626
    :cond_3
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer/hls/HlsChunkSource;->getVariantIndexForBandwidth(J)I

    move-result v6

    .line 627
    .local v6, "idealIndex":I
    iget v7, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->selectedVariantIndex:I

    if-ne v6, v7, :cond_4

    .line 629
    iget v6, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->selectedVariantIndex:I

    goto :goto_0

    .line 633
    :cond_4
    iget v7, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->adaptiveMode:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_7

    iget-wide v2, p1, Lcom/google/android/exoplayer/hls/TsChunk;->startTimeUs:J

    .line 634
    .local v2, "bufferedPositionUs":J
    :goto_1
    sub-long v4, v2, p2

    .line 635
    .local v4, "bufferedUs":J
    iget-object v7, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->variantBlacklistTimes:[J

    iget v8, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->selectedVariantIndex:I

    aget-wide v8, v7, v8

    cmp-long v7, v8, v10

    if-nez v7, :cond_0

    iget v7, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->selectedVariantIndex:I

    if-le v6, v7, :cond_5

    iget-wide v8, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->maxBufferDurationToSwitchDownUs:J

    cmp-long v7, v4, v8

    if-ltz v7, :cond_0

    :cond_5
    iget v7, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->selectedVariantIndex:I

    if-ge v6, v7, :cond_6

    iget-wide v8, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->minBufferDurationToSwitchUpUs:J

    cmp-long v7, v4, v8

    if-gtz v7, :cond_0

    .line 641
    :cond_6
    iget v6, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->selectedVariantIndex:I

    goto :goto_0

    .line 633
    .end local v2    # "bufferedPositionUs":J
    .end local v4    # "bufferedUs":J
    :cond_7
    iget-wide v2, p1, Lcom/google/android/exoplayer/hls/TsChunk;->endTimeUs:J

    goto :goto_1
.end method

.method private getVariantIndex(Lcom/google/android/exoplayer/chunk/Format;)I
    .locals 4
    .param p1, "format"    # Lcom/google/android/exoplayer/chunk/Format;

    .prologue
    .line 743
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->variants:[Lcom/google/android/exoplayer/hls/Variant;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 744
    iget-object v1, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->variants:[Lcom/google/android/exoplayer/hls/Variant;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/google/android/exoplayer/hls/Variant;->format:Lcom/google/android/exoplayer/chunk/Format;

    invoke-virtual {v1, p1}, Lcom/google/android/exoplayer/chunk/Format;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 745
    return v0

    .line 743
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 749
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid format: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getVariantIndexForBandwidth(J)I
    .locals 9
    .param p1, "bitrateEstimate"    # J

    .prologue
    .line 647
    const-wide/16 v4, -0x1

    cmp-long v3, p1, v4

    if-nez v3, :cond_0

    .line 649
    const-wide/16 p1, 0x0

    .line 651
    :cond_0
    long-to-float v3, p1

    const v4, 0x3f4ccccd    # 0.8f

    mul-float/2addr v3, v4

    float-to-int v0, v3

    .line 652
    .local v0, "effectiveBitrate":I
    const/4 v2, -0x1

    .line 653
    .local v2, "lowestQualityEnabledVariantIndex":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->variants:[Lcom/google/android/exoplayer/hls/Variant;

    array-length v3, v3

    if-ge v1, v3, :cond_3

    .line 654
    iget-object v3, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->variantBlacklistTimes:[J

    aget-wide v4, v3, v1

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_2

    .line 655
    iget-object v3, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->variants:[Lcom/google/android/exoplayer/hls/Variant;

    aget-object v3, v3, v1

    iget-object v3, v3, Lcom/google/android/exoplayer/hls/Variant;->format:Lcom/google/android/exoplayer/chunk/Format;

    iget v3, v3, Lcom/google/android/exoplayer/chunk/Format;->bitrate:I

    if-gt v3, v0, :cond_1

    .line 663
    .end local v1    # "i":I
    :goto_1
    return v1

    .line 658
    .restart local v1    # "i":I
    :cond_1
    move v2, v1

    .line 653
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 662
    :cond_3
    const/4 v3, -0x1

    if-eq v2, v3, :cond_4

    const/4 v3, 0x1

    :goto_2
    invoke-static {v3}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    move v1, v2

    .line 663
    goto :goto_1

    .line 662
    :cond_4
    const/4 v3, 0x0

    goto :goto_2
.end method

.method private newEncryptionKeyChunk(Landroid/net/Uri;Ljava/lang/String;I)Lcom/google/android/exoplayer/hls/HlsChunkSource$EncryptionKeyChunk;
    .locals 8
    .param p1, "keyUri"    # Landroid/net/Uri;
    .param p2, "iv"    # Ljava/lang/String;
    .param p3, "variantIndex"    # I

    .prologue
    .line 687
    new-instance v0, Lcom/google/android/exoplayer/upstream/DataSpec;

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer/upstream/DataSpec;-><init>(Landroid/net/Uri;JJLjava/lang/String;I)V

    .line 688
    .local v0, "dataSpec":Lcom/google/android/exoplayer/upstream/DataSpec;
    new-instance v1, Lcom/google/android/exoplayer/hls/HlsChunkSource$EncryptionKeyChunk;

    iget-object v2, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->dataSource:Lcom/google/android/exoplayer/upstream/DataSource;

    iget-object v4, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->scratchSpace:[B

    move-object v3, v0

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer/hls/HlsChunkSource$EncryptionKeyChunk;-><init>(Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/upstream/DataSpec;[BLjava/lang/String;I)V

    return-object v1
.end method

.method private newMediaPlaylistChunk(I)Lcom/google/android/exoplayer/hls/HlsChunkSource$MediaPlaylistChunk;
    .locals 9
    .param p1, "variantIndex"    # I

    .prologue
    .line 681
    iget-object v2, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->baseUri:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->variants:[Lcom/google/android/exoplayer/hls/Variant;

    aget-object v3, v3, p1

    iget-object v3, v3, Lcom/google/android/exoplayer/hls/Variant;->url:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/exoplayer/util/UriUtil;->resolveToUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 682
    .local v1, "mediaPlaylistUri":Landroid/net/Uri;
    new-instance v0, Lcom/google/android/exoplayer/upstream/DataSpec;

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer/upstream/DataSpec;-><init>(Landroid/net/Uri;JJLjava/lang/String;I)V

    .line 683
    .local v0, "dataSpec":Lcom/google/android/exoplayer/upstream/DataSpec;
    new-instance v2, Lcom/google/android/exoplayer/hls/HlsChunkSource$MediaPlaylistChunk;

    iget-object v3, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->dataSource:Lcom/google/android/exoplayer/upstream/DataSource;

    iget-object v5, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->scratchSpace:[B

    iget-object v6, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->playlistParser:Lcom/google/android/exoplayer/hls/HlsPlaylistParser;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v4, v0

    move v7, p1

    invoke-direct/range {v2 .. v8}, Lcom/google/android/exoplayer/hls/HlsChunkSource$MediaPlaylistChunk;-><init>(Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/upstream/DataSpec;[BLcom/google/android/exoplayer/hls/HlsPlaylistParser;ILjava/lang/String;)V

    return-object v2
.end method

.method private setEncryptionData(Landroid/net/Uri;Ljava/lang/String;[B)V
    .locals 7
    .param p1, "keyUri"    # Landroid/net/Uri;
    .param p2, "iv"    # Ljava/lang/String;
    .param p3, "secretKey"    # [B

    .prologue
    const/16 v6, 0x10

    .line 693
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "0x"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 694
    const/4 v4, 0x2

    invoke-virtual {p2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 699
    .local v3, "trimmedIv":Ljava/lang/String;
    :goto_0
    new-instance v4, Ljava/math/BigInteger;

    invoke-direct {v4, v3, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v4}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    .line 700
    .local v0, "ivData":[B
    new-array v1, v6, [B

    .line 701
    .local v1, "ivDataWithPadding":[B
    array-length v4, v0

    if-le v4, v6, :cond_1

    array-length v4, v0

    add-int/lit8 v2, v4, -0x10

    .line 702
    .local v2, "offset":I
    :goto_1
    array-length v4, v1

    array-length v5, v0

    sub-int/2addr v4, v5

    add-int/2addr v4, v2

    array-length v5, v0

    sub-int/2addr v5, v2

    invoke-static {v0, v2, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 704
    iput-object p1, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->encryptionKeyUri:Landroid/net/Uri;

    .line 705
    iput-object p3, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->encryptionKey:[B

    .line 706
    iput-object p2, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->encryptionIvString:Ljava/lang/String;

    .line 707
    iput-object v1, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->encryptionIv:[B

    .line 708
    return-void

    .line 696
    .end local v0    # "ivData":[B
    .end local v1    # "ivDataWithPadding":[B
    .end local v2    # "offset":I
    .end local v3    # "trimmedIv":Ljava/lang/String;
    :cond_0
    move-object v3, p2

    .restart local v3    # "trimmedIv":Ljava/lang/String;
    goto :goto_0

    .line 701
    .restart local v0    # "ivData":[B
    .restart local v1    # "ivDataWithPadding":[B
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private setMediaPlaylist(ILcom/google/android/exoplayer/hls/HlsMediaPlaylist;)V
    .locals 4
    .param p1, "variantIndex"    # I
    .param p2, "mediaPlaylist"    # Lcom/google/android/exoplayer/hls/HlsMediaPlaylist;

    .prologue
    .line 718
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->variantLastPlaylistLoadTimesMs:[J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    aput-wide v2, v0, p1

    .line 719
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->variantPlaylists:[Lcom/google/android/exoplayer/hls/HlsMediaPlaylist;

    aput-object p2, v0, p1

    .line 720
    iget-boolean v0, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->live:Z

    iget-boolean v1, p2, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist;->live:Z

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->live:Z

    .line 721
    iget-boolean v0, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->live:Z

    if-eqz v0, :cond_0

    const-wide/16 v0, -0x1

    :goto_0
    iput-wide v0, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->durationUs:J

    .line 722
    return-void

    .line 721
    :cond_0
    iget-wide v0, p2, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist;->durationUs:J

    goto :goto_0
.end method

.method private shouldRerequestLiveMediaPlaylist(I)Z
    .locals 8
    .param p1, "nextVariantIndex"    # I

    .prologue
    .line 668
    iget-object v1, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->variantPlaylists:[Lcom/google/android/exoplayer/hls/HlsMediaPlaylist;

    aget-object v0, v1, p1

    .line 669
    .local v0, "mediaPlaylist":Lcom/google/android/exoplayer/hls/HlsMediaPlaylist;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-object v1, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->variantLastPlaylistLoadTimesMs:[J

    aget-wide v6, v1, p1

    sub-long v2, v4, v6

    .line 670
    .local v2, "timeSinceLastMediaPlaylistLoadMs":J
    iget v1, v0, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist;->targetDurationSecs:I

    mul-int/lit16 v1, v1, 0x3e8

    div-int/lit8 v1, v1, 0x2

    int-to-long v4, v1

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public adaptiveTrack(Lcom/google/android/exoplayer/hls/HlsMasterPlaylist;[Lcom/google/android/exoplayer/hls/Variant;)V
    .locals 9
    .param p1, "playlist"    # Lcom/google/android/exoplayer/hls/HlsMasterPlaylist;
    .param p2, "variants"    # [Lcom/google/android/exoplayer/hls/Variant;

    .prologue
    .line 573
    new-instance v7, Lcom/google/android/exoplayer/hls/HlsChunkSource$1;

    invoke-direct {v7, p0}, Lcom/google/android/exoplayer/hls/HlsChunkSource$1;-><init>(Lcom/google/android/exoplayer/hls/HlsChunkSource;)V

    invoke-static {p2, v7}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 582
    const/4 v0, 0x0

    .line 583
    .local v0, "defaultVariantIndex":I
    const/4 v3, -0x1

    .line 584
    .local v3, "maxWidth":I
    const/4 v2, -0x1

    .line 586
    .local v2, "maxHeight":I
    const v4, 0x7fffffff

    .line 587
    .local v4, "minOriginalVariantIndex":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v7, p2

    if-ge v1, v7, :cond_1

    .line 588
    iget-object v7, p1, Lcom/google/android/exoplayer/hls/HlsMasterPlaylist;->variants:Ljava/util/List;

    aget-object v8, p2, v1

    invoke-interface {v7, v8}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    .line 589
    .local v5, "originalVariantIndex":I
    if-ge v5, v4, :cond_0

    .line 590
    move v4, v5

    .line 591
    move v0, v1

    .line 593
    :cond_0
    aget-object v7, p2, v1

    iget-object v6, v7, Lcom/google/android/exoplayer/hls/Variant;->format:Lcom/google/android/exoplayer/chunk/Format;

    .line 594
    .local v6, "variantFormat":Lcom/google/android/exoplayer/chunk/Format;
    iget v7, v6, Lcom/google/android/exoplayer/chunk/Format;->width:I

    invoke-static {v7, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 595
    iget v7, v6, Lcom/google/android/exoplayer/chunk/Format;->height:I

    invoke-static {v7, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 587
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 599
    .end local v5    # "originalVariantIndex":I
    .end local v6    # "variantFormat":Lcom/google/android/exoplayer/chunk/Format;
    :cond_1
    if-lez v3, :cond_2

    .line 600
    :goto_1
    if-lez v2, :cond_3

    .line 601
    :goto_2
    iget-object v7, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->tracks:Ljava/util/ArrayList;

    new-instance v8, Lcom/google/android/exoplayer/hls/HlsChunkSource$ExposedTrack;

    invoke-direct {v8, p2, v0, v3, v2}, Lcom/google/android/exoplayer/hls/HlsChunkSource$ExposedTrack;-><init>([Lcom/google/android/exoplayer/hls/Variant;III)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 602
    return-void

    .line 599
    :cond_2
    const/16 v3, 0x780

    goto :goto_1

    .line 600
    :cond_3
    const/16 v2, 0x438

    goto :goto_2
.end method

.method public fixedTrack(Lcom/google/android/exoplayer/hls/HlsMasterPlaylist;Lcom/google/android/exoplayer/hls/Variant;)V
    .locals 2
    .param p1, "playlist"    # Lcom/google/android/exoplayer/hls/HlsMasterPlaylist;
    .param p2, "variant"    # Lcom/google/android/exoplayer/hls/Variant;

    .prologue
    .line 608
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->tracks:Ljava/util/ArrayList;

    new-instance v1, Lcom/google/android/exoplayer/hls/HlsChunkSource$ExposedTrack;

    invoke-direct {v1, p2}, Lcom/google/android/exoplayer/hls/HlsChunkSource$ExposedTrack;-><init>(Lcom/google/android/exoplayer/hls/Variant;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 609
    return-void
.end method

.method public getChunkOperation(Lcom/google/android/exoplayer/hls/TsChunk;JLcom/google/android/exoplayer/chunk/ChunkOperationHolder;)V
    .locals 38
    .param p1, "previousTsChunk"    # Lcom/google/android/exoplayer/hls/TsChunk;
    .param p2, "playbackPositionUs"    # J
    .param p4, "out"    # Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;

    .prologue
    .line 360
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->adaptiveMode:I

    if-nez v4, :cond_1

    .line 361
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->selectedVariantIndex:I

    move/from16 v32, v0

    .line 362
    .local v32, "nextVariantIndex":I
    const/4 v11, 0x0

    .line 369
    .local v11, "switchingVariantSpliced":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->variantPlaylists:[Lcom/google/android/exoplayer/hls/HlsMediaPlaylist;

    aget-object v31, v4, v32

    .line 370
    .local v31, "mediaPlaylist":Lcom/google/android/exoplayer/hls/HlsMediaPlaylist;
    if-nez v31, :cond_3

    .line 372
    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/hls/HlsChunkSource;->newMediaPlaylistChunk(I)Lcom/google/android/exoplayer/hls/HlsChunkSource$MediaPlaylistChunk;

    move-result-object v4

    move-object/from16 v0, p4

    iput-object v4, v0, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->chunk:Lcom/google/android/exoplayer/chunk/Chunk;

    .line 504
    :cond_0
    :goto_1
    return-void

    .line 364
    .end local v11    # "switchingVariantSpliced":Z
    .end local v31    # "mediaPlaylist":Lcom/google/android/exoplayer/hls/HlsMediaPlaylist;
    .end local v32    # "nextVariantIndex":I
    :cond_1
    invoke-direct/range {p0 .. p3}, Lcom/google/android/exoplayer/hls/HlsChunkSource;->getNextVariantIndex(Lcom/google/android/exoplayer/hls/TsChunk;J)I

    move-result v32

    .line 365
    .restart local v32    # "nextVariantIndex":I
    if-eqz p1, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->variants:[Lcom/google/android/exoplayer/hls/Variant;

    aget-object v4, v4, v32

    iget-object v4, v4, Lcom/google/android/exoplayer/hls/Variant;->format:Lcom/google/android/exoplayer/chunk/Format;

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/google/android/exoplayer/hls/TsChunk;->format:Lcom/google/android/exoplayer/chunk/Format;

    invoke-virtual {v4, v12}, Lcom/google/android/exoplayer/chunk/Format;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->adaptiveMode:I

    const/4 v12, 0x1

    if-ne v4, v12, :cond_2

    const/4 v11, 0x1

    .restart local v11    # "switchingVariantSpliced":Z
    :goto_2
    goto :goto_0

    .end local v11    # "switchingVariantSpliced":Z
    :cond_2
    const/4 v11, 0x0

    goto :goto_2

    .line 376
    .restart local v11    # "switchingVariantSpliced":Z
    .restart local v31    # "mediaPlaylist":Lcom/google/android/exoplayer/hls/HlsMediaPlaylist;
    :cond_3
    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/exoplayer/hls/HlsChunkSource;->selectedVariantIndex:I

    .line 377
    const/16 v22, 0x0

    .line 378
    .local v22, "chunkMediaSequence":I
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->live:Z

    if-eqz v4, :cond_7

    .line 379
    if-nez p1, :cond_5

    .line 380
    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/hls/HlsChunkSource;->getLiveStartChunkMediaSequence(I)I

    move-result v22

    .line 397
    :cond_4
    :goto_3
    move-object/from16 v0, v31

    iget v4, v0, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist;->mediaSequence:I

    sub-int v27, v22, v4

    .line 398
    .local v27, "chunkIndex":I
    move-object/from16 v0, v31

    iget-object v4, v0, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist;->segments:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    move/from16 v0, v27

    if-lt v0, v4, :cond_b

    .line 399
    move-object/from16 v0, v31

    iget-boolean v4, v0, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist;->live:Z

    if-nez v4, :cond_a

    .line 400
    const/4 v4, 0x1

    move-object/from16 v0, p4

    iput-boolean v4, v0, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->endOfStream:Z

    goto :goto_1

    .line 382
    .end local v27    # "chunkIndex":I
    :cond_5
    if-eqz v11, :cond_6

    move-object/from16 v0, p1

    iget v0, v0, Lcom/google/android/exoplayer/hls/TsChunk;->chunkIndex:I

    move/from16 v22, v0

    .line 383
    :goto_4
    move-object/from16 v0, v31

    iget v4, v0, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist;->mediaSequence:I

    move/from16 v0, v22

    if-ge v0, v4, :cond_4

    .line 384
    new-instance v4, Lcom/google/android/exoplayer/BehindLiveWindowException;

    invoke-direct {v4}, Lcom/google/android/exoplayer/BehindLiveWindowException;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->fatalError:Ljava/io/IOException;

    goto :goto_1

    .line 382
    :cond_6
    move-object/from16 v0, p1

    iget v4, v0, Lcom/google/android/exoplayer/hls/TsChunk;->chunkIndex:I

    add-int/lit8 v22, v4, 0x1

    goto :goto_4

    .line 390
    :cond_7
    if-nez p1, :cond_8

    .line 391
    move-object/from16 v0, v31

    iget-object v4, v0, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist;->segments:Ljava/util/List;

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    const/4 v13, 0x1

    const/4 v14, 0x1

    invoke-static {v4, v12, v13, v14}, Lcom/google/android/exoplayer/util/Util;->binarySearchFloor(Ljava/util/List;Ljava/lang/Object;ZZ)I

    move-result v4

    move-object/from16 v0, v31

    iget v12, v0, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist;->mediaSequence:I

    add-int v22, v4, v12

    goto :goto_3

    .line 393
    :cond_8
    if-eqz v11, :cond_9

    move-object/from16 v0, p1

    iget v0, v0, Lcom/google/android/exoplayer/hls/TsChunk;->chunkIndex:I

    move/from16 v22, v0

    :goto_5
    goto :goto_3

    :cond_9
    move-object/from16 v0, p1

    iget v4, v0, Lcom/google/android/exoplayer/hls/TsChunk;->chunkIndex:I

    add-int/lit8 v22, v4, 0x1

    goto :goto_5

    .line 401
    .restart local v27    # "chunkIndex":I
    :cond_a
    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/hls/HlsChunkSource;->shouldRerequestLiveMediaPlaylist(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 402
    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/hls/HlsChunkSource;->newMediaPlaylistChunk(I)Lcom/google/android/exoplayer/hls/HlsChunkSource$MediaPlaylistChunk;

    move-result-object v4

    move-object/from16 v0, p4

    iput-object v4, v0, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->chunk:Lcom/google/android/exoplayer/chunk/Chunk;

    goto/16 :goto_1

    .line 407
    :cond_b
    move-object/from16 v0, v31

    iget-object v4, v0, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist;->segments:Ljava/util/List;

    move/from16 v0, v27

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist$Segment;

    .line 408
    .local v33, "segment":Lcom/google/android/exoplayer/hls/HlsMediaPlaylist$Segment;
    move-object/from16 v0, v31

    iget-object v4, v0, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist;->baseUri:Ljava/lang/String;

    move-object/from16 v0, v33

    iget-object v12, v0, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist$Segment;->url:Ljava/lang/String;

    invoke-static {v4, v12}, Lcom/google/android/exoplayer/util/UriUtil;->resolveToUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 411
    .local v3, "chunkUri":Landroid/net/Uri;
    move-object/from16 v0, v33

    iget-boolean v4, v0, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist$Segment;->isEncrypted:Z

    if-eqz v4, :cond_e

    .line 412
    move-object/from16 v0, v31

    iget-object v4, v0, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist;->baseUri:Ljava/lang/String;

    move-object/from16 v0, v33

    iget-object v12, v0, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist$Segment;->encryptionKeyUri:Ljava/lang/String;

    invoke-static {v4, v12}, Lcom/google/android/exoplayer/util/UriUtil;->resolveToUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v29

    .line 413
    .local v29, "keyUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->encryptionKeyUri:Landroid/net/Uri;

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 415
    move-object/from16 v0, v33

    iget-object v4, v0, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist$Segment;->encryptionIV:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->selectedVariantIndex:I

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1, v4, v12}, Lcom/google/android/exoplayer/hls/HlsChunkSource;->newEncryptionKeyChunk(Landroid/net/Uri;Ljava/lang/String;I)Lcom/google/android/exoplayer/hls/HlsChunkSource$EncryptionKeyChunk;

    move-result-object v4

    move-object/from16 v0, p4

    iput-object v4, v0, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->chunk:Lcom/google/android/exoplayer/chunk/Chunk;

    goto/16 :goto_1

    .line 418
    :cond_c
    move-object/from16 v0, v33

    iget-object v4, v0, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist$Segment;->encryptionIV:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->encryptionIvString:Ljava/lang/String;

    invoke-static {v4, v12}, Lcom/google/android/exoplayer/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 419
    move-object/from16 v0, v33

    iget-object v4, v0, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist$Segment;->encryptionIV:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->encryptionKey:[B

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1, v4, v12}, Lcom/google/android/exoplayer/hls/HlsChunkSource;->setEncryptionData(Landroid/net/Uri;Ljava/lang/String;[B)V

    .line 426
    .end local v29    # "keyUri":Landroid/net/Uri;
    :cond_d
    :goto_6
    new-instance v2, Lcom/google/android/exoplayer/upstream/DataSpec;

    move-object/from16 v0, v33

    iget v4, v0, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist$Segment;->byterangeOffset:I

    int-to-long v4, v4

    move-object/from16 v0, v33

    iget v12, v0, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist$Segment;->byterangeLength:I

    int-to-long v6, v12

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/google/android/exoplayer/upstream/DataSpec;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    .line 430
    .local v2, "dataSpec":Lcom/google/android/exoplayer/upstream/DataSpec;
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->live:Z

    if-eqz v4, :cond_11

    .line 431
    if-nez p1, :cond_f

    .line 432
    const-wide/16 v8, 0x0

    .line 441
    .local v8, "startTimeUs":J
    :goto_7
    move-object/from16 v0, v33

    iget-wide v12, v0, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist$Segment;->durationSecs:D

    const-wide v14, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v12, v14

    double-to-long v12, v12

    add-long v20, v8, v12

    .line 442
    .local v20, "endTimeUs":J
    const/4 v6, 0x0

    .line 443
    .local v6, "trigger":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->variants:[Lcom/google/android/exoplayer/hls/Variant;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->selectedVariantIndex:I

    aget-object v4, v4, v12

    iget-object v7, v4, Lcom/google/android/exoplayer/hls/Variant;->format:Lcom/google/android/exoplayer/chunk/Format;

    .line 447
    .local v7, "format":Lcom/google/android/exoplayer/chunk/Format;
    invoke-virtual {v3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v30

    .line 448
    .local v30, "lastPathSegment":Ljava/lang/String;
    const-string v4, ".aac"

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 452
    new-instance v10, Lcom/google/android/exoplayer/extractor/ts/AdtsExtractor;

    invoke-direct {v10, v8, v9}, Lcom/google/android/exoplayer/extractor/ts/AdtsExtractor;-><init>(J)V

    .line 453
    .local v10, "extractor":Lcom/google/android/exoplayer/extractor/Extractor;
    new-instance v5, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;

    const/4 v12, -0x1

    const/4 v13, -0x1

    invoke-direct/range {v5 .. v13}, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;-><init>(ILcom/google/android/exoplayer/chunk/Format;JLcom/google/android/exoplayer/extractor/Extractor;ZII)V

    .line 502
    .end local v10    # "extractor":Lcom/google/android/exoplayer/extractor/Extractor;
    .local v5, "extractorWrapper":Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;
    :goto_8
    new-instance v13, Lcom/google/android/exoplayer/hls/TsChunk;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->dataSource:Lcom/google/android/exoplayer/upstream/DataSource;

    move-object/from16 v0, v33

    iget v0, v0, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist$Segment;->discontinuitySequenceNumber:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->encryptionKey:[B

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->encryptionIv:[B

    move-object/from16 v26, v0

    move-object v15, v2

    move/from16 v16, v6

    move-object/from16 v17, v7

    move-wide/from16 v18, v8

    move-object/from16 v24, v5

    invoke-direct/range {v13 .. v26}, Lcom/google/android/exoplayer/hls/TsChunk;-><init>(Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/upstream/DataSpec;ILcom/google/android/exoplayer/chunk/Format;JJIILcom/google/android/exoplayer/hls/HlsExtractorWrapper;[B[B)V

    move-object/from16 v0, p4

    iput-object v13, v0, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->chunk:Lcom/google/android/exoplayer/chunk/Chunk;

    goto/16 :goto_1

    .line 422
    .end local v2    # "dataSpec":Lcom/google/android/exoplayer/upstream/DataSpec;
    .end local v5    # "extractorWrapper":Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;
    .end local v6    # "trigger":I
    .end local v7    # "format":Lcom/google/android/exoplayer/chunk/Format;
    .end local v8    # "startTimeUs":J
    .end local v20    # "endTimeUs":J
    .end local v30    # "lastPathSegment":Ljava/lang/String;
    :cond_e
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer/hls/HlsChunkSource;->clearEncryptionData()V

    goto :goto_6

    .line 433
    .restart local v2    # "dataSpec":Lcom/google/android/exoplayer/upstream/DataSpec;
    :cond_f
    if-eqz v11, :cond_10

    .line 434
    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/google/android/exoplayer/hls/TsChunk;->startTimeUs:J

    .restart local v8    # "startTimeUs":J
    goto :goto_7

    .line 436
    .end local v8    # "startTimeUs":J
    :cond_10
    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/google/android/exoplayer/hls/TsChunk;->endTimeUs:J

    .restart local v8    # "startTimeUs":J
    goto :goto_7

    .line 439
    .end local v8    # "startTimeUs":J
    :cond_11
    move-object/from16 v0, v33

    iget-wide v8, v0, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist$Segment;->startTimeUs:J

    .restart local v8    # "startTimeUs":J
    goto :goto_7

    .line 455
    .restart local v6    # "trigger":I
    .restart local v7    # "format":Lcom/google/android/exoplayer/chunk/Format;
    .restart local v20    # "endTimeUs":J
    .restart local v30    # "lastPathSegment":Ljava/lang/String;
    :cond_12
    const-string v4, ".mp3"

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 456
    new-instance v10, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;

    invoke-direct {v10, v8, v9}, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;-><init>(J)V

    .line 457
    .restart local v10    # "extractor":Lcom/google/android/exoplayer/extractor/Extractor;
    new-instance v5, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;

    const/4 v12, -0x1

    const/4 v13, -0x1

    invoke-direct/range {v5 .. v13}, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;-><init>(ILcom/google/android/exoplayer/chunk/Format;JLcom/google/android/exoplayer/extractor/Extractor;ZII)V

    .line 459
    .restart local v5    # "extractorWrapper":Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;
    goto :goto_8

    .end local v5    # "extractorWrapper":Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;
    .end local v10    # "extractor":Lcom/google/android/exoplayer/extractor/Extractor;
    :cond_13
    const-string v4, ".webvtt"

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_14

    const-string v4, ".vtt"

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 460
    :cond_14
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->timestampAdjusterProvider:Lcom/google/android/exoplayer/hls/PtsTimestampAdjusterProvider;

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->isMaster:Z

    move-object/from16 v0, v33

    iget v13, v0, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist$Segment;->discontinuitySequenceNumber:I

    .line 461
    invoke-virtual {v4, v12, v13, v8, v9}, Lcom/google/android/exoplayer/hls/PtsTimestampAdjusterProvider;->getAdjuster(ZIJ)Lcom/google/android/exoplayer/extractor/ts/PtsTimestampAdjuster;

    move-result-object v35

    .line 462
    .local v35, "timestampAdjuster":Lcom/google/android/exoplayer/extractor/ts/PtsTimestampAdjuster;
    if-eqz v35, :cond_0

    .line 468
    new-instance v10, Lcom/google/android/exoplayer/hls/WebvttExtractor;

    move-object/from16 v0, v35

    invoke-direct {v10, v0}, Lcom/google/android/exoplayer/hls/WebvttExtractor;-><init>(Lcom/google/android/exoplayer/extractor/ts/PtsTimestampAdjuster;)V

    .line 469
    .restart local v10    # "extractor":Lcom/google/android/exoplayer/extractor/Extractor;
    new-instance v5, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;

    const/4 v12, -0x1

    const/4 v13, -0x1

    invoke-direct/range {v5 .. v13}, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;-><init>(ILcom/google/android/exoplayer/chunk/Format;JLcom/google/android/exoplayer/extractor/Extractor;ZII)V

    .line 471
    .restart local v5    # "extractorWrapper":Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;
    goto/16 :goto_8

    .end local v5    # "extractorWrapper":Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;
    .end local v10    # "extractor":Lcom/google/android/exoplayer/extractor/Extractor;
    .end local v35    # "timestampAdjuster":Lcom/google/android/exoplayer/extractor/ts/PtsTimestampAdjuster;
    :cond_15
    if-eqz p1, :cond_16

    move-object/from16 v0, p1

    iget v4, v0, Lcom/google/android/exoplayer/hls/TsChunk;->discontinuitySequenceNumber:I

    move-object/from16 v0, v33

    iget v12, v0, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist$Segment;->discontinuitySequenceNumber:I

    if-ne v4, v12, :cond_16

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/exoplayer/hls/TsChunk;->format:Lcom/google/android/exoplayer/chunk/Format;

    .line 472
    invoke-virtual {v7, v4}, Lcom/google/android/exoplayer/chunk/Format;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_19

    .line 474
    :cond_16
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->timestampAdjusterProvider:Lcom/google/android/exoplayer/hls/PtsTimestampAdjusterProvider;

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->isMaster:Z

    move-object/from16 v0, v33

    iget v13, v0, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist$Segment;->discontinuitySequenceNumber:I

    .line 475
    invoke-virtual {v4, v12, v13, v8, v9}, Lcom/google/android/exoplayer/hls/PtsTimestampAdjusterProvider;->getAdjuster(ZIJ)Lcom/google/android/exoplayer/extractor/ts/PtsTimestampAdjuster;

    move-result-object v35

    .line 476
    .restart local v35    # "timestampAdjuster":Lcom/google/android/exoplayer/extractor/ts/PtsTimestampAdjuster;
    if-eqz v35, :cond_0

    .line 480
    const/16 v36, 0x0

    .line 481
    .local v36, "workaroundFlags":I
    iget-object v0, v7, Lcom/google/android/exoplayer/chunk/Format;->codecs:Ljava/lang/String;

    move-object/from16 v28, v0

    .line 482
    .local v28, "codecs":Ljava/lang/String;
    invoke-static/range {v28 .. v28}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_18

    .line 486
    invoke-static/range {v28 .. v28}, Lcom/google/android/exoplayer/util/MimeTypes;->getAudioMediaMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v12, "audio/mp4a-latm"

    if-eq v4, v12, :cond_17

    .line 487
    or-int/lit8 v36, v36, 0x2

    .line 489
    :cond_17
    invoke-static/range {v28 .. v28}, Lcom/google/android/exoplayer/util/MimeTypes;->getVideoMediaMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v12, "video/avc"

    if-eq v4, v12, :cond_18

    .line 490
    or-int/lit8 v36, v36, 0x4

    .line 493
    :cond_18
    new-instance v10, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;

    move-object/from16 v0, v35

    move/from16 v1, v36

    invoke-direct {v10, v0, v1}, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;-><init>(Lcom/google/android/exoplayer/extractor/ts/PtsTimestampAdjuster;I)V

    .line 494
    .restart local v10    # "extractor":Lcom/google/android/exoplayer/extractor/Extractor;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->tracks:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->selectedTrackIndex:I

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/google/android/exoplayer/hls/HlsChunkSource$ExposedTrack;

    .line 495
    .local v34, "selectedTrack":Lcom/google/android/exoplayer/hls/HlsChunkSource$ExposedTrack;
    new-instance v5, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;

    .line 496
    invoke-static/range {v34 .. v34}, Lcom/google/android/exoplayer/hls/HlsChunkSource$ExposedTrack;->access$200(Lcom/google/android/exoplayer/hls/HlsChunkSource$ExposedTrack;)I

    move-result v12

    invoke-static/range {v34 .. v34}, Lcom/google/android/exoplayer/hls/HlsChunkSource$ExposedTrack;->access$300(Lcom/google/android/exoplayer/hls/HlsChunkSource$ExposedTrack;)I

    move-result v13

    invoke-direct/range {v5 .. v13}, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;-><init>(ILcom/google/android/exoplayer/chunk/Format;JLcom/google/android/exoplayer/extractor/Extractor;ZII)V

    .line 497
    .restart local v5    # "extractorWrapper":Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;
    goto/16 :goto_8

    .line 499
    .end local v5    # "extractorWrapper":Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;
    .end local v10    # "extractor":Lcom/google/android/exoplayer/extractor/Extractor;
    .end local v28    # "codecs":Ljava/lang/String;
    .end local v34    # "selectedTrack":Lcom/google/android/exoplayer/hls/HlsChunkSource$ExposedTrack;
    .end local v35    # "timestampAdjuster":Lcom/google/android/exoplayer/extractor/ts/PtsTimestampAdjuster;
    .end local v36    # "workaroundFlags":I
    :cond_19
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/google/android/exoplayer/hls/TsChunk;->extractorWrapper:Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;

    .restart local v5    # "extractorWrapper":Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;
    goto/16 :goto_8
.end method

.method public getDurationUs()J
    .locals 2

    .prologue
    .line 270
    iget-wide v0, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->durationUs:J

    return-wide v0
.end method

.method public getFixedTrackVariant(I)Lcom/google/android/exoplayer/hls/Variant;
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 293
    iget-object v1, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->tracks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer/hls/HlsChunkSource$ExposedTrack;

    invoke-static {v1}, Lcom/google/android/exoplayer/hls/HlsChunkSource$ExposedTrack;->access$000(Lcom/google/android/exoplayer/hls/HlsChunkSource$ExposedTrack;)[Lcom/google/android/exoplayer/hls/Variant;

    move-result-object v0

    .line 294
    .local v0, "variants":[Lcom/google/android/exoplayer/hls/Variant;
    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSelectedTrackIndex()I
    .locals 1

    .prologue
    .line 304
    iget v0, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->selectedTrackIndex:I

    return v0
.end method

.method public getTrackCount()I
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->tracks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public isLive()Z
    .locals 1

    .prologue
    .line 260
    iget-boolean v0, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->live:Z

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
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->fatalError:Ljava/io/IOException;

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->fatalError:Ljava/io/IOException;

    throw v0

    .line 234
    :cond_0
    return-void
.end method

.method public onChunkLoadCompleted(Lcom/google/android/exoplayer/chunk/Chunk;)V
    .locals 5
    .param p1, "chunk"    # Lcom/google/android/exoplayer/chunk/Chunk;

    .prologue
    .line 513
    instance-of v2, p1, Lcom/google/android/exoplayer/hls/HlsChunkSource$MediaPlaylistChunk;

    if-eqz v2, :cond_1

    move-object v1, p1

    .line 514
    check-cast v1, Lcom/google/android/exoplayer/hls/HlsChunkSource$MediaPlaylistChunk;

    .line 515
    .local v1, "mediaPlaylistChunk":Lcom/google/android/exoplayer/hls/HlsChunkSource$MediaPlaylistChunk;
    invoke-virtual {v1}, Lcom/google/android/exoplayer/hls/HlsChunkSource$MediaPlaylistChunk;->getDataHolder()[B

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->scratchSpace:[B

    .line 516
    iget v2, v1, Lcom/google/android/exoplayer/hls/HlsChunkSource$MediaPlaylistChunk;->variantIndex:I

    invoke-virtual {v1}, Lcom/google/android/exoplayer/hls/HlsChunkSource$MediaPlaylistChunk;->getResult()Lcom/google/android/exoplayer/hls/HlsMediaPlaylist;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/google/android/exoplayer/hls/HlsChunkSource;->setMediaPlaylist(ILcom/google/android/exoplayer/hls/HlsMediaPlaylist;)V

    .line 522
    .end local v1    # "mediaPlaylistChunk":Lcom/google/android/exoplayer/hls/HlsChunkSource$MediaPlaylistChunk;
    :cond_0
    :goto_0
    return-void

    .line 517
    :cond_1
    instance-of v2, p1, Lcom/google/android/exoplayer/hls/HlsChunkSource$EncryptionKeyChunk;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 518
    check-cast v0, Lcom/google/android/exoplayer/hls/HlsChunkSource$EncryptionKeyChunk;

    .line 519
    .local v0, "encryptionKeyChunk":Lcom/google/android/exoplayer/hls/HlsChunkSource$EncryptionKeyChunk;
    invoke-virtual {v0}, Lcom/google/android/exoplayer/hls/HlsChunkSource$EncryptionKeyChunk;->getDataHolder()[B

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->scratchSpace:[B

    .line 520
    iget-object v2, v0, Lcom/google/android/exoplayer/hls/HlsChunkSource$EncryptionKeyChunk;->dataSpec:Lcom/google/android/exoplayer/upstream/DataSpec;

    iget-object v2, v2, Lcom/google/android/exoplayer/upstream/DataSpec;->uri:Landroid/net/Uri;

    iget-object v3, v0, Lcom/google/android/exoplayer/hls/HlsChunkSource$EncryptionKeyChunk;->iv:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/hls/HlsChunkSource$EncryptionKeyChunk;->getResult()[B

    move-result-object v4

    invoke-direct {p0, v2, v3, v4}, Lcom/google/android/exoplayer/hls/HlsChunkSource;->setEncryptionData(Landroid/net/Uri;Ljava/lang/String;[B)V

    goto :goto_0
.end method

.method public onChunkLoadError(Lcom/google/android/exoplayer/chunk/Chunk;Ljava/io/IOException;)Z
    .locals 12
    .param p1, "chunk"    # Lcom/google/android/exoplayer/chunk/Chunk;
    .param p2, "e"    # Ljava/io/IOException;

    .prologue
    .line 534
    invoke-virtual {p1}, Lcom/google/android/exoplayer/chunk/Chunk;->bytesLoaded()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-nez v7, :cond_7

    instance-of v7, p1, Lcom/google/android/exoplayer/hls/TsChunk;

    if-nez v7, :cond_0

    instance-of v7, p1, Lcom/google/android/exoplayer/hls/HlsChunkSource$MediaPlaylistChunk;

    if-nez v7, :cond_0

    instance-of v7, p1, Lcom/google/android/exoplayer/hls/HlsChunkSource$EncryptionKeyChunk;

    if-eqz v7, :cond_7

    :cond_0
    instance-of v7, p2, Lcom/google/android/exoplayer/upstream/HttpDataSource$InvalidResponseCodeException;

    if-eqz v7, :cond_7

    move-object v4, p2

    .line 536
    check-cast v4, Lcom/google/android/exoplayer/upstream/HttpDataSource$InvalidResponseCodeException;

    .line 537
    .local v4, "responseCodeException":Lcom/google/android/exoplayer/upstream/HttpDataSource$InvalidResponseCodeException;
    iget v3, v4, Lcom/google/android/exoplayer/upstream/HttpDataSource$InvalidResponseCodeException;->responseCode:I

    .line 538
    .local v3, "responseCode":I
    const/16 v7, 0x194

    if-eq v3, v7, :cond_1

    const/16 v7, 0x19a

    if-ne v3, v7, :cond_7

    .line 540
    :cond_1
    instance-of v7, p1, Lcom/google/android/exoplayer/hls/TsChunk;

    if-eqz v7, :cond_2

    move-object v5, p1

    .line 541
    check-cast v5, Lcom/google/android/exoplayer/hls/TsChunk;

    .line 542
    .local v5, "tsChunk":Lcom/google/android/exoplayer/hls/TsChunk;
    iget-object v7, v5, Lcom/google/android/exoplayer/hls/TsChunk;->format:Lcom/google/android/exoplayer/chunk/Format;

    invoke-direct {p0, v7}, Lcom/google/android/exoplayer/hls/HlsChunkSource;->getVariantIndex(Lcom/google/android/exoplayer/chunk/Format;)I

    move-result v6

    .line 550
    .end local v5    # "tsChunk":Lcom/google/android/exoplayer/hls/TsChunk;
    .local v6, "variantIndex":I
    :goto_0
    iget-object v7, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->variantBlacklistTimes:[J

    aget-wide v8, v7, v6

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-eqz v7, :cond_4

    const/4 v0, 0x1

    .line 551
    .local v0, "alreadyBlacklisted":Z
    :goto_1
    iget-object v7, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->variantBlacklistTimes:[J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    aput-wide v8, v7, v6

    .line 552
    if-eqz v0, :cond_5

    .line 554
    const-string v7, "HlsChunkSource"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Already blacklisted variant ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Lcom/google/android/exoplayer/chunk/Chunk;->dataSpec:Lcom/google/android/exoplayer/upstream/DataSpec;

    iget-object v9, v9, Lcom/google/android/exoplayer/upstream/DataSpec;->uri:Landroid/net/Uri;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    const/4 v7, 0x0

    .line 568
    .end local v0    # "alreadyBlacklisted":Z
    .end local v3    # "responseCode":I
    .end local v4    # "responseCodeException":Lcom/google/android/exoplayer/upstream/HttpDataSource$InvalidResponseCodeException;
    .end local v6    # "variantIndex":I
    :goto_2
    return v7

    .line 543
    .restart local v3    # "responseCode":I
    .restart local v4    # "responseCodeException":Lcom/google/android/exoplayer/upstream/HttpDataSource$InvalidResponseCodeException;
    :cond_2
    instance-of v7, p1, Lcom/google/android/exoplayer/hls/HlsChunkSource$MediaPlaylistChunk;

    if-eqz v7, :cond_3

    move-object v2, p1

    .line 544
    check-cast v2, Lcom/google/android/exoplayer/hls/HlsChunkSource$MediaPlaylistChunk;

    .line 545
    .local v2, "playlistChunk":Lcom/google/android/exoplayer/hls/HlsChunkSource$MediaPlaylistChunk;
    iget v6, v2, Lcom/google/android/exoplayer/hls/HlsChunkSource$MediaPlaylistChunk;->variantIndex:I

    .line 546
    .restart local v6    # "variantIndex":I
    goto :goto_0

    .end local v2    # "playlistChunk":Lcom/google/android/exoplayer/hls/HlsChunkSource$MediaPlaylistChunk;
    .end local v6    # "variantIndex":I
    :cond_3
    move-object v1, p1

    .line 547
    check-cast v1, Lcom/google/android/exoplayer/hls/HlsChunkSource$EncryptionKeyChunk;

    .line 548
    .local v1, "encryptionChunk":Lcom/google/android/exoplayer/hls/HlsChunkSource$EncryptionKeyChunk;
    iget v6, v1, Lcom/google/android/exoplayer/hls/HlsChunkSource$EncryptionKeyChunk;->variantIndex:I

    .restart local v6    # "variantIndex":I
    goto :goto_0

    .line 550
    .end local v1    # "encryptionChunk":Lcom/google/android/exoplayer/hls/HlsChunkSource$EncryptionKeyChunk;
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 556
    .restart local v0    # "alreadyBlacklisted":Z
    :cond_5
    invoke-direct {p0}, Lcom/google/android/exoplayer/hls/HlsChunkSource;->allVariantsBlacklisted()Z

    move-result v7

    if-nez v7, :cond_6

    .line 558
    const-string v7, "HlsChunkSource"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Blacklisted variant ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Lcom/google/android/exoplayer/chunk/Chunk;->dataSpec:Lcom/google/android/exoplayer/upstream/DataSpec;

    iget-object v9, v9, Lcom/google/android/exoplayer/upstream/DataSpec;->uri:Landroid/net/Uri;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    const/4 v7, 0x1

    goto :goto_2

    .line 562
    :cond_6
    const-string v7, "HlsChunkSource"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Final variant not blacklisted ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Lcom/google/android/exoplayer/chunk/Chunk;->dataSpec:Lcom/google/android/exoplayer/upstream/DataSpec;

    iget-object v9, v9, Lcom/google/android/exoplayer/upstream/DataSpec;->uri:Landroid/net/Uri;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    iget-object v7, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->variantBlacklistTimes:[J

    const-wide/16 v8, 0x0

    aput-wide v8, v7, v6

    .line 564
    const/4 v7, 0x0

    goto :goto_2

    .line 568
    .end local v0    # "alreadyBlacklisted":Z
    .end local v3    # "responseCode":I
    .end local v4    # "responseCodeException":Lcom/google/android/exoplayer/upstream/HttpDataSource$InvalidResponseCodeException;
    .end local v6    # "variantIndex":I
    :cond_7
    const/4 v7, 0x0

    goto :goto_2
.end method

.method public prepare()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 241
    iget-boolean v3, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->prepareCalled:Z

    if-nez v3, :cond_0

    .line 242
    iput-boolean v1, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->prepareCalled:Z

    .line 244
    :try_start_0
    iget-object v3, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->trackSelector:Lcom/google/android/exoplayer/hls/HlsTrackSelector;

    iget-object v4, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->masterPlaylist:Lcom/google/android/exoplayer/hls/HlsMasterPlaylist;

    invoke-interface {v3, v4, p0}, Lcom/google/android/exoplayer/hls/HlsTrackSelector;->selectTracks(Lcom/google/android/exoplayer/hls/HlsMasterPlaylist;Lcom/google/android/exoplayer/hls/HlsTrackSelector$Output;)V

    .line 245
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer/hls/HlsChunkSource;->selectTrack(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->fatalError:Ljava/io/IOException;

    if-nez v3, :cond_1

    :goto_1
    return v1

    .line 246
    :catch_0
    move-exception v0

    .line 247
    .local v0, "e":Ljava/io/IOException;
    iput-object v0, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->fatalError:Ljava/io/IOException;

    goto :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    move v1, v2

    .line 250
    goto :goto_1
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 341
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->fatalError:Ljava/io/IOException;

    .line 342
    return-void
.end method

.method public seek()V
    .locals 1

    .prologue
    .line 330
    iget-boolean v0, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->isMaster:Z

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->timestampAdjusterProvider:Lcom/google/android/exoplayer/hls/PtsTimestampAdjusterProvider;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/hls/PtsTimestampAdjusterProvider;->reset()V

    .line 333
    :cond_0
    return-void
.end method

.method public selectTrack(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 315
    iput p1, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->selectedTrackIndex:I

    .line 316
    iget-object v1, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->tracks:Ljava/util/ArrayList;

    iget v2, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->selectedTrackIndex:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/hls/HlsChunkSource$ExposedTrack;

    .line 317
    .local v0, "selectedTrack":Lcom/google/android/exoplayer/hls/HlsChunkSource$ExposedTrack;
    invoke-static {v0}, Lcom/google/android/exoplayer/hls/HlsChunkSource$ExposedTrack;->access$100(Lcom/google/android/exoplayer/hls/HlsChunkSource$ExposedTrack;)I

    move-result v1

    iput v1, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->selectedVariantIndex:I

    .line 318
    invoke-static {v0}, Lcom/google/android/exoplayer/hls/HlsChunkSource$ExposedTrack;->access$000(Lcom/google/android/exoplayer/hls/HlsChunkSource$ExposedTrack;)[Lcom/google/android/exoplayer/hls/Variant;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->variants:[Lcom/google/android/exoplayer/hls/Variant;

    .line 319
    iget-object v1, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->variants:[Lcom/google/android/exoplayer/hls/Variant;

    array-length v1, v1

    new-array v1, v1, [Lcom/google/android/exoplayer/hls/HlsMediaPlaylist;

    iput-object v1, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->variantPlaylists:[Lcom/google/android/exoplayer/hls/HlsMediaPlaylist;

    .line 320
    iget-object v1, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->variants:[Lcom/google/android/exoplayer/hls/Variant;

    array-length v1, v1

    new-array v1, v1, [J

    iput-object v1, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->variantLastPlaylistLoadTimesMs:[J

    .line 321
    iget-object v1, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->variants:[Lcom/google/android/exoplayer/hls/Variant;

    array-length v1, v1

    new-array v1, v1, [J

    iput-object v1, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->variantBlacklistTimes:[J

    .line 322
    return-void
.end method
