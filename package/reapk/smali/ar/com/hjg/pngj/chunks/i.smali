.class public Lar/com/hjg/pngj/chunks/i;
.super Lar/com/hjg/pngj/chunks/ab;
.source "SourceFile"


# static fields
.field public static final h:Ljava/lang/String; = "bKGD"


# instance fields
.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I


# direct methods
.method public constructor <init>(Lar/com/hjg/pngj/s;)V
    .locals 1
    .param p1, "info"    # Lar/com/hjg/pngj/s;

    .prologue
    .line 22
    const-string v0, "bKGD"

    invoke-direct {p0, v0, p1}, Lar/com/hjg/pngj/chunks/ab;-><init>(Ljava/lang/String;Lar/com/hjg/pngj/s;)V

    .line 23
    return-void
.end method


# virtual methods
.method public a(III)V
    .locals 2
    .param p1, "r"    # I
    .param p2, "g"    # I
    .param p3, "b"    # I

    .prologue
    .line 99
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/i;->e:Lar/com/hjg/pngj/s;

    iget-boolean v0, v0, Lar/com/hjg/pngj/s;->g:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lar/com/hjg/pngj/chunks/i;->e:Lar/com/hjg/pngj/s;

    iget-boolean v0, v0, Lar/com/hjg/pngj/s;->h:Z

    if-eqz v0, :cond_1

    .line 100
    :cond_0
    new-instance v0, Lar/com/hjg/pngj/PngjException;

    const-string v1, "only rgb or rgba images support this"

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_1
    iput p1, p0, Lar/com/hjg/pngj/chunks/i;->j:I

    .line 102
    iput p2, p0, Lar/com/hjg/pngj/chunks/i;->k:I

    .line 103
    iput p3, p0, Lar/com/hjg/pngj/chunks/i;->l:I

    .line 104
    return-void
.end method

.method public a(Lar/com/hjg/pngj/chunks/e;)V
    .locals 2
    .param p1, "c"    # Lar/com/hjg/pngj/chunks/e;

    .prologue
    const/4 v1, 0x0

    .line 50
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/i;->e:Lar/com/hjg/pngj/s;

    iget-boolean v0, v0, Lar/com/hjg/pngj/s;->g:Z

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p1, Lar/com/hjg/pngj/chunks/e;->d:[B

    invoke-static {v0, v1}, Lar/com/hjg/pngj/x;->b([BI)I

    move-result v0

    iput v0, p0, Lar/com/hjg/pngj/chunks/i;->i:I

    .line 59
    :goto_0
    return-void

    .line 52
    :cond_0
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/i;->e:Lar/com/hjg/pngj/s;

    iget-boolean v0, v0, Lar/com/hjg/pngj/s;->h:Z

    if-eqz v0, :cond_1

    .line 53
    iget-object v0, p1, Lar/com/hjg/pngj/chunks/e;->d:[B

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lar/com/hjg/pngj/chunks/i;->m:I

    goto :goto_0

    .line 55
    :cond_1
    iget-object v0, p1, Lar/com/hjg/pngj/chunks/e;->d:[B

    invoke-static {v0, v1}, Lar/com/hjg/pngj/x;->b([BI)I

    move-result v0

    iput v0, p0, Lar/com/hjg/pngj/chunks/i;->j:I

    .line 56
    iget-object v0, p1, Lar/com/hjg/pngj/chunks/e;->d:[B

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lar/com/hjg/pngj/x;->b([BI)I

    move-result v0

    iput v0, p0, Lar/com/hjg/pngj/chunks/i;->k:I

    .line 57
    iget-object v0, p1, Lar/com/hjg/pngj/chunks/e;->d:[B

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lar/com/hjg/pngj/x;->b([BI)I

    move-result v0

    iput v0, p0, Lar/com/hjg/pngj/chunks/i;->l:I

    goto :goto_0
.end method

.method public b(I)V
    .locals 2
    .param p1, "gray"    # I

    .prologue
    .line 67
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/i;->e:Lar/com/hjg/pngj/s;

    iget-boolean v0, v0, Lar/com/hjg/pngj/s;->g:Z

    if-nez v0, :cond_0

    .line 68
    new-instance v0, Lar/com/hjg/pngj/PngjException;

    const-string v1, "only gray images support this"

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_0
    iput p1, p0, Lar/com/hjg/pngj/chunks/i;->i:I

    .line 70
    return-void
.end method

.method public c()Lar/com/hjg/pngj/chunks/e;
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 32
    const/4 v0, 0x0

    .line 33
    .local v0, "c":Lar/com/hjg/pngj/chunks/e;
    iget-object v1, p0, Lar/com/hjg/pngj/chunks/i;->e:Lar/com/hjg/pngj/s;

    iget-boolean v1, v1, Lar/com/hjg/pngj/s;->g:Z

    if-eqz v1, :cond_0

    .line 34
    const/4 v1, 0x2

    invoke-virtual {p0, v1, v2}, Lar/com/hjg/pngj/chunks/i;->a(IZ)Lar/com/hjg/pngj/chunks/e;

    move-result-object v0

    .line 35
    iget v1, p0, Lar/com/hjg/pngj/chunks/i;->i:I

    iget-object v2, v0, Lar/com/hjg/pngj/chunks/e;->d:[B

    invoke-static {v1, v2, v3}, Lar/com/hjg/pngj/x;->a(I[BI)V

    .line 45
    :goto_0
    return-object v0

    .line 36
    :cond_0
    iget-object v1, p0, Lar/com/hjg/pngj/chunks/i;->e:Lar/com/hjg/pngj/s;

    iget-boolean v1, v1, Lar/com/hjg/pngj/s;->h:Z

    if-eqz v1, :cond_1

    .line 37
    invoke-virtual {p0, v2, v2}, Lar/com/hjg/pngj/chunks/i;->a(IZ)Lar/com/hjg/pngj/chunks/e;

    move-result-object v0

    .line 38
    iget-object v1, v0, Lar/com/hjg/pngj/chunks/e;->d:[B

    iget v2, p0, Lar/com/hjg/pngj/chunks/i;->m:I

    int-to-byte v2, v2

    aput-byte v2, v1, v3

    goto :goto_0

    .line 40
    :cond_1
    const/4 v1, 0x6

    invoke-virtual {p0, v1, v2}, Lar/com/hjg/pngj/chunks/i;->a(IZ)Lar/com/hjg/pngj/chunks/e;

    move-result-object v0

    .line 41
    iget v1, p0, Lar/com/hjg/pngj/chunks/i;->j:I

    iget-object v2, v0, Lar/com/hjg/pngj/chunks/e;->d:[B

    invoke-static {v1, v2, v3}, Lar/com/hjg/pngj/x;->a(I[BI)V

    .line 42
    iget v1, p0, Lar/com/hjg/pngj/chunks/i;->k:I

    iget-object v2, v0, Lar/com/hjg/pngj/chunks/e;->d:[B

    invoke-static {v1, v2, v3}, Lar/com/hjg/pngj/x;->a(I[BI)V

    .line 43
    iget v1, p0, Lar/com/hjg/pngj/chunks/i;->l:I

    iget-object v2, v0, Lar/com/hjg/pngj/chunks/e;->d:[B

    invoke-static {v1, v2, v3}, Lar/com/hjg/pngj/x;->a(I[BI)V

    goto :goto_0
.end method

.method public c(I)V
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 83
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/i;->e:Lar/com/hjg/pngj/s;

    iget-boolean v0, v0, Lar/com/hjg/pngj/s;->h:Z

    if-nez v0, :cond_0

    .line 84
    new-instance v0, Lar/com/hjg/pngj/PngjException;

    const-string v1, "only indexed (pallete) images support this"

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_0
    iput p1, p0, Lar/com/hjg/pngj/chunks/i;->m:I

    .line 86
    return-void
.end method

.method public i()Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;->AFTER_PLTE_BEFORE_IDAT:Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;

    return-object v0
.end method

.method public j()I
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/i;->e:Lar/com/hjg/pngj/s;

    iget-boolean v0, v0, Lar/com/hjg/pngj/s;->g:Z

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Lar/com/hjg/pngj/PngjException;

    const-string v1, "only gray images support this"

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_0
    iget v0, p0, Lar/com/hjg/pngj/chunks/i;->i:I

    return v0
.end method

.method public k()I
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/i;->e:Lar/com/hjg/pngj/s;

    iget-boolean v0, v0, Lar/com/hjg/pngj/s;->h:Z

    if-nez v0, :cond_0

    .line 90
    new-instance v0, Lar/com/hjg/pngj/PngjException;

    const-string v1, "only indexed (pallete) images support this"

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_0
    iget v0, p0, Lar/com/hjg/pngj/chunks/i;->m:I

    return v0
.end method

.method public l()[I
    .locals 3

    .prologue
    .line 107
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/i;->e:Lar/com/hjg/pngj/s;

    iget-boolean v0, v0, Lar/com/hjg/pngj/s;->g:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lar/com/hjg/pngj/chunks/i;->e:Lar/com/hjg/pngj/s;

    iget-boolean v0, v0, Lar/com/hjg/pngj/s;->h:Z

    if-eqz v0, :cond_1

    .line 108
    :cond_0
    new-instance v0, Lar/com/hjg/pngj/PngjException;

    const-string v1, "only rgb or rgba images support this"

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_1
    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x0

    iget v2, p0, Lar/com/hjg/pngj/chunks/i;->j:I

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lar/com/hjg/pngj/chunks/i;->k:I

    aput v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lar/com/hjg/pngj/chunks/i;->l:I

    aput v2, v0, v1

    return-object v0
.end method
