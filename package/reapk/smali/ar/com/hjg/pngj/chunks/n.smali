.class public Lar/com/hjg/pngj/chunks/n;
.super Lar/com/hjg/pngj/chunks/ab;
.source "SourceFile"


# static fields
.field public static final h:Ljava/lang/String; = "hIST"


# instance fields
.field private i:[I


# direct methods
.method public constructor <init>(Lar/com/hjg/pngj/s;)V
    .locals 1
    .param p1, "info"    # Lar/com/hjg/pngj/s;

    .prologue
    .line 19
    const-string v0, "hIST"

    invoke-direct {p0, v0, p1}, Lar/com/hjg/pngj/chunks/ab;-><init>(Ljava/lang/String;Lar/com/hjg/pngj/s;)V

    .line 16
    const/4 v0, 0x0

    new-array v0, v0, [I

    iput-object v0, p0, Lar/com/hjg/pngj/chunks/n;->i:[I

    .line 20
    return-void
.end method


# virtual methods
.method public a(Lar/com/hjg/pngj/chunks/e;)V
    .locals 5
    .param p1, "c"    # Lar/com/hjg/pngj/chunks/e;

    .prologue
    .line 29
    iget-object v2, p0, Lar/com/hjg/pngj/chunks/n;->e:Lar/com/hjg/pngj/s;

    iget-boolean v2, v2, Lar/com/hjg/pngj/s;->h:Z

    if-nez v2, :cond_0

    .line 30
    new-instance v2, Lar/com/hjg/pngj/PngjException;

    const-string v3, "only indexed images accept a HIST chunk"

    invoke-direct {v2, v3}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 31
    :cond_0
    iget-object v2, p1, Lar/com/hjg/pngj/chunks/e;->d:[B

    array-length v2, v2

    div-int/lit8 v1, v2, 0x2

    .line 32
    .local v1, "nentries":I
    new-array v2, v1, [I

    iput-object v2, p0, Lar/com/hjg/pngj/chunks/n;->i:[I

    .line 33
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lar/com/hjg/pngj/chunks/n;->i:[I

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 34
    iget-object v2, p0, Lar/com/hjg/pngj/chunks/n;->i:[I

    iget-object v3, p1, Lar/com/hjg/pngj/chunks/e;->d:[B

    mul-int/lit8 v4, v0, 0x2

    invoke-static {v3, v4}, Lar/com/hjg/pngj/x;->b([BI)I

    move-result v3

    aput v3, v2, v0

    .line 33
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 36
    :cond_1
    return-void
.end method

.method public a([I)V
    .locals 0
    .param p1, "hist"    # [I

    .prologue
    .line 55
    iput-object p1, p0, Lar/com/hjg/pngj/chunks/n;->i:[I

    .line 56
    return-void
.end method

.method public c()Lar/com/hjg/pngj/chunks/e;
    .locals 5

    .prologue
    .line 40
    iget-object v2, p0, Lar/com/hjg/pngj/chunks/n;->e:Lar/com/hjg/pngj/s;

    iget-boolean v2, v2, Lar/com/hjg/pngj/s;->h:Z

    if-nez v2, :cond_0

    .line 41
    new-instance v2, Lar/com/hjg/pngj/PngjException;

    const-string v3, "only indexed images accept a HIST chunk"

    invoke-direct {v2, v3}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 42
    :cond_0
    const/4 v0, 0x0

    .line 43
    .local v0, "c":Lar/com/hjg/pngj/chunks/e;
    iget-object v2, p0, Lar/com/hjg/pngj/chunks/n;->i:[I

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lar/com/hjg/pngj/chunks/n;->a(IZ)Lar/com/hjg/pngj/chunks/e;

    move-result-object v0

    .line 44
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lar/com/hjg/pngj/chunks/n;->i:[I

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 45
    iget-object v2, p0, Lar/com/hjg/pngj/chunks/n;->i:[I

    aget v2, v2, v1

    iget-object v3, v0, Lar/com/hjg/pngj/chunks/e;->d:[B

    mul-int/lit8 v4, v1, 0x2

    invoke-static {v2, v3, v4}, Lar/com/hjg/pngj/x;->a(I[BI)V

    .line 44
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 47
    :cond_1
    return-object v0
.end method

.method public i()Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;->AFTER_PLTE_BEFORE_IDAT:Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;

    return-object v0
.end method

.method public j()[I
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/n;->i:[I

    return-object v0
.end method
