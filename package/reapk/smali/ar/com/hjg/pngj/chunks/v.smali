.class public Lar/com/hjg/pngj/chunks/v;
.super Lar/com/hjg/pngj/chunks/ab;
.source "SourceFile"


# static fields
.field public static final h:Ljava/lang/String; = "pHYs"


# instance fields
.field private i:J

.field private j:J

.field private k:I


# direct methods
.method public constructor <init>(Lar/com/hjg/pngj/s;)V
    .locals 1
    .param p1, "info"    # Lar/com/hjg/pngj/s;

    .prologue
    .line 21
    const-string v0, "pHYs"

    invoke-direct {p0, v0, p1}, Lar/com/hjg/pngj/chunks/ab;-><init>(Ljava/lang/String;Lar/com/hjg/pngj/s;)V

    .line 22
    return-void
.end method


# virtual methods
.method public a(D)V
    .locals 5
    .param p1, "dpi"    # D

    .prologue
    .line 96
    const/4 v0, 0x1

    iput v0, p0, Lar/com/hjg/pngj/chunks/v;->k:I

    .line 97
    const-wide v0, 0x3f9a027525460aa6L    # 0.0254

    div-double v0, p1, v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    double-to-long v0, v0

    iput-wide v0, p0, Lar/com/hjg/pngj/chunks/v;->i:J

    .line 98
    iget-wide v0, p0, Lar/com/hjg/pngj/chunks/v;->i:J

    iput-wide v0, p0, Lar/com/hjg/pngj/chunks/v;->j:J

    .line 99
    return-void
.end method

.method public a(DD)V
    .locals 7
    .param p1, "dpix"    # D
    .param p3, "dpiy"    # D

    .prologue
    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    const-wide v2, 0x3f9a027525460aa6L    # 0.0254

    .line 102
    const/4 v0, 0x1

    iput v0, p0, Lar/com/hjg/pngj/chunks/v;->k:I

    .line 103
    div-double v0, p1, v2

    add-double/2addr v0, v4

    double-to-long v0, v0

    iput-wide v0, p0, Lar/com/hjg/pngj/chunks/v;->i:J

    .line 104
    div-double v0, p3, v2

    add-double/2addr v0, v4

    double-to-long v0, v0

    iput-wide v0, p0, Lar/com/hjg/pngj/chunks/v;->j:J

    .line 105
    return-void
.end method

.method public a(J)V
    .locals 1
    .param p1, "pixelsxUnitX"    # J

    .prologue
    .line 56
    iput-wide p1, p0, Lar/com/hjg/pngj/chunks/v;->i:J

    .line 57
    return-void
.end method

.method public a(Lar/com/hjg/pngj/chunks/e;)V
    .locals 6
    .param p1, "chunk"    # Lar/com/hjg/pngj/chunks/e;

    .prologue
    const-wide v4, 0x100000000L

    const-wide/16 v2, 0x0

    .line 40
    iget v0, p1, Lar/com/hjg/pngj/chunks/e;->a:I

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    .line 41
    new-instance v0, Lar/com/hjg/pngj/PngjException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad chunk length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_0
    iget-object v0, p1, Lar/com/hjg/pngj/chunks/e;->d:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lar/com/hjg/pngj/x;->c([BI)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lar/com/hjg/pngj/chunks/v;->i:J

    .line 43
    iget-wide v0, p0, Lar/com/hjg/pngj/chunks/v;->i:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 44
    iget-wide v0, p0, Lar/com/hjg/pngj/chunks/v;->i:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lar/com/hjg/pngj/chunks/v;->i:J

    .line 45
    :cond_1
    iget-object v0, p1, Lar/com/hjg/pngj/chunks/e;->d:[B

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lar/com/hjg/pngj/x;->c([BI)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lar/com/hjg/pngj/chunks/v;->j:J

    .line 46
    iget-wide v0, p0, Lar/com/hjg/pngj/chunks/v;->j:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    .line 47
    iget-wide v0, p0, Lar/com/hjg/pngj/chunks/v;->j:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lar/com/hjg/pngj/chunks/v;->j:J

    .line 48
    :cond_2
    iget-object v0, p1, Lar/com/hjg/pngj/chunks/e;->d:[B

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lar/com/hjg/pngj/x;->a([BI)I

    move-result v0

    iput v0, p0, Lar/com/hjg/pngj/chunks/v;->k:I

    .line 49
    return-void
.end method

.method public b(I)V
    .locals 0
    .param p1, "units"    # I

    .prologue
    .line 72
    iput p1, p0, Lar/com/hjg/pngj/chunks/v;->k:I

    .line 73
    return-void
.end method

.method public b(J)V
    .locals 1
    .param p1, "pixelsxUnitY"    # J

    .prologue
    .line 64
    iput-wide p1, p0, Lar/com/hjg/pngj/chunks/v;->j:J

    .line 65
    return-void
.end method

.method public c()Lar/com/hjg/pngj/chunks/e;
    .locals 4

    .prologue
    .line 31
    const/16 v1, 0x9

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lar/com/hjg/pngj/chunks/v;->a(IZ)Lar/com/hjg/pngj/chunks/e;

    move-result-object v0

    .line 32
    .local v0, "c":Lar/com/hjg/pngj/chunks/e;
    iget-wide v2, p0, Lar/com/hjg/pngj/chunks/v;->i:J

    long-to-int v1, v2

    iget-object v2, v0, Lar/com/hjg/pngj/chunks/e;->d:[B

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lar/com/hjg/pngj/x;->b(I[BI)V

    .line 33
    iget-wide v2, p0, Lar/com/hjg/pngj/chunks/v;->j:J

    long-to-int v1, v2

    iget-object v2, v0, Lar/com/hjg/pngj/chunks/e;->d:[B

    const/4 v3, 0x4

    invoke-static {v1, v2, v3}, Lar/com/hjg/pngj/x;->b(I[BI)V

    .line 34
    iget-object v1, v0, Lar/com/hjg/pngj/chunks/e;->d:[B

    const/16 v2, 0x8

    iget v3, p0, Lar/com/hjg/pngj/chunks/v;->k:I

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 35
    return-object v0
.end method

.method public i()Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;->BEFORE_IDAT:Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;

    return-object v0
.end method

.method public j()J
    .locals 2

    .prologue
    .line 52
    iget-wide v0, p0, Lar/com/hjg/pngj/chunks/v;->i:J

    return-wide v0
.end method

.method public k()J
    .locals 2

    .prologue
    .line 60
    iget-wide v0, p0, Lar/com/hjg/pngj/chunks/v;->j:J

    return-wide v0
.end method

.method public l()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lar/com/hjg/pngj/chunks/v;->k:I

    return v0
.end method

.method public m()D
    .locals 4

    .prologue
    .line 81
    iget v0, p0, Lar/com/hjg/pngj/chunks/v;->k:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lar/com/hjg/pngj/chunks/v;->i:J

    iget-wide v2, p0, Lar/com/hjg/pngj/chunks/v;->j:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 82
    :cond_0
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 83
    :goto_0
    return-wide v0

    :cond_1
    iget-wide v0, p0, Lar/com/hjg/pngj/chunks/v;->i:J

    long-to-double v0, v0

    const-wide v2, 0x3f9a027525460aa6L    # 0.0254

    mul-double/2addr v0, v2

    goto :goto_0
.end method

.method public n()[D
    .locals 7

    .prologue
    const/4 v1, 0x2

    const/4 v6, 0x1

    const-wide v4, 0x3f9a027525460aa6L    # 0.0254

    .line 90
    iget v0, p0, Lar/com/hjg/pngj/chunks/v;->k:I

    if-eq v0, v6, :cond_0

    .line 91
    new-array v0, v1, [D

    fill-array-data v0, :array_0

    .line 92
    :goto_0
    return-object v0

    :cond_0
    new-array v0, v1, [D

    const/4 v1, 0x0

    iget-wide v2, p0, Lar/com/hjg/pngj/chunks/v;->i:J

    long-to-double v2, v2

    mul-double/2addr v2, v4

    aput-wide v2, v0, v1

    iget-wide v2, p0, Lar/com/hjg/pngj/chunks/v;->j:J

    long-to-double v2, v2

    mul-double/2addr v2, v4

    aput-wide v2, v0, v6

    goto :goto_0

    .line 91
    nop

    :array_0
    .array-data 8
        -0x4010000000000000L    # -1.0
        -0x4010000000000000L    # -1.0
    .end array-data
.end method
