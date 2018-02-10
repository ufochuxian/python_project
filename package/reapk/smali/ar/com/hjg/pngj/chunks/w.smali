.class public Lar/com/hjg/pngj/chunks/w;
.super Lar/com/hjg/pngj/chunks/ab;
.source "SourceFile"


# static fields
.field public static final h:Ljava/lang/String; = "PLTE"


# instance fields
.field private i:I

.field private j:[I


# direct methods
.method public constructor <init>(Lar/com/hjg/pngj/s;)V
    .locals 1
    .param p1, "info"    # Lar/com/hjg/pngj/s;

    .prologue
    .line 24
    const-string v0, "PLTE"

    invoke-direct {p0, v0, p1}, Lar/com/hjg/pngj/chunks/ab;-><init>(Ljava/lang/String;Lar/com/hjg/pngj/s;)V

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lar/com/hjg/pngj/chunks/w;->i:I

    .line 25
    return-void
.end method


# virtual methods
.method public a(IIII)V
    .locals 3
    .param p1, "n"    # I
    .param p2, "r"    # I
    .param p3, "g"    # I
    .param p4, "b"    # I

    .prologue
    .line 69
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/w;->j:[I

    shl-int/lit8 v1, p2, 0x10

    shl-int/lit8 v2, p3, 0x8

    or-int/2addr v1, v2

    or-int/2addr v1, p4

    aput v1, v0, p1

    .line 70
    return-void
.end method

.method public a(I[I)V
    .locals 1
    .param p1, "n"    # I
    .param p2, "rgb"    # [I

    .prologue
    .line 77
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lar/com/hjg/pngj/chunks/w;->a(I[II)V

    .line 78
    return-void
.end method

.method public a(I[II)V
    .locals 3
    .param p1, "n"    # I
    .param p2, "rgb"    # [I
    .param p3, "offset"    # I

    .prologue
    .line 81
    iget-object v1, p0, Lar/com/hjg/pngj/chunks/w;->j:[I

    aget v0, v1, p1

    .line 82
    .local v0, "v":I
    add-int/lit8 v1, p3, 0x0

    const/high16 v2, 0xff0000

    and-int/2addr v2, v0

    shr-int/lit8 v2, v2, 0x10

    aput v2, p2, v1

    .line 83
    add-int/lit8 v1, p3, 0x1

    const v2, 0xff00

    and-int/2addr v2, v0

    shr-int/lit8 v2, v2, 0x8

    aput v2, p2, v1

    .line 84
    add-int/lit8 v1, p3, 0x2

    and-int/lit16 v2, v0, 0xff

    aput v2, p2, v1

    .line 85
    return-void
.end method

.method public a(Lar/com/hjg/pngj/chunks/e;)V
    .locals 6
    .param p1, "chunk"    # Lar/com/hjg/pngj/chunks/e;

    .prologue
    .line 48
    iget v3, p1, Lar/com/hjg/pngj/chunks/e;->a:I

    div-int/lit8 v3, v3, 0x3

    invoke-virtual {p0, v3}, Lar/com/hjg/pngj/chunks/w;->b(I)V

    .line 49
    const/4 v2, 0x0

    .local v2, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v3, p0, Lar/com/hjg/pngj/chunks/w;->i:I

    if-ge v2, v3, :cond_0

    .line 50
    iget-object v3, p1, Lar/com/hjg/pngj/chunks/e;->d:[B

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    aget-byte v3, v3, v0

    and-int/lit16 v3, v3, 0xff

    iget-object v4, p1, Lar/com/hjg/pngj/chunks/e;->d:[B

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    aget-byte v4, v4, v1

    and-int/lit16 v4, v4, 0xff

    iget-object v5, p1, Lar/com/hjg/pngj/chunks/e;->d:[B

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    aget-byte v5, v5, v0

    and-int/lit16 v5, v5, 0xff

    invoke-virtual {p0, v2, v3, v4, v5}, Lar/com/hjg/pngj/chunks/w;->a(IIII)V

    .line 49
    add-int/lit8 v2, v2, 0x1

    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_0

    .line 53
    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 3
    .param p1, "n"    # I

    .prologue
    .line 56
    iput p1, p0, Lar/com/hjg/pngj/chunks/w;->i:I

    .line 57
    iget v0, p0, Lar/com/hjg/pngj/chunks/w;->i:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    iget v0, p0, Lar/com/hjg/pngj/chunks/w;->i:I

    const/16 v1, 0x100

    if-le v0, v1, :cond_1

    .line 58
    :cond_0
    new-instance v0, Lar/com/hjg/pngj/PngjException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid pallette - nentries="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lar/com/hjg/pngj/chunks/w;->i:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_1
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/w;->j:[I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lar/com/hjg/pngj/chunks/w;->j:[I

    array-length v0, v0

    iget v1, p0, Lar/com/hjg/pngj/chunks/w;->i:I

    if-eq v0, v1, :cond_3

    .line 60
    :cond_2
    iget v0, p0, Lar/com/hjg/pngj/chunks/w;->i:I

    new-array v0, v0, [I

    iput-object v0, p0, Lar/com/hjg/pngj/chunks/w;->j:[I

    .line 62
    :cond_3
    return-void
.end method

.method public c(I)I
    .locals 1
    .param p1, "n"    # I

    .prologue
    .line 73
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/w;->j:[I

    aget v0, v0, p1

    return v0
.end method

.method public c()Lar/com/hjg/pngj/chunks/e;
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 34
    iget v6, p0, Lar/com/hjg/pngj/chunks/w;->i:I

    mul-int/lit8 v3, v6, 0x3

    .line 35
    .local v3, "len":I
    const/4 v6, 0x3

    new-array v5, v6, [I

    .line 36
    .local v5, "rgb":[I
    invoke-virtual {p0, v3, v8}, Lar/com/hjg/pngj/chunks/w;->a(IZ)Lar/com/hjg/pngj/chunks/e;

    move-result-object v0

    .line 37
    .local v0, "c":Lar/com/hjg/pngj/chunks/e;
    const/4 v4, 0x0

    .local v4, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v6, p0, Lar/com/hjg/pngj/chunks/w;->i:I

    if-ge v4, v6, :cond_0

    .line 38
    invoke-virtual {p0, v4, v5}, Lar/com/hjg/pngj/chunks/w;->a(I[I)V

    .line 39
    iget-object v6, v0, Lar/com/hjg/pngj/chunks/e;->d:[B

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    const/4 v7, 0x0

    aget v7, v5, v7

    int-to-byte v7, v7

    aput-byte v7, v6, v1

    .line 40
    iget-object v6, v0, Lar/com/hjg/pngj/chunks/e;->d:[B

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    aget v7, v5, v8

    int-to-byte v7, v7

    aput-byte v7, v6, v2

    .line 41
    iget-object v6, v0, Lar/com/hjg/pngj/chunks/e;->d:[B

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    const/4 v7, 0x2

    aget v7, v5, v7

    int-to-byte v7, v7

    aput-byte v7, v6, v1

    .line 37
    add-int/lit8 v4, v4, 0x1

    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_0

    .line 43
    :cond_0
    return-object v0
.end method

.method public i()Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;->NA:Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;

    return-object v0
.end method

.method public j()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lar/com/hjg/pngj/chunks/w;->i:I

    return v0
.end method

.method public k()I
    .locals 3

    .prologue
    const/4 v1, 0x4

    const/4 v0, 0x2

    .line 88
    iget v2, p0, Lar/com/hjg/pngj/chunks/w;->i:I

    if-gt v2, v0, :cond_1

    .line 89
    const/4 v0, 0x1

    .line 95
    :cond_0
    :goto_0
    return v0

    .line 90
    :cond_1
    iget v2, p0, Lar/com/hjg/pngj/chunks/w;->i:I

    if-le v2, v1, :cond_0

    .line 92
    iget v0, p0, Lar/com/hjg/pngj/chunks/w;->i:I

    const/16 v2, 0x10

    if-gt v0, v2, :cond_2

    move v0, v1

    .line 93
    goto :goto_0

    .line 95
    :cond_2
    const/16 v0, 0x8

    goto :goto_0
.end method
