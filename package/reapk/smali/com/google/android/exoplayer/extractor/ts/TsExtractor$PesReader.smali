.class final Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PesReader;
.super Lcom/google/android/exoplayer/extractor/ts/TsExtractor$TsPayloadReader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer/extractor/ts/TsExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PesReader"
.end annotation


# static fields
.field private static final HEADER_SIZE:I = 0x9

.field private static final MAX_HEADER_EXTENSION_SIZE:I = 0xa

.field private static final PES_SCRATCH_SIZE:I = 0xa

.field private static final STATE_FINDING_HEADER:I = 0x0

.field private static final STATE_READING_BODY:I = 0x3

.field private static final STATE_READING_HEADER:I = 0x1

.field private static final STATE_READING_HEADER_EXTENSION:I = 0x2


# instance fields
.field private bytesRead:I

.field private dataAlignmentIndicator:Z

.field private dtsFlag:Z

.field private extendedHeaderLength:I

.field private payloadSize:I

.field private final pesPayloadReader:Lcom/google/android/exoplayer/extractor/ts/ElementaryStreamReader;

.field private final pesScratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

.field private ptsFlag:Z

.field private final ptsTimestampAdjuster:Lcom/google/android/exoplayer/extractor/ts/PtsTimestampAdjuster;

.field private seenFirstDts:Z

.field private state:I

.field private timeUs:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer/extractor/ts/ElementaryStreamReader;Lcom/google/android/exoplayer/extractor/ts/PtsTimestampAdjuster;)V
    .locals 2
    .param p1, "pesPayloadReader"    # Lcom/google/android/exoplayer/extractor/ts/ElementaryStreamReader;
    .param p2, "ptsTimestampAdjuster"    # Lcom/google/android/exoplayer/extractor/ts/PtsTimestampAdjuster;

    .prologue
    .line 221
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$TsPayloadReader;-><init>(Lcom/google/android/exoplayer/extractor/ts/TsExtractor$1;)V

    .line 222
    iput-object p1, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PesReader;->pesPayloadReader:Lcom/google/android/exoplayer/extractor/ts/ElementaryStreamReader;

    .line 223
    iput-object p2, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PesReader;->ptsTimestampAdjuster:Lcom/google/android/exoplayer/extractor/ts/PtsTimestampAdjuster;

    .line 224
    new-instance v0, Lcom/google/android/exoplayer/util/ParsableBitArray;

    const/16 v1, 0xa

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/util/ParsableBitArray;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PesReader;->pesScratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

    .line 225
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PesReader;->state:I

    .line 226
    return-void
.end method

.method private continueRead(Lcom/google/android/exoplayer/util/ParsableByteArray;[BI)Z
    .locals 4
    .param p1, "source"    # Lcom/google/android/exoplayer/util/ParsableByteArray;
    .param p2, "target"    # [B
    .param p3, "targetLength"    # I

    .prologue
    const/4 v1, 0x1

    .line 318
    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v2

    iget v3, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PesReader;->bytesRead:I

    sub-int v3, p3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 319
    .local v0, "bytesToRead":I
    if-gtz v0, :cond_1

    .line 327
    :cond_0
    :goto_0
    return v1

    .line 321
    :cond_1
    if-nez p2, :cond_2

    .line 322
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 326
    :goto_1
    iget v2, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PesReader;->bytesRead:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PesReader;->bytesRead:I

    .line 327
    iget v2, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PesReader;->bytesRead:I

    if-eq v2, p3, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 324
    :cond_2
    iget v2, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PesReader;->bytesRead:I

    invoke-virtual {p1, p2, v2, v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readBytes([BII)V

    goto :goto_1
.end method

.method private parseHeader()Z
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v6, -0x1

    .line 333
    iget-object v4, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PesReader;->pesScratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

    invoke-virtual {v4, v2}, Lcom/google/android/exoplayer/util/ParsableBitArray;->setPosition(I)V

    .line 334
    iget-object v4, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PesReader;->pesScratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

    const/16 v5, 0x18

    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v1

    .line 335
    .local v1, "startCodePrefix":I
    if-eq v1, v3, :cond_0

    .line 336
    const-string v3, "TsExtractor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected start code prefix: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    iput v6, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PesReader;->payloadSize:I

    .line 359
    :goto_0
    return v2

    .line 341
    :cond_0
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PesReader;->pesScratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

    invoke-virtual {v2, v7}, Lcom/google/android/exoplayer/util/ParsableBitArray;->skipBits(I)V

    .line 342
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PesReader;->pesScratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

    const/16 v4, 0x10

    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v0

    .line 343
    .local v0, "packetLength":I
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PesReader;->pesScratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

    const/4 v4, 0x5

    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer/util/ParsableBitArray;->skipBits(I)V

    .line 344
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PesReader;->pesScratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

    invoke-virtual {v2}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBit()Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PesReader;->dataAlignmentIndicator:Z

    .line 345
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PesReader;->pesScratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer/util/ParsableBitArray;->skipBits(I)V

    .line 346
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PesReader;->pesScratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

    invoke-virtual {v2}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBit()Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PesReader;->ptsFlag:Z

    .line 347
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PesReader;->pesScratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

    invoke-virtual {v2}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBit()Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PesReader;->dtsFlag:Z

    .line 350
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PesReader;->pesScratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

    const/4 v4, 0x6

    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer/util/ParsableBitArray;->skipBits(I)V

    .line 351
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PesReader;->pesScratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

    invoke-virtual {v2, v7}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v2

    iput v2, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PesReader;->extendedHeaderLength:I

    .line 353
    if-nez v0, :cond_1

    .line 354
    iput v6, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PesReader;->payloadSize:I

    :goto_1
    move v2, v3

    .line 359
    goto :goto_0

    .line 356
    :cond_1
    add-int/lit8 v2, v0, 0x6

    add-int/lit8 v2, v2, -0x9

    iget v4, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PesReader;->extendedHeaderLength:I

    sub-int/2addr v2, v4

    iput v2, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PesReader;->payloadSize:I

    goto :goto_1
.end method

.method private parseHeaderExtension()V
    .locals 11

    .prologue
    const/16 v10, 0x1e

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/16 v7, 0xf

    const/4 v6, 0x1

    .line 363
    iget-object v4, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PesReader;->pesScratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer/util/ParsableBitArray;->setPosition(I)V

    .line 364
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PesReader;->timeUs:J

    .line 365
    iget-boolean v4, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PesReader;->ptsFlag:Z

    if-eqz v4, :cond_1

    .line 366
    iget-object v4, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PesReader;->pesScratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

    invoke-virtual {v4, v9}, Lcom/google/android/exoplayer/util/ParsableBitArray;->skipBits(I)V

    .line 367
    iget-object v4, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PesReader;->pesScratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

    invoke-virtual {v4, v8}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v4

    int-to-long v4, v4

    shl-long v2, v4, v10

    .line 368
    .local v2, "pts":J
    iget-object v4, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PesReader;->pesScratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

    invoke-virtual {v4, v6}, Lcom/google/android/exoplayer/util/ParsableBitArray;->skipBits(I)V

    .line 369
    iget-object v4, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PesReader;->pesScratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

    invoke-virtual {v4, v7}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v4

    shl-int/lit8 v4, v4, 0xf

    int-to-long v4, v4

    or-long/2addr v2, v4

    .line 370
    iget-object v4, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PesReader;->pesScratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

    invoke-virtual {v4, v6}, Lcom/google/android/exoplayer/util/ParsableBitArray;->skipBits(I)V

    .line 371
    iget-object v4, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PesReader;->pesScratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

    invoke-virtual {v4, v7}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v4

    int-to-long v4, v4

    or-long/2addr v2, v4

    .line 372
    iget-object v4, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PesReader;->pesScratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

    invoke-virtual {v4, v6}, Lcom/google/android/exoplayer/util/ParsableBitArray;->skipBits(I)V

    .line 373
    iget-boolean v4, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PesReader;->seenFirstDts:Z

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PesReader;->dtsFlag:Z

    if-eqz v4, :cond_0

    .line 374
    iget-object v4, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PesReader;->pesScratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

    invoke-virtual {v4, v9}, Lcom/google/android/exoplayer/util/ParsableBitArray;->skipBits(I)V

    .line 375
    iget-object v4, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PesReader;->pesScratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

    invoke-virtual {v4, v8}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v4

    int-to-long v4, v4

    shl-long v0, v4, v10

    .line 376
    .local v0, "dts":J
    iget-object v4, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PesReader;->pesScratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

    invoke-virtual {v4, v6}, Lcom/google/android/exoplayer/util/ParsableBitArray;->skipBits(I)V

    .line 377
    iget-object v4, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PesReader;->pesScratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

    invoke-virtual {v4, v7}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v4

    shl-int/lit8 v4, v4, 0xf

    int-to-long v4, v4

    or-long/2addr v0, v4

    .line 378
    iget-object v4, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PesReader;->pesScratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

    invoke-virtual {v4, v6}, Lcom/google/android/exoplayer/util/ParsableBitArray;->skipBits(I)V

    .line 379
    iget-object v4, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PesReader;->pesScratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

    invoke-virtual {v4, v7}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v4

    int-to-long v4, v4

    or-long/2addr v0, v4

    .line 380
    iget-object v4, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PesReader;->pesScratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

    invoke-virtual {v4, v6}, Lcom/google/android/exoplayer/util/ParsableBitArray;->skipBits(I)V

    .line 386
    iget-object v4, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PesReader;->ptsTimestampAdjuster:Lcom/google/android/exoplayer/extractor/ts/PtsTimestampAdjuster;

    invoke-virtual {v4, v0, v1}, Lcom/google/android/exoplayer/extractor/ts/PtsTimestampAdjuster;->adjustTimestamp(J)J

    .line 387
    iput-boolean v6, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PesReader;->seenFirstDts:Z

    .line 389
    .end local v0    # "dts":J
    :cond_0
    iget-object v4, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PesReader;->ptsTimestampAdjuster:Lcom/google/android/exoplayer/extractor/ts/PtsTimestampAdjuster;

    invoke-virtual {v4, v2, v3}, Lcom/google/android/exoplayer/extractor/ts/PtsTimestampAdjuster;->adjustTimestamp(J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PesReader;->timeUs:J

    .line 391
    .end local v2    # "pts":J
    :cond_1
    return-void
.end method

.method private setState(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 302
    iput p1, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PesReader;->state:I

    .line 303
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PesReader;->bytesRead:I

    .line 304
    return-void
.end method


# virtual methods
.method public consume(Lcom/google/android/exoplayer/util/ParsableByteArray;ZLcom/google/android/exoplayer/extractor/ExtractorOutput;)V
    .locals 9
    .param p1, "data"    # Lcom/google/android/exoplayer/util/ParsableByteArray;
    .param p2, "payloadUnitStartIndicator"    # Z
    .param p3, "output"    # Lcom/google/android/exoplayer/extractor/ExtractorOutput;

    .prologue
    const/4 v8, 0x1

    const/4 v3, 0x0

    const/4 v7, -0x1

    .line 238
    if-eqz p2, :cond_0

    .line 239
    iget v2, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PesReader;->state:I

    packed-switch v2, :pswitch_data_0

    .line 259
    :goto_0
    :pswitch_0
    invoke-direct {p0, v8}, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PesReader;->setState(I)V

    .line 262
    :cond_0
    :goto_1
    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v2

    if-lez v2, :cond_5

    .line 263
    iget v2, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PesReader;->state:I

    packed-switch v2, :pswitch_data_1

    goto :goto_1

    .line 265
    :pswitch_1
    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_1

    .line 245
    :pswitch_2
    const-string v2, "TsExtractor"

    const-string v4, "Unexpected start indicator reading extended header"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 252
    :pswitch_3
    iget v2, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PesReader;->payloadSize:I

    if-eq v2, v7, :cond_1

    .line 253
    const-string v2, "TsExtractor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected start indicator: expected "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PesReader;->payloadSize:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " more bytes"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    :cond_1
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PesReader;->pesPayloadReader:Lcom/google/android/exoplayer/extractor/ts/ElementaryStreamReader;

    invoke-virtual {v2}, Lcom/google/android/exoplayer/extractor/ts/ElementaryStreamReader;->packetFinished()V

    goto :goto_0

    .line 268
    :pswitch_4
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PesReader;->pesScratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

    iget-object v2, v2, Lcom/google/android/exoplayer/util/ParsableBitArray;->data:[B

    const/16 v4, 0x9

    invoke-direct {p0, p1, v2, v4}, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PesReader;->continueRead(Lcom/google/android/exoplayer/util/ParsableByteArray;[BI)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 269
    invoke-direct {p0}, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PesReader;->parseHeader()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x2

    :goto_2
    invoke-direct {p0, v2}, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PesReader;->setState(I)V

    goto :goto_1

    :cond_2
    move v2, v3

    goto :goto_2

    .line 273
    :pswitch_5
    const/16 v2, 0xa

    iget v4, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PesReader;->extendedHeaderLength:I

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 275
    .local v1, "readLength":I
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PesReader;->pesScratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

    iget-object v2, v2, Lcom/google/android/exoplayer/util/ParsableBitArray;->data:[B

    invoke-direct {p0, p1, v2, v1}, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PesReader;->continueRead(Lcom/google/android/exoplayer/util/ParsableByteArray;[BI)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    iget v4, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PesReader;->extendedHeaderLength:I

    invoke-direct {p0, p1, v2, v4}, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PesReader;->continueRead(Lcom/google/android/exoplayer/util/ParsableByteArray;[BI)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 276
    invoke-direct {p0}, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PesReader;->parseHeaderExtension()V

    .line 277
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PesReader;->pesPayloadReader:Lcom/google/android/exoplayer/extractor/ts/ElementaryStreamReader;

    iget-wide v4, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PesReader;->timeUs:J

    iget-boolean v6, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PesReader;->dataAlignmentIndicator:Z

    invoke-virtual {v2, v4, v5, v6}, Lcom/google/android/exoplayer/extractor/ts/ElementaryStreamReader;->packetStarted(JZ)V

    .line 278
    const/4 v2, 0x3

    invoke-direct {p0, v2}, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PesReader;->setState(I)V

    goto/16 :goto_1

    .line 282
    .end local v1    # "readLength":I
    :pswitch_6
    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v1

    .line 283
    .restart local v1    # "readLength":I
    iget v2, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PesReader;->payloadSize:I

    if-ne v2, v7, :cond_4

    move v0, v3

    .line 284
    .local v0, "padding":I
    :goto_3
    if-lez v0, :cond_3

    .line 285
    sub-int/2addr v1, v0

    .line 286
    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setLimit(I)V

    .line 288
    :cond_3
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PesReader;->pesPayloadReader:Lcom/google/android/exoplayer/extractor/ts/ElementaryStreamReader;

    invoke-virtual {v2, p1}, Lcom/google/android/exoplayer/extractor/ts/ElementaryStreamReader;->consume(Lcom/google/android/exoplayer/util/ParsableByteArray;)V

    .line 289
    iget v2, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PesReader;->payloadSize:I

    if-eq v2, v7, :cond_0

    .line 290
    iget v2, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PesReader;->payloadSize:I

    sub-int/2addr v2, v1

    iput v2, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PesReader;->payloadSize:I

    .line 291
    iget v2, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PesReader;->payloadSize:I

    if-nez v2, :cond_0

    .line 292
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PesReader;->pesPayloadReader:Lcom/google/android/exoplayer/extractor/ts/ElementaryStreamReader;

    invoke-virtual {v2}, Lcom/google/android/exoplayer/extractor/ts/ElementaryStreamReader;->packetFinished()V

    .line 293
    invoke-direct {p0, v8}, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PesReader;->setState(I)V

    goto/16 :goto_1

    .line 283
    .end local v0    # "padding":I
    :cond_4
    iget v2, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PesReader;->payloadSize:I

    sub-int v0, v1, v2

    goto :goto_3

    .line 299
    .end local v1    # "readLength":I
    :cond_5
    return-void

    .line 239
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 263
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public seek()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 230
    iput v0, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PesReader;->state:I

    .line 231
    iput v0, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PesReader;->bytesRead:I

    .line 232
    iput-boolean v0, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PesReader;->seenFirstDts:Z

    .line 233
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PesReader;->pesPayloadReader:Lcom/google/android/exoplayer/extractor/ts/ElementaryStreamReader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/extractor/ts/ElementaryStreamReader;->seek()V

    .line 234
    return-void
.end method
