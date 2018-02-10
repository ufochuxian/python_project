.class public Lar/com/hjg/pngj/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lar/com/hjg/pngj/s;

.field b:I

.field c:I

.field d:I

.field e:I

.field f:I

.field g:I

.field h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:Z


# direct methods
.method public constructor <init>(Lar/com/hjg/pngj/s;)V
    .locals 2
    .param p1, "iminfo"    # Lar/com/hjg/pngj/s;

    .prologue
    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-boolean v1, p0, Lar/com/hjg/pngj/h;->o:Z

    .line 20
    iput-object p1, p0, Lar/com/hjg/pngj/h;->a:Lar/com/hjg/pngj/s;

    .line 21
    iput v1, p0, Lar/com/hjg/pngj/h;->i:I

    .line 22
    iput v0, p0, Lar/com/hjg/pngj/h;->l:I

    .line 23
    iput v0, p0, Lar/com/hjg/pngj/h;->m:I

    .line 24
    iput v1, p0, Lar/com/hjg/pngj/h;->n:I

    .line 25
    iput-boolean v1, p0, Lar/com/hjg/pngj/h;->o:Z

    .line 26
    iput v1, p0, Lar/com/hjg/pngj/h;->h:I

    .line 27
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lar/com/hjg/pngj/h;->a(I)V

    .line 28
    invoke-direct {p0, v1}, Lar/com/hjg/pngj/h;->c(I)V

    .line 29
    return-void
.end method

.method static b(I)[B
    .locals 3
    .param p0, "p"    # I

    .prologue
    const/4 v0, 0x4

    .line 81
    packed-switch p0, :pswitch_data_0

    .line 97
    new-instance v0, Lar/com/hjg/pngj/PngjExceptionInternal;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad interlace pass"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjExceptionInternal;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :pswitch_0
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    .line 95
    :goto_0
    return-object v0

    .line 85
    :pswitch_1
    new-array v0, v0, [B

    fill-array-data v0, :array_1

    goto :goto_0

    .line 87
    :pswitch_2
    new-array v0, v0, [B

    fill-array-data v0, :array_2

    goto :goto_0

    .line 89
    :pswitch_3
    new-array v0, v0, [B

    fill-array-data v0, :array_3

    goto :goto_0

    .line 91
    :pswitch_4
    new-array v0, v0, [B

    fill-array-data v0, :array_4

    goto :goto_0

    .line 93
    :pswitch_5
    new-array v0, v0, [B

    fill-array-data v0, :array_5

    goto :goto_0

    .line 95
    :pswitch_6
    new-array v0, v0, [B

    fill-array-data v0, :array_6

    goto :goto_0

    .line 81
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 83
    :array_0
    .array-data 1
        0x8t
        0x8t
        0x0t
        0x0t
    .end array-data

    .line 85
    :array_1
    .array-data 1
        0x8t
        0x8t
        0x4t
        0x0t
    .end array-data

    .line 87
    :array_2
    .array-data 1
        0x4t
        0x8t
        0x0t
        0x4t
    .end array-data

    .line 89
    :array_3
    .array-data 1
        0x4t
        0x4t
        0x2t
        0x0t
    .end array-data

    .line 91
    :array_4
    .array-data 1
        0x2t
        0x4t
        0x0t
        0x2t
    .end array-data

    .line 93
    :array_5
    .array-data 1
        0x2t
        0x2t
        0x1t
        0x0t
    .end array-data

    .line 95
    :array_6
    .array-data 1
        0x1t
        0x2t
        0x0t
        0x1t
    .end array-data
.end method

.method private c(I)V
    .locals 2
    .param p1, "n"    # I

    .prologue
    .line 33
    iput p1, p0, Lar/com/hjg/pngj/h;->l:I

    .line 34
    iget v0, p0, Lar/com/hjg/pngj/h;->b:I

    mul-int/2addr v0, p1

    iget v1, p0, Lar/com/hjg/pngj/h;->d:I

    add-int/2addr v0, v1

    iput v0, p0, Lar/com/hjg/pngj/h;->m:I

    .line 35
    iget v0, p0, Lar/com/hjg/pngj/h;->m:I

    if-ltz v0, :cond_0

    iget v0, p0, Lar/com/hjg/pngj/h;->m:I

    iget-object v1, p0, Lar/com/hjg/pngj/h;->a:Lar/com/hjg/pngj/s;

    iget v1, v1, Lar/com/hjg/pngj/s;->c:I

    if-lt v0, v1, :cond_1

    .line 36
    :cond_0
    new-instance v0, Lar/com/hjg/pngj/PngjExceptionInternal;

    const-string v1, "bad row - this should not happen"

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjExceptionInternal;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_1
    return-void
.end method


# virtual methods
.method a(I)V
    .locals 4
    .param p1, "p"    # I

    .prologue
    const/4 v2, 0x0

    .line 64
    iget v1, p0, Lar/com/hjg/pngj/h;->i:I

    if-ne v1, p1, :cond_0

    .line 78
    :goto_0
    return-void

    .line 66
    :cond_0
    iput p1, p0, Lar/com/hjg/pngj/h;->i:I

    .line 67
    invoke-static {p1}, Lar/com/hjg/pngj/h;->b(I)[B

    move-result-object v0

    .line 68
    .local v0, "pp":[B
    aget-byte v1, v0, v2

    iput v1, p0, Lar/com/hjg/pngj/h;->c:I

    .line 69
    const/4 v1, 0x1

    aget-byte v1, v0, v1

    iput v1, p0, Lar/com/hjg/pngj/h;->b:I

    .line 70
    const/4 v1, 0x2

    aget-byte v1, v0, v1

    iput v1, p0, Lar/com/hjg/pngj/h;->e:I

    .line 71
    const/4 v1, 0x3

    aget-byte v1, v0, v1

    iput v1, p0, Lar/com/hjg/pngj/h;->d:I

    .line 72
    iget-object v1, p0, Lar/com/hjg/pngj/h;->a:Lar/com/hjg/pngj/s;

    iget v1, v1, Lar/com/hjg/pngj/s;->c:I

    iget v3, p0, Lar/com/hjg/pngj/h;->d:I

    if-le v1, v3, :cond_2

    iget-object v1, p0, Lar/com/hjg/pngj/h;->a:Lar/com/hjg/pngj/s;

    iget v1, v1, Lar/com/hjg/pngj/s;->c:I

    iget v3, p0, Lar/com/hjg/pngj/h;->b:I

    add-int/2addr v1, v3

    add-int/lit8 v1, v1, -0x1

    iget v3, p0, Lar/com/hjg/pngj/h;->d:I

    sub-int/2addr v1, v3

    iget v3, p0, Lar/com/hjg/pngj/h;->b:I

    div-int/2addr v1, v3

    :goto_1
    iput v1, p0, Lar/com/hjg/pngj/h;->j:I

    .line 73
    iget-object v1, p0, Lar/com/hjg/pngj/h;->a:Lar/com/hjg/pngj/s;

    iget v1, v1, Lar/com/hjg/pngj/s;->b:I

    iget v3, p0, Lar/com/hjg/pngj/h;->e:I

    if-le v1, v3, :cond_3

    iget-object v1, p0, Lar/com/hjg/pngj/h;->a:Lar/com/hjg/pngj/s;

    iget v1, v1, Lar/com/hjg/pngj/s;->b:I

    iget v3, p0, Lar/com/hjg/pngj/h;->c:I

    add-int/2addr v1, v3

    add-int/lit8 v1, v1, -0x1

    iget v3, p0, Lar/com/hjg/pngj/h;->e:I

    sub-int/2addr v1, v3

    iget v3, p0, Lar/com/hjg/pngj/h;->c:I

    div-int/2addr v1, v3

    :goto_2
    iput v1, p0, Lar/com/hjg/pngj/h;->k:I

    .line 74
    iget v1, p0, Lar/com/hjg/pngj/h;->k:I

    if-nez v1, :cond_1

    .line 75
    iput v2, p0, Lar/com/hjg/pngj/h;->j:I

    .line 76
    :cond_1
    iget v1, p0, Lar/com/hjg/pngj/h;->c:I

    iget-object v2, p0, Lar/com/hjg/pngj/h;->a:Lar/com/hjg/pngj/s;

    iget v2, v2, Lar/com/hjg/pngj/s;->e:I

    mul-int/2addr v1, v2

    iput v1, p0, Lar/com/hjg/pngj/h;->g:I

    .line 77
    iget v1, p0, Lar/com/hjg/pngj/h;->e:I

    iget-object v2, p0, Lar/com/hjg/pngj/h;->a:Lar/com/hjg/pngj/s;

    iget v2, v2, Lar/com/hjg/pngj/s;->e:I

    mul-int/2addr v1, v2

    iput v1, p0, Lar/com/hjg/pngj/h;->f:I

    goto :goto_0

    :cond_2
    move v1, v2

    .line 72
    goto :goto_1

    :cond_3
    move v1, v2

    .line 73
    goto :goto_2
.end method

.method a()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 41
    iget v2, p0, Lar/com/hjg/pngj/h;->n:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lar/com/hjg/pngj/h;->n:I

    .line 42
    iget v2, p0, Lar/com/hjg/pngj/h;->j:I

    if-eqz v2, :cond_0

    iget v2, p0, Lar/com/hjg/pngj/h;->l:I

    iget v3, p0, Lar/com/hjg/pngj/h;->j:I

    add-int/lit8 v3, v3, -0x1

    if-lt v2, v3, :cond_3

    .line 43
    :cond_0
    iget v2, p0, Lar/com/hjg/pngj/h;->i:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_1

    .line 44
    iput-boolean v1, p0, Lar/com/hjg/pngj/h;->o:Z

    .line 56
    :goto_0
    return v0

    .line 47
    :cond_1
    iget v2, p0, Lar/com/hjg/pngj/h;->i:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Lar/com/hjg/pngj/h;->a(I)V

    .line 48
    iget v2, p0, Lar/com/hjg/pngj/h;->j:I

    if-nez v2, :cond_2

    .line 49
    iget v0, p0, Lar/com/hjg/pngj/h;->n:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lar/com/hjg/pngj/h;->n:I

    .line 50
    invoke-virtual {p0}, Lar/com/hjg/pngj/h;->a()Z

    move-result v0

    goto :goto_0

    .line 52
    :cond_2
    invoke-direct {p0, v0}, Lar/com/hjg/pngj/h;->c(I)V

    :goto_1
    move v0, v1

    .line 56
    goto :goto_0

    .line 54
    :cond_3
    iget v0, p0, Lar/com/hjg/pngj/h;->l:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lar/com/hjg/pngj/h;->c(I)V

    goto :goto_1
.end method

.method b()Z
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Lar/com/hjg/pngj/h;->o:Z

    return v0
.end method

.method c()I
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lar/com/hjg/pngj/h;->l:I

    return v0
.end method

.method d()I
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lar/com/hjg/pngj/h;->m:I

    return v0
.end method

.method e()I
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Lar/com/hjg/pngj/h;->i:I

    return v0
.end method

.method f()I
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lar/com/hjg/pngj/h;->j:I

    return v0
.end method

.method g()I
    .locals 1

    .prologue
    .line 133
    iget v0, p0, Lar/com/hjg/pngj/h;->k:I

    return v0
.end method

.method public h()I
    .locals 1

    .prologue
    .line 137
    invoke-virtual {p0}, Lar/com/hjg/pngj/h;->g()I

    move-result v0

    return v0
.end method

.method public i()I
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lar/com/hjg/pngj/h;->a:Lar/com/hjg/pngj/s;

    iget v0, v0, Lar/com/hjg/pngj/s;->j:I

    invoke-virtual {p0}, Lar/com/hjg/pngj/h;->h()I

    move-result v1

    mul-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public j()I
    .locals 1

    .prologue
    .line 145
    iget v0, p0, Lar/com/hjg/pngj/h;->b:I

    return v0
.end method

.method public k()I
    .locals 1

    .prologue
    .line 152
    iget v0, p0, Lar/com/hjg/pngj/h;->c:I

    return v0
.end method

.method public l()I
    .locals 1

    .prologue
    .line 156
    iget v0, p0, Lar/com/hjg/pngj/h;->d:I

    return v0
.end method

.method public m()I
    .locals 1

    .prologue
    .line 163
    iget v0, p0, Lar/com/hjg/pngj/h;->e:I

    return v0
.end method

.method public n()I
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 167
    iget v5, p0, Lar/com/hjg/pngj/h;->h:I

    if-nez v5, :cond_3

    .line 168
    const/4 v1, 0x1

    .local v1, "p":I
    :goto_0
    const/4 v5, 0x7

    if-gt v1, v5, :cond_3

    .line 169
    invoke-static {v1}, Lar/com/hjg/pngj/h;->b(I)[B

    move-result-object v2

    .line 170
    .local v2, "pp":[B
    iget-object v5, p0, Lar/com/hjg/pngj/h;->a:Lar/com/hjg/pngj/s;

    iget v5, v5, Lar/com/hjg/pngj/s;->c:I

    aget-byte v6, v2, v9

    if-le v5, v6, :cond_1

    iget-object v5, p0, Lar/com/hjg/pngj/h;->a:Lar/com/hjg/pngj/s;

    iget v5, v5, Lar/com/hjg/pngj/s;->c:I

    aget-byte v6, v2, v7

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x1

    aget-byte v6, v2, v9

    sub-int/2addr v5, v6

    aget-byte v6, v2, v7

    div-int v3, v5, v6

    .line 171
    .local v3, "rows":I
    :goto_1
    iget-object v5, p0, Lar/com/hjg/pngj/h;->a:Lar/com/hjg/pngj/s;

    iget v5, v5, Lar/com/hjg/pngj/s;->b:I

    aget-byte v6, v2, v8

    if-le v5, v6, :cond_2

    iget-object v5, p0, Lar/com/hjg/pngj/h;->a:Lar/com/hjg/pngj/s;

    iget v5, v5, Lar/com/hjg/pngj/s;->b:I

    aget-byte v6, v2, v4

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x1

    aget-byte v6, v2, v8

    sub-int/2addr v5, v6

    aget-byte v6, v2, v4

    div-int v0, v5, v6

    .line 172
    .local v0, "cols":I
    :goto_2
    if-lez v3, :cond_0

    if-lez v0, :cond_0

    .line 173
    iget v5, p0, Lar/com/hjg/pngj/h;->h:I

    add-int/2addr v5, v3

    iput v5, p0, Lar/com/hjg/pngj/h;->h:I

    .line 168
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "cols":I
    .end local v3    # "rows":I
    :cond_1
    move v3, v4

    .line 170
    goto :goto_1

    .restart local v3    # "rows":I
    :cond_2
    move v0, v4

    .line 171
    goto :goto_2

    .line 176
    .end local v1    # "p":I
    .end local v2    # "pp":[B
    .end local v3    # "rows":I
    :cond_3
    iget v4, p0, Lar/com/hjg/pngj/h;->h:I

    return v4
.end method

.method public o()J
    .locals 14

    .prologue
    .line 183
    const-wide/16 v0, 0x0

    .line 184
    .local v0, "bytes":J
    const/4 v4, 0x1

    .local v4, "p":I
    :goto_0
    const/4 v7, 0x7

    if-gt v4, v7, :cond_3

    .line 185
    invoke-static {v4}, Lar/com/hjg/pngj/h;->b(I)[B

    move-result-object v5

    .line 186
    .local v5, "pp":[B
    iget-object v7, p0, Lar/com/hjg/pngj/h;->a:Lar/com/hjg/pngj/s;

    iget v7, v7, Lar/com/hjg/pngj/s;->c:I

    const/4 v8, 0x3

    aget-byte v8, v5, v8

    if-le v7, v8, :cond_1

    iget-object v7, p0, Lar/com/hjg/pngj/h;->a:Lar/com/hjg/pngj/s;

    iget v7, v7, Lar/com/hjg/pngj/s;->c:I

    const/4 v8, 0x1

    aget-byte v8, v5, v8

    add-int/2addr v7, v8

    add-int/lit8 v7, v7, -0x1

    const/4 v8, 0x3

    aget-byte v8, v5, v8

    sub-int/2addr v7, v8

    const/4 v8, 0x1

    aget-byte v8, v5, v8

    div-int v6, v7, v8

    .line 187
    .local v6, "rows":I
    :goto_1
    iget-object v7, p0, Lar/com/hjg/pngj/h;->a:Lar/com/hjg/pngj/s;

    iget v7, v7, Lar/com/hjg/pngj/s;->b:I

    const/4 v8, 0x2

    aget-byte v8, v5, v8

    if-le v7, v8, :cond_2

    iget-object v7, p0, Lar/com/hjg/pngj/h;->a:Lar/com/hjg/pngj/s;

    iget v7, v7, Lar/com/hjg/pngj/s;->b:I

    const/4 v8, 0x0

    aget-byte v8, v5, v8

    add-int/2addr v7, v8

    add-int/lit8 v7, v7, -0x1

    const/4 v8, 0x2

    aget-byte v8, v5, v8

    sub-int/2addr v7, v8

    const/4 v8, 0x0

    aget-byte v8, v5, v8

    div-int v3, v7, v8

    .line 188
    .local v3, "cols":I
    :goto_2
    iget-object v7, p0, Lar/com/hjg/pngj/h;->a:Lar/com/hjg/pngj/s;

    iget v7, v7, Lar/com/hjg/pngj/s;->j:I

    mul-int/2addr v7, v3

    add-int/lit8 v7, v7, 0x7

    div-int/lit8 v2, v7, 0x8

    .line 189
    .local v2, "bytesr":I
    if-lez v6, :cond_0

    if-lez v3, :cond_0

    .line 190
    int-to-long v8, v6

    const-wide/16 v10, 0x1

    int-to-long v12, v2

    add-long/2addr v10, v12

    mul-long/2addr v8, v10

    add-long/2addr v0, v8

    .line 184
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 186
    .end local v2    # "bytesr":I
    .end local v3    # "cols":I
    .end local v6    # "rows":I
    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    .line 187
    .restart local v6    # "rows":I
    :cond_2
    const/4 v3, 0x0

    goto :goto_2

    .line 192
    .end local v5    # "pp":[B
    .end local v6    # "rows":I
    :cond_3
    return-wide v0
.end method

.method public p()I
    .locals 1

    .prologue
    .line 196
    iget v0, p0, Lar/com/hjg/pngj/h;->n:I

    return v0
.end method
