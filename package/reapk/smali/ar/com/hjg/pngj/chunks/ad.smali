.class public Lar/com/hjg/pngj/chunks/ad;
.super Lar/com/hjg/pngj/chunks/ab;
.source "SourceFile"


# static fields
.field public static final h:Ljava/lang/String; = "tIME"


# instance fields
.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I


# direct methods
.method public constructor <init>(Lar/com/hjg/pngj/s;)V
    .locals 1
    .param p1, "info"    # Lar/com/hjg/pngj/s;

    .prologue
    .line 21
    const-string v0, "tIME"

    invoke-direct {p0, v0, p1}, Lar/com/hjg/pngj/chunks/ab;-><init>(Ljava/lang/String;Lar/com/hjg/pngj/s;)V

    .line 22
    return-void
.end method


# virtual methods
.method public a(IIIIII)V
    .locals 0
    .param p1, "yearx"    # I
    .param p2, "monx"    # I
    .param p3, "dayx"    # I
    .param p4, "hourx"    # I
    .param p5, "minx"    # I
    .param p6, "secx"    # I

    .prologue
    .line 65
    iput p1, p0, Lar/com/hjg/pngj/chunks/ad;->i:I

    .line 66
    iput p2, p0, Lar/com/hjg/pngj/chunks/ad;->j:I

    .line 67
    iput p3, p0, Lar/com/hjg/pngj/chunks/ad;->k:I

    .line 68
    iput p4, p0, Lar/com/hjg/pngj/chunks/ad;->l:I

    .line 69
    iput p5, p0, Lar/com/hjg/pngj/chunks/ad;->m:I

    .line 70
    iput p6, p0, Lar/com/hjg/pngj/chunks/ad;->n:I

    .line 71
    return-void
.end method

.method public a(Lar/com/hjg/pngj/chunks/e;)V
    .locals 3
    .param p1, "chunk"    # Lar/com/hjg/pngj/chunks/e;

    .prologue
    .line 43
    iget v0, p1, Lar/com/hjg/pngj/chunks/e;->a:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    .line 44
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

    .line 45
    :cond_0
    iget-object v0, p1, Lar/com/hjg/pngj/chunks/e;->d:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lar/com/hjg/pngj/x;->b([BI)I

    move-result v0

    iput v0, p0, Lar/com/hjg/pngj/chunks/ad;->i:I

    .line 46
    iget-object v0, p1, Lar/com/hjg/pngj/chunks/e;->d:[B

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lar/com/hjg/pngj/x;->a([BI)I

    move-result v0

    iput v0, p0, Lar/com/hjg/pngj/chunks/ad;->j:I

    .line 47
    iget-object v0, p1, Lar/com/hjg/pngj/chunks/e;->d:[B

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lar/com/hjg/pngj/x;->a([BI)I

    move-result v0

    iput v0, p0, Lar/com/hjg/pngj/chunks/ad;->k:I

    .line 48
    iget-object v0, p1, Lar/com/hjg/pngj/chunks/e;->d:[B

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lar/com/hjg/pngj/x;->a([BI)I

    move-result v0

    iput v0, p0, Lar/com/hjg/pngj/chunks/ad;->l:I

    .line 49
    iget-object v0, p1, Lar/com/hjg/pngj/chunks/e;->d:[B

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lar/com/hjg/pngj/x;->a([BI)I

    move-result v0

    iput v0, p0, Lar/com/hjg/pngj/chunks/ad;->m:I

    .line 50
    iget-object v0, p1, Lar/com/hjg/pngj/chunks/e;->d:[B

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lar/com/hjg/pngj/x;->a([BI)I

    move-result v0

    iput v0, p0, Lar/com/hjg/pngj/chunks/ad;->n:I

    .line 51
    return-void
.end method

.method public b(I)V
    .locals 8
    .param p1, "secsAgo"    # I

    .prologue
    .line 54
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 55
    .local v0, "d":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    int-to-long v6, p1

    mul-long/2addr v4, v6

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 56
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lar/com/hjg/pngj/chunks/ad;->i:I

    .line 57
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lar/com/hjg/pngj/chunks/ad;->j:I

    .line 58
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lar/com/hjg/pngj/chunks/ad;->k:I

    .line 59
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lar/com/hjg/pngj/chunks/ad;->l:I

    .line 60
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lar/com/hjg/pngj/chunks/ad;->m:I

    .line 61
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lar/com/hjg/pngj/chunks/ad;->n:I

    .line 62
    return-void
.end method

.method public c()Lar/com/hjg/pngj/chunks/e;
    .locals 4

    .prologue
    .line 31
    const/4 v1, 0x7

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lar/com/hjg/pngj/chunks/ad;->a(IZ)Lar/com/hjg/pngj/chunks/e;

    move-result-object v0

    .line 32
    .local v0, "c":Lar/com/hjg/pngj/chunks/e;
    iget v1, p0, Lar/com/hjg/pngj/chunks/ad;->i:I

    iget-object v2, v0, Lar/com/hjg/pngj/chunks/e;->d:[B

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lar/com/hjg/pngj/x;->a(I[BI)V

    .line 33
    iget-object v1, v0, Lar/com/hjg/pngj/chunks/e;->d:[B

    const/4 v2, 0x2

    iget v3, p0, Lar/com/hjg/pngj/chunks/ad;->j:I

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 34
    iget-object v1, v0, Lar/com/hjg/pngj/chunks/e;->d:[B

    const/4 v2, 0x3

    iget v3, p0, Lar/com/hjg/pngj/chunks/ad;->k:I

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 35
    iget-object v1, v0, Lar/com/hjg/pngj/chunks/e;->d:[B

    const/4 v2, 0x4

    iget v3, p0, Lar/com/hjg/pngj/chunks/ad;->l:I

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 36
    iget-object v1, v0, Lar/com/hjg/pngj/chunks/e;->d:[B

    const/4 v2, 0x5

    iget v3, p0, Lar/com/hjg/pngj/chunks/ad;->m:I

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 37
    iget-object v1, v0, Lar/com/hjg/pngj/chunks/e;->d:[B

    const/4 v2, 0x6

    iget v3, p0, Lar/com/hjg/pngj/chunks/ad;->n:I

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 38
    return-object v0
.end method

.method public i()Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;->NONE:Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;

    return-object v0
.end method

.method public j()[I
    .locals 3

    .prologue
    .line 74
    const/4 v0, 0x6

    new-array v0, v0, [I

    const/4 v1, 0x0

    iget v2, p0, Lar/com/hjg/pngj/chunks/ad;->i:I

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lar/com/hjg/pngj/chunks/ad;->j:I

    aput v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lar/com/hjg/pngj/chunks/ad;->k:I

    aput v2, v0, v1

    const/4 v1, 0x3

    iget v2, p0, Lar/com/hjg/pngj/chunks/ad;->l:I

    aput v2, v0, v1

    const/4 v1, 0x4

    iget v2, p0, Lar/com/hjg/pngj/chunks/ad;->m:I

    aput v2, v0, v1

    const/4 v1, 0x5

    iget v2, p0, Lar/com/hjg/pngj/chunks/ad;->n:I

    aput v2, v0, v1

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 4

    .prologue
    .line 79
    const-string v0, "%04d/%02d/%02d %02d:%02d:%02d"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lar/com/hjg/pngj/chunks/ad;->i:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lar/com/hjg/pngj/chunks/ad;->j:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lar/com/hjg/pngj/chunks/ad;->k:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget v3, p0, Lar/com/hjg/pngj/chunks/ad;->l:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget v3, p0, Lar/com/hjg/pngj/chunks/ad;->m:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget v3, p0, Lar/com/hjg/pngj/chunks/ad;->n:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
