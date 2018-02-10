.class public Lar/com/hjg/pngj/chunks/r;
.super Lar/com/hjg/pngj/chunks/ab;
.source "SourceFile"


# static fields
.field public static final h:Ljava/lang/String; = "IHDR"


# instance fields
.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I


# direct methods
.method public constructor <init>(Lar/com/hjg/pngj/s;)V
    .locals 1
    .param p1, "info"    # Lar/com/hjg/pngj/s;

    .prologue
    .line 31
    const-string v0, "IHDR"

    invoke-direct {p0, v0, p1}, Lar/com/hjg/pngj/chunks/ab;-><init>(Ljava/lang/String;Lar/com/hjg/pngj/s;)V

    .line 32
    if-eqz p1, :cond_0

    .line 33
    invoke-virtual {p0, p1}, Lar/com/hjg/pngj/chunks/r;->a(Lar/com/hjg/pngj/s;)V

    .line 34
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lar/com/hjg/pngj/chunks/e;)V
    .locals 4
    .param p1, "c"    # Lar/com/hjg/pngj/chunks/e;

    .prologue
    .line 60
    iget v1, p1, Lar/com/hjg/pngj/chunks/e;->a:I

    const/16 v2, 0xd

    if-eq v1, v2, :cond_0

    .line 61
    new-instance v1, Lar/com/hjg/pngj/PngjException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad IDHR len "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lar/com/hjg/pngj/chunks/e;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 62
    :cond_0
    invoke-virtual {p1}, Lar/com/hjg/pngj/chunks/e;->c()Ljava/io/ByteArrayInputStream;

    move-result-object v0

    .line 63
    .local v0, "st":Ljava/io/ByteArrayInputStream;
    invoke-static {v0}, Lar/com/hjg/pngj/x;->c(Ljava/io/InputStream;)I

    move-result v1

    iput v1, p0, Lar/com/hjg/pngj/chunks/r;->i:I

    .line 64
    invoke-static {v0}, Lar/com/hjg/pngj/x;->c(Ljava/io/InputStream;)I

    move-result v1

    iput v1, p0, Lar/com/hjg/pngj/chunks/r;->j:I

    .line 66
    invoke-static {v0}, Lar/com/hjg/pngj/x;->a(Ljava/io/InputStream;)I

    move-result v1

    iput v1, p0, Lar/com/hjg/pngj/chunks/r;->k:I

    .line 67
    invoke-static {v0}, Lar/com/hjg/pngj/x;->a(Ljava/io/InputStream;)I

    move-result v1

    iput v1, p0, Lar/com/hjg/pngj/chunks/r;->l:I

    .line 68
    invoke-static {v0}, Lar/com/hjg/pngj/x;->a(Ljava/io/InputStream;)I

    move-result v1

    iput v1, p0, Lar/com/hjg/pngj/chunks/r;->m:I

    .line 69
    invoke-static {v0}, Lar/com/hjg/pngj/x;->a(Ljava/io/InputStream;)I

    move-result v1

    iput v1, p0, Lar/com/hjg/pngj/chunks/r;->n:I

    .line 70
    invoke-static {v0}, Lar/com/hjg/pngj/x;->a(Ljava/io/InputStream;)I

    move-result v1

    iput v1, p0, Lar/com/hjg/pngj/chunks/r;->o:I

    .line 71
    return-void
.end method

.method public a(Lar/com/hjg/pngj/s;)V
    .locals 3
    .param p1, "info"    # Lar/com/hjg/pngj/s;

    .prologue
    const/4 v2, 0x0

    .line 134
    iget-object v1, p0, Lar/com/hjg/pngj/chunks/r;->e:Lar/com/hjg/pngj/s;

    iget v1, v1, Lar/com/hjg/pngj/s;->b:I

    invoke-virtual {p0, v1}, Lar/com/hjg/pngj/chunks/r;->b(I)V

    .line 135
    iget-object v1, p0, Lar/com/hjg/pngj/chunks/r;->e:Lar/com/hjg/pngj/s;

    iget v1, v1, Lar/com/hjg/pngj/s;->c:I

    invoke-virtual {p0, v1}, Lar/com/hjg/pngj/chunks/r;->c(I)V

    .line 136
    iget-object v1, p0, Lar/com/hjg/pngj/chunks/r;->e:Lar/com/hjg/pngj/s;

    iget v1, v1, Lar/com/hjg/pngj/s;->d:I

    invoke-virtual {p0, v1}, Lar/com/hjg/pngj/chunks/r;->d(I)V

    .line 137
    const/4 v0, 0x0

    .line 138
    .local v0, "colormodel":I
    iget-object v1, p0, Lar/com/hjg/pngj/chunks/r;->e:Lar/com/hjg/pngj/s;

    iget-boolean v1, v1, Lar/com/hjg/pngj/s;->f:Z

    if-eqz v1, :cond_0

    .line 139
    add-int/lit8 v0, v0, 0x4

    .line 140
    :cond_0
    iget-object v1, p0, Lar/com/hjg/pngj/chunks/r;->e:Lar/com/hjg/pngj/s;

    iget-boolean v1, v1, Lar/com/hjg/pngj/s;->h:Z

    if-eqz v1, :cond_1

    .line 141
    add-int/lit8 v0, v0, 0x1

    .line 142
    :cond_1
    iget-object v1, p0, Lar/com/hjg/pngj/chunks/r;->e:Lar/com/hjg/pngj/s;

    iget-boolean v1, v1, Lar/com/hjg/pngj/s;->g:Z

    if-nez v1, :cond_2

    .line 143
    add-int/lit8 v0, v0, 0x2

    .line 144
    :cond_2
    invoke-virtual {p0, v0}, Lar/com/hjg/pngj/chunks/r;->e(I)V

    .line 145
    invoke-virtual {p0, v2}, Lar/com/hjg/pngj/chunks/r;->f(I)V

    .line 146
    invoke-virtual {p0, v2}, Lar/com/hjg/pngj/chunks/r;->g(I)V

    .line 147
    invoke-virtual {p0, v2}, Lar/com/hjg/pngj/chunks/r;->h(I)V

    .line 148
    return-void
.end method

.method public b(I)V
    .locals 0
    .param p1, "cols"    # I

    .prologue
    .line 78
    iput p1, p0, Lar/com/hjg/pngj/chunks/r;->i:I

    .line 79
    return-void
.end method

.method public c()Lar/com/hjg/pngj/chunks/e;
    .locals 6

    .prologue
    .line 44
    new-instance v0, Lar/com/hjg/pngj/chunks/e;

    const/16 v3, 0xd

    sget-object v4, Lar/com/hjg/pngj/chunks/c;->s:[B

    const/4 v5, 0x1

    invoke-direct {v0, v3, v4, v5}, Lar/com/hjg/pngj/chunks/e;-><init>(I[BZ)V

    .line 45
    .local v0, "c":Lar/com/hjg/pngj/chunks/e;
    const/4 v1, 0x0

    .line 46
    .local v1, "offset":I
    iget v3, p0, Lar/com/hjg/pngj/chunks/r;->i:I

    iget-object v4, v0, Lar/com/hjg/pngj/chunks/e;->d:[B

    invoke-static {v3, v4, v1}, Lar/com/hjg/pngj/x;->b(I[BI)V

    .line 47
    add-int/lit8 v1, v1, 0x4

    .line 48
    iget v3, p0, Lar/com/hjg/pngj/chunks/r;->j:I

    iget-object v4, v0, Lar/com/hjg/pngj/chunks/e;->d:[B

    invoke-static {v3, v4, v1}, Lar/com/hjg/pngj/x;->b(I[BI)V

    .line 49
    add-int/lit8 v1, v1, 0x4

    .line 50
    iget-object v3, v0, Lar/com/hjg/pngj/chunks/e;->d:[B

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "offset":I
    .local v2, "offset":I
    iget v4, p0, Lar/com/hjg/pngj/chunks/r;->k:I

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    .line 51
    iget-object v3, v0, Lar/com/hjg/pngj/chunks/e;->d:[B

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "offset":I
    .restart local v1    # "offset":I
    iget v4, p0, Lar/com/hjg/pngj/chunks/r;->l:I

    int-to-byte v4, v4

    aput-byte v4, v3, v2

    .line 52
    iget-object v3, v0, Lar/com/hjg/pngj/chunks/e;->d:[B

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "offset":I
    .restart local v2    # "offset":I
    iget v4, p0, Lar/com/hjg/pngj/chunks/r;->m:I

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    .line 53
    iget-object v3, v0, Lar/com/hjg/pngj/chunks/e;->d:[B

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "offset":I
    .restart local v1    # "offset":I
    iget v4, p0, Lar/com/hjg/pngj/chunks/r;->n:I

    int-to-byte v4, v4

    aput-byte v4, v3, v2

    .line 54
    iget-object v3, v0, Lar/com/hjg/pngj/chunks/e;->d:[B

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "offset":I
    .restart local v2    # "offset":I
    iget v4, p0, Lar/com/hjg/pngj/chunks/r;->o:I

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    .line 55
    return-object v0
.end method

.method public c(I)V
    .locals 0
    .param p1, "rows"    # I

    .prologue
    .line 86
    iput p1, p0, Lar/com/hjg/pngj/chunks/r;->j:I

    .line 87
    return-void
.end method

.method public d(I)V
    .locals 0
    .param p1, "bitspc"    # I

    .prologue
    .line 94
    iput p1, p0, Lar/com/hjg/pngj/chunks/r;->k:I

    .line 95
    return-void
.end method

.method public e(I)V
    .locals 0
    .param p1, "colormodel"    # I

    .prologue
    .line 102
    iput p1, p0, Lar/com/hjg/pngj/chunks/r;->l:I

    .line 103
    return-void
.end method

.method public f(I)V
    .locals 0
    .param p1, "compmeth"    # I

    .prologue
    .line 110
    iput p1, p0, Lar/com/hjg/pngj/chunks/r;->m:I

    .line 111
    return-void
.end method

.method public g(I)V
    .locals 0
    .param p1, "filmeth"    # I

    .prologue
    .line 118
    iput p1, p0, Lar/com/hjg/pngj/chunks/r;->n:I

    .line 119
    return-void
.end method

.method public h(I)V
    .locals 0
    .param p1, "interlaced"    # I

    .prologue
    .line 126
    iput p1, p0, Lar/com/hjg/pngj/chunks/r;->o:I

    .line 127
    return-void
.end method

.method public i()Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;->NA:Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;

    return-object v0
.end method

.method public j()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lar/com/hjg/pngj/chunks/r;->i:I

    return v0
.end method

.method public k()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lar/com/hjg/pngj/chunks/r;->j:I

    return v0
.end method

.method public l()I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lar/com/hjg/pngj/chunks/r;->k:I

    return v0
.end method

.method public m()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lar/com/hjg/pngj/chunks/r;->l:I

    return v0
.end method

.method public n()I
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lar/com/hjg/pngj/chunks/r;->m:I

    return v0
.end method

.method public o()I
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Lar/com/hjg/pngj/chunks/r;->n:I

    return v0
.end method

.method public p()I
    .locals 1

    .prologue
    .line 122
    iget v0, p0, Lar/com/hjg/pngj/chunks/r;->o:I

    return v0
.end method

.method public q()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 130
    invoke-virtual {p0}, Lar/com/hjg/pngj/chunks/r;->p()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public r()Lar/com/hjg/pngj/s;
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 152
    invoke-virtual {p0}, Lar/com/hjg/pngj/chunks/r;->s()V

    .line 153
    invoke-virtual {p0}, Lar/com/hjg/pngj/chunks/r;->m()I

    move-result v2

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_1

    move v4, v0

    .line 154
    .local v4, "alpha":Z
    :goto_0
    invoke-virtual {p0}, Lar/com/hjg/pngj/chunks/r;->m()I

    move-result v2

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    move v6, v0

    .line 155
    .local v6, "palette":Z
    :goto_1
    invoke-virtual {p0}, Lar/com/hjg/pngj/chunks/r;->m()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lar/com/hjg/pngj/chunks/r;->m()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    :cond_0
    move v5, v0

    .line 157
    .local v5, "grayscale":Z
    :goto_2
    new-instance v0, Lar/com/hjg/pngj/s;

    invoke-virtual {p0}, Lar/com/hjg/pngj/chunks/r;->j()I

    move-result v1

    invoke-virtual {p0}, Lar/com/hjg/pngj/chunks/r;->k()I

    move-result v2

    invoke-virtual {p0}, Lar/com/hjg/pngj/chunks/r;->l()I

    move-result v3

    invoke-direct/range {v0 .. v6}, Lar/com/hjg/pngj/s;-><init>(IIIZZZ)V

    return-object v0

    .end local v4    # "alpha":Z
    .end local v5    # "grayscale":Z
    .end local v6    # "palette":Z
    :cond_1
    move v4, v1

    .line 153
    goto :goto_0

    .restart local v4    # "alpha":Z
    :cond_2
    move v6, v1

    .line 154
    goto :goto_1

    .restart local v6    # "palette":Z
    :cond_3
    move v5, v1

    .line 155
    goto :goto_2
.end method

.method public s()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/16 v3, 0x10

    const/4 v2, 0x1

    .line 161
    iget v0, p0, Lar/com/hjg/pngj/chunks/r;->i:I

    if-lt v0, v2, :cond_0

    iget v0, p0, Lar/com/hjg/pngj/chunks/r;->j:I

    if-lt v0, v2, :cond_0

    iget v0, p0, Lar/com/hjg/pngj/chunks/r;->m:I

    if-nez v0, :cond_0

    iget v0, p0, Lar/com/hjg/pngj/chunks/r;->n:I

    if-eqz v0, :cond_1

    .line 162
    :cond_0
    new-instance v0, Lar/com/hjg/pngj/PngjInputException;

    const-string v1, "bad IHDR: col/row/compmethod/filmethod invalid"

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjInputException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 163
    :cond_1
    iget v0, p0, Lar/com/hjg/pngj/chunks/r;->k:I

    if-eq v0, v2, :cond_2

    iget v0, p0, Lar/com/hjg/pngj/chunks/r;->k:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    iget v0, p0, Lar/com/hjg/pngj/chunks/r;->k:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    iget v0, p0, Lar/com/hjg/pngj/chunks/r;->k:I

    if-eq v0, v4, :cond_2

    iget v0, p0, Lar/com/hjg/pngj/chunks/r;->k:I

    if-eq v0, v3, :cond_2

    .line 164
    new-instance v0, Lar/com/hjg/pngj/PngjInputException;

    const-string v1, "bad IHDR: bitdepth invalid"

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjInputException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 165
    :cond_2
    iget v0, p0, Lar/com/hjg/pngj/chunks/r;->o:I

    if-ltz v0, :cond_3

    iget v0, p0, Lar/com/hjg/pngj/chunks/r;->o:I

    if-le v0, v2, :cond_4

    .line 166
    :cond_3
    new-instance v0, Lar/com/hjg/pngj/PngjInputException;

    const-string v1, "bad IHDR: interlace invalid"

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjInputException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 167
    :cond_4
    iget v0, p0, Lar/com/hjg/pngj/chunks/r;->l:I

    packed-switch v0, :pswitch_data_0

    .line 181
    :pswitch_0
    new-instance v0, Lar/com/hjg/pngj/PngjInputException;

    const-string v1, "bad IHDR: invalid colormodel"

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjInputException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 171
    :pswitch_1
    iget v0, p0, Lar/com/hjg/pngj/chunks/r;->k:I

    if-ne v0, v3, :cond_5

    .line 172
    new-instance v0, Lar/com/hjg/pngj/PngjInputException;

    const-string v1, "bad IHDR: bitdepth invalid"

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjInputException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 177
    :pswitch_2
    iget v0, p0, Lar/com/hjg/pngj/chunks/r;->k:I

    if-eq v0, v4, :cond_5

    iget v0, p0, Lar/com/hjg/pngj/chunks/r;->k:I

    if-eq v0, v3, :cond_5

    .line 178
    new-instance v0, Lar/com/hjg/pngj/PngjInputException;

    const-string v1, "bad IHDR: bitdepth invalid"

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjInputException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 183
    :cond_5
    :pswitch_3
    return-void

    .line 167
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
