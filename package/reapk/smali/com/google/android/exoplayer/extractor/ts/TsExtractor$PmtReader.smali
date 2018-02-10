.class Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;
.super Lcom/google/android/exoplayer/extractor/ts/TsExtractor$TsPayloadReader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer/extractor/ts/TsExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PmtReader"
.end annotation


# instance fields
.field private final pmtScratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

.field private sectionBytesRead:I

.field private final sectionData:Lcom/google/android/exoplayer/util/ParsableByteArray;

.field private sectionLength:I

.field final synthetic this$0:Lcom/google/android/exoplayer/extractor/ts/TsExtractor;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer/extractor/ts/TsExtractor;)V
    .locals 2

    .prologue
    .line 455
    iput-object p1, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->this$0:Lcom/google/android/exoplayer/extractor/ts/TsExtractor;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$TsPayloadReader;-><init>(Lcom/google/android/exoplayer/extractor/ts/TsExtractor$1;)V

    .line 456
    new-instance v0, Lcom/google/android/exoplayer/util/ParsableBitArray;

    const/4 v1, 0x5

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/util/ParsableBitArray;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

    .line 457
    new-instance v0, Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-direct {v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->sectionData:Lcom/google/android/exoplayer/util/ParsableByteArray;

    .line 458
    return-void
.end method

.method private readPrivateDataStreamType(Lcom/google/android/exoplayer/util/ParsableByteArray;I)I
    .locals 8
    .param p1, "data"    # Lcom/google/android/exoplayer/util/ParsableByteArray;
    .param p2, "length"    # I

    .prologue
    .line 594
    const/4 v3, -0x1

    .line 595
    .local v3, "streamType":I
    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v6

    add-int v2, v6, p2

    .line 596
    .local v2, "descriptorsEndPosition":I
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v6

    if-ge v6, v2, :cond_0

    .line 597
    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    .line 598
    .local v1, "descriptorTag":I
    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 599
    .local v0, "descriptorLength":I
    const/4 v6, 0x5

    if-ne v1, v6, :cond_3

    .line 600
    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v4

    .line 601
    .local v4, "formatIdentifier":J
    invoke-static {}, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->access$300()J

    move-result-wide v6

    cmp-long v6, v4, v6

    if-nez v6, :cond_1

    .line 602
    const/16 v3, 0x81

    .line 619
    .end local v0    # "descriptorLength":I
    .end local v1    # "descriptorTag":I
    .end local v4    # "formatIdentifier":J
    :cond_0
    :goto_1
    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 620
    return v3

    .line 603
    .restart local v0    # "descriptorLength":I
    .restart local v1    # "descriptorTag":I
    .restart local v4    # "formatIdentifier":J
    :cond_1
    invoke-static {}, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->access$400()J

    move-result-wide v6

    cmp-long v6, v4, v6

    if-nez v6, :cond_2

    .line 604
    const/16 v3, 0x87

    goto :goto_1

    .line 605
    :cond_2
    invoke-static {}, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->access$500()J

    move-result-wide v6

    cmp-long v6, v4, v6

    if-nez v6, :cond_0

    .line 606
    const/16 v3, 0x24

    goto :goto_1

    .line 609
    .end local v4    # "formatIdentifier":J
    :cond_3
    const/16 v6, 0x6a

    if-ne v1, v6, :cond_5

    .line 610
    const/16 v3, 0x81

    .line 617
    :cond_4
    :goto_2
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_0

    .line 611
    :cond_5
    const/16 v6, 0x7a

    if-ne v1, v6, :cond_6

    .line 612
    const/16 v3, 0x87

    goto :goto_2

    .line 613
    :cond_6
    const/16 v6, 0x7b

    if-ne v1, v6, :cond_4

    .line 614
    const/16 v3, 0x8a

    goto :goto_2
.end method


# virtual methods
.method public consume(Lcom/google/android/exoplayer/util/ParsableByteArray;ZLcom/google/android/exoplayer/extractor/ExtractorOutput;)V
    .locals 11
    .param p1, "data"    # Lcom/google/android/exoplayer/util/ParsableByteArray;
    .param p2, "payloadUnitStartIndicator"    # Z
    .param p3, "output"    # Lcom/google/android/exoplayer/extractor/ExtractorOutput;

    .prologue
    .line 467
    if-eqz p2, :cond_0

    .line 469
    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v4

    .line 470
    .local v4, "pointerField":I
    invoke-virtual {p1, v4}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 474
    iget-object v8, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

    const/4 v9, 0x3

    invoke-virtual {p1, v8, v9}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readBytes(Lcom/google/android/exoplayer/util/ParsableBitArray;I)V

    .line 475
    iget-object v8, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

    const/16 v9, 0xc

    invoke-virtual {v8, v9}, Lcom/google/android/exoplayer/util/ParsableBitArray;->skipBits(I)V

    .line 476
    iget-object v8, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

    const/16 v9, 0xc

    invoke-virtual {v8, v9}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v8

    iput v8, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->sectionLength:I

    .line 478
    iget-object v8, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->sectionData:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v8}, Lcom/google/android/exoplayer/util/ParsableByteArray;->capacity()I

    move-result v8

    iget v9, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->sectionLength:I

    if-ge v8, v9, :cond_1

    .line 479
    iget-object v8, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->sectionData:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget v9, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->sectionLength:I

    new-array v9, v9, [B

    iget v10, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->sectionLength:I

    invoke-virtual {v8, v9, v10}, Lcom/google/android/exoplayer/util/ParsableByteArray;->reset([BI)V

    .line 486
    .end local v4    # "pointerField":I
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v8

    iget v9, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->sectionLength:I

    iget v10, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->sectionBytesRead:I

    sub-int/2addr v9, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 487
    .local v0, "bytesToRead":I
    iget-object v8, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->sectionData:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v8, v8, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    iget v9, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->sectionBytesRead:I

    invoke-virtual {p1, v8, v9, v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readBytes([BII)V

    .line 488
    iget v8, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->sectionBytesRead:I

    add-int/2addr v8, v0

    iput v8, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->sectionBytesRead:I

    .line 489
    iget v8, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->sectionBytesRead:I

    iget v9, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->sectionLength:I

    if-ge v8, v9, :cond_2

    .line 581
    :goto_1
    return-void

    .line 481
    .end local v0    # "bytesToRead":I
    .restart local v4    # "pointerField":I
    :cond_1
    iget-object v8, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->sectionData:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v8}, Lcom/google/android/exoplayer/util/ParsableByteArray;->reset()V

    .line 482
    iget-object v8, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->sectionData:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget v9, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->sectionLength:I

    invoke-virtual {v8, v9}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setLimit(I)V

    goto :goto_0

    .line 497
    .end local v4    # "pointerField":I
    .restart local v0    # "bytesToRead":I
    :cond_2
    iget-object v8, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->sectionData:Lcom/google/android/exoplayer/util/ParsableByteArray;

    const/4 v9, 0x7

    invoke-virtual {v8, v9}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 500
    iget-object v8, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->sectionData:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v9, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

    const/4 v10, 0x2

    invoke-virtual {v8, v9, v10}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readBytes(Lcom/google/android/exoplayer/util/ParsableBitArray;I)V

    .line 501
    iget-object v8, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Lcom/google/android/exoplayer/util/ParsableBitArray;->skipBits(I)V

    .line 502
    iget-object v8, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

    const/16 v9, 0xc

    invoke-virtual {v8, v9}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v5

    .line 505
    .local v5, "programInfoLength":I
    iget-object v8, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->sectionData:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v8, v5}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 507
    iget-object v8, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->this$0:Lcom/google/android/exoplayer/extractor/ts/TsExtractor;

    iget-object v8, v8, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->id3Reader:Lcom/google/android/exoplayer/extractor/ts/Id3Reader;

    if-nez v8, :cond_3

    .line 510
    iget-object v8, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->this$0:Lcom/google/android/exoplayer/extractor/ts/TsExtractor;

    new-instance v9, Lcom/google/android/exoplayer/extractor/ts/Id3Reader;

    const/16 v10, 0x15

    invoke-interface {p3, v10}, Lcom/google/android/exoplayer/extractor/ExtractorOutput;->track(I)Lcom/google/android/exoplayer/extractor/TrackOutput;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/google/android/exoplayer/extractor/ts/Id3Reader;-><init>(Lcom/google/android/exoplayer/extractor/TrackOutput;)V

    iput-object v9, v8, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->id3Reader:Lcom/google/android/exoplayer/extractor/ts/Id3Reader;

    .line 513
    :cond_3
    iget v8, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->sectionLength:I

    add-int/lit8 v8, v8, -0x9

    sub-int/2addr v8, v5

    add-int/lit8 v6, v8, -0x4

    .line 515
    .local v6, "remainingEntriesLength":I
    :cond_4
    :goto_2
    if-lez v6, :cond_9

    .line 516
    iget-object v8, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->sectionData:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v9, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

    const/4 v10, 0x5

    invoke-virtual {v8, v9, v10}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readBytes(Lcom/google/android/exoplayer/util/ParsableBitArray;I)V

    .line 517
    iget-object v8, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v7

    .line 518
    .local v7, "streamType":I
    iget-object v8, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

    const/4 v9, 0x3

    invoke-virtual {v8, v9}, Lcom/google/android/exoplayer/util/ParsableBitArray;->skipBits(I)V

    .line 519
    iget-object v8, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

    const/16 v9, 0xd

    invoke-virtual {v8, v9}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v1

    .line 520
    .local v1, "elementaryPid":I
    iget-object v8, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Lcom/google/android/exoplayer/util/ParsableBitArray;->skipBits(I)V

    .line 521
    iget-object v8, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

    const/16 v9, 0xc

    invoke-virtual {v8, v9}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v2

    .line 522
    .local v2, "esInfoLength":I
    const/4 v8, 0x6

    if-ne v7, v8, :cond_5

    .line 524
    iget-object v8, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->sectionData:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-direct {p0, v8, v2}, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->readPrivateDataStreamType(Lcom/google/android/exoplayer/util/ParsableByteArray;I)I

    move-result v7

    .line 528
    :goto_3
    add-int/lit8 v8, v2, 0x5

    sub-int/2addr v6, v8

    .line 529
    iget-object v8, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->this$0:Lcom/google/android/exoplayer/extractor/ts/TsExtractor;

    iget-object v8, v8, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->streamTypes:Landroid/util/SparseBooleanArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v8

    if-nez v8, :cond_4

    .line 534
    sparse-switch v7, :sswitch_data_0

    .line 570
    const/4 v3, 0x0

    .line 574
    .local v3, "pesPayloadReader":Lcom/google/android/exoplayer/extractor/ts/ElementaryStreamReader;
    :goto_4
    if-eqz v3, :cond_4

    .line 575
    iget-object v8, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->this$0:Lcom/google/android/exoplayer/extractor/ts/TsExtractor;

    iget-object v8, v8, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->streamTypes:Landroid/util/SparseBooleanArray;

    const/4 v9, 0x1

    invoke-virtual {v8, v7, v9}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 576
    iget-object v8, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->this$0:Lcom/google/android/exoplayer/extractor/ts/TsExtractor;

    iget-object v8, v8, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->tsPayloadReaders:Landroid/util/SparseArray;

    new-instance v9, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PesReader;

    iget-object v10, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->this$0:Lcom/google/android/exoplayer/extractor/ts/TsExtractor;

    invoke-static {v10}, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->access$200(Lcom/google/android/exoplayer/extractor/ts/TsExtractor;)Lcom/google/android/exoplayer/extractor/ts/PtsTimestampAdjuster;

    move-result-object v10

    invoke-direct {v9, v3, v10}, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PesReader;-><init>(Lcom/google/android/exoplayer/extractor/ts/ElementaryStreamReader;Lcom/google/android/exoplayer/extractor/ts/PtsTimestampAdjuster;)V

    invoke-virtual {v8, v1, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2

    .line 526
    .end local v3    # "pesPayloadReader":Lcom/google/android/exoplayer/extractor/ts/ElementaryStreamReader;
    :cond_5
    iget-object v8, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->sectionData:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v8, v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_3

    .line 536
    :sswitch_0
    new-instance v3, Lcom/google/android/exoplayer/extractor/ts/MpegAudioReader;

    const/4 v8, 0x3

    invoke-interface {p3, v8}, Lcom/google/android/exoplayer/extractor/ExtractorOutput;->track(I)Lcom/google/android/exoplayer/extractor/TrackOutput;

    move-result-object v8

    invoke-direct {v3, v8}, Lcom/google/android/exoplayer/extractor/ts/MpegAudioReader;-><init>(Lcom/google/android/exoplayer/extractor/TrackOutput;)V

    .line 537
    .restart local v3    # "pesPayloadReader":Lcom/google/android/exoplayer/extractor/ts/ElementaryStreamReader;
    goto :goto_4

    .line 539
    .end local v3    # "pesPayloadReader":Lcom/google/android/exoplayer/extractor/ts/ElementaryStreamReader;
    :sswitch_1
    new-instance v3, Lcom/google/android/exoplayer/extractor/ts/MpegAudioReader;

    const/4 v8, 0x4

    invoke-interface {p3, v8}, Lcom/google/android/exoplayer/extractor/ExtractorOutput;->track(I)Lcom/google/android/exoplayer/extractor/TrackOutput;

    move-result-object v8

    invoke-direct {v3, v8}, Lcom/google/android/exoplayer/extractor/ts/MpegAudioReader;-><init>(Lcom/google/android/exoplayer/extractor/TrackOutput;)V

    .line 540
    .restart local v3    # "pesPayloadReader":Lcom/google/android/exoplayer/extractor/ts/ElementaryStreamReader;
    goto :goto_4

    .line 542
    .end local v3    # "pesPayloadReader":Lcom/google/android/exoplayer/extractor/ts/ElementaryStreamReader;
    :sswitch_2
    iget-object v8, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->this$0:Lcom/google/android/exoplayer/extractor/ts/TsExtractor;

    invoke-static {v8}, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->access$100(Lcom/google/android/exoplayer/extractor/ts/TsExtractor;)I

    move-result v8

    and-int/lit8 v8, v8, 0x2

    if-eqz v8, :cond_6

    const/4 v3, 0x0

    .line 544
    .restart local v3    # "pesPayloadReader":Lcom/google/android/exoplayer/extractor/ts/ElementaryStreamReader;
    :goto_5
    goto :goto_4

    .line 542
    .end local v3    # "pesPayloadReader":Lcom/google/android/exoplayer/extractor/ts/ElementaryStreamReader;
    :cond_6
    new-instance v3, Lcom/google/android/exoplayer/extractor/ts/AdtsReader;

    const/16 v8, 0xf

    .line 543
    invoke-interface {p3, v8}, Lcom/google/android/exoplayer/extractor/ExtractorOutput;->track(I)Lcom/google/android/exoplayer/extractor/TrackOutput;

    move-result-object v8

    new-instance v9, Lcom/google/android/exoplayer/extractor/DummyTrackOutput;

    invoke-direct {v9}, Lcom/google/android/exoplayer/extractor/DummyTrackOutput;-><init>()V

    invoke-direct {v3, v8, v9}, Lcom/google/android/exoplayer/extractor/ts/AdtsReader;-><init>(Lcom/google/android/exoplayer/extractor/TrackOutput;Lcom/google/android/exoplayer/extractor/TrackOutput;)V

    goto :goto_5

    .line 546
    :sswitch_3
    new-instance v3, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;

    const/16 v8, 0x81

    invoke-interface {p3, v8}, Lcom/google/android/exoplayer/extractor/ExtractorOutput;->track(I)Lcom/google/android/exoplayer/extractor/TrackOutput;

    move-result-object v8

    const/4 v9, 0x0

    invoke-direct {v3, v8, v9}, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;-><init>(Lcom/google/android/exoplayer/extractor/TrackOutput;Z)V

    .line 547
    .restart local v3    # "pesPayloadReader":Lcom/google/android/exoplayer/extractor/ts/ElementaryStreamReader;
    goto :goto_4

    .line 549
    .end local v3    # "pesPayloadReader":Lcom/google/android/exoplayer/extractor/ts/ElementaryStreamReader;
    :sswitch_4
    new-instance v3, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;

    const/16 v8, 0x87

    invoke-interface {p3, v8}, Lcom/google/android/exoplayer/extractor/ExtractorOutput;->track(I)Lcom/google/android/exoplayer/extractor/TrackOutput;

    move-result-object v8

    const/4 v9, 0x1

    invoke-direct {v3, v8, v9}, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;-><init>(Lcom/google/android/exoplayer/extractor/TrackOutput;Z)V

    .line 550
    .restart local v3    # "pesPayloadReader":Lcom/google/android/exoplayer/extractor/ts/ElementaryStreamReader;
    goto :goto_4

    .line 553
    .end local v3    # "pesPayloadReader":Lcom/google/android/exoplayer/extractor/ts/ElementaryStreamReader;
    :sswitch_5
    new-instance v3, Lcom/google/android/exoplayer/extractor/ts/DtsReader;

    const/16 v8, 0x8a

    invoke-interface {p3, v8}, Lcom/google/android/exoplayer/extractor/ExtractorOutput;->track(I)Lcom/google/android/exoplayer/extractor/TrackOutput;

    move-result-object v8

    invoke-direct {v3, v8}, Lcom/google/android/exoplayer/extractor/ts/DtsReader;-><init>(Lcom/google/android/exoplayer/extractor/TrackOutput;)V

    .line 554
    .restart local v3    # "pesPayloadReader":Lcom/google/android/exoplayer/extractor/ts/ElementaryStreamReader;
    goto :goto_4

    .line 556
    .end local v3    # "pesPayloadReader":Lcom/google/android/exoplayer/extractor/ts/ElementaryStreamReader;
    :sswitch_6
    new-instance v3, Lcom/google/android/exoplayer/extractor/ts/H262Reader;

    const/4 v8, 0x2

    invoke-interface {p3, v8}, Lcom/google/android/exoplayer/extractor/ExtractorOutput;->track(I)Lcom/google/android/exoplayer/extractor/TrackOutput;

    move-result-object v8

    invoke-direct {v3, v8}, Lcom/google/android/exoplayer/extractor/ts/H262Reader;-><init>(Lcom/google/android/exoplayer/extractor/TrackOutput;)V

    .line 557
    .restart local v3    # "pesPayloadReader":Lcom/google/android/exoplayer/extractor/ts/ElementaryStreamReader;
    goto/16 :goto_4

    .line 559
    .end local v3    # "pesPayloadReader":Lcom/google/android/exoplayer/extractor/ts/ElementaryStreamReader;
    :sswitch_7
    iget-object v8, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->this$0:Lcom/google/android/exoplayer/extractor/ts/TsExtractor;

    invoke-static {v8}, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->access$100(Lcom/google/android/exoplayer/extractor/ts/TsExtractor;)I

    move-result v8

    and-int/lit8 v8, v8, 0x4

    if-eqz v8, :cond_7

    const/4 v3, 0x0

    .line 562
    .restart local v3    # "pesPayloadReader":Lcom/google/android/exoplayer/extractor/ts/ElementaryStreamReader;
    :goto_6
    goto/16 :goto_4

    .line 559
    .end local v3    # "pesPayloadReader":Lcom/google/android/exoplayer/extractor/ts/ElementaryStreamReader;
    :cond_7
    new-instance v3, Lcom/google/android/exoplayer/extractor/ts/H264Reader;

    const/16 v8, 0x1b

    .line 560
    invoke-interface {p3, v8}, Lcom/google/android/exoplayer/extractor/ExtractorOutput;->track(I)Lcom/google/android/exoplayer/extractor/TrackOutput;

    move-result-object v9

    new-instance v10, Lcom/google/android/exoplayer/extractor/ts/SeiReader;

    const/16 v8, 0x100

    invoke-interface {p3, v8}, Lcom/google/android/exoplayer/extractor/ExtractorOutput;->track(I)Lcom/google/android/exoplayer/extractor/TrackOutput;

    move-result-object v8

    invoke-direct {v10, v8}, Lcom/google/android/exoplayer/extractor/ts/SeiReader;-><init>(Lcom/google/android/exoplayer/extractor/TrackOutput;)V

    iget-object v8, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->this$0:Lcom/google/android/exoplayer/extractor/ts/TsExtractor;

    .line 561
    invoke-static {v8}, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->access$100(Lcom/google/android/exoplayer/extractor/ts/TsExtractor;)I

    move-result v8

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_8

    const/4 v8, 0x1

    :goto_7
    invoke-direct {v3, v9, v10, v8}, Lcom/google/android/exoplayer/extractor/ts/H264Reader;-><init>(Lcom/google/android/exoplayer/extractor/TrackOutput;Lcom/google/android/exoplayer/extractor/ts/SeiReader;Z)V

    goto :goto_6

    :cond_8
    const/4 v8, 0x0

    goto :goto_7

    .line 564
    :sswitch_8
    new-instance v3, Lcom/google/android/exoplayer/extractor/ts/H265Reader;

    const/16 v8, 0x24

    invoke-interface {p3, v8}, Lcom/google/android/exoplayer/extractor/ExtractorOutput;->track(I)Lcom/google/android/exoplayer/extractor/TrackOutput;

    move-result-object v8

    new-instance v9, Lcom/google/android/exoplayer/extractor/ts/SeiReader;

    const/16 v10, 0x100

    invoke-interface {p3, v10}, Lcom/google/android/exoplayer/extractor/ExtractorOutput;->track(I)Lcom/google/android/exoplayer/extractor/TrackOutput;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/google/android/exoplayer/extractor/ts/SeiReader;-><init>(Lcom/google/android/exoplayer/extractor/TrackOutput;)V

    invoke-direct {v3, v8, v9}, Lcom/google/android/exoplayer/extractor/ts/H265Reader;-><init>(Lcom/google/android/exoplayer/extractor/TrackOutput;Lcom/google/android/exoplayer/extractor/ts/SeiReader;)V

    .line 565
    .restart local v3    # "pesPayloadReader":Lcom/google/android/exoplayer/extractor/ts/ElementaryStreamReader;
    goto/16 :goto_4

    .line 567
    .end local v3    # "pesPayloadReader":Lcom/google/android/exoplayer/extractor/ts/ElementaryStreamReader;
    :sswitch_9
    iget-object v8, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->this$0:Lcom/google/android/exoplayer/extractor/ts/TsExtractor;

    iget-object v3, v8, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->id3Reader:Lcom/google/android/exoplayer/extractor/ts/Id3Reader;

    .line 568
    .restart local v3    # "pesPayloadReader":Lcom/google/android/exoplayer/extractor/ts/ElementaryStreamReader;
    goto/16 :goto_4

    .line 580
    .end local v1    # "elementaryPid":I
    .end local v2    # "esInfoLength":I
    .end local v3    # "pesPayloadReader":Lcom/google/android/exoplayer/extractor/ts/ElementaryStreamReader;
    .end local v7    # "streamType":I
    :cond_9
    invoke-interface {p3}, Lcom/google/android/exoplayer/extractor/ExtractorOutput;->endTracks()V

    goto/16 :goto_1

    .line 534
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_6
        0x3 -> :sswitch_0
        0x4 -> :sswitch_1
        0xf -> :sswitch_2
        0x15 -> :sswitch_9
        0x1b -> :sswitch_7
        0x24 -> :sswitch_8
        0x81 -> :sswitch_3
        0x82 -> :sswitch_5
        0x87 -> :sswitch_4
        0x8a -> :sswitch_5
    .end sparse-switch
.end method

.method public seek()V
    .locals 0

    .prologue
    .line 463
    return-void
.end method
