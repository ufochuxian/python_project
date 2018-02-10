.class public Lar/com/hjg/pngj/a/c;
.super Lar/com/hjg/pngj/a/a;
.source "SourceFile"


# static fields
.field private static final n:I = 0x3e80


# instance fields
.field private final j:Lar/com/hjg/pngj/a/e;

.field private k:[B

.field private final l:I

.field private m:I


# direct methods
.method public constructor <init>(Lar/com/hjg/pngj/k;IJ)V
    .locals 3
    .param p1, "os"    # Lar/com/hjg/pngj/k;
    .param p2, "maxBlockLen"    # I
    .param p3, "totalLen"    # J

    .prologue
    const-wide/16 v0, 0x3e80

    .line 25
    invoke-direct {p0, p1, p2, p3, p4}, Lar/com/hjg/pngj/a/a;-><init>(Lar/com/hjg/pngj/k;IJ)V

    .line 20
    const/4 v2, 0x0

    iput v2, p0, Lar/com/hjg/pngj/a/c;->m:I

    .line 26
    new-instance v2, Lar/com/hjg/pngj/a/e;

    invoke-direct {v2}, Lar/com/hjg/pngj/a/e;-><init>()V

    iput-object v2, p0, Lar/com/hjg/pngj/a/c;->j:Lar/com/hjg/pngj/a/e;

    .line 27
    cmp-long v2, p3, v0

    if-lez v2, :cond_0

    move-wide p3, v0

    .end local p3    # "totalLen":J
    :cond_0
    long-to-int v0, p3

    iput v0, p0, Lar/com/hjg/pngj/a/c;->l:I

    .line 28
    return-void
.end method

.method public constructor <init>(Lar/com/hjg/pngj/k;IJII)V
    .locals 1
    .param p1, "os"    # Lar/com/hjg/pngj/k;
    .param p2, "maxBlockLen"    # I
    .param p3, "totalLen"    # J
    .param p5, "deflaterCompLevel"    # I
    .param p6, "deflaterStrategy"    # I

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3, p4}, Lar/com/hjg/pngj/a/c;-><init>(Lar/com/hjg/pngj/k;IJ)V

    .line 37
    return-void
.end method

.method public constructor <init>(Lar/com/hjg/pngj/k;IJLjava/util/zip/Deflater;)V
    .locals 1
    .param p1, "os"    # Lar/com/hjg/pngj/k;
    .param p2, "maxBlockLen"    # I
    .param p3, "totalLen"    # J
    .param p5, "def"    # Ljava/util/zip/Deflater;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3, p4}, Lar/com/hjg/pngj/a/c;-><init>(Lar/com/hjg/pngj/k;IJ)V

    .line 32
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 75
    iget-boolean v0, p0, Lar/com/hjg/pngj/a/c;->e:Z

    if-nez v0, :cond_0

    .line 76
    invoke-virtual {p0}, Lar/com/hjg/pngj/a/c;->i()V

    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lar/com/hjg/pngj/a/c;->e:Z

    .line 79
    :cond_0
    return-void
.end method

.method public a([BII)V
    .locals 6
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 41
    if-nez p3, :cond_1

    .line 64
    :cond_0
    return-void

    .line 43
    :cond_1
    iget-boolean v1, p0, Lar/com/hjg/pngj/a/c;->e:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lar/com/hjg/pngj/a/c;->d:Z

    if-eqz v1, :cond_3

    .line 44
    :cond_2
    new-instance v1, Lar/com/hjg/pngj/PngjOutputException;

    const-string v2, "write beyond end of stream"

    invoke-direct {v1, v2}, Lar/com/hjg/pngj/PngjOutputException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 45
    :cond_3
    iget-wide v2, p0, Lar/com/hjg/pngj/a/c;->f:J

    int-to-long v4, p3

    add-long/2addr v2, v4

    iput-wide v2, p0, Lar/com/hjg/pngj/a/c;->f:J

    .line 46
    :cond_4
    :goto_0
    if-lez p3, :cond_0

    .line 47
    iget v1, p0, Lar/com/hjg/pngj/a/c;->m:I

    if-nez v1, :cond_6

    const/16 v1, 0x3e80

    if-ge p3, v1, :cond_5

    iget-wide v2, p0, Lar/com/hjg/pngj/a/c;->f:J

    iget-wide v4, p0, Lar/com/hjg/pngj/a/c;->c:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_6

    .line 49
    :cond_5
    iget-wide v2, p0, Lar/com/hjg/pngj/a/c;->g:J

    iget-object v1, p0, Lar/com/hjg/pngj/a/c;->j:Lar/com/hjg/pngj/a/e;

    invoke-virtual {v1, p1, p2, p3}, Lar/com/hjg/pngj/a/e;->a([BII)I

    move-result v1

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lar/com/hjg/pngj/a/c;->g:J

    .line 50
    const/4 p3, 0x0

    goto :goto_0

    .line 52
    :cond_6
    iget-object v1, p0, Lar/com/hjg/pngj/a/c;->k:[B

    if-nez v1, :cond_7

    .line 53
    iget v1, p0, Lar/com/hjg/pngj/a/c;->l:I

    new-array v1, v1, [B

    iput-object v1, p0, Lar/com/hjg/pngj/a/c;->k:[B

    .line 54
    :cond_7
    iget v1, p0, Lar/com/hjg/pngj/a/c;->m:I

    add-int/2addr v1, p3

    iget v2, p0, Lar/com/hjg/pngj/a/c;->l:I

    if-gt v1, v2, :cond_9

    move v0, p3

    .line 55
    .local v0, "len1":I
    :goto_1
    if-lez v0, :cond_8

    .line 56
    iget-object v1, p0, Lar/com/hjg/pngj/a/c;->k:[B

    iget v2, p0, Lar/com/hjg/pngj/a/c;->m:I

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 57
    :cond_8
    iget v1, p0, Lar/com/hjg/pngj/a/c;->m:I

    add-int/2addr v1, v0

    iput v1, p0, Lar/com/hjg/pngj/a/c;->m:I

    .line 58
    sub-int/2addr p3, v0

    .line 59
    add-int/2addr p2, v0

    .line 60
    iget v1, p0, Lar/com/hjg/pngj/a/c;->m:I

    iget v2, p0, Lar/com/hjg/pngj/a/c;->l:I

    if-ne v1, v2, :cond_4

    .line 61
    invoke-virtual {p0}, Lar/com/hjg/pngj/a/c;->i()V

    goto :goto_0

    .line 54
    .end local v0    # "len1":I
    :cond_9
    iget v1, p0, Lar/com/hjg/pngj/a/c;->l:I

    iget v2, p0, Lar/com/hjg/pngj/a/c;->m:I

    sub-int v0, v1, v2

    goto :goto_1
.end method

.method public close()V
    .locals 1

    .prologue
    .line 83
    invoke-virtual {p0}, Lar/com/hjg/pngj/a/c;->a()V

    .line 84
    iget-boolean v0, p0, Lar/com/hjg/pngj/a/c;->d:Z

    if-nez v0, :cond_0

    .line 85
    invoke-super {p0}, Lar/com/hjg/pngj/a/a;->close()V

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lar/com/hjg/pngj/a/c;->k:[B

    .line 88
    :cond_0
    return-void
.end method

.method public h()V
    .locals 0

    .prologue
    .line 91
    invoke-super {p0}, Lar/com/hjg/pngj/a/a;->h()V

    .line 92
    return-void
.end method

.method i()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 67
    iget v0, p0, Lar/com/hjg/pngj/a/c;->m:I

    if-lez v0, :cond_0

    .line 68
    iget-wide v0, p0, Lar/com/hjg/pngj/a/c;->g:J

    iget-object v2, p0, Lar/com/hjg/pngj/a/c;->j:Lar/com/hjg/pngj/a/e;

    iget-object v3, p0, Lar/com/hjg/pngj/a/c;->k:[B

    iget v4, p0, Lar/com/hjg/pngj/a/c;->m:I

    invoke-virtual {v2, v3, v5, v4}, Lar/com/hjg/pngj/a/e;->a([BII)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lar/com/hjg/pngj/a/c;->g:J

    .line 69
    iput v5, p0, Lar/com/hjg/pngj/a/c;->m:I

    .line 71
    :cond_0
    return-void
.end method
