.class public Lar/com/hjg/pngj/a/i;
.super Lar/com/hjg/pngj/a/g;
.source "SourceFile"


# static fields
.field protected static final u:I = 0x64


# instance fields
.field protected j:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<[B>;"
        }
    .end annotation
.end field

.field protected k:[Lar/com/hjg/pngj/a/a;

.field protected l:[[B

.field protected m:[B

.field protected n:Lar/com/hjg/pngj/a/f;

.field protected o:I

.field protected p:I

.field protected q:I

.field protected r:I

.field protected s:I

.field protected t:I

.field protected v:I

.field private w:Z

.field private x:I

.field private y:Z


# direct methods
.method public constructor <init>(Lar/com/hjg/pngj/s;)V
    .locals 5
    .param p1, "imgInfo"    # Lar/com/hjg/pngj/s;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 44
    invoke-direct {p0, p1}, Lar/com/hjg/pngj/a/g;-><init>(Lar/com/hjg/pngj/s;)V

    .line 19
    const/4 v1, 0x6

    new-array v1, v1, [Lar/com/hjg/pngj/a/a;

    iput-object v1, p0, Lar/com/hjg/pngj/a/i;->k:[Lar/com/hjg/pngj/a/a;

    .line 23
    const/4 v1, 0x5

    new-array v1, v1, [[B

    iput-object v1, p0, Lar/com/hjg/pngj/a/i;->l:[[B

    .line 27
    iput v3, p0, Lar/com/hjg/pngj/a/i;->o:I

    .line 28
    iput v3, p0, Lar/com/hjg/pngj/a/i;->p:I

    .line 30
    iput v2, p0, Lar/com/hjg/pngj/a/i;->q:I

    .line 31
    iput v2, p0, Lar/com/hjg/pngj/a/i;->r:I

    .line 33
    iput-boolean v4, p0, Lar/com/hjg/pngj/a/i;->w:Z

    .line 37
    const/16 v1, 0x64

    iput v1, p0, Lar/com/hjg/pngj/a/i;->v:I

    .line 39
    const/16 v1, 0x3e8

    iput v1, p0, Lar/com/hjg/pngj/a/i;->x:I

    .line 41
    iput-boolean v4, p0, Lar/com/hjg/pngj/a/i;->y:Z

    .line 45
    new-instance v1, Lar/com/hjg/pngj/a/f;

    invoke-direct {v1, p1}, Lar/com/hjg/pngj/a/f;-><init>(Lar/com/hjg/pngj/s;)V

    iput-object v1, p0, Lar/com/hjg/pngj/a/i;->n:Lar/com/hjg/pngj/a/f;

    .line 46
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lar/com/hjg/pngj/a/i;->j:Ljava/util/LinkedList;

    .line 47
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 48
    iget-object v1, p0, Lar/com/hjg/pngj/a/i;->j:Ljava/util/LinkedList;

    iget v2, p0, Lar/com/hjg/pngj/a/i;->b:I

    new-array v2, v2, [B

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 47
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 49
    :cond_0
    iget v1, p0, Lar/com/hjg/pngj/a/i;->b:I

    new-array v1, v1, [B

    iput-object v1, p0, Lar/com/hjg/pngj/a/i;->m:[B

    .line 50
    return-void
.end method

.method private n()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 115
    iget v4, p0, Lar/com/hjg/pngj/a/i;->i:I

    if-eqz v4, :cond_0

    iget v4, p0, Lar/com/hjg/pngj/a/i;->i:I

    iget v5, p0, Lar/com/hjg/pngj/a/i;->t:I

    if-le v4, v5, :cond_6

    :cond_0
    move v1, v3

    .line 116
    .local v1, "newBand":Z
    :goto_0
    iget v4, p0, Lar/com/hjg/pngj/a/i;->i:I

    if-nez v4, :cond_1

    .line 117
    const/4 v4, -0x1

    iput v4, p0, Lar/com/hjg/pngj/a/i;->r:I

    .line 118
    :cond_1
    if-eqz v1, :cond_7

    .line 119
    iget v4, p0, Lar/com/hjg/pngj/a/i;->r:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lar/com/hjg/pngj/a/i;->r:I

    .line 120
    iput v2, p0, Lar/com/hjg/pngj/a/i;->q:I

    .line 124
    :goto_1
    if-eqz v1, :cond_5

    .line 125
    iget v4, p0, Lar/com/hjg/pngj/a/i;->i:I

    iput v4, p0, Lar/com/hjg/pngj/a/i;->s:I

    .line 126
    iget v4, p0, Lar/com/hjg/pngj/a/i;->s:I

    iget v5, p0, Lar/com/hjg/pngj/a/i;->o:I

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lar/com/hjg/pngj/a/i;->t:I

    .line 127
    iget v4, p0, Lar/com/hjg/pngj/a/i;->s:I

    iget v5, p0, Lar/com/hjg/pngj/a/i;->o:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    add-int/lit8 v0, v4, -0x1

    .line 128
    .local v0, "lastRowInNextBand":I
    iget-object v4, p0, Lar/com/hjg/pngj/a/i;->a:Lar/com/hjg/pngj/s;

    iget v4, v4, Lar/com/hjg/pngj/s;->c:I

    if-lt v0, v4, :cond_2

    .line 130
    iget-object v4, p0, Lar/com/hjg/pngj/a/i;->a:Lar/com/hjg/pngj/s;

    iget v4, v4, Lar/com/hjg/pngj/s;->c:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lar/com/hjg/pngj/a/i;->t:I

    .line 131
    :cond_2
    iget v4, p0, Lar/com/hjg/pngj/a/i;->t:I

    add-int/lit8 v4, v4, 0x1

    iget v5, p0, Lar/com/hjg/pngj/a/i;->s:I

    sub-int/2addr v4, v5

    iput v4, p0, Lar/com/hjg/pngj/a/i;->p:I

    .line 132
    iget v4, p0, Lar/com/hjg/pngj/a/i;->p:I

    const/4 v5, 0x3

    if-le v4, v5, :cond_3

    iget v4, p0, Lar/com/hjg/pngj/a/i;->p:I

    const/16 v5, 0xa

    if-ge v4, v5, :cond_4

    iget-object v4, p0, Lar/com/hjg/pngj/a/i;->a:Lar/com/hjg/pngj/s;

    iget v4, v4, Lar/com/hjg/pngj/s;->l:I

    const/16 v5, 0x40

    if-ge v4, v5, :cond_4

    :cond_3
    move v3, v2

    :cond_4
    iput-boolean v3, p0, Lar/com/hjg/pngj/a/i;->w:Z

    .line 136
    invoke-direct {p0}, Lar/com/hjg/pngj/a/i;->o()V

    .line 138
    .end local v0    # "lastRowInNextBand":I
    :cond_5
    return-void

    .end local v1    # "newBand":Z
    :cond_6
    move v1, v2

    .line 115
    goto :goto_0

    .line 122
    .restart local v1    # "newBand":Z
    :cond_7
    iget v4, p0, Lar/com/hjg/pngj/a/i;->q:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lar/com/hjg/pngj/a/i;->q:I

    goto :goto_1
.end method

.method private o()V
    .locals 12

    .prologue
    const/4 v2, 0x0

    .line 141
    iget v3, p0, Lar/com/hjg/pngj/a/i;->p:I

    int-to-long v6, v3

    iget v3, p0, Lar/com/hjg/pngj/a/i;->b:I

    int-to-long v10, v3

    mul-long v4, v6, v10

    .line 142
    .local v4, "bytesPerBandCurrent":J
    const/4 v0, 0x4

    .line 143
    .local v0, "DEFLATER_COMP_LEVEL":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    const/4 v3, 0x5

    if-gt v8, v3, :cond_4

    .line 144
    iget-object v3, p0, Lar/com/hjg/pngj/a/i;->k:[Lar/com/hjg/pngj/a/a;

    aget-object v1, v3, v8

    .line 145
    .local v1, "cp":Lar/com/hjg/pngj/a/a;
    if-eqz v1, :cond_0

    iget-wide v6, v1, Lar/com/hjg/pngj/a/a;->c:J

    cmp-long v3, v6, v4

    if-eqz v3, :cond_3

    .line 146
    :cond_0
    if-eqz v1, :cond_1

    .line 147
    invoke-virtual {v1}, Lar/com/hjg/pngj/a/a;->close()V

    .line 148
    :cond_1
    iget-boolean v3, p0, Lar/com/hjg/pngj/a/i;->y:Z

    if-eqz v3, :cond_2

    .line 149
    new-instance v1, Lar/com/hjg/pngj/a/c;

    .end local v1    # "cp":Lar/com/hjg/pngj/a/a;
    iget v3, p0, Lar/com/hjg/pngj/a/i;->b:I

    invoke-direct {v1, v2, v3, v4, v5}, Lar/com/hjg/pngj/a/c;-><init>(Lar/com/hjg/pngj/k;IJ)V

    .line 154
    .restart local v1    # "cp":Lar/com/hjg/pngj/a/a;
    :goto_1
    iget-object v3, p0, Lar/com/hjg/pngj/a/i;->k:[Lar/com/hjg/pngj/a/a;

    aput-object v1, v3, v8

    .line 158
    :goto_2
    const/4 v3, 0x1

    iget v6, p0, Lar/com/hjg/pngj/a/i;->p:I

    invoke-virtual {v1, v3, v6}, Lar/com/hjg/pngj/a/a;->a(ZI)V

    .line 143
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 151
    :cond_2
    new-instance v1, Lar/com/hjg/pngj/a/b;

    .end local v1    # "cp":Lar/com/hjg/pngj/a/a;
    iget v3, p0, Lar/com/hjg/pngj/a/i;->b:I

    const/4 v6, 0x4

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v7}, Lar/com/hjg/pngj/a/b;-><init>(Lar/com/hjg/pngj/k;IJII)V

    .restart local v1    # "cp":Lar/com/hjg/pngj/a/a;
    goto :goto_1

    .line 156
    :cond_3
    invoke-virtual {v1}, Lar/com/hjg/pngj/a/a;->h()V

    goto :goto_2

    .line 160
    .end local v1    # "cp":Lar/com/hjg/pngj/a/a;
    :cond_4
    return-void
.end method

.method private p()I
    .locals 6

    .prologue
    .line 164
    iget v2, p0, Lar/com/hjg/pngj/a/i;->v:I

    int-to-double v2, v2

    const-wide/high16 v4, 0x4090000000000000L    # 1024.0

    mul-double/2addr v2, v4

    iget-object v4, p0, Lar/com/hjg/pngj/a/i;->a:Lar/com/hjg/pngj/s;

    iget v4, v4, Lar/com/hjg/pngj/s;->l:I

    add-int/lit8 v4, v4, 0x1

    int-to-double v4, v4

    div-double/2addr v2, v4

    const-wide/high16 v4, 0x4014000000000000L    # 5.0

    sub-double/2addr v2, v4

    double-to-int v1, v2

    .line 165
    .local v1, "r":I
    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    .line 166
    const/4 v1, 0x1

    .line 167
    :cond_0
    iget v2, p0, Lar/com/hjg/pngj/a/i;->x:I

    if-lez v2, :cond_1

    iget v2, p0, Lar/com/hjg/pngj/a/i;->x:I

    if-le v1, v2, :cond_1

    .line 168
    iget v1, p0, Lar/com/hjg/pngj/a/i;->x:I

    .line 169
    :cond_1
    iget-object v2, p0, Lar/com/hjg/pngj/a/i;->a:Lar/com/hjg/pngj/s;

    iget v2, v2, Lar/com/hjg/pngj/s;->c:I

    if-le v1, v2, :cond_2

    .line 170
    iget-object v2, p0, Lar/com/hjg/pngj/a/i;->a:Lar/com/hjg/pngj/s;

    iget v1, v2, Lar/com/hjg/pngj/s;->c:I

    .line 171
    :cond_2
    const/4 v2, 0x2

    if-le v1, v2, :cond_3

    iget-object v2, p0, Lar/com/hjg/pngj/a/i;->a:Lar/com/hjg/pngj/s;

    iget v2, v2, Lar/com/hjg/pngj/s;->c:I

    div-int/lit8 v2, v2, 0x8

    if-le v1, v2, :cond_3

    .line 172
    iget-object v2, p0, Lar/com/hjg/pngj/a/i;->a:Lar/com/hjg/pngj/s;

    iget v2, v2, Lar/com/hjg/pngj/s;->c:I

    add-int/lit8 v3, v1, -0x1

    add-int/2addr v2, v3

    div-int v0, v2, v1

    .line 173
    .local v0, "k":I
    iget-object v2, p0, Lar/com/hjg/pngj/a/i;->a:Lar/com/hjg/pngj/s;

    iget v2, v2, Lar/com/hjg/pngj/s;->c:I

    div-int/lit8 v3, v0, 0x2

    add-int/2addr v2, v3

    div-int v1, v2, v0

    .line 176
    .end local v0    # "k":I
    :cond_3
    return v1
.end method

.method private q()I
    .locals 8

    .prologue
    .line 180
    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 181
    .local v2, "bestcr":D
    const/4 v0, -0x1

    .line 182
    .local v0, "bestb":I
    iget-boolean v7, p0, Lar/com/hjg/pngj/a/i;->w:Z

    if-eqz v7, :cond_1

    const/4 v6, 0x5

    .local v6, "i":I
    :goto_0
    if-ltz v6, :cond_2

    .line 183
    iget-object v7, p0, Lar/com/hjg/pngj/a/i;->k:[Lar/com/hjg/pngj/a/a;

    aget-object v1, v7, v6

    .line 184
    .local v1, "fb":Lar/com/hjg/pngj/a/a;
    invoke-virtual {v1}, Lar/com/hjg/pngj/a/a;->b()D

    move-result-wide v4

    .line 185
    .local v4, "cr":D
    cmpg-double v7, v4, v2

    if-gtz v7, :cond_0

    .line 187
    move v0, v6

    .line 188
    move-wide v2, v4

    .line 182
    :cond_0
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    .end local v1    # "fb":Lar/com/hjg/pngj/a/a;
    .end local v4    # "cr":D
    .end local v6    # "i":I
    :cond_1
    const/4 v6, 0x4

    goto :goto_0

    .line 191
    .restart local v6    # "i":I
    :cond_2
    return v0
.end method


# virtual methods
.method public a(Z)V
    .locals 0
    .param p1, "lz4"    # Z

    .prologue
    .line 229
    iput-boolean p1, p0, Lar/com/hjg/pngj/a/i;->y:Z

    .line 230
    return-void
.end method

.method public a()[B
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lar/com/hjg/pngj/a/i;->j:Ljava/util/LinkedList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public b(I)V
    .locals 1
    .param p1, "hintMemoryKb"    # I

    .prologue
    const/16 v0, 0x2710

    .line 220
    if-gtz p1, :cond_1

    const/16 p1, 0x64

    .end local p1    # "hintMemoryKb":I
    :cond_0
    :goto_0
    iput p1, p0, Lar/com/hjg/pngj/a/i;->v:I

    .line 222
    return-void

    .line 220
    .restart local p1    # "hintMemoryKb":I
    :cond_1
    if-le p1, v0, :cond_0

    move p1, v0

    goto :goto_0
.end method

.method public b(Z)V
    .locals 0
    .param p1, "tryAdaptive"    # Z

    .prologue
    .line 238
    iput-boolean p1, p0, Lar/com/hjg/pngj/a/i;->w:Z

    .line 239
    return-void
.end method

.method protected c()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 196
    invoke-super {p0}, Lar/com/hjg/pngj/a/g;->c()V

    .line 198
    iget-object v1, p0, Lar/com/hjg/pngj/a/i;->a:Lar/com/hjg/pngj/s;

    iget v1, v1, Lar/com/hjg/pngj/s;->b:I

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lar/com/hjg/pngj/a/i;->h:Lar/com/hjg/pngj/FilterType;

    invoke-static {v1}, Lar/com/hjg/pngj/FilterType;->isValidStandard(Lar/com/hjg/pngj/FilterType;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 199
    sget-object v1, Lar/com/hjg/pngj/FilterType;->FILTER_DEFAULT:Lar/com/hjg/pngj/FilterType;

    iput-object v1, p0, Lar/com/hjg/pngj/a/i;->h:Lar/com/hjg/pngj/FilterType;

    .line 200
    :cond_0
    iget-object v1, p0, Lar/com/hjg/pngj/a/i;->a:Lar/com/hjg/pngj/s;

    iget v1, v1, Lar/com/hjg/pngj/s;->c:I

    if-ge v1, v2, :cond_1

    iget-object v1, p0, Lar/com/hjg/pngj/a/i;->h:Lar/com/hjg/pngj/FilterType;

    invoke-static {v1}, Lar/com/hjg/pngj/FilterType;->isValidStandard(Lar/com/hjg/pngj/FilterType;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 201
    sget-object v1, Lar/com/hjg/pngj/FilterType;->FILTER_DEFAULT:Lar/com/hjg/pngj/FilterType;

    iput-object v1, p0, Lar/com/hjg/pngj/a/i;->h:Lar/com/hjg/pngj/FilterType;

    .line 202
    :cond_1
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-gt v0, v1, :cond_4

    .line 203
    iget-object v1, p0, Lar/com/hjg/pngj/a/i;->l:[[B

    aget-object v1, v1, v0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lar/com/hjg/pngj/a/i;->l:[[B

    aget-object v1, v1, v0

    array-length v1, v1

    iget v2, p0, Lar/com/hjg/pngj/a/i;->b:I

    if-ge v1, v2, :cond_3

    .line 204
    :cond_2
    iget-object v1, p0, Lar/com/hjg/pngj/a/i;->l:[[B

    iget v2, p0, Lar/com/hjg/pngj/a/i;->b:I

    new-array v2, v2, [B

    aput-object v2, v1, v0

    .line 202
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 206
    :cond_4
    iget v1, p0, Lar/com/hjg/pngj/a/i;->o:I

    if-nez v1, :cond_5

    .line 207
    invoke-direct {p0}, Lar/com/hjg/pngj/a/i;->p()I

    move-result v1

    iput v1, p0, Lar/com/hjg/pngj/a/i;->o:I

    .line 208
    :cond_5
    return-void
.end method

.method public c(I)V
    .locals 0
    .param p1, "hintRowsPerBand"    # I

    .prologue
    .line 225
    iput p1, p0, Lar/com/hjg/pngj/a/i;->x:I

    .line 226
    return-void
.end method

.method protected c([B)V
    .locals 22
    .param p1, "rowb"    # [B

    .prologue
    .line 54
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lar/com/hjg/pngj/a/i;->g:Z

    move/from16 v18, v0

    if-nez v18, :cond_0

    .line 55
    invoke-virtual/range {p0 .. p0}, Lar/com/hjg/pngj/a/i;->b()V

    .line 56
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lar/com/hjg/pngj/a/i;->j:Ljava/util/LinkedList;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_1

    .line 57
    new-instance v18, Ljava/lang/RuntimeException;

    const-string v19, "?"

    invoke-direct/range {v18 .. v19}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 58
    :cond_1
    invoke-direct/range {p0 .. p0}, Lar/com/hjg/pngj/a/i;->n()V

    .line 59
    move-object/from16 v0, p0

    iget-object v0, v0, Lar/com/hjg/pngj/a/i;->j:Ljava/util/LinkedList;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [B

    .line 60
    .local v17, "rowbprev":[B
    invoke-static {}, Lar/com/hjg/pngj/FilterType;->getAllStandardNoneLast()[Lar/com/hjg/pngj/FilterType;

    move-result-object v5

    .local v5, "arr$":[Lar/com/hjg/pngj/FilterType;
    array-length v14, v5

    .local v14, "len$":I
    const/4 v12, 0x0

    .local v12, "i$":I
    :goto_0
    if-ge v12, v14, :cond_5

    aget-object v10, v5, v12

    .line 63
    .local v10, "ftype":Lar/com/hjg/pngj/FilterType;
    move-object/from16 v0, p0

    iget v0, v0, Lar/com/hjg/pngj/a/i;->i:I

    move/from16 v18, v0

    if-nez v18, :cond_3

    sget-object v18, Lar/com/hjg/pngj/FilterType;->FILTER_NONE:Lar/com/hjg/pngj/FilterType;

    move-object/from16 v0, v18

    if-eq v10, v0, :cond_3

    sget-object v18, Lar/com/hjg/pngj/FilterType;->FILTER_SUB:Lar/com/hjg/pngj/FilterType;

    move-object/from16 v0, v18

    if-eq v10, v0, :cond_3

    .line 60
    :cond_2
    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 65
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lar/com/hjg/pngj/a/i;->l:[[B

    move-object/from16 v18, v0

    iget v0, v10, Lar/com/hjg/pngj/FilterType;->val:I

    move/from16 v19, v0

    aget-object v18, v18, v19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    invoke-virtual {v0, v10, v1, v2, v3}, Lar/com/hjg/pngj/a/i;->a(Lar/com/hjg/pngj/FilterType;[B[B[B)[B

    move-result-object v7

    .line 66
    .local v7, "filtered":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lar/com/hjg/pngj/a/i;->k:[Lar/com/hjg/pngj/a/a;

    move-object/from16 v18, v0

    iget v0, v10, Lar/com/hjg/pngj/FilterType;->val:I

    move/from16 v19, v0

    aget-object v18, v18, v19

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Lar/com/hjg/pngj/a/a;->write([B)V

    .line 67
    move-object/from16 v0, p0

    iget v0, v0, Lar/com/hjg/pngj/a/i;->i:I

    move/from16 v18, v0

    if-nez v18, :cond_4

    sget-object v18, Lar/com/hjg/pngj/FilterType;->FILTER_SUB:Lar/com/hjg/pngj/FilterType;

    move-object/from16 v0, v18

    if-ne v10, v0, :cond_4

    .line 68
    move-object/from16 v0, p0

    iget-object v0, v0, Lar/com/hjg/pngj/a/i;->k:[Lar/com/hjg/pngj/a/a;

    move-object/from16 v18, v0

    sget-object v19, Lar/com/hjg/pngj/FilterType;->FILTER_PAETH:Lar/com/hjg/pngj/FilterType;

    move-object/from16 v0, v19

    iget v0, v0, Lar/com/hjg/pngj/FilterType;->val:I

    move/from16 v19, v0

    aget-object v18, v18, v19

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Lar/com/hjg/pngj/a/a;->write([B)V

    .line 69
    move-object/from16 v0, p0

    iget-object v0, v0, Lar/com/hjg/pngj/a/i;->k:[Lar/com/hjg/pngj/a/a;

    move-object/from16 v18, v0

    sget-object v19, Lar/com/hjg/pngj/FilterType;->FILTER_AVERAGE:Lar/com/hjg/pngj/FilterType;

    move-object/from16 v0, v19

    iget v0, v0, Lar/com/hjg/pngj/FilterType;->val:I

    move/from16 v19, v0

    aget-object v18, v18, v19

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Lar/com/hjg/pngj/a/a;->write([B)V

    .line 70
    move-object/from16 v0, p0

    iget-object v0, v0, Lar/com/hjg/pngj/a/i;->k:[Lar/com/hjg/pngj/a/a;

    move-object/from16 v18, v0

    sget-object v19, Lar/com/hjg/pngj/FilterType;->FILTER_UP:Lar/com/hjg/pngj/FilterType;

    move-object/from16 v0, v19

    iget v0, v0, Lar/com/hjg/pngj/FilterType;->val:I

    move/from16 v19, v0

    aget-object v18, v18, v19

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Lar/com/hjg/pngj/a/a;->write([B)V

    .line 73
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lar/com/hjg/pngj/a/i;->w:Z

    move/from16 v18, v0

    if-eqz v18, :cond_2

    .line 74
    move-object/from16 v0, p0

    iget-object v0, v0, Lar/com/hjg/pngj/a/i;->n:Lar/com/hjg/pngj/a/f;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lar/com/hjg/pngj/a/i;->i:I

    move/from16 v19, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v10, v7, v1}, Lar/com/hjg/pngj/a/f;->a(Lar/com/hjg/pngj/FilterType;[BI)V

    goto/16 :goto_1

    .line 77
    .end local v7    # "filtered":[B
    .end local v10    # "ftype":Lar/com/hjg/pngj/FilterType;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lar/com/hjg/pngj/a/i;->l:[[B

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object p1, v18, v19

    .line 78
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lar/com/hjg/pngj/a/i;->w:Z

    move/from16 v18, v0

    if-eqz v18, :cond_6

    .line 79
    move-object/from16 v0, p0

    iget-object v0, v0, Lar/com/hjg/pngj/a/i;->n:Lar/com/hjg/pngj/a/f;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lar/com/hjg/pngj/a/f;->a()Lar/com/hjg/pngj/FilterType;

    move-result-object v15

    .line 80
    .local v15, "preferredAdaptive":Lar/com/hjg/pngj/FilterType;
    move-object/from16 v0, p0

    iget-object v0, v0, Lar/com/hjg/pngj/a/i;->k:[Lar/com/hjg/pngj/a/a;

    move-object/from16 v18, v0

    const/16 v19, 0x5

    aget-object v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lar/com/hjg/pngj/a/i;->l:[[B

    move-object/from16 v19, v0

    iget v0, v15, Lar/com/hjg/pngj/FilterType;->val:I

    move/from16 v20, v0

    aget-object v19, v19, v20

    invoke-virtual/range {v18 .. v19}, Lar/com/hjg/pngj/a/a;->write([B)V

    .line 82
    .end local v15    # "preferredAdaptive":Lar/com/hjg/pngj/FilterType;
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lar/com/hjg/pngj/a/i;->i:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lar/com/hjg/pngj/a/i;->t:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_8

    .line 83
    invoke-direct/range {p0 .. p0}, Lar/com/hjg/pngj/a/i;->q()I

    move-result v6

    .line 87
    .local v6, "best":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lar/com/hjg/pngj/a/i;->k:[Lar/com/hjg/pngj/a/a;

    move-object/from16 v18, v0

    aget-object v18, v18, v6

    invoke-virtual/range {v18 .. v18}, Lar/com/hjg/pngj/a/a;->g()[B

    move-result-object v8

    .line 88
    .local v8, "filtersAdapt":[B
    move-object/from16 v0, p0

    iget v0, v0, Lar/com/hjg/pngj/a/i;->s:I

    move/from16 v16, v0

    .local v16, "r":I
    const/4 v11, 0x0

    .local v11, "i":I
    move-object/from16 v0, p0

    iget v0, v0, Lar/com/hjg/pngj/a/i;->t:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lar/com/hjg/pngj/a/i;->s:I

    move/from16 v19, v0

    sub-int v13, v18, v19

    .local v13, "j":I
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lar/com/hjg/pngj/a/i;->t:I

    move/from16 v18, v0

    move/from16 v0, v16

    move/from16 v1, v18

    if-gt v0, v1, :cond_8

    .line 89
    aget-byte v9, v8, v11

    .line 90
    .local v9, "fti":I
    const/4 v7, 0x0

    .line 91
    .restart local v7    # "filtered":[B
    move-object/from16 v0, p0

    iget v0, v0, Lar/com/hjg/pngj/a/i;->t:I

    move/from16 v18, v0

    move/from16 v0, v16

    move/from16 v1, v18

    if-eq v0, v1, :cond_7

    .line 92
    invoke-static {v9}, Lar/com/hjg/pngj/FilterType;->getByVal(I)Lar/com/hjg/pngj/FilterType;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lar/com/hjg/pngj/a/i;->j:Ljava/util/LinkedList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [B

    move-object/from16 v0, p0

    iget-object v0, v0, Lar/com/hjg/pngj/a/i;->j:Ljava/util/LinkedList;

    move-object/from16 v19, v0

    add-int/lit8 v21, v13, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, [B

    move-object/from16 v0, p0

    iget-object v0, v0, Lar/com/hjg/pngj/a/i;->m:[B

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    move-object/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Lar/com/hjg/pngj/a/i;->a(Lar/com/hjg/pngj/FilterType;[B[B[B)[B

    move-result-object v7

    .line 98
    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lar/com/hjg/pngj/a/i;->b([B)V

    .line 88
    add-int/lit8 v16, v16, 0x1

    add-int/lit8 v13, v13, -0x1

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 96
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lar/com/hjg/pngj/a/i;->l:[[B

    move-object/from16 v18, v0

    aget-object v7, v18, v9

    goto :goto_3

    .line 102
    .end local v6    # "best":I
    .end local v7    # "filtered":[B
    .end local v8    # "filtersAdapt":[B
    .end local v9    # "fti":I
    .end local v11    # "i":I
    .end local v13    # "j":I
    .end local v16    # "r":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lar/com/hjg/pngj/a/i;->j:Ljava/util/LinkedList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/LinkedList;->size()I

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lar/com/hjg/pngj/a/i;->p:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_9

    .line 103
    move-object/from16 v0, p0

    iget-object v0, v0, Lar/com/hjg/pngj/a/i;->j:Ljava/util/LinkedList;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lar/com/hjg/pngj/a/i;->j:Ljava/util/LinkedList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 106
    :goto_4
    return-void

    .line 105
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lar/com/hjg/pngj/a/i;->j:Ljava/util/LinkedList;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lar/com/hjg/pngj/a/i;->b:I

    move/from16 v19, v0

    move/from16 v0, v19

    new-array v0, v0, [B

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_4
.end method

.method public d()V
    .locals 5

    .prologue
    .line 212
    invoke-super {p0}, Lar/com/hjg/pngj/a/g;->d()V

    .line 213
    iget-object v4, p0, Lar/com/hjg/pngj/a/i;->j:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->clear()V

    .line 214
    iget-object v0, p0, Lar/com/hjg/pngj/a/i;->k:[Lar/com/hjg/pngj/a/a;

    .local v0, "arr$":[Lar/com/hjg/pngj/a/a;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 215
    .local v1, "f":Lar/com/hjg/pngj/a/a;
    invoke-virtual {v1}, Lar/com/hjg/pngj/a/a;->close()V

    .line 214
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 217
    .end local v1    # "f":Lar/com/hjg/pngj/a/a;
    :cond_0
    return-void
.end method

.method public m()Lar/com/hjg/pngj/a/f;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lar/com/hjg/pngj/a/i;->n:Lar/com/hjg/pngj/a/f;

    return-object v0
.end method
