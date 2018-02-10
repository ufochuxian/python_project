.class public abstract Lcom/squareup/okhttp/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private a:Ljava/io/Reader;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/squareup/okhttp/r;JLokio/e;)Lcom/squareup/okhttp/y;
    .locals 3
    .param p0, "contentType"    # Lcom/squareup/okhttp/r;
    .param p1, "contentLength"    # J
    .param p3, "content"    # Lokio/e;

    .prologue
    .line 121
    if-nez p3, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_0
    new-instance v0, Lcom/squareup/okhttp/y$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/squareup/okhttp/y$1;-><init>(Lcom/squareup/okhttp/r;JLokio/e;)V

    return-object v0
.end method

.method public static a(Lcom/squareup/okhttp/r;Ljava/lang/String;)Lcom/squareup/okhttp/y;
    .locals 4
    .param p0, "contentType"    # Lcom/squareup/okhttp/r;
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 100
    sget-object v1, Lcom/squareup/okhttp/internal/j;->c:Ljava/nio/charset/Charset;

    .line 101
    .local v1, "charset":Ljava/nio/charset/Charset;
    if-eqz p0, :cond_0

    .line 102
    invoke-virtual {p0}, Lcom/squareup/okhttp/r;->c()Ljava/nio/charset/Charset;

    move-result-object v1

    .line 103
    if-nez v1, :cond_0

    .line 104
    sget-object v1, Lcom/squareup/okhttp/internal/j;->c:Ljava/nio/charset/Charset;

    .line 105
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; charset=utf-8"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/squareup/okhttp/r;->a(Ljava/lang/String;)Lcom/squareup/okhttp/r;

    move-result-object p0

    .line 108
    :cond_0
    new-instance v2, Lokio/c;

    invoke-direct {v2}, Lokio/c;-><init>()V

    invoke-virtual {v2, p1, v1}, Lokio/c;->a(Ljava/lang/String;Ljava/nio/charset/Charset;)Lokio/c;

    move-result-object v0

    .line 109
    .local v0, "buffer":Lokio/c;
    invoke-virtual {v0}, Lokio/c;->a()J

    move-result-wide v2

    invoke-static {p0, v2, v3, v0}, Lcom/squareup/okhttp/y;->a(Lcom/squareup/okhttp/r;JLokio/e;)Lcom/squareup/okhttp/y;

    move-result-object v2

    return-object v2
.end method

.method public static a(Lcom/squareup/okhttp/r;[B)Lcom/squareup/okhttp/y;
    .locals 4
    .param p0, "contentType"    # Lcom/squareup/okhttp/r;
    .param p1, "content"    # [B

    .prologue
    .line 114
    new-instance v1, Lokio/c;

    invoke-direct {v1}, Lokio/c;-><init>()V

    invoke-virtual {v1, p1}, Lokio/c;->c([B)Lokio/c;

    move-result-object v0

    .line 115
    .local v0, "buffer":Lokio/c;
    array-length v1, p1

    int-to-long v2, v1

    invoke-static {p0, v2, v3, v0}, Lcom/squareup/okhttp/y;->a(Lcom/squareup/okhttp/r;JLokio/e;)Lcom/squareup/okhttp/y;

    move-result-object v1

    return-object v1
.end method

.method private h()Ljava/nio/charset/Charset;
    .locals 2

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/squareup/okhttp/y;->a()Lcom/squareup/okhttp/r;

    move-result-object v0

    .line 88
    .local v0, "contentType":Lcom/squareup/okhttp/r;
    if-eqz v0, :cond_0

    sget-object v1, Lcom/squareup/okhttp/internal/j;->c:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/r;->a(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/squareup/okhttp/internal/j;->c:Ljava/nio/charset/Charset;

    goto :goto_0
.end method


# virtual methods
.method public abstract a()Lcom/squareup/okhttp/r;
.end method

.method public abstract b()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract c()Lokio/e;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/squareup/okhttp/y;->c()Lokio/e;

    move-result-object v0

    invoke-interface {v0}, Lokio/e;->close()V

    .line 93
    return-void
.end method

.method public final d()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/squareup/okhttp/y;->c()Lokio/e;

    move-result-object v0

    invoke-interface {v0}, Lokio/e;->g()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public final e()[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/squareup/okhttp/y;->b()J

    move-result-wide v2

    .line 50
    .local v2, "contentLength":J
    const-wide/32 v4, 0x7fffffff

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    .line 51
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot buffer entire body for content length: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 54
    :cond_0
    invoke-virtual {p0}, Lcom/squareup/okhttp/y;->c()Lokio/e;

    move-result-object v1

    .line 57
    .local v1, "source":Lokio/e;
    :try_start_0
    invoke-interface {v1}, Lokio/e;->w()[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 59
    .local v0, "bytes":[B
    invoke-static {v1}, Lcom/squareup/okhttp/internal/j;->a(Ljava/io/Closeable;)V

    .line 61
    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-eqz v4, :cond_1

    array-length v4, v0

    int-to-long v4, v4

    cmp-long v4, v2, v4

    if-eqz v4, :cond_1

    .line 62
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Content-Length and stream length disagree"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 59
    .end local v0    # "bytes":[B
    :catchall_0
    move-exception v4

    invoke-static {v1}, Lcom/squareup/okhttp/internal/j;->a(Ljava/io/Closeable;)V

    throw v4

    .line 64
    .restart local v0    # "bytes":[B
    :cond_1
    return-object v0
.end method

.method public final f()Ljava/io/Reader;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Lcom/squareup/okhttp/y;->a:Ljava/io/Reader;

    .line 74
    .local v0, "r":Ljava/io/Reader;
    if-eqz v0, :cond_0

    .end local v0    # "r":Ljava/io/Reader;
    :goto_0
    return-object v0

    .restart local v0    # "r":Ljava/io/Reader;
    :cond_0
    new-instance v0, Ljava/io/InputStreamReader;

    .end local v0    # "r":Ljava/io/Reader;
    invoke-virtual {p0}, Lcom/squareup/okhttp/y;->d()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {p0}, Lcom/squareup/okhttp/y;->h()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    iput-object v0, p0, Lcom/squareup/okhttp/y;->a:Ljava/io/Reader;

    goto :goto_0
.end method

.method public final g()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 83
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/squareup/okhttp/y;->e()[B

    move-result-object v1

    invoke-direct {p0}, Lcom/squareup/okhttp/y;->h()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method
