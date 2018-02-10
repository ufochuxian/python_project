.class public Lar/com/hjg/pngj/a/h;
.super Lar/com/hjg/pngj/a/g;
.source "SourceFile"


# instance fields
.field protected j:[B

.field protected k:[B

.field protected l:[B

.field protected m:Lar/com/hjg/pngj/a/f;

.field protected n:Lar/com/hjg/pngj/FilterType;

.field protected o:I

.field protected p:I

.field protected q:D

.field protected r:I


# direct methods
.method public constructor <init>(Lar/com/hjg/pngj/s;)V
    .locals 1
    .param p1, "imgInfo"    # Lar/com/hjg/pngj/s;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lar/com/hjg/pngj/a/g;-><init>(Lar/com/hjg/pngj/s;)V

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lar/com/hjg/pngj/a/h;->r:I

    .line 34
    new-instance v0, Lar/com/hjg/pngj/a/f;

    invoke-direct {v0, p1}, Lar/com/hjg/pngj/a/f;-><init>(Lar/com/hjg/pngj/s;)V

    iput-object v0, p0, Lar/com/hjg/pngj/a/h;->m:Lar/com/hjg/pngj/a/f;

    .line 35
    return-void
.end method


# virtual methods
.method public a(D)V
    .locals 1
    .param p1, "preferenceForNone"    # D

    .prologue
    .line 141
    iget-object v0, p0, Lar/com/hjg/pngj/a/h;->m:Lar/com/hjg/pngj/a/f;

    invoke-virtual {v0, p1, p2}, Lar/com/hjg/pngj/a/f;->a(D)V

    .line 142
    return-void
.end method

.method public a([D)V
    .locals 1
    .param p1, "weights"    # [D

    .prologue
    .line 155
    iget-object v0, p0, Lar/com/hjg/pngj/a/h;->m:Lar/com/hjg/pngj/a/f;

    invoke-virtual {v0, p1}, Lar/com/hjg/pngj/a/f;->a([D)V

    .line 156
    return-void
.end method

.method public a()[B
    .locals 1

    .prologue
    .line 127
    iget-boolean v0, p0, Lar/com/hjg/pngj/a/h;->g:Z

    if-nez v0, :cond_0

    .line 128
    invoke-virtual {p0}, Lar/com/hjg/pngj/a/h;->b()V

    .line 129
    :cond_0
    iget-object v0, p0, Lar/com/hjg/pngj/a/h;->j:[B

    return-object v0
.end method

.method public b(D)V
    .locals 1
    .param p1, "m"    # D

    .prologue
    .line 148
    iget-object v0, p0, Lar/com/hjg/pngj/a/h;->m:Lar/com/hjg/pngj/a/f;

    invoke-virtual {v0, p1, p2}, Lar/com/hjg/pngj/a/f;->b(D)V

    .line 149
    return-void
.end method

.method protected c()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 39
    invoke-super {p0}, Lar/com/hjg/pngj/a/g;->c()V

    .line 41
    iget-object v0, p0, Lar/com/hjg/pngj/a/h;->j:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lar/com/hjg/pngj/a/h;->j:[B

    array-length v0, v0

    iget v1, p0, Lar/com/hjg/pngj/a/h;->b:I

    if-ge v0, v1, :cond_1

    .line 42
    :cond_0
    iget v0, p0, Lar/com/hjg/pngj/a/h;->b:I

    new-array v0, v0, [B

    iput-object v0, p0, Lar/com/hjg/pngj/a/h;->j:[B

    .line 43
    :cond_1
    iget-object v0, p0, Lar/com/hjg/pngj/a/h;->l:[B

    if-eqz v0, :cond_2

    iget-object v0, p0, Lar/com/hjg/pngj/a/h;->l:[B

    array-length v0, v0

    iget v1, p0, Lar/com/hjg/pngj/a/h;->b:I

    if-ge v0, v1, :cond_3

    .line 44
    :cond_2
    iget v0, p0, Lar/com/hjg/pngj/a/h;->b:I

    new-array v0, v0, [B

    iput-object v0, p0, Lar/com/hjg/pngj/a/h;->l:[B

    .line 45
    :cond_3
    iget-object v0, p0, Lar/com/hjg/pngj/a/h;->k:[B

    if-eqz v0, :cond_4

    iget-object v0, p0, Lar/com/hjg/pngj/a/h;->k:[B

    array-length v0, v0

    iget v1, p0, Lar/com/hjg/pngj/a/h;->b:I

    if-ge v0, v1, :cond_9

    .line 46
    :cond_4
    iget v0, p0, Lar/com/hjg/pngj/a/h;->b:I

    new-array v0, v0, [B

    iput-object v0, p0, Lar/com/hjg/pngj/a/h;->k:[B

    .line 51
    :goto_0
    iget-object v0, p0, Lar/com/hjg/pngj/a/h;->a:Lar/com/hjg/pngj/s;

    iget v0, v0, Lar/com/hjg/pngj/s;->b:I

    if-ge v0, v5, :cond_5

    iget-object v0, p0, Lar/com/hjg/pngj/a/h;->h:Lar/com/hjg/pngj/FilterType;

    invoke-static {v0}, Lar/com/hjg/pngj/FilterType;->isValidStandard(Lar/com/hjg/pngj/FilterType;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 52
    sget-object v0, Lar/com/hjg/pngj/FilterType;->FILTER_DEFAULT:Lar/com/hjg/pngj/FilterType;

    iput-object v0, p0, Lar/com/hjg/pngj/a/h;->h:Lar/com/hjg/pngj/FilterType;

    .line 53
    :cond_5
    iget-object v0, p0, Lar/com/hjg/pngj/a/h;->a:Lar/com/hjg/pngj/s;

    iget v0, v0, Lar/com/hjg/pngj/s;->c:I

    if-ge v0, v5, :cond_6

    iget-object v0, p0, Lar/com/hjg/pngj/a/h;->h:Lar/com/hjg/pngj/FilterType;

    invoke-static {v0}, Lar/com/hjg/pngj/FilterType;->isValidStandard(Lar/com/hjg/pngj/FilterType;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 54
    sget-object v0, Lar/com/hjg/pngj/FilterType;->FILTER_DEFAULT:Lar/com/hjg/pngj/FilterType;

    iput-object v0, p0, Lar/com/hjg/pngj/a/h;->h:Lar/com/hjg/pngj/FilterType;

    .line 56
    :cond_6
    iget-object v0, p0, Lar/com/hjg/pngj/a/h;->a:Lar/com/hjg/pngj/s;

    invoke-virtual {v0}, Lar/com/hjg/pngj/s;->a()J

    move-result-wide v0

    const-wide/16 v2, 0x400

    cmp-long v0, v0, v2

    if-gtz v0, :cond_7

    iget-object v0, p0, Lar/com/hjg/pngj/a/h;->h:Lar/com/hjg/pngj/FilterType;

    invoke-static {v0}, Lar/com/hjg/pngj/FilterType;->isValidStandard(Lar/com/hjg/pngj/FilterType;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 57
    invoke-virtual {p0}, Lar/com/hjg/pngj/a/h;->k()Lar/com/hjg/pngj/FilterType;

    move-result-object v0

    iput-object v0, p0, Lar/com/hjg/pngj/a/h;->h:Lar/com/hjg/pngj/FilterType;

    .line 59
    :cond_7
    iget-object v0, p0, Lar/com/hjg/pngj/a/h;->h:Lar/com/hjg/pngj/FilterType;

    invoke-static {v0}, Lar/com/hjg/pngj/FilterType;->isAdaptive(Lar/com/hjg/pngj/FilterType;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 61
    iput v4, p0, Lar/com/hjg/pngj/a/h;->r:I

    .line 62
    iget-object v0, p0, Lar/com/hjg/pngj/a/h;->h:Lar/com/hjg/pngj/FilterType;

    sget-object v1, Lar/com/hjg/pngj/FilterType;->FILTER_ADAPTIVE_FAST:Lar/com/hjg/pngj/FilterType;

    if-ne v0, v1, :cond_a

    .line 63
    const/16 v0, 0xc8

    iput v0, p0, Lar/com/hjg/pngj/a/h;->o:I

    .line 64
    iput v5, p0, Lar/com/hjg/pngj/a/h;->p:I

    .line 65
    const-wide/high16 v0, 0x3fd0000000000000L    # 0.25

    iput-wide v0, p0, Lar/com/hjg/pngj/a/h;->q:D

    .line 77
    :cond_8
    :goto_1
    return-void

    .line 48
    :cond_9
    iget-object v0, p0, Lar/com/hjg/pngj/a/h;->k:[B

    invoke-static {v0, v4}, Ljava/util/Arrays;->fill([BB)V

    goto :goto_0

    .line 66
    :cond_a
    iget-object v0, p0, Lar/com/hjg/pngj/a/h;->h:Lar/com/hjg/pngj/FilterType;

    sget-object v1, Lar/com/hjg/pngj/FilterType;->FILTER_ADAPTIVE_MEDIUM:Lar/com/hjg/pngj/FilterType;

    if-ne v0, v1, :cond_b

    .line 67
    const/16 v0, 0x8

    iput v0, p0, Lar/com/hjg/pngj/a/h;->o:I

    .line 68
    const/16 v0, 0x20

    iput v0, p0, Lar/com/hjg/pngj/a/h;->p:I

    .line 69
    const-wide v0, 0x3f8999999999999aL    # 0.0125

    iput-wide v0, p0, Lar/com/hjg/pngj/a/h;->q:D

    goto :goto_1

    .line 70
    :cond_b
    iget-object v0, p0, Lar/com/hjg/pngj/a/h;->h:Lar/com/hjg/pngj/FilterType;

    sget-object v1, Lar/com/hjg/pngj/FilterType;->FILTER_ADAPTIVE_FULL:Lar/com/hjg/pngj/FilterType;

    if-ne v0, v1, :cond_c

    .line 71
    iput v4, p0, Lar/com/hjg/pngj/a/h;->o:I

    .line 72
    const/16 v0, 0x80

    iput v0, p0, Lar/com/hjg/pngj/a/h;->p:I

    .line 73
    const-wide v0, 0x3f81111111111111L    # 0.008333333333333333

    iput-wide v0, p0, Lar/com/hjg/pngj/a/h;->q:D

    goto :goto_1

    .line 75
    :cond_c
    new-instance v0, Lar/com/hjg/pngj/PngjOutputException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad filter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lar/com/hjg/pngj/a/h;->h:Lar/com/hjg/pngj/FilterType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjOutputException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected c([B)V
    .locals 5
    .param p1, "rowb"    # [B

    .prologue
    .line 81
    iget-object v2, p0, Lar/com/hjg/pngj/a/h;->j:[B

    if-eq p1, v2, :cond_0

    .line 82
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "??"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 83
    :cond_0
    invoke-virtual {p0}, Lar/com/hjg/pngj/a/h;->m()V

    .line 84
    iget-object v2, p0, Lar/com/hjg/pngj/a/h;->n:Lar/com/hjg/pngj/FilterType;

    iget-object v3, p0, Lar/com/hjg/pngj/a/h;->k:[B

    iget-object v4, p0, Lar/com/hjg/pngj/a/h;->l:[B

    invoke-virtual {p0, v2, p1, v3, v4}, Lar/com/hjg/pngj/a/h;->a(Lar/com/hjg/pngj/FilterType;[B[B[B)[B

    move-result-object v1

    .line 85
    .local v1, "filtered":[B
    invoke-virtual {p0, v1}, Lar/com/hjg/pngj/a/h;->b([B)V

    .line 87
    iget-object v0, p0, Lar/com/hjg/pngj/a/h;->j:[B

    .line 88
    .local v0, "aux":[B
    iget-object v2, p0, Lar/com/hjg/pngj/a/h;->k:[B

    iput-object v2, p0, Lar/com/hjg/pngj/a/h;->j:[B

    .line 89
    iput-object v0, p0, Lar/com/hjg/pngj/a/h;->k:[B

    .line 90
    return-void
.end method

.method public d()V
    .locals 0

    .prologue
    .line 134
    invoke-super {p0}, Lar/com/hjg/pngj/a/g;->d()V

    .line 135
    return-void
.end method

.method protected m()V
    .locals 10

    .prologue
    const/4 v4, 0x0

    .line 94
    invoke-virtual {p0}, Lar/com/hjg/pngj/a/h;->g()Lar/com/hjg/pngj/FilterType;

    move-result-object v5

    invoke-static {v5}, Lar/com/hjg/pngj/FilterType;->isValidStandard(Lar/com/hjg/pngj/FilterType;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 95
    invoke-virtual {p0}, Lar/com/hjg/pngj/a/h;->g()Lar/com/hjg/pngj/FilterType;

    move-result-object v5

    iput-object v5, p0, Lar/com/hjg/pngj/a/h;->n:Lar/com/hjg/pngj/FilterType;

    .line 120
    :cond_0
    :goto_0
    iget v5, p0, Lar/com/hjg/pngj/a/h;->i:I

    if-nez v5, :cond_1

    iget-object v5, p0, Lar/com/hjg/pngj/a/h;->n:Lar/com/hjg/pngj/FilterType;

    sget-object v6, Lar/com/hjg/pngj/FilterType;->FILTER_NONE:Lar/com/hjg/pngj/FilterType;

    if-eq v5, v6, :cond_1

    iget-object v5, p0, Lar/com/hjg/pngj/a/h;->n:Lar/com/hjg/pngj/FilterType;

    sget-object v6, Lar/com/hjg/pngj/FilterType;->FILTER_SUB:Lar/com/hjg/pngj/FilterType;

    if-eq v5, v6, :cond_1

    .line 122
    sget-object v5, Lar/com/hjg/pngj/FilterType;->FILTER_SUB:Lar/com/hjg/pngj/FilterType;

    iput-object v5, p0, Lar/com/hjg/pngj/a/h;->n:Lar/com/hjg/pngj/FilterType;

    .line 123
    :cond_1
    return-void

    .line 96
    :cond_2
    invoke-virtual {p0}, Lar/com/hjg/pngj/a/h;->g()Lar/com/hjg/pngj/FilterType;

    move-result-object v5

    sget-object v6, Lar/com/hjg/pngj/FilterType;->FILTER_PRESERVE:Lar/com/hjg/pngj/FilterType;

    if-ne v5, v6, :cond_3

    .line 97
    iget-object v5, p0, Lar/com/hjg/pngj/a/h;->j:[B

    aget-byte v5, v5, v4

    invoke-static {v5}, Lar/com/hjg/pngj/FilterType;->getByVal(I)Lar/com/hjg/pngj/FilterType;

    move-result-object v5

    iput-object v5, p0, Lar/com/hjg/pngj/a/h;->n:Lar/com/hjg/pngj/FilterType;

    goto :goto_0

    .line 98
    :cond_3
    invoke-virtual {p0}, Lar/com/hjg/pngj/a/h;->g()Lar/com/hjg/pngj/FilterType;

    move-result-object v5

    sget-object v6, Lar/com/hjg/pngj/FilterType;->FILTER_CYCLIC:Lar/com/hjg/pngj/FilterType;

    if-ne v5, v6, :cond_4

    .line 99
    iget v5, p0, Lar/com/hjg/pngj/a/h;->i:I

    rem-int/lit8 v5, v5, 0x5

    invoke-static {v5}, Lar/com/hjg/pngj/FilterType;->getByVal(I)Lar/com/hjg/pngj/FilterType;

    move-result-object v5

    iput-object v5, p0, Lar/com/hjg/pngj/a/h;->n:Lar/com/hjg/pngj/FilterType;

    goto :goto_0

    .line 100
    :cond_4
    invoke-virtual {p0}, Lar/com/hjg/pngj/a/h;->g()Lar/com/hjg/pngj/FilterType;

    move-result-object v5

    sget-object v6, Lar/com/hjg/pngj/FilterType;->FILTER_DEFAULT:Lar/com/hjg/pngj/FilterType;

    if-ne v5, v6, :cond_5

    .line 101
    invoke-virtual {p0}, Lar/com/hjg/pngj/a/h;->k()Lar/com/hjg/pngj/FilterType;

    move-result-object v5

    invoke-virtual {p0, v5}, Lar/com/hjg/pngj/a/h;->a(Lar/com/hjg/pngj/FilterType;)V

    .line 102
    invoke-virtual {p0}, Lar/com/hjg/pngj/a/h;->g()Lar/com/hjg/pngj/FilterType;

    move-result-object v5

    iput-object v5, p0, Lar/com/hjg/pngj/a/h;->n:Lar/com/hjg/pngj/FilterType;

    goto :goto_0

    .line 103
    :cond_5
    invoke-virtual {p0}, Lar/com/hjg/pngj/a/h;->g()Lar/com/hjg/pngj/FilterType;

    move-result-object v5

    invoke-static {v5}, Lar/com/hjg/pngj/FilterType;->isAdaptive(Lar/com/hjg/pngj/FilterType;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 104
    iget v5, p0, Lar/com/hjg/pngj/a/h;->i:I

    iget v6, p0, Lar/com/hjg/pngj/a/h;->r:I

    if-ne v5, v6, :cond_0

    .line 105
    invoke-static {}, Lar/com/hjg/pngj/FilterType;->getAllStandard()[Lar/com/hjg/pngj/FilterType;

    move-result-object v0

    .local v0, "arr$":[Lar/com/hjg/pngj/FilterType;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_6

    aget-object v1, v0, v2

    .line 106
    .local v1, "ftype":Lar/com/hjg/pngj/FilterType;
    iget-object v5, p0, Lar/com/hjg/pngj/a/h;->m:Lar/com/hjg/pngj/a/f;

    iget-object v6, p0, Lar/com/hjg/pngj/a/h;->j:[B

    iget-object v7, p0, Lar/com/hjg/pngj/a/h;->k:[B

    iget v8, p0, Lar/com/hjg/pngj/a/h;->i:I

    invoke-virtual {v5, v1, v6, v7, v8}, Lar/com/hjg/pngj/a/f;->a(Lar/com/hjg/pngj/FilterType;[B[BI)V

    .line 105
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 107
    .end local v1    # "ftype":Lar/com/hjg/pngj/FilterType;
    :cond_6
    iget-object v5, p0, Lar/com/hjg/pngj/a/h;->m:Lar/com/hjg/pngj/a/f;

    invoke-virtual {v5}, Lar/com/hjg/pngj/a/f;->a()Lar/com/hjg/pngj/FilterType;

    move-result-object v5

    iput-object v5, p0, Lar/com/hjg/pngj/a/h;->n:Lar/com/hjg/pngj/FilterType;

    .line 108
    iget v5, p0, Lar/com/hjg/pngj/a/h;->i:I

    iget v6, p0, Lar/com/hjg/pngj/a/h;->p:I

    if-lt v5, v6, :cond_7

    iget v5, p0, Lar/com/hjg/pngj/a/h;->i:I

    iget v6, p0, Lar/com/hjg/pngj/a/h;->p:I

    sub-int/2addr v5, v6

    int-to-double v6, v5

    iget-wide v8, p0, Lar/com/hjg/pngj/a/h;->q:D

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-int v4, v6

    .line 111
    .local v4, "skip":I
    :cond_7
    iget v5, p0, Lar/com/hjg/pngj/a/h;->o:I

    if-le v4, v5, :cond_8

    .line 112
    iget v4, p0, Lar/com/hjg/pngj/a/h;->o:I

    .line 113
    :cond_8
    iget v5, p0, Lar/com/hjg/pngj/a/h;->i:I

    if-nez v5, :cond_9

    .line 114
    const/4 v4, 0x0

    .line 115
    :cond_9
    iget v5, p0, Lar/com/hjg/pngj/a/h;->i:I

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v5, v4

    iput v5, p0, Lar/com/hjg/pngj/a/h;->r:I

    goto/16 :goto_0

    .line 118
    .end local v0    # "arr$":[Lar/com/hjg/pngj/FilterType;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "skip":I
    :cond_a
    new-instance v5, Lar/com/hjg/pngj/PngjOutputException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "not implemented filter: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lar/com/hjg/pngj/a/h;->g()Lar/com/hjg/pngj/FilterType;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lar/com/hjg/pngj/PngjOutputException;-><init>(Ljava/lang/String;)V

    throw v5
.end method
