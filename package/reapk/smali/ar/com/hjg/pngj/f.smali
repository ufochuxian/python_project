.class public Lar/com/hjg/pngj/f;
.super Lar/com/hjg/pngj/ChunkReader;
.source "SourceFile"


# instance fields
.field protected final d:Lar/com/hjg/pngj/g;

.field protected e:Z

.field protected f:Z

.field protected g:[B

.field protected h:I


# direct methods
.method public constructor <init>(ILjava/lang/String;ZJLar/com/hjg/pngj/g;)V
    .locals 8
    .param p1, "clen"    # I
    .param p2, "chunkid"    # Ljava/lang/String;
    .param p3, "checkCrc"    # Z
    .param p4, "offsetInPng"    # J
    .param p6, "iDatSet"    # Lar/com/hjg/pngj/g;

    .prologue
    const/4 v0, 0x0

    .line 21
    sget-object v6, Lar/com/hjg/pngj/ChunkReader$ChunkReaderMode;->PROCESS:Lar/com/hjg/pngj/ChunkReader$ChunkReaderMode;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-wide v4, p4

    invoke-direct/range {v1 .. v6}, Lar/com/hjg/pngj/ChunkReader;-><init>(ILjava/lang/String;JLar/com/hjg/pngj/ChunkReader$ChunkReaderMode;)V

    .line 13
    iput-boolean v0, p0, Lar/com/hjg/pngj/f;->e:Z

    .line 15
    iput-boolean v0, p0, Lar/com/hjg/pngj/f;->f:Z

    .line 17
    const/4 v0, -0x1

    iput v0, p0, Lar/com/hjg/pngj/f;->h:I

    .line 22
    iput-object p6, p0, Lar/com/hjg/pngj/f;->d:Lar/com/hjg/pngj/g;

    .line 23
    const-string v0, "fdAT"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    const/4 v0, 0x1

    iput-boolean v0, p0, Lar/com/hjg/pngj/f;->f:Z

    .line 25
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lar/com/hjg/pngj/f;->g:[B

    .line 27
    :cond_0
    invoke-virtual {p6, p0}, Lar/com/hjg/pngj/g;->a(Lar/com/hjg/pngj/f;)V

    .line 28
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0
    .param p1, "seqNumExpected"    # I

    .prologue
    .line 79
    iput p1, p0, Lar/com/hjg/pngj/f;->h:I

    .line 80
    return-void
.end method

.method protected a(I[BII)V
    .locals 4
    .param p1, "offsetInchunk"    # I
    .param p2, "buf"    # [B
    .param p3, "off"    # I
    .param p4, "len"    # I

    .prologue
    const/4 v3, 0x4

    .line 35
    iget-boolean v1, p0, Lar/com/hjg/pngj/f;->f:Z

    if-eqz v1, :cond_0

    if-ge p1, v3, :cond_0

    .line 36
    move v0, p1

    .local v0, "oc":I
    :goto_0
    if-ge v0, v3, :cond_0

    if-lez p4, :cond_0

    .line 37
    iget-object v1, p0, Lar/com/hjg/pngj/f;->g:[B

    aget-byte v2, p2, p3

    aput-byte v2, v1, v0

    .line 36
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 p3, p3, 0x1

    add-int/lit8 p4, p4, -0x1

    goto :goto_0

    .line 39
    .end local v0    # "oc":I
    :cond_0
    if-lez p4, :cond_1

    .line 40
    iget-object v1, p0, Lar/com/hjg/pngj/f;->d:Lar/com/hjg/pngj/g;

    invoke-virtual {v1, p2, p3, p4}, Lar/com/hjg/pngj/g;->a([BII)V

    .line 41
    iget-boolean v1, p0, Lar/com/hjg/pngj/f;->e:Z

    if-eqz v1, :cond_1

    .line 42
    invoke-virtual {p0}, Lar/com/hjg/pngj/f;->a()Lar/com/hjg/pngj/chunks/e;

    move-result-object v1

    iget-object v1, v1, Lar/com/hjg/pngj/chunks/e;->d:[B

    iget v2, p0, Lar/com/hjg/pngj/f;->b:I

    invoke-static {p2, p3, v1, v2, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 45
    :cond_1
    return-void
.end method

.method protected c()V
    .locals 4

    .prologue
    .line 52
    iget-boolean v1, p0, Lar/com/hjg/pngj/f;->f:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lar/com/hjg/pngj/f;->a()Lar/com/hjg/pngj/chunks/e;

    move-result-object v1

    iget-object v1, v1, Lar/com/hjg/pngj/chunks/e;->c:Ljava/lang/String;

    const-string v2, "fdAT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 53
    iget v1, p0, Lar/com/hjg/pngj/f;->h:I

    if-ltz v1, :cond_0

    .line 54
    iget-object v1, p0, Lar/com/hjg/pngj/f;->g:[B

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lar/com/hjg/pngj/x;->c([BI)I

    move-result v0

    .line 55
    .local v0, "seqNum":I
    iget v1, p0, Lar/com/hjg/pngj/f;->h:I

    if-eq v0, v1, :cond_0

    .line 56
    new-instance v1, Lar/com/hjg/pngj/PngjInputException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bad chunk sequence for fDAT chunk "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lar/com/hjg/pngj/f;->h:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lar/com/hjg/pngj/PngjInputException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 60
    .end local v0    # "seqNum":I
    :cond_0
    return-void
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x1

    return v0
.end method

.method public e()V
    .locals 2

    .prologue
    .line 71
    iget v0, p0, Lar/com/hjg/pngj/f;->b:I

    if-lez v0, :cond_0

    .line 72
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "too late"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lar/com/hjg/pngj/f;->e:Z

    .line 74
    invoke-virtual {p0}, Lar/com/hjg/pngj/f;->a()Lar/com/hjg/pngj/chunks/e;

    move-result-object v0

    invoke-virtual {v0}, Lar/com/hjg/pngj/chunks/e;->a()V

    .line 75
    return-void
.end method
