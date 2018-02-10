.class public Lar/com/hjg/pngj/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final h:I = 0x2000


# instance fields
.field private a:Ljava/io/InputStream;

.field private b:[B

.field private c:I

.field private d:I

.field private e:Z

.field private f:Z

.field private g:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "is"    # Ljava/io/InputStream;

    .prologue
    .line 24
    const/16 v0, 0x2000

    invoke-direct {p0, p1, v0}, Lar/com/hjg/pngj/a;-><init>(Ljava/io/InputStream;I)V

    .line 25
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 2
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "bufsize"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean v0, p0, Lar/com/hjg/pngj/a;->e:Z

    .line 17
    iput-boolean v1, p0, Lar/com/hjg/pngj/a;->f:Z

    .line 18
    iput-boolean v0, p0, Lar/com/hjg/pngj/a;->g:Z

    .line 28
    iput-object p1, p0, Lar/com/hjg/pngj/a;->a:Ljava/io/InputStream;

    .line 29
    if-ge p2, v1, :cond_0

    const/16 p2, 0x2000

    .end local p2    # "bufsize":I
    :cond_0
    new-array v0, p2, [B

    iput-object v0, p0, Lar/com/hjg/pngj/a;->b:[B

    .line 30
    return-void
.end method


# virtual methods
.method public a(Lar/com/hjg/pngj/i;)I
    .locals 1
    .param p1, "consumer"    # Lar/com/hjg/pngj/i;

    .prologue
    .line 47
    const v0, 0x7fffffff

    invoke-virtual {p0, p1, v0}, Lar/com/hjg/pngj/a;->a(Lar/com/hjg/pngj/i;I)I

    move-result v0

    return v0
.end method

.method public a(Lar/com/hjg/pngj/i;I)I
    .locals 4
    .param p1, "consumer"    # Lar/com/hjg/pngj/i;
    .param p2, "maxbytes"    # I

    .prologue
    .line 56
    iget v2, p0, Lar/com/hjg/pngj/a;->c:I

    if-nez v2, :cond_0

    .line 57
    invoke-virtual {p0}, Lar/com/hjg/pngj/a;->b()V

    .line 58
    :cond_0
    if-ltz p2, :cond_2

    iget v2, p0, Lar/com/hjg/pngj/a;->c:I

    if-ge p2, v2, :cond_2

    move v1, p2

    .line 59
    .local v1, "tofeed":I
    :goto_0
    const/4 v0, 0x0

    .line 60
    .local v0, "n":I
    if-lez v1, :cond_1

    .line 61
    iget-object v2, p0, Lar/com/hjg/pngj/a;->b:[B

    iget v3, p0, Lar/com/hjg/pngj/a;->d:I

    invoke-interface {p1, v2, v3, v1}, Lar/com/hjg/pngj/i;->a([BII)I

    move-result v0

    .line 62
    if-lez v0, :cond_1

    .line 63
    iget v2, p0, Lar/com/hjg/pngj/a;->d:I

    add-int/2addr v2, v0

    iput v2, p0, Lar/com/hjg/pngj/a;->d:I

    .line 64
    iget v2, p0, Lar/com/hjg/pngj/a;->c:I

    sub-int/2addr v2, v0

    iput v2, p0, Lar/com/hjg/pngj/a;->c:I

    .line 67
    :cond_1
    const/4 v2, 0x1

    if-ge v0, v2, :cond_3

    iget-boolean v2, p0, Lar/com/hjg/pngj/a;->g:Z

    if-eqz v2, :cond_3

    .line 68
    new-instance v2, Lar/com/hjg/pngj/PngjInputException;

    const-string v3, "Failed to feed bytes (premature ending?)"

    invoke-direct {v2, v3}, Lar/com/hjg/pngj/PngjInputException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 58
    .end local v0    # "n":I
    .end local v1    # "tofeed":I
    :cond_2
    iget v1, p0, Lar/com/hjg/pngj/a;->c:I

    goto :goto_0

    .line 69
    .restart local v0    # "n":I
    .restart local v1    # "tofeed":I
    :cond_3
    return v0
.end method

.method public a()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lar/com/hjg/pngj/a;->a:Ljava/io/InputStream;

    return-object v0
.end method

.method public a(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "is"    # Ljava/io/InputStream;

    .prologue
    .line 179
    iput-object p1, p0, Lar/com/hjg/pngj/a;->a:Ljava/io/InputStream;

    .line 180
    const/4 v0, 0x0

    iput-boolean v0, p0, Lar/com/hjg/pngj/a;->e:Z

    .line 181
    return-void
.end method

.method public a(Z)V
    .locals 0
    .param p1, "closeStream"    # Z

    .prologue
    .line 145
    iput-boolean p1, p0, Lar/com/hjg/pngj/a;->f:Z

    .line 146
    return-void
.end method

.method public b(Lar/com/hjg/pngj/i;)J
    .locals 6
    .param p1, "consumer"    # Lar/com/hjg/pngj/i;

    .prologue
    .line 80
    const-wide/16 v0, 0x0

    .line 81
    .local v0, "n":J
    :goto_0
    invoke-virtual {p0}, Lar/com/hjg/pngj/a;->c()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 82
    invoke-virtual {p0, p1}, Lar/com/hjg/pngj/a;->a(Lar/com/hjg/pngj/i;)I

    move-result v2

    .line 83
    .local v2, "n1":I
    const/4 v3, 0x1

    if-ge v2, v3, :cond_1

    .line 87
    .end local v2    # "n1":I
    :cond_0
    return-wide v0

    .line 85
    .restart local v2    # "n1":I
    :cond_1
    int-to-long v4, v2

    add-long/2addr v0, v4

    .line 86
    goto :goto_0
.end method

.method protected b()V
    .locals 3

    .prologue
    .line 113
    iget v1, p0, Lar/com/hjg/pngj/a;->c:I

    if-gtz v1, :cond_0

    iget-boolean v1, p0, Lar/com/hjg/pngj/a;->e:Z

    if-eqz v1, :cond_1

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 117
    :cond_1
    const/4 v1, 0x0

    :try_start_0
    iput v1, p0, Lar/com/hjg/pngj/a;->d:I

    .line 118
    iget-object v1, p0, Lar/com/hjg/pngj/a;->a:Ljava/io/InputStream;

    iget-object v2, p0, Lar/com/hjg/pngj/a;->b:[B

    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v1

    iput v1, p0, Lar/com/hjg/pngj/a;->c:I

    .line 119
    iget v1, p0, Lar/com/hjg/pngj/a;->c:I

    if-gez v1, :cond_0

    .line 120
    invoke-virtual {p0}, Lar/com/hjg/pngj/a;->d()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 124
    :catch_0
    move-exception v0

    .line 125
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lar/com/hjg/pngj/PngjInputException;

    invoke-direct {v1, v0}, Lar/com/hjg/pngj/PngjInputException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public b(Z)V
    .locals 0
    .param p1, "failIfNoFeed"    # Z

    .prologue
    .line 197
    iput-boolean p1, p0, Lar/com/hjg/pngj/a;->g:Z

    .line 198
    return-void
.end method

.method public b(Lar/com/hjg/pngj/i;I)Z
    .locals 3
    .param p1, "consumer"    # Lar/com/hjg/pngj/i;
    .param p2, "nbytes"    # I

    .prologue
    const/4 v2, 0x1

    .line 99
    move v1, p2

    .line 100
    .local v1, "remain":I
    :goto_0
    if-lez v1, :cond_0

    .line 101
    invoke-virtual {p0, p1, v1}, Lar/com/hjg/pngj/a;->a(Lar/com/hjg/pngj/i;I)I

    move-result v0

    .line 102
    .local v0, "n":I
    if-ge v0, v2, :cond_1

    .line 103
    const/4 v2, 0x0

    .line 106
    .end local v0    # "n":I
    :cond_0
    return v2

    .line 104
    .restart local v0    # "n":I
    :cond_1
    sub-int/2addr v1, v0

    .line 105
    goto :goto_0
.end method

.method public c()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 134
    iget-boolean v2, p0, Lar/com/hjg/pngj/a;->e:Z

    if-eqz v2, :cond_2

    .line 135
    iget v2, p0, Lar/com/hjg/pngj/a;->c:I

    if-lez v2, :cond_1

    .line 138
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 135
    goto :goto_0

    .line 137
    :cond_2
    invoke-virtual {p0}, Lar/com/hjg/pngj/a;->b()V

    .line 138
    iget v2, p0, Lar/com/hjg/pngj/a;->c:I

    if-gtz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public d()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 158
    const/4 v0, 0x1

    iput-boolean v0, p0, Lar/com/hjg/pngj/a;->e:Z

    .line 159
    iput-object v2, p0, Lar/com/hjg/pngj/a;->b:[B

    .line 160
    iput v1, p0, Lar/com/hjg/pngj/a;->c:I

    .line 161
    iput v1, p0, Lar/com/hjg/pngj/a;->d:I

    .line 162
    iget-object v0, p0, Lar/com/hjg/pngj/a;->a:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lar/com/hjg/pngj/a;->f:Z

    if-eqz v0, :cond_0

    .line 164
    :try_start_0
    iget-object v0, p0, Lar/com/hjg/pngj/a;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    :cond_0
    :goto_0
    iput-object v2, p0, Lar/com/hjg/pngj/a;->a:Ljava/io/InputStream;

    .line 170
    return-void

    .line 165
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 187
    iget-boolean v0, p0, Lar/com/hjg/pngj/a;->e:Z

    return v0
.end method
