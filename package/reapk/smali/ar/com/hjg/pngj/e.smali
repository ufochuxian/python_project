.class public Lar/com/hjg/pngj/e;
.super Lar/com/hjg/pngj/c;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lar/com/hjg/pngj/chunks/e;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lar/com/hjg/pngj/e;-><init>(Z)V

    .line 29
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2
    .param p1, "skipAll"    # Z

    .prologue
    const/4 v1, 0x1

    .line 23
    invoke-direct {p0, v1}, Lar/com/hjg/pngj/c;-><init>(Z)V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lar/com/hjg/pngj/e;->a:Ljava/util/List;

    .line 17
    iput-boolean v1, p0, Lar/com/hjg/pngj/e;->d:Z

    .line 24
    iput-boolean p1, p0, Lar/com/hjg/pngj/e;->d:Z

    .line 25
    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;IJZ)Lar/com/hjg/pngj/ChunkReader;
    .locals 7
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "len"    # I
    .param p3, "offset"    # J
    .param p5, "skip"    # Z

    .prologue
    .line 32
    new-instance v0, Lar/com/hjg/pngj/e$1;

    if-eqz p5, :cond_0

    sget-object v6, Lar/com/hjg/pngj/ChunkReader$ChunkReaderMode;->SKIP:Lar/com/hjg/pngj/ChunkReader$ChunkReaderMode;

    :goto_0
    move-object v1, p0

    move v2, p2

    move-object v3, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v6}, Lar/com/hjg/pngj/e$1;-><init>(Lar/com/hjg/pngj/e;ILjava/lang/String;JLar/com/hjg/pngj/ChunkReader$ChunkReaderMode;)V

    return-object v0

    :cond_0
    sget-object v6, Lar/com/hjg/pngj/ChunkReader$ChunkReaderMode;->PROCESS:Lar/com/hjg/pngj/ChunkReader$ChunkReaderMode;

    goto :goto_0
.end method

.method protected a(Lar/com/hjg/pngj/ChunkReader;)V
    .locals 2
    .param p1, "chunkR"    # Lar/com/hjg/pngj/ChunkReader;

    .prologue
    .line 52
    invoke-super {p0, p1}, Lar/com/hjg/pngj/c;->a(Lar/com/hjg/pngj/ChunkReader;)V

    .line 53
    iget-object v0, p0, Lar/com/hjg/pngj/e;->a:Ljava/util/List;

    invoke-virtual {p1}, Lar/com/hjg/pngj/ChunkReader;->a()Lar/com/hjg/pngj/chunks/e;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    return-void
.end method

.method protected a(Lar/com/hjg/pngj/chunks/e;I[BII)V
    .locals 0
    .param p1, "chunkRaw"    # Lar/com/hjg/pngj/chunks/e;
    .param p2, "offsetinChhunk"    # I
    .param p3, "buf"    # [B
    .param p4, "off"    # I
    .param p5, "len"    # I

    .prologue
    .line 48
    return-void
.end method

.method protected a(Ljava/lang/String;)Z
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 63
    const/4 v0, 0x0

    return v0
.end method

.method protected b(ILjava/lang/String;)Z
    .locals 1
    .param p1, "len"    # I
    .param p2, "id"    # Ljava/lang/String;

    .prologue
    .line 58
    iget-boolean v0, p0, Lar/com/hjg/pngj/e;->d:Z

    return v0
.end method

.method public l()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lar/com/hjg/pngj/chunks/e;",
            ">;"
        }
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Lar/com/hjg/pngj/e;->a:Ljava/util/List;

    return-object v0
.end method
