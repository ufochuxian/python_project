.class public Lar/com/hjg/pngj/chunks/o;
.super Lar/com/hjg/pngj/chunks/ab;
.source "SourceFile"


# static fields
.field public static final h:Ljava/lang/String; = "iCCP"


# instance fields
.field private i:Ljava/lang/String;

.field private j:[B


# direct methods
.method public constructor <init>(Lar/com/hjg/pngj/s;)V
    .locals 1
    .param p1, "info"    # Lar/com/hjg/pngj/s;

    .prologue
    .line 19
    const-string v0, "iCCP"

    invoke-direct {p0, v0, p1}, Lar/com/hjg/pngj/chunks/ab;-><init>(Ljava/lang/String;Lar/com/hjg/pngj/s;)V

    .line 20
    return-void
.end method


# virtual methods
.method public a(Lar/com/hjg/pngj/chunks/e;)V
    .locals 7
    .param p1, "chunk"    # Lar/com/hjg/pngj/chunks/e;

    .prologue
    const/4 v6, 0x0

    .line 40
    iget-object v3, p1, Lar/com/hjg/pngj/chunks/e;->d:[B

    invoke-static {v3}, Lar/com/hjg/pngj/chunks/c;->c([B)I

    move-result v2

    .line 41
    .local v2, "pos0":I
    iget-object v3, p1, Lar/com/hjg/pngj/chunks/e;->d:[B

    invoke-static {v3, v6, v2}, Lar/com/hjg/pngj/chunks/c;->a([BII)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lar/com/hjg/pngj/chunks/o;->i:Ljava/lang/String;

    .line 42
    iget-object v3, p1, Lar/com/hjg/pngj/chunks/e;->d:[B

    add-int/lit8 v4, v2, 0x1

    aget-byte v3, v3, v4

    and-int/lit16 v0, v3, 0xff

    .line 43
    .local v0, "comp":I
    if-eqz v0, :cond_0

    .line 44
    new-instance v3, Lar/com/hjg/pngj/PngjException;

    const-string v4, "bad compression for ChunkTypeICCP"

    invoke-direct {v3, v4}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 45
    :cond_0
    iget-object v3, p1, Lar/com/hjg/pngj/chunks/e;->d:[B

    array-length v3, v3

    add-int/lit8 v4, v2, 0x2

    sub-int v1, v3, v4

    .line 46
    .local v1, "compdatasize":I
    new-array v3, v1, [B

    iput-object v3, p0, Lar/com/hjg/pngj/chunks/o;->j:[B

    .line 47
    iget-object v3, p1, Lar/com/hjg/pngj/chunks/e;->d:[B

    add-int/lit8 v4, v2, 0x2

    iget-object v5, p0, Lar/com/hjg/pngj/chunks/o;->j:[B

    invoke-static {v3, v4, v5, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 48
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "profile"    # Ljava/lang/String;

    .prologue
    .line 59
    invoke-static {p2}, Lar/com/hjg/pngj/chunks/c;->a(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lar/com/hjg/pngj/chunks/o;->a(Ljava/lang/String;[B)V

    .line 60
    return-void
.end method

.method public a(Ljava/lang/String;[B)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "profile"    # [B

    .prologue
    .line 54
    iput-object p1, p0, Lar/com/hjg/pngj/chunks/o;->i:Ljava/lang/String;

    .line 55
    const/4 v0, 0x1

    invoke-static {p2, v0}, Lar/com/hjg/pngj/chunks/c;->a([BZ)[B

    move-result-object v0

    iput-object v0, p0, Lar/com/hjg/pngj/chunks/o;->j:[B

    .line 56
    return-void
.end method

.method public c()Lar/com/hjg/pngj/chunks/e;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 29
    iget-object v1, p0, Lar/com/hjg/pngj/chunks/o;->i:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lar/com/hjg/pngj/chunks/o;->j:[B

    array-length v2, v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x2

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lar/com/hjg/pngj/chunks/o;->a(IZ)Lar/com/hjg/pngj/chunks/e;

    move-result-object v0

    .line 30
    .local v0, "c":Lar/com/hjg/pngj/chunks/e;
    iget-object v1, p0, Lar/com/hjg/pngj/chunks/o;->i:Ljava/lang/String;

    invoke-static {v1}, Lar/com/hjg/pngj/chunks/c;->a(Ljava/lang/String;)[B

    move-result-object v1

    iget-object v2, v0, Lar/com/hjg/pngj/chunks/e;->d:[B

    iget-object v3, p0, Lar/com/hjg/pngj/chunks/o;->i:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v1, v5, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 31
    iget-object v1, v0, Lar/com/hjg/pngj/chunks/e;->d:[B

    iget-object v2, p0, Lar/com/hjg/pngj/chunks/o;->i:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    aput-byte v5, v1, v2

    .line 32
    iget-object v1, v0, Lar/com/hjg/pngj/chunks/e;->d:[B

    iget-object v2, p0, Lar/com/hjg/pngj/chunks/o;->i:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    aput-byte v5, v1, v2

    .line 33
    iget-object v1, p0, Lar/com/hjg/pngj/chunks/o;->j:[B

    iget-object v2, v0, Lar/com/hjg/pngj/chunks/e;->d:[B

    iget-object v3, p0, Lar/com/hjg/pngj/chunks/o;->i:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    iget-object v4, p0, Lar/com/hjg/pngj/chunks/o;->j:[B

    array-length v4, v4

    invoke-static {v1, v5, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 35
    return-object v0
.end method

.method public i()Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;->BEFORE_PLTE_AND_IDAT:Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/o;->i:Ljava/lang/String;

    return-object v0
.end method

.method public k()[B
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/o;->j:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lar/com/hjg/pngj/chunks/c;->a([BZ)[B

    move-result-object v0

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    invoke-virtual {p0}, Lar/com/hjg/pngj/chunks/o;->k()[B

    move-result-object v0

    invoke-static {v0}, Lar/com/hjg/pngj/chunks/c;->a([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
