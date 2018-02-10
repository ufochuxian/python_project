.class public Lar/com/hjg/pngj/chunks/ai;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lar/com/hjg/pngj/chunks/f;

.field private final b:Z


# direct methods
.method public constructor <init>(Lar/com/hjg/pngj/chunks/f;)V
    .locals 1
    .param p1, "chunks"    # Lar/com/hjg/pngj/chunks/f;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lar/com/hjg/pngj/chunks/ai;->a:Lar/com/hjg/pngj/chunks/f;

    .line 23
    instance-of v0, p1, Lar/com/hjg/pngj/chunks/g;

    if-eqz v0, :cond_0

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lar/com/hjg/pngj/chunks/ai;->b:Z

    .line 28
    :goto_0
    return-void

    .line 26
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lar/com/hjg/pngj/chunks/ai;->b:Z

    goto :goto_0
.end method

.method private i()Lar/com/hjg/pngj/chunks/g;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/ai;->a:Lar/com/hjg/pngj/chunks/f;

    check-cast v0, Lar/com/hjg/pngj/chunks/g;

    return-object v0
.end method


# virtual methods
.method public a(I)Lar/com/hjg/pngj/chunks/ad;
    .locals 2
    .param p1, "secsAgo"    # I

    .prologue
    .line 92
    new-instance v0, Lar/com/hjg/pngj/chunks/ad;

    iget-object v1, p0, Lar/com/hjg/pngj/chunks/ai;->a:Lar/com/hjg/pngj/chunks/f;

    iget-object v1, v1, Lar/com/hjg/pngj/chunks/f;->i:Lar/com/hjg/pngj/s;

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/chunks/ad;-><init>(Lar/com/hjg/pngj/s;)V

    .line 93
    .local v0, "c":Lar/com/hjg/pngj/chunks/ad;
    invoke-virtual {v0, p1}, Lar/com/hjg/pngj/chunks/ad;->b(I)V

    .line 94
    invoke-virtual {p0, v0}, Lar/com/hjg/pngj/chunks/ai;->a(Lar/com/hjg/pngj/chunks/PngChunk;)V

    .line 95
    return-object v0
.end method

.method public a(IIIIII)Lar/com/hjg/pngj/chunks/ad;
    .locals 7
    .param p1, "yearx"    # I
    .param p2, "monx"    # I
    .param p3, "dayx"    # I
    .param p4, "hourx"    # I
    .param p5, "minx"    # I
    .param p6, "secx"    # I

    .prologue
    .line 109
    new-instance v0, Lar/com/hjg/pngj/chunks/ad;

    iget-object v1, p0, Lar/com/hjg/pngj/chunks/ai;->a:Lar/com/hjg/pngj/chunks/f;

    iget-object v1, v1, Lar/com/hjg/pngj/chunks/f;->i:Lar/com/hjg/pngj/s;

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/chunks/ad;-><init>(Lar/com/hjg/pngj/s;)V

    .local v0, "c":Lar/com/hjg/pngj/chunks/ad;
    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .line 110
    invoke-virtual/range {v0 .. v6}, Lar/com/hjg/pngj/chunks/ad;->a(IIIIII)V

    .line 111
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lar/com/hjg/pngj/chunks/ai;->a(Lar/com/hjg/pngj/chunks/PngChunk;Z)V

    .line 112
    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lar/com/hjg/pngj/chunks/af;
    .locals 1
    .param p1, "k"    # Ljava/lang/String;
    .param p2, "val"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 159
    invoke-virtual {p0, p1, p2, v0, v0}, Lar/com/hjg/pngj/chunks/ai;->a(Ljava/lang/String;Ljava/lang/String;ZZ)Lar/com/hjg/pngj/chunks/af;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;ZZ)Lar/com/hjg/pngj/chunks/af;
    .locals 3
    .param p1, "k"    # Ljava/lang/String;
    .param p2, "val"    # Ljava/lang/String;
    .param p3, "useLatin1"    # Z
    .param p4, "compress"    # Z

    .prologue
    .line 140
    if-eqz p4, :cond_0

    if-nez p3, :cond_0

    .line 141
    new-instance v1, Lar/com/hjg/pngj/PngjException;

    const-string v2, "cannot compress non latin text"

    invoke-direct {v1, v2}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 143
    :cond_0
    if-eqz p3, :cond_2

    .line 144
    if-eqz p4, :cond_1

    .line 145
    new-instance v0, Lar/com/hjg/pngj/chunks/ah;

    iget-object v1, p0, Lar/com/hjg/pngj/chunks/ai;->a:Lar/com/hjg/pngj/chunks/f;

    iget-object v1, v1, Lar/com/hjg/pngj/chunks/f;->i:Lar/com/hjg/pngj/s;

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/chunks/ah;-><init>(Lar/com/hjg/pngj/s;)V

    .line 153
    .local v0, "c":Lar/com/hjg/pngj/chunks/af;
    :goto_0
    invoke-virtual {v0, p1, p2}, Lar/com/hjg/pngj/chunks/af;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lar/com/hjg/pngj/chunks/ai;->a(Lar/com/hjg/pngj/chunks/PngChunk;Z)V

    .line 155
    return-object v0

    .line 147
    .end local v0    # "c":Lar/com/hjg/pngj/chunks/af;
    :cond_1
    new-instance v0, Lar/com/hjg/pngj/chunks/ac;

    iget-object v1, p0, Lar/com/hjg/pngj/chunks/ai;->a:Lar/com/hjg/pngj/chunks/f;

    iget-object v1, v1, Lar/com/hjg/pngj/chunks/f;->i:Lar/com/hjg/pngj/s;

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/chunks/ac;-><init>(Lar/com/hjg/pngj/s;)V

    .restart local v0    # "c":Lar/com/hjg/pngj/chunks/af;
    goto :goto_0

    .line 150
    .end local v0    # "c":Lar/com/hjg/pngj/chunks/af;
    :cond_2
    new-instance v0, Lar/com/hjg/pngj/chunks/s;

    iget-object v1, p0, Lar/com/hjg/pngj/chunks/ai;->a:Lar/com/hjg/pngj/chunks/f;

    iget-object v1, v1, Lar/com/hjg/pngj/chunks/f;->i:Lar/com/hjg/pngj/s;

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/chunks/s;-><init>(Lar/com/hjg/pngj/s;)V

    .restart local v0    # "c":Lar/com/hjg/pngj/chunks/af;
    move-object v1, v0

    .line 151
    check-cast v1, Lar/com/hjg/pngj/chunks/s;

    invoke-virtual {v1, p1}, Lar/com/hjg/pngj/chunks/s;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p1, "k"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<+",
            "Lar/com/hjg/pngj/chunks/af;",
            ">;"
        }
    .end annotation

    .prologue
    .line 172
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 173
    .local v0, "c":Ljava/util/List;
    iget-object v1, p0, Lar/com/hjg/pngj/chunks/ai;->a:Lar/com/hjg/pngj/chunks/f;

    const-string v2, "tEXt"

    invoke-virtual {v1, v2, p1}, Lar/com/hjg/pngj/chunks/f;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 174
    iget-object v1, p0, Lar/com/hjg/pngj/chunks/ai;->a:Lar/com/hjg/pngj/chunks/f;

    const-string v2, "zTXt"

    invoke-virtual {v1, v2, p1}, Lar/com/hjg/pngj/chunks/f;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 175
    iget-object v1, p0, Lar/com/hjg/pngj/chunks/ai;->a:Lar/com/hjg/pngj/chunks/f;

    const-string v2, "iTXt"

    invoke-virtual {v1, v2, p1}, Lar/com/hjg/pngj/chunks/f;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 176
    return-object v0
.end method

.method public a(D)V
    .locals 1
    .param p1, "x"    # D

    .prologue
    .line 74
    invoke-virtual {p0, p1, p2, p1, p2}, Lar/com/hjg/pngj/chunks/ai;->a(DD)V

    .line 75
    return-void
.end method

.method public a(DD)V
    .locals 3
    .param p1, "x"    # D
    .param p3, "y"    # D

    .prologue
    .line 78
    new-instance v0, Lar/com/hjg/pngj/chunks/v;

    iget-object v1, p0, Lar/com/hjg/pngj/chunks/ai;->a:Lar/com/hjg/pngj/chunks/f;

    iget-object v1, v1, Lar/com/hjg/pngj/chunks/f;->i:Lar/com/hjg/pngj/s;

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/chunks/v;-><init>(Lar/com/hjg/pngj/s;)V

    .line 79
    .local v0, "c":Lar/com/hjg/pngj/chunks/v;
    invoke-virtual {v0, p1, p2, p3, p4}, Lar/com/hjg/pngj/chunks/v;->a(DD)V

    .line 80
    invoke-virtual {p0, v0}, Lar/com/hjg/pngj/chunks/ai;->a(Lar/com/hjg/pngj/chunks/PngChunk;)V

    .line 81
    return-void
.end method

.method public a(Lar/com/hjg/pngj/chunks/PngChunk;)V
    .locals 1
    .param p1, "c"    # Lar/com/hjg/pngj/chunks/PngChunk;

    .prologue
    .line 51
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lar/com/hjg/pngj/chunks/ai;->a(Lar/com/hjg/pngj/chunks/PngChunk;Z)V

    .line 52
    return-void
.end method

.method public a(Lar/com/hjg/pngj/chunks/PngChunk;Z)V
    .locals 3
    .param p1, "c"    # Lar/com/hjg/pngj/chunks/PngChunk;
    .param p2, "lazyOverwrite"    # Z

    .prologue
    .line 37
    invoke-direct {p0}, Lar/com/hjg/pngj/chunks/ai;->i()Lar/com/hjg/pngj/chunks/g;

    move-result-object v0

    .line 38
    .local v0, "cl":Lar/com/hjg/pngj/chunks/g;
    iget-boolean v1, p0, Lar/com/hjg/pngj/chunks/ai;->b:Z

    if-eqz v1, :cond_0

    .line 39
    new-instance v1, Lar/com/hjg/pngj/PngjException;

    const-string v2, "cannot set chunk : readonly metadata"

    invoke-direct {v1, v2}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 40
    :cond_0
    if-eqz p2, :cond_1

    .line 41
    invoke-virtual {v0}, Lar/com/hjg/pngj/chunks/g;->c()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lar/com/hjg/pngj/chunks/ai$1;

    invoke-direct {v2, p0, p1}, Lar/com/hjg/pngj/chunks/ai$1;-><init>(Lar/com/hjg/pngj/chunks/ai;Lar/com/hjg/pngj/chunks/PngChunk;)V

    invoke-static {v1, v2}, Lar/com/hjg/pngj/chunks/c;->b(Ljava/util/List;Lar/com/hjg/pngj/chunks/d;)I

    .line 47
    :cond_1
    invoke-virtual {v0, p1}, Lar/com/hjg/pngj/chunks/g;->d(Lar/com/hjg/pngj/chunks/PngChunk;)Z

    .line 48
    return-void
.end method

.method public a()[D
    .locals 4

    .prologue
    .line 66
    iget-object v1, p0, Lar/com/hjg/pngj/chunks/ai;->a:Lar/com/hjg/pngj/chunks/f;

    const-string v2, "pHYs"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lar/com/hjg/pngj/chunks/f;->a(Ljava/lang/String;Z)Lar/com/hjg/pngj/chunks/PngChunk;

    move-result-object v0

    .line 67
    .local v0, "c":Lar/com/hjg/pngj/chunks/PngChunk;
    if-nez v0, :cond_0

    .line 68
    const/4 v1, 0x2

    new-array v1, v1, [D

    fill-array-data v1, :array_0

    .line 70
    .end local v0    # "c":Lar/com/hjg/pngj/chunks/PngChunk;
    :goto_0
    return-object v1

    .restart local v0    # "c":Lar/com/hjg/pngj/chunks/PngChunk;
    :cond_0
    check-cast v0, Lar/com/hjg/pngj/chunks/v;

    .end local v0    # "c":Lar/com/hjg/pngj/chunks/PngChunk;
    invoke-virtual {v0}, Lar/com/hjg/pngj/chunks/v;->n()[D

    move-result-object v1

    goto :goto_0

    .line 68
    nop

    :array_0
    .array-data 8
        -0x4010000000000000L    # -1.0
        -0x4010000000000000L    # -1.0
    .end array-data
.end method

.method public b()Lar/com/hjg/pngj/chunks/ad;
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lar/com/hjg/pngj/chunks/ai;->a(I)Lar/com/hjg/pngj/chunks/ad;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "k"    # Ljava/lang/String;

    .prologue
    .line 185
    invoke-virtual {p0, p1}, Lar/com/hjg/pngj/chunks/ai;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 186
    .local v2, "li":Ljava/util/List;, "Ljava/util/List<+Lar/com/hjg/pngj/chunks/af;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 187
    const-string v4, ""

    .line 191
    :goto_0
    return-object v4

    .line 188
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 189
    .local v3, "t":Ljava/lang/StringBuilder;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lar/com/hjg/pngj/chunks/af;

    .line 190
    .local v0, "c":Lar/com/hjg/pngj/chunks/af;
    invoke-virtual {v0}, Lar/com/hjg/pngj/chunks/af;->n()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 191
    .end local v0    # "c":Lar/com/hjg/pngj/chunks/af;
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public c()Lar/com/hjg/pngj/chunks/ad;
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/ai;->a:Lar/com/hjg/pngj/chunks/f;

    const-string v1, "tIME"

    invoke-virtual {v0, v1}, Lar/com/hjg/pngj/chunks/f;->b(Ljava/lang/String;)Lar/com/hjg/pngj/chunks/PngChunk;

    move-result-object v0

    check-cast v0, Lar/com/hjg/pngj/chunks/ad;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 2

    .prologue
    .line 123
    invoke-virtual {p0}, Lar/com/hjg/pngj/chunks/ai;->c()Lar/com/hjg/pngj/chunks/ad;

    move-result-object v0

    .line 124
    .local v0, "c":Lar/com/hjg/pngj/chunks/ad;
    if-nez v0, :cond_0

    const-string v1, ""

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lar/com/hjg/pngj/chunks/ad;->k()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public e()Lar/com/hjg/pngj/chunks/w;
    .locals 2

    .prologue
    .line 200
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/ai;->a:Lar/com/hjg/pngj/chunks/f;

    const-string v1, "PLTE"

    invoke-virtual {v0, v1}, Lar/com/hjg/pngj/chunks/f;->b(Ljava/lang/String;)Lar/com/hjg/pngj/chunks/PngChunk;

    move-result-object v0

    check-cast v0, Lar/com/hjg/pngj/chunks/w;

    return-object v0
.end method

.method public f()Lar/com/hjg/pngj/chunks/w;
    .locals 2

    .prologue
    .line 207
    new-instance v0, Lar/com/hjg/pngj/chunks/w;

    iget-object v1, p0, Lar/com/hjg/pngj/chunks/ai;->a:Lar/com/hjg/pngj/chunks/f;

    iget-object v1, v1, Lar/com/hjg/pngj/chunks/f;->i:Lar/com/hjg/pngj/s;

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/chunks/w;-><init>(Lar/com/hjg/pngj/s;)V

    .line 208
    .local v0, "plte":Lar/com/hjg/pngj/chunks/w;
    invoke-virtual {p0, v0}, Lar/com/hjg/pngj/chunks/ai;->a(Lar/com/hjg/pngj/chunks/PngChunk;)V

    .line 209
    return-object v0
.end method

.method public g()Lar/com/hjg/pngj/chunks/ae;
    .locals 2

    .prologue
    .line 218
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/ai;->a:Lar/com/hjg/pngj/chunks/f;

    const-string v1, "tRNS"

    invoke-virtual {v0, v1}, Lar/com/hjg/pngj/chunks/f;->b(Ljava/lang/String;)Lar/com/hjg/pngj/chunks/PngChunk;

    move-result-object v0

    check-cast v0, Lar/com/hjg/pngj/chunks/ae;

    return-object v0
.end method

.method public h()Lar/com/hjg/pngj/chunks/ae;
    .locals 2

    .prologue
    .line 225
    new-instance v0, Lar/com/hjg/pngj/chunks/ae;

    iget-object v1, p0, Lar/com/hjg/pngj/chunks/ai;->a:Lar/com/hjg/pngj/chunks/f;

    iget-object v1, v1, Lar/com/hjg/pngj/chunks/f;->i:Lar/com/hjg/pngj/s;

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/chunks/ae;-><init>(Lar/com/hjg/pngj/s;)V

    .line 226
    .local v0, "trns":Lar/com/hjg/pngj/chunks/ae;
    invoke-virtual {p0, v0}, Lar/com/hjg/pngj/chunks/ai;->a(Lar/com/hjg/pngj/chunks/PngChunk;)V

    .line 227
    return-object v0
.end method
