.class public Lar/com/hjg/pngj/chunks/u;
.super Lar/com/hjg/pngj/chunks/ab;
.source "SourceFile"


# static fields
.field public static final h:Ljava/lang/String; = "oFFs"


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
    const-string v0, "oFFs"

    invoke-direct {p0, v0, p1}, Lar/com/hjg/pngj/chunks/ab;-><init>(Ljava/lang/String;Lar/com/hjg/pngj/s;)V

    .line 22
    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 1
    .param p1, "posX"    # J

    .prologue
    .line 70
    iput-wide p1, p0, Lar/com/hjg/pngj/chunks/u;->i:J

    .line 71
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

    iput-wide v0, p0, Lar/com/hjg/pngj/chunks/u;->i:J

    .line 43
    iget-wide v0, p0, Lar/com/hjg/pngj/chunks/u;->i:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 44
    iget-wide v0, p0, Lar/com/hjg/pngj/chunks/u;->i:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lar/com/hjg/pngj/chunks/u;->i:J

    .line 45
    :cond_1
    iget-object v0, p1, Lar/com/hjg/pngj/chunks/e;->d:[B

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lar/com/hjg/pngj/x;->c([BI)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lar/com/hjg/pngj/chunks/u;->j:J

    .line 46
    iget-wide v0, p0, Lar/com/hjg/pngj/chunks/u;->j:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    .line 47
    iget-wide v0, p0, Lar/com/hjg/pngj/chunks/u;->j:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lar/com/hjg/pngj/chunks/u;->j:J

    .line 48
    :cond_2
    iget-object v0, p1, Lar/com/hjg/pngj/chunks/e;->d:[B

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lar/com/hjg/pngj/x;->a([BI)I

    move-result v0

    iput v0, p0, Lar/com/hjg/pngj/chunks/u;->k:I

    .line 49
    return-void
.end method

.method public b(I)V
    .locals 0
    .param p1, "units"    # I

    .prologue
    .line 62
    iput p1, p0, Lar/com/hjg/pngj/chunks/u;->k:I

    .line 63
    return-void
.end method

.method public b(J)V
    .locals 1
    .param p1, "posY"    # J

    .prologue
    .line 78
    iput-wide p1, p0, Lar/com/hjg/pngj/chunks/u;->j:J

    .line 79
    return-void
.end method

.method public c()Lar/com/hjg/pngj/chunks/e;
    .locals 4

    .prologue
    .line 31
    const/16 v1, 0x9

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lar/com/hjg/pngj/chunks/u;->a(IZ)Lar/com/hjg/pngj/chunks/e;

    move-result-object v0

    .line 32
    .local v0, "c":Lar/com/hjg/pngj/chunks/e;
    iget-wide v2, p0, Lar/com/hjg/pngj/chunks/u;->i:J

    long-to-int v1, v2

    iget-object v2, v0, Lar/com/hjg/pngj/chunks/e;->d:[B

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lar/com/hjg/pngj/x;->b(I[BI)V

    .line 33
    iget-wide v2, p0, Lar/com/hjg/pngj/chunks/u;->j:J

    long-to-int v1, v2

    iget-object v2, v0, Lar/com/hjg/pngj/chunks/e;->d:[B

    const/4 v3, 0x4

    invoke-static {v1, v2, v3}, Lar/com/hjg/pngj/x;->b(I[BI)V

    .line 34
    iget-object v1, v0, Lar/com/hjg/pngj/chunks/e;->d:[B

    const/16 v2, 0x8

    iget v3, p0, Lar/com/hjg/pngj/chunks/u;->k:I

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

.method public j()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lar/com/hjg/pngj/chunks/u;->k:I

    return v0
.end method

.method public k()J
    .locals 2

    .prologue
    .line 66
    iget-wide v0, p0, Lar/com/hjg/pngj/chunks/u;->i:J

    return-wide v0
.end method

.method public l()J
    .locals 2

    .prologue
    .line 74
    iget-wide v0, p0, Lar/com/hjg/pngj/chunks/u;->j:J

    return-wide v0
.end method
