.class public final Lcom/google/android/exoplayer/util/ParsableBitArray;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private bitOffset:I

.field private byteLimit:I

.field private byteOffset:I

.field public data:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "data"    # [B

    .prologue
    .line 41
    array-length v0, p1

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer/util/ParsableBitArray;-><init>([BI)V

    .line 42
    return-void
.end method

.method public constructor <init>([BI)V
    .locals 0
    .param p1, "data"    # [B
    .param p2, "limit"    # I

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->data:[B

    .line 53
    iput p2, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->byteLimit:I

    .line 54
    return-void
.end method

.method private assertValidOffset()V
    .locals 2

    .prologue
    .line 224
    iget v0, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->byteOffset:I

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->bitOffset:I

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->bitOffset:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_1

    iget v0, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->byteOffset:I

    iget v1, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->byteLimit:I

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->byteOffset:I

    iget v1, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->byteLimit:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->bitOffset:I

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 226
    return-void

    .line 224
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private readExpGolombCodeNum()I
    .locals 3

    .prologue
    .line 215
    const/4 v0, 0x0

    .line 216
    .local v0, "leadingZeros":I
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBit()Z

    move-result v1

    if-nez v1, :cond_0

    .line 217
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 219
    :cond_0
    const/4 v1, 0x1

    shl-int/2addr v1, v0

    add-int/lit8 v2, v1, -0x1

    if-lez v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v1

    :goto_1
    add-int/2addr v1, v2

    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public bitsLeft()I
    .locals 2

    .prologue
    .line 83
    iget v0, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->byteLimit:I

    iget v1, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->byteOffset:I

    sub-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x8

    iget v1, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->bitOffset:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getPosition()I
    .locals 2

    .prologue
    .line 91
    iget v0, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->byteOffset:I

    mul-int/lit8 v0, v0, 0x8

    iget v1, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->bitOffset:I

    add-int/2addr v0, v1

    return v0
.end method

.method public peekExpGolombCodedNumLength()I
    .locals 6

    .prologue
    .line 185
    iget v2, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->byteOffset:I

    .line 186
    .local v2, "initialByteOffset":I
    iget v1, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->bitOffset:I

    .line 187
    .local v1, "initialBitOffset":I
    const/4 v3, 0x0

    .line 188
    .local v3, "leadingZeros":I
    :goto_0
    iget v4, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->byteOffset:I

    iget v5, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->byteLimit:I

    if-ge v4, v5, :cond_0

    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBit()Z

    move-result v4

    if-nez v4, :cond_0

    .line 189
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 191
    :cond_0
    iget v4, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->byteOffset:I

    iget v5, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->byteLimit:I

    if-ne v4, v5, :cond_1

    const/4 v0, 0x1

    .line 192
    .local v0, "hitLimit":Z
    :goto_1
    iput v2, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->byteOffset:I

    .line 193
    iput v1, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->bitOffset:I

    .line 194
    if-eqz v0, :cond_2

    const/4 v4, -0x1

    :goto_2
    return v4

    .line 191
    .end local v0    # "hitLimit":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 194
    .restart local v0    # "hitLimit":Z
    :cond_2
    mul-int/lit8 v4, v3, 0x2

    add-int/lit8 v4, v4, 0x1

    goto :goto_2
.end method

.method public readBit()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 125
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readBits(I)I
    .locals 10
    .param p1, "numBits"    # I

    .prologue
    const/16 v9, 0x8

    .line 135
    if-nez p1, :cond_0

    .line 136
    const/4 v3, 0x0

    .line 176
    :goto_0
    return v3

    .line 139
    :cond_0
    const/4 v3, 0x0

    .line 142
    .local v3, "returnValue":I
    div-int/lit8 v4, p1, 0x8

    .line 143
    .local v4, "wholeBytes":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v4, :cond_2

    .line 145
    iget v6, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->bitOffset:I

    if-eqz v6, :cond_1

    .line 146
    iget-object v6, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->data:[B

    iget v7, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->byteOffset:I

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    iget v7, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->bitOffset:I

    shl-int/2addr v6, v7

    iget-object v7, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->data:[B

    iget v8, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->byteOffset:I

    add-int/lit8 v8, v8, 0x1

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    iget v8, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->bitOffset:I

    rsub-int/lit8 v8, v8, 0x8

    ushr-int/2addr v7, v8

    or-int v0, v6, v7

    .line 150
    .local v0, "byteValue":I
    :goto_2
    add-int/lit8 p1, p1, -0x8

    .line 151
    and-int/lit16 v6, v0, 0xff

    shl-int/2addr v6, p1

    or-int/2addr v3, v6

    .line 152
    iget v6, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->byteOffset:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->byteOffset:I

    .line 143
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 148
    .end local v0    # "byteValue":I
    :cond_1
    iget-object v6, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->data:[B

    iget v7, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->byteOffset:I

    aget-byte v0, v6, v7

    .restart local v0    # "byteValue":I
    goto :goto_2

    .line 156
    .end local v0    # "byteValue":I
    :cond_2
    if-lez p1, :cond_4

    .line 157
    iget v6, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->bitOffset:I

    add-int v2, v6, p1

    .line 158
    .local v2, "nextBit":I
    const/16 v6, 0xff

    rsub-int/lit8 v7, p1, 0x8

    shr-int/2addr v6, v7

    int-to-byte v5, v6

    .line 160
    .local v5, "writeMask":B
    if-le v2, v9, :cond_5

    .line 162
    iget-object v6, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->data:[B

    iget v7, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->byteOffset:I

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    add-int/lit8 v7, v2, -0x8

    shl-int/2addr v6, v7

    iget-object v7, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->data:[B

    iget v8, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->byteOffset:I

    add-int/lit8 v8, v8, 0x1

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    rsub-int/lit8 v8, v2, 0x10

    shr-int/2addr v7, v8

    or-int/2addr v6, v7

    and-int/2addr v6, v5

    or-int/2addr v3, v6

    .line 163
    iget v6, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->byteOffset:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->byteOffset:I

    .line 172
    :cond_3
    :goto_3
    rem-int/lit8 v6, v2, 0x8

    iput v6, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->bitOffset:I

    .line 175
    .end local v2    # "nextBit":I
    .end local v5    # "writeMask":B
    :cond_4
    invoke-direct {p0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->assertValidOffset()V

    goto :goto_0

    .line 166
    .restart local v2    # "nextBit":I
    .restart local v5    # "writeMask":B
    :cond_5
    iget-object v6, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->data:[B

    iget v7, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->byteOffset:I

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    rsub-int/lit8 v7, v2, 0x8

    shr-int/2addr v6, v7

    and-int/2addr v6, v5

    or-int/2addr v3, v6

    .line 167
    if-ne v2, v9, :cond_3

    .line 168
    iget v6, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->byteOffset:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->byteOffset:I

    goto :goto_3
.end method

.method public readSignedExpGolombCodedInt()I
    .locals 3

    .prologue
    .line 210
    invoke-direct {p0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readExpGolombCodeNum()I

    move-result v0

    .line 211
    .local v0, "codeNum":I
    rem-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_0

    const/4 v1, -0x1

    :goto_0
    add-int/lit8 v2, v0, 0x1

    div-int/lit8 v2, v2, 0x2

    mul-int/2addr v1, v2

    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public readUnsignedExpGolombCodedInt()I
    .locals 1

    .prologue
    .line 202
    invoke-direct {p0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readExpGolombCodeNum()I

    move-result v0

    return v0
.end method

.method public reset([B)V
    .locals 1
    .param p1, "data"    # [B

    .prologue
    .line 62
    array-length v0, p1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->reset([BI)V

    .line 63
    return-void
.end method

.method public reset([BI)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "limit"    # I

    .prologue
    const/4 v0, 0x0

    .line 73
    iput-object p1, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->data:[B

    .line 74
    iput v0, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->byteOffset:I

    .line 75
    iput v0, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->bitOffset:I

    .line 76
    iput p2, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->byteLimit:I

    .line 77
    return-void
.end method

.method public setPosition(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 100
    div-int/lit8 v0, p1, 0x8

    iput v0, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->byteOffset:I

    .line 101
    iget v0, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->byteOffset:I

    mul-int/lit8 v0, v0, 0x8

    sub-int v0, p1, v0

    iput v0, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->bitOffset:I

    .line 102
    invoke-direct {p0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->assertValidOffset()V

    .line 103
    return-void
.end method

.method public skipBits(I)V
    .locals 2
    .param p1, "n"    # I

    .prologue
    .line 111
    iget v0, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->byteOffset:I

    div-int/lit8 v1, p1, 0x8

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->byteOffset:I

    .line 112
    iget v0, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->bitOffset:I

    rem-int/lit8 v1, p1, 0x8

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->bitOffset:I

    .line 113
    iget v0, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->bitOffset:I

    const/4 v1, 0x7

    if-le v0, v1, :cond_0

    .line 114
    iget v0, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->byteOffset:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->byteOffset:I

    .line 115
    iget v0, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->bitOffset:I

    add-int/lit8 v0, v0, -0x8

    iput v0, p0, Lcom/google/android/exoplayer/util/ParsableBitArray;->bitOffset:I

    .line 117
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->assertValidOffset()V

    .line 118
    return-void
.end method
