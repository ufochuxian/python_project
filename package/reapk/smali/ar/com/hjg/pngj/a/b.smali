.class public Lar/com/hjg/pngj/a/b;
.super Lar/com/hjg/pngj/a/a;
.source "SourceFile"


# instance fields
.field protected j:Ljava/util/zip/Deflater;

.field protected k:[B

.field protected l:Z


# direct methods
.method public constructor <init>(Lar/com/hjg/pngj/k;IJ)V
    .locals 7
    .param p1, "idatCw"    # Lar/com/hjg/pngj/k;
    .param p2, "maxBlockLen"    # I
    .param p3, "totalLen"    # J

    .prologue
    .line 30
    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v1 .. v6}, Lar/com/hjg/pngj/a/b;-><init>(Lar/com/hjg/pngj/k;IJLjava/util/zip/Deflater;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Lar/com/hjg/pngj/k;IJII)V
    .locals 7
    .param p1, "idatCw"    # Lar/com/hjg/pngj/k;
    .param p2, "maxBlockLen"    # I
    .param p3, "totalLen"    # J
    .param p5, "deflaterCompLevel"    # I
    .param p6, "deflaterStrategy"    # I

    .prologue
    .line 35
    new-instance v6, Ljava/util/zip/Deflater;

    invoke-direct {v6, p5}, Ljava/util/zip/Deflater;-><init>(I)V

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v1 .. v6}, Lar/com/hjg/pngj/a/b;-><init>(Lar/com/hjg/pngj/k;IJLjava/util/zip/Deflater;)V

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lar/com/hjg/pngj/a/b;->l:Z

    .line 37
    iget-object v0, p0, Lar/com/hjg/pngj/a/b;->j:Ljava/util/zip/Deflater;

    invoke-virtual {v0, p6}, Ljava/util/zip/Deflater;->setStrategy(I)V

    .line 38
    return-void
.end method

.method public constructor <init>(Lar/com/hjg/pngj/k;IJLjava/util/zip/Deflater;)V
    .locals 3
    .param p1, "idatCw"    # Lar/com/hjg/pngj/k;
    .param p2, "maxBlockLen"    # I
    .param p3, "totalLen"    # J
    .param p5, "def"    # Ljava/util/zip/Deflater;

    .prologue
    const/4 v1, 0x1

    .line 24
    invoke-direct {p0, p1, p2, p3, p4}, Lar/com/hjg/pngj/a/a;-><init>(Lar/com/hjg/pngj/k;IJ)V

    .line 19
    iput-boolean v1, p0, Lar/com/hjg/pngj/a/b;->l:Z

    .line 25
    if-nez p5, :cond_0

    new-instance v0, Ljava/util/zip/Deflater;

    invoke-direct {v0}, Ljava/util/zip/Deflater;-><init>()V

    :goto_0
    iput-object v0, p0, Lar/com/hjg/pngj/a/b;->j:Ljava/util/zip/Deflater;

    .line 26
    if-nez p5, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lar/com/hjg/pngj/a/b;->l:Z

    .line 27
    return-void

    :cond_0
    move-object v0, p5

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 75
    iget-boolean v0, p0, Lar/com/hjg/pngj/a/b;->e:Z

    if-eqz v0, :cond_1

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    iget-object v0, p0, Lar/com/hjg/pngj/a/b;->j:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finished()Z

    move-result v0

    if-nez v0, :cond_2

    .line 78
    iget-object v0, p0, Lar/com/hjg/pngj/a/b;->j:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finish()V

    .line 79
    :goto_1
    iget-object v0, p0, Lar/com/hjg/pngj/a/b;->j:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finished()Z

    move-result v0

    if-nez v0, :cond_2

    .line 80
    invoke-virtual {p0}, Lar/com/hjg/pngj/a/b;->i()V

    goto :goto_1

    .line 82
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lar/com/hjg/pngj/a/b;->e:Z

    .line 83
    iget-object v0, p0, Lar/com/hjg/pngj/a/b;->a:Lar/com/hjg/pngj/k;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lar/com/hjg/pngj/a/b;->a:Lar/com/hjg/pngj/k;

    invoke-virtual {v0}, Lar/com/hjg/pngj/k;->g()V

    goto :goto_0
.end method

.method public a([BII)V
    .locals 4
    .param p1, "data"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 42
    iget-object v0, p0, Lar/com/hjg/pngj/a/b;->j:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finished()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lar/com/hjg/pngj/a/b;->e:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lar/com/hjg/pngj/a/b;->d:Z

    if-eqz v0, :cond_1

    .line 43
    :cond_0
    new-instance v0, Lar/com/hjg/pngj/PngjOutputException;

    const-string v1, "write beyond end of stream"

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjOutputException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_1
    iget-object v0, p0, Lar/com/hjg/pngj/a/b;->j:Ljava/util/zip/Deflater;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/Deflater;->setInput([BII)V

    .line 45
    iget-wide v0, p0, Lar/com/hjg/pngj/a/b;->f:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lar/com/hjg/pngj/a/b;->f:J

    .line 46
    :goto_0
    iget-object v0, p0, Lar/com/hjg/pngj/a/b;->j:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->needsInput()Z

    move-result v0

    if-nez v0, :cond_2

    .line 47
    invoke-virtual {p0}, Lar/com/hjg/pngj/a/b;->i()V

    goto :goto_0

    .line 48
    :cond_2
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 88
    invoke-virtual {p0}, Lar/com/hjg/pngj/a/b;->a()V

    .line 90
    :try_start_0
    iget-boolean v0, p0, Lar/com/hjg/pngj/a/b;->l:Z

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lar/com/hjg/pngj/a/b;->j:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->end()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :cond_0
    :goto_0
    invoke-super {p0}, Lar/com/hjg/pngj/a/a;->close()V

    .line 96
    return-void

    .line 93
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public h()V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lar/com/hjg/pngj/a/b;->j:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->reset()V

    .line 101
    invoke-super {p0}, Lar/com/hjg/pngj/a/a;->h()V

    .line 102
    return-void
.end method

.method protected i()V
    .locals 8

    .prologue
    .line 53
    iget-object v4, p0, Lar/com/hjg/pngj/a/b;->a:Lar/com/hjg/pngj/k;

    if-eqz v4, :cond_2

    .line 54
    iget-object v4, p0, Lar/com/hjg/pngj/a/b;->a:Lar/com/hjg/pngj/k;

    invoke-virtual {v4}, Lar/com/hjg/pngj/k;->h()[B

    move-result-object v0

    .line 55
    .local v0, "buf":[B
    iget-object v4, p0, Lar/com/hjg/pngj/a/b;->a:Lar/com/hjg/pngj/k;

    invoke-virtual {v4}, Lar/com/hjg/pngj/k;->c()I

    move-result v3

    .line 56
    .local v3, "off":I
    iget-object v4, p0, Lar/com/hjg/pngj/a/b;->a:Lar/com/hjg/pngj/k;

    invoke-virtual {v4}, Lar/com/hjg/pngj/k;->d()I

    move-result v2

    .line 64
    .local v2, "n":I
    :goto_0
    iget-object v4, p0, Lar/com/hjg/pngj/a/b;->j:Ljava/util/zip/Deflater;

    invoke-virtual {v4, v0, v3, v2}, Ljava/util/zip/Deflater;->deflate([BII)I

    move-result v1

    .line 65
    .local v1, "len":I
    if-lez v1, :cond_1

    .line 66
    iget-object v4, p0, Lar/com/hjg/pngj/a/b;->a:Lar/com/hjg/pngj/k;

    if-eqz v4, :cond_0

    .line 67
    iget-object v4, p0, Lar/com/hjg/pngj/a/b;->a:Lar/com/hjg/pngj/k;

    invoke-virtual {v4, v1}, Lar/com/hjg/pngj/k;->a(I)V

    .line 68
    :cond_0
    iget-wide v4, p0, Lar/com/hjg/pngj/a/b;->g:J

    int-to-long v6, v1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lar/com/hjg/pngj/a/b;->g:J

    .line 70
    :cond_1
    return-void

    .line 58
    .end local v0    # "buf":[B
    .end local v1    # "len":I
    .end local v2    # "n":I
    .end local v3    # "off":I
    :cond_2
    iget-object v4, p0, Lar/com/hjg/pngj/a/b;->k:[B

    if-nez v4, :cond_3

    .line 59
    const/16 v4, 0x1000

    new-array v4, v4, [B

    iput-object v4, p0, Lar/com/hjg/pngj/a/b;->k:[B

    .line 60
    :cond_3
    iget-object v0, p0, Lar/com/hjg/pngj/a/b;->k:[B

    .line 61
    .restart local v0    # "buf":[B
    const/4 v3, 0x0

    .line 62
    .restart local v3    # "off":I
    iget-object v4, p0, Lar/com/hjg/pngj/a/b;->k:[B

    array-length v2, v4

    .restart local v2    # "n":I
    goto :goto_0
.end method
