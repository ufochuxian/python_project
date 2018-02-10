.class final Lcom/google/android/exoplayer/extractor/ts/H262Reader;
.super Lcom/google/android/exoplayer/extractor/ts/ElementaryStreamReader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer/extractor/ts/H262Reader$CsdBuffer;
    }
.end annotation


# static fields
.field private static final FRAME_RATE_VALUES:[D

.field private static final START_EXTENSION:I = 0xb5

.field private static final START_GROUP:I = 0xb8

.field private static final START_PICTURE:I = 0x0

.field private static final START_SEQUENCE_HEADER:I = 0xb3


# instance fields
.field private final csdBuffer:Lcom/google/android/exoplayer/extractor/ts/H262Reader$CsdBuffer;

.field private foundFirstFrameInGroup:Z

.field private foundFirstFrameInPacket:Z

.field private frameDurationUs:J

.field private framePosition:J

.field private frameTimeUs:J

.field private hasOutputFormat:Z

.field private isKeyframe:Z

.field private pesTimeUs:J

.field private final prefixFlags:[Z

.field private totalBytesWritten:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const/16 v0, 0x8

    new-array v0, v0, [D

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/exoplayer/extractor/ts/H262Reader;->FRAME_RATE_VALUES:[D

    return-void

    :array_0
    .array-data 8
        0x4037f9dcb5112287L    # 23.976023976023978
        0x4038000000000000L    # 24.0
        0x4039000000000000L    # 25.0
        0x403df853e2556b28L    # 29.97002997002997
        0x403e000000000000L    # 30.0
        0x4049000000000000L    # 50.0
        0x404df853e2556b28L    # 59.94005994005994
        0x404e000000000000L    # 60.0
    .end array-data
.end method

.method public constructor <init>(Lcom/google/android/exoplayer/extractor/TrackOutput;)V
    .locals 2
    .param p1, "output"    # Lcom/google/android/exoplayer/extractor/TrackOutput;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/extractor/ts/ElementaryStreamReader;-><init>(Lcom/google/android/exoplayer/extractor/TrackOutput;)V

    .line 62
    const/4 v0, 0x4

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H262Reader;->prefixFlags:[Z

    .line 63
    new-instance v0, Lcom/google/android/exoplayer/extractor/ts/H262Reader$CsdBuffer;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/extractor/ts/H262Reader$CsdBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H262Reader;->csdBuffer:Lcom/google/android/exoplayer/extractor/ts/H262Reader$CsdBuffer;

    .line 64
    return-void
.end method

.method private static parseCsdBuffer(Lcom/google/android/exoplayer/extractor/ts/H262Reader$CsdBuffer;)Landroid/util/Pair;
    .locals 27
    .param p0, "csdBuffer"    # Lcom/google/android/exoplayer/extractor/ts/H262Reader$CsdBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer/extractor/ts/H262Reader$CsdBuffer;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Lcom/google/android/exoplayer/MediaFormat;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 74
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/extractor/ts/H262Reader$CsdBuffer;->data:[B

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/exoplayer/extractor/ts/H262Reader$CsdBuffer;->length:I

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v14

    .line 76
    .local v14, "csdData":[B
    const/4 v2, 0x4

    aget-byte v2, v14, v2

    and-int/lit16 v15, v2, 0xff

    .line 77
    .local v15, "firstByte":I
    const/4 v2, 0x5

    aget-byte v2, v14, v2

    and-int/lit16 v0, v2, 0xff

    move/from16 v24, v0

    .line 78
    .local v24, "secondByte":I
    const/4 v2, 0x6

    aget-byte v2, v14, v2

    and-int/lit16 v0, v2, 0xff

    move/from16 v26, v0

    .line 79
    .local v26, "thirdByte":I
    shl-int/lit8 v2, v15, 0x4

    shr-int/lit8 v3, v24, 0x4

    or-int v8, v2, v3

    .line 80
    .local v8, "width":I
    and-int/lit8 v2, v24, 0xf

    shl-int/lit8 v2, v2, 0x8

    or-int v9, v2, v26

    .line 82
    .local v9, "height":I
    const/high16 v12, 0x3f800000    # 1.0f

    .line 83
    .local v12, "pixelWidthHeightRatio":F
    const/4 v2, 0x7

    aget-byte v2, v14, v2

    and-int/lit16 v2, v2, 0xf0

    shr-int/lit8 v13, v2, 0x4

    .line 84
    .local v13, "aspectRatioCode":I
    packed-switch v13, :pswitch_data_0

    .line 99
    :goto_0
    const/4 v2, 0x0

    const-string v3, "video/mpeg2"

    const/4 v4, -0x1

    const/4 v5, -0x1

    const-wide/16 v6, -0x1

    .line 100
    invoke-static {v14}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    const/4 v11, -0x1

    .line 99
    invoke-static/range {v2 .. v12}, Lcom/google/android/exoplayer/MediaFormat;->createVideoFormat(Ljava/lang/String;Ljava/lang/String;IIJIILjava/util/List;IF)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v16

    .line 102
    .local v16, "format":Lcom/google/android/exoplayer/MediaFormat;
    const-wide/16 v18, 0x0

    .line 103
    .local v18, "frameDurationUs":J
    const/4 v2, 0x7

    aget-byte v2, v14, v2

    and-int/lit8 v2, v2, 0xf

    add-int/lit8 v17, v2, -0x1

    .line 104
    .local v17, "frameRateCodeMinusOne":I
    if-ltz v17, :cond_1

    sget-object v2, Lcom/google/android/exoplayer/extractor/ts/H262Reader;->FRAME_RATE_VALUES:[D

    array-length v2, v2

    move/from16 v0, v17

    if-ge v0, v2, :cond_1

    .line 105
    sget-object v2, Lcom/google/android/exoplayer/extractor/ts/H262Reader;->FRAME_RATE_VALUES:[D

    aget-wide v20, v2, v17

    .line 106
    .local v20, "frameRate":D
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer/extractor/ts/H262Reader$CsdBuffer;->sequenceExtensionPosition:I

    move/from16 v25, v0

    .line 107
    .local v25, "sequenceExtensionPosition":I
    add-int/lit8 v2, v25, 0x9

    aget-byte v2, v14, v2

    and-int/lit8 v2, v2, 0x60

    shr-int/lit8 v23, v2, 0x5

    .line 108
    .local v23, "frameRateExtensionN":I
    add-int/lit8 v2, v25, 0x9

    aget-byte v2, v14, v2

    and-int/lit8 v22, v2, 0x1f

    .line 109
    .local v22, "frameRateExtensionD":I
    move/from16 v0, v23

    move/from16 v1, v22

    if-eq v0, v1, :cond_0

    .line 110
    move/from16 v0, v23

    int-to-double v2, v0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    add-double/2addr v2, v4

    add-int/lit8 v4, v22, 0x1

    int-to-double v4, v4

    div-double/2addr v2, v4

    mul-double v20, v20, v2

    .line 112
    :cond_0
    const-wide v2, 0x412e848000000000L    # 1000000.0

    div-double v2, v2, v20

    double-to-long v0, v2

    move-wide/from16 v18, v0

    .line 115
    .end local v20    # "frameRate":D
    .end local v22    # "frameRateExtensionD":I
    .end local v23    # "frameRateExtensionN":I
    .end local v25    # "sequenceExtensionPosition":I
    :cond_1
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-static {v0, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    return-object v2

    .line 86
    .end local v16    # "format":Lcom/google/android/exoplayer/MediaFormat;
    .end local v17    # "frameRateCodeMinusOne":I
    .end local v18    # "frameDurationUs":J
    :pswitch_0
    mul-int/lit8 v2, v9, 0x4

    int-to-float v2, v2

    mul-int/lit8 v3, v8, 0x3

    int-to-float v3, v3

    div-float v12, v2, v3

    .line 87
    goto :goto_0

    .line 89
    :pswitch_1
    mul-int/lit8 v2, v9, 0x10

    int-to-float v2, v2

    mul-int/lit8 v3, v8, 0x9

    int-to-float v3, v3

    div-float v12, v2, v3

    .line 90
    goto :goto_0

    .line 92
    :pswitch_2
    mul-int/lit8 v2, v9, 0x79

    int-to-float v2, v2

    mul-int/lit8 v3, v8, 0x64

    int-to-float v3, v3

    div-float v12, v2, v3

    .line 93
    goto :goto_0

    .line 84
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public consume(Lcom/google/android/exoplayer/util/ParsableByteArray;)V
    .locals 20
    .param p1, "data"    # Lcom/google/android/exoplayer/util/ParsableByteArray;

    .prologue
    .line 135
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v3

    if-lez v3, :cond_0

    .line 136
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v13

    .line 137
    .local v13, "offset":I
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->limit()I

    move-result v12

    .line 138
    .local v12, "limit":I
    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    .line 141
    .local v10, "dataArray":[B
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/google/android/exoplayer/extractor/ts/H262Reader;->totalBytesWritten:J

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v3

    int-to-long v0, v3

    move-wide/from16 v18, v0

    add-long v4, v4, v18

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/google/android/exoplayer/extractor/ts/H262Reader;->totalBytesWritten:J

    .line 142
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer/extractor/ts/H262Reader;->output:Lcom/google/android/exoplayer/extractor/TrackOutput;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v4

    move-object/from16 v0, p1

    invoke-interface {v3, v0, v4}, Lcom/google/android/exoplayer/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer/util/ParsableByteArray;I)V

    .line 144
    move v15, v13

    .line 146
    .local v15, "searchOffset":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer/extractor/ts/H262Reader;->prefixFlags:[Z

    invoke-static {v10, v15, v12, v3}, Lcom/google/android/exoplayer/util/NalUnitUtil;->findNalUnit([BII[Z)I

    move-result v16

    .line 148
    .local v16, "startCodeOffset":I
    move/from16 v0, v16

    if-ne v0, v12, :cond_1

    .line 150
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/google/android/exoplayer/extractor/ts/H262Reader;->hasOutputFormat:Z

    if-nez v3, :cond_0

    .line 151
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer/extractor/ts/H262Reader;->csdBuffer:Lcom/google/android/exoplayer/extractor/ts/H262Reader$CsdBuffer;

    invoke-virtual {v3, v10, v13, v12}, Lcom/google/android/exoplayer/extractor/ts/H262Reader$CsdBuffer;->onData([BII)V

    .line 201
    .end local v10    # "dataArray":[B
    .end local v12    # "limit":I
    .end local v13    # "offset":I
    .end local v15    # "searchOffset":I
    .end local v16    # "startCodeOffset":I
    :cond_0
    return-void

    .line 157
    .restart local v10    # "dataArray":[B
    .restart local v12    # "limit":I
    .restart local v13    # "offset":I
    .restart local v15    # "searchOffset":I
    .restart local v16    # "startCodeOffset":I
    :cond_1
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    add-int/lit8 v4, v16, 0x3

    aget-byte v3, v3, v4

    and-int/lit16 v0, v3, 0xff

    move/from16 v17, v0

    .line 159
    .local v17, "startCodeValue":I
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/google/android/exoplayer/extractor/ts/H262Reader;->hasOutputFormat:Z

    if-nez v3, :cond_3

    .line 162
    sub-int v11, v16, v13

    .line 163
    .local v11, "lengthToStartCode":I
    if-lez v11, :cond_2

    .line 164
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer/extractor/ts/H262Reader;->csdBuffer:Lcom/google/android/exoplayer/extractor/ts/H262Reader$CsdBuffer;

    move/from16 v0, v16

    invoke-virtual {v3, v10, v13, v0}, Lcom/google/android/exoplayer/extractor/ts/H262Reader$CsdBuffer;->onData([BII)V

    .line 168
    :cond_2
    if-gez v11, :cond_7

    neg-int v2, v11

    .line 169
    .local v2, "bytesAlreadyPassed":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer/extractor/ts/H262Reader;->csdBuffer:Lcom/google/android/exoplayer/extractor/ts/H262Reader$CsdBuffer;

    move/from16 v0, v17

    invoke-virtual {v3, v0, v2}, Lcom/google/android/exoplayer/extractor/ts/H262Reader$CsdBuffer;->onStartCode(II)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 171
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer/extractor/ts/H262Reader;->csdBuffer:Lcom/google/android/exoplayer/extractor/ts/H262Reader$CsdBuffer;

    invoke-static {v3}, Lcom/google/android/exoplayer/extractor/ts/H262Reader;->parseCsdBuffer(Lcom/google/android/exoplayer/extractor/ts/H262Reader$CsdBuffer;)Landroid/util/Pair;

    move-result-object v14

    .line 172
    .local v14, "result":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/google/android/exoplayer/MediaFormat;Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/extractor/ts/H262Reader;->output:Lcom/google/android/exoplayer/extractor/TrackOutput;

    iget-object v3, v14, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/exoplayer/MediaFormat;

    invoke-interface {v4, v3}, Lcom/google/android/exoplayer/extractor/TrackOutput;->format(Lcom/google/android/exoplayer/MediaFormat;)V

    .line 173
    iget-object v3, v14, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/google/android/exoplayer/extractor/ts/H262Reader;->frameDurationUs:J

    .line 174
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/google/android/exoplayer/extractor/ts/H262Reader;->hasOutputFormat:Z

    .line 178
    .end local v2    # "bytesAlreadyPassed":I
    .end local v11    # "lengthToStartCode":I
    .end local v14    # "result":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/google/android/exoplayer/MediaFormat;Ljava/lang/Long;>;"
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/google/android/exoplayer/extractor/ts/H262Reader;->hasOutputFormat:Z

    if-eqz v3, :cond_6

    const/16 v3, 0xb8

    move/from16 v0, v17

    if-eq v0, v3, :cond_4

    if-nez v17, :cond_6

    .line 179
    :cond_4
    sub-int v8, v12, v16

    .line 180
    .local v8, "bytesWrittenPastStartCode":I
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/google/android/exoplayer/extractor/ts/H262Reader;->foundFirstFrameInGroup:Z

    if-eqz v3, :cond_5

    .line 181
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/google/android/exoplayer/extractor/ts/H262Reader;->isKeyframe:Z

    if-eqz v3, :cond_8

    const/4 v6, 0x1

    .line 182
    .local v6, "flags":I
    :goto_2
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/google/android/exoplayer/extractor/ts/H262Reader;->totalBytesWritten:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/exoplayer/extractor/ts/H262Reader;->framePosition:J

    move-wide/from16 v18, v0

    sub-long v4, v4, v18

    long-to-int v3, v4

    sub-int v7, v3, v8

    .line 183
    .local v7, "size":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer/extractor/ts/H262Reader;->output:Lcom/google/android/exoplayer/extractor/TrackOutput;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/google/android/exoplayer/extractor/ts/H262Reader;->frameTimeUs:J

    const/4 v9, 0x0

    invoke-interface/range {v3 .. v9}, Lcom/google/android/exoplayer/extractor/TrackOutput;->sampleMetadata(JIII[B)V

    .line 184
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/google/android/exoplayer/extractor/ts/H262Reader;->isKeyframe:Z

    .line 186
    .end local v6    # "flags":I
    .end local v7    # "size":I
    :cond_5
    const/16 v3, 0xb8

    move/from16 v0, v17

    if-ne v0, v3, :cond_9

    .line 187
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/google/android/exoplayer/extractor/ts/H262Reader;->foundFirstFrameInGroup:Z

    .line 188
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/google/android/exoplayer/extractor/ts/H262Reader;->isKeyframe:Z

    .line 197
    .end local v8    # "bytesWrittenPastStartCode":I
    :cond_6
    :goto_3
    move/from16 v13, v16

    .line 198
    add-int/lit8 v15, v13, 0x3

    .line 199
    goto/16 :goto_0

    .line 168
    .restart local v11    # "lengthToStartCode":I
    :cond_7
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 181
    .end local v11    # "lengthToStartCode":I
    .restart local v8    # "bytesWrittenPastStartCode":I
    :cond_8
    const/4 v6, 0x0

    goto :goto_2

    .line 190
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/google/android/exoplayer/extractor/ts/H262Reader;->foundFirstFrameInPacket:Z

    if-nez v3, :cond_a

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/google/android/exoplayer/extractor/ts/H262Reader;->pesTimeUs:J

    :goto_4
    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/google/android/exoplayer/extractor/ts/H262Reader;->frameTimeUs:J

    .line 191
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/google/android/exoplayer/extractor/ts/H262Reader;->totalBytesWritten:J

    int-to-long v0, v8

    move-wide/from16 v18, v0

    sub-long v4, v4, v18

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/google/android/exoplayer/extractor/ts/H262Reader;->framePosition:J

    .line 192
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/google/android/exoplayer/extractor/ts/H262Reader;->foundFirstFrameInPacket:Z

    .line 193
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/google/android/exoplayer/extractor/ts/H262Reader;->foundFirstFrameInGroup:Z

    goto :goto_3

    .line 190
    :cond_a
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/google/android/exoplayer/extractor/ts/H262Reader;->frameTimeUs:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/exoplayer/extractor/ts/H262Reader;->frameDurationUs:J

    move-wide/from16 v18, v0

    add-long v4, v4, v18

    goto :goto_4
.end method

.method public packetFinished()V
    .locals 0

    .prologue
    .line 206
    return-void
.end method

.method public packetStarted(JZ)V
    .locals 1
    .param p1, "pesTimeUs"    # J
    .param p3, "dataAlignmentIndicator"    # Z

    .prologue
    .line 129
    iput-wide p1, p0, Lcom/google/android/exoplayer/extractor/ts/H262Reader;->pesTimeUs:J

    .line 130
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer/extractor/ts/H262Reader;->foundFirstFrameInPacket:Z

    .line 131
    return-void
.end method

.method public seek()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 120
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H262Reader;->prefixFlags:[Z

    invoke-static {v0}, Lcom/google/android/exoplayer/util/NalUnitUtil;->clearPrefixFlags([Z)V

    .line 121
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H262Reader;->csdBuffer:Lcom/google/android/exoplayer/extractor/ts/H262Reader$CsdBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/extractor/ts/H262Reader$CsdBuffer;->reset()V

    .line 122
    iput-boolean v1, p0, Lcom/google/android/exoplayer/extractor/ts/H262Reader;->foundFirstFrameInPacket:Z

    .line 123
    iput-boolean v1, p0, Lcom/google/android/exoplayer/extractor/ts/H262Reader;->foundFirstFrameInGroup:Z

    .line 124
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/exoplayer/extractor/ts/H262Reader;->totalBytesWritten:J

    .line 125
    return-void
.end method
