.class public Lar/com/hjg/pngj/ad;
.super Lar/com/hjg/pngj/z;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 0
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lar/com/hjg/pngj/z;-><init>(Ljava/io/File;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "inputStream"    # Ljava/io/InputStream;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lar/com/hjg/pngj/z;-><init>(Ljava/io/InputStream;)V

    .line 22
    return-void
.end method


# virtual methods
.method public u()Lar/com/hjg/pngj/v;
    .locals 4

    .prologue
    .line 31
    invoke-virtual {p0}, Lar/com/hjg/pngj/ad;->e()Lar/com/hjg/pngj/l;

    move-result-object v0

    .line 32
    .local v0, "line":Lar/com/hjg/pngj/l;
    instance-of v1, v0, Lar/com/hjg/pngj/v;

    if-eqz v1, :cond_0

    .line 33
    check-cast v0, Lar/com/hjg/pngj/v;

    .end local v0    # "line":Lar/com/hjg/pngj/l;
    return-object v0

    .line 35
    .restart local v0    # "line":Lar/com/hjg/pngj/l;
    :cond_0
    new-instance v1, Lar/com/hjg/pngj/PngjException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "This is not a ImageLineInt : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
