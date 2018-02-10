.class public Lar/com/hjg/pngj/chunks/l;
.super Lar/com/hjg/pngj/chunks/t;
.source "SourceFile"


# static fields
.field public static final h:Ljava/lang/String; = "fdAT"


# instance fields
.field i:I

.field private j:I

.field private k:[B


# direct methods
.method public constructor <init>(Lar/com/hjg/pngj/s;)V
    .locals 1
    .param p1, "info"    # Lar/com/hjg/pngj/s;

    .prologue
    .line 22
    const-string v0, "fdAT"

    invoke-direct {p0, v0, p1}, Lar/com/hjg/pngj/chunks/t;-><init>(Ljava/lang/String;Lar/com/hjg/pngj/s;)V

    .line 23
    return-void
.end method


# virtual methods
.method public a(Lar/com/hjg/pngj/chunks/e;)V
    .locals 2
    .param p1, "chunk"    # Lar/com/hjg/pngj/chunks/e;

    .prologue
    .line 41
    iget-object v0, p1, Lar/com/hjg/pngj/chunks/e;->d:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lar/com/hjg/pngj/x;->c([BI)I

    move-result v0

    iput v0, p0, Lar/com/hjg/pngj/chunks/l;->j:I

    .line 42
    iget v0, p1, Lar/com/hjg/pngj/chunks/e;->a:I

    add-int/lit8 v0, v0, -0x4

    iput v0, p0, Lar/com/hjg/pngj/chunks/l;->i:I

    .line 43
    iget-object v0, p1, Lar/com/hjg/pngj/chunks/e;->d:[B

    iput-object v0, p0, Lar/com/hjg/pngj/chunks/l;->k:[B

    .line 44
    return-void
.end method

.method public a([B)V
    .locals 0
    .param p1, "buffer"    # [B

    .prologue
    .line 59
    iput-object p1, p0, Lar/com/hjg/pngj/chunks/l;->k:[B

    .line 60
    return-void
.end method

.method public b(I)V
    .locals 0
    .param p1, "seqNum"    # I

    .prologue
    .line 51
    iput p1, p0, Lar/com/hjg/pngj/chunks/l;->j:I

    .line 52
    return-void
.end method

.method public c()Lar/com/hjg/pngj/chunks/e;
    .locals 3

    .prologue
    .line 32
    iget-object v1, p0, Lar/com/hjg/pngj/chunks/l;->k:[B

    if-nez v1, :cond_0

    .line 33
    new-instance v1, Lar/com/hjg/pngj/PngjException;

    const-string v2, "not buffered"

    invoke-direct {v1, v2}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 34
    :cond_0
    iget v1, p0, Lar/com/hjg/pngj/chunks/l;->i:I

    add-int/lit8 v1, v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lar/com/hjg/pngj/chunks/l;->a(IZ)Lar/com/hjg/pngj/chunks/e;

    move-result-object v0

    .line 35
    .local v0, "c":Lar/com/hjg/pngj/chunks/e;
    iget-object v1, p0, Lar/com/hjg/pngj/chunks/l;->k:[B

    iput-object v1, v0, Lar/com/hjg/pngj/chunks/e;->d:[B

    .line 36
    return-object v0
.end method

.method public c(I)V
    .locals 0
    .param p1, "datalen"    # I

    .prologue
    .line 67
    iput p1, p0, Lar/com/hjg/pngj/chunks/l;->i:I

    .line 68
    return-void
.end method

.method public i()Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;->AFTER_IDAT:Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;

    return-object v0
.end method

.method public j()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lar/com/hjg/pngj/chunks/l;->j:I

    return v0
.end method

.method public k()[B
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/l;->k:[B

    return-object v0
.end method

.method public l()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lar/com/hjg/pngj/chunks/l;->i:I

    return v0
.end method
