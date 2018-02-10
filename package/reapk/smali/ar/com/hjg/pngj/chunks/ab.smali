.class public abstract Lar/com/hjg/pngj/chunks/ab;
.super Lar/com/hjg/pngj/chunks/PngChunk;
.source "SourceFile"


# direct methods
.method protected constructor <init>(Ljava/lang/String;Lar/com/hjg/pngj/s;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "imgInfo"    # Lar/com/hjg/pngj/s;

    .prologue
    .line 11
    invoke-direct {p0, p1, p2}, Lar/com/hjg/pngj/chunks/PngChunk;-><init>(Ljava/lang/String;Lar/com/hjg/pngj/s;)V

    .line 12
    return-void
.end method


# virtual methods
.method public final d()Z
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 28
    if-ne p0, p1, :cond_1

    .line 40
    :cond_0
    :goto_0
    return v1

    .line 30
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 31
    goto :goto_0

    .line 32
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 33
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 34
    check-cast v0, Lar/com/hjg/pngj/chunks/ab;

    .line 35
    .local v0, "other":Lar/com/hjg/pngj/chunks/ab;
    iget-object v3, p0, Lar/com/hjg/pngj/chunks/ab;->a:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 36
    iget-object v3, v0, Lar/com/hjg/pngj/chunks/ab;->a:Ljava/lang/String;

    if-eqz v3, :cond_0

    move v1, v2

    .line 37
    goto :goto_0

    .line 38
    :cond_4
    iget-object v3, p0, Lar/com/hjg/pngj/chunks/ab;->a:Ljava/lang/String;

    iget-object v4, v0, Lar/com/hjg/pngj/chunks/ab;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 39
    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 20
    const/16 v0, 0x1f

    .line 21
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 22
    .local v1, "result":I
    iget-object v2, p0, Lar/com/hjg/pngj/chunks/ab;->a:Ljava/lang/String;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 23
    return v1

    .line 22
    :cond_0
    iget-object v2, p0, Lar/com/hjg/pngj/chunks/ab;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0
.end method
