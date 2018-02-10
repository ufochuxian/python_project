.class public Lar/com/hjg/pngj/ac;
.super Ljava/io/FilterInputStream;
.source "SourceFile"


# instance fields
.field private a:Lar/com/hjg/pngj/d;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "arg0"    # Ljava/io/InputStream;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 31
    invoke-virtual {p0}, Lar/com/hjg/pngj/ac;->a()Lar/com/hjg/pngj/d;

    move-result-object v0

    iput-object v0, p0, Lar/com/hjg/pngj/ac;->a:Lar/com/hjg/pngj/d;

    .line 32
    return-void
.end method


# virtual methods
.method protected a()Lar/com/hjg/pngj/d;
    .locals 2

    .prologue
    .line 35
    new-instance v0, Lar/com/hjg/pngj/ac$1;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lar/com/hjg/pngj/ac$1;-><init>(Lar/com/hjg/pngj/ac;Z)V

    return-object v0
.end method

.method public b()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 85
    new-instance v0, Lar/com/hjg/pngj/a;

    iget-object v1, p0, Lar/com/hjg/pngj/ac;->in:Ljava/io/InputStream;

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/a;-><init>(Ljava/io/InputStream;)V

    .line 86
    .local v0, "br":Lar/com/hjg/pngj/a;
    :goto_0
    iget-object v1, p0, Lar/com/hjg/pngj/ac;->a:Lar/com/hjg/pngj/d;

    invoke-virtual {v1}, Lar/com/hjg/pngj/d;->b()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lar/com/hjg/pngj/a;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    iget-object v1, p0, Lar/com/hjg/pngj/ac;->a:Lar/com/hjg/pngj/d;

    invoke-virtual {v0, v1}, Lar/com/hjg/pngj/a;->a(Lar/com/hjg/pngj/i;)I

    goto :goto_0

    .line 88
    :cond_0
    invoke-virtual {p0}, Lar/com/hjg/pngj/ac;->close()V

    .line 89
    return-void
.end method

.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lar/com/hjg/pngj/chunks/PngChunk;",
            ">;"
        }
    .end annotation

    .prologue
    .line 92
    iget-object v0, p0, Lar/com/hjg/pngj/ac;->a:Lar/com/hjg/pngj/d;

    invoke-virtual {v0}, Lar/com/hjg/pngj/d;->t()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    invoke-super {p0}, Ljava/io/FilterInputStream;->close()V

    .line 57
    iget-object v0, p0, Lar/com/hjg/pngj/ac;->a:Lar/com/hjg/pngj/d;

    invoke-virtual {v0}, Lar/com/hjg/pngj/d;->g()V

    .line 58
    return-void
.end method

.method public d()Lar/com/hjg/pngj/d;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lar/com/hjg/pngj/ac;->a:Lar/com/hjg/pngj/d;

    return-object v0
.end method

.method public read()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 62
    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v0

    .line 63
    .local v0, "r":I
    if-lez v0, :cond_0

    .line 64
    iget-object v1, p0, Lar/com/hjg/pngj/ac;->a:Lar/com/hjg/pngj/d;

    new-array v2, v5, [B

    int-to-byte v3, v0

    aput-byte v3, v2, v4

    invoke-virtual {v1, v2, v4, v5}, Lar/com/hjg/pngj/d;->b([BII)Z

    .line 65
    :cond_0
    return v0
.end method

.method public read([B)I
    .locals 3
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 78
    invoke-super {p0, p1}, Ljava/io/FilterInputStream;->read([B)I

    move-result v0

    .line 79
    .local v0, "res":I
    if-lez v0, :cond_0

    .line 80
    iget-object v1, p0, Lar/com/hjg/pngj/ac;->a:Lar/com/hjg/pngj/d;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v0}, Lar/com/hjg/pngj/d;->b([BII)Z

    .line 81
    :cond_0
    return v0
.end method

.method public read([BII)I
    .locals 2
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result v0

    .line 71
    .local v0, "res":I
    if-lez v0, :cond_0

    .line 72
    iget-object v1, p0, Lar/com/hjg/pngj/ac;->a:Lar/com/hjg/pngj/d;

    invoke-virtual {v1, p1, p2, v0}, Lar/com/hjg/pngj/d;->b([BII)Z

    .line 73
    :cond_0
    return v0
.end method
