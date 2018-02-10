.class public La/a/c/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:I = -0x1000000

.field static final b:I = 0xb

.field static final c:I = 0x800

.field static final d:I = 0x5


# instance fields
.field e:I

.field f:I

.field g:Ljava/io/InputStream;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([S)V
    .locals 2
    .param p0, "probs"    # [S

    .prologue
    .line 85
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 86
    const/16 v1, 0x400

    aput-short v1, p0, v0

    .line 85
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 87
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 6
    .param p1, "numTotalBits"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 37
    const/4 v1, 0x0

    .line 38
    .local v1, "result":I
    move v0, p1

    .local v0, "i":I
    :goto_0
    if-eqz v0, :cond_1

    .line 40
    iget v3, p0, La/a/c/c;->e:I

    ushr-int/lit8 v3, v3, 0x1

    iput v3, p0, La/a/c/c;->e:I

    .line 41
    iget v3, p0, La/a/c/c;->f:I

    iget v4, p0, La/a/c/c;->e:I

    sub-int/2addr v3, v4

    ushr-int/lit8 v2, v3, 0x1f

    .line 42
    .local v2, "t":I
    iget v3, p0, La/a/c/c;->f:I

    iget v4, p0, La/a/c/c;->e:I

    add-int/lit8 v5, v2, -0x1

    and-int/2addr v4, v5

    sub-int/2addr v3, v4

    iput v3, p0, La/a/c/c;->f:I

    .line 43
    shl-int/lit8 v3, v1, 0x1

    rsub-int/lit8 v4, v2, 0x1

    or-int v1, v3, v4

    .line 45
    iget v3, p0, La/a/c/c;->e:I

    const/high16 v4, -0x1000000

    and-int/2addr v3, v4

    if-nez v3, :cond_0

    .line 47
    iget v3, p0, La/a/c/c;->f:I

    shl-int/lit8 v3, v3, 0x8

    iget-object v4, p0, La/a/c/c;->g:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v4

    or-int/2addr v3, v4

    iput v3, p0, La/a/c/c;->f:I

    .line 48
    iget v3, p0, La/a/c/c;->e:I

    shl-int/lit8 v3, v3, 0x8

    iput v3, p0, La/a/c/c;->e:I

    .line 38
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 51
    .end local v2    # "t":I
    :cond_1
    return v1
.end method

.method public a([SI)I
    .locals 5
    .param p1, "probs"    # [S
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/high16 v4, -0x1000000

    const/high16 v3, -0x80000000

    .line 56
    aget-short v1, p1, p2

    .line 57
    .local v1, "prob":I
    iget v2, p0, La/a/c/c;->e:I

    ushr-int/lit8 v2, v2, 0xb

    mul-int v0, v2, v1

    .line 58
    .local v0, "newBound":I
    iget v2, p0, La/a/c/c;->f:I

    xor-int/2addr v2, v3

    xor-int/2addr v3, v0

    if-ge v2, v3, :cond_1

    .line 60
    iput v0, p0, La/a/c/c;->e:I

    .line 61
    rsub-int v2, v1, 0x800

    ushr-int/lit8 v2, v2, 0x5

    add-int/2addr v2, v1

    int-to-short v2, v2

    aput-short v2, p1, p2

    .line 62
    iget v2, p0, La/a/c/c;->e:I

    and-int/2addr v2, v4

    if-nez v2, :cond_0

    .line 64
    iget v2, p0, La/a/c/c;->f:I

    shl-int/lit8 v2, v2, 0x8

    iget-object v3, p0, La/a/c/c;->g:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v3

    or-int/2addr v2, v3

    iput v2, p0, La/a/c/c;->f:I

    .line 65
    iget v2, p0, La/a/c/c;->e:I

    shl-int/lit8 v2, v2, 0x8

    iput v2, p0, La/a/c/c;->e:I

    .line 67
    :cond_0
    const/4 v2, 0x0

    .line 79
    :goto_0
    return v2

    .line 71
    :cond_1
    iget v2, p0, La/a/c/c;->e:I

    sub-int/2addr v2, v0

    iput v2, p0, La/a/c/c;->e:I

    .line 72
    iget v2, p0, La/a/c/c;->f:I

    sub-int/2addr v2, v0

    iput v2, p0, La/a/c/c;->f:I

    .line 73
    ushr-int/lit8 v2, v1, 0x5

    sub-int v2, v1, v2

    int-to-short v2, v2

    aput-short v2, p1, p2

    .line 74
    iget v2, p0, La/a/c/c;->e:I

    and-int/2addr v2, v4

    if-nez v2, :cond_2

    .line 76
    iget v2, p0, La/a/c/c;->f:I

    shl-int/lit8 v2, v2, 0x8

    iget-object v3, p0, La/a/c/c;->g:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v3

    or-int/2addr v2, v3

    iput v2, p0, La/a/c/c;->f:I

    .line 77
    iget v2, p0, La/a/c/c;->e:I

    shl-int/lit8 v2, v2, 0x8

    iput v2, p0, La/a/c/c;->e:I

    .line 79
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public final a()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, La/a/c/c;->g:Ljava/io/InputStream;

    .line 25
    return-void
.end method

.method public final a(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "stream"    # Ljava/io/InputStream;

    .prologue
    .line 19
    iput-object p1, p0, La/a/c/c;->g:Ljava/io/InputStream;

    .line 20
    return-void
.end method

.method public final b()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 29
    const/4 v1, 0x0

    iput v1, p0, La/a/c/c;->f:I

    .line 30
    const/4 v1, -0x1

    iput v1, p0, La/a/c/c;->e:I

    .line 31
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 32
    iget v1, p0, La/a/c/c;->f:I

    shl-int/lit8 v1, v1, 0x8

    iget-object v2, p0, La/a/c/c;->g:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v2

    or-int/2addr v1, v2

    iput v1, p0, La/a/c/c;->f:I

    .line 31
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 33
    :cond_0
    return-void
.end method
