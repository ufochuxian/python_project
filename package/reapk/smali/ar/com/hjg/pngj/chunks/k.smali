.class public Lar/com/hjg/pngj/chunks/k;
.super Lar/com/hjg/pngj/chunks/t;
.source "SourceFile"


# static fields
.field public static final h:Ljava/lang/String; = "fcTL"

.field public static final i:B = 0x0t

.field public static final j:B = 0x1t

.field public static final k:B = 0x2t

.field public static final l:B = 0x0t

.field public static final m:B = 0x1t


# instance fields
.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:B

.field private v:B


# direct methods
.method public constructor <init>(Lar/com/hjg/pngj/s;)V
    .locals 1
    .param p1, "info"    # Lar/com/hjg/pngj/s;

    .prologue
    .line 27
    const-string v0, "fcTL"

    invoke-direct {p0, v0, p1}, Lar/com/hjg/pngj/chunks/t;-><init>(Ljava/lang/String;Lar/com/hjg/pngj/s;)V

    .line 28
    return-void
.end method


# virtual methods
.method public a(B)V
    .locals 0
    .param p1, "disposeOp"    # B

    .prologue
    .line 147
    iput-byte p1, p0, Lar/com/hjg/pngj/chunks/k;->u:B

    .line 148
    return-void
.end method

.method public a(Lar/com/hjg/pngj/chunks/e;)V
    .locals 2
    .param p1, "chunk"    # Lar/com/hjg/pngj/chunks/e;

    .prologue
    .line 66
    const/4 v0, 0x0

    .line 67
    .local v0, "off":I
    iget-object v1, p1, Lar/com/hjg/pngj/chunks/e;->d:[B

    invoke-static {v1, v0}, Lar/com/hjg/pngj/x;->c([BI)I

    move-result v1

    iput v1, p0, Lar/com/hjg/pngj/chunks/k;->n:I

    .line 68
    add-int/lit8 v0, v0, 0x4

    .line 69
    iget-object v1, p1, Lar/com/hjg/pngj/chunks/e;->d:[B

    invoke-static {v1, v0}, Lar/com/hjg/pngj/x;->c([BI)I

    move-result v1

    iput v1, p0, Lar/com/hjg/pngj/chunks/k;->o:I

    .line 70
    add-int/lit8 v0, v0, 0x4

    .line 71
    iget-object v1, p1, Lar/com/hjg/pngj/chunks/e;->d:[B

    invoke-static {v1, v0}, Lar/com/hjg/pngj/x;->c([BI)I

    move-result v1

    iput v1, p0, Lar/com/hjg/pngj/chunks/k;->p:I

    .line 72
    add-int/lit8 v0, v0, 0x4

    .line 73
    iget-object v1, p1, Lar/com/hjg/pngj/chunks/e;->d:[B

    invoke-static {v1, v0}, Lar/com/hjg/pngj/x;->c([BI)I

    move-result v1

    iput v1, p0, Lar/com/hjg/pngj/chunks/k;->q:I

    .line 74
    add-int/lit8 v0, v0, 0x4

    .line 75
    iget-object v1, p1, Lar/com/hjg/pngj/chunks/e;->d:[B

    invoke-static {v1, v0}, Lar/com/hjg/pngj/x;->c([BI)I

    move-result v1

    iput v1, p0, Lar/com/hjg/pngj/chunks/k;->r:I

    .line 76
    add-int/lit8 v0, v0, 0x4

    .line 77
    iget-object v1, p1, Lar/com/hjg/pngj/chunks/e;->d:[B

    invoke-static {v1, v0}, Lar/com/hjg/pngj/x;->b([BI)I

    move-result v1

    iput v1, p0, Lar/com/hjg/pngj/chunks/k;->s:I

    .line 78
    add-int/lit8 v0, v0, 0x2

    .line 79
    iget-object v1, p1, Lar/com/hjg/pngj/chunks/e;->d:[B

    invoke-static {v1, v0}, Lar/com/hjg/pngj/x;->b([BI)I

    move-result v1

    iput v1, p0, Lar/com/hjg/pngj/chunks/k;->t:I

    .line 80
    add-int/lit8 v0, v0, 0x2

    .line 81
    iget-object v1, p1, Lar/com/hjg/pngj/chunks/e;->d:[B

    aget-byte v1, v1, v0

    iput-byte v1, p0, Lar/com/hjg/pngj/chunks/k;->u:B

    .line 82
    add-int/lit8 v0, v0, 0x1

    .line 83
    iget-object v1, p1, Lar/com/hjg/pngj/chunks/e;->d:[B

    aget-byte v1, v1, v0

    iput-byte v1, p0, Lar/com/hjg/pngj/chunks/k;->v:B

    .line 84
    return-void
.end method

.method public b(B)V
    .locals 0
    .param p1, "blendOp"    # B

    .prologue
    .line 155
    iput-byte p1, p0, Lar/com/hjg/pngj/chunks/k;->v:B

    .line 156
    return-void
.end method

.method public b(I)V
    .locals 0
    .param p1, "seqNum"    # I

    .prologue
    .line 91
    iput p1, p0, Lar/com/hjg/pngj/chunks/k;->n:I

    .line 92
    return-void
.end method

.method public c()Lar/com/hjg/pngj/chunks/e;
    .locals 4

    .prologue
    .line 42
    const/16 v2, 0x8

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lar/com/hjg/pngj/chunks/k;->a(IZ)Lar/com/hjg/pngj/chunks/e;

    move-result-object v0

    .line 43
    .local v0, "c":Lar/com/hjg/pngj/chunks/e;
    const/4 v1, 0x0

    .line 44
    .local v1, "off":I
    iget v2, p0, Lar/com/hjg/pngj/chunks/k;->n:I

    iget-object v3, v0, Lar/com/hjg/pngj/chunks/e;->d:[B

    invoke-static {v2, v3, v1}, Lar/com/hjg/pngj/x;->b(I[BI)V

    .line 45
    add-int/lit8 v1, v1, 0x4

    .line 46
    iget v2, p0, Lar/com/hjg/pngj/chunks/k;->o:I

    iget-object v3, v0, Lar/com/hjg/pngj/chunks/e;->d:[B

    invoke-static {v2, v3, v1}, Lar/com/hjg/pngj/x;->b(I[BI)V

    .line 47
    add-int/lit8 v1, v1, 0x4

    .line 48
    iget v2, p0, Lar/com/hjg/pngj/chunks/k;->p:I

    iget-object v3, v0, Lar/com/hjg/pngj/chunks/e;->d:[B

    invoke-static {v2, v3, v1}, Lar/com/hjg/pngj/x;->b(I[BI)V

    .line 49
    add-int/lit8 v1, v1, 0x4

    .line 50
    iget v2, p0, Lar/com/hjg/pngj/chunks/k;->q:I

    iget-object v3, v0, Lar/com/hjg/pngj/chunks/e;->d:[B

    invoke-static {v2, v3, v1}, Lar/com/hjg/pngj/x;->b(I[BI)V

    .line 51
    add-int/lit8 v1, v1, 0x4

    .line 52
    iget v2, p0, Lar/com/hjg/pngj/chunks/k;->r:I

    iget-object v3, v0, Lar/com/hjg/pngj/chunks/e;->d:[B

    invoke-static {v2, v3, v1}, Lar/com/hjg/pngj/x;->b(I[BI)V

    .line 53
    add-int/lit8 v1, v1, 0x4

    .line 54
    iget v2, p0, Lar/com/hjg/pngj/chunks/k;->s:I

    iget-object v3, v0, Lar/com/hjg/pngj/chunks/e;->d:[B

    invoke-static {v2, v3, v1}, Lar/com/hjg/pngj/x;->a(I[BI)V

    .line 55
    add-int/lit8 v1, v1, 0x2

    .line 56
    iget v2, p0, Lar/com/hjg/pngj/chunks/k;->t:I

    iget-object v3, v0, Lar/com/hjg/pngj/chunks/e;->d:[B

    invoke-static {v2, v3, v1}, Lar/com/hjg/pngj/x;->a(I[BI)V

    .line 57
    add-int/lit8 v1, v1, 0x2

    .line 58
    iget-object v2, v0, Lar/com/hjg/pngj/chunks/e;->d:[B

    iget-byte v3, p0, Lar/com/hjg/pngj/chunks/k;->u:B

    aput-byte v3, v2, v1

    .line 59
    add-int/lit8 v1, v1, 0x1

    .line 60
    iget-object v2, v0, Lar/com/hjg/pngj/chunks/e;->d:[B

    iget-byte v3, p0, Lar/com/hjg/pngj/chunks/k;->v:B

    aput-byte v3, v2, v1

    .line 61
    return-object v0
.end method

.method public c(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 99
    iput p1, p0, Lar/com/hjg/pngj/chunks/k;->o:I

    .line 100
    return-void
.end method

.method public d(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 107
    iput p1, p0, Lar/com/hjg/pngj/chunks/k;->p:I

    .line 108
    return-void
.end method

.method public e(I)V
    .locals 0
    .param p1, "xOff"    # I

    .prologue
    .line 115
    iput p1, p0, Lar/com/hjg/pngj/chunks/k;->q:I

    .line 116
    return-void
.end method

.method public f(I)V
    .locals 0
    .param p1, "yOff"    # I

    .prologue
    .line 123
    iput p1, p0, Lar/com/hjg/pngj/chunks/k;->r:I

    .line 124
    return-void
.end method

.method public g(I)V
    .locals 0
    .param p1, "delayNum"    # I

    .prologue
    .line 131
    iput p1, p0, Lar/com/hjg/pngj/chunks/k;->s:I

    .line 132
    return-void
.end method

.method public h(I)V
    .locals 0
    .param p1, "delayDen"    # I

    .prologue
    .line 139
    iput p1, p0, Lar/com/hjg/pngj/chunks/k;->t:I

    .line 140
    return-void
.end method

.method public i()Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;->NONE:Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;

    return-object v0
.end method

.method public j()Lar/com/hjg/pngj/s;
    .locals 7

    .prologue
    .line 31
    new-instance v0, Lar/com/hjg/pngj/s;

    iget v1, p0, Lar/com/hjg/pngj/chunks/k;->o:I

    iget v2, p0, Lar/com/hjg/pngj/chunks/k;->p:I

    iget-object v3, p0, Lar/com/hjg/pngj/chunks/k;->e:Lar/com/hjg/pngj/s;

    iget v3, v3, Lar/com/hjg/pngj/s;->d:I

    iget-object v4, p0, Lar/com/hjg/pngj/chunks/k;->e:Lar/com/hjg/pngj/s;

    iget-boolean v4, v4, Lar/com/hjg/pngj/s;->f:Z

    iget-object v5, p0, Lar/com/hjg/pngj/chunks/k;->e:Lar/com/hjg/pngj/s;

    iget-boolean v5, v5, Lar/com/hjg/pngj/s;->g:Z

    iget-object v6, p0, Lar/com/hjg/pngj/chunks/k;->e:Lar/com/hjg/pngj/s;

    iget-boolean v6, v6, Lar/com/hjg/pngj/s;->h:Z

    invoke-direct/range {v0 .. v6}, Lar/com/hjg/pngj/s;-><init>(IIIZZZ)V

    return-object v0
.end method

.method public k()I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lar/com/hjg/pngj/chunks/k;->n:I

    return v0
.end method

.method public l()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lar/com/hjg/pngj/chunks/k;->o:I

    return v0
.end method

.method public m()I
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lar/com/hjg/pngj/chunks/k;->p:I

    return v0
.end method

.method public n()I
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lar/com/hjg/pngj/chunks/k;->q:I

    return v0
.end method

.method public o()I
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Lar/com/hjg/pngj/chunks/k;->r:I

    return v0
.end method

.method public p()I
    .locals 1

    .prologue
    .line 127
    iget v0, p0, Lar/com/hjg/pngj/chunks/k;->s:I

    return v0
.end method

.method public q()I
    .locals 1

    .prologue
    .line 135
    iget v0, p0, Lar/com/hjg/pngj/chunks/k;->t:I

    return v0
.end method

.method public r()B
    .locals 1

    .prologue
    .line 143
    iget-byte v0, p0, Lar/com/hjg/pngj/chunks/k;->u:B

    return v0
.end method

.method public s()B
    .locals 1

    .prologue
    .line 151
    iget-byte v0, p0, Lar/com/hjg/pngj/chunks/k;->v:B

    return v0
.end method
