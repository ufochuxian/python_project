.class public Lar/com/hjg/pngj/aa;
.super Lar/com/hjg/pngj/ab;
.source "SourceFile"


# instance fields
.field protected m:Lar/com/hjg/pngj/chunks/h;

.field protected n:I

.field private o:Ljava/lang/Boolean;

.field private p:Z

.field private q:Lar/com/hjg/pngj/chunks/k;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lar/com/hjg/pngj/ab;-><init>(Ljava/io/File;)V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lar/com/hjg/pngj/aa;->o:Ljava/lang/Boolean;

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lar/com/hjg/pngj/aa;->p:Z

    .line 36
    const/4 v0, -0x1

    iput v0, p0, Lar/com/hjg/pngj/aa;->n:I

    .line 19
    const-string v0, "fcTL"

    invoke-virtual {p0, v0}, Lar/com/hjg/pngj/aa;->b(Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "inputStream"    # Ljava/io/InputStream;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lar/com/hjg/pngj/ab;-><init>(Ljava/io/InputStream;)V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lar/com/hjg/pngj/aa;->o:Ljava/lang/Boolean;

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lar/com/hjg/pngj/aa;->p:Z

    .line 36
    const/4 v0, -0x1

    iput v0, p0, Lar/com/hjg/pngj/aa;->n:I

    .line 24
    const-string v0, "fcTL"

    invoke-virtual {p0, v0}, Lar/com/hjg/pngj/aa;->b(Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method static synthetic a(Lar/com/hjg/pngj/aa;)Lar/com/hjg/pngj/chunks/k;
    .locals 1
    .param p0, "x0"    # Lar/com/hjg/pngj/aa;

    .prologue
    .line 15
    iget-object v0, p0, Lar/com/hjg/pngj/aa;->q:Lar/com/hjg/pngj/chunks/k;

    return-object v0
.end method

.method static synthetic a(Lar/com/hjg/pngj/aa;Lar/com/hjg/pngj/chunks/k;)Lar/com/hjg/pngj/chunks/k;
    .locals 0
    .param p0, "x0"    # Lar/com/hjg/pngj/aa;
    .param p1, "x1"    # Lar/com/hjg/pngj/chunks/k;

    .prologue
    .line 15
    iput-object p1, p0, Lar/com/hjg/pngj/aa;->q:Lar/com/hjg/pngj/chunks/k;

    return-object p1
.end method


# virtual methods
.method public a(I)Lar/com/hjg/pngj/l;
    .locals 1
    .param p1, "nrow"    # I

    .prologue
    .line 119
    invoke-super {p0, p1}, Lar/com/hjg/pngj/ab;->a(I)Lar/com/hjg/pngj/l;

    move-result-object v0

    return-object v0
.end method

.method public a(III)Lar/com/hjg/pngj/o;
    .locals 1
    .param p1, "nRows"    # I
    .param p2, "rowOffset"    # I
    .param p3, "rowStep"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Lar/com/hjg/pngj/o",
            "<+",
            "Lar/com/hjg/pngj/l;",
            ">;"
        }
    .end annotation

    .prologue
    .line 131
    invoke-super {p0, p1, p2, p3}, Lar/com/hjg/pngj/ab;->a(III)Lar/com/hjg/pngj/o;

    move-result-object v0

    return-object v0
.end method

.method public b(I)V
    .locals 4
    .param p1, "frame"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 51
    iget v0, p0, Lar/com/hjg/pngj/aa;->n:I

    if-ge p1, v0, :cond_0

    .line 52
    new-instance v0, Lar/com/hjg/pngj/PngjInputException;

    const-string v1, "Cannot go backwards"

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjInputException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_0
    invoke-virtual {p0}, Lar/com/hjg/pngj/aa;->w()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 54
    new-instance v0, Lar/com/hjg/pngj/PngjInputException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Frame out of range "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjInputException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_1
    iget v0, p0, Lar/com/hjg/pngj/aa;->n:I

    if-le p1, v0, :cond_3

    .line 56
    const-string v0, "IDAT"

    invoke-virtual {p0, v0}, Lar/com/hjg/pngj/aa;->a(Ljava/lang/String;)V

    .line 57
    const-string v0, "fdAT"

    invoke-virtual {p0, v0}, Lar/com/hjg/pngj/aa;->a(Ljava/lang/String;)V

    .line 58
    :cond_2
    iget v0, p0, Lar/com/hjg/pngj/aa;->n:I

    if-ge v0, p1, :cond_6

    move v0, v1

    :goto_0
    iget-object v3, p0, Lar/com/hjg/pngj/aa;->f:Lar/com/hjg/pngj/d;

    invoke-virtual {v3}, Lar/com/hjg/pngj/d;->b()Z

    move-result v3

    if-nez v3, :cond_7

    move v3, v1

    :goto_1
    and-int/2addr v0, v3

    if-eqz v0, :cond_3

    .line 59
    iget-object v0, p0, Lar/com/hjg/pngj/aa;->g:Lar/com/hjg/pngj/a;

    iget-object v3, p0, Lar/com/hjg/pngj/aa;->f:Lar/com/hjg/pngj/d;

    invoke-virtual {v0, v3}, Lar/com/hjg/pngj/a;->a(Lar/com/hjg/pngj/i;)I

    move-result v0

    if-gtz v0, :cond_2

    .line 62
    :cond_3
    iget v0, p0, Lar/com/hjg/pngj/aa;->n:I

    if-ne p1, v0, :cond_8

    .line 63
    const-string v0, "IDAT"

    invoke-virtual {p0, v0}, Lar/com/hjg/pngj/aa;->b(Ljava/lang/String;)V

    .line 64
    const-string v0, "fdAT"

    invoke-virtual {p0, v0}, Lar/com/hjg/pngj/aa;->b(Ljava/lang/String;)V

    .line 65
    const/4 v0, -0x1

    iput v0, p0, Lar/com/hjg/pngj/aa;->i:I

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lar/com/hjg/pngj/aa;->j:Lar/com/hjg/pngj/o;

    .line 68
    :cond_4
    iget-object v0, p0, Lar/com/hjg/pngj/aa;->f:Lar/com/hjg/pngj/d;

    invoke-virtual {v0}, Lar/com/hjg/pngj/d;->b()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lar/com/hjg/pngj/aa;->f:Lar/com/hjg/pngj/d;

    invoke-virtual {v0}, Lar/com/hjg/pngj/d;->e()Lar/com/hjg/pngj/ChunkReader;

    move-result-object v0

    invoke-virtual {v0}, Lar/com/hjg/pngj/ChunkReader;->d()Z

    move-result v0

    if-nez v0, :cond_5

    .line 69
    iget-object v0, p0, Lar/com/hjg/pngj/aa;->g:Lar/com/hjg/pngj/a;

    iget-object v1, p0, Lar/com/hjg/pngj/aa;->f:Lar/com/hjg/pngj/d;

    invoke-virtual {v0, v1}, Lar/com/hjg/pngj/a;->a(Lar/com/hjg/pngj/i;)I

    move-result v0

    if-gtz v0, :cond_4

    .line 74
    :cond_5
    return-void

    :cond_6
    move v0, v2

    .line 58
    goto :goto_0

    :cond_7
    move v3, v2

    goto :goto_1

    .line 72
    :cond_8
    new-instance v0, Lar/com/hjg/pngj/PngjInputException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected error seeking from frame "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjInputException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public e()Lar/com/hjg/pngj/l;
    .locals 1

    .prologue
    .line 107
    invoke-super {p0}, Lar/com/hjg/pngj/ab;->e()Lar/com/hjg/pngj/l;

    move-result-object v0

    return-object v0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 113
    invoke-super {p0}, Lar/com/hjg/pngj/ab;->f()Z

    move-result v0

    return v0
.end method

.method public g()Lar/com/hjg/pngj/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lar/com/hjg/pngj/o",
            "<+",
            "Lar/com/hjg/pngj/l;",
            ">;"
        }
    .end annotation

    .prologue
    .line 125
    invoke-super {p0}, Lar/com/hjg/pngj/ab;->g()Lar/com/hjg/pngj/o;

    move-result-object v0

    return-object v0
.end method

.method public h()V
    .locals 0

    .prologue
    .line 137
    invoke-super {p0}, Lar/com/hjg/pngj/ab;->h()V

    .line 138
    return-void
.end method

.method public i()V
    .locals 0

    .prologue
    .line 202
    invoke-super {p0}, Lar/com/hjg/pngj/ab;->i()V

    .line 203
    return-void
.end method

.method protected n()Lar/com/hjg/pngj/d;
    .locals 2

    .prologue
    .line 142
    new-instance v0, Lar/com/hjg/pngj/aa$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lar/com/hjg/pngj/aa$1;-><init>(Lar/com/hjg/pngj/aa;Z)V

    .line 189
    .local v0, "cr":Lar/com/hjg/pngj/d;
    return-object v0
.end method

.method public u()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 39
    iget-object v0, p0, Lar/com/hjg/pngj/aa;->o:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 41
    invoke-virtual {p0}, Lar/com/hjg/pngj/aa;->b()Lar/com/hjg/pngj/chunks/f;

    move-result-object v0

    const-string v3, "acTL"

    invoke-virtual {v0, v3}, Lar/com/hjg/pngj/chunks/f;->b(Ljava/lang/String;)Lar/com/hjg/pngj/chunks/PngChunk;

    move-result-object v0

    check-cast v0, Lar/com/hjg/pngj/chunks/h;

    iput-object v0, p0, Lar/com/hjg/pngj/aa;->m:Lar/com/hjg/pngj/chunks/h;

    .line 42
    iget-object v0, p0, Lar/com/hjg/pngj/aa;->m:Lar/com/hjg/pngj/chunks/h;

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lar/com/hjg/pngj/aa;->o:Ljava/lang/Boolean;

    .line 43
    iget-object v0, p0, Lar/com/hjg/pngj/aa;->q:Lar/com/hjg/pngj/chunks/k;

    if-eqz v0, :cond_2

    :goto_1
    iput-boolean v1, p0, Lar/com/hjg/pngj/aa;->p:Z

    .line 46
    :cond_0
    iget-object v0, p0, Lar/com/hjg/pngj/aa;->o:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_1
    move v0, v2

    .line 42
    goto :goto_0

    :cond_2
    move v1, v2

    .line 43
    goto :goto_1
.end method

.method public v()Z
    .locals 1

    .prologue
    .line 81
    invoke-virtual {p0}, Lar/com/hjg/pngj/aa;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lar/com/hjg/pngj/aa;->p:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public w()I
    .locals 1

    .prologue
    .line 88
    invoke-virtual {p0}, Lar/com/hjg/pngj/aa;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lar/com/hjg/pngj/aa;->m:Lar/com/hjg/pngj/chunks/h;

    invoke-virtual {v0}, Lar/com/hjg/pngj/chunks/h;->j()I

    move-result v0

    .line 91
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public x()I
    .locals 1

    .prologue
    .line 98
    invoke-virtual {p0}, Lar/com/hjg/pngj/aa;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lar/com/hjg/pngj/aa;->m:Lar/com/hjg/pngj/chunks/h;

    invoke-virtual {v0}, Lar/com/hjg/pngj/chunks/h;->k()I

    move-result v0

    .line 101
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public y()I
    .locals 1

    .prologue
    .line 196
    iget v0, p0, Lar/com/hjg/pngj/aa;->n:I

    return v0
.end method

.method public z()Lar/com/hjg/pngj/chunks/k;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lar/com/hjg/pngj/aa;->q:Lar/com/hjg/pngj/chunks/k;

    return-object v0
.end method
