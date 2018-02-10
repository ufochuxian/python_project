.class Lcom/github/sahasbhop/a/a/a$a;
.super Lar/com/hjg/pngj/z;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/sahasbhop/a/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field m:Ljava/io/FileOutputStream;

.field n:Ljava/io/File;

.field o:Lar/com/hjg/pngj/s;

.field p:I

.field private q:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lar/com/hjg/pngj/z;-><init>(Ljava/io/File;)V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/github/sahasbhop/a/a/a$a;->m:Ljava/io/FileOutputStream;

    .line 49
    const/4 v0, -0x1

    iput v0, p0, Lcom/github/sahasbhop/a/a/a$a;->p:I

    .line 43
    iput-object p1, p0, Lcom/github/sahasbhop/a/a/a$a;->q:Ljava/io/File;

    .line 44
    return-void
.end method

.method static synthetic a(Lcom/github/sahasbhop/a/a/a$a;)V
    .locals 0
    .param p0, "x0"    # Lcom/github/sahasbhop/a/a/a$a;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/github/sahasbhop/a/a/a$a;->u()V

    return-void
.end method

.method static synthetic b(Lcom/github/sahasbhop/a/a/a$a;)V
    .locals 0
    .param p0, "x0"    # Lcom/github/sahasbhop/a/a/a$a;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/github/sahasbhop/a/a/a$a;->v()V

    return-void
.end method

.method private u()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 101
    iget-object v3, p0, Lcom/github/sahasbhop/a/a/a$a;->m:Ljava/io/FileOutputStream;

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lcom/github/sahasbhop/a/a/a$a;->v()V

    .line 102
    :cond_0
    invoke-direct {p0}, Lcom/github/sahasbhop/a/a/a$a;->w()Ljava/io/File;

    move-result-object v3

    iput-object v3, p0, Lcom/github/sahasbhop/a/a/a$a;->n:Ljava/io/File;

    .line 103
    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p0, Lcom/github/sahasbhop/a/a/a$a;->n:Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v3, p0, Lcom/github/sahasbhop/a/a/a$a;->m:Ljava/io/FileOutputStream;

    .line 104
    iget-object v3, p0, Lcom/github/sahasbhop/a/a/a$a;->m:Ljava/io/FileOutputStream;

    invoke-static {}, Lar/com/hjg/pngj/x;->a()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 105
    new-instance v2, Lar/com/hjg/pngj/chunks/r;

    iget-object v3, p0, Lcom/github/sahasbhop/a/a/a$a;->o:Lar/com/hjg/pngj/s;

    invoke-direct {v2, v3}, Lar/com/hjg/pngj/chunks/r;-><init>(Lar/com/hjg/pngj/s;)V

    .line 106
    .local v2, "ihdr":Lar/com/hjg/pngj/chunks/r;
    invoke-virtual {v2}, Lar/com/hjg/pngj/chunks/r;->c()Lar/com/hjg/pngj/chunks/e;

    move-result-object v3

    iget-object v4, p0, Lcom/github/sahasbhop/a/a/a$a;->m:Ljava/io/FileOutputStream;

    invoke-virtual {v3, v4}, Lar/com/hjg/pngj/chunks/e;->a(Ljava/io/OutputStream;)V

    .line 108
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/github/sahasbhop/a/a/a$a;->a(Z)Lar/com/hjg/pngj/chunks/f;

    move-result-object v3

    invoke-virtual {v3}, Lar/com/hjg/pngj/chunks/f;->a()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lar/com/hjg/pngj/chunks/PngChunk;

    .line 109
    .local v0, "chunk":Lar/com/hjg/pngj/chunks/PngChunk;
    iget-object v1, v0, Lar/com/hjg/pngj/chunks/PngChunk;->a:Ljava/lang/String;

    .line 111
    .local v1, "id":Ljava/lang/String;
    const-string v4, "IHDR"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "fcTL"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "acTL"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 115
    const-string v4, "IDAT"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 121
    .end local v0    # "chunk":Lar/com/hjg/pngj/chunks/PngChunk;
    .end local v1    # "id":Ljava/lang/String;
    :cond_2
    return-void

    .line 119
    .restart local v0    # "chunk":Lar/com/hjg/pngj/chunks/PngChunk;
    .restart local v1    # "id":Ljava/lang/String;
    :cond_3
    invoke-virtual {v0}, Lar/com/hjg/pngj/chunks/PngChunk;->e()Lar/com/hjg/pngj/chunks/e;

    move-result-object v4

    iget-object v5, p0, Lcom/github/sahasbhop/a/a/a$a;->m:Ljava/io/FileOutputStream;

    invoke-virtual {v4, v5}, Lar/com/hjg/pngj/chunks/e;->a(Ljava/io/OutputStream;)V

    goto :goto_0
.end method

.method private v()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 124
    new-instance v0, Lar/com/hjg/pngj/chunks/q;

    invoke-direct {v0, v2}, Lar/com/hjg/pngj/chunks/q;-><init>(Lar/com/hjg/pngj/s;)V

    invoke-virtual {v0}, Lar/com/hjg/pngj/chunks/q;->c()Lar/com/hjg/pngj/chunks/e;

    move-result-object v0

    iget-object v1, p0, Lcom/github/sahasbhop/a/a/a$a;->m:Ljava/io/FileOutputStream;

    invoke-virtual {v0, v1}, Lar/com/hjg/pngj/chunks/e;->a(Ljava/io/OutputStream;)V

    .line 125
    iget-object v0, p0, Lcom/github/sahasbhop/a/a/a$a;->m:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 126
    iput-object v2, p0, Lcom/github/sahasbhop/a/a/a$a;->m:Ljava/io/FileOutputStream;

    .line 127
    return-void
.end method

.method private w()Ljava/io/File;
    .locals 4

    .prologue
    .line 130
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/github/sahasbhop/a/a/a$a;->q:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/github/sahasbhop/a/a/a$a;->q:Ljava/io/File;

    iget v3, p0, Lcom/github/sahasbhop/a/a/a$a;->p:I

    invoke-static {v2, v3}, Lcom/github/sahasbhop/a/a/a;->a(Ljava/io/File;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method protected n()Lar/com/hjg/pngj/d;
    .locals 2

    .prologue
    .line 53
    new-instance v0, Lcom/github/sahasbhop/a/a/a$a$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/github/sahasbhop/a/a/a$a$1;-><init>(Lcom/github/sahasbhop/a/a/a$a;Z)V

    return-object v0
.end method
