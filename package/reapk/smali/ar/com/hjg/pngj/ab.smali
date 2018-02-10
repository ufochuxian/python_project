.class public Lar/com/hjg/pngj/ab;
.super Lar/com/hjg/pngj/z;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lar/com/hjg/pngj/z;-><init>(Ljava/io/File;)V

    .line 15
    invoke-static {}, Lar/com/hjg/pngj/w;->d()Lar/com/hjg/pngj/p;

    move-result-object v0

    invoke-virtual {p0, v0}, Lar/com/hjg/pngj/ab;->a(Lar/com/hjg/pngj/p;)V

    .line 16
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "inputStream"    # Ljava/io/InputStream;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lar/com/hjg/pngj/z;-><init>(Ljava/io/InputStream;)V

    .line 20
    invoke-static {}, Lar/com/hjg/pngj/w;->d()Lar/com/hjg/pngj/p;

    move-result-object v0

    invoke-virtual {p0, v0}, Lar/com/hjg/pngj/ab;->a(Lar/com/hjg/pngj/p;)V

    .line 21
    return-void
.end method


# virtual methods
.method public A()Lar/com/hjg/pngj/t;
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p0}, Lar/com/hjg/pngj/ab;->e()Lar/com/hjg/pngj/l;

    move-result-object v0

    check-cast v0, Lar/com/hjg/pngj/t;

    return-object v0
.end method
