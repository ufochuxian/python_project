.class public Lar/com/hjg/pngj/chunks/m;
.super Lar/com/hjg/pngj/chunks/ab;
.source "SourceFile"


# static fields
.field public static final h:Ljava/lang/String; = "gAMA"


# instance fields
.field private i:D


# direct methods
.method public constructor <init>(Lar/com/hjg/pngj/s;)V
    .locals 1
    .param p1, "info"    # Lar/com/hjg/pngj/s;

    .prologue
    .line 19
    const-string v0, "gAMA"

    invoke-direct {p0, v0, p1}, Lar/com/hjg/pngj/chunks/ab;-><init>(Ljava/lang/String;Lar/com/hjg/pngj/s;)V

    .line 20
    return-void
.end method


# virtual methods
.method public a(D)V
    .locals 1
    .param p1, "gamma"    # D

    .prologue
    .line 48
    iput-wide p1, p0, Lar/com/hjg/pngj/chunks/m;->i:D

    .line 49
    return-void
.end method

.method public a(Lar/com/hjg/pngj/chunks/e;)V
    .locals 6
    .param p1, "chunk"    # Lar/com/hjg/pngj/chunks/e;

    .prologue
    .line 37
    iget v1, p1, Lar/com/hjg/pngj/chunks/e;->a:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    .line 38
    new-instance v1, Lar/com/hjg/pngj/PngjException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bad chunk "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 39
    :cond_0
    iget-object v1, p1, Lar/com/hjg/pngj/chunks/e;->d:[B

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lar/com/hjg/pngj/x;->c([BI)I

    move-result v0

    .line 40
    .local v0, "g":I
    int-to-double v2, v0

    const-wide v4, 0x40f86a0000000000L    # 100000.0

    div-double/2addr v2, v4

    iput-wide v2, p0, Lar/com/hjg/pngj/chunks/m;->i:D

    .line 41
    return-void
.end method

.method public c()Lar/com/hjg/pngj/chunks/e;
    .locals 6

    .prologue
    .line 29
    const/4 v2, 0x4

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lar/com/hjg/pngj/chunks/m;->a(IZ)Lar/com/hjg/pngj/chunks/e;

    move-result-object v0

    .line 30
    .local v0, "c":Lar/com/hjg/pngj/chunks/e;
    iget-wide v2, p0, Lar/com/hjg/pngj/chunks/m;->i:D

    const-wide v4, 0x40f86a0000000000L    # 100000.0

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    add-double/2addr v2, v4

    double-to-int v1, v2

    .line 31
    .local v1, "g":I
    iget-object v2, v0, Lar/com/hjg/pngj/chunks/e;->d:[B

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lar/com/hjg/pngj/x;->b(I[BI)V

    .line 32
    return-object v0
.end method

.method public i()Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;->BEFORE_PLTE_AND_IDAT:Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;

    return-object v0
.end method

.method public j()D
    .locals 2

    .prologue
    .line 44
    iget-wide v0, p0, Lar/com/hjg/pngj/chunks/m;->i:D

    return-wide v0
.end method
