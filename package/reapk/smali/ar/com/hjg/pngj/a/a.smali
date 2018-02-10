.class public abstract Lar/com/hjg/pngj/a/a;
.super Ljava/io/OutputStream;
.source "SourceFile"


# instance fields
.field protected a:Lar/com/hjg/pngj/k;

.field public final b:I

.field public final c:J

.field d:Z

.field protected e:Z

.field protected f:J

.field protected g:J

.field protected h:I

.field protected i:Z

.field private j:[B


# direct methods
.method public constructor <init>(Lar/com/hjg/pngj/k;IJ)V
    .locals 5
    .param p1, "idatCw"    # Lar/com/hjg/pngj/k;
    .param p2, "blockLen"    # I
    .param p3, "totalbytes"    # J

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 46
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 30
    iput-boolean v1, p0, Lar/com/hjg/pngj/a/a;->d:Z

    .line 31
    iput-boolean v1, p0, Lar/com/hjg/pngj/a/a;->e:Z

    .line 32
    iput-wide v2, p0, Lar/com/hjg/pngj/a/a;->f:J

    .line 33
    iput-wide v2, p0, Lar/com/hjg/pngj/a/a;->g:J

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Lar/com/hjg/pngj/a/a;->h:I

    .line 38
    iput-boolean v1, p0, Lar/com/hjg/pngj/a/a;->i:Z

    .line 47
    iput-object p1, p0, Lar/com/hjg/pngj/a/a;->a:Lar/com/hjg/pngj/k;

    .line 48
    if-gez p2, :cond_0

    .line 49
    const/16 p2, 0x1000

    .line 50
    :cond_0
    cmp-long v0, p3, v2

    if-gez v0, :cond_1

    .line 51
    const-wide p3, 0x7fffffffffffffffL

    .line 52
    :cond_1
    const/4 v0, 0x1

    if-lt p2, v0, :cond_2

    const-wide/16 v0, 0x1

    cmp-long v0, p3, v0

    if-gez v0, :cond_3

    .line 53
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, " maxBlockLen or totalLen invalid"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_3
    iput p2, p0, Lar/com/hjg/pngj/a/a;->b:I

    .line 55
    iput-wide p3, p0, Lar/com/hjg/pngj/a/a;->c:J

    .line 56
    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public a(ZI)V
    .locals 1
    .param p1, "storeFirstByte"    # Z
    .param p2, "nblocks"    # I

    .prologue
    .line 138
    iput-boolean p1, p0, Lar/com/hjg/pngj/a/a;->i:Z

    .line 139
    iget-boolean v0, p0, Lar/com/hjg/pngj/a/a;->i:Z

    if-eqz v0, :cond_2

    .line 140
    iget-object v0, p0, Lar/com/hjg/pngj/a/a;->j:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lar/com/hjg/pngj/a/a;->j:[B

    array-length v0, v0

    if-ge v0, p2, :cond_1

    .line 141
    :cond_0
    new-array v0, p2, [B

    iput-object v0, p0, Lar/com/hjg/pngj/a/a;->j:[B

    .line 144
    :cond_1
    :goto_0
    return-void

    .line 143
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lar/com/hjg/pngj/a/a;->j:[B

    goto :goto_0
.end method

.method public abstract a([BII)V
.end method

.method public final b()D
    .locals 4

    .prologue
    .line 108
    iget-wide v0, p0, Lar/com/hjg/pngj/a/a;->g:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lar/com/hjg/pngj/a/a;->g:J

    long-to-double v0, v0

    iget-wide v2, p0, Lar/com/hjg/pngj/a/a;->f:J

    long-to-double v2, v2

    div-double/2addr v0, v2

    goto :goto_0
.end method

.method public final c()J
    .locals 2

    .prologue
    .line 115
    iget-wide v0, p0, Lar/com/hjg/pngj/a/a;->f:J

    return-wide v0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 61
    invoke-virtual {p0}, Lar/com/hjg/pngj/a/a;->a()V

    .line 62
    iget-object v0, p0, Lar/com/hjg/pngj/a/a;->a:Lar/com/hjg/pngj/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lar/com/hjg/pngj/a/a;->a:Lar/com/hjg/pngj/k;

    invoke-virtual {v0}, Lar/com/hjg/pngj/k;->g()V

    .line 63
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lar/com/hjg/pngj/a/a;->d:Z

    .line 64
    return-void
.end method

.method public final d()J
    .locals 2

    .prologue
    .line 122
    iget-wide v0, p0, Lar/com/hjg/pngj/a/a;->g:J

    return-wide v0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 126
    iget-boolean v0, p0, Lar/com/hjg/pngj/a/a;->d:Z

    return v0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 130
    iget-boolean v0, p0, Lar/com/hjg/pngj/a/a;->e:Z

    return v0
.end method

.method public g()[B
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lar/com/hjg/pngj/a/a;->j:[B

    return-object v0
.end method

.method public h()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 147
    invoke-virtual {p0}, Lar/com/hjg/pngj/a/a;->a()V

    .line 148
    iput-wide v0, p0, Lar/com/hjg/pngj/a/a;->f:J

    .line 149
    iput-wide v0, p0, Lar/com/hjg/pngj/a/a;->g:J

    .line 150
    const/4 v0, -0x1

    iput v0, p0, Lar/com/hjg/pngj/a/a;->h:I

    .line 151
    const/4 v0, 0x0

    iput-boolean v0, p0, Lar/com/hjg/pngj/a/a;->e:Z

    .line 152
    return-void
.end method

.method public write(I)V
    .locals 3
    .param p1, "i"    # I

    .prologue
    .line 156
    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    invoke-virtual {p0, v0}, Lar/com/hjg/pngj/a/a;->write([B)V

    .line 157
    return-void
.end method

.method public final write([B)V
    .locals 2
    .param p1, "data"    # [B

    .prologue
    .line 74
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lar/com/hjg/pngj/a/a;->write([BII)V

    .line 75
    return-void
.end method

.method public final write([BII)V
    .locals 4
    .param p1, "data"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 79
    iget v0, p0, Lar/com/hjg/pngj/a/a;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lar/com/hjg/pngj/a/a;->h:I

    .line 80
    iget v0, p0, Lar/com/hjg/pngj/a/a;->b:I

    if-gt p3, v0, :cond_2

    .line 81
    invoke-virtual {p0, p1, p2, p3}, Lar/com/hjg/pngj/a/a;->a([BII)V

    .line 82
    iget-boolean v0, p0, Lar/com/hjg/pngj/a/a;->i:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lar/com/hjg/pngj/a/a;->h:I

    iget-object v1, p0, Lar/com/hjg/pngj/a/a;->j:[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 83
    iget-object v0, p0, Lar/com/hjg/pngj/a/a;->j:[B

    iget v1, p0, Lar/com/hjg/pngj/a/a;->h:I

    aget-byte v2, p1, p2

    aput-byte v2, v0, v1

    .line 92
    :cond_0
    iget-wide v0, p0, Lar/com/hjg/pngj/a/a;->f:J

    iget-wide v2, p0, Lar/com/hjg/pngj/a/a;->c:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 93
    invoke-virtual {p0}, Lar/com/hjg/pngj/a/a;->a()V

    .line 95
    :cond_1
    return-void

    .line 86
    :cond_2
    :goto_0
    if-lez p3, :cond_0

    .line 87
    iget v0, p0, Lar/com/hjg/pngj/a/a;->b:I

    invoke-virtual {p0, p1, p2, v0}, Lar/com/hjg/pngj/a/a;->a([BII)V

    .line 88
    iget v0, p0, Lar/com/hjg/pngj/a/a;->b:I

    add-int/2addr p2, v0

    .line 89
    iget v0, p0, Lar/com/hjg/pngj/a/a;->b:I

    sub-int/2addr p3, v0

    goto :goto_0
.end method
