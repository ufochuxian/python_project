.class final Lcom/google/android/exoplayer/extractor/mp3/VbriSeeker;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor$Seeker;


# instance fields
.field private final durationUs:J

.field private final positions:[J

.field private final timesUs:[J


# direct methods
.method private constructor <init>([J[JJ)V
    .locals 1
    .param p1, "timesUs"    # [J
    .param p2, "positions"    # [J
    .param p3, "durationUs"    # J

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/google/android/exoplayer/extractor/mp3/VbriSeeker;->timesUs:[J

    .line 34
    iput-object p2, p0, Lcom/google/android/exoplayer/extractor/mp3/VbriSeeker;->positions:[J

    .line 35
    iput-wide p3, p0, Lcom/google/android/exoplayer/extractor/mp3/VbriSeeker;->durationUs:J

    .line 36
    return-void
.end method

.method public static create(Lcom/google/android/exoplayer/util/MpegAudioHeader;Lcom/google/android/exoplayer/util/ParsableByteArray;JJ)Lcom/google/android/exoplayer/extractor/mp3/VbriSeeker;
    .locals 22
    .param p0, "mpegAudioHeader"    # Lcom/google/android/exoplayer/util/MpegAudioHeader;
    .param p1, "frame"    # Lcom/google/android/exoplayer/util/ParsableByteArray;
    .param p2, "position"    # J
    .param p4, "inputLength"    # J

    .prologue
    .line 55
    const/16 v4, 0xa

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 56
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v15

    .line 57
    .local v15, "numFrames":I
    if-gtz v15, :cond_0

    .line 58
    const/4 v4, 0x0

    .line 97
    :goto_0
    return-object v4

    .line 60
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer/util/MpegAudioHeader;->sampleRate:I

    move/from16 v17, v0

    .line 61
    .local v17, "sampleRate":I
    int-to-long v4, v15

    const-wide/32 v8, 0xf4240

    const/16 v6, 0x7d00

    move/from16 v0, v17

    if-lt v0, v6, :cond_1

    const/16 v6, 0x480

    :goto_1
    int-to-long v6, v6

    mul-long/2addr v6, v8

    move/from16 v0, v17

    int-to-long v8, v0

    invoke-static/range {v4 .. v9}, Lcom/google/android/exoplayer/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v10

    .line 62
    .local v10, "durationUs":J
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedShort()I

    move-result v12

    .line 63
    .local v12, "entryCount":I
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedShort()I

    move-result v18

    .line 64
    .local v18, "scale":I
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedShort()I

    move-result v13

    .line 65
    .local v13, "entrySize":I
    const/4 v4, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 68
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/exoplayer/util/MpegAudioHeader;->frameSize:I

    int-to-long v4, v4

    add-long p2, p2, v4

    .line 71
    add-int/lit8 v4, v12, 0x1

    new-array v0, v4, [J

    move-object/from16 v20, v0

    .line 72
    .local v20, "timesUs":[J
    add-int/lit8 v4, v12, 0x1

    new-array v0, v4, [J

    move-object/from16 v16, v0

    .line 73
    .local v16, "positions":[J
    const/4 v4, 0x0

    const-wide/16 v6, 0x0

    aput-wide v6, v20, v4

    .line 74
    const/4 v4, 0x0

    aput-wide p2, v16, v4

    .line 75
    const/4 v14, 0x1

    .local v14, "index":I
    :goto_2
    move-object/from16 v0, v20

    array-length v4, v0

    if-ge v14, v4, :cond_3

    .line 77
    packed-switch v13, :pswitch_data_0

    .line 91
    const/4 v4, 0x0

    goto :goto_0

    .line 61
    .end local v10    # "durationUs":J
    .end local v12    # "entryCount":I
    .end local v13    # "entrySize":I
    .end local v14    # "index":I
    .end local v16    # "positions":[J
    .end local v18    # "scale":I
    .end local v20    # "timesUs":[J
    :cond_1
    const/16 v6, 0x240

    goto :goto_1

    .line 79
    .restart local v10    # "durationUs":J
    .restart local v12    # "entryCount":I
    .restart local v13    # "entrySize":I
    .restart local v14    # "index":I
    .restart local v16    # "positions":[J
    .restart local v18    # "scale":I
    .restart local v20    # "timesUs":[J
    :pswitch_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v19

    .line 93
    .local v19, "segmentSize":I
    :goto_3
    mul-int v4, v19, v18

    int-to-long v4, v4

    add-long p2, p2, v4

    .line 94
    int-to-long v4, v14

    mul-long/2addr v4, v10

    int-to-long v6, v12

    div-long/2addr v4, v6

    aput-wide v4, v20, v14

    .line 95
    const-wide/16 v4, -0x1

    cmp-long v4, p4, v4

    if-nez v4, :cond_2

    move-wide/from16 v4, p2

    :goto_4
    aput-wide v4, v16, v14

    .line 75
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 82
    .end local v19    # "segmentSize":I
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedShort()I

    move-result v19

    .line 83
    .restart local v19    # "segmentSize":I
    goto :goto_3

    .line 85
    .end local v19    # "segmentSize":I
    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v19

    .line 86
    .restart local v19    # "segmentSize":I
    goto :goto_3

    .line 88
    .end local v19    # "segmentSize":I
    :pswitch_3
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v19

    .line 89
    .restart local v19    # "segmentSize":I
    goto :goto_3

    .line 95
    :cond_2
    move-wide/from16 v0, p4

    move-wide/from16 v2, p2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    goto :goto_4

    .line 97
    .end local v19    # "segmentSize":I
    :cond_3
    new-instance v4, Lcom/google/android/exoplayer/extractor/mp3/VbriSeeker;

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-direct {v4, v0, v1, v10, v11}, Lcom/google/android/exoplayer/extractor/mp3/VbriSeeker;-><init>([J[JJ)V

    goto/16 :goto_0

    .line 77
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public getDurationUs()J
    .locals 2

    .prologue
    .line 117
    iget-wide v0, p0, Lcom/google/android/exoplayer/extractor/mp3/VbriSeeker;->durationUs:J

    return-wide v0
.end method

.method public getPosition(J)J
    .locals 3
    .param p1, "timeUs"    # J

    .prologue
    const/4 v2, 0x1

    .line 107
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp3/VbriSeeker;->positions:[J

    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/mp3/VbriSeeker;->timesUs:[J

    invoke-static {v1, p1, p2, v2, v2}, Lcom/google/android/exoplayer/util/Util;->binarySearchFloor([JJZZ)I

    move-result v1

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public getTimeUs(J)J
    .locals 3
    .param p1, "position"    # J

    .prologue
    const/4 v2, 0x1

    .line 112
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp3/VbriSeeker;->timesUs:[J

    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/mp3/VbriSeeker;->positions:[J

    invoke-static {v1, p1, p2, v2, v2}, Lcom/google/android/exoplayer/util/Util;->binarySearchFloor([JJZZ)I

    move-result v1

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public isSeekable()Z
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x1

    return v0
.end method
