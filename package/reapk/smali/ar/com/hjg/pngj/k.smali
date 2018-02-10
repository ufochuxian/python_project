.class public Lar/com/hjg/pngj/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:I = 0x8000


# instance fields
.field private final b:Ljava/io/OutputStream;

.field private final c:I

.field private d:[B

.field private e:I

.field private f:I

.field private g:J

.field private h:I


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "outputStream"    # Ljava/io/OutputStream;

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lar/com/hjg/pngj/k;-><init>(Ljava/io/OutputStream;I)V

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;I)V
    .locals 3
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .param p2, "maxChunkLength"    # I

    .prologue
    const/4 v2, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput v2, p0, Lar/com/hjg/pngj/k;->e:I

    .line 22
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lar/com/hjg/pngj/k;->g:J

    .line 23
    iput v2, p0, Lar/com/hjg/pngj/k;->h:I

    .line 30
    iput-object p1, p0, Lar/com/hjg/pngj/k;->b:Ljava/io/OutputStream;

    .line 31
    if-lez p2, :cond_0

    .end local p2    # "maxChunkLength":I
    :goto_0
    iput p2, p0, Lar/com/hjg/pngj/k;->c:I

    .line 32
    iget v0, p0, Lar/com/hjg/pngj/k;->c:I

    new-array v0, v0, [B

    iput-object v0, p0, Lar/com/hjg/pngj/k;->d:[B

    .line 33
    iget v0, p0, Lar/com/hjg/pngj/k;->c:I

    iget v1, p0, Lar/com/hjg/pngj/k;->e:I

    sub-int/2addr v0, v1

    iput v0, p0, Lar/com/hjg/pngj/k;->f:I

    .line 34
    invoke-virtual {p0}, Lar/com/hjg/pngj/k;->e()V

    .line 35
    return-void

    .line 31
    .restart local p2    # "maxChunkLength":I
    :cond_0
    const p2, 0x8000

    goto :goto_0
.end method

.method public constructor <init>(Ljava/io/OutputStream;[B)V
    .locals 3
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .param p2, "b"    # [B

    .prologue
    const/4 v2, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput v2, p0, Lar/com/hjg/pngj/k;->e:I

    .line 22
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lar/com/hjg/pngj/k;->g:J

    .line 23
    iput v2, p0, Lar/com/hjg/pngj/k;->h:I

    .line 38
    iput-object p1, p0, Lar/com/hjg/pngj/k;->b:Ljava/io/OutputStream;

    .line 39
    if-eqz p2, :cond_0

    move-object v0, p2

    :goto_0
    iput-object v0, p0, Lar/com/hjg/pngj/k;->d:[B

    .line 40
    array-length v0, p2

    iput v0, p0, Lar/com/hjg/pngj/k;->c:I

    .line 41
    iget v0, p0, Lar/com/hjg/pngj/k;->c:I

    iget v1, p0, Lar/com/hjg/pngj/k;->e:I

    sub-int/2addr v0, v1

    iput v0, p0, Lar/com/hjg/pngj/k;->f:I

    .line 42
    invoke-virtual {p0}, Lar/com/hjg/pngj/k;->e()V

    .line 43
    return-void

    .line 39
    :cond_0
    const v0, 0x8000

    new-array v0, v0, [B

    goto :goto_0
.end method


# virtual methods
.method public a(I)V
    .locals 2
    .param p1, "n"    # I

    .prologue
    .line 77
    iget v0, p0, Lar/com/hjg/pngj/k;->e:I

    add-int/2addr v0, p1

    iput v0, p0, Lar/com/hjg/pngj/k;->e:I

    .line 78
    iget v0, p0, Lar/com/hjg/pngj/k;->f:I

    sub-int/2addr v0, p1

    iput v0, p0, Lar/com/hjg/pngj/k;->f:I

    .line 79
    iget v0, p0, Lar/com/hjg/pngj/k;->f:I

    if-gez v0, :cond_0

    .line 80
    new-instance v0, Lar/com/hjg/pngj/PngjOutputException;

    const-string v1, "Anomalous situation"

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjOutputException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_0
    iget v0, p0, Lar/com/hjg/pngj/k;->f:I

    if-nez v0, :cond_1

    .line 82
    invoke-virtual {p0}, Lar/com/hjg/pngj/k;->b()V

    .line 84
    :cond_1
    return-void
.end method

.method public a([BII)V
    .locals 3
    .param p1, "b"    # [B
    .param p2, "o"    # I
    .param p3, "len"    # I

    .prologue
    .line 90
    :goto_0
    if-lez p3, :cond_1

    .line 91
    iget v1, p0, Lar/com/hjg/pngj/k;->f:I

    if-gt p3, v1, :cond_0

    move v0, p3

    .line 92
    .local v0, "n":I
    :goto_1
    iget-object v1, p0, Lar/com/hjg/pngj/k;->d:[B

    iget v2, p0, Lar/com/hjg/pngj/k;->e:I

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 93
    invoke-virtual {p0, v0}, Lar/com/hjg/pngj/k;->a(I)V

    .line 94
    sub-int/2addr p3, v0

    .line 95
    add-int/2addr p2, v0

    .line 96
    goto :goto_0

    .line 91
    .end local v0    # "n":I
    :cond_0
    iget v0, p0, Lar/com/hjg/pngj/k;->f:I

    goto :goto_1

    .line 97
    :cond_1
    return-void
.end method

.method protected a()[B
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lar/com/hjg/pngj/chunks/c;->u:[B

    return-object v0
.end method

.method public final b()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 55
    iget v1, p0, Lar/com/hjg/pngj/k;->e:I

    if-lez v1, :cond_0

    iget v1, p0, Lar/com/hjg/pngj/k;->e:I

    invoke-virtual {p0}, Lar/com/hjg/pngj/k;->f()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 56
    new-instance v0, Lar/com/hjg/pngj/chunks/e;

    iget v1, p0, Lar/com/hjg/pngj/k;->e:I

    invoke-virtual {p0}, Lar/com/hjg/pngj/k;->a()[B

    move-result-object v2

    invoke-direct {v0, v1, v2, v6}, Lar/com/hjg/pngj/chunks/e;-><init>(I[BZ)V

    .line 57
    .local v0, "c":Lar/com/hjg/pngj/chunks/e;
    iget-object v1, p0, Lar/com/hjg/pngj/k;->d:[B

    iput-object v1, v0, Lar/com/hjg/pngj/chunks/e;->d:[B

    .line 58
    iget-object v1, p0, Lar/com/hjg/pngj/k;->b:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Lar/com/hjg/pngj/chunks/e;->a(Ljava/io/OutputStream;)V

    .line 59
    iget-wide v2, p0, Lar/com/hjg/pngj/k;->g:J

    iget v1, v0, Lar/com/hjg/pngj/chunks/e;->a:I

    add-int/lit8 v1, v1, 0xc

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lar/com/hjg/pngj/k;->g:J

    .line 60
    iget v1, p0, Lar/com/hjg/pngj/k;->h:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lar/com/hjg/pngj/k;->h:I

    .line 61
    iput v6, p0, Lar/com/hjg/pngj/k;->e:I

    .line 62
    iget v1, p0, Lar/com/hjg/pngj/k;->c:I

    iput v1, p0, Lar/com/hjg/pngj/k;->f:I

    .line 63
    invoke-virtual {p0}, Lar/com/hjg/pngj/k;->e()V

    .line 65
    .end local v0    # "c":Lar/com/hjg/pngj/chunks/e;
    :cond_0
    return-void
.end method

.method public c()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lar/com/hjg/pngj/k;->e:I

    return v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lar/com/hjg/pngj/k;->f:I

    return v0
.end method

.method protected e()V
    .locals 0

    .prologue
    .line 102
    return-void
.end method

.method protected f()I
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x1

    return v0
.end method

.method public g()V
    .locals 1

    .prologue
    .line 109
    invoke-virtual {p0}, Lar/com/hjg/pngj/k;->b()V

    .line 110
    const/4 v0, 0x0

    iput v0, p0, Lar/com/hjg/pngj/k;->e:I

    .line 111
    const/4 v0, 0x0

    iput-object v0, p0, Lar/com/hjg/pngj/k;->d:[B

    .line 112
    return-void
.end method

.method public h()[B
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lar/com/hjg/pngj/k;->d:[B

    return-object v0
.end method

.method public i()J
    .locals 2

    .prologue
    .line 123
    iget-wide v0, p0, Lar/com/hjg/pngj/k;->g:J

    return-wide v0
.end method

.method public j()I
    .locals 1

    .prologue
    .line 127
    iget v0, p0, Lar/com/hjg/pngj/k;->h:I

    return v0
.end method
