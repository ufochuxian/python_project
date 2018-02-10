.class final Lokio/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokio/d;


# instance fields
.field public final a:Lokio/c;

.field public final b:Lokio/w;

.field c:Z


# direct methods
.method constructor <init>(Lokio/w;)V
    .locals 2
    .param p1, "sink"    # Lokio/w;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lokio/c;

    invoke-direct {v0}, Lokio/c;-><init>()V

    iput-object v0, p0, Lokio/r;->a:Lokio/c;

    .line 29
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "sink == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 30
    :cond_0
    iput-object p1, p0, Lokio/r;->b:Lokio/w;

    .line 31
    return-void
.end method


# virtual methods
.method public E()Lokio/d;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 169
    iget-boolean v2, p0, Lokio/r;->c:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "closed"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 170
    :cond_0
    iget-object v2, p0, Lokio/r;->a:Lokio/c;

    invoke-virtual {v2}, Lokio/c;->h()J

    move-result-wide v0

    .line 171
    .local v0, "byteCount":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lokio/r;->b:Lokio/w;

    iget-object v3, p0, Lokio/r;->a:Lokio/c;

    invoke-interface {v2, v3, v0, v1}, Lokio/w;->a(Lokio/c;J)V

    .line 172
    :cond_1
    return-object p0
.end method

.method public a(Lokio/x;)J
    .locals 8
    .param p1, "source"    # Lokio/x;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 95
    if-nez p1, :cond_0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "source == null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 96
    :cond_0
    const-wide/16 v2, 0x0

    .line 97
    .local v2, "totalBytesRead":J
    :goto_0
    iget-object v4, p0, Lokio/r;->a:Lokio/c;

    const-wide/16 v6, 0x2000

    invoke-interface {p1, v4, v6, v7}, Lokio/x;->read(Lokio/c;J)J

    move-result-wide v0

    .local v0, "readCount":J
    const-wide/16 v4, -0x1

    cmp-long v4, v0, v4

    if-eqz v4, :cond_1

    .line 98
    add-long/2addr v2, v0

    .line 99
    invoke-virtual {p0}, Lokio/r;->E()Lokio/d;

    goto :goto_0

    .line 101
    :cond_1
    return-wide v2
.end method

.method public a(Lokio/x;J)Lokio/d;
    .locals 4
    .param p1, "source"    # Lokio/x;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 105
    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-lez v2, :cond_1

    .line 106
    iget-object v2, p0, Lokio/r;->a:Lokio/c;

    invoke-interface {p1, v2, p2, p3}, Lokio/x;->read(Lokio/c;J)J

    move-result-wide v0

    .line 107
    .local v0, "read":J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2

    .line 108
    :cond_0
    sub-long/2addr p2, v0

    .line 109
    invoke-virtual {p0}, Lokio/r;->E()Lokio/d;

    goto :goto_0

    .line 111
    .end local v0    # "read":J
    :cond_1
    return-object p0
.end method

.method public a(Lokio/c;J)V
    .locals 2
    .param p1, "source"    # Lokio/c;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 39
    iget-boolean v0, p0, Lokio/r;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_0
    iget-object v0, p0, Lokio/r;->a:Lokio/c;

    invoke-virtual {v0, p1, p2, p3}, Lokio/c;->a(Lokio/c;J)V

    .line 41
    invoke-virtual {p0}, Lokio/r;->E()Lokio/d;

    .line 42
    return-void
.end method

.method public b()Lokio/c;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lokio/r;->a:Lokio/c;

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lokio/d;
    .locals 2
    .param p1, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 51
    iget-boolean v0, p0, Lokio/r;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_0
    iget-object v0, p0, Lokio/r;->a:Lokio/c;

    invoke-virtual {v0, p1}, Lokio/c;->a(Ljava/lang/String;)Lokio/c;

    .line 53
    invoke-virtual {p0}, Lokio/r;->E()Lokio/d;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;II)Lokio/d;
    .locals 2
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "beginIndex"    # I
    .param p3, "endIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 58
    iget-boolean v0, p0, Lokio/r;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_0
    iget-object v0, p0, Lokio/r;->a:Lokio/c;

    invoke-virtual {v0, p1, p2, p3}, Lokio/c;->a(Ljava/lang/String;II)Lokio/c;

    .line 60
    invoke-virtual {p0}, Lokio/r;->E()Lokio/d;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;IILjava/nio/charset/Charset;)Lokio/d;
    .locals 2
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "beginIndex"    # I
    .param p3, "endIndex"    # I
    .param p4, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 77
    iget-boolean v0, p0, Lokio/r;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_0
    iget-object v0, p0, Lokio/r;->a:Lokio/c;

    invoke-virtual {v0, p1, p2, p3, p4}, Lokio/c;->a(Ljava/lang/String;IILjava/nio/charset/Charset;)Lokio/c;

    .line 79
    invoke-virtual {p0}, Lokio/r;->E()Lokio/d;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;Ljava/nio/charset/Charset;)Lokio/d;
    .locals 2
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    iget-boolean v0, p0, Lokio/r;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_0
    iget-object v0, p0, Lokio/r;->a:Lokio/c;

    invoke-virtual {v0, p1, p2}, Lokio/c;->a(Ljava/lang/String;Ljava/nio/charset/Charset;)Lokio/c;

    .line 72
    invoke-virtual {p0}, Lokio/r;->E()Lokio/d;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 183
    new-instance v0, Lokio/r$1;

    invoke-direct {v0, p0}, Lokio/r$1;-><init>(Lokio/r;)V

    return-object v0
.end method

.method public c([BII)Lokio/d;
    .locals 2
    .param p1, "source"    # [B
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 89
    iget-boolean v0, p0, Lokio/r;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_0
    iget-object v0, p0, Lokio/r;->a:Lokio/c;

    invoke-virtual {v0, p1, p2, p3}, Lokio/c;->b([BII)Lokio/c;

    .line 91
    invoke-virtual {p0}, Lokio/r;->E()Lokio/d;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 222
    iget-boolean v2, p0, Lokio/r;->c:Z

    if-eqz v2, :cond_1

    .line 243
    :cond_0
    :goto_0
    return-void

    .line 226
    :cond_1
    const/4 v1, 0x0

    .line 228
    .local v1, "thrown":Ljava/lang/Throwable;
    :try_start_0
    iget-object v2, p0, Lokio/r;->a:Lokio/c;

    iget-wide v2, v2, Lokio/c;->c:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    .line 229
    iget-object v2, p0, Lokio/r;->b:Lokio/w;

    iget-object v3, p0, Lokio/r;->a:Lokio/c;

    iget-object v4, p0, Lokio/r;->a:Lokio/c;

    iget-wide v4, v4, Lokio/c;->c:J

    invoke-interface {v2, v3, v4, v5}, Lokio/w;->a(Lokio/c;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    :cond_2
    :goto_1
    :try_start_1
    iget-object v2, p0, Lokio/r;->b:Lokio/w;

    invoke-interface {v2}, Lokio/w;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 240
    :cond_3
    :goto_2
    const/4 v2, 0x1

    iput-boolean v2, p0, Lokio/r;->c:Z

    .line 242
    if-eqz v1, :cond_0

    invoke-static {v1}, Lokio/z;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 231
    :catch_0
    move-exception v0

    .line 232
    .local v0, "e":Ljava/lang/Throwable;
    move-object v1, v0

    goto :goto_1

    .line 237
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    .line 238
    .restart local v0    # "e":Ljava/lang/Throwable;
    if-nez v1, :cond_3

    move-object v1, v0

    goto :goto_2
.end method

.method public d(Lokio/ByteString;)Lokio/d;
    .locals 2
    .param p1, "byteString"    # Lokio/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 45
    iget-boolean v0, p0, Lokio/r;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_0
    iget-object v0, p0, Lokio/r;->a:Lokio/c;

    invoke-virtual {v0, p1}, Lokio/c;->a(Lokio/ByteString;)Lokio/c;

    .line 47
    invoke-virtual {p0}, Lokio/r;->E()Lokio/d;

    move-result-object v0

    return-object v0
.end method

.method public d([B)Lokio/d;
    .locals 2
    .param p1, "source"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 83
    iget-boolean v0, p0, Lokio/r;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_0
    iget-object v0, p0, Lokio/r;->a:Lokio/c;

    invoke-virtual {v0, p1}, Lokio/c;->c([B)Lokio/c;

    .line 85
    invoke-virtual {p0}, Lokio/r;->E()Lokio/d;

    move-result-object v0

    return-object v0
.end method

.method public e()Lokio/d;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 176
    iget-boolean v2, p0, Lokio/r;->c:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "closed"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 177
    :cond_0
    iget-object v2, p0, Lokio/r;->a:Lokio/c;

    invoke-virtual {v2}, Lokio/c;->a()J

    move-result-wide v0

    .line 178
    .local v0, "byteCount":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lokio/r;->b:Lokio/w;

    iget-object v3, p0, Lokio/r;->a:Lokio/c;

    invoke-interface {v2, v3, v0, v1}, Lokio/w;->a(Lokio/c;J)V

    .line 179
    :cond_1
    return-object p0
.end method

.method public flush()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 214
    iget-boolean v0, p0, Lokio/r;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 215
    :cond_0
    iget-object v0, p0, Lokio/r;->a:Lokio/c;

    iget-wide v0, v0, Lokio/c;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 216
    iget-object v0, p0, Lokio/r;->b:Lokio/w;

    iget-object v1, p0, Lokio/r;->a:Lokio/c;

    iget-object v2, p0, Lokio/r;->a:Lokio/c;

    iget-wide v2, v2, Lokio/c;->c:J

    invoke-interface {v0, v1, v2, v3}, Lokio/w;->a(Lokio/c;J)V

    .line 218
    :cond_1
    iget-object v0, p0, Lokio/r;->b:Lokio/w;

    invoke-interface {v0}, Lokio/w;->flush()V

    .line 219
    return-void
.end method

.method public i(I)Lokio/d;
    .locals 2
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 139
    iget-boolean v0, p0, Lokio/r;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :cond_0
    iget-object v0, p0, Lokio/r;->a:Lokio/c;

    invoke-virtual {v0, p1}, Lokio/c;->f(I)Lokio/c;

    .line 141
    invoke-virtual {p0}, Lokio/r;->E()Lokio/d;

    move-result-object v0

    return-object v0
.end method

.method public j(I)Lokio/d;
    .locals 2
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 133
    iget-boolean v0, p0, Lokio/r;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :cond_0
    iget-object v0, p0, Lokio/r;->a:Lokio/c;

    invoke-virtual {v0, p1}, Lokio/c;->e(I)Lokio/c;

    .line 135
    invoke-virtual {p0}, Lokio/r;->E()Lokio/d;

    move-result-object v0

    return-object v0
.end method

.method public k(I)Lokio/d;
    .locals 2
    .param p1, "s"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 127
    iget-boolean v0, p0, Lokio/r;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_0
    iget-object v0, p0, Lokio/r;->a:Lokio/c;

    invoke-virtual {v0, p1}, Lokio/c;->d(I)Lokio/c;

    .line 129
    invoke-virtual {p0}, Lokio/r;->E()Lokio/d;

    move-result-object v0

    return-object v0
.end method

.method public l(I)Lokio/d;
    .locals 2
    .param p1, "s"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 121
    iget-boolean v0, p0, Lokio/r;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_0
    iget-object v0, p0, Lokio/r;->a:Lokio/c;

    invoke-virtual {v0, p1}, Lokio/c;->c(I)Lokio/c;

    .line 123
    invoke-virtual {p0}, Lokio/r;->E()Lokio/d;

    move-result-object v0

    return-object v0
.end method

.method public m(I)Lokio/d;
    .locals 2
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 115
    iget-boolean v0, p0, Lokio/r;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_0
    iget-object v0, p0, Lokio/r;->a:Lokio/c;

    invoke-virtual {v0, p1}, Lokio/c;->b(I)Lokio/c;

    .line 117
    invoke-virtual {p0}, Lokio/r;->E()Lokio/d;

    move-result-object v0

    return-object v0
.end method

.method public m(J)Lokio/d;
    .locals 3
    .param p1, "v"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 163
    iget-boolean v0, p0, Lokio/r;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 164
    :cond_0
    iget-object v0, p0, Lokio/r;->a:Lokio/c;

    invoke-virtual {v0, p1, p2}, Lokio/c;->l(J)Lokio/c;

    .line 165
    invoke-virtual {p0}, Lokio/r;->E()Lokio/d;

    move-result-object v0

    return-object v0
.end method

.method public n(I)Lokio/d;
    .locals 2
    .param p1, "codePoint"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    iget-boolean v0, p0, Lokio/r;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_0
    iget-object v0, p0, Lokio/r;->a:Lokio/c;

    invoke-virtual {v0, p1}, Lokio/c;->a(I)Lokio/c;

    .line 66
    invoke-virtual {p0}, Lokio/r;->E()Lokio/d;

    move-result-object v0

    return-object v0
.end method

.method public n(J)Lokio/d;
    .locals 3
    .param p1, "v"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 157
    iget-boolean v0, p0, Lokio/r;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :cond_0
    iget-object v0, p0, Lokio/r;->a:Lokio/c;

    invoke-virtual {v0, p1, p2}, Lokio/c;->k(J)Lokio/c;

    .line 159
    invoke-virtual {p0}, Lokio/r;->E()Lokio/d;

    move-result-object v0

    return-object v0
.end method

.method public o(J)Lokio/d;
    .locals 3
    .param p1, "v"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 151
    iget-boolean v0, p0, Lokio/r;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :cond_0
    iget-object v0, p0, Lokio/r;->a:Lokio/c;

    invoke-virtual {v0, p1, p2}, Lokio/c;->j(J)Lokio/c;

    .line 153
    invoke-virtual {p0}, Lokio/r;->E()Lokio/d;

    move-result-object v0

    return-object v0
.end method

.method public p(J)Lokio/d;
    .locals 3
    .param p1, "v"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 145
    iget-boolean v0, p0, Lokio/r;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 146
    :cond_0
    iget-object v0, p0, Lokio/r;->a:Lokio/c;

    invoke-virtual {v0, p1, p2}, Lokio/c;->i(J)Lokio/c;

    .line 147
    invoke-virtual {p0}, Lokio/r;->E()Lokio/d;

    move-result-object v0

    return-object v0
.end method

.method public timeout()Lokio/y;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lokio/r;->b:Lokio/w;

    invoke-interface {v0}, Lokio/w;->timeout()Lokio/y;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "buffer("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lokio/r;->b:Lokio/w;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
