.class Lcom/github/sahasbhop/a/a/a$a$1;
.super Lar/com/hjg/pngj/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/sahasbhop/a/a/a$a;->n()Lar/com/hjg/pngj/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic i:Lcom/github/sahasbhop/a/a/a$a;


# direct methods
.method constructor <init>(Lcom/github/sahasbhop/a/a/a$a;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/github/sahasbhop/a/a/a$a;
    .param p2, "x0"    # Z

    .prologue
    .line 53
    iput-object p1, p0, Lcom/github/sahasbhop/a/a/a$a$1;->i:Lcom/github/sahasbhop/a/a/a$a;

    invoke-direct {p0, p2}, Lar/com/hjg/pngj/d;-><init>(Z)V

    return-void
.end method


# virtual methods
.method protected a(Lar/com/hjg/pngj/ChunkReader;)V
    .locals 8
    .param p1, "chunkR"    # Lar/com/hjg/pngj/ChunkReader;

    .prologue
    .line 66
    invoke-super {p0, p1}, Lar/com/hjg/pngj/d;->a(Lar/com/hjg/pngj/ChunkReader;)V

    .line 68
    :try_start_0
    invoke-virtual {p1}, Lar/com/hjg/pngj/ChunkReader;->a()Lar/com/hjg/pngj/chunks/e;

    move-result-object v3

    iget-object v1, v3, Lar/com/hjg/pngj/chunks/e;->c:Ljava/lang/String;

    .line 69
    .local v1, "id":Ljava/lang/String;
    iget-object v3, p0, Lcom/github/sahasbhop/a/a/a$a$1;->g:Lar/com/hjg/pngj/chunks/f;

    invoke-virtual {v3}, Lar/com/hjg/pngj/chunks/f;->a()Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/github/sahasbhop/a/a/a$a$1;->g:Lar/com/hjg/pngj/chunks/f;

    invoke-virtual {v4}, Lar/com/hjg/pngj/chunks/f;->a()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lar/com/hjg/pngj/chunks/PngChunk;

    .line 70
    .local v2, "lastChunk":Lar/com/hjg/pngj/chunks/PngChunk;
    const-string v3, "fcTL"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 71
    iget-object v3, p0, Lcom/github/sahasbhop/a/a/a$a$1;->i:Lcom/github/sahasbhop/a/a/a$a;

    iget v4, v3, Lcom/github/sahasbhop/a/a/a$a;->p:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/github/sahasbhop/a/a/a$a;->p:I

    .line 72
    iget-object v3, p0, Lcom/github/sahasbhop/a/a/a$a$1;->i:Lcom/github/sahasbhop/a/a/a$a;

    check-cast v2, Lar/com/hjg/pngj/chunks/k;

    .end local v2    # "lastChunk":Lar/com/hjg/pngj/chunks/PngChunk;
    invoke-virtual {v2}, Lar/com/hjg/pngj/chunks/k;->j()Lar/com/hjg/pngj/s;

    move-result-object v4

    iput-object v4, v3, Lcom/github/sahasbhop/a/a/a$a;->o:Lar/com/hjg/pngj/s;

    .line 73
    iget-object v3, p0, Lcom/github/sahasbhop/a/a/a$a$1;->i:Lcom/github/sahasbhop/a/a/a$a;

    invoke-static {v3}, Lcom/github/sahasbhop/a/a/a$a;->a(Lcom/github/sahasbhop/a/a/a$a;)V

    .line 75
    :cond_0
    const-string v3, "fdAT"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "IDAT"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 76
    :cond_1
    const-string v3, "IDAT"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 78
    iget-object v3, p0, Lcom/github/sahasbhop/a/a/a$a$1;->i:Lcom/github/sahasbhop/a/a/a$a;

    iget-object v3, v3, Lcom/github/sahasbhop/a/a/a$a;->m:Ljava/io/FileOutputStream;

    if-eqz v3, :cond_2

    .line 79
    invoke-virtual {p1}, Lar/com/hjg/pngj/ChunkReader;->a()Lar/com/hjg/pngj/chunks/e;

    move-result-object v3

    iget-object v4, p0, Lcom/github/sahasbhop/a/a/a$a$1;->i:Lcom/github/sahasbhop/a/a/a$a;

    iget-object v4, v4, Lcom/github/sahasbhop/a/a/a$a;->m:Ljava/io/FileOutputStream;

    invoke-virtual {v3, v4}, Lar/com/hjg/pngj/chunks/e;->a(Ljava/io/OutputStream;)V

    .line 87
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lar/com/hjg/pngj/ChunkReader;->a()Lar/com/hjg/pngj/chunks/e;

    move-result-object v3

    const/4 v4, 0x0

    iput-object v4, v3, Lar/com/hjg/pngj/chunks/e;->d:[B

    .line 89
    :cond_3
    const-string v3, "IEND"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 90
    iget-object v3, p0, Lcom/github/sahasbhop/a/a/a$a$1;->i:Lcom/github/sahasbhop/a/a/a$a;

    iget-object v3, v3, Lcom/github/sahasbhop/a/a/a$a;->m:Ljava/io/FileOutputStream;

    if-eqz v3, :cond_4

    .line 91
    iget-object v3, p0, Lcom/github/sahasbhop/a/a/a$a$1;->i:Lcom/github/sahasbhop/a/a/a$a;

    invoke-static {v3}, Lcom/github/sahasbhop/a/a/a$a;->b(Lcom/github/sahasbhop/a/a/a$a;)V

    .line 96
    .end local v1    # "id":Ljava/lang/String;
    :cond_4
    :goto_1
    return-void

    .line 82
    .restart local v1    # "id":Ljava/lang/String;
    :cond_5
    new-instance v0, Lar/com/hjg/pngj/chunks/e;

    .line 83
    invoke-virtual {p1}, Lar/com/hjg/pngj/ChunkReader;->a()Lar/com/hjg/pngj/chunks/e;

    move-result-object v3

    iget v3, v3, Lar/com/hjg/pngj/chunks/e;->a:I

    add-int/lit8 v3, v3, -0x4

    sget-object v4, Lar/com/hjg/pngj/chunks/c;->u:[B

    const/4 v5, 0x1

    invoke-direct {v0, v3, v4, v5}, Lar/com/hjg/pngj/chunks/e;-><init>(I[BZ)V

    .line 84
    .local v0, "crawi":Lar/com/hjg/pngj/chunks/e;
    invoke-virtual {p1}, Lar/com/hjg/pngj/ChunkReader;->a()Lar/com/hjg/pngj/chunks/e;

    move-result-object v3

    iget-object v3, v3, Lar/com/hjg/pngj/chunks/e;->d:[B

    const/4 v4, 0x4

    iget-object v5, v0, Lar/com/hjg/pngj/chunks/e;->d:[B

    const/4 v6, 0x0

    iget-object v7, v0, Lar/com/hjg/pngj/chunks/e;->d:[B

    array-length v7, v7

    invoke-static {v3, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 85
    iget-object v3, p0, Lcom/github/sahasbhop/a/a/a$a$1;->i:Lcom/github/sahasbhop/a/a/a$a;

    iget-object v3, v3, Lcom/github/sahasbhop/a/a/a$a;->m:Ljava/io/FileOutputStream;

    invoke-virtual {v0, v3}, Lar/com/hjg/pngj/chunks/e;->a(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 93
    .end local v0    # "crawi":Lar/com/hjg/pngj/chunks/e;
    .end local v1    # "id":Ljava/lang/String;
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method protected a(Ljava/lang/String;)Z
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 61
    const/4 v0, 0x0

    return v0
.end method

.method public b(ILjava/lang/String;)Z
    .locals 1
    .param p1, "len"    # I
    .param p2, "id"    # Ljava/lang/String;

    .prologue
    .line 56
    const/4 v0, 0x0

    return v0
.end method
