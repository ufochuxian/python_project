.class public Lcom/mob/tools/a/a;
.super Ljava/io/ByteArrayOutputStream;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 11
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 14
    invoke-direct {p0, p1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 15
    return-void
.end method


# virtual methods
.method public a(Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 37
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/mob/tools/a/a;->a(Ljava/nio/ByteBuffer;I)V

    .line 38
    return-void
.end method

.method public a(Ljava/nio/ByteBuffer;I)V
    .locals 3
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 41
    iget-object v1, p0, Lcom/mob/tools/a/a;->buf:[B

    array-length v1, v1

    iget v2, p0, Lcom/mob/tools/a/a;->count:I

    sub-int/2addr v1, v2

    if-lt v1, p2, :cond_0

    .line 42
    iget-object v1, p0, Lcom/mob/tools/a/a;->buf:[B

    iget v2, p0, Lcom/mob/tools/a/a;->count:I

    invoke-virtual {p1, v1, v2, p2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 43
    iget v1, p0, Lcom/mob/tools/a/a;->count:I

    add-int/2addr v1, p2

    iput v1, p0, Lcom/mob/tools/a/a;->count:I

    .line 49
    :goto_0
    return-void

    .line 45
    :cond_0
    new-array v0, p2, [B

    .line 46
    .local v0, "outData":[B
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 47
    invoke-virtual {p0, v0}, Lcom/mob/tools/a/a;->write([B)V

    goto :goto_0
.end method

.method public a([B)Z
    .locals 3
    .param p1, "newBuf"    # [B

    .prologue
    .line 18
    if-eqz p1, :cond_0

    array-length v1, p1

    iget-object v2, p0, Lcom/mob/tools/a/a;->buf:[B

    array-length v2, v2

    if-eq v1, v2, :cond_1

    .line 19
    :cond_0
    const/4 v1, 0x0

    .line 25
    :goto_0
    return v1

    .line 22
    :cond_1
    iget-object v0, p0, Lcom/mob/tools/a/a;->buf:[B

    .line 23
    .local v0, "o":[B
    iput-object p1, p0, Lcom/mob/tools/a/a;->buf:[B

    .line 24
    check-cast v0, [B

    .end local v0    # "o":[B
    move-object p1, v0

    check-cast p1, [B

    .line 25
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public a()[B
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/mob/tools/a/a;->buf:[B

    return-object v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/mob/tools/a/a;->buf:[B

    array-length v0, v0

    return v0
.end method
