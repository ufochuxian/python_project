.class public final Lcom/google/android/exoplayer/extractor/ts/TsExtractor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer/extractor/Extractor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;,
        Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PatReader;,
        Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PesReader;,
        Lcom/google/android/exoplayer/extractor/ts/TsExtractor$TsPayloadReader;
    }
.end annotation


# static fields
.field private static final AC3_FORMAT_IDENTIFIER:J

.field private static final E_AC3_FORMAT_IDENTIFIER:J

.field private static final HEVC_FORMAT_IDENTIFIER:J

.field private static final TAG:Ljava/lang/String; = "TsExtractor"

.field private static final TS_PACKET_SIZE:I = 0xbc

.field private static final TS_PAT_PID:I = 0x0

.field private static final TS_STREAM_TYPE_AAC:I = 0xf

.field private static final TS_STREAM_TYPE_AC3:I = 0x81

.field private static final TS_STREAM_TYPE_DTS:I = 0x8a

.field private static final TS_STREAM_TYPE_EIA608:I = 0x100

.field private static final TS_STREAM_TYPE_E_AC3:I = 0x87

.field private static final TS_STREAM_TYPE_H262:I = 0x2

.field private static final TS_STREAM_TYPE_H264:I = 0x1b

.field private static final TS_STREAM_TYPE_H265:I = 0x24

.field private static final TS_STREAM_TYPE_HDMV_DTS:I = 0x82

.field private static final TS_STREAM_TYPE_ID3:I = 0x15

.field private static final TS_STREAM_TYPE_MPA:I = 0x3

.field private static final TS_STREAM_TYPE_MPA_LSF:I = 0x4

.field private static final TS_SYNC_BYTE:I = 0x47

.field public static final WORKAROUND_ALLOW_NON_IDR_KEYFRAMES:I = 0x1

.field public static final WORKAROUND_IGNORE_AAC_STREAM:I = 0x2

.field public static final WORKAROUND_IGNORE_H264_STREAM:I = 0x4


# instance fields
.field id3Reader:Lcom/google/android/exoplayer/extractor/ts/Id3Reader;

.field private output:Lcom/google/android/exoplayer/extractor/ExtractorOutput;

.field private final ptsTimestampAdjuster:Lcom/google/android/exoplayer/extractor/ts/PtsTimestampAdjuster;

.field final streamTypes:Landroid/util/SparseBooleanArray;

.field private final tsPacketBuffer:Lcom/google/android/exoplayer/util/ParsableByteArray;

.field final tsPayloadReaders:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/exoplayer/extractor/ts/TsExtractor$TsPayloadReader;",
            ">;"
        }
    .end annotation
.end field

.field private final tsScratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

.field private final workaroundFlags:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 62
    const-string v0, "AC-3"

    invoke-static {v0}, Lcom/google/android/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->AC3_FORMAT_IDENTIFIER:J

    .line 63
    const-string v0, "EAC3"

    invoke-static {v0}, Lcom/google/android/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->E_AC3_FORMAT_IDENTIFIER:J

    .line 64
    const-string v0, "HEVC"

    invoke-static {v0}, Lcom/google/android/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->HEVC_FORMAT_IDENTIFIER:J

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 76
    new-instance v0, Lcom/google/android/exoplayer/extractor/ts/PtsTimestampAdjuster;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Lcom/google/android/exoplayer/extractor/ts/PtsTimestampAdjuster;-><init>(J)V

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;-><init>(Lcom/google/android/exoplayer/extractor/ts/PtsTimestampAdjuster;)V

    .line 77
    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer/extractor/ts/PtsTimestampAdjuster;)V
    .locals 1
    .param p1, "ptsTimestampAdjuster"    # Lcom/google/android/exoplayer/extractor/ts/PtsTimestampAdjuster;

    .prologue
    .line 80
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;-><init>(Lcom/google/android/exoplayer/extractor/ts/PtsTimestampAdjuster;I)V

    .line 81
    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer/extractor/ts/PtsTimestampAdjuster;I)V
    .locals 3
    .param p1, "ptsTimestampAdjuster"    # Lcom/google/android/exoplayer/extractor/ts/PtsTimestampAdjuster;
    .param p2, "workaroundFlags"    # I

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->ptsTimestampAdjuster:Lcom/google/android/exoplayer/extractor/ts/PtsTimestampAdjuster;

    .line 85
    iput p2, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->workaroundFlags:I

    .line 86
    new-instance v0, Lcom/google/android/exoplayer/util/ParsableByteArray;

    const/16 v1, 0xbc

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->tsPacketBuffer:Lcom/google/android/exoplayer/util/ParsableByteArray;

    .line 87
    new-instance v0, Lcom/google/android/exoplayer/util/ParsableBitArray;

    const/4 v1, 0x3

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/util/ParsableBitArray;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->tsScratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

    .line 88
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->tsPayloadReaders:Landroid/util/SparseArray;

    .line 89
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->tsPayloadReaders:Landroid/util/SparseArray;

    const/4 v1, 0x0

    new-instance v2, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PatReader;

    invoke-direct {v2, p0}, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PatReader;-><init>(Lcom/google/android/exoplayer/extractor/ts/TsExtractor;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 90
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->streamTypes:Landroid/util/SparseBooleanArray;

    .line 91
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/exoplayer/extractor/ts/TsExtractor;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/android/exoplayer/extractor/ts/TsExtractor;

    .prologue
    .line 37
    iget v0, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->workaroundFlags:I

    return v0
.end method

.method static synthetic access$200(Lcom/google/android/exoplayer/extractor/ts/TsExtractor;)Lcom/google/android/exoplayer/extractor/ts/PtsTimestampAdjuster;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/exoplayer/extractor/ts/TsExtractor;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->ptsTimestampAdjuster:Lcom/google/android/exoplayer/extractor/ts/PtsTimestampAdjuster;

    return-object v0
.end method

.method static synthetic access$300()J
    .locals 2

    .prologue
    .line 37
    sget-wide v0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->AC3_FORMAT_IDENTIFIER:J

    return-wide v0
.end method

.method static synthetic access$400()J
    .locals 2

    .prologue
    .line 37
    sget-wide v0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->E_AC3_FORMAT_IDENTIFIER:J

    return-wide v0
.end method

.method static synthetic access$500()J
    .locals 2

    .prologue
    .line 37
    sget-wide v0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->HEVC_FORMAT_IDENTIFIER:J

    return-wide v0
.end method


# virtual methods
.method public init(Lcom/google/android/exoplayer/extractor/ExtractorOutput;)V
    .locals 1
    .param p1, "output"    # Lcom/google/android/exoplayer/extractor/ExtractorOutput;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->output:Lcom/google/android/exoplayer/extractor/ExtractorOutput;

    .line 111
    sget-object v0, Lcom/google/android/exoplayer/extractor/SeekMap;->UNSEEKABLE:Lcom/google/android/exoplayer/extractor/SeekMap;

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer/extractor/ExtractorOutput;->seekMap(Lcom/google/android/exoplayer/extractor/SeekMap;)V

    .line 112
    return-void
.end method

.method public read(Lcom/google/android/exoplayer/extractor/ExtractorInput;Lcom/google/android/exoplayer/extractor/PositionHolder;)I
    .locals 12
    .param p1, "input"    # Lcom/google/android/exoplayer/extractor/ExtractorInput;
    .param p2, "seekPosition"    # Lcom/google/android/exoplayer/extractor/PositionHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/16 v9, 0xbc

    const/4 v11, 0x1

    const/4 v7, 0x0

    .line 124
    iget-object v8, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->tsPacketBuffer:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v8, v8, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    invoke-interface {p1, v8, v7, v9, v11}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->readFully([BIIZ)Z

    move-result v8

    if-nez v8, :cond_1

    .line 125
    const/4 v7, -0x1

    .line 161
    :cond_0
    :goto_0
    return v7

    .line 130
    :cond_1
    iget-object v8, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->tsPacketBuffer:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v8, v7}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 131
    iget-object v8, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->tsPacketBuffer:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v8, v9}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setLimit(I)V

    .line 132
    iget-object v8, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->tsPacketBuffer:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v8}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v6

    .line 133
    .local v6, "syncByte":I
    const/16 v8, 0x47

    if-ne v6, v8, :cond_0

    .line 137
    iget-object v8, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->tsPacketBuffer:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v9, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->tsScratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

    const/4 v10, 0x3

    invoke-virtual {v8, v9, v10}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readBytes(Lcom/google/android/exoplayer/util/ParsableBitArray;I)V

    .line 138
    iget-object v8, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->tsScratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

    invoke-virtual {v8, v11}, Lcom/google/android/exoplayer/util/ParsableBitArray;->skipBits(I)V

    .line 139
    iget-object v8, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->tsScratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

    invoke-virtual {v8}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBit()Z

    move-result v4

    .line 140
    .local v4, "payloadUnitStartIndicator":Z
    iget-object v8, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->tsScratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

    invoke-virtual {v8, v11}, Lcom/google/android/exoplayer/util/ParsableBitArray;->skipBits(I)V

    .line 141
    iget-object v8, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->tsScratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

    const/16 v9, 0xd

    invoke-virtual {v8, v9}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v5

    .line 142
    .local v5, "pid":I
    iget-object v8, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->tsScratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Lcom/google/android/exoplayer/util/ParsableBitArray;->skipBits(I)V

    .line 143
    iget-object v8, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->tsScratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

    invoke-virtual {v8}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBit()Z

    move-result v0

    .line 144
    .local v0, "adaptationFieldExists":Z
    iget-object v8, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->tsScratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

    invoke-virtual {v8}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBit()Z

    move-result v2

    .line 148
    .local v2, "payloadExists":Z
    if-eqz v0, :cond_2

    .line 149
    iget-object v8, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->tsPacketBuffer:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v8}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    .line 150
    .local v1, "adaptationFieldLength":I
    iget-object v8, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->tsPacketBuffer:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v8, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 154
    .end local v1    # "adaptationFieldLength":I
    :cond_2
    if-eqz v2, :cond_0

    .line 155
    iget-object v8, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->tsPayloadReaders:Landroid/util/SparseArray;

    invoke-virtual {v8, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$TsPayloadReader;

    .line 156
    .local v3, "payloadReader":Lcom/google/android/exoplayer/extractor/ts/TsExtractor$TsPayloadReader;
    if-eqz v3, :cond_0

    .line 157
    iget-object v8, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->tsPacketBuffer:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v9, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->output:Lcom/google/android/exoplayer/extractor/ExtractorOutput;

    invoke-virtual {v3, v8, v4, v9}, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$TsPayloadReader;->consume(Lcom/google/android/exoplayer/util/ParsableByteArray;ZLcom/google/android/exoplayer/extractor/ExtractorOutput;)V

    goto :goto_0
.end method

.method public seek()V
    .locals 2

    .prologue
    .line 116
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->ptsTimestampAdjuster:Lcom/google/android/exoplayer/extractor/ts/PtsTimestampAdjuster;

    invoke-virtual {v1}, Lcom/google/android/exoplayer/extractor/ts/PtsTimestampAdjuster;->reset()V

    .line 117
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->tsPayloadReaders:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 118
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->tsPayloadReaders:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$TsPayloadReader;

    invoke-virtual {v1}, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$TsPayloadReader;->seek()V

    .line 117
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 120
    :cond_0
    return-void
.end method

.method public sniff(Lcom/google/android/exoplayer/extractor/ExtractorInput;)Z
    .locals 6
    .param p1, "input"    # Lcom/google/android/exoplayer/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 97
    new-array v1, v3, [B

    .line 98
    .local v1, "scratch":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v4, 0x5

    if-ge v0, v4, :cond_1

    .line 99
    invoke-interface {p1, v1, v2, v3}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->peekFully([BII)V

    .line 100
    aget-byte v4, v1, v2

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0x47

    if-eq v4, v5, :cond_0

    .line 105
    :goto_1
    return v2

    .line 103
    :cond_0
    const/16 v4, 0xbb

    invoke-interface {p1, v4}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->advancePeekPosition(I)V

    .line 98
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v2, v3

    .line 105
    goto :goto_1
.end method
