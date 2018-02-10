.class public Lar/com/hjg/pngj/chunks/ae;
.super Lar/com/hjg/pngj/chunks/ab;
.source "SourceFile"


# static fields
.field public static final h:Ljava/lang/String; = "tRNS"


# instance fields
.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:[I


# direct methods
.method public constructor <init>(Lar/com/hjg/pngj/s;)V
    .locals 1
    .param p1, "info"    # Lar/com/hjg/pngj/s;

    .prologue
    .line 25
    const-string v0, "tRNS"

    invoke-direct {p0, v0, p1}, Lar/com/hjg/pngj/chunks/ab;-><init>(Ljava/lang/String;Lar/com/hjg/pngj/s;)V

    .line 22
    const/4 v0, 0x0

    new-array v0, v0, [I

    iput-object v0, p0, Lar/com/hjg/pngj/chunks/ae;->m:[I

    .line 26
    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 1
    .param p1, "idx"    # I
    .param p2, "val"    # I

    .prologue
    .line 113
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/ae;->m:[I

    aput p2, v0, p1

    .line 114
    return-void
.end method

.method public a(III)V
    .locals 2
    .param p1, "r"    # I
    .param p2, "g"    # I
    .param p3, "b"    # I

    .prologue
    .line 75
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/ae;->e:Lar/com/hjg/pngj/s;

    iget-boolean v0, v0, Lar/com/hjg/pngj/s;->g:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lar/com/hjg/pngj/chunks/ae;->e:Lar/com/hjg/pngj/s;

    iget-boolean v0, v0, Lar/com/hjg/pngj/s;->h:Z

    if-eqz v0, :cond_1

    .line 76
    :cond_0
    new-instance v0, Lar/com/hjg/pngj/PngjException;

    const-string v1, "only rgb or rgba images support this"

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_1
    iput p1, p0, Lar/com/hjg/pngj/chunks/ae;->j:I

    .line 78
    iput p2, p0, Lar/com/hjg/pngj/chunks/ae;->k:I

    .line 79
    iput p3, p0, Lar/com/hjg/pngj/chunks/ae;->l:I

    .line 80
    return-void
.end method

.method public a(Lar/com/hjg/pngj/chunks/e;)V
    .locals 4
    .param p1, "c"    # Lar/com/hjg/pngj/chunks/e;

    .prologue
    const/4 v3, 0x0

    .line 55
    iget-object v2, p0, Lar/com/hjg/pngj/chunks/ae;->e:Lar/com/hjg/pngj/s;

    iget-boolean v2, v2, Lar/com/hjg/pngj/s;->g:Z

    if-eqz v2, :cond_1

    .line 56
    iget-object v2, p1, Lar/com/hjg/pngj/chunks/e;->d:[B

    invoke-static {v2, v3}, Lar/com/hjg/pngj/x;->b([BI)I

    move-result v2

    iput v2, p0, Lar/com/hjg/pngj/chunks/ae;->i:I

    .line 68
    :cond_0
    :goto_0
    return-void

    .line 57
    :cond_1
    iget-object v2, p0, Lar/com/hjg/pngj/chunks/ae;->e:Lar/com/hjg/pngj/s;

    iget-boolean v2, v2, Lar/com/hjg/pngj/s;->h:Z

    if-eqz v2, :cond_2

    .line 58
    iget-object v2, p1, Lar/com/hjg/pngj/chunks/e;->d:[B

    array-length v1, v2

    .line 59
    .local v1, "nentries":I
    new-array v2, v1, [I

    iput-object v2, p0, Lar/com/hjg/pngj/chunks/ae;->m:[I

    .line 60
    const/4 v0, 0x0

    .local v0, "n":I
    :goto_1
    if-ge v0, v1, :cond_0

    .line 61
    iget-object v2, p0, Lar/com/hjg/pngj/chunks/ae;->m:[I

    iget-object v3, p1, Lar/com/hjg/pngj/chunks/e;->d:[B

    aget-byte v3, v3, v0

    and-int/lit16 v3, v3, 0xff

    aput v3, v2, v0

    .line 60
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 64
    .end local v0    # "n":I
    .end local v1    # "nentries":I
    :cond_2
    iget-object v2, p1, Lar/com/hjg/pngj/chunks/e;->d:[B

    invoke-static {v2, v3}, Lar/com/hjg/pngj/x;->b([BI)I

    move-result v2

    iput v2, p0, Lar/com/hjg/pngj/chunks/ae;->j:I

    .line 65
    iget-object v2, p1, Lar/com/hjg/pngj/chunks/e;->d:[B

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lar/com/hjg/pngj/x;->b([BI)I

    move-result v2

    iput v2, p0, Lar/com/hjg/pngj/chunks/ae;->k:I

    .line 66
    iget-object v2, p1, Lar/com/hjg/pngj/chunks/e;->d:[B

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lar/com/hjg/pngj/x;->b([BI)I

    move-result v2

    iput v2, p0, Lar/com/hjg/pngj/chunks/ae;->l:I

    goto :goto_0
.end method

.method public a([I)V
    .locals 2
    .param p1, "palAlpha"    # [I

    .prologue
    .line 124
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/ae;->e:Lar/com/hjg/pngj/s;

    iget-boolean v0, v0, Lar/com/hjg/pngj/s;->h:Z

    if-nez v0, :cond_0

    .line 125
    new-instance v0, Lar/com/hjg/pngj/PngjException;

    const-string v1, "only indexed images support this"

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_0
    iput-object p1, p0, Lar/com/hjg/pngj/chunks/ae;->m:[I

    .line 127
    return-void
.end method

.method public b(I)V
    .locals 2
    .param p1, "g"    # I

    .prologue
    .line 95
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/ae;->e:Lar/com/hjg/pngj/s;

    iget-boolean v0, v0, Lar/com/hjg/pngj/s;->g:Z

    if-nez v0, :cond_0

    .line 96
    new-instance v0, Lar/com/hjg/pngj/PngjException;

    const-string v1, "only grayscale images support this"

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_0
    iput p1, p0, Lar/com/hjg/pngj/chunks/ae;->i:I

    .line 98
    return-void
.end method

.method public c()Lar/com/hjg/pngj/chunks/e;
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 35
    const/4 v0, 0x0

    .line 36
    .local v0, "c":Lar/com/hjg/pngj/chunks/e;
    iget-object v2, p0, Lar/com/hjg/pngj/chunks/ae;->e:Lar/com/hjg/pngj/s;

    iget-boolean v2, v2, Lar/com/hjg/pngj/s;->g:Z

    if-eqz v2, :cond_1

    .line 37
    const/4 v2, 0x2

    invoke-virtual {p0, v2, v3}, Lar/com/hjg/pngj/chunks/ae;->a(IZ)Lar/com/hjg/pngj/chunks/e;

    move-result-object v0

    .line 38
    iget v2, p0, Lar/com/hjg/pngj/chunks/ae;->i:I

    iget-object v3, v0, Lar/com/hjg/pngj/chunks/e;->d:[B

    invoke-static {v2, v3, v4}, Lar/com/hjg/pngj/x;->a(I[BI)V

    .line 50
    :cond_0
    :goto_0
    return-object v0

    .line 39
    :cond_1
    iget-object v2, p0, Lar/com/hjg/pngj/chunks/ae;->e:Lar/com/hjg/pngj/s;

    iget-boolean v2, v2, Lar/com/hjg/pngj/s;->h:Z

    if-eqz v2, :cond_2

    .line 40
    iget-object v2, p0, Lar/com/hjg/pngj/chunks/ae;->m:[I

    array-length v2, v2

    invoke-virtual {p0, v2, v3}, Lar/com/hjg/pngj/chunks/ae;->a(IZ)Lar/com/hjg/pngj/chunks/e;

    move-result-object v0

    .line 41
    const/4 v1, 0x0

    .local v1, "n":I
    :goto_1
    iget v2, v0, Lar/com/hjg/pngj/chunks/e;->a:I

    if-ge v1, v2, :cond_0

    .line 42
    iget-object v2, v0, Lar/com/hjg/pngj/chunks/e;->d:[B

    iget-object v3, p0, Lar/com/hjg/pngj/chunks/ae;->m:[I

    aget v3, v3, v1

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 41
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 45
    .end local v1    # "n":I
    :cond_2
    const/4 v2, 0x6

    invoke-virtual {p0, v2, v3}, Lar/com/hjg/pngj/chunks/ae;->a(IZ)Lar/com/hjg/pngj/chunks/e;

    move-result-object v0

    .line 46
    iget v2, p0, Lar/com/hjg/pngj/chunks/ae;->j:I

    iget-object v3, v0, Lar/com/hjg/pngj/chunks/e;->d:[B

    invoke-static {v2, v3, v4}, Lar/com/hjg/pngj/x;->a(I[BI)V

    .line 47
    iget v2, p0, Lar/com/hjg/pngj/chunks/ae;->k:I

    iget-object v3, v0, Lar/com/hjg/pngj/chunks/e;->d:[B

    invoke-static {v2, v3, v4}, Lar/com/hjg/pngj/x;->a(I[BI)V

    .line 48
    iget v2, p0, Lar/com/hjg/pngj/chunks/ae;->l:I

    iget-object v3, v0, Lar/com/hjg/pngj/chunks/e;->d:[B

    invoke-static {v2, v3, v4}, Lar/com/hjg/pngj/x;->a(I[BI)V

    goto :goto_0
.end method

.method public c(I)V
    .locals 1
    .param p1, "len"    # I

    .prologue
    .line 117
    new-array v0, p1, [I

    iput-object v0, p0, Lar/com/hjg/pngj/chunks/ae;->m:[I

    .line 118
    return-void
.end method

.method public d(I)V
    .locals 4
    .param p1, "palAlphaIndex"    # I

    .prologue
    const/4 v3, 0x0

    .line 140
    iget-object v1, p0, Lar/com/hjg/pngj/chunks/ae;->e:Lar/com/hjg/pngj/s;

    iget-boolean v1, v1, Lar/com/hjg/pngj/s;->h:Z

    if-nez v1, :cond_0

    .line 141
    new-instance v1, Lar/com/hjg/pngj/PngjException;

    const-string v2, "only indexed images support this"

    invoke-direct {v1, v2}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 142
    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [I

    add-int/lit8 v2, p1, 0x1

    aput v2, v1, v3

    iput-object v1, p0, Lar/com/hjg/pngj/chunks/ae;->m:[I

    .line 143
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_1

    .line 144
    iget-object v1, p0, Lar/com/hjg/pngj/chunks/ae;->m:[I

    const/16 v2, 0xff

    aput v2, v1, v0

    .line 143
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 145
    :cond_1
    iget-object v1, p0, Lar/com/hjg/pngj/chunks/ae;->m:[I

    aput v3, v1, p1

    .line 146
    return-void
.end method

.method public i()Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;->AFTER_PLTE_BEFORE_IDAT:Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;

    return-object v0
.end method

.method public j()[I
    .locals 3

    .prologue
    .line 83
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/ae;->e:Lar/com/hjg/pngj/s;

    iget-boolean v0, v0, Lar/com/hjg/pngj/s;->g:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lar/com/hjg/pngj/chunks/ae;->e:Lar/com/hjg/pngj/s;

    iget-boolean v0, v0, Lar/com/hjg/pngj/s;->h:Z

    if-eqz v0, :cond_1

    .line 84
    :cond_0
    new-instance v0, Lar/com/hjg/pngj/PngjException;

    const-string v1, "only rgb or rgba images support this"

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_1
    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x0

    iget v2, p0, Lar/com/hjg/pngj/chunks/ae;->j:I

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lar/com/hjg/pngj/chunks/ae;->k:I

    aput v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lar/com/hjg/pngj/chunks/ae;->l:I

    aput v2, v0, v1

    return-object v0
.end method

.method public k()I
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/ae;->e:Lar/com/hjg/pngj/s;

    iget-boolean v0, v0, Lar/com/hjg/pngj/s;->g:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lar/com/hjg/pngj/chunks/ae;->e:Lar/com/hjg/pngj/s;

    iget-boolean v0, v0, Lar/com/hjg/pngj/s;->h:Z

    if-eqz v0, :cond_1

    .line 90
    :cond_0
    new-instance v0, Lar/com/hjg/pngj/PngjException;

    const-string v1, "only rgb or rgba images support this"

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_1
    iget v0, p0, Lar/com/hjg/pngj/chunks/ae;->j:I

    shl-int/lit8 v0, v0, 0x10

    iget v1, p0, Lar/com/hjg/pngj/chunks/ae;->k:I

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iget v1, p0, Lar/com/hjg/pngj/chunks/ae;->l:I

    or-int/2addr v0, v1

    return v0
.end method

.method public l()I
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/ae;->e:Lar/com/hjg/pngj/s;

    iget-boolean v0, v0, Lar/com/hjg/pngj/s;->g:Z

    if-nez v0, :cond_0

    .line 102
    new-instance v0, Lar/com/hjg/pngj/PngjException;

    const-string v1, "only grayscale images support this"

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_0
    iget v0, p0, Lar/com/hjg/pngj/chunks/ae;->i:I

    return v0
.end method

.method public m()[I
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/ae;->m:[I

    return-object v0
.end method
