.class public Lar/com/hjg/pngj/ae;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lar/com/hjg/pngj/s;

.field protected b:I

.field protected c:I

.field protected d:Lar/com/hjg/pngj/a/g;

.field protected e:Ljava/lang/StringBuilder;

.field private final f:Lar/com/hjg/pngj/chunks/g;

.field private final g:Lar/com/hjg/pngj/chunks/ai;

.field private h:I

.field private i:I

.field private j:Z

.field private k:I

.field private final l:Ljava/io/OutputStream;

.field private m:Lar/com/hjg/pngj/chunks/d;

.field private n:Lar/com/hjg/pngj/chunks/f;


# direct methods
.method public constructor <init>(Ljava/io/File;Lar/com/hjg/pngj/s;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .param p2, "imgInfo"    # Lar/com/hjg/pngj/s;

    .prologue
    .line 78
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lar/com/hjg/pngj/ae;-><init>(Ljava/io/File;Lar/com/hjg/pngj/s;Z)V

    .line 79
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lar/com/hjg/pngj/s;Z)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .param p2, "imgInfo"    # Lar/com/hjg/pngj/s;
    .param p3, "allowoverwrite"    # Z

    .prologue
    .line 70
    invoke-static {p1, p3}, Lar/com/hjg/pngj/x;->a(Ljava/io/File;Z)Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lar/com/hjg/pngj/ae;-><init>(Ljava/io/OutputStream;Lar/com/hjg/pngj/s;)V

    .line 71
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lar/com/hjg/pngj/ae;->b(Z)V

    .line 72
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Lar/com/hjg/pngj/s;)V
    .locals 4
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .param p2, "imgInfo"    # Lar/com/hjg/pngj/s;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput v0, p0, Lar/com/hjg/pngj/ae;->b:I

    .line 41
    iput v0, p0, Lar/com/hjg/pngj/ae;->c:I

    .line 43
    iput v2, p0, Lar/com/hjg/pngj/ae;->h:I

    .line 44
    iput v1, p0, Lar/com/hjg/pngj/ae;->i:I

    .line 46
    iput-boolean v2, p0, Lar/com/hjg/pngj/ae;->j:Z

    .line 48
    iput v1, p0, Lar/com/hjg/pngj/ae;->k:I

    .line 55
    iput-object v3, p0, Lar/com/hjg/pngj/ae;->m:Lar/com/hjg/pngj/chunks/d;

    .line 56
    iput-object v3, p0, Lar/com/hjg/pngj/ae;->n:Lar/com/hjg/pngj/chunks/f;

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lar/com/hjg/pngj/ae;->e:Ljava/lang/StringBuilder;

    .line 90
    iput-object p1, p0, Lar/com/hjg/pngj/ae;->l:Ljava/io/OutputStream;

    .line 91
    iput-object p2, p0, Lar/com/hjg/pngj/ae;->a:Lar/com/hjg/pngj/s;

    .line 93
    new-instance v0, Lar/com/hjg/pngj/chunks/g;

    invoke-direct {v0, p2}, Lar/com/hjg/pngj/chunks/g;-><init>(Lar/com/hjg/pngj/s;)V

    iput-object v0, p0, Lar/com/hjg/pngj/ae;->f:Lar/com/hjg/pngj/chunks/g;

    .line 94
    new-instance v0, Lar/com/hjg/pngj/chunks/ai;

    iget-object v1, p0, Lar/com/hjg/pngj/ae;->f:Lar/com/hjg/pngj/chunks/g;

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/chunks/ai;-><init>(Lar/com/hjg/pngj/chunks/f;)V

    iput-object v0, p0, Lar/com/hjg/pngj/ae;->g:Lar/com/hjg/pngj/chunks/ai;

    .line 95
    invoke-virtual {p0, p2}, Lar/com/hjg/pngj/ae;->a(Lar/com/hjg/pngj/s;)Lar/com/hjg/pngj/a/g;

    move-result-object v0

    iput-object v0, p0, Lar/com/hjg/pngj/ae;->d:Lar/com/hjg/pngj/a/g;

    .line 96
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lar/com/hjg/pngj/ae;->a(I)V

    .line 97
    return-void
.end method

.method private h()V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lar/com/hjg/pngj/ae;->d:Lar/com/hjg/pngj/a/g;

    iget-object v1, p0, Lar/com/hjg/pngj/ae;->l:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Lar/com/hjg/pngj/a/g;->a(Ljava/io/OutputStream;)V

    .line 101
    iget-object v0, p0, Lar/com/hjg/pngj/ae;->d:Lar/com/hjg/pngj/a/g;

    iget v1, p0, Lar/com/hjg/pngj/ae;->k:I

    invoke-virtual {v0, v1}, Lar/com/hjg/pngj/a/g;->a(I)V

    .line 102
    invoke-direct {p0}, Lar/com/hjg/pngj/ae;->l()V

    .line 103
    invoke-direct {p0}, Lar/com/hjg/pngj/ae;->j()V

    .line 104
    return-void
.end method

.method private i()V
    .locals 3

    .prologue
    .line 107
    const/4 v1, 0x6

    iput v1, p0, Lar/com/hjg/pngj/ae;->c:I

    .line 108
    new-instance v0, Lar/com/hjg/pngj/chunks/q;

    iget-object v1, p0, Lar/com/hjg/pngj/ae;->a:Lar/com/hjg/pngj/s;

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/chunks/q;-><init>(Lar/com/hjg/pngj/s;)V

    .line 109
    .local v0, "c":Lar/com/hjg/pngj/chunks/q;
    invoke-virtual {v0}, Lar/com/hjg/pngj/chunks/q;->c()Lar/com/hjg/pngj/chunks/e;

    move-result-object v1

    iget-object v2, p0, Lar/com/hjg/pngj/ae;->l:Ljava/io/OutputStream;

    invoke-virtual {v1, v2}, Lar/com/hjg/pngj/chunks/e;->a(Ljava/io/OutputStream;)V

    .line 110
    iget-object v1, p0, Lar/com/hjg/pngj/ae;->f:Lar/com/hjg/pngj/chunks/g;

    invoke-virtual {v1}, Lar/com/hjg/pngj/chunks/g;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    return-void
.end method

.method private j()V
    .locals 4

    .prologue
    .line 114
    iget v1, p0, Lar/com/hjg/pngj/ae;->c:I

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    .line 128
    :goto_0
    return-void

    .line 116
    :cond_0
    const/4 v0, 0x0

    .line 117
    .local v0, "nw":I
    const/4 v1, 0x1

    iput v1, p0, Lar/com/hjg/pngj/ae;->c:I

    .line 118
    invoke-direct {p0}, Lar/com/hjg/pngj/ae;->m()V

    .line 119
    iget-object v1, p0, Lar/com/hjg/pngj/ae;->f:Lar/com/hjg/pngj/chunks/g;

    iget-object v2, p0, Lar/com/hjg/pngj/ae;->l:Ljava/io/OutputStream;

    iget v3, p0, Lar/com/hjg/pngj/ae;->c:I

    invoke-virtual {v1, v2, v3}, Lar/com/hjg/pngj/chunks/g;->a(Ljava/io/OutputStream;I)I

    move-result v0

    .line 120
    const/4 v1, 0x2

    iput v1, p0, Lar/com/hjg/pngj/ae;->c:I

    .line 121
    iget-object v1, p0, Lar/com/hjg/pngj/ae;->f:Lar/com/hjg/pngj/chunks/g;

    iget-object v2, p0, Lar/com/hjg/pngj/ae;->l:Ljava/io/OutputStream;

    iget v3, p0, Lar/com/hjg/pngj/ae;->c:I

    invoke-virtual {v1, v2, v3}, Lar/com/hjg/pngj/chunks/g;->a(Ljava/io/OutputStream;I)I

    move-result v0

    .line 122
    if-lez v0, :cond_1

    iget-object v1, p0, Lar/com/hjg/pngj/ae;->a:Lar/com/hjg/pngj/s;

    iget-boolean v1, v1, Lar/com/hjg/pngj/s;->g:Z

    if-eqz v1, :cond_1

    .line 123
    new-instance v1, Lar/com/hjg/pngj/PngjOutputException;

    const-string v2, "cannot write palette for this format"

    invoke-direct {v1, v2}, Lar/com/hjg/pngj/PngjOutputException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 124
    :cond_1
    if-nez v0, :cond_2

    iget-object v1, p0, Lar/com/hjg/pngj/ae;->a:Lar/com/hjg/pngj/s;

    iget-boolean v1, v1, Lar/com/hjg/pngj/s;->h:Z

    if-eqz v1, :cond_2

    .line 125
    new-instance v1, Lar/com/hjg/pngj/PngjOutputException;

    const-string v2, "missing palette"

    invoke-direct {v1, v2}, Lar/com/hjg/pngj/PngjOutputException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 126
    :cond_2
    const/4 v1, 0x3

    iput v1, p0, Lar/com/hjg/pngj/ae;->c:I

    .line 127
    iget-object v1, p0, Lar/com/hjg/pngj/ae;->f:Lar/com/hjg/pngj/chunks/g;

    iget-object v2, p0, Lar/com/hjg/pngj/ae;->l:Ljava/io/OutputStream;

    iget v3, p0, Lar/com/hjg/pngj/ae;->c:I

    invoke-virtual {v1, v2, v3}, Lar/com/hjg/pngj/chunks/g;->a(Ljava/io/OutputStream;I)I

    move-result v0

    .line 128
    goto :goto_0
.end method

.method private k()V
    .locals 4

    .prologue
    .line 131
    const/4 v1, 0x5

    iput v1, p0, Lar/com/hjg/pngj/ae;->c:I

    .line 132
    invoke-direct {p0}, Lar/com/hjg/pngj/ae;->m()V

    .line 133
    iget-object v1, p0, Lar/com/hjg/pngj/ae;->f:Lar/com/hjg/pngj/chunks/g;

    iget-object v2, p0, Lar/com/hjg/pngj/ae;->l:Ljava/io/OutputStream;

    iget v3, p0, Lar/com/hjg/pngj/ae;->c:I

    invoke-virtual {v1, v2, v3}, Lar/com/hjg/pngj/chunks/g;->a(Ljava/io/OutputStream;I)I

    .line 135
    iget-object v1, p0, Lar/com/hjg/pngj/ae;->f:Lar/com/hjg/pngj/chunks/g;

    invoke-virtual {v1}, Lar/com/hjg/pngj/chunks/g;->c()Ljava/util/List;

    move-result-object v0

    .line 136
    .local v0, "pending":Ljava/util/List;, "Ljava/util/List<Lar/com/hjg/pngj/chunks/PngChunk;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 137
    new-instance v2, Lar/com/hjg/pngj/PngjOutputException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " chunks were not written! Eg: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lar/com/hjg/pngj/chunks/PngChunk;

    invoke-virtual {v1}, Lar/com/hjg/pngj/chunks/PngChunk;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lar/com/hjg/pngj/PngjOutputException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 139
    :cond_0
    return-void
.end method

.method private l()V
    .locals 3

    .prologue
    .line 145
    iget-object v1, p0, Lar/com/hjg/pngj/ae;->l:Ljava/io/OutputStream;

    invoke-static {}, Lar/com/hjg/pngj/x;->a()[B

    move-result-object v2

    invoke-static {v1, v2}, Lar/com/hjg/pngj/x;->b(Ljava/io/OutputStream;[B)V

    .line 146
    const/4 v1, 0x0

    iput v1, p0, Lar/com/hjg/pngj/ae;->c:I

    .line 147
    new-instance v0, Lar/com/hjg/pngj/chunks/r;

    iget-object v1, p0, Lar/com/hjg/pngj/ae;->a:Lar/com/hjg/pngj/s;

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/chunks/r;-><init>(Lar/com/hjg/pngj/s;)V

    .line 149
    .local v0, "ihdr":Lar/com/hjg/pngj/chunks/r;
    invoke-virtual {v0}, Lar/com/hjg/pngj/chunks/r;->c()Lar/com/hjg/pngj/chunks/e;

    move-result-object v1

    iget-object v2, p0, Lar/com/hjg/pngj/ae;->l:Ljava/io/OutputStream;

    invoke-virtual {v1, v2}, Lar/com/hjg/pngj/chunks/e;->a(Ljava/io/OutputStream;)V

    .line 150
    iget-object v1, p0, Lar/com/hjg/pngj/ae;->f:Lar/com/hjg/pngj/chunks/g;

    invoke-virtual {v1}, Lar/com/hjg/pngj/chunks/g;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    return-void
.end method

.method private m()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    .line 154
    iget-object v5, p0, Lar/com/hjg/pngj/ae;->n:Lar/com/hjg/pngj/chunks/f;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lar/com/hjg/pngj/ae;->m:Lar/com/hjg/pngj/chunks/d;

    if-nez v5, :cond_1

    .line 179
    :cond_0
    return-void

    .line 156
    :cond_1
    iget v5, p0, Lar/com/hjg/pngj/ae;->c:I

    if-lt v5, v7, :cond_6

    const/4 v4, 0x1

    .line 159
    .local v4, "idatDone":Z
    :goto_0
    iget-object v5, p0, Lar/com/hjg/pngj/ae;->n:Lar/com/hjg/pngj/chunks/f;

    invoke-virtual {v5}, Lar/com/hjg/pngj/chunks/f;->a()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lar/com/hjg/pngj/chunks/PngChunk;

    .line 160
    .local v0, "chunk":Lar/com/hjg/pngj/chunks/PngChunk;
    invoke-virtual {v0}, Lar/com/hjg/pngj/chunks/PngChunk;->e()Lar/com/hjg/pngj/chunks/e;

    move-result-object v5

    iget-object v5, v5, Lar/com/hjg/pngj/chunks/e;->d:[B

    if-eqz v5, :cond_2

    .line 162
    invoke-virtual {v0}, Lar/com/hjg/pngj/chunks/PngChunk;->a()I

    move-result v2

    .line 163
    .local v2, "groupOri":I
    if-gt v2, v7, :cond_3

    if-nez v4, :cond_2

    .line 165
    :cond_3
    if-lt v2, v7, :cond_4

    if-eqz v4, :cond_2

    .line 167
    :cond_4
    iget-boolean v5, v0, Lar/com/hjg/pngj/chunks/PngChunk;->b:Z

    if-eqz v5, :cond_5

    iget-object v5, v0, Lar/com/hjg/pngj/chunks/PngChunk;->a:Ljava/lang/String;

    const-string v6, "PLTE"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 170
    :cond_5
    iget-object v5, p0, Lar/com/hjg/pngj/ae;->m:Lar/com/hjg/pngj/chunks/d;

    invoke-interface {v5, v0}, Lar/com/hjg/pngj/chunks/d;->a(Lar/com/hjg/pngj/chunks/PngChunk;)Z

    move-result v1

    .line 171
    .local v1, "copy":Z
    if-eqz v1, :cond_2

    .line 173
    iget-object v5, p0, Lar/com/hjg/pngj/ae;->f:Lar/com/hjg/pngj/chunks/g;

    invoke-virtual {v5, v0}, Lar/com/hjg/pngj/chunks/g;->a(Lar/com/hjg/pngj/chunks/PngChunk;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lar/com/hjg/pngj/ae;->f:Lar/com/hjg/pngj/chunks/g;

    invoke-virtual {v5, v0}, Lar/com/hjg/pngj/chunks/g;->b(Lar/com/hjg/pngj/chunks/PngChunk;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 175
    iget-object v5, p0, Lar/com/hjg/pngj/ae;->f:Lar/com/hjg/pngj/chunks/g;

    invoke-virtual {v5, v0}, Lar/com/hjg/pngj/chunks/g;->d(Lar/com/hjg/pngj/chunks/PngChunk;)Z

    goto :goto_1

    .line 156
    .end local v0    # "chunk":Lar/com/hjg/pngj/chunks/PngChunk;
    .end local v1    # "copy":Z
    .end local v2    # "groupOri":I
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "idatDone":Z
    :cond_6
    const/4 v4, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()D
    .locals 2

    .prologue
    .line 252
    iget v0, p0, Lar/com/hjg/pngj/ae;->c:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 253
    new-instance v0, Lar/com/hjg/pngj/PngjOutputException;

    const-string v1, "must be called after end()"

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjOutputException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 254
    :cond_0
    iget-object v0, p0, Lar/com/hjg/pngj/ae;->d:Lar/com/hjg/pngj/a/g;

    invoke-virtual {v0}, Lar/com/hjg/pngj/a/g;->h()D

    move-result-wide v0

    return-wide v0
.end method

.method protected a(Lar/com/hjg/pngj/s;)Lar/com/hjg/pngj/a/g;
    .locals 1
    .param p1, "imginfo"    # Lar/com/hjg/pngj/s;

    .prologue
    .line 415
    new-instance v0, Lar/com/hjg/pngj/a/h;

    invoke-direct {v0, p1}, Lar/com/hjg/pngj/a/h;-><init>(Lar/com/hjg/pngj/s;)V

    .line 416
    .local v0, "pw":Lar/com/hjg/pngj/a/h;
    return-object v0
.end method

.method public a(I)V
    .locals 2
    .param p1, "complevel"    # I

    .prologue
    .line 326
    iget-object v0, p0, Lar/com/hjg/pngj/ae;->d:Lar/com/hjg/pngj/a/g;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lar/com/hjg/pngj/a/g;->b(Ljava/lang/Integer;)V

    .line 327
    return-void
.end method

.method public a(Lar/com/hjg/pngj/FilterType;)V
    .locals 1
    .param p1, "filterType"    # Lar/com/hjg/pngj/FilterType;

    .prologue
    .line 315
    iget-object v0, p0, Lar/com/hjg/pngj/ae;->d:Lar/com/hjg/pngj/a/g;

    invoke-virtual {v0, p1}, Lar/com/hjg/pngj/a/g;->a(Lar/com/hjg/pngj/FilterType;)V

    .line 316
    return-void
.end method

.method public a(Lar/com/hjg/pngj/chunks/PngChunk;)V
    .locals 3
    .param p1, "chunk"    # Lar/com/hjg/pngj/chunks/PngChunk;

    .prologue
    .line 191
    iget-object v2, p0, Lar/com/hjg/pngj/ae;->f:Lar/com/hjg/pngj/chunks/g;

    invoke-virtual {v2, p1}, Lar/com/hjg/pngj/chunks/g;->b(Lar/com/hjg/pngj/chunks/PngChunk;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lar/com/hjg/pngj/chunks/PngChunk;

    .line 192
    .local v1, "other":Lar/com/hjg/pngj/chunks/PngChunk;
    invoke-virtual {p0}, Lar/com/hjg/pngj/ae;->d()Lar/com/hjg/pngj/chunks/g;

    move-result-object v2

    invoke-virtual {v2, v1}, Lar/com/hjg/pngj/chunks/g;->c(Lar/com/hjg/pngj/chunks/PngChunk;)Z

    goto :goto_0

    .line 194
    .end local v1    # "other":Lar/com/hjg/pngj/chunks/PngChunk;
    :cond_0
    iget-object v2, p0, Lar/com/hjg/pngj/ae;->f:Lar/com/hjg/pngj/chunks/g;

    invoke-virtual {v2, p1}, Lar/com/hjg/pngj/chunks/g;->d(Lar/com/hjg/pngj/chunks/PngChunk;)Z

    .line 195
    return-void
.end method

.method public a(Lar/com/hjg/pngj/chunks/f;)V
    .locals 1
    .param p1, "chunks"    # Lar/com/hjg/pngj/chunks/f;

    .prologue
    .line 223
    const/16 v0, 0x8

    invoke-virtual {p0, p1, v0}, Lar/com/hjg/pngj/ae;->a(Lar/com/hjg/pngj/chunks/f;I)V

    .line 224
    return-void
.end method

.method public a(Lar/com/hjg/pngj/chunks/f;I)V
    .locals 1
    .param p1, "chunks"    # Lar/com/hjg/pngj/chunks/f;
    .param p2, "copyMask"    # I

    .prologue
    .line 216
    iget-object v0, p0, Lar/com/hjg/pngj/ae;->a:Lar/com/hjg/pngj/s;

    invoke-static {p2, v0}, Lar/com/hjg/pngj/chunks/a;->a(ILar/com/hjg/pngj/s;)Lar/com/hjg/pngj/chunks/d;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lar/com/hjg/pngj/ae;->a(Lar/com/hjg/pngj/chunks/f;Lar/com/hjg/pngj/chunks/d;)V

    .line 217
    return-void
.end method

.method public a(Lar/com/hjg/pngj/chunks/f;Lar/com/hjg/pngj/chunks/d;)V
    .locals 2
    .param p1, "chunks"    # Lar/com/hjg/pngj/chunks/f;
    .param p2, "predicate"    # Lar/com/hjg/pngj/chunks/d;

    .prologue
    .line 235
    iget-object v0, p0, Lar/com/hjg/pngj/ae;->n:Lar/com/hjg/pngj/chunks/f;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 236
    sget-object v0, Lar/com/hjg/pngj/x;->b:Ljava/util/logging/Logger;

    const-string v1, "copyChunksFrom should only be called once"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 237
    :cond_0
    if-nez p2, :cond_1

    .line 238
    new-instance v0, Lar/com/hjg/pngj/PngjOutputException;

    const-string v1, "copyChunksFrom requires a predicate"

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjOutputException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 239
    :cond_1
    iput-object p1, p0, Lar/com/hjg/pngj/ae;->n:Lar/com/hjg/pngj/chunks/f;

    .line 240
    iput-object p2, p0, Lar/com/hjg/pngj/ae;->m:Lar/com/hjg/pngj/chunks/d;

    .line 241
    return-void
.end method

.method public a(Lar/com/hjg/pngj/l;)V
    .locals 1
    .param p1, "imgline"    # Lar/com/hjg/pngj/l;

    .prologue
    .line 365
    iget v0, p0, Lar/com/hjg/pngj/ae;->b:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, p1, v0}, Lar/com/hjg/pngj/ae;->a(Lar/com/hjg/pngj/l;I)V

    .line 366
    return-void
.end method

.method public a(Lar/com/hjg/pngj/l;I)V
    .locals 4
    .param p1, "imgline"    # Lar/com/hjg/pngj/l;
    .param p2, "rownumber"    # I

    .prologue
    .line 377
    iget v1, p0, Lar/com/hjg/pngj/ae;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lar/com/hjg/pngj/ae;->b:I

    .line 378
    iget v1, p0, Lar/com/hjg/pngj/ae;->b:I

    iget-object v2, p0, Lar/com/hjg/pngj/ae;->a:Lar/com/hjg/pngj/s;

    iget v2, v2, Lar/com/hjg/pngj/s;->c:I

    if-ne v1, v2, :cond_0

    .line 379
    const/4 v1, 0x0

    iput v1, p0, Lar/com/hjg/pngj/ae;->b:I

    .line 380
    :cond_0
    iget-object v1, p0, Lar/com/hjg/pngj/ae;->a:Lar/com/hjg/pngj/s;

    iget v1, v1, Lar/com/hjg/pngj/s;->c:I

    if-ne p2, v1, :cond_1

    .line 381
    const/4 p2, 0x0

    .line 382
    :cond_1
    if-ltz p2, :cond_2

    iget v1, p0, Lar/com/hjg/pngj/ae;->b:I

    if-eq v1, p2, :cond_2

    .line 383
    new-instance v1, Lar/com/hjg/pngj/PngjOutputException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rows must be written in order: expected:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lar/com/hjg/pngj/ae;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " passed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lar/com/hjg/pngj/PngjOutputException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 385
    :cond_2
    iget v1, p0, Lar/com/hjg/pngj/ae;->b:I

    if-nez v1, :cond_3

    .line 386
    iget v1, p0, Lar/com/hjg/pngj/ae;->i:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lar/com/hjg/pngj/ae;->i:I

    .line 387
    :cond_3
    if-nez p2, :cond_4

    iget v1, p0, Lar/com/hjg/pngj/ae;->i:I

    iget v2, p0, Lar/com/hjg/pngj/ae;->h:I

    if-ne v1, v2, :cond_4

    .line 388
    invoke-direct {p0}, Lar/com/hjg/pngj/ae;->h()V

    .line 389
    const/4 v1, 0x4

    iput v1, p0, Lar/com/hjg/pngj/ae;->c:I

    .line 391
    :cond_4
    iget-object v1, p0, Lar/com/hjg/pngj/ae;->d:Lar/com/hjg/pngj/a/g;

    invoke-virtual {v1}, Lar/com/hjg/pngj/a/g;->a()[B

    move-result-object v0

    .line 392
    .local v0, "rowb":[B
    invoke-interface {p1, v0}, Lar/com/hjg/pngj/l;->a([B)V

    .line 393
    iget-object v1, p0, Lar/com/hjg/pngj/ae;->d:Lar/com/hjg/pngj/a/g;

    invoke-virtual {v1, v0}, Lar/com/hjg/pngj/a/g;->a([B)V

    .line 395
    return-void
.end method

.method public a(Lar/com/hjg/pngj/o;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lar/com/hjg/pngj/o",
            "<+",
            "Lar/com/hjg/pngj/l;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 372
    .local p1, "imglines":Lar/com/hjg/pngj/o;, "Lar/com/hjg/pngj/o<+Lar/com/hjg/pngj/l;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lar/com/hjg/pngj/ae;->a:Lar/com/hjg/pngj/s;

    iget v1, v1, Lar/com/hjg/pngj/s;->c:I

    if-ge v0, v1, :cond_0

    .line 373
    invoke-interface {p1, v0}, Lar/com/hjg/pngj/o;->b(I)Lar/com/hjg/pngj/l;

    move-result-object v1

    invoke-virtual {p0, v1}, Lar/com/hjg/pngj/ae;->a(Lar/com/hjg/pngj/l;)V

    .line 372
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 374
    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 2
    .param p1, "filterPreserve"    # Z

    .prologue
    .line 333
    if-eqz p1, :cond_1

    .line 334
    iget-object v0, p0, Lar/com/hjg/pngj/ae;->d:Lar/com/hjg/pngj/a/g;

    sget-object v1, Lar/com/hjg/pngj/FilterType;->FILTER_PRESERVE:Lar/com/hjg/pngj/FilterType;

    invoke-virtual {v0, v1}, Lar/com/hjg/pngj/a/g;->a(Lar/com/hjg/pngj/FilterType;)V

    .line 337
    :cond_0
    :goto_0
    return-void

    .line 335
    :cond_1
    iget-object v0, p0, Lar/com/hjg/pngj/ae;->d:Lar/com/hjg/pngj/a/g;

    invoke-virtual {v0}, Lar/com/hjg/pngj/a/g;->g()Lar/com/hjg/pngj/FilterType;

    move-result-object v0

    if-nez v0, :cond_0

    .line 336
    iget-object v0, p0, Lar/com/hjg/pngj/ae;->d:Lar/com/hjg/pngj/a/g;

    sget-object v1, Lar/com/hjg/pngj/FilterType;->FILTER_DEFAULT:Lar/com/hjg/pngj/FilterType;

    invoke-virtual {v0, v1}, Lar/com/hjg/pngj/a/g;->a(Lar/com/hjg/pngj/FilterType;)V

    goto :goto_0
.end method

.method public a([I)V
    .locals 2
    .param p1, "buf"    # [I

    .prologue
    .line 401
    new-instance v0, Lar/com/hjg/pngj/v;

    iget-object v1, p0, Lar/com/hjg/pngj/ae;->a:Lar/com/hjg/pngj/s;

    invoke-direct {v0, v1, p1}, Lar/com/hjg/pngj/v;-><init>(Lar/com/hjg/pngj/s;[I)V

    invoke-virtual {p0, v0}, Lar/com/hjg/pngj/ae;->a(Lar/com/hjg/pngj/l;)V

    .line 402
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 261
    iget v0, p0, Lar/com/hjg/pngj/ae;->b:I

    iget-object v1, p0, Lar/com/hjg/pngj/ae;->a:Lar/com/hjg/pngj/s;

    iget v1, v1, Lar/com/hjg/pngj/s;->c:I

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lar/com/hjg/pngj/ae;->d:Lar/com/hjg/pngj/a/g;

    invoke-virtual {v0}, Lar/com/hjg/pngj/a/g;->j()Z

    move-result v0

    if-nez v0, :cond_1

    .line 262
    :cond_0
    new-instance v0, Lar/com/hjg/pngj/PngjOutputException;

    const-string v1, "all rows have not been written"

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjOutputException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 264
    :cond_1
    :try_start_0
    iget-object v0, p0, Lar/com/hjg/pngj/ae;->d:Lar/com/hjg/pngj/a/g;

    if-eqz v0, :cond_2

    .line 265
    iget-object v0, p0, Lar/com/hjg/pngj/ae;->d:Lar/com/hjg/pngj/a/g;

    invoke-virtual {v0}, Lar/com/hjg/pngj/a/g;->d()V

    .line 266
    :cond_2
    iget v0, p0, Lar/com/hjg/pngj/ae;->c:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_3

    .line 267
    invoke-direct {p0}, Lar/com/hjg/pngj/ae;->k()V

    .line 268
    :cond_3
    iget v0, p0, Lar/com/hjg/pngj/ae;->c:I

    const/4 v1, 0x6

    if-ge v0, v1, :cond_4

    .line 269
    invoke-direct {p0}, Lar/com/hjg/pngj/ae;->i()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 271
    :cond_4
    invoke-virtual {p0}, Lar/com/hjg/pngj/ae;->c()V

    .line 273
    return-void

    .line 271
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lar/com/hjg/pngj/ae;->c()V

    throw v0
.end method

.method public b(I)V
    .locals 0
    .param p1, "idatMaxSize"    # I

    .prologue
    .line 347
    iput p1, p0, Lar/com/hjg/pngj/ae;->k:I

    .line 348
    return-void
.end method

.method public b(Z)V
    .locals 0
    .param p1, "shouldCloseStream"    # Z

    .prologue
    .line 356
    iput-boolean p1, p0, Lar/com/hjg/pngj/ae;->j:Z

    .line 357
    return-void
.end method

.method public c()V
    .locals 4

    .prologue
    .line 284
    iget-object v1, p0, Lar/com/hjg/pngj/ae;->d:Lar/com/hjg/pngj/a/g;

    if-eqz v1, :cond_0

    .line 285
    iget-object v1, p0, Lar/com/hjg/pngj/ae;->d:Lar/com/hjg/pngj/a/g;

    invoke-virtual {v1}, Lar/com/hjg/pngj/a/g;->d()V

    .line 286
    :cond_0
    iget-boolean v1, p0, Lar/com/hjg/pngj/ae;->j:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lar/com/hjg/pngj/ae;->l:Ljava/io/OutputStream;

    if-eqz v1, :cond_1

    .line 288
    :try_start_0
    iget-object v1, p0, Lar/com/hjg/pngj/ae;->l:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    :cond_1
    :goto_0
    return-void

    .line 289
    :catch_0
    move-exception v0

    .line 290
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lar/com/hjg/pngj/x;->b:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error closing writer "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public d()Lar/com/hjg/pngj/chunks/g;
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lar/com/hjg/pngj/ae;->f:Lar/com/hjg/pngj/chunks/g;

    return-object v0
.end method

.method public e()Lar/com/hjg/pngj/chunks/ai;
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lar/com/hjg/pngj/ae;->g:Lar/com/hjg/pngj/chunks/ai;

    return-object v0
.end method

.method public final f()Lar/com/hjg/pngj/a/g;
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Lar/com/hjg/pngj/ae;->d:Lar/com/hjg/pngj/a/g;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 424
    iget-object v0, p0, Lar/com/hjg/pngj/ae;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
