.class Lar/com/hjg/pngj/aa$1;
.super Lar/com/hjg/pngj/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lar/com/hjg/pngj/aa;->n()Lar/com/hjg/pngj/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic i:Lar/com/hjg/pngj/aa;


# direct methods
.method constructor <init>(Lar/com/hjg/pngj/aa;Z)V
    .locals 0
    .param p2, "x0"    # Z

    .prologue
    .line 142
    iput-object p1, p0, Lar/com/hjg/pngj/aa$1;->i:Lar/com/hjg/pngj/aa;

    invoke-direct {p0, p2}, Lar/com/hjg/pngj/d;-><init>(Z)V

    return-void
.end method


# virtual methods
.method protected a(ILjava/lang/String;J)V
    .locals 1
    .param p1, "len"    # I
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "offset"    # J

    .prologue
    .line 164
    invoke-super {p0, p1, p2, p3, p4}, Lar/com/hjg/pngj/d;->a(ILjava/lang/String;J)V

    .line 165
    return-void
.end method

.method protected a(Lar/com/hjg/pngj/ChunkReader;)V
    .locals 6
    .param p1, "chunkR"    # Lar/com/hjg/pngj/ChunkReader;

    .prologue
    .line 169
    invoke-super {p0, p1}, Lar/com/hjg/pngj/d;->a(Lar/com/hjg/pngj/ChunkReader;)V

    .line 170
    invoke-virtual {p1}, Lar/com/hjg/pngj/ChunkReader;->a()Lar/com/hjg/pngj/chunks/e;

    move-result-object v2

    iget-object v2, v2, Lar/com/hjg/pngj/chunks/e;->c:Ljava/lang/String;

    const-string v3, "fcTL"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 171
    iget-object v2, p0, Lar/com/hjg/pngj/aa$1;->i:Lar/com/hjg/pngj/aa;

    iget v3, v2, Lar/com/hjg/pngj/aa;->n:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lar/com/hjg/pngj/aa;->n:I

    .line 172
    iget-object v2, p0, Lar/com/hjg/pngj/aa$1;->i:Lar/com/hjg/pngj/aa;

    iget-object v2, v2, Lar/com/hjg/pngj/aa;->f:Lar/com/hjg/pngj/d;

    invoke-virtual {v2}, Lar/com/hjg/pngj/d;->t()Ljava/util/List;

    move-result-object v0

    .line 173
    .local v0, "chunkslist":Ljava/util/List;, "Ljava/util/List<Lar/com/hjg/pngj/chunks/PngChunk;>;"
    iget-object v3, p0, Lar/com/hjg/pngj/aa$1;->i:Lar/com/hjg/pngj/aa;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lar/com/hjg/pngj/chunks/k;

    invoke-static {v3, v2}, Lar/com/hjg/pngj/aa;->a(Lar/com/hjg/pngj/aa;Lar/com/hjg/pngj/chunks/k;)Lar/com/hjg/pngj/chunks/k;

    .line 175
    invoke-virtual {p1}, Lar/com/hjg/pngj/ChunkReader;->a()Lar/com/hjg/pngj/chunks/e;

    move-result-object v2

    invoke-virtual {v2}, Lar/com/hjg/pngj/chunks/e;->d()J

    move-result-wide v2

    iget-object v4, p0, Lar/com/hjg/pngj/aa$1;->i:Lar/com/hjg/pngj/aa;

    invoke-static {v4}, Lar/com/hjg/pngj/aa;->a(Lar/com/hjg/pngj/aa;)Lar/com/hjg/pngj/chunks/k;

    move-result-object v4

    invoke-virtual {v4}, Lar/com/hjg/pngj/chunks/k;->e()Lar/com/hjg/pngj/chunks/e;

    move-result-object v4

    invoke-virtual {v4}, Lar/com/hjg/pngj/chunks/e;->d()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 176
    new-instance v2, Lar/com/hjg/pngj/PngjInputException;

    const-string v3, "something went wrong"

    invoke-direct {v2, v3}, Lar/com/hjg/pngj/PngjInputException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 177
    :cond_0
    iget-object v2, p0, Lar/com/hjg/pngj/aa$1;->i:Lar/com/hjg/pngj/aa;

    invoke-static {v2}, Lar/com/hjg/pngj/aa;->a(Lar/com/hjg/pngj/aa;)Lar/com/hjg/pngj/chunks/k;

    move-result-object v2

    invoke-virtual {v2}, Lar/com/hjg/pngj/chunks/k;->j()Lar/com/hjg/pngj/s;

    move-result-object v1

    .line 178
    .local v1, "frameInfo":Lar/com/hjg/pngj/s;
    iget-object v2, p0, Lar/com/hjg/pngj/aa$1;->i:Lar/com/hjg/pngj/aa;

    invoke-virtual {v2}, Lar/com/hjg/pngj/aa;->m()Lar/com/hjg/pngj/d;

    move-result-object v2

    invoke-virtual {v2, v1}, Lar/com/hjg/pngj/d;->a(Lar/com/hjg/pngj/s;)V

    .line 180
    .end local v0    # "chunkslist":Ljava/util/List;, "Ljava/util/List<Lar/com/hjg/pngj/chunks/PngChunk;>;"
    .end local v1    # "frameInfo":Lar/com/hjg/pngj/s;
    :cond_1
    return-void
.end method

.method protected a(Ljava/lang/String;)Z
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 151
    const-string v0, "IDAT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "fdAT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected b(Ljava/lang/String;)Lar/com/hjg/pngj/g;
    .locals 3
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 156
    new-instance v0, Lar/com/hjg/pngj/r;

    invoke-virtual {p0}, Lar/com/hjg/pngj/aa$1;->A()Lar/com/hjg/pngj/s;

    move-result-object v1

    iget-object v2, p0, Lar/com/hjg/pngj/aa$1;->e:Lar/com/hjg/pngj/h;

    invoke-direct {v0, p1, v1, v2}, Lar/com/hjg/pngj/r;-><init>(Ljava/lang/String;Lar/com/hjg/pngj/s;Lar/com/hjg/pngj/h;)V

    .line 157
    .local v0, "ids":Lar/com/hjg/pngj/r;
    iget-boolean v1, p0, Lar/com/hjg/pngj/aa$1;->h:Z

    invoke-virtual {v0, v1}, Lar/com/hjg/pngj/r;->a(Z)V

    .line 158
    return-object v0
.end method

.method public b(ILjava/lang/String;)Z
    .locals 1
    .param p1, "len"    # I
    .param p2, "id"    # Ljava/lang/String;

    .prologue
    .line 146
    invoke-super {p0, p1, p2}, Lar/com/hjg/pngj/d;->b(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected e(Ljava/lang/String;)Z
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 185
    invoke-super {p0, p1}, Lar/com/hjg/pngj/d;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "fdAT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
