.class public Lar/com/hjg/pngj/af;
.super Lar/com/hjg/pngj/ae;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/io/File;Lar/com/hjg/pngj/s;)V
    .locals 0
    .param p1, "file"    # Ljava/io/File;
    .param p2, "imgInfo"    # Lar/com/hjg/pngj/s;

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lar/com/hjg/pngj/ae;-><init>(Ljava/io/File;Lar/com/hjg/pngj/s;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lar/com/hjg/pngj/s;Z)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .param p2, "imgInfo"    # Lar/com/hjg/pngj/s;
    .param p3, "allowoverwrite"    # Z

    .prologue
    .line 13
    invoke-direct {p0, p1, p2, p3}, Lar/com/hjg/pngj/ae;-><init>(Ljava/io/File;Lar/com/hjg/pngj/s;Z)V

    .line 14
    sget-object v0, Lar/com/hjg/pngj/FilterType;->FILTER_SUPER_ADAPTIVE:Lar/com/hjg/pngj/FilterType;

    invoke-virtual {p0, v0}, Lar/com/hjg/pngj/af;->a(Lar/com/hjg/pngj/FilterType;)V

    .line 15
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Lar/com/hjg/pngj/s;)V
    .locals 0
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .param p2, "imgInfo"    # Lar/com/hjg/pngj/s;

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lar/com/hjg/pngj/ae;-><init>(Ljava/io/OutputStream;Lar/com/hjg/pngj/s;)V

    .line 23
    return-void
.end method


# virtual methods
.method protected a(Lar/com/hjg/pngj/s;)Lar/com/hjg/pngj/a/g;
    .locals 1
    .param p1, "imginfo"    # Lar/com/hjg/pngj/s;

    .prologue
    .line 27
    new-instance v0, Lar/com/hjg/pngj/a/i;

    invoke-direct {v0, p1}, Lar/com/hjg/pngj/a/i;-><init>(Lar/com/hjg/pngj/s;)V

    .line 28
    .local v0, "pw":Lar/com/hjg/pngj/a/i;
    return-object v0
.end method

.method public h()Lar/com/hjg/pngj/a/i;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lar/com/hjg/pngj/af;->d:Lar/com/hjg/pngj/a/g;

    check-cast v0, Lar/com/hjg/pngj/a/i;

    return-object v0
.end method
