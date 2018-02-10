.class public Lar/com/hjg/pngj/r;
.super Lar/com/hjg/pngj/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lar/com/hjg/pngj/r$1;
    }
.end annotation


# instance fields
.field protected f:[B

.field protected g:[B

.field protected final h:Lar/com/hjg/pngj/s;

.field protected final i:Lar/com/hjg/pngj/h;

.field final j:Lar/com/hjg/pngj/ag;

.field protected k:[I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lar/com/hjg/pngj/s;Lar/com/hjg/pngj/h;)V
    .locals 6
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "iminfo"    # Lar/com/hjg/pngj/s;
    .param p3, "deinterlacer"    # Lar/com/hjg/pngj/h;

    .prologue
    const/4 v4, 0x0

    .line 30
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lar/com/hjg/pngj/r;-><init>(Ljava/lang/String;Lar/com/hjg/pngj/s;Lar/com/hjg/pngj/h;Ljava/util/zip/Inflater;[B)V

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lar/com/hjg/pngj/s;Lar/com/hjg/pngj/h;Ljava/util/zip/Inflater;[B)V
    .locals 6
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "iminfo"    # Lar/com/hjg/pngj/s;
    .param p3, "deinterlacer"    # Lar/com/hjg/pngj/h;
    .param p4, "inf"    # Ljava/util/zip/Inflater;
    .param p5, "buffer"    # [B

    .prologue
    .line 41
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lar/com/hjg/pngj/h;->i()I

    move-result v0

    add-int/lit8 v2, v0, 0x1

    :goto_0
    iget v0, p2, Lar/com/hjg/pngj/s;->l:I

    add-int/lit8 v3, v0, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lar/com/hjg/pngj/g;-><init>(Ljava/lang/String;IILjava/util/zip/Inflater;[B)V

    .line 22
    const/4 v0, 0x5

    new-array v0, v0, [I

    iput-object v0, p0, Lar/com/hjg/pngj/r;->k:[I

    .line 43
    iput-object p2, p0, Lar/com/hjg/pngj/r;->h:Lar/com/hjg/pngj/s;

    .line 44
    iput-object p3, p0, Lar/com/hjg/pngj/r;->i:Lar/com/hjg/pngj/h;

    .line 45
    new-instance v0, Lar/com/hjg/pngj/ag;

    invoke-direct {v0, p2, p3}, Lar/com/hjg/pngj/ag;-><init>(Lar/com/hjg/pngj/s;Lar/com/hjg/pngj/h;)V

    iput-object v0, p0, Lar/com/hjg/pngj/r;->j:Lar/com/hjg/pngj/ag;

    .line 46
    return-void

    .line 41
    :cond_0
    iget v0, p2, Lar/com/hjg/pngj/s;->l:I

    add-int/lit8 v2, v0, 0x1

    goto :goto_0
.end method

.method private c(I)V
    .locals 6
    .param p1, "nbytes"    # I

    .prologue
    .line 97
    iget-object v3, p0, Lar/com/hjg/pngj/r;->h:Lar/com/hjg/pngj/s;

    iget v3, v3, Lar/com/hjg/pngj/s;->k:I

    rsub-int/lit8 v1, v3, 0x1

    .local v1, "j":I
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    if-gt v0, p1, :cond_1

    .line 98
    if-lez v1, :cond_0

    iget-object v3, p0, Lar/com/hjg/pngj/r;->f:[B

    aget-byte v3, v3, v1

    and-int/lit16 v2, v3, 0xff

    .line 99
    .local v2, "x":I
    :goto_1
    iget-object v3, p0, Lar/com/hjg/pngj/r;->f:[B

    iget-object v4, p0, Lar/com/hjg/pngj/r;->a:[B

    aget-byte v4, v4, v0

    iget-object v5, p0, Lar/com/hjg/pngj/r;->g:[B

    aget-byte v5, v5, v0

    and-int/lit16 v5, v5, 0xff

    add-int/2addr v5, v2

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v3, v0

    .line 97
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 98
    .end local v2    # "x":I
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 101
    :cond_1
    return-void
.end method

.method private d(I)V
    .locals 3
    .param p1, "nbytes"    # I

    .prologue
    .line 104
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    if-gt v0, p1, :cond_0

    .line 105
    iget-object v1, p0, Lar/com/hjg/pngj/r;->f:[B

    iget-object v2, p0, Lar/com/hjg/pngj/r;->a:[B

    aget-byte v2, v2, v0

    aput-byte v2, v1, v0

    .line 104
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 107
    :cond_0
    return-void
.end method

.method private e(I)V
    .locals 8
    .param p1, "nbytes"    # I

    .prologue
    const/4 v4, 0x0

    .line 111
    iget-object v5, p0, Lar/com/hjg/pngj/r;->h:Lar/com/hjg/pngj/s;

    iget v5, v5, Lar/com/hjg/pngj/s;->k:I

    rsub-int/lit8 v1, v5, 0x1

    .local v1, "j":I
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    if-gt v0, p1, :cond_2

    .line 112
    if-lez v1, :cond_0

    iget-object v5, p0, Lar/com/hjg/pngj/r;->f:[B

    aget-byte v5, v5, v1

    and-int/lit16 v2, v5, 0xff

    .line 113
    .local v2, "x":I
    :goto_1
    if-lez v1, :cond_1

    iget-object v5, p0, Lar/com/hjg/pngj/r;->g:[B

    aget-byte v5, v5, v1

    and-int/lit16 v3, v5, 0xff

    .line 114
    .local v3, "y":I
    :goto_2
    iget-object v5, p0, Lar/com/hjg/pngj/r;->f:[B

    iget-object v6, p0, Lar/com/hjg/pngj/r;->a:[B

    aget-byte v6, v6, v0

    iget-object v7, p0, Lar/com/hjg/pngj/r;->g:[B

    aget-byte v7, v7, v0

    and-int/lit16 v7, v7, 0xff

    invoke-static {v2, v7, v3}, Lar/com/hjg/pngj/x;->b(III)I

    move-result v7

    add-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v5, v0

    .line 111
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v2    # "x":I
    .end local v3    # "y":I
    :cond_0
    move v2, v4

    .line 112
    goto :goto_1

    .restart local v2    # "x":I
    :cond_1
    move v3, v4

    .line 113
    goto :goto_2

    .line 118
    .end local v2    # "x":I
    :cond_2
    return-void
.end method

.method private f(I)V
    .locals 5
    .param p1, "nbytes"    # I

    .prologue
    .line 122
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lar/com/hjg/pngj/r;->h:Lar/com/hjg/pngj/s;

    iget v2, v2, Lar/com/hjg/pngj/s;->k:I

    if-gt v0, v2, :cond_0

    .line 123
    iget-object v2, p0, Lar/com/hjg/pngj/r;->f:[B

    iget-object v3, p0, Lar/com/hjg/pngj/r;->a:[B

    aget-byte v3, v3, v0

    aput-byte v3, v2, v0

    .line 122
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 125
    :cond_0
    const/4 v1, 0x1

    .local v1, "j":I
    iget-object v2, p0, Lar/com/hjg/pngj/r;->h:Lar/com/hjg/pngj/s;

    iget v2, v2, Lar/com/hjg/pngj/s;->k:I

    add-int/lit8 v0, v2, 0x1

    :goto_1
    if-gt v0, p1, :cond_1

    .line 126
    iget-object v2, p0, Lar/com/hjg/pngj/r;->f:[B

    iget-object v3, p0, Lar/com/hjg/pngj/r;->a:[B

    aget-byte v3, v3, v0

    iget-object v4, p0, Lar/com/hjg/pngj/r;->f:[B

    aget-byte v4, v4, v1

    add-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 125
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 128
    :cond_1
    return-void
.end method

.method private g(I)V
    .locals 4
    .param p1, "nbytes"    # I

    .prologue
    .line 131
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    if-gt v0, p1, :cond_0

    .line 132
    iget-object v1, p0, Lar/com/hjg/pngj/r;->f:[B

    iget-object v2, p0, Lar/com/hjg/pngj/r;->a:[B

    aget-byte v2, v2, v0

    iget-object v3, p0, Lar/com/hjg/pngj/r;->g:[B

    aget-byte v3, v3, v0

    add-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 131
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 134
    :cond_0
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 3

    .prologue
    .line 141
    invoke-super {p0}, Lar/com/hjg/pngj/g;->a()V

    .line 142
    iget-object v0, p0, Lar/com/hjg/pngj/r;->j:Lar/com/hjg/pngj/ag;

    invoke-virtual {p0}, Lar/com/hjg/pngj/r;->n()I

    move-result v1

    invoke-virtual {v0, v1}, Lar/com/hjg/pngj/ag;->a(I)V

    .line 143
    invoke-virtual {p0}, Lar/com/hjg/pngj/r;->r()V

    .line 144
    iget-object v0, p0, Lar/com/hjg/pngj/r;->j:Lar/com/hjg/pngj/ag;

    iget-object v1, p0, Lar/com/hjg/pngj/r;->f:[B

    iget-object v2, p0, Lar/com/hjg/pngj/r;->j:Lar/com/hjg/pngj/ag;

    iget v2, v2, Lar/com/hjg/pngj/ag;->m:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Lar/com/hjg/pngj/ag;->a([BI)V

    .line 145
    return-void
.end method

.method varargs a([Ljava/util/zip/Checksum;)V
    .locals 7
    .param p1, "idatCrcs"    # [Ljava/util/zip/Checksum;

    .prologue
    .line 220
    move-object v0, p1

    .local v0, "arr$":[Ljava/util/zip/Checksum;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v2, v0, v1

    .line 221
    .local v2, "idatCrca":Ljava/util/zip/Checksum;
    if-eqz v2, :cond_0

    .line 222
    invoke-virtual {p0}, Lar/com/hjg/pngj/r;->t()[B

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {p0}, Lar/com/hjg/pngj/r;->m()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-interface {v2, v4, v5, v6}, Ljava/util/zip/Checksum;->update([BII)V

    .line 220
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 223
    .end local v2    # "idatCrca":Ljava/util/zip/Checksum;
    :cond_1
    return-void
.end method

.method protected b()I
    .locals 1

    .prologue
    .line 163
    invoke-virtual {p0}, Lar/com/hjg/pngj/r;->s()I

    move-result v0

    .line 164
    .local v0, "bytesNextRow":I
    return v0
.end method

.method protected b(I)V
    .locals 6
    .param p1, "nbytes"    # I

    .prologue
    const/4 v5, 0x0

    .line 57
    iget-object v3, p0, Lar/com/hjg/pngj/r;->f:[B

    if-eqz v3, :cond_0

    iget-object v3, p0, Lar/com/hjg/pngj/r;->f:[B

    array-length v3, v3

    iget-object v4, p0, Lar/com/hjg/pngj/r;->a:[B

    array-length v4, v4

    if-ge v3, v4, :cond_1

    .line 58
    :cond_0
    iget-object v3, p0, Lar/com/hjg/pngj/r;->a:[B

    array-length v3, v3

    new-array v3, v3, [B

    iput-object v3, p0, Lar/com/hjg/pngj/r;->f:[B

    .line 59
    iget-object v3, p0, Lar/com/hjg/pngj/r;->a:[B

    array-length v3, v3

    new-array v3, v3, [B

    iput-object v3, p0, Lar/com/hjg/pngj/r;->g:[B

    .line 61
    :cond_1
    iget-object v3, p0, Lar/com/hjg/pngj/r;->j:Lar/com/hjg/pngj/ag;

    iget v3, v3, Lar/com/hjg/pngj/ag;->j:I

    if-nez v3, :cond_2

    .line 62
    iget-object v3, p0, Lar/com/hjg/pngj/r;->f:[B

    invoke-static {v3, v5}, Ljava/util/Arrays;->fill([BB)V

    .line 64
    :cond_2
    iget-object v2, p0, Lar/com/hjg/pngj/r;->f:[B

    .line 65
    .local v2, "tmp":[B
    iget-object v3, p0, Lar/com/hjg/pngj/r;->g:[B

    iput-object v3, p0, Lar/com/hjg/pngj/r;->f:[B

    .line 66
    iput-object v2, p0, Lar/com/hjg/pngj/r;->g:[B

    .line 68
    iget-object v3, p0, Lar/com/hjg/pngj/r;->a:[B

    aget-byte v1, v3, v5

    .line 69
    .local v1, "ftn":I
    invoke-static {v1}, Lar/com/hjg/pngj/FilterType;->isValidStandard(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 70
    new-instance v3, Lar/com/hjg/pngj/PngjInputException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Filter type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " invalid"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lar/com/hjg/pngj/PngjInputException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 71
    :cond_3
    invoke-static {v1}, Lar/com/hjg/pngj/FilterType;->getByVal(I)Lar/com/hjg/pngj/FilterType;

    move-result-object v0

    .line 72
    .local v0, "ft":Lar/com/hjg/pngj/FilterType;
    iget-object v3, p0, Lar/com/hjg/pngj/r;->k:[I

    aget v4, v3, v1

    add-int/lit8 v4, v4, 0x1

    aput v4, v3, v1

    .line 73
    iget-object v3, p0, Lar/com/hjg/pngj/r;->f:[B

    iget-object v4, p0, Lar/com/hjg/pngj/r;->a:[B

    aget-byte v4, v4, v5

    aput-byte v4, v3, v5

    .line 74
    sget-object v3, Lar/com/hjg/pngj/r$1;->a:[I

    invoke-virtual {v0}, Lar/com/hjg/pngj/FilterType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 91
    new-instance v3, Lar/com/hjg/pngj/PngjInputException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Filter type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not implemented"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lar/com/hjg/pngj/PngjInputException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 76
    :pswitch_0
    invoke-direct {p0, p1}, Lar/com/hjg/pngj/r;->d(I)V

    .line 93
    :goto_0
    return-void

    .line 79
    :pswitch_1
    invoke-direct {p0, p1}, Lar/com/hjg/pngj/r;->f(I)V

    goto :goto_0

    .line 82
    :pswitch_2
    invoke-direct {p0, p1}, Lar/com/hjg/pngj/r;->g(I)V

    goto :goto_0

    .line 85
    :pswitch_3
    invoke-direct {p0, p1}, Lar/com/hjg/pngj/r;->c(I)V

    goto :goto_0

    .line 88
    :pswitch_4
    invoke-direct {p0, p1}, Lar/com/hjg/pngj/r;->e(I)V

    goto :goto_0

    .line 74
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected c()V
    .locals 0

    .prologue
    .line 169
    invoke-super {p0}, Lar/com/hjg/pngj/g;->c()V

    .line 170
    return-void
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 197
    invoke-virtual {p0}, Lar/com/hjg/pngj/r;->e()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 227
    invoke-super {p0}, Lar/com/hjg/pngj/g;->j()V

    .line 228
    iput-object v0, p0, Lar/com/hjg/pngj/r;->f:[B

    .line 229
    iput-object v0, p0, Lar/com/hjg/pngj/r;->g:[B

    .line 230
    return-void
.end method

.method public r()V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lar/com/hjg/pngj/r;->j:Lar/com/hjg/pngj/ag;

    iget v0, v0, Lar/com/hjg/pngj/ag;->m:I

    invoke-virtual {p0, v0}, Lar/com/hjg/pngj/r;->b(I)V

    .line 53
    return-void
.end method

.method public s()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 184
    iget-object v2, p0, Lar/com/hjg/pngj/r;->i:Lar/com/hjg/pngj/h;

    if-nez v2, :cond_2

    .line 185
    invoke-virtual {p0}, Lar/com/hjg/pngj/r;->n()I

    move-result v2

    iget-object v3, p0, Lar/com/hjg/pngj/r;->h:Lar/com/hjg/pngj/s;

    iget v3, v3, Lar/com/hjg/pngj/s;->c:I

    add-int/lit8 v3, v3, -0x1

    if-lt v2, v3, :cond_1

    .line 190
    .local v0, "bytesNextRow":I
    :goto_0
    invoke-virtual {p0}, Lar/com/hjg/pngj/r;->o()Z

    move-result v2

    if-nez v2, :cond_0

    .line 191
    invoke-virtual {p0, v0}, Lar/com/hjg/pngj/r;->a(I)V

    .line 193
    :cond_0
    return v0

    .line 185
    .end local v0    # "bytesNextRow":I
    :cond_1
    iget-object v2, p0, Lar/com/hjg/pngj/r;->h:Lar/com/hjg/pngj/s;

    iget v2, v2, Lar/com/hjg/pngj/s;->l:I

    add-int/lit8 v0, v2, 0x1

    goto :goto_0

    .line 187
    :cond_2
    iget-object v2, p0, Lar/com/hjg/pngj/r;->i:Lar/com/hjg/pngj/h;

    invoke-virtual {v2}, Lar/com/hjg/pngj/h;->a()Z

    move-result v1

    .line 188
    .local v1, "more":Z
    if-eqz v1, :cond_3

    iget-object v2, p0, Lar/com/hjg/pngj/r;->i:Lar/com/hjg/pngj/h;

    invoke-virtual {v2}, Lar/com/hjg/pngj/h;->i()I

    move-result v2

    add-int/lit8 v0, v2, 0x1

    .restart local v0    # "bytesNextRow":I
    :cond_3
    goto :goto_0
.end method

.method public t()[B
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lar/com/hjg/pngj/r;->f:[B

    return-object v0
.end method

.method public u()Lar/com/hjg/pngj/h;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lar/com/hjg/pngj/r;->i:Lar/com/hjg/pngj/h;

    return-object v0
.end method

.method public v()[I
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lar/com/hjg/pngj/r;->k:[I

    return-object v0
.end method
