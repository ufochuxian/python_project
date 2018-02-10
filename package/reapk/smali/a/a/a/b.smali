.class public La/a/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public A:I

.field B:I

.field C:I

.field public D:I

.field public t:[B

.field u:Ljava/io/InputStream;

.field v:I

.field w:Z

.field x:I

.field public y:I

.field public z:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 86
    iput v0, p0, La/a/a/b;->y:I

    .line 87
    iput v0, p0, La/a/a/b;->A:I

    .line 88
    iput v0, p0, La/a/a/b;->D:I

    .line 89
    iput-boolean v0, p0, La/a/a/b;->w:Z

    .line 90
    invoke-virtual {p0}, La/a/a/b;->e()V

    .line 91
    return-void
.end method

.method public a(III)V
    .locals 2
    .param p1, "keepSizeBefore"    # I
    .param p2, "keepSizeAfter"    # I
    .param p3, "keepSizeReserv"    # I

    .prologue
    .line 69
    iput p1, p0, La/a/a/b;->B:I

    .line 70
    iput p2, p0, La/a/a/b;->C:I

    .line 71
    add-int v1, p1, p2

    add-int v0, v1, p3

    .line 72
    .local v0, "blockSize":I
    iget-object v1, p0, La/a/a/b;->t:[B

    if-eqz v1, :cond_0

    iget v1, p0, La/a/a/b;->z:I

    if-eq v1, v0, :cond_1

    .line 74
    :cond_0
    invoke-virtual {p0}, La/a/a/b;->f()V

    .line 75
    iput v0, p0, La/a/a/b;->z:I

    .line 76
    iget v1, p0, La/a/a/b;->z:I

    new-array v1, v1, [B

    iput-object v1, p0, La/a/a/b;->t:[B

    .line 78
    :cond_1
    iget v1, p0, La/a/a/b;->z:I

    sub-int/2addr v1, p2

    iput v1, p0, La/a/a/b;->x:I

    .line 79
    return-void
.end method

.method public a(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "stream"    # Ljava/io/InputStream;

    .prologue
    .line 81
    iput-object p1, p0, La/a/a/b;->u:Ljava/io/InputStream;

    return-void
.end method

.method public b(III)I
    .locals 5
    .param p1, "index"    # I
    .param p2, "distance"    # I
    .param p3, "limit"    # I

    .prologue
    .line 110
    iget-boolean v2, p0, La/a/a/b;->w:Z

    if-eqz v2, :cond_0

    .line 111
    iget v2, p0, La/a/a/b;->A:I

    add-int/2addr v2, p1

    add-int/2addr v2, p3

    iget v3, p0, La/a/a/b;->D:I

    if-le v2, v3, :cond_0

    .line 112
    iget v2, p0, La/a/a/b;->D:I

    iget v3, p0, La/a/a/b;->A:I

    add-int/2addr v3, p1

    sub-int p3, v2, v3

    .line 113
    :cond_0
    add-int/lit8 p2, p2, 0x1

    .line 115
    iget v2, p0, La/a/a/b;->y:I

    iget v3, p0, La/a/a/b;->A:I

    add-int/2addr v2, v3

    add-int v1, v2, p1

    .line 118
    .local v1, "pby":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_1

    iget-object v2, p0, La/a/a/b;->t:[B

    add-int v3, v1, v0

    aget-byte v2, v2, v3

    iget-object v3, p0, La/a/a/b;->t:[B

    add-int v4, v1, v0

    sub-int/2addr v4, p2

    aget-byte v3, v3, v4

    if-ne v2, v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 119
    :cond_1
    return v0
.end method

.method public b()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 95
    iget v1, p0, La/a/a/b;->A:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, La/a/a/b;->A:I

    .line 96
    iget v1, p0, La/a/a/b;->A:I

    iget v2, p0, La/a/a/b;->v:I

    if-le v1, v2, :cond_1

    .line 98
    iget v1, p0, La/a/a/b;->y:I

    iget v2, p0, La/a/a/b;->A:I

    add-int v0, v1, v2

    .line 99
    .local v0, "pointerToPostion":I
    iget v1, p0, La/a/a/b;->x:I

    if-le v0, v1, :cond_0

    .line 100
    invoke-virtual {p0}, La/a/a/b;->d()V

    .line 101
    :cond_0
    invoke-virtual {p0}, La/a/a/b;->e()V

    .line 103
    .end local v0    # "pointerToPostion":I
    :cond_1
    return-void
.end method

.method public d(I)B
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 105
    iget-object v0, p0, La/a/a/b;->t:[B

    iget v1, p0, La/a/a/b;->y:I

    iget v2, p0, La/a/a/b;->A:I

    add-int/2addr v1, v2

    add-int/2addr v1, p1

    aget-byte v0, v0, v1

    return v0
.end method

.method public d()V
    .locals 6

    .prologue
    .line 26
    iget v3, p0, La/a/a/b;->y:I

    iget v4, p0, La/a/a/b;->A:I

    add-int/2addr v3, v4

    iget v4, p0, La/a/a/b;->B:I

    sub-int v2, v3, v4

    .line 28
    .local v2, "offset":I
    if-lez v2, :cond_0

    .line 29
    add-int/lit8 v2, v2, -0x1

    .line 31
    :cond_0
    iget v3, p0, La/a/a/b;->y:I

    iget v4, p0, La/a/a/b;->D:I

    add-int/2addr v3, v4

    sub-int v1, v3, v2

    .line 34
    .local v1, "numBytes":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 35
    iget-object v3, p0, La/a/a/b;->t:[B

    iget-object v4, p0, La/a/a/b;->t:[B

    add-int v5, v2, v0

    aget-byte v4, v4, v5

    aput-byte v4, v3, v0

    .line 34
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 36
    :cond_1
    iget v3, p0, La/a/a/b;->y:I

    sub-int/2addr v3, v2

    iput v3, p0, La/a/a/b;->y:I

    .line 37
    return-void
.end method

.method public e()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 41
    iget-boolean v3, p0, La/a/a/b;->w:Z

    if-eqz v3, :cond_2

    .line 57
    :cond_0
    :goto_0
    return-void

    .line 59
    .local v0, "numReadBytes":I
    .local v2, "size":I
    :cond_1
    iget v3, p0, La/a/a/b;->D:I

    add-int/2addr v3, v0

    iput v3, p0, La/a/a/b;->D:I

    .line 60
    iget v3, p0, La/a/a/b;->D:I

    iget v4, p0, La/a/a/b;->A:I

    iget v5, p0, La/a/a/b;->C:I

    add-int/2addr v4, v5

    if-lt v3, v4, :cond_2

    .line 61
    iget v3, p0, La/a/a/b;->D:I

    iget v4, p0, La/a/a/b;->C:I

    sub-int/2addr v3, v4

    iput v3, p0, La/a/a/b;->v:I

    .line 45
    .end local v0    # "numReadBytes":I
    .end local v2    # "size":I
    :cond_2
    iget v3, p0, La/a/a/b;->y:I

    rsub-int/lit8 v3, v3, 0x0

    iget v4, p0, La/a/a/b;->z:I

    add-int/2addr v3, v4

    iget v4, p0, La/a/a/b;->D:I

    sub-int v2, v3, v4

    .line 46
    .restart local v2    # "size":I
    if-eqz v2, :cond_0

    .line 48
    iget-object v3, p0, La/a/a/b;->u:Ljava/io/InputStream;

    iget-object v4, p0, La/a/a/b;->t:[B

    iget v5, p0, La/a/a/b;->y:I

    iget v6, p0, La/a/a/b;->D:I

    add-int/2addr v5, v6

    invoke-virtual {v3, v4, v5, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 49
    .restart local v0    # "numReadBytes":I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    .line 51
    iget v3, p0, La/a/a/b;->D:I

    iput v3, p0, La/a/a/b;->v:I

    .line 52
    iget v3, p0, La/a/a/b;->y:I

    iget v4, p0, La/a/a/b;->v:I

    add-int v1, v3, v4

    .line 53
    .local v1, "pointerToPostion":I
    iget v3, p0, La/a/a/b;->x:I

    if-le v1, v3, :cond_3

    .line 54
    iget v3, p0, La/a/a/b;->x:I

    iget v4, p0, La/a/a/b;->y:I

    sub-int/2addr v3, v4

    iput v3, p0, La/a/a/b;->v:I

    .line 56
    :cond_3
    const/4 v3, 0x1

    iput-boolean v3, p0, La/a/a/b;->w:Z

    goto :goto_0
.end method

.method public e(I)V
    .locals 1
    .param p1, "subValue"    # I

    .prologue
    .line 126
    iget v0, p0, La/a/a/b;->y:I

    add-int/2addr v0, p1

    iput v0, p0, La/a/a/b;->y:I

    .line 127
    iget v0, p0, La/a/a/b;->v:I

    sub-int/2addr v0, p1

    iput v0, p0, La/a/a/b;->v:I

    .line 128
    iget v0, p0, La/a/a/b;->A:I

    sub-int/2addr v0, p1

    iput v0, p0, La/a/a/b;->A:I

    .line 129
    iget v0, p0, La/a/a/b;->D:I

    sub-int/2addr v0, p1

    iput v0, p0, La/a/a/b;->D:I

    .line 130
    return-void
.end method

.method f()V
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, La/a/a/b;->t:[B

    return-void
.end method

.method public g()V
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, La/a/a/b;->u:Ljava/io/InputStream;

    return-void
.end method

.method public h()I
    .locals 2

    .prologue
    .line 122
    iget v0, p0, La/a/a/b;->D:I

    iget v1, p0, La/a/a/b;->A:I

    sub-int/2addr v0, v1

    return v0
.end method
