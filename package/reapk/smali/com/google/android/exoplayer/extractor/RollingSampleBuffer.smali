.class final Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$SampleExtrasHolder;,
        Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;
    }
.end annotation


# static fields
.field private static final INITIAL_SCRATCH_SIZE:I = 0x20


# instance fields
.field private final allocationLength:I

.field private final allocator:Lcom/google/android/exoplayer/upstream/Allocator;

.field private final dataQueue:Ljava/util/concurrent/LinkedBlockingDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingDeque",
            "<",
            "Lcom/google/android/exoplayer/upstream/Allocation;",
            ">;"
        }
    .end annotation
.end field

.field private final extrasHolder:Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$SampleExtrasHolder;

.field private final infoQueue:Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;

.field private lastAllocation:Lcom/google/android/exoplayer/upstream/Allocation;

.field private lastAllocationOffset:I

.field private final scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

.field private totalBytesDropped:J

.field private totalBytesWritten:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer/upstream/Allocator;)V
    .locals 2
    .param p1, "allocator"    # Lcom/google/android/exoplayer/upstream/Allocator;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->allocator:Lcom/google/android/exoplayer/upstream/Allocator;

    .line 60
    invoke-interface {p1}, Lcom/google/android/exoplayer/upstream/Allocator;->getIndividualAllocationLength()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->allocationLength:I

    .line 61
    new-instance v0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;

    invoke-direct {v0}, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->infoQueue:Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;

    .line 62
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->dataQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    .line 63
    new-instance v0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$SampleExtrasHolder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$SampleExtrasHolder;-><init>(Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$1;)V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->extrasHolder:Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$SampleExtrasHolder;

    .line 64
    new-instance v0, Lcom/google/android/exoplayer/util/ParsableByteArray;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    .line 65
    iget v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->allocationLength:I

    iput v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->lastAllocationOffset:I

    .line 66
    return-void
.end method

.method private dropDownstreamTo(J)V
    .locals 9
    .param p1, "absolutePosition"    # J

    .prologue
    .line 330
    iget-wide v4, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->totalBytesDropped:J

    sub-long v4, p1, v4

    long-to-int v2, v4

    .line 331
    .local v2, "relativePosition":I
    iget v3, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->allocationLength:I

    div-int v0, v2, v3

    .line 332
    .local v0, "allocationIndex":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 333
    iget-object v4, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->allocator:Lcom/google/android/exoplayer/upstream/Allocator;

    iget-object v3, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->dataQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v3}, Ljava/util/concurrent/LinkedBlockingDeque;->remove()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer/upstream/Allocation;

    invoke-interface {v4, v3}, Lcom/google/android/exoplayer/upstream/Allocator;->release(Lcom/google/android/exoplayer/upstream/Allocation;)V

    .line 334
    iget-wide v4, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->totalBytesDropped:J

    iget v3, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->allocationLength:I

    int-to-long v6, v3

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->totalBytesDropped:J

    .line 332
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 336
    :cond_0
    return-void
.end method

.method private dropUpstreamFrom(J)V
    .locals 9
    .param p1, "absolutePosition"    # J

    .prologue
    .line 119
    iget-wide v6, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->totalBytesDropped:J

    sub-long v6, p1, v6

    long-to-int v4, v6

    .line 121
    .local v4, "relativePosition":I
    iget v5, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->allocationLength:I

    div-int v1, v4, v5

    .line 122
    .local v1, "allocationIndex":I
    iget v5, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->allocationLength:I

    rem-int v2, v4, v5

    .line 124
    .local v2, "allocationOffset":I
    iget-object v5, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->dataQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v5}, Ljava/util/concurrent/LinkedBlockingDeque;->size()I

    move-result v5

    sub-int/2addr v5, v1

    add-int/lit8 v0, v5, -0x1

    .line 125
    .local v0, "allocationDiscardCount":I
    if-nez v2, :cond_0

    .line 127
    add-int/lit8 v0, v0, 0x1

    .line 130
    :cond_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 131
    iget-object v6, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->allocator:Lcom/google/android/exoplayer/upstream/Allocator;

    iget-object v5, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->dataQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v5}, Ljava/util/concurrent/LinkedBlockingDeque;->removeLast()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/exoplayer/upstream/Allocation;

    invoke-interface {v6, v5}, Lcom/google/android/exoplayer/upstream/Allocator;->release(Lcom/google/android/exoplayer/upstream/Allocation;)V

    .line 130
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 134
    :cond_1
    iget-object v5, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->dataQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v5}, Ljava/util/concurrent/LinkedBlockingDeque;->peekLast()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/exoplayer/upstream/Allocation;

    iput-object v5, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->lastAllocation:Lcom/google/android/exoplayer/upstream/Allocation;

    .line 135
    if-nez v2, :cond_2

    iget v2, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->allocationLength:I

    .end local v2    # "allocationOffset":I
    :cond_2
    iput v2, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->lastAllocationOffset:I

    .line 136
    return-void
.end method

.method private static ensureCapacity(Lcom/google/android/exoplayer/util/ParsableByteArray;I)V
    .locals 1
    .param p0, "byteArray"    # Lcom/google/android/exoplayer/util/ParsableByteArray;
    .param p1, "limit"    # I

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->limit()I

    move-result v0

    if-ge v0, p1, :cond_0

    .line 75
    new-array v0, p1, [B

    invoke-virtual {p0, v0, p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->reset([BI)V

    .line 77
    :cond_0
    return-void
.end method

.method private prepareForAppend(I)I
    .locals 2
    .param p1, "length"    # I

    .prologue
    .line 445
    iget v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->lastAllocationOffset:I

    iget v1, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->allocationLength:I

    if-ne v0, v1, :cond_0

    .line 446
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->lastAllocationOffset:I

    .line 447
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->allocator:Lcom/google/android/exoplayer/upstream/Allocator;

    invoke-interface {v0}, Lcom/google/android/exoplayer/upstream/Allocator;->allocate()Lcom/google/android/exoplayer/upstream/Allocation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->lastAllocation:Lcom/google/android/exoplayer/upstream/Allocation;

    .line 448
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->dataQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->lastAllocation:Lcom/google/android/exoplayer/upstream/Allocation;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingDeque;->add(Ljava/lang/Object;)Z

    .line 450
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->allocationLength:I

    iget v1, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->lastAllocationOffset:I

    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method private readData(JLjava/nio/ByteBuffer;I)V
    .locals 7
    .param p1, "absolutePosition"    # J
    .param p3, "target"    # Ljava/nio/ByteBuffer;
    .param p4, "length"    # I

    .prologue
    .line 288
    move v2, p4

    .line 289
    .local v2, "remaining":I
    :goto_0
    if-lez v2, :cond_0

    .line 290
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->dropDownstreamTo(J)V

    .line 291
    iget-wide v4, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->totalBytesDropped:J

    sub-long v4, p1, v4

    long-to-int v1, v4

    .line 292
    .local v1, "positionInAllocation":I
    iget v4, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->allocationLength:I

    sub-int/2addr v4, v1

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 293
    .local v3, "toCopy":I
    iget-object v4, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->dataQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v4}, Ljava/util/concurrent/LinkedBlockingDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/upstream/Allocation;

    .line 294
    .local v0, "allocation":Lcom/google/android/exoplayer/upstream/Allocation;
    iget-object v4, v0, Lcom/google/android/exoplayer/upstream/Allocation;->data:[B

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer/upstream/Allocation;->translateOffset(I)I

    move-result v5

    invoke-virtual {p3, v4, v5, v3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 295
    int-to-long v4, v3

    add-long/2addr p1, v4

    .line 296
    sub-int/2addr v2, v3

    .line 297
    goto :goto_0

    .line 298
    .end local v0    # "allocation":Lcom/google/android/exoplayer/upstream/Allocation;
    .end local v1    # "positionInAllocation":I
    .end local v3    # "toCopy":I
    :cond_0
    return-void
.end method

.method private readData(J[BI)V
    .locals 7
    .param p1, "absolutePosition"    # J
    .param p3, "target"    # [B
    .param p4, "length"    # I

    .prologue
    .line 311
    const/4 v1, 0x0

    .line 312
    .local v1, "bytesRead":I
    :goto_0
    if-ge v1, p4, :cond_0

    .line 313
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->dropDownstreamTo(J)V

    .line 314
    iget-wide v4, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->totalBytesDropped:J

    sub-long v4, p1, v4

    long-to-int v2, v4

    .line 315
    .local v2, "positionInAllocation":I
    sub-int v4, p4, v1

    iget v5, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->allocationLength:I

    sub-int/2addr v5, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 316
    .local v3, "toCopy":I
    iget-object v4, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->dataQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v4}, Ljava/util/concurrent/LinkedBlockingDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/upstream/Allocation;

    .line 317
    .local v0, "allocation":Lcom/google/android/exoplayer/upstream/Allocation;
    iget-object v4, v0, Lcom/google/android/exoplayer/upstream/Allocation;->data:[B

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer/upstream/Allocation;->translateOffset(I)I

    move-result v5

    invoke-static {v4, v5, p3, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 318
    int-to-long v4, v3

    add-long/2addr p1, v4

    .line 319
    add-int/2addr v1, v3

    .line 320
    goto :goto_0

    .line 321
    .end local v0    # "allocation":Lcom/google/android/exoplayer/upstream/Allocation;
    .end local v2    # "positionInAllocation":I
    .end local v3    # "toCopy":I
    :cond_0
    return-void
.end method

.method private readEncryptionData(Lcom/google/android/exoplayer/SampleHolder;Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$SampleExtrasHolder;)V
    .locals 20
    .param p1, "sampleHolder"    # Lcom/google/android/exoplayer/SampleHolder;
    .param p2, "extrasHolder"    # Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$SampleExtrasHolder;

    .prologue
    .line 217
    move-object/from16 v0, p2

    iget-wide v12, v0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$SampleExtrasHolder;->offset:J

    .line 220
    .local v12, "offset":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v2, v2, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v2, v6}, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->readData(J[BI)V

    .line 221
    const-wide/16 v6, 0x1

    add-long/2addr v12, v6

    .line 222
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v2, v2, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    const/4 v6, 0x0

    aget-byte v14, v2, v6

    .line 223
    .local v14, "signalByte":B
    and-int/lit16 v2, v14, 0x80

    if-eqz v2, :cond_5

    const/16 v16, 0x1

    .line 224
    .local v16, "subsampleEncryption":Z
    :goto_0
    and-int/lit8 v11, v14, 0x7f

    .line 227
    .local v11, "ivSize":I
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/exoplayer/SampleHolder;->cryptoInfo:Lcom/google/android/exoplayer/CryptoInfo;

    iget-object v2, v2, Lcom/google/android/exoplayer/CryptoInfo;->iv:[B

    if-nez v2, :cond_0

    .line 228
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/exoplayer/SampleHolder;->cryptoInfo:Lcom/google/android/exoplayer/CryptoInfo;

    const/16 v6, 0x10

    new-array v6, v6, [B

    iput-object v6, v2, Lcom/google/android/exoplayer/CryptoInfo;->iv:[B

    .line 230
    :cond_0
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/exoplayer/SampleHolder;->cryptoInfo:Lcom/google/android/exoplayer/CryptoInfo;

    iget-object v2, v2, Lcom/google/android/exoplayer/CryptoInfo;->iv:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v2, v11}, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->readData(J[BI)V

    .line 231
    int-to-long v6, v11

    add-long/2addr v12, v6

    .line 235
    if-eqz v16, :cond_6

    .line 236
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v2, v2, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    const/4 v6, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v2, v6}, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->readData(J[BI)V

    .line 237
    const-wide/16 v6, 0x2

    add-long/2addr v12, v6

    .line 238
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 239
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedShort()I

    move-result v3

    .line 245
    .local v3, "subsampleCount":I
    :goto_1
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/exoplayer/SampleHolder;->cryptoInfo:Lcom/google/android/exoplayer/CryptoInfo;

    iget-object v4, v2, Lcom/google/android/exoplayer/CryptoInfo;->numBytesOfClearData:[I

    .line 246
    .local v4, "clearDataSizes":[I
    if-eqz v4, :cond_1

    array-length v2, v4

    if-ge v2, v3, :cond_2

    .line 247
    :cond_1
    new-array v4, v3, [I

    .line 249
    :cond_2
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/exoplayer/SampleHolder;->cryptoInfo:Lcom/google/android/exoplayer/CryptoInfo;

    iget-object v5, v2, Lcom/google/android/exoplayer/CryptoInfo;->numBytesOfEncryptedData:[I

    .line 250
    .local v5, "encryptedDataSizes":[I
    if-eqz v5, :cond_3

    array-length v2, v5

    if-ge v2, v3, :cond_4

    .line 251
    :cond_3
    new-array v5, v3, [I

    .line 253
    :cond_4
    if-eqz v16, :cond_7

    .line 254
    mul-int/lit8 v15, v3, 0x6

    .line 255
    .local v15, "subsampleDataLength":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-static {v2, v15}, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->ensureCapacity(Lcom/google/android/exoplayer/util/ParsableByteArray;I)V

    .line 256
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v2, v2, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v2, v15}, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->readData(J[BI)V

    .line 257
    int-to-long v6, v15

    add-long/2addr v12, v6

    .line 258
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 259
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_2
    if-ge v10, v3, :cond_8

    .line 260
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedShort()I

    move-result v2

    aput v2, v4, v10

    .line 261
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v2

    aput v2, v5, v10

    .line 259
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 223
    .end local v3    # "subsampleCount":I
    .end local v4    # "clearDataSizes":[I
    .end local v5    # "encryptedDataSizes":[I
    .end local v10    # "i":I
    .end local v11    # "ivSize":I
    .end local v15    # "subsampleDataLength":I
    .end local v16    # "subsampleEncryption":Z
    :cond_5
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 241
    .restart local v11    # "ivSize":I
    .restart local v16    # "subsampleEncryption":Z
    :cond_6
    const/4 v3, 0x1

    .restart local v3    # "subsampleCount":I
    goto :goto_1

    .line 264
    .restart local v4    # "clearDataSizes":[I
    .restart local v5    # "encryptedDataSizes":[I
    :cond_7
    const/4 v2, 0x0

    const/4 v6, 0x0

    aput v6, v4, v2

    .line 265
    const/4 v2, 0x0

    move-object/from16 v0, p1

    iget v6, v0, Lcom/google/android/exoplayer/SampleHolder;->size:I

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$SampleExtrasHolder;->offset:J

    move-wide/from16 v18, v0

    sub-long v18, v12, v18

    move-wide/from16 v0, v18

    long-to-int v7, v0

    sub-int/2addr v6, v7

    aput v6, v5, v2

    .line 269
    :cond_8
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/exoplayer/SampleHolder;->cryptoInfo:Lcom/google/android/exoplayer/CryptoInfo;

    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$SampleExtrasHolder;->encryptionKeyId:[B

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/google/android/exoplayer/SampleHolder;->cryptoInfo:Lcom/google/android/exoplayer/CryptoInfo;

    iget-object v7, v7, Lcom/google/android/exoplayer/CryptoInfo;->iv:[B

    const/4 v8, 0x1

    invoke-virtual/range {v2 .. v8}, Lcom/google/android/exoplayer/CryptoInfo;->set(I[I[I[B[BI)V

    .line 273
    move-object/from16 v0, p2

    iget-wide v6, v0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$SampleExtrasHolder;->offset:J

    sub-long v6, v12, v6

    long-to-int v9, v6

    .line 274
    .local v9, "bytesRead":I
    move-object/from16 v0, p2

    iget-wide v6, v0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$SampleExtrasHolder;->offset:J

    int-to-long v0, v9

    move-wide/from16 v18, v0

    add-long v6, v6, v18

    move-object/from16 v0, p2

    iput-wide v6, v0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$SampleExtrasHolder;->offset:J

    .line 275
    move-object/from16 v0, p1

    iget v2, v0, Lcom/google/android/exoplayer/SampleHolder;->size:I

    sub-int/2addr v2, v9

    move-object/from16 v0, p1

    iput v2, v0, Lcom/google/android/exoplayer/SampleHolder;->size:I

    .line 276
    return-void
.end method


# virtual methods
.method public appendData(Lcom/google/android/exoplayer/extractor/ExtractorInput;IZ)I
    .locals 6
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
    const/4 v1, -0x1

    .line 393
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->prepareForAppend(I)I

    move-result p2

    .line 394
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->lastAllocation:Lcom/google/android/exoplayer/upstream/Allocation;

    iget-object v2, v2, Lcom/google/android/exoplayer/upstream/Allocation;->data:[B

    iget-object v3, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->lastAllocation:Lcom/google/android/exoplayer/upstream/Allocation;

    iget v4, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->lastAllocationOffset:I

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer/upstream/Allocation;->translateOffset(I)I

    move-result v3

    invoke-interface {p1, v2, v3, p2}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->read([BII)I

    move-result v0

    .line 395
    .local v0, "bytesAppended":I
    if-ne v0, v1, :cond_1

    .line 396
    if-eqz p3, :cond_0

    move v0, v1

    .line 403
    .end local v0    # "bytesAppended":I
    :goto_0
    return v0

    .line 399
    .restart local v0    # "bytesAppended":I
    :cond_0
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    .line 401
    :cond_1
    iget v1, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->lastAllocationOffset:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->lastAllocationOffset:I

    .line 402
    iget-wide v2, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->totalBytesWritten:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->totalBytesWritten:J

    goto :goto_0
.end method

.method public appendData(Lcom/google/android/exoplayer/upstream/DataSource;IZ)I
    .locals 6
    .param p1, "dataSource"    # Lcom/google/android/exoplayer/upstream/DataSource;
    .param p2, "length"    # I
    .param p3, "allowEndOfInput"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 363
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->prepareForAppend(I)I

    move-result p2

    .line 364
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->lastAllocation:Lcom/google/android/exoplayer/upstream/Allocation;

    iget-object v2, v2, Lcom/google/android/exoplayer/upstream/Allocation;->data:[B

    iget-object v3, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->lastAllocation:Lcom/google/android/exoplayer/upstream/Allocation;

    iget v4, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->lastAllocationOffset:I

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer/upstream/Allocation;->translateOffset(I)I

    move-result v3

    invoke-interface {p1, v2, v3, p2}, Lcom/google/android/exoplayer/upstream/DataSource;->read([BII)I

    move-result v0

    .line 365
    .local v0, "bytesAppended":I
    if-ne v0, v1, :cond_1

    .line 366
    if-eqz p3, :cond_0

    move v0, v1

    .line 373
    .end local v0    # "bytesAppended":I
    :goto_0
    return v0

    .line 369
    .restart local v0    # "bytesAppended":I
    :cond_0
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    .line 371
    :cond_1
    iget v1, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->lastAllocationOffset:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->lastAllocationOffset:I

    .line 372
    iget-wide v2, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->totalBytesWritten:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->totalBytesWritten:J

    goto :goto_0
.end method

.method public appendData(Lcom/google/android/exoplayer/util/ParsableByteArray;I)V
    .locals 6
    .param p1, "buffer"    # Lcom/google/android/exoplayer/util/ParsableByteArray;
    .param p2, "length"    # I

    .prologue
    .line 414
    :goto_0
    if-lez p2, :cond_0

    .line 415
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->prepareForAppend(I)I

    move-result v0

    .line 416
    .local v0, "thisAppendLength":I
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->lastAllocation:Lcom/google/android/exoplayer/upstream/Allocation;

    iget-object v1, v1, Lcom/google/android/exoplayer/upstream/Allocation;->data:[B

    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->lastAllocation:Lcom/google/android/exoplayer/upstream/Allocation;

    iget v3, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->lastAllocationOffset:I

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer/upstream/Allocation;->translateOffset(I)I

    move-result v2

    invoke-virtual {p1, v1, v2, v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readBytes([BII)V

    .line 417
    iget v1, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->lastAllocationOffset:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->lastAllocationOffset:I

    .line 418
    iget-wide v2, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->totalBytesWritten:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->totalBytesWritten:J

    .line 419
    sub-int/2addr p2, v0

    .line 420
    goto :goto_0

    .line 421
    .end local v0    # "thisAppendLength":I
    :cond_0
    return-void
.end method

.method public clear()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 83
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->infoQueue:Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->clear()V

    .line 84
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->dataQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->allocator:Lcom/google/android/exoplayer/upstream/Allocator;

    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->dataQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/upstream/Allocation;

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer/upstream/Allocator;->release(Lcom/google/android/exoplayer/upstream/Allocation;)V

    goto :goto_0

    .line 87
    :cond_0
    iput-wide v2, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->totalBytesDropped:J

    .line 88
    iput-wide v2, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->totalBytesWritten:J

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->lastAllocation:Lcom/google/android/exoplayer/upstream/Allocation;

    .line 90
    iget v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->allocationLength:I

    iput v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->lastAllocationOffset:I

    .line 91
    return-void
.end method

.method public commitSample(JIJI[B)V
    .locals 8
    .param p1, "sampleTimeUs"    # J
    .param p3, "flags"    # I
    .param p4, "position"    # J
    .param p6, "size"    # I
    .param p7, "encryptionKey"    # [B

    .prologue
    .line 437
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->infoQueue:Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;

    move-wide v1, p1

    move v3, p3

    move-wide v4, p4

    move v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->commitSample(JIJI[B)V

    .line 438
    return-void
.end method

.method public discardUpstreamSamples(I)V
    .locals 2
    .param p1, "discardFromIndex"    # I

    .prologue
    .line 106
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->infoQueue:Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->discardUpstreamSamples(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->totalBytesWritten:J

    .line 107
    iget-wide v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->totalBytesWritten:J

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->dropUpstreamFrom(J)V

    .line 108
    return-void
.end method

.method public getReadIndex()I
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->infoQueue:Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->getReadIndex()I

    move-result v0

    return v0
.end method

.method public getWriteIndex()I
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->infoQueue:Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->getWriteIndex()I

    move-result v0

    return v0
.end method

.method public getWritePosition()J
    .locals 2

    .prologue
    .line 345
    iget-wide v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->totalBytesWritten:J

    return-wide v0
.end method

.method public peekSample(Lcom/google/android/exoplayer/SampleHolder;)Z
    .locals 2
    .param p1, "holder"    # Lcom/google/android/exoplayer/SampleHolder;

    .prologue
    .line 154
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->infoQueue:Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;

    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->extrasHolder:Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$SampleExtrasHolder;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->peekSample(Lcom/google/android/exoplayer/SampleHolder;Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$SampleExtrasHolder;)Z

    move-result v0

    return v0
.end method

.method public readSample(Lcom/google/android/exoplayer/SampleHolder;)Z
    .locals 7
    .param p1, "sampleHolder"    # Lcom/google/android/exoplayer/SampleHolder;

    .prologue
    .line 188
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->infoQueue:Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;

    iget-object v4, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->extrasHolder:Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$SampleExtrasHolder;

    invoke-virtual {v1, p1, v4}, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->peekSample(Lcom/google/android/exoplayer/SampleHolder;Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$SampleExtrasHolder;)Z

    move-result v0

    .line 189
    .local v0, "haveSample":Z
    if-nez v0, :cond_0

    .line 190
    const/4 v1, 0x0

    .line 203
    :goto_0
    return v1

    .line 194
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer/SampleHolder;->isEncrypted()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 195
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->extrasHolder:Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$SampleExtrasHolder;

    invoke-direct {p0, p1, v1}, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->readEncryptionData(Lcom/google/android/exoplayer/SampleHolder;Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$SampleExtrasHolder;)V

    .line 198
    :cond_1
    iget v1, p1, Lcom/google/android/exoplayer/SampleHolder;->size:I

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer/SampleHolder;->ensureSpaceForWrite(I)V

    .line 199
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->extrasHolder:Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$SampleExtrasHolder;

    iget-wide v4, v1, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$SampleExtrasHolder;->offset:J

    iget-object v1, p1, Lcom/google/android/exoplayer/SampleHolder;->data:Ljava/nio/ByteBuffer;

    iget v6, p1, Lcom/google/android/exoplayer/SampleHolder;->size:I

    invoke-direct {p0, v4, v5, v1, v6}, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->readData(JLjava/nio/ByteBuffer;I)V

    .line 201
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->infoQueue:Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;

    invoke-virtual {v1}, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->moveToNextSample()J

    move-result-wide v2

    .line 202
    .local v2, "nextOffset":J
    invoke-direct {p0, v2, v3}, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->dropDownstreamTo(J)V

    .line 203
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public skipSample()V
    .locals 3

    .prologue
    .line 161
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->infoQueue:Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;

    invoke-virtual {v2}, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->moveToNextSample()J

    move-result-wide v0

    .line 162
    .local v0, "nextOffset":J
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->dropDownstreamTo(J)V

    .line 163
    return-void
.end method

.method public skipToKeyframeBefore(J)Z
    .locals 5
    .param p1, "timeUs"    # J

    .prologue
    .line 172
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->infoQueue:Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;

    invoke-virtual {v2, p1, p2}, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->skipToKeyframeBefore(J)J

    move-result-wide v0

    .line 173
    .local v0, "nextOffset":J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 174
    const/4 v2, 0x0

    .line 177
    :goto_0
    return v2

    .line 176
    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->dropDownstreamTo(J)V

    .line 177
    const/4 v2, 0x1

    goto :goto_0
.end method
