.class final Lokio/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokio/e;


# instance fields
.field public final a:Lokio/c;

.field public final b:Lokio/x;

.field c:Z


# direct methods
.method constructor <init>(Lokio/x;)V
    .locals 2
    .param p1, "source"    # Lokio/x;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lokio/c;

    invoke-direct {v0}, Lokio/c;-><init>()V

    iput-object v0, p0, Lokio/s;->a:Lokio/c;

    .line 31
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 32
    :cond_0
    iput-object p1, p0, Lokio/s;->b:Lokio/x;

    .line 33
    return-void
.end method


# virtual methods
.method public a(Lokio/p;)I
    .locals 8
    .param p1, "options"    # Lokio/p;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 87
    iget-boolean v3, p0, Lokio/s;->c:Z

    if-eqz v3, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "closed"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 90
    :cond_0
    iget-object v3, p0, Lokio/s;->a:Lokio/c;

    invoke-virtual {v3, p1}, Lokio/c;->b(Lokio/p;)I

    move-result v0

    .line 91
    .local v0, "index":I
    if-ne v0, v2, :cond_1

    move v0, v2

    .line 101
    .end local v0    # "index":I
    :goto_0
    return v0

    .line 94
    .restart local v0    # "index":I
    :cond_1
    iget-object v3, p1, Lokio/p;->a:[Lokio/ByteString;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lokio/ByteString;->size()I

    move-result v1

    .line 95
    .local v1, "selectedSize":I
    int-to-long v4, v1

    iget-object v3, p0, Lokio/s;->a:Lokio/c;

    iget-wide v6, v3, Lokio/c;->c:J

    cmp-long v3, v4, v6

    if-gtz v3, :cond_2

    .line 96
    iget-object v2, p0, Lokio/s;->a:Lokio/c;

    int-to-long v4, v1

    invoke-virtual {v2, v4, v5}, Lokio/c;->h(J)V

    goto :goto_0

    .line 101
    :cond_2
    iget-object v3, p0, Lokio/s;->b:Lokio/x;

    iget-object v4, p0, Lokio/s;->a:Lokio/c;

    const-wide/16 v6, 0x2000

    invoke-interface {v3, v4, v6, v7}, Lokio/x;->read(Lokio/c;J)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    move v0, v2

    goto :goto_0
.end method

.method public a([B)I
    .locals 2
    .param p1, "sink"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 116
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lokio/s;->a([BII)I

    move-result v0

    return v0
.end method

.method public a([BII)I
    .locals 9
    .param p1, "sink"    # [B
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 136
    array-length v0, p1

    int-to-long v0, v0

    int-to-long v2, p2

    int-to-long v4, p3

    invoke-static/range {v0 .. v5}, Lokio/z;->a(JJJ)V

    .line 138
    iget-object v0, p0, Lokio/s;->a:Lokio/c;

    iget-wide v0, v0, Lokio/c;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 139
    iget-object v0, p0, Lokio/s;->b:Lokio/x;

    iget-object v1, p0, Lokio/s;->a:Lokio/c;

    const-wide/16 v2, 0x2000

    invoke-interface {v0, v1, v2, v3}, Lokio/x;->read(Lokio/c;J)J

    move-result-wide v6

    .line 140
    .local v6, "read":J
    const-wide/16 v0, -0x1

    cmp-long v0, v6, v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 144
    .end local v6    # "read":J
    :goto_0
    return v0

    .line 143
    :cond_0
    int-to-long v0, p3

    iget-object v2, p0, Lokio/s;->a:Lokio/c;

    iget-wide v2, v2, Lokio/c;->c:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v8, v0

    .line 144
    .local v8, "toRead":I
    iget-object v0, p0, Lokio/s;->a:Lokio/c;

    invoke-virtual {v0, p1, p2, v8}, Lokio/c;->a([BII)I

    move-result v0

    goto :goto_0
.end method

.method public a(B)J
    .locals 2
    .param p1, "b"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 314
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lokio/s;->a(BJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public a(BJ)J
    .locals 10
    .param p1, "b"    # B
    .param p2, "fromIndex"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, -0x1

    .line 318
    iget-boolean v6, p0, Lokio/s;->c:Z

    if-eqz v6, :cond_1

    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "closed"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 328
    .local v0, "lastBufferSize":J
    .local v2, "result":J
    :cond_0
    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    .line 321
    .end local v0    # "lastBufferSize":J
    .end local v2    # "result":J
    :cond_1
    iget-object v6, p0, Lokio/s;->a:Lokio/c;

    invoke-virtual {v6, p1, p2, p3}, Lokio/c;->a(BJ)J

    move-result-wide v2

    .line 322
    .restart local v2    # "result":J
    cmp-long v6, v2, v4

    if-eqz v6, :cond_2

    .line 325
    .end local v2    # "result":J
    :goto_0
    return-wide v2

    .line 324
    .restart local v2    # "result":J
    :cond_2
    iget-object v6, p0, Lokio/s;->a:Lokio/c;

    iget-wide v0, v6, Lokio/c;->c:J

    .line 325
    .restart local v0    # "lastBufferSize":J
    iget-object v6, p0, Lokio/s;->b:Lokio/x;

    iget-object v7, p0, Lokio/s;->a:Lokio/c;

    const-wide/16 v8, 0x2000

    invoke-interface {v6, v7, v8, v9}, Lokio/x;->read(Lokio/c;J)J

    move-result-wide v6

    cmp-long v6, v6, v4

    if-nez v6, :cond_0

    move-wide v2, v4

    goto :goto_0
.end method

.method public a(Lokio/ByteString;J)J
    .locals 10
    .param p1, "bytes"    # Lokio/ByteString;
    .param p2, "fromIndex"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, -0x1

    .line 337
    iget-boolean v6, p0, Lokio/s;->c:Z

    if-eqz v6, :cond_1

    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "closed"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 347
    .local v0, "lastBufferSize":J
    .local v2, "result":J
    :cond_0
    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result v6

    int-to-long v6, v6

    sub-long v6, v0, v6

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    invoke-static {p2, p3, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    .line 340
    .end local v0    # "lastBufferSize":J
    .end local v2    # "result":J
    :cond_1
    iget-object v6, p0, Lokio/s;->a:Lokio/c;

    invoke-virtual {v6, p1, p2, p3}, Lokio/c;->a(Lokio/ByteString;J)J

    move-result-wide v2

    .line 341
    .restart local v2    # "result":J
    cmp-long v6, v2, v4

    if-eqz v6, :cond_2

    .line 344
    .end local v2    # "result":J
    :goto_0
    return-wide v2

    .line 343
    .restart local v2    # "result":J
    :cond_2
    iget-object v6, p0, Lokio/s;->a:Lokio/c;

    iget-wide v0, v6, Lokio/c;->c:J

    .line 344
    .restart local v0    # "lastBufferSize":J
    iget-object v6, p0, Lokio/s;->b:Lokio/x;

    iget-object v7, p0, Lokio/s;->a:Lokio/c;

    const-wide/16 v8, 0x2000

    invoke-interface {v6, v7, v8, v9}, Lokio/x;->read(Lokio/c;J)J

    move-result-wide v6

    cmp-long v6, v6, v4

    if-nez v6, :cond_0

    move-wide v2, v4

    goto :goto_0
.end method

.method public a(Lokio/w;)J
    .locals 10
    .param p1, "sink"    # Lokio/w;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v8, 0x0

    .line 159
    if-nez p1, :cond_0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "sink == null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 161
    :cond_0
    const-wide/16 v2, 0x0

    .line 162
    .local v2, "totalBytesWritten":J
    :cond_1
    :goto_0
    iget-object v4, p0, Lokio/s;->b:Lokio/x;

    iget-object v5, p0, Lokio/s;->a:Lokio/c;

    const-wide/16 v6, 0x2000

    invoke-interface {v4, v5, v6, v7}, Lokio/x;->read(Lokio/c;J)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2

    .line 163
    iget-object v4, p0, Lokio/s;->a:Lokio/c;

    invoke-virtual {v4}, Lokio/c;->h()J

    move-result-wide v0

    .line 164
    .local v0, "emitByteCount":J
    cmp-long v4, v0, v8

    if-lez v4, :cond_1

    .line 165
    add-long/2addr v2, v0

    .line 166
    iget-object v4, p0, Lokio/s;->a:Lokio/c;

    invoke-interface {p1, v4, v0, v1}, Lokio/w;->a(Lokio/c;J)V

    goto :goto_0

    .line 169
    .end local v0    # "emitByteCount":J
    :cond_2
    iget-object v4, p0, Lokio/s;->a:Lokio/c;

    invoke-virtual {v4}, Lokio/c;->a()J

    move-result-wide v4

    cmp-long v4, v4, v8

    if-lez v4, :cond_3

    .line 170
    iget-object v4, p0, Lokio/s;->a:Lokio/c;

    invoke-virtual {v4}, Lokio/c;->a()J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 171
    iget-object v4, p0, Lokio/s;->a:Lokio/c;

    iget-object v5, p0, Lokio/s;->a:Lokio/c;

    invoke-virtual {v5}, Lokio/c;->a()J

    move-result-wide v6

    invoke-interface {p1, v4, v6, v7}, Lokio/w;->a(Lokio/c;J)V

    .line 173
    :cond_3
    return-wide v2
.end method

.method public a(JLjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 3
    .param p1, "byteCount"    # J
    .param p3, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 194
    invoke-virtual {p0, p1, p2}, Lokio/s;->a(J)V

    .line 195
    if-nez p3, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "charset == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 196
    :cond_0
    iget-object v0, p0, Lokio/s;->a:Lokio/c;

    invoke-virtual {v0, p1, p2, p3}, Lokio/c;->a(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 2
    .param p1, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 187
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "charset == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 189
    :cond_0
    iget-object v0, p0, Lokio/s;->a:Lokio/c;

    iget-object v1, p0, Lokio/s;->b:Lokio/x;

    invoke-virtual {v0, v1}, Lokio/c;->a(Lokio/x;)J

    .line 190
    iget-object v0, p0, Lokio/s;->a:Lokio/c;

    invoke-virtual {v0, p1}, Lokio/c;->a(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(J)V
    .locals 1
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59
    invoke-virtual {p0, p1, p2}, Lokio/s;->b(J)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 60
    :cond_0
    return-void
.end method

.method public a(JLokio/ByteString;)Z
    .locals 7
    .param p1, "offset"    # J
    .param p3, "bytes"    # Lokio/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 371
    const/4 v5, 0x0

    invoke-virtual {p3}, Lokio/ByteString;->size()I

    move-result v6

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    invoke-virtual/range {v1 .. v6}, Lokio/s;->a(JLokio/ByteString;II)Z

    move-result v0

    return v0
.end method

.method public a(JLokio/ByteString;II)Z
    .locals 7
    .param p1, "offset"    # J
    .param p3, "bytes"    # Lokio/ByteString;
    .param p4, "bytesOffset"    # I
    .param p5, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 377
    iget-boolean v4, p0, Lokio/s;->c:Z

    if-eqz v4, :cond_0

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "closed"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 379
    :cond_0
    const-wide/16 v4, 0x0

    cmp-long v4, p1, v4

    if-ltz v4, :cond_1

    if-ltz p4, :cond_1

    if-ltz p5, :cond_1

    .line 382
    invoke-virtual {p3}, Lokio/ByteString;->size()I

    move-result v4

    sub-int/2addr v4, p4

    if-ge v4, p5, :cond_2

    .line 390
    :cond_1
    :goto_0
    return v3

    .line 385
    :cond_2
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, p5, :cond_3

    .line 386
    int-to-long v4, v2

    add-long v0, p1, v4

    .line 387
    .local v0, "bufferOffset":J
    const-wide/16 v4, 0x1

    add-long/2addr v4, v0

    invoke-virtual {p0, v4, v5}, Lokio/s;->b(J)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 388
    iget-object v4, p0, Lokio/s;->a:Lokio/c;

    invoke-virtual {v4, v0, v1}, Lokio/c;->c(J)B

    move-result v4

    add-int v5, p4, v2

    invoke-virtual {p3, v5}, Lokio/ByteString;->getByte(I)B

    move-result v5

    if-ne v4, v5, :cond_1

    .line 385
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 390
    .end local v0    # "bufferOffset":J
    :cond_3
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public b(Lokio/ByteString;)J
    .locals 2
    .param p1, "bytes"    # Lokio/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 333
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lokio/s;->a(Lokio/ByteString;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public b(Lokio/ByteString;J)J
    .locals 10
    .param p1, "targetBytes"    # Lokio/ByteString;
    .param p2, "fromIndex"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, -0x1

    .line 356
    iget-boolean v6, p0, Lokio/s;->c:Z

    if-eqz v6, :cond_1

    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "closed"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 366
    .local v0, "lastBufferSize":J
    .local v2, "result":J
    :cond_0
    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    .line 359
    .end local v0    # "lastBufferSize":J
    .end local v2    # "result":J
    :cond_1
    iget-object v6, p0, Lokio/s;->a:Lokio/c;

    invoke-virtual {v6, p1, p2, p3}, Lokio/c;->b(Lokio/ByteString;J)J

    move-result-wide v2

    .line 360
    .restart local v2    # "result":J
    cmp-long v6, v2, v4

    if-eqz v6, :cond_2

    .line 363
    .end local v2    # "result":J
    :goto_0
    return-wide v2

    .line 362
    .restart local v2    # "result":J
    :cond_2
    iget-object v6, p0, Lokio/s;->a:Lokio/c;

    iget-wide v0, v6, Lokio/c;->c:J

    .line 363
    .restart local v0    # "lastBufferSize":J
    iget-object v6, p0, Lokio/s;->b:Lokio/x;

    iget-object v7, p0, Lokio/s;->a:Lokio/c;

    const-wide/16 v8, 0x2000

    invoke-interface {v6, v7, v8, v9}, Lokio/x;->read(Lokio/c;J)J

    move-result-wide v6

    cmp-long v6, v6, v4

    if-nez v6, :cond_0

    move-wide v2, v4

    goto :goto_0
.end method

.method public b()Lokio/c;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lokio/s;->a:Lokio/c;

    return-object v0
.end method

.method public b(Lokio/c;J)V
    .locals 2
    .param p1, "sink"    # Lokio/c;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 149
    :try_start_0
    invoke-virtual {p0, p2, p3}, Lokio/s;->a(J)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    iget-object v1, p0, Lokio/s;->a:Lokio/c;

    invoke-virtual {v1, p1, p2, p3}, Lokio/c;->b(Lokio/c;J)V

    .line 156
    return-void

    .line 150
    :catch_0
    move-exception v0

    .line 152
    .local v0, "e":Ljava/io/EOFException;
    iget-object v1, p0, Lokio/s;->a:Lokio/c;

    invoke-virtual {p1, v1}, Lokio/c;->a(Lokio/x;)J

    .line 153
    throw v0
.end method

.method public b([B)V
    .locals 8
    .param p1, "sink"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 121
    :try_start_0
    array-length v3, p1

    int-to-long v4, v3

    invoke-virtual {p0, v4, v5}, Lokio/s;->a(J)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    iget-object v3, p0, Lokio/s;->a:Lokio/c;

    invoke-virtual {v3, p1}, Lokio/c;->b([B)V

    .line 133
    return-void

    .line 122
    :catch_0
    move-exception v0

    .line 124
    .local v0, "e":Ljava/io/EOFException;
    const/4 v1, 0x0

    .line 125
    .local v1, "offset":I
    :goto_0
    iget-object v3, p0, Lokio/s;->a:Lokio/c;

    iget-wide v4, v3, Lokio/c;->c:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_1

    .line 126
    iget-object v3, p0, Lokio/s;->a:Lokio/c;

    iget-object v4, p0, Lokio/s;->a:Lokio/c;

    iget-wide v4, v4, Lokio/c;->c:J

    long-to-int v4, v4

    invoke-virtual {v3, p1, v1, v4}, Lokio/c;->a([BII)I

    move-result v2

    .line 127
    .local v2, "read":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 128
    :cond_0
    add-int/2addr v1, v2

    .line 129
    goto :goto_0

    .line 130
    .end local v2    # "read":I
    :cond_1
    throw v0
.end method

.method public b(J)Z
    .locals 5
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "byteCount < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_0
    iget-boolean v0, p0, Lokio/s;->c:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_1
    iget-object v0, p0, Lokio/s;->a:Lokio/c;

    iget-wide v0, v0, Lokio/c;->c:J

    cmp-long v0, v0, p1

    if-gez v0, :cond_2

    .line 66
    iget-object v0, p0, Lokio/s;->b:Lokio/x;

    iget-object v1, p0, Lokio/s;->a:Lokio/c;

    const-wide/16 v2, 0x2000

    invoke-interface {v0, v1, v2, v3}, Lokio/x;->read(Lokio/c;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 68
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public c(Lokio/ByteString;)J
    .locals 2
    .param p1, "targetBytes"    # Lokio/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 352
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lokio/s;->b(Lokio/ByteString;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 432
    iget-boolean v0, p0, Lokio/s;->c:Z

    if-eqz v0, :cond_0

    .line 436
    :goto_0
    return-void

    .line 433
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lokio/s;->c:Z

    .line 434
    iget-object v0, p0, Lokio/s;->b:Lokio/x;

    invoke-interface {v0}, Lokio/x;->close()V

    .line 435
    iget-object v0, p0, Lokio/s;->a:Lokio/c;

    invoke-virtual {v0}, Lokio/c;->x()V

    goto :goto_0
.end method

.method public d(J)Lokio/ByteString;
    .locals 1
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 82
    invoke-virtual {p0, p1, p2}, Lokio/s;->a(J)V

    .line 83
    iget-object v0, p0, Lokio/s;->a:Lokio/c;

    invoke-virtual {v0, p1, p2}, Lokio/c;->d(J)Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public e(J)Ljava/lang/String;
    .locals 1
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 182
    invoke-virtual {p0, p1, p2}, Lokio/s;->a(J)V

    .line 183
    iget-object v0, p0, Lokio/s;->a:Lokio/c;

    invoke-virtual {v0, p1, p2}, Lokio/c;->e(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    iget-boolean v0, p0, Lokio/s;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_0
    iget-object v0, p0, Lokio/s;->a:Lokio/c;

    invoke-virtual {v0}, Lokio/c;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lokio/s;->b:Lokio/x;

    iget-object v1, p0, Lokio/s;->a:Lokio/c;

    const-wide/16 v2, 0x2000

    invoke-interface {v0, v1, v2, v3}, Lokio/x;->read(Lokio/c;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 394
    new-instance v0, Lokio/s$1;

    invoke-direct {v0, p0}, Lokio/s$1;-><init>(Lokio/s;)V

    return-object v0
.end method

.method public g(J)[B
    .locals 1
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 111
    invoke-virtual {p0, p1, p2}, Lokio/s;->a(J)V

    .line 112
    iget-object v0, p0, Lokio/s;->a:Lokio/c;

    invoke-virtual {v0, p1, p2}, Lokio/c;->g(J)[B

    move-result-object v0

    return-object v0
.end method

.method public h(J)V
    .locals 9
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x0

    .line 302
    iget-boolean v2, p0, Lokio/s;->c:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "closed"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 307
    :cond_0
    iget-object v2, p0, Lokio/s;->a:Lokio/c;

    invoke-virtual {v2}, Lokio/c;->a()J

    move-result-wide v2

    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 308
    .local v0, "toSkip":J
    iget-object v2, p0, Lokio/s;->a:Lokio/c;

    invoke-virtual {v2, v0, v1}, Lokio/c;->h(J)V

    .line 309
    sub-long/2addr p1, v0

    .line 303
    .end local v0    # "toSkip":J
    :cond_1
    cmp-long v2, p1, v6

    if-lez v2, :cond_2

    .line 304
    iget-object v2, p0, Lokio/s;->a:Lokio/c;

    iget-wide v2, v2, Lokio/c;->c:J

    cmp-long v2, v2, v6

    if-nez v2, :cond_0

    iget-object v2, p0, Lokio/s;->b:Lokio/x;

    iget-object v3, p0, Lokio/s;->a:Lokio/c;

    const-wide/16 v4, 0x2000

    invoke-interface {v2, v3, v4, v5}, Lokio/x;->read(Lokio/c;J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 305
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2

    .line 311
    :cond_2
    return-void
.end method

.method public i()B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lokio/s;->a(J)V

    .line 73
    iget-object v0, p0, Lokio/s;->a:Lokio/c;

    invoke-virtual {v0}, Lokio/c;->i()B

    move-result v0

    return v0
.end method

.method public j()S
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 236
    const-wide/16 v0, 0x2

    invoke-virtual {p0, v0, v1}, Lokio/s;->a(J)V

    .line 237
    iget-object v0, p0, Lokio/s;->a:Lokio/c;

    invoke-virtual {v0}, Lokio/c;->j()S

    move-result v0

    return v0
.end method

.method public k()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 246
    const-wide/16 v0, 0x4

    invoke-virtual {p0, v0, v1}, Lokio/s;->a(J)V

    .line 247
    iget-object v0, p0, Lokio/s;->a:Lokio/c;

    invoke-virtual {v0}, Lokio/c;->k()I

    move-result v0

    return v0
.end method

.method public l()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 256
    const-wide/16 v0, 0x8

    invoke-virtual {p0, v0, v1}, Lokio/s;->a(J)V

    .line 257
    iget-object v0, p0, Lokio/s;->a:Lokio/c;

    invoke-virtual {v0}, Lokio/c;->l()J

    move-result-wide v0

    return-wide v0
.end method

.method public m()S
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 241
    const-wide/16 v0, 0x2

    invoke-virtual {p0, v0, v1}, Lokio/s;->a(J)V

    .line 242
    iget-object v0, p0, Lokio/s;->a:Lokio/c;

    invoke-virtual {v0}, Lokio/c;->m()S

    move-result v0

    return v0
.end method

.method public n()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 251
    const-wide/16 v0, 0x4

    invoke-virtual {p0, v0, v1}, Lokio/s;->a(J)V

    .line 252
    iget-object v0, p0, Lokio/s;->a:Lokio/c;

    invoke-virtual {v0}, Lokio/c;->n()I

    move-result v0

    return v0
.end method

.method public o()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 261
    const-wide/16 v0, 0x8

    invoke-virtual {p0, v0, v1}, Lokio/s;->a(J)V

    .line 262
    iget-object v0, p0, Lokio/s;->a:Lokio/c;

    invoke-virtual {v0}, Lokio/c;->o()J

    move-result-wide v0

    return-wide v0
.end method

.method public p()J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 266
    const-wide/16 v2, 0x1

    invoke-virtual {p0, v2, v3}, Lokio/s;->a(J)V

    .line 268
    const/4 v1, 0x0

    .local v1, "pos":I
    :goto_0
    add-int/lit8 v2, v1, 0x1

    int-to-long v2, v2

    invoke-virtual {p0, v2, v3}, Lokio/s;->b(J)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 269
    iget-object v2, p0, Lokio/s;->a:Lokio/c;

    int-to-long v4, v1

    invoke-virtual {v2, v4, v5}, Lokio/c;->c(J)B

    move-result v0

    .line 270
    .local v0, "b":B
    const/16 v2, 0x30

    if-lt v0, v2, :cond_0

    const/16 v2, 0x39

    if-le v0, v2, :cond_2

    :cond_0
    if-nez v1, :cond_1

    const/16 v2, 0x2d

    if-eq v0, v2, :cond_2

    .line 272
    :cond_1
    if-nez v1, :cond_3

    .line 273
    new-instance v2, Ljava/lang/NumberFormatException;

    const-string v3, "Expected leading [0-9] or \'-\' character but was %#x"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 274
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v4, v5

    .line 273
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 268
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 280
    .end local v0    # "b":B
    :cond_3
    iget-object v2, p0, Lokio/s;->a:Lokio/c;

    invoke-virtual {v2}, Lokio/c;->p()J

    move-result-wide v2

    return-wide v2
.end method

.method public q()J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 284
    const-wide/16 v2, 0x1

    invoke-virtual {p0, v2, v3}, Lokio/s;->a(J)V

    .line 286
    const/4 v1, 0x0

    .local v1, "pos":I
    :goto_0
    add-int/lit8 v2, v1, 0x1

    int-to-long v2, v2

    invoke-virtual {p0, v2, v3}, Lokio/s;->b(J)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 287
    iget-object v2, p0, Lokio/s;->a:Lokio/c;

    int-to-long v4, v1

    invoke-virtual {v2, v4, v5}, Lokio/c;->c(J)B

    move-result v0

    .line 288
    .local v0, "b":B
    const/16 v2, 0x30

    if-lt v0, v2, :cond_0

    const/16 v2, 0x39

    if-le v0, v2, :cond_3

    :cond_0
    const/16 v2, 0x61

    if-lt v0, v2, :cond_1

    const/16 v2, 0x66

    if-le v0, v2, :cond_3

    :cond_1
    const/16 v2, 0x41

    if-lt v0, v2, :cond_2

    const/16 v2, 0x46

    if-le v0, v2, :cond_3

    .line 290
    :cond_2
    if-nez v1, :cond_4

    .line 291
    new-instance v2, Ljava/lang/NumberFormatException;

    const-string v3, "Expected leading [0-9a-fA-F] character but was %#x"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 292
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v4, v5

    .line 291
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 286
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 298
    .end local v0    # "b":B
    :cond_4
    iget-object v2, p0, Lokio/s;->a:Lokio/c;

    invoke-virtual {v2}, Lokio/c;->q()J

    move-result-wide v2

    return-wide v2
.end method

.method public r()Lokio/ByteString;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 77
    iget-object v0, p0, Lokio/s;->a:Lokio/c;

    iget-object v1, p0, Lokio/s;->b:Lokio/x;

    invoke-virtual {v0, v1}, Lokio/c;->a(Lokio/x;)J

    .line 78
    iget-object v0, p0, Lokio/s;->a:Lokio/c;

    invoke-virtual {v0}, Lokio/c;->r()Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public read(Lokio/c;J)J
    .locals 10
    .param p1, "sink"    # Lokio/c;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v8, 0x0

    const-wide/16 v4, -0x1

    .line 40
    if-nez p1, :cond_0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "sink == null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 41
    :cond_0
    cmp-long v6, p2, v8

    if-gez v6, :cond_1

    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "byteCount < 0: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 42
    :cond_1
    iget-boolean v6, p0, Lokio/s;->c:Z

    if-eqz v6, :cond_2

    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "closed"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 44
    :cond_2
    iget-object v6, p0, Lokio/s;->a:Lokio/c;

    iget-wide v6, v6, Lokio/c;->c:J

    cmp-long v6, v6, v8

    if-nez v6, :cond_3

    .line 45
    iget-object v6, p0, Lokio/s;->b:Lokio/x;

    iget-object v7, p0, Lokio/s;->a:Lokio/c;

    const-wide/16 v8, 0x2000

    invoke-interface {v6, v7, v8, v9}, Lokio/x;->read(Lokio/c;J)J

    move-result-wide v0

    .line 46
    .local v0, "read":J
    cmp-long v6, v0, v4

    if-nez v6, :cond_3

    .line 50
    .end local v0    # "read":J
    :goto_0
    return-wide v4

    .line 49
    :cond_3
    iget-object v4, p0, Lokio/s;->a:Lokio/c;

    iget-wide v4, v4, Lokio/c;->c:J

    invoke-static {p2, p3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 50
    .local v2, "toRead":J
    iget-object v4, p0, Lokio/s;->a:Lokio/c;

    invoke-virtual {v4, p1, v2, v3}, Lokio/c;->read(Lokio/c;J)J

    move-result-wide v4

    goto :goto_0
.end method

.method public s()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 177
    iget-object v0, p0, Lokio/s;->a:Lokio/c;

    iget-object v1, p0, Lokio/s;->b:Lokio/x;

    invoke-virtual {v0, v1}, Lokio/c;->a(Lokio/x;)J

    .line 178
    iget-object v0, p0, Lokio/s;->a:Lokio/c;

    invoke-virtual {v0}, Lokio/c;->s()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public t()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 200
    const/16 v2, 0xa

    invoke-virtual {p0, v2}, Lokio/s;->a(B)J

    move-result-wide v0

    .line 202
    .local v0, "newline":J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    .line 203
    iget-object v2, p0, Lokio/s;->a:Lokio/c;

    iget-wide v2, v2, Lokio/c;->c:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    iget-object v2, p0, Lokio/s;->a:Lokio/c;

    iget-wide v2, v2, Lokio/c;->c:J

    invoke-virtual {p0, v2, v3}, Lokio/s;->e(J)Ljava/lang/String;

    move-result-object v2

    .line 206
    :goto_0
    return-object v2

    .line 203
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 206
    :cond_1
    iget-object v2, p0, Lokio/s;->a:Lokio/c;

    invoke-virtual {v2, v0, v1}, Lokio/c;->f(J)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public timeout()Lokio/y;
    .locals 1

    .prologue
    .line 439
    iget-object v0, p0, Lokio/s;->b:Lokio/x;

    invoke-interface {v0}, Lokio/x;->timeout()Lokio/y;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 443
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "buffer("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lokio/s;->b:Lokio/x;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 210
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lokio/s;->a(B)J

    move-result-wide v6

    .line 211
    .local v6, "newline":J
    const-wide/16 v2, -0x1

    cmp-long v0, v6, v2

    if-nez v0, :cond_0

    .line 212
    new-instance v1, Lokio/c;

    invoke-direct {v1}, Lokio/c;-><init>()V

    .line 213
    .local v1, "data":Lokio/c;
    iget-object v0, p0, Lokio/s;->a:Lokio/c;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x20

    iget-object v8, p0, Lokio/s;->a:Lokio/c;

    invoke-virtual {v8}, Lokio/c;->a()J

    move-result-wide v8

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lokio/c;->a(Lokio/c;JJ)Lokio/c;

    .line 214
    new-instance v0, Ljava/io/EOFException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\\n not found: size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lokio/s;->a:Lokio/c;

    invoke-virtual {v3}, Lokio/c;->a()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " content="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 215
    invoke-virtual {v1}, Lokio/c;->r()Lokio/ByteString;

    move-result-object v3

    invoke-virtual {v3}, Lokio/ByteString;->hex()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u2026"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 217
    .end local v1    # "data":Lokio/c;
    :cond_0
    iget-object v0, p0, Lokio/s;->a:Lokio/c;

    invoke-virtual {v0, v6, v7}, Lokio/c;->f(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public v()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 221
    const-wide/16 v2, 0x1

    invoke-virtual {p0, v2, v3}, Lokio/s;->a(J)V

    .line 223
    iget-object v1, p0, Lokio/s;->a:Lokio/c;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lokio/c;->c(J)B

    move-result v0

    .line 224
    .local v0, "b0":B
    and-int/lit16 v1, v0, 0xe0

    const/16 v2, 0xc0

    if-ne v1, v2, :cond_1

    .line 225
    const-wide/16 v2, 0x2

    invoke-virtual {p0, v2, v3}, Lokio/s;->a(J)V

    .line 232
    :cond_0
    :goto_0
    iget-object v1, p0, Lokio/s;->a:Lokio/c;

    invoke-virtual {v1}, Lokio/c;->v()I

    move-result v1

    return v1

    .line 226
    :cond_1
    and-int/lit16 v1, v0, 0xf0

    const/16 v2, 0xe0

    if-ne v1, v2, :cond_2

    .line 227
    const-wide/16 v2, 0x3

    invoke-virtual {p0, v2, v3}, Lokio/s;->a(J)V

    goto :goto_0

    .line 228
    :cond_2
    and-int/lit16 v1, v0, 0xf8

    const/16 v2, 0xf0

    if-ne v1, v2, :cond_0

    .line 229
    const-wide/16 v2, 0x4

    invoke-virtual {p0, v2, v3}, Lokio/s;->a(J)V

    goto :goto_0
.end method

.method public w()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 106
    iget-object v0, p0, Lokio/s;->a:Lokio/c;

    iget-object v1, p0, Lokio/s;->b:Lokio/x;

    invoke-virtual {v0, v1}, Lokio/c;->a(Lokio/x;)J

    .line 107
    iget-object v0, p0, Lokio/s;->a:Lokio/c;

    invoke-virtual {v0}, Lokio/c;->w()[B

    move-result-object v0

    return-object v0
.end method
