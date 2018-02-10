.class public Lar/com/hjg/pngj/chunks/j;
.super Lar/com/hjg/pngj/chunks/ab;
.source "SourceFile"


# static fields
.field public static final h:Ljava/lang/String; = "cHRM"


# instance fields
.field private i:D

.field private j:D

.field private k:D

.field private l:D

.field private m:D

.field private n:D

.field private o:D

.field private p:D


# direct methods
.method public constructor <init>(Lar/com/hjg/pngj/s;)V
    .locals 1
    .param p1, "info"    # Lar/com/hjg/pngj/s;

    .prologue
    .line 22
    const-string v0, "cHRM"

    invoke-direct {p0, v0, p1}, Lar/com/hjg/pngj/chunks/ab;-><init>(Ljava/lang/String;Lar/com/hjg/pngj/s;)V

    .line 23
    return-void
.end method


# virtual methods
.method public a(DDDDDDDD)V
    .locals 3
    .param p1, "whitex"    # D
    .param p3, "whitey"    # D
    .param p5, "redx"    # D
    .param p7, "redy"    # D
    .param p9, "greenx"    # D
    .param p11, "greeny"    # D
    .param p13, "bluex"    # D
    .param p15, "bluey"    # D

    .prologue
    .line 61
    iput-wide p1, p0, Lar/com/hjg/pngj/chunks/j;->i:D

    .line 62
    iput-wide p5, p0, Lar/com/hjg/pngj/chunks/j;->k:D

    .line 63
    iput-wide p9, p0, Lar/com/hjg/pngj/chunks/j;->m:D

    .line 64
    move-wide/from16 v0, p13

    iput-wide v0, p0, Lar/com/hjg/pngj/chunks/j;->o:D

    .line 65
    iput-wide p3, p0, Lar/com/hjg/pngj/chunks/j;->j:D

    .line 66
    iput-wide p7, p0, Lar/com/hjg/pngj/chunks/j;->l:D

    .line 67
    iput-wide p11, p0, Lar/com/hjg/pngj/chunks/j;->n:D

    .line 68
    move-wide/from16 v0, p15

    iput-wide v0, p0, Lar/com/hjg/pngj/chunks/j;->p:D

    .line 69
    return-void
.end method

.method public a(Lar/com/hjg/pngj/chunks/e;)V
    .locals 3
    .param p1, "c"    # Lar/com/hjg/pngj/chunks/e;

    .prologue
    .line 47
    iget v0, p1, Lar/com/hjg/pngj/chunks/e;->a:I

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    .line 48
    new-instance v0, Lar/com/hjg/pngj/PngjException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad chunk "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_0
    iget-object v0, p1, Lar/com/hjg/pngj/chunks/e;->d:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lar/com/hjg/pngj/x;->c([BI)I

    move-result v0

    invoke-static {v0}, Lar/com/hjg/pngj/x;->a(I)D

    move-result-wide v0

    iput-wide v0, p0, Lar/com/hjg/pngj/chunks/j;->i:D

    .line 50
    iget-object v0, p1, Lar/com/hjg/pngj/chunks/e;->d:[B

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lar/com/hjg/pngj/x;->c([BI)I

    move-result v0

    invoke-static {v0}, Lar/com/hjg/pngj/x;->a(I)D

    move-result-wide v0

    iput-wide v0, p0, Lar/com/hjg/pngj/chunks/j;->j:D

    .line 51
    iget-object v0, p1, Lar/com/hjg/pngj/chunks/e;->d:[B

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lar/com/hjg/pngj/x;->c([BI)I

    move-result v0

    invoke-static {v0}, Lar/com/hjg/pngj/x;->a(I)D

    move-result-wide v0

    iput-wide v0, p0, Lar/com/hjg/pngj/chunks/j;->k:D

    .line 52
    iget-object v0, p1, Lar/com/hjg/pngj/chunks/e;->d:[B

    const/16 v1, 0xc

    invoke-static {v0, v1}, Lar/com/hjg/pngj/x;->c([BI)I

    move-result v0

    invoke-static {v0}, Lar/com/hjg/pngj/x;->a(I)D

    move-result-wide v0

    iput-wide v0, p0, Lar/com/hjg/pngj/chunks/j;->l:D

    .line 53
    iget-object v0, p1, Lar/com/hjg/pngj/chunks/e;->d:[B

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lar/com/hjg/pngj/x;->c([BI)I

    move-result v0

    invoke-static {v0}, Lar/com/hjg/pngj/x;->a(I)D

    move-result-wide v0

    iput-wide v0, p0, Lar/com/hjg/pngj/chunks/j;->m:D

    .line 54
    iget-object v0, p1, Lar/com/hjg/pngj/chunks/e;->d:[B

    const/16 v1, 0x14

    invoke-static {v0, v1}, Lar/com/hjg/pngj/x;->c([BI)I

    move-result v0

    invoke-static {v0}, Lar/com/hjg/pngj/x;->a(I)D

    move-result-wide v0

    iput-wide v0, p0, Lar/com/hjg/pngj/chunks/j;->n:D

    .line 55
    iget-object v0, p1, Lar/com/hjg/pngj/chunks/e;->d:[B

    const/16 v1, 0x18

    invoke-static {v0, v1}, Lar/com/hjg/pngj/x;->c([BI)I

    move-result v0

    invoke-static {v0}, Lar/com/hjg/pngj/x;->a(I)D

    move-result-wide v0

    iput-wide v0, p0, Lar/com/hjg/pngj/chunks/j;->o:D

    .line 56
    iget-object v0, p1, Lar/com/hjg/pngj/chunks/e;->d:[B

    const/16 v1, 0x1c

    invoke-static {v0, v1}, Lar/com/hjg/pngj/x;->c([BI)I

    move-result v0

    invoke-static {v0}, Lar/com/hjg/pngj/x;->a(I)D

    move-result-wide v0

    iput-wide v0, p0, Lar/com/hjg/pngj/chunks/j;->p:D

    .line 57
    return-void
.end method

.method public c()Lar/com/hjg/pngj/chunks/e;
    .locals 4

    .prologue
    .line 32
    const/4 v0, 0x0

    .line 33
    .local v0, "c":Lar/com/hjg/pngj/chunks/e;
    const/16 v1, 0x20

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lar/com/hjg/pngj/chunks/j;->a(IZ)Lar/com/hjg/pngj/chunks/e;

    move-result-object v0

    .line 34
    iget-wide v2, p0, Lar/com/hjg/pngj/chunks/j;->i:D

    invoke-static {v2, v3}, Lar/com/hjg/pngj/x;->a(D)I

    move-result v1

    iget-object v2, v0, Lar/com/hjg/pngj/chunks/e;->d:[B

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lar/com/hjg/pngj/x;->b(I[BI)V

    .line 35
    iget-wide v2, p0, Lar/com/hjg/pngj/chunks/j;->j:D

    invoke-static {v2, v3}, Lar/com/hjg/pngj/x;->a(D)I

    move-result v1

    iget-object v2, v0, Lar/com/hjg/pngj/chunks/e;->d:[B

    const/4 v3, 0x4

    invoke-static {v1, v2, v3}, Lar/com/hjg/pngj/x;->b(I[BI)V

    .line 36
    iget-wide v2, p0, Lar/com/hjg/pngj/chunks/j;->k:D

    invoke-static {v2, v3}, Lar/com/hjg/pngj/x;->a(D)I

    move-result v1

    iget-object v2, v0, Lar/com/hjg/pngj/chunks/e;->d:[B

    const/16 v3, 0x8

    invoke-static {v1, v2, v3}, Lar/com/hjg/pngj/x;->b(I[BI)V

    .line 37
    iget-wide v2, p0, Lar/com/hjg/pngj/chunks/j;->l:D

    invoke-static {v2, v3}, Lar/com/hjg/pngj/x;->a(D)I

    move-result v1

    iget-object v2, v0, Lar/com/hjg/pngj/chunks/e;->d:[B

    const/16 v3, 0xc

    invoke-static {v1, v2, v3}, Lar/com/hjg/pngj/x;->b(I[BI)V

    .line 38
    iget-wide v2, p0, Lar/com/hjg/pngj/chunks/j;->m:D

    invoke-static {v2, v3}, Lar/com/hjg/pngj/x;->a(D)I

    move-result v1

    iget-object v2, v0, Lar/com/hjg/pngj/chunks/e;->d:[B

    const/16 v3, 0x10

    invoke-static {v1, v2, v3}, Lar/com/hjg/pngj/x;->b(I[BI)V

    .line 39
    iget-wide v2, p0, Lar/com/hjg/pngj/chunks/j;->n:D

    invoke-static {v2, v3}, Lar/com/hjg/pngj/x;->a(D)I

    move-result v1

    iget-object v2, v0, Lar/com/hjg/pngj/chunks/e;->d:[B

    const/16 v3, 0x14

    invoke-static {v1, v2, v3}, Lar/com/hjg/pngj/x;->b(I[BI)V

    .line 40
    iget-wide v2, p0, Lar/com/hjg/pngj/chunks/j;->o:D

    invoke-static {v2, v3}, Lar/com/hjg/pngj/x;->a(D)I

    move-result v1

    iget-object v2, v0, Lar/com/hjg/pngj/chunks/e;->d:[B

    const/16 v3, 0x18

    invoke-static {v1, v2, v3}, Lar/com/hjg/pngj/x;->b(I[BI)V

    .line 41
    iget-wide v2, p0, Lar/com/hjg/pngj/chunks/j;->p:D

    invoke-static {v2, v3}, Lar/com/hjg/pngj/x;->a(D)I

    move-result v1

    iget-object v2, v0, Lar/com/hjg/pngj/chunks/e;->d:[B

    const/16 v3, 0x1c

    invoke-static {v1, v2, v3}, Lar/com/hjg/pngj/x;->b(I[BI)V

    .line 42
    return-object v0
.end method

.method public i()Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;->AFTER_PLTE_BEFORE_IDAT:Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;

    return-object v0
.end method

.method public j()[D
    .locals 4

    .prologue
    .line 72
    const/16 v0, 0x8

    new-array v0, v0, [D

    const/4 v1, 0x0

    iget-wide v2, p0, Lar/com/hjg/pngj/chunks/j;->i:D

    aput-wide v2, v0, v1

    const/4 v1, 0x1

    iget-wide v2, p0, Lar/com/hjg/pngj/chunks/j;->j:D

    aput-wide v2, v0, v1

    const/4 v1, 0x2

    iget-wide v2, p0, Lar/com/hjg/pngj/chunks/j;->k:D

    aput-wide v2, v0, v1

    const/4 v1, 0x3

    iget-wide v2, p0, Lar/com/hjg/pngj/chunks/j;->l:D

    aput-wide v2, v0, v1

    const/4 v1, 0x4

    iget-wide v2, p0, Lar/com/hjg/pngj/chunks/j;->m:D

    aput-wide v2, v0, v1

    const/4 v1, 0x5

    iget-wide v2, p0, Lar/com/hjg/pngj/chunks/j;->n:D

    aput-wide v2, v0, v1

    const/4 v1, 0x6

    iget-wide v2, p0, Lar/com/hjg/pngj/chunks/j;->o:D

    aput-wide v2, v0, v1

    const/4 v1, 0x7

    iget-wide v2, p0, Lar/com/hjg/pngj/chunks/j;->p:D

    aput-wide v2, v0, v1

    return-object v0
.end method
