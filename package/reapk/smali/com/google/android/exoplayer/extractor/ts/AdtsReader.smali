.class final Lcom/google/android/exoplayer/extractor/ts/AdtsReader;
.super Lcom/google/android/exoplayer/extractor/ts/ElementaryStreamReader;
.source "SourceFile"


# static fields
.field private static final CRC_SIZE:I = 0x2

.field private static final HEADER_SIZE:I = 0x5

.field private static final ID3_HEADER_SIZE:I = 0xa

.field private static final ID3_IDENTIFIER:[B

.field private static final ID3_SIZE_OFFSET:I = 0x6

.field private static final MATCH_STATE_FF:I = 0x200

.field private static final MATCH_STATE_I:I = 0x300

.field private static final MATCH_STATE_ID:I = 0x400

.field private static final MATCH_STATE_START:I = 0x100

.field private static final MATCH_STATE_VALUE_SHIFT:I = 0x8

.field private static final STATE_FINDING_SAMPLE:I = 0x0

.field private static final STATE_READING_ADTS_HEADER:I = 0x2

.field private static final STATE_READING_ID3_HEADER:I = 0x1

.field private static final STATE_READING_SAMPLE:I = 0x3


# instance fields
.field private final adtsScratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

.field private bytesRead:I

.field private currentOutput:Lcom/google/android/exoplayer/extractor/TrackOutput;

.field private currentSampleDuration:J

.field private hasCrc:Z

.field private hasOutputFormat:Z

.field private final id3HeaderBuffer:Lcom/google/android/exoplayer/util/ParsableByteArray;

.field private final id3Output:Lcom/google/android/exoplayer/extractor/TrackOutput;

.field private matchState:I

.field private sampleDurationUs:J

.field private sampleSize:I

.field private state:I

.field private timeUs:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/exoplayer/extractor/ts/AdtsReader;->ID3_IDENTIFIER:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x49t
        0x44t
        0x33t
    .end array-data
.end method

.method public constructor <init>(Lcom/google/android/exoplayer/extractor/TrackOutput;Lcom/google/android/exoplayer/extractor/TrackOutput;)V
    .locals 3
    .param p1, "output"    # Lcom/google/android/exoplayer/extractor/TrackOutput;
    .param p2, "id3Output"    # Lcom/google/android/exoplayer/extractor/TrackOutput;

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/extractor/ts/ElementaryStreamReader;-><init>(Lcom/google/android/exoplayer/extractor/TrackOutput;)V

    .line 85
    iput-object p2, p0, Lcom/google/android/exoplayer/extractor/ts/AdtsReader;->id3Output:Lcom/google/android/exoplayer/extractor/TrackOutput;

    .line 86
    invoke-static {}, Lcom/google/android/exoplayer/MediaFormat;->createId3Format()Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/google/android/exoplayer/extractor/TrackOutput;->format(Lcom/google/android/exoplayer/MediaFormat;)V

    .line 87
    new-instance v0, Lcom/google/android/exoplayer/util/ParsableBitArray;

    const/4 v1, 0x7

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/util/ParsableBitArray;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/AdtsReader;->adtsScratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

    .line 88
    new-instance v0, Lcom/google/android/exoplayer/util/ParsableByteArray;

    sget-object v1, Lcom/google/android/exoplayer/extractor/ts/AdtsReader;->ID3_IDENTIFIER:[B

    const/16 v2, 0xa

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/AdtsReader;->id3HeaderBuffer:Lcom/google/android/exoplayer/util/ParsableByteArray;

    .line 89
    invoke-direct {p0}, Lcom/google/android/exoplayer/extractor/ts/AdtsReader;->setFindingSampleState()V

    .line 90
    return-void
.end method

.method private continueRead(Lcom/google/android/exoplayer/util/ParsableByteArray;[BI)Z
    .locals 3
    .param p1, "source"    # Lcom/google/android/exoplayer/util/ParsableByteArray;
    .param p2, "target"    # [B
    .param p3, "targetLength"    # I

    .prologue
    .line 144
    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v1

    iget v2, p0, Lcom/google/android/exoplayer/extractor/ts/AdtsReader;->bytesRead:I

    sub-int v2, p3, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 145
    .local v0, "bytesToRead":I
    iget v1, p0, Lcom/google/android/exoplayer/extractor/ts/AdtsReader;->bytesRead:I

    invoke-virtual {p1, p2, v1, v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readBytes([BII)V

    .line 146
    iget v1, p0, Lcom/google/android/exoplayer/extractor/ts/AdtsReader;->bytesRead:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/exoplayer/extractor/ts/AdtsReader;->bytesRead:I

    .line 147
    iget v1, p0, Lcom/google/android/exoplayer/extractor/ts/AdtsReader;->bytesRead:I

    if-ne v1, p3, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private findNextSample(Lcom/google/android/exoplayer/util/ParsableByteArray;)V
    .locals 8
    .param p1, "pesBuffer"    # Lcom/google/android/exoplayer/util/ParsableByteArray;

    .prologue
    const/16 v7, 0x200

    const/16 v6, 0x100

    .line 203
    iget-object v0, p1, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    .line 204
    .local v0, "adtsData":[B
    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v3

    .line 205
    .local v3, "position":I
    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->limit()I

    move-result v2

    .local v2, "endOffset":I
    move v4, v3

    .line 206
    .end local v3    # "position":I
    .local v4, "position":I
    :goto_0
    if-ge v4, v2, :cond_3

    .line 207
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "position":I
    .restart local v3    # "position":I
    aget-byte v5, v0, v4

    and-int/lit16 v1, v5, 0xff

    .line 208
    .local v1, "data":I
    iget v5, p0, Lcom/google/android/exoplayer/extractor/ts/AdtsReader;->matchState:I

    if-ne v5, v7, :cond_1

    const/16 v5, 0xf0

    if-lt v1, v5, :cond_1

    const/16 v5, 0xff

    if-eq v1, v5, :cond_1

    .line 209
    and-int/lit8 v5, v1, 0x1

    if-nez v5, :cond_0

    const/4 v5, 0x1

    :goto_1
    iput-boolean v5, p0, Lcom/google/android/exoplayer/extractor/ts/AdtsReader;->hasCrc:Z

    .line 210
    invoke-direct {p0}, Lcom/google/android/exoplayer/extractor/ts/AdtsReader;->setReadingAdtsHeaderState()V

    .line 211
    invoke-virtual {p1, v3}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 239
    .end local v1    # "data":I
    :goto_2
    return-void

    .line 209
    .restart local v1    # "data":I
    :cond_0
    const/4 v5, 0x0

    goto :goto_1

    .line 214
    :cond_1
    iget v5, p0, Lcom/google/android/exoplayer/extractor/ts/AdtsReader;->matchState:I

    or-int/2addr v5, v1

    sparse-switch v5, :sswitch_data_0

    .line 229
    iget v5, p0, Lcom/google/android/exoplayer/extractor/ts/AdtsReader;->matchState:I

    if-eq v5, v6, :cond_2

    .line 232
    iput v6, p0, Lcom/google/android/exoplayer/extractor/ts/AdtsReader;->matchState:I

    .line 233
    add-int/lit8 v3, v3, -0x1

    :cond_2
    :goto_3
    move v4, v3

    .line 237
    .end local v3    # "position":I
    .restart local v4    # "position":I
    goto :goto_0

    .line 216
    .end local v4    # "position":I
    .restart local v3    # "position":I
    :sswitch_0
    iput v7, p0, Lcom/google/android/exoplayer/extractor/ts/AdtsReader;->matchState:I

    goto :goto_3

    .line 219
    :sswitch_1
    const/16 v5, 0x300

    iput v5, p0, Lcom/google/android/exoplayer/extractor/ts/AdtsReader;->matchState:I

    goto :goto_3

    .line 222
    :sswitch_2
    const/16 v5, 0x400

    iput v5, p0, Lcom/google/android/exoplayer/extractor/ts/AdtsReader;->matchState:I

    goto :goto_3

    .line 225
    :sswitch_3
    invoke-direct {p0}, Lcom/google/android/exoplayer/extractor/ts/AdtsReader;->setReadingId3HeaderState()V

    .line 226
    invoke-virtual {p1, v3}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    goto :goto_2

    .line 238
    .end local v1    # "data":I
    .end local v3    # "position":I
    .restart local v4    # "position":I
    :cond_3
    invoke-virtual {p1, v4}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    move v3, v4

    .line 239
    .end local v4    # "position":I
    .restart local v3    # "position":I
    goto :goto_2

    .line 214
    :sswitch_data_0
    .sparse-switch
        0x149 -> :sswitch_1
        0x1ff -> :sswitch_0
        0x344 -> :sswitch_2
        0x433 -> :sswitch_3
    .end sparse-switch
.end method

.method private parseAdtsHeader()V
    .locals 18

    .prologue
    .line 254
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/extractor/ts/AdtsReader;->adtsScratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer/util/ParsableBitArray;->setPosition(I)V

    .line 256
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/exoplayer/extractor/ts/AdtsReader;->hasOutputFormat:Z

    if-nez v2, :cond_1

    .line 257
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/extractor/ts/AdtsReader;->adtsScratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v2

    add-int/lit8 v12, v2, 0x1

    .line 258
    .local v12, "audioObjectType":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/extractor/ts/AdtsReader;->adtsScratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v17

    .line 259
    .local v17, "sampleRateIndex":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/extractor/ts/AdtsReader;->adtsScratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer/util/ParsableBitArray;->skipBits(I)V

    .line 260
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/extractor/ts/AdtsReader;->adtsScratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v15

    .line 262
    .local v15, "channelConfig":I
    move/from16 v0, v17

    invoke-static {v12, v0, v15}, Lcom/google/android/exoplayer/util/CodecSpecificDataUtil;->buildAacAudioSpecificConfig(III)[B

    move-result-object v14

    .line 263
    .local v14, "audioSpecificConfig":[B
    invoke-static {v14}, Lcom/google/android/exoplayer/util/CodecSpecificDataUtil;->parseAacAudioSpecificConfig([B)Landroid/util/Pair;

    move-result-object v13

    .line 265
    .local v13, "audioParams":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    const-string v3, "audio/mp4a-latm"

    const/4 v4, -0x1

    const/4 v5, -0x1

    const-wide/16 v6, -0x1

    iget-object v8, v13, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    .line 266
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-object v9, v13, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v14}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    const/4 v11, 0x0

    .line 265
    invoke-static/range {v2 .. v11}, Lcom/google/android/exoplayer/MediaFormat;->createAudioFormat(Ljava/lang/String;Ljava/lang/String;IIJIILjava/util/List;Ljava/lang/String;)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v16

    .line 269
    .local v16, "mediaFormat":Lcom/google/android/exoplayer/MediaFormat;
    const-wide/32 v2, 0x3d090000

    move-object/from16 v0, v16

    iget v4, v0, Lcom/google/android/exoplayer/MediaFormat;->sampleRate:I

    int-to-long v4, v4

    div-long/2addr v2, v4

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/google/android/exoplayer/extractor/ts/AdtsReader;->sampleDurationUs:J

    .line 270
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/extractor/ts/AdtsReader;->output:Lcom/google/android/exoplayer/extractor/TrackOutput;

    move-object/from16 v0, v16

    invoke-interface {v2, v0}, Lcom/google/android/exoplayer/extractor/TrackOutput;->format(Lcom/google/android/exoplayer/MediaFormat;)V

    .line 271
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/android/exoplayer/extractor/ts/AdtsReader;->hasOutputFormat:Z

    .line 276
    .end local v12    # "audioObjectType":I
    .end local v13    # "audioParams":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v14    # "audioSpecificConfig":[B
    .end local v15    # "channelConfig":I
    .end local v16    # "mediaFormat":Lcom/google/android/exoplayer/MediaFormat;
    .end local v17    # "sampleRateIndex":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/extractor/ts/AdtsReader;->adtsScratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer/util/ParsableBitArray;->skipBits(I)V

    .line 277
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/extractor/ts/AdtsReader;->adtsScratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    add-int/lit8 v7, v2, -0x5

    .line 278
    .local v7, "sampleSize":I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/exoplayer/extractor/ts/AdtsReader;->hasCrc:Z

    if-eqz v2, :cond_0

    .line 279
    add-int/lit8 v7, v7, -0x2

    .line 282
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer/extractor/ts/AdtsReader;->output:Lcom/google/android/exoplayer/extractor/TrackOutput;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/google/android/exoplayer/extractor/ts/AdtsReader;->sampleDurationUs:J

    const/4 v6, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/google/android/exoplayer/extractor/ts/AdtsReader;->setReadingSampleState(Lcom/google/android/exoplayer/extractor/TrackOutput;JII)V

    .line 283
    return-void

    .line 273
    .end local v7    # "sampleSize":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/extractor/ts/AdtsReader;->adtsScratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer/util/ParsableBitArray;->skipBits(I)V

    goto :goto_0
.end method

.method private parseId3Header()V
    .locals 6

    .prologue
    const/16 v4, 0xa

    .line 245
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/AdtsReader;->id3Output:Lcom/google/android/exoplayer/extractor/TrackOutput;

    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/AdtsReader;->id3HeaderBuffer:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-interface {v0, v1, v4}, Lcom/google/android/exoplayer/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer/util/ParsableByteArray;I)V

    .line 246
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/AdtsReader;->id3HeaderBuffer:Lcom/google/android/exoplayer/util/ParsableByteArray;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 247
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/AdtsReader;->id3Output:Lcom/google/android/exoplayer/extractor/TrackOutput;

    const-wide/16 v2, 0x0

    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/AdtsReader;->id3HeaderBuffer:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readSynchSafeInt()I

    move-result v0

    add-int/lit8 v5, v0, 0xa

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer/extractor/ts/AdtsReader;->setReadingSampleState(Lcom/google/android/exoplayer/extractor/TrackOutput;JII)V

    .line 248
    return-void
.end method

.method private readSample(Lcom/google/android/exoplayer/util/ParsableByteArray;)V
    .locals 8
    .param p1, "data"    # Lcom/google/android/exoplayer/util/ParsableByteArray;

    .prologue
    .line 289
    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v1

    iget v2, p0, Lcom/google/android/exoplayer/extractor/ts/AdtsReader;->sampleSize:I

    iget v3, p0, Lcom/google/android/exoplayer/extractor/ts/AdtsReader;->bytesRead:I

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 290
    .local v0, "bytesToRead":I
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/AdtsReader;->currentOutput:Lcom/google/android/exoplayer/extractor/TrackOutput;

    invoke-interface {v1, p1, v0}, Lcom/google/android/exoplayer/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer/util/ParsableByteArray;I)V

    .line 291
    iget v1, p0, Lcom/google/android/exoplayer/extractor/ts/AdtsReader;->bytesRead:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/exoplayer/extractor/ts/AdtsReader;->bytesRead:I

    .line 292
    iget v1, p0, Lcom/google/android/exoplayer/extractor/ts/AdtsReader;->bytesRead:I

    iget v2, p0, Lcom/google/android/exoplayer/extractor/ts/AdtsReader;->sampleSize:I

    if-ne v1, v2, :cond_0

    .line 293
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/AdtsReader;->currentOutput:Lcom/google/android/exoplayer/extractor/TrackOutput;

    iget-wide v2, p0, Lcom/google/android/exoplayer/extractor/ts/AdtsReader;->timeUs:J

    const/4 v4, 0x1

    iget v5, p0, Lcom/google/android/exoplayer/extractor/ts/AdtsReader;->sampleSize:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v1 .. v7}, Lcom/google/android/exoplayer/extractor/TrackOutput;->sampleMetadata(JIII[B)V

    .line 294
    iget-wide v2, p0, Lcom/google/android/exoplayer/extractor/ts/AdtsReader;->timeUs:J

    iget-wide v4, p0, Lcom/google/android/exoplayer/extractor/ts/AdtsReader;->currentSampleDuration:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/exoplayer/extractor/ts/AdtsReader;->timeUs:J

    .line 295
    invoke-direct {p0}, Lcom/google/android/exoplayer/extractor/ts/AdtsReader;->setFindingSampleState()V

    .line 297
    :cond_0
    return-void
.end method

.method private setFindingSampleState()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 154
    iput v0, p0, Lcom/google/android/exoplayer/extractor/ts/AdtsReader;->state:I

    .line 155
    iput v0, p0, Lcom/google/android/exoplayer/extractor/ts/AdtsReader;->bytesRead:I

    .line 156
    const/16 v0, 0x100

    iput v0, p0, Lcom/google/android/exoplayer/extractor/ts/AdtsReader;->matchState:I

    .line 157
    return-void
.end method

.method private setReadingAdtsHeaderState()V
    .locals 1

    .prologue
    .line 192
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/exoplayer/extractor/ts/AdtsReader;->state:I

    .line 193
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer/extractor/ts/AdtsReader;->bytesRead:I

    .line 194
    return-void
.end method

.method private setReadingId3HeaderState()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 163
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer/extractor/ts/AdtsReader;->state:I

    .line 164
    sget-object v0, Lcom/google/android/exoplayer/extractor/ts/AdtsReader;->ID3_IDENTIFIER:[B

    array-length v0, v0

    iput v0, p0, Lcom/google/android/exoplayer/extractor/ts/AdtsReader;->bytesRead:I

    .line 165
    iput v1, p0, Lcom/google/android/exoplayer/extractor/ts/AdtsReader;->sampleSize:I

    .line 166
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/AdtsReader;->id3HeaderBuffer:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 167
    return-void
.end method

.method private setReadingSampleState(Lcom/google/android/exoplayer/extractor/TrackOutput;JII)V
    .locals 2
    .param p1, "outputToUse"    # Lcom/google/android/exoplayer/extractor/TrackOutput;
    .param p2, "currentSampleDuration"    # J
    .param p4, "priorReadBytes"    # I
    .param p5, "sampleSize"    # I

    .prologue
    .line 181
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/exoplayer/extractor/ts/AdtsReader;->state:I

    .line 182
    iput p4, p0, Lcom/google/android/exoplayer/extractor/ts/AdtsReader;->bytesRead:I

    .line 183
    iput-object p1, p0, Lcom/google/android/exoplayer/extractor/ts/AdtsReader;->currentOutput:Lcom/google/android/exoplayer/extractor/TrackOutput;

    .line 184
    iput-wide p2, p0, Lcom/google/android/exoplayer/extractor/ts/AdtsReader;->currentSampleDuration:J

    .line 185
    iput p5, p0, Lcom/google/android/exoplayer/extractor/ts/AdtsReader;->sampleSize:I

    .line 186
    return-void
.end method


# virtual methods
.method public consume(Lcom/google/android/exoplayer/util/ParsableByteArray;)V
    .locals 3
    .param p1, "data"    # Lcom/google/android/exoplayer/util/ParsableByteArray;

    .prologue
    .line 104
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v1

    if-lez v1, :cond_2

    .line 105
    iget v1, p0, Lcom/google/android/exoplayer/extractor/ts/AdtsReader;->state:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 107
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/extractor/ts/AdtsReader;->findNextSample(Lcom/google/android/exoplayer/util/ParsableByteArray;)V

    goto :goto_0

    .line 110
    :pswitch_1
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/AdtsReader;->id3HeaderBuffer:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v1, v1, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    const/16 v2, 0xa

    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/exoplayer/extractor/ts/AdtsReader;->continueRead(Lcom/google/android/exoplayer/util/ParsableByteArray;[BI)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    invoke-direct {p0}, Lcom/google/android/exoplayer/extractor/ts/AdtsReader;->parseId3Header()V

    goto :goto_0

    .line 115
    :pswitch_2
    iget-boolean v1, p0, Lcom/google/android/exoplayer/extractor/ts/AdtsReader;->hasCrc:Z

    if-eqz v1, :cond_1

    const/4 v0, 0x7

    .line 116
    .local v0, "targetLength":I
    :goto_1
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/AdtsReader;->adtsScratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

    iget-object v1, v1, Lcom/google/android/exoplayer/util/ParsableBitArray;->data:[B

    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/exoplayer/extractor/ts/AdtsReader;->continueRead(Lcom/google/android/exoplayer/util/ParsableByteArray;[BI)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 117
    invoke-direct {p0}, Lcom/google/android/exoplayer/extractor/ts/AdtsReader;->parseAdtsHeader()V

    goto :goto_0

    .line 115
    .end local v0    # "targetLength":I
    :cond_1
    const/4 v0, 0x5

    goto :goto_1

    .line 121
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/extractor/ts/AdtsReader;->readSample(Lcom/google/android/exoplayer/util/ParsableByteArray;)V

    goto :goto_0

    .line 125
    :cond_2
    return-void

    .line 105
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public packetFinished()V
    .locals 0

    .prologue
    .line 130
    return-void
.end method

.method public packetStarted(JZ)V
    .locals 1
    .param p1, "pesTimeUs"    # J
    .param p3, "dataAlignmentIndicator"    # Z

    .prologue
    .line 99
    iput-wide p1, p0, Lcom/google/android/exoplayer/extractor/ts/AdtsReader;->timeUs:J

    .line 100
    return-void
.end method

.method public seek()V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/google/android/exoplayer/extractor/ts/AdtsReader;->setFindingSampleState()V

    .line 95
    return-void
.end method
