.class public Lar/com/hjg/pngj/chunks/ag;
.super Lar/com/hjg/pngj/chunks/t;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;Lar/com/hjg/pngj/s;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "info"    # Lar/com/hjg/pngj/s;

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Lar/com/hjg/pngj/chunks/t;-><init>(Ljava/lang/String;Lar/com/hjg/pngj/s;)V

    .line 14
    return-void
.end method


# virtual methods
.method public a(Lar/com/hjg/pngj/chunks/e;)V
    .locals 0
    .param p1, "c"    # Lar/com/hjg/pngj/chunks/e;

    .prologue
    .line 29
    return-void
.end method

.method public a([B)V
    .locals 1
    .param p1, "data"    # [B

    .prologue
    .line 38
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/ag;->f:Lar/com/hjg/pngj/chunks/e;

    iput-object p1, v0, Lar/com/hjg/pngj/chunks/e;->d:[B

    .line 39
    return-void
.end method

.method public c()Lar/com/hjg/pngj/chunks/e;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/ag;->f:Lar/com/hjg/pngj/chunks/e;

    return-object v0
.end method

.method public i()Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;->NONE:Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;

    return-object v0
.end method

.method public j()[B
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/ag;->f:Lar/com/hjg/pngj/chunks/e;

    iget-object v0, v0, Lar/com/hjg/pngj/chunks/e;->d:[B

    return-object v0
.end method
