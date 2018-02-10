.class public abstract Lcom/squareup/okhttp/w;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/squareup/okhttp/r;Ljava/io/File;)Lcom/squareup/okhttp/w;
    .locals 2
    .param p0, "contentType"    # Lcom/squareup/okhttp/r;
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 85
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "content == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_0
    new-instance v0, Lcom/squareup/okhttp/w$2;

    invoke-direct {v0, p0, p1}, Lcom/squareup/okhttp/w$2;-><init>(Lcom/squareup/okhttp/r;Ljava/io/File;)V

    return-object v0
.end method

.method public static a(Lcom/squareup/okhttp/r;Ljava/lang/String;)Lcom/squareup/okhttp/w;
    .locals 4
    .param p0, "contentType"    # Lcom/squareup/okhttp/r;
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 46
    sget-object v1, Lcom/squareup/okhttp/internal/j;->c:Ljava/nio/charset/Charset;

    .line 47
    .local v1, "charset":Ljava/nio/charset/Charset;
    if-eqz p0, :cond_0

    .line 48
    invoke-virtual {p0}, Lcom/squareup/okhttp/r;->c()Ljava/nio/charset/Charset;

    move-result-object v1

    .line 49
    if-nez v1, :cond_0

    .line 50
    sget-object v1, Lcom/squareup/okhttp/internal/j;->c:Ljava/nio/charset/Charset;

    .line 51
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

    .line 54
    :cond_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 55
    .local v0, "bytes":[B
    invoke-static {p0, v0}, Lcom/squareup/okhttp/w;->a(Lcom/squareup/okhttp/r;[B)Lcom/squareup/okhttp/w;

    move-result-object v2

    return-object v2
.end method

.method public static a(Lcom/squareup/okhttp/r;[B)Lcom/squareup/okhttp/w;
    .locals 2
    .param p0, "contentType"    # Lcom/squareup/okhttp/r;
    .param p1, "content"    # [B

    .prologue
    .line 60
    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p0, p1, v0, v1}, Lcom/squareup/okhttp/w;->a(Lcom/squareup/okhttp/r;[BII)Lcom/squareup/okhttp/w;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/squareup/okhttp/r;[BII)Lcom/squareup/okhttp/w;
    .locals 6
    .param p0, "contentType"    # Lcom/squareup/okhttp/r;
    .param p1, "content"    # [B
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I

    .prologue
    .line 66
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "content == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_0
    array-length v0, p1

    int-to-long v0, v0

    int-to-long v2, p2

    int-to-long v4, p3

    invoke-static/range {v0 .. v5}, Lcom/squareup/okhttp/internal/j;->a(JJJ)V

    .line 68
    new-instance v0, Lcom/squareup/okhttp/w$1;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/squareup/okhttp/w$1;-><init>(Lcom/squareup/okhttp/r;I[BI)V

    return-object v0
.end method


# virtual methods
.method public abstract a()Lcom/squareup/okhttp/r;
.end method

.method public abstract a(Lokio/d;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public b()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35
    const-wide/16 v0, -0x1

    return-wide v0
.end method
