.class public Lar/com/hjg/pngj/chunks/h;
.super Lar/com/hjg/pngj/chunks/ab;
.source "SourceFile"


# static fields
.field public static final h:Ljava/lang/String; = "acTL"


# instance fields
.field private i:I

.field private j:I


# direct methods
.method public constructor <init>(Lar/com/hjg/pngj/s;)V
    .locals 1
    .param p1, "info"    # Lar/com/hjg/pngj/s;

    .prologue
    .line 19
    const-string v0, "acTL"

    invoke-direct {p0, v0, p1}, Lar/com/hjg/pngj/chunks/ab;-><init>(Ljava/lang/String;Lar/com/hjg/pngj/s;)V

    .line 20
    return-void
.end method


# virtual methods
.method public a(Lar/com/hjg/pngj/chunks/e;)V
    .locals 2
    .param p1, "chunk"    # Lar/com/hjg/pngj/chunks/e;

    .prologue
    .line 37
    iget-object v0, p1, Lar/com/hjg/pngj/chunks/e;->d:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lar/com/hjg/pngj/x;->c([BI)I

    move-result v0

    iput v0, p0, Lar/com/hjg/pngj/chunks/h;->i:I

    .line 38
    iget-object v0, p1, Lar/com/hjg/pngj/chunks/e;->d:[B

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lar/com/hjg/pngj/x;->c([BI)I

    move-result v0

    iput v0, p0, Lar/com/hjg/pngj/chunks/h;->j:I

    .line 39
    return-void
.end method

.method public b(I)V
    .locals 0
    .param p1, "numFrames"    # I

    .prologue
    .line 46
    iput p1, p0, Lar/com/hjg/pngj/chunks/h;->i:I

    .line 47
    return-void
.end method

.method public c()Lar/com/hjg/pngj/chunks/e;
    .locals 4

    .prologue
    .line 29
    const/16 v1, 0x8

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lar/com/hjg/pngj/chunks/h;->a(IZ)Lar/com/hjg/pngj/chunks/e;

    move-result-object v0

    .line 30
    .local v0, "c":Lar/com/hjg/pngj/chunks/e;
    iget v1, p0, Lar/com/hjg/pngj/chunks/h;->i:I

    iget-object v2, v0, Lar/com/hjg/pngj/chunks/e;->d:[B

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lar/com/hjg/pngj/x;->b(I[BI)V

    .line 31
    iget v1, p0, Lar/com/hjg/pngj/chunks/h;->j:I

    iget-object v2, v0, Lar/com/hjg/pngj/chunks/e;->d:[B

    const/4 v3, 0x4

    invoke-static {v1, v2, v3}, Lar/com/hjg/pngj/x;->b(I[BI)V

    .line 32
    return-object v0
.end method

.method public c(I)V
    .locals 0
    .param p1, "numPlays"    # I

    .prologue
    .line 54
    iput p1, p0, Lar/com/hjg/pngj/chunks/h;->j:I

    .line 55
    return-void
.end method

.method public i()Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;->BEFORE_IDAT:Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;

    return-object v0
.end method

.method public j()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lar/com/hjg/pngj/chunks/h;->i:I

    return v0
.end method

.method public k()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lar/com/hjg/pngj/chunks/h;->j:I

    return v0
.end method
