.class public final Lcom/google/android/exoplayer/SampleHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final BUFFER_REPLACEMENT_MODE_DIRECT:I = 0x2

.field public static final BUFFER_REPLACEMENT_MODE_DISABLED:I = 0x0

.field public static final BUFFER_REPLACEMENT_MODE_NORMAL:I = 0x1


# instance fields
.field private final bufferReplacementMode:I

.field public final cryptoInfo:Lcom/google/android/exoplayer/CryptoInfo;

.field public data:Ljava/nio/ByteBuffer;

.field public flags:I

.field public size:I

.field public timeUs:J


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "bufferReplacementMode"    # I

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Lcom/google/android/exoplayer/CryptoInfo;

    invoke-direct {v0}, Lcom/google/android/exoplayer/CryptoInfo;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/SampleHolder;->cryptoInfo:Lcom/google/android/exoplayer/CryptoInfo;

    .line 66
    iput p1, p0, Lcom/google/android/exoplayer/SampleHolder;->bufferReplacementMode:I

    .line 67
    return-void
.end method

.method private createReplacementBuffer(I)Ljava/nio/ByteBuffer;
    .locals 4
    .param p1, "requiredCapacity"    # I

    .prologue
    .line 136
    iget v1, p0, Lcom/google/android/exoplayer/SampleHolder;->bufferReplacementMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 137
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 139
    :goto_0
    return-object v1

    .line 138
    :cond_0
    iget v1, p0, Lcom/google/android/exoplayer/SampleHolder;->bufferReplacementMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 139
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    goto :goto_0

    .line 141
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer/SampleHolder;->data:Ljava/nio/ByteBuffer;

    if-nez v1, :cond_2

    const/4 v0, 0x0

    .line 142
    .local v0, "currentCapacity":I
    :goto_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Buffer too small ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " < "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 141
    .end local v0    # "currentCapacity":I
    :cond_2
    iget-object v1, p0, Lcom/google/android/exoplayer/SampleHolder;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    goto :goto_1
.end method


# virtual methods
.method public clearData()V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/google/android/exoplayer/SampleHolder;->data:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/google/android/exoplayer/SampleHolder;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 133
    :cond_0
    return-void
.end method

.method public ensureSpaceForWrite(I)V
    .locals 6
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 82
    iget-object v4, p0, Lcom/google/android/exoplayer/SampleHolder;->data:Ljava/nio/ByteBuffer;

    if-nez v4, :cond_1

    .line 83
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/SampleHolder;->createReplacementBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/exoplayer/SampleHolder;->data:Ljava/nio/ByteBuffer;

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    iget-object v4, p0, Lcom/google/android/exoplayer/SampleHolder;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    .line 88
    .local v0, "capacity":I
    iget-object v4, p0, Lcom/google/android/exoplayer/SampleHolder;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    .line 89
    .local v2, "position":I
    add-int v3, v2, p1

    .line 90
    .local v3, "requiredCapacity":I
    if-ge v0, v3, :cond_0

    .line 94
    invoke-direct {p0, v3}, Lcom/google/android/exoplayer/SampleHolder;->createReplacementBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 96
    .local v1, "newData":Ljava/nio/ByteBuffer;
    if-lez v2, :cond_2

    .line 97
    iget-object v4, p0, Lcom/google/android/exoplayer/SampleHolder;->data:Ljava/nio/ByteBuffer;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 98
    iget-object v4, p0, Lcom/google/android/exoplayer/SampleHolder;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 99
    iget-object v4, p0, Lcom/google/android/exoplayer/SampleHolder;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 102
    :cond_2
    iput-object v1, p0, Lcom/google/android/exoplayer/SampleHolder;->data:Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method public isDecodeOnly()Z
    .locals 2

    .prologue
    .line 116
    iget v0, p0, Lcom/google/android/exoplayer/SampleHolder;->flags:I

    const/high16 v1, 0x8000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEncrypted()Z
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lcom/google/android/exoplayer/SampleHolder;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSyncFrame()Z
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lcom/google/android/exoplayer/SampleHolder;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
