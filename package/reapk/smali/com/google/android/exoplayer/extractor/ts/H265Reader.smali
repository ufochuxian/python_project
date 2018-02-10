.class final Lcom/google/android/exoplayer/extractor/ts/H265Reader;
.super Lcom/google/android/exoplayer/extractor/ts/ElementaryStreamReader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer/extractor/ts/H265Reader$SampleReader;
    }
.end annotation


# static fields
.field private static final BLA_W_LP:I = 0x10

.field private static final CRA_NUT:I = 0x15

.field private static final PPS_NUT:I = 0x22

.field private static final PREFIX_SEI_NUT:I = 0x27

.field private static final RASL_R:I = 0x9

.field private static final SPS_NUT:I = 0x21

.field private static final SUFFIX_SEI_NUT:I = 0x28

.field private static final TAG:Ljava/lang/String; = "H265Reader"

.field private static final VPS_NUT:I = 0x20


# instance fields
.field private hasOutputFormat:Z

.field private pesTimeUs:J

.field private final pps:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

.field private final prefixFlags:[Z

.field private final prefixSei:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

.field private final sampleReader:Lcom/google/android/exoplayer/extractor/ts/H265Reader$SampleReader;

.field private final seiReader:Lcom/google/android/exoplayer/extractor/ts/SeiReader;

.field private final seiWrapper:Lcom/google/android/exoplayer/util/ParsableByteArray;

.field private final sps:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

.field private final suffixSei:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

.field private totalBytesWritten:J

.field private final vps:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer/extractor/TrackOutput;Lcom/google/android/exoplayer/extractor/ts/SeiReader;)V
    .locals 3
    .param p1, "output"    # Lcom/google/android/exoplayer/extractor/TrackOutput;
    .param p2, "seiReader"    # Lcom/google/android/exoplayer/extractor/ts/SeiReader;

    .prologue
    const/16 v2, 0x80

    .line 64
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/extractor/ts/ElementaryStreamReader;-><init>(Lcom/google/android/exoplayer/extractor/TrackOutput;)V

    .line 65
    iput-object p2, p0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->seiReader:Lcom/google/android/exoplayer/extractor/ts/SeiReader;

    .line 66
    const/4 v0, 0x3

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->prefixFlags:[Z

    .line 67
    new-instance v0, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    const/16 v1, 0x20

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;-><init>(II)V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->vps:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    .line 68
    new-instance v0, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    const/16 v1, 0x21

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;-><init>(II)V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->sps:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    .line 69
    new-instance v0, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    const/16 v1, 0x22

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;-><init>(II)V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->pps:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    .line 70
    new-instance v0, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    const/16 v1, 0x27

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;-><init>(II)V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->prefixSei:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    .line 71
    new-instance v0, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    const/16 v1, 0x28

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;-><init>(II)V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->suffixSei:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    .line 72
    new-instance v0, Lcom/google/android/exoplayer/extractor/ts/H265Reader$SampleReader;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer/extractor/ts/H265Reader$SampleReader;-><init>(Lcom/google/android/exoplayer/extractor/TrackOutput;)V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->sampleReader:Lcom/google/android/exoplayer/extractor/ts/H265Reader$SampleReader;

    .line 73
    new-instance v0, Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-direct {v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->seiWrapper:Lcom/google/android/exoplayer/util/ParsableByteArray;

    .line 74
    return-void
.end method

.method private nalUnitData([BII)V
    .locals 1
    .param p1, "dataArray"    # [B
    .param p2, "offset"    # I
    .param p3, "limit"    # I

    .prologue
    .line 326
    iget-boolean v0, p0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->hasOutputFormat:Z

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->sampleReader:Lcom/google/android/exoplayer/extractor/ts/H265Reader$SampleReader;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer/extractor/ts/H265Reader$SampleReader;->readNalUnitData([BII)V

    .line 333
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->prefixSei:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->appendToNalUnit([BII)V

    .line 334
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->suffixSei:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->appendToNalUnit([BII)V

    .line 335
    return-void

    .line 329
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->vps:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->appendToNalUnit([BII)V

    .line 330
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->sps:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->appendToNalUnit([BII)V

    .line 331
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->pps:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->appendToNalUnit([BII)V

    goto :goto_0
.end method

.method private nalUnitEnd(JIIJ)V
    .locals 7
    .param p1, "position"    # J
    .param p3, "offset"    # I
    .param p4, "discardPadding"    # I
    .param p5, "pesTimeUs"    # J

    .prologue
    const/4 v5, 0x5

    .line 338
    iget-boolean v1, p0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->hasOutputFormat:Z

    if-eqz v1, :cond_3

    .line 339
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->sampleReader:Lcom/google/android/exoplayer/extractor/ts/H265Reader$SampleReader;

    invoke-virtual {v1, p1, p2, p3}, Lcom/google/android/exoplayer/extractor/ts/H265Reader$SampleReader;->endNalUnit(JI)V

    .line 349
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->prefixSei:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v1, p4}, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->endNalUnit(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 350
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->prefixSei:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    iget-object v1, v1, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->prefixSei:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    iget v2, v2, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-static {v1, v2}, Lcom/google/android/exoplayer/util/NalUnitUtil;->unescapeStream([BI)I

    move-result v0

    .line 351
    .local v0, "unescapedLength":I
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->seiWrapper:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->prefixSei:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    iget-object v2, v2, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    invoke-virtual {v1, v2, v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->reset([BI)V

    .line 354
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->seiWrapper:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v1, v5}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 355
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->seiReader:Lcom/google/android/exoplayer/extractor/ts/SeiReader;

    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->seiWrapper:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v1, p5, p6, v2}, Lcom/google/android/exoplayer/extractor/ts/SeiReader;->consume(JLcom/google/android/exoplayer/util/ParsableByteArray;)V

    .line 357
    .end local v0    # "unescapedLength":I
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->suffixSei:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v1, p4}, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->endNalUnit(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 358
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->suffixSei:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    iget-object v1, v1, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->suffixSei:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    iget v2, v2, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-static {v1, v2}, Lcom/google/android/exoplayer/util/NalUnitUtil;->unescapeStream([BI)I

    move-result v0

    .line 359
    .restart local v0    # "unescapedLength":I
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->seiWrapper:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->suffixSei:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    iget-object v2, v2, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    invoke-virtual {v1, v2, v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->reset([BI)V

    .line 362
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->seiWrapper:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v1, v5}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 363
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->seiReader:Lcom/google/android/exoplayer/extractor/ts/SeiReader;

    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->seiWrapper:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v1, p5, p6, v2}, Lcom/google/android/exoplayer/extractor/ts/SeiReader;->consume(JLcom/google/android/exoplayer/util/ParsableByteArray;)V

    .line 365
    .end local v0    # "unescapedLength":I
    :cond_2
    return-void

    .line 341
    :cond_3
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->vps:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v1, p4}, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->endNalUnit(I)Z

    .line 342
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->sps:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v1, p4}, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->endNalUnit(I)Z

    .line 343
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->pps:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v1, p4}, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->endNalUnit(I)Z

    .line 344
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->vps:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v1}, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->isCompleted()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->sps:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v1}, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->isCompleted()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->pps:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v1}, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->isCompleted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 345
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->output:Lcom/google/android/exoplayer/extractor/TrackOutput;

    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->vps:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    iget-object v3, p0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->sps:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    iget-object v4, p0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->pps:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-static {v2, v3, v4}, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->parseMediaFormat(Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer/extractor/TrackOutput;->format(Lcom/google/android/exoplayer/MediaFormat;)V

    .line 346
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->hasOutputFormat:Z

    goto/16 :goto_0
.end method

.method private static parseMediaFormat(Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;)Lcom/google/android/exoplayer/MediaFormat;
    .locals 30
    .param p0, "vps"    # Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;
    .param p1, "sps"    # Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;
    .param p2, "pps"    # Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    .prologue
    .line 78
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    move-object/from16 v0, p1

    iget v3, v0, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    add-int/2addr v2, v3

    move-object/from16 v0, p2

    iget v3, v0, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    add-int/2addr v2, v3

    new-array v0, v2, [B

    move-object/from16 v20, v0

    .line 79
    .local v20, "csd":[B
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    move-object/from16 v0, v20

    invoke-static {v2, v3, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 80
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    move-object/from16 v0, p1

    iget v5, v0, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    move-object/from16 v0, v20

    invoke-static {v2, v3, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 81
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    move-object/from16 v0, p1

    iget v5, v0, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    add-int/2addr v4, v5

    move-object/from16 v0, p2

    iget v5, v0, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    move-object/from16 v0, v20

    invoke-static {v2, v3, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 84
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    move-object/from16 v0, p1

    iget v3, v0, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-static {v2, v3}, Lcom/google/android/exoplayer/util/NalUnitUtil;->unescapeStream([BI)I

    .line 85
    new-instance v14, Lcom/google/android/exoplayer/util/ParsableBitArray;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    invoke-direct {v14, v2}, Lcom/google/android/exoplayer/util/ParsableBitArray;-><init>([B)V

    .line 86
    .local v14, "bitArray":Lcom/google/android/exoplayer/util/ParsableBitArray;
    const/16 v2, 0x2c

    invoke-virtual {v14, v2}, Lcom/google/android/exoplayer/util/ParsableBitArray;->skipBits(I)V

    .line 87
    const/4 v2, 0x3

    invoke-virtual {v14, v2}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v24

    .line 88
    .local v24, "maxSubLayersMinus1":I
    const/4 v2, 0x1

    invoke-virtual {v14, v2}, Lcom/google/android/exoplayer/util/ParsableBitArray;->skipBits(I)V

    .line 91
    const/16 v2, 0x58

    invoke-virtual {v14, v2}, Lcom/google/android/exoplayer/util/ParsableBitArray;->skipBits(I)V

    .line 92
    const/16 v2, 0x8

    invoke-virtual {v14, v2}, Lcom/google/android/exoplayer/util/ParsableBitArray;->skipBits(I)V

    .line 93
    const/16 v29, 0x0

    .line 94
    .local v29, "toSkip":I
    const/16 v21, 0x0

    .local v21, "i":I
    :goto_0
    move/from16 v0, v21

    move/from16 v1, v24

    if-ge v0, v1, :cond_2

    .line 95
    const/4 v2, 0x1

    invoke-virtual {v14, v2}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 96
    add-int/lit8 v29, v29, 0x59

    .line 98
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {v14, v2}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 99
    add-int/lit8 v29, v29, 0x8

    .line 94
    :cond_1
    add-int/lit8 v21, v21, 0x1

    goto :goto_0

    .line 102
    :cond_2
    move/from16 v0, v29

    invoke-virtual {v14, v0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->skipBits(I)V

    .line 103
    if-lez v24, :cond_3

    .line 104
    rsub-int/lit8 v2, v24, 0x8

    mul-int/lit8 v2, v2, 0x2

    invoke-virtual {v14, v2}, Lcom/google/android/exoplayer/util/ParsableBitArray;->skipBits(I)V

    .line 107
    :cond_3
    invoke-virtual {v14}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    .line 108
    invoke-virtual {v14}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v15

    .line 109
    .local v15, "chromaFormatIdc":I
    const/4 v2, 0x3

    if-ne v15, v2, :cond_4

    .line 110
    const/4 v2, 0x1

    invoke-virtual {v14, v2}, Lcom/google/android/exoplayer/util/ParsableBitArray;->skipBits(I)V

    .line 112
    :cond_4
    invoke-virtual {v14}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v8

    .line 113
    .local v8, "picWidthInLumaSamples":I
    invoke-virtual {v14}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v9

    .line 114
    .local v9, "picHeightInLumaSamples":I
    invoke-virtual {v14}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 115
    invoke-virtual {v14}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v17

    .line 116
    .local v17, "confWinLeftOffset":I
    invoke-virtual {v14}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v18

    .line 117
    .local v18, "confWinRightOffset":I
    invoke-virtual {v14}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v19

    .line 118
    .local v19, "confWinTopOffset":I
    invoke-virtual {v14}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v16

    .line 120
    .local v16, "confWinBottomOffset":I
    const/4 v2, 0x1

    if-eq v15, v2, :cond_5

    const/4 v2, 0x2

    if-ne v15, v2, :cond_7

    :cond_5
    const/16 v28, 0x2

    .line 121
    .local v28, "subWidthC":I
    :goto_1
    const/4 v2, 0x1

    if-ne v15, v2, :cond_8

    const/16 v27, 0x2

    .line 122
    .local v27, "subHeightC":I
    :goto_2
    add-int v2, v17, v18

    mul-int v2, v2, v28

    sub-int/2addr v8, v2

    .line 123
    add-int v2, v19, v16

    mul-int v2, v2, v27

    sub-int/2addr v9, v2

    .line 125
    .end local v16    # "confWinBottomOffset":I
    .end local v17    # "confWinLeftOffset":I
    .end local v18    # "confWinRightOffset":I
    .end local v19    # "confWinTopOffset":I
    .end local v27    # "subHeightC":I
    .end local v28    # "subWidthC":I
    :cond_6
    invoke-virtual {v14}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    .line 126
    invoke-virtual {v14}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    .line 127
    invoke-virtual {v14}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v22

    .line 129
    .local v22, "log2MaxPicOrderCntLsbMinus4":I
    invoke-virtual {v14}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_9

    const/16 v21, 0x0

    :goto_3
    move/from16 v0, v21

    move/from16 v1, v24

    if-gt v0, v1, :cond_a

    .line 130
    invoke-virtual {v14}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    .line 131
    invoke-virtual {v14}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    .line 132
    invoke-virtual {v14}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    .line 129
    add-int/lit8 v21, v21, 0x1

    goto :goto_3

    .line 120
    .end local v22    # "log2MaxPicOrderCntLsbMinus4":I
    .restart local v16    # "confWinBottomOffset":I
    .restart local v17    # "confWinLeftOffset":I
    .restart local v18    # "confWinRightOffset":I
    .restart local v19    # "confWinTopOffset":I
    :cond_7
    const/16 v28, 0x1

    goto :goto_1

    .line 121
    .restart local v28    # "subWidthC":I
    :cond_8
    const/16 v27, 0x1

    goto :goto_2

    .end local v16    # "confWinBottomOffset":I
    .end local v17    # "confWinLeftOffset":I
    .end local v18    # "confWinRightOffset":I
    .end local v19    # "confWinTopOffset":I
    .end local v28    # "subWidthC":I
    .restart local v22    # "log2MaxPicOrderCntLsbMinus4":I
    :cond_9
    move/from16 v21, v24

    .line 129
    goto :goto_3

    .line 134
    :cond_a
    invoke-virtual {v14}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    .line 135
    invoke-virtual {v14}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    .line 136
    invoke-virtual {v14}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    .line 137
    invoke-virtual {v14}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    .line 138
    invoke-virtual {v14}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    .line 139
    invoke-virtual {v14}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    .line 141
    invoke-virtual {v14}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {v14}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 142
    invoke-static {v14}, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->skipScalingList(Lcom/google/android/exoplayer/util/ParsableBitArray;)V

    .line 144
    :cond_b
    const/4 v2, 0x2

    invoke-virtual {v14, v2}, Lcom/google/android/exoplayer/util/ParsableBitArray;->skipBits(I)V

    .line 145
    invoke-virtual {v14}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 147
    const/16 v2, 0x8

    invoke-virtual {v14, v2}, Lcom/google/android/exoplayer/util/ParsableBitArray;->skipBits(I)V

    .line 148
    invoke-virtual {v14}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    .line 149
    invoke-virtual {v14}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    .line 150
    const/4 v2, 0x1

    invoke-virtual {v14, v2}, Lcom/google/android/exoplayer/util/ParsableBitArray;->skipBits(I)V

    .line 153
    :cond_c
    invoke-static {v14}, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->skipShortTermRefPicSets(Lcom/google/android/exoplayer/util/ParsableBitArray;)V

    .line 154
    invoke-virtual {v14}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 156
    const/16 v21, 0x0

    :goto_4
    invoke-virtual {v14}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v2

    move/from16 v0, v21

    if-ge v0, v2, :cond_d

    .line 157
    add-int/lit8 v23, v22, 0x4

    .line 159
    .local v23, "ltRefPicPocLsbSpsLength":I
    add-int/lit8 v2, v23, 0x1

    invoke-virtual {v14, v2}, Lcom/google/android/exoplayer/util/ParsableBitArray;->skipBits(I)V

    .line 156
    add-int/lit8 v21, v21, 0x1

    goto :goto_4

    .line 162
    .end local v23    # "ltRefPicPocLsbSpsLength":I
    :cond_d
    const/4 v2, 0x2

    invoke-virtual {v14, v2}, Lcom/google/android/exoplayer/util/ParsableBitArray;->skipBits(I)V

    .line 163
    const/high16 v12, 0x3f800000    # 1.0f

    .line 164
    .local v12, "pixelWidthHeightRatio":F
    invoke-virtual {v14}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 165
    invoke-virtual {v14}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 166
    const/16 v2, 0x8

    invoke-virtual {v14, v2}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v13

    .line 167
    .local v13, "aspectRatioIdc":I
    const/16 v2, 0xff

    if-ne v13, v2, :cond_f

    .line 168
    const/16 v2, 0x10

    invoke-virtual {v14, v2}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v26

    .line 169
    .local v26, "sarWidth":I
    const/16 v2, 0x10

    invoke-virtual {v14, v2}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v25

    .line 170
    .local v25, "sarHeight":I
    if-eqz v26, :cond_e

    if-eqz v25, :cond_e

    .line 171
    move/from16 v0, v26

    int-to-float v2, v0

    move/from16 v0, v25

    int-to-float v3, v0

    div-float v12, v2, v3

    .line 181
    .end local v13    # "aspectRatioIdc":I
    .end local v25    # "sarHeight":I
    .end local v26    # "sarWidth":I
    :cond_e
    :goto_5
    const/4 v2, 0x0

    const-string v3, "video/hevc"

    const/4 v4, -0x1

    const/4 v5, -0x1

    const-wide/16 v6, -0x1

    .line 182
    invoke-static/range {v20 .. v20}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    const/4 v11, -0x1

    .line 181
    invoke-static/range {v2 .. v12}, Lcom/google/android/exoplayer/MediaFormat;->createVideoFormat(Ljava/lang/String;Ljava/lang/String;IIJIILjava/util/List;IF)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v2

    return-object v2

    .line 173
    .restart local v13    # "aspectRatioIdc":I
    :cond_f
    sget-object v2, Lcom/google/android/exoplayer/util/NalUnitUtil;->ASPECT_RATIO_IDC_VALUES:[F

    array-length v2, v2

    if-ge v13, v2, :cond_10

    .line 174
    sget-object v2, Lcom/google/android/exoplayer/util/NalUnitUtil;->ASPECT_RATIO_IDC_VALUES:[F

    aget v12, v2, v13

    goto :goto_5

    .line 176
    :cond_10
    const-string v2, "H265Reader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected aspect_ratio_idc value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method private static skipScalingList(Lcom/google/android/exoplayer/util/ParsableBitArray;)V
    .locals 8
    .param p0, "bitArray"    # Lcom/google/android/exoplayer/util/ParsableBitArray;

    .prologue
    const/4 v5, 0x3

    const/4 v6, 0x1

    .line 187
    const/4 v3, 0x0

    .local v3, "sizeId":I
    :goto_0
    const/4 v4, 0x4

    if-ge v3, v4, :cond_5

    .line 188
    const/4 v2, 0x0

    .local v2, "matrixId":I
    :goto_1
    const/4 v4, 0x6

    if-ge v2, v4, :cond_4

    .line 189
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBit()Z

    move-result v4

    if-nez v4, :cond_1

    .line 191
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    .line 188
    :cond_0
    if-ne v3, v5, :cond_3

    move v4, v5

    :goto_2
    add-int/2addr v2, v4

    goto :goto_1

    .line 193
    :cond_1
    const/16 v4, 0x40

    shl-int/lit8 v7, v3, 0x1

    add-int/lit8 v7, v7, 0x4

    shl-int v7, v6, v7

    invoke-static {v4, v7}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 194
    .local v0, "coefNum":I
    if-le v3, v6, :cond_2

    .line 196
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readSignedExpGolombCodedInt()I

    .line 198
    :cond_2
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    if-ge v1, v0, :cond_0

    .line 199
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readSignedExpGolombCodedInt()I

    .line 198
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .end local v0    # "coefNum":I
    .end local v1    # "i":I
    :cond_3
    move v4, v6

    .line 188
    goto :goto_2

    .line 187
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 204
    .end local v2    # "matrixId":I
    :cond_5
    return-void
.end method

.method private static skipShortTermRefPicSets(Lcom/google/android/exoplayer/util/ParsableBitArray;)V
    .locals 10
    .param p0, "bitArray"    # Lcom/google/android/exoplayer/util/ParsableBitArray;

    .prologue
    const/4 v9, 0x1

    .line 211
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v5

    .line 212
    .local v5, "numShortTermRefPicSets":I
    const/4 v1, 0x0

    .line 213
    .local v1, "interRefPicSetPredictionFlag":Z
    const/4 v3, 0x0

    .line 214
    .local v3, "numNegativePics":I
    const/4 v4, 0x0

    .line 218
    .local v4, "numPositivePics":I
    const/4 v6, 0x0

    .line 219
    .local v6, "previousNumDeltaPocs":I
    const/4 v7, 0x0

    .local v7, "stRpsIdx":I
    :goto_0
    if-ge v7, v5, :cond_5

    .line 220
    if-eqz v7, :cond_0

    .line 221
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBit()Z

    move-result v1

    .line 223
    :cond_0
    if-eqz v1, :cond_2

    .line 224
    invoke-virtual {p0, v9}, Lcom/google/android/exoplayer/util/ParsableBitArray;->skipBits(I)V

    .line 225
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    .line 226
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    if-gt v2, v6, :cond_4

    .line 227
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBit()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 228
    invoke-virtual {p0, v9}, Lcom/google/android/exoplayer/util/ParsableBitArray;->skipBits(I)V

    .line 226
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 232
    .end local v2    # "j":I
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v3

    .line 233
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v4

    .line 234
    add-int v6, v3, v4

    .line 235
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    if-ge v0, v3, :cond_3

    .line 236
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    .line 237
    invoke-virtual {p0, v9}, Lcom/google/android/exoplayer/util/ParsableBitArray;->skipBits(I)V

    .line 235
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 239
    :cond_3
    const/4 v0, 0x0

    :goto_3
    if-ge v0, v4, :cond_4

    .line 240
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    .line 241
    invoke-virtual {p0, v9}, Lcom/google/android/exoplayer/util/ParsableBitArray;->skipBits(I)V

    .line 239
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 219
    .end local v0    # "i":I
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 245
    :cond_5
    return-void
.end method

.method private startNalUnit(JIIJ)V
    .locals 9
    .param p1, "position"    # J
    .param p3, "offset"    # I
    .param p4, "nalUnitType"    # I
    .param p5, "pesTimeUs"    # J

    .prologue
    .line 315
    iget-boolean v0, p0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->hasOutputFormat:Z

    if-nez v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->vps:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p4}, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->startNalUnit(I)V

    .line 317
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->sps:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p4}, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->startNalUnit(I)V

    .line 318
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->pps:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p4}, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->startNalUnit(I)V

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->prefixSei:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p4}, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->startNalUnit(I)V

    .line 321
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->suffixSei:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p4}, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->startNalUnit(I)V

    .line 322
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->sampleReader:Lcom/google/android/exoplayer/extractor/ts/H265Reader$SampleReader;

    move-wide v2, p1

    move v4, p3

    move v5, p4

    move-wide v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/exoplayer/extractor/ts/H265Reader$SampleReader;->startNalUnit(JIIJ)V

    .line 323
    return-void
.end method


# virtual methods
.method public consume(Lcom/google/android/exoplayer/util/ParsableByteArray;)V
    .locals 18
    .param p1, "data"    # Lcom/google/android/exoplayer/util/ParsableByteArray;

    .prologue
    .line 266
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v3

    if-lez v3, :cond_1

    .line 267
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v14

    .line 268
    .local v14, "offset":I
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->limit()I

    move-result v11

    .line 269
    .local v11, "limit":I
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    .line 272
    .local v2, "dataArray":[B
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->totalBytesWritten:J

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v3

    int-to-long v0, v3

    move-wide/from16 v16, v0

    add-long v8, v8, v16

    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->totalBytesWritten:J

    .line 273
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->output:Lcom/google/android/exoplayer/extractor/TrackOutput;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v7

    move-object/from16 v0, p1

    invoke-interface {v3, v0, v7}, Lcom/google/android/exoplayer/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer/util/ParsableByteArray;I)V

    .line 276
    :goto_0
    if-ge v14, v11, :cond_0

    .line 277
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->prefixFlags:[Z

    invoke-static {v2, v14, v11, v3}, Lcom/google/android/exoplayer/util/NalUnitUtil;->findNalUnit([BII[Z)I

    move-result v12

    .line 279
    .local v12, "nalUnitOffset":I
    if-ne v12, v11, :cond_2

    .line 281
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v14, v11}, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->nalUnitData([BII)V

    .line 307
    .end local v2    # "dataArray":[B
    .end local v11    # "limit":I
    .end local v12    # "nalUnitOffset":I
    .end local v14    # "offset":I
    :cond_1
    return-void

    .line 286
    .restart local v2    # "dataArray":[B
    .restart local v11    # "limit":I
    .restart local v12    # "nalUnitOffset":I
    .restart local v14    # "offset":I
    :cond_2
    invoke-static {v2, v12}, Lcom/google/android/exoplayer/util/NalUnitUtil;->getH265NalUnitType([BI)I

    move-result v13

    .line 290
    .local v13, "nalUnitType":I
    sub-int v10, v12, v14

    .line 291
    .local v10, "lengthToNalUnit":I
    if-lez v10, :cond_3

    .line 292
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v14, v12}, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->nalUnitData([BII)V

    .line 295
    :cond_3
    sub-int v6, v11, v12

    .line 296
    .local v6, "bytesWrittenPastPosition":I
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->totalBytesWritten:J

    int-to-long v0, v6

    move-wide/from16 v16, v0

    sub-long v4, v8, v16

    .line 300
    .local v4, "absolutePosition":J
    if-gez v10, :cond_4

    neg-int v7, v10

    :goto_1
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->pesTimeUs:J

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->nalUnitEnd(JIIJ)V

    .line 302
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->pesTimeUs:J

    move-object/from16 v3, p0

    move v7, v13

    invoke-direct/range {v3 .. v9}, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->startNalUnit(JIIJ)V

    .line 304
    add-int/lit8 v14, v12, 0x3

    .line 305
    goto :goto_0

    .line 300
    :cond_4
    const/4 v7, 0x0

    goto :goto_1
.end method

.method public packetFinished()V
    .locals 0

    .prologue
    .line 312
    return-void
.end method

.method public packetStarted(JZ)V
    .locals 1
    .param p1, "pesTimeUs"    # J
    .param p3, "dataAlignmentIndicator"    # Z

    .prologue
    .line 261
    iput-wide p1, p0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->pesTimeUs:J

    .line 262
    return-void
.end method

.method public seek()V
    .locals 2

    .prologue
    .line 249
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->prefixFlags:[Z

    invoke-static {v0}, Lcom/google/android/exoplayer/util/NalUnitUtil;->clearPrefixFlags([Z)V

    .line 250
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->vps:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->reset()V

    .line 251
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->sps:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->reset()V

    .line 252
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->pps:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->reset()V

    .line 253
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->prefixSei:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->reset()V

    .line 254
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->suffixSei:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->reset()V

    .line 255
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->sampleReader:Lcom/google/android/exoplayer/extractor/ts/H265Reader$SampleReader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/extractor/ts/H265Reader$SampleReader;->reset()V

    .line 256
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/exoplayer/extractor/ts/H265Reader;->totalBytesWritten:J

    .line 257
    return-void
.end method
