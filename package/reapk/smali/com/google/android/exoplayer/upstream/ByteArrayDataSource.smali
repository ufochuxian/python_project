.class public final Lcom/google/android/exoplayer/upstream/ByteArrayDataSource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer/upstream/DataSource;


# instance fields
.field private final data:[B

.field private readPosition:I

.field private remainingBytes:I


# direct methods
.method public constructor <init>([B)V
    .locals 1
    .param p1, "data"    # [B

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-static {p1}, Lcom/google/android/exoplayer/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    array-length v0, p1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkArgument(Z)V

    .line 39
    iput-object p1, p0, Lcom/google/android/exoplayer/upstream/ByteArrayDataSource;->data:[B

    .line 40
    return-void

    .line 38
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    return-void
.end method

.method public open(Lcom/google/android/exoplayer/upstream/DataSpec;)J
    .locals 4
    .param p1, "dataSpec"    # Lcom/google/android/exoplayer/upstream/DataSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44
    iget-wide v0, p1, Lcom/google/android/exoplayer/upstream/DataSpec;->position:J

    long-to-int v0, v0

    iput v0, p0, Lcom/google/android/exoplayer/upstream/ByteArrayDataSource;->readPosition:I

    .line 45
    iget-wide v0, p1, Lcom/google/android/exoplayer/upstream/DataSpec;->length:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/ByteArrayDataSource;->data:[B

    array-length v0, v0

    int-to-long v0, v0

    iget-wide v2, p1, Lcom/google/android/exoplayer/upstream/DataSpec;->position:J

    sub-long/2addr v0, v2

    :goto_0
    long-to-int v0, v0

    iput v0, p0, Lcom/google/android/exoplayer/upstream/ByteArrayDataSource;->remainingBytes:I

    .line 46
    iget v0, p0, Lcom/google/android/exoplayer/upstream/ByteArrayDataSource;->remainingBytes:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer/upstream/ByteArrayDataSource;->readPosition:I

    iget v1, p0, Lcom/google/android/exoplayer/upstream/ByteArrayDataSource;->remainingBytes:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/exoplayer/upstream/ByteArrayDataSource;->data:[B

    array-length v1, v1

    if-le v0, v1, :cond_2

    .line 47
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsatisfiable range: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/exoplayer/upstream/ByteArrayDataSource;->readPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/google/android/exoplayer/upstream/DataSpec;->length:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer/upstream/ByteArrayDataSource;->data:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_1
    iget-wide v0, p1, Lcom/google/android/exoplayer/upstream/DataSpec;->length:J

    goto :goto_0

    .line 49
    :cond_2
    iget v0, p0, Lcom/google/android/exoplayer/upstream/ByteArrayDataSource;->remainingBytes:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public read([BII)I
    .locals 2
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59
    iget v0, p0, Lcom/google/android/exoplayer/upstream/ByteArrayDataSource;->remainingBytes:I

    if-nez v0, :cond_0

    .line 60
    const/4 v0, -0x1

    .line 66
    :goto_0
    return v0

    .line 62
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer/upstream/ByteArrayDataSource;->remainingBytes:I

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 63
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/ByteArrayDataSource;->data:[B

    iget v1, p0, Lcom/google/android/exoplayer/upstream/ByteArrayDataSource;->readPosition:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 64
    iget v0, p0, Lcom/google/android/exoplayer/upstream/ByteArrayDataSource;->readPosition:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/google/android/exoplayer/upstream/ByteArrayDataSource;->readPosition:I

    .line 65
    iget v0, p0, Lcom/google/android/exoplayer/upstream/ByteArrayDataSource;->remainingBytes:I

    sub-int/2addr v0, p3

    iput v0, p0, Lcom/google/android/exoplayer/upstream/ByteArrayDataSource;->remainingBytes:I

    move v0, p3

    .line 66
    goto :goto_0
.end method
