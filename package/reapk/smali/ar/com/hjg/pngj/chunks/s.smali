.class public Lar/com/hjg/pngj/chunks/s;
.super Lar/com/hjg/pngj/chunks/af;
.source "SourceFile"


# static fields
.field public static final h:Ljava/lang/String; = "iTXt"


# instance fields
.field private u:Z

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lar/com/hjg/pngj/s;)V
    .locals 1
    .param p1, "info"    # Lar/com/hjg/pngj/s;

    .prologue
    .line 23
    const-string v0, "iTXt"

    invoke-direct {p0, v0, p1}, Lar/com/hjg/pngj/chunks/af;-><init>(Ljava/lang/String;Lar/com/hjg/pngj/s;)V

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lar/com/hjg/pngj/chunks/s;->u:Z

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lar/com/hjg/pngj/chunks/s;->v:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lar/com/hjg/pngj/chunks/s;->w:Ljava/lang/String;

    .line 24
    return-void
.end method


# virtual methods
.method public a(Lar/com/hjg/pngj/chunks/e;)V
    .locals 10
    .param p1, "c"    # Lar/com/hjg/pngj/chunks/e;

    .prologue
    const/4 v9, 0x2

    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 56
    const/4 v2, 0x0

    .line 57
    .local v2, "nullsFound":I
    new-array v3, v7, [I

    .line 58
    .local v3, "nullsIdx":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p1, Lar/com/hjg/pngj/chunks/e;->d:[B

    array-length v4, v4

    if-ge v1, v4, :cond_3

    .line 59
    iget-object v4, p1, Lar/com/hjg/pngj/chunks/e;->d:[B

    aget-byte v4, v4, v1

    if-eqz v4, :cond_1

    .line 58
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 61
    :cond_1
    aput v1, v3, v2

    .line 62
    add-int/lit8 v2, v2, 0x1

    .line 63
    if-ne v2, v6, :cond_2

    .line 64
    add-int/lit8 v1, v1, 0x2

    .line 65
    :cond_2
    if-ne v2, v7, :cond_0

    .line 68
    :cond_3
    if-eq v2, v7, :cond_4

    .line 69
    new-instance v4, Lar/com/hjg/pngj/PngjException;

    const-string v5, "Bad formed PngChunkITXT chunk"

    invoke-direct {v4, v5}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 70
    :cond_4
    iget-object v4, p1, Lar/com/hjg/pngj/chunks/e;->d:[B

    aget v7, v3, v5

    invoke-static {v4, v5, v7}, Lar/com/hjg/pngj/chunks/c;->a([BII)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lar/com/hjg/pngj/chunks/s;->i:Ljava/lang/String;

    .line 71
    aget v4, v3, v5

    add-int/lit8 v1, v4, 0x1

    .line 72
    iget-object v4, p1, Lar/com/hjg/pngj/chunks/e;->d:[B

    aget-byte v4, v4, v1

    if-nez v4, :cond_5

    move v4, v5

    :goto_1
    iput-boolean v4, p0, Lar/com/hjg/pngj/chunks/s;->u:Z

    .line 73
    add-int/lit8 v1, v1, 0x1

    .line 74
    iget-boolean v4, p0, Lar/com/hjg/pngj/chunks/s;->u:Z

    if-eqz v4, :cond_6

    iget-object v4, p1, Lar/com/hjg/pngj/chunks/e;->d:[B

    aget-byte v4, v4, v1

    if-eqz v4, :cond_6

    .line 75
    new-instance v4, Lar/com/hjg/pngj/PngjException;

    const-string v5, "Bad formed PngChunkITXT chunk - bad compression method "

    invoke-direct {v4, v5}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_5
    move v4, v6

    .line 72
    goto :goto_1

    .line 76
    :cond_6
    iget-object v4, p1, Lar/com/hjg/pngj/chunks/e;->d:[B

    aget v7, v3, v6

    sub-int/2addr v7, v1

    invoke-static {v4, v1, v7}, Lar/com/hjg/pngj/chunks/c;->a([BII)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lar/com/hjg/pngj/chunks/s;->v:Ljava/lang/String;

    .line 77
    iget-object v4, p1, Lar/com/hjg/pngj/chunks/e;->d:[B

    aget v7, v3, v6

    add-int/lit8 v7, v7, 0x1

    aget v8, v3, v9

    aget v6, v3, v6

    sub-int v6, v8, v6

    add-int/lit8 v6, v6, -0x1

    invoke-static {v4, v7, v6}, Lar/com/hjg/pngj/chunks/c;->b([BII)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lar/com/hjg/pngj/chunks/s;->w:Ljava/lang/String;

    .line 79
    aget v4, v3, v9

    add-int/lit8 v1, v4, 0x1

    .line 80
    iget-boolean v4, p0, Lar/com/hjg/pngj/chunks/s;->u:Z

    if-eqz v4, :cond_7

    .line 81
    iget-object v4, p1, Lar/com/hjg/pngj/chunks/e;->d:[B

    iget-object v6, p1, Lar/com/hjg/pngj/chunks/e;->d:[B

    array-length v6, v6

    sub-int/2addr v6, v1

    invoke-static {v4, v1, v6, v5}, Lar/com/hjg/pngj/chunks/c;->a([BIIZ)[B

    move-result-object v0

    .line 82
    .local v0, "bytes":[B
    invoke-static {v0}, Lar/com/hjg/pngj/chunks/c;->b([B)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lar/com/hjg/pngj/chunks/s;->j:Ljava/lang/String;

    .line 86
    .end local v0    # "bytes":[B
    :goto_2
    return-void

    .line 84
    :cond_7
    iget-object v4, p1, Lar/com/hjg/pngj/chunks/e;->d:[B

    iget-object v5, p1, Lar/com/hjg/pngj/chunks/e;->d:[B

    array-length v5, v5

    sub-int/2addr v5, v1

    invoke-static {v4, v1, v5}, Lar/com/hjg/pngj/chunks/c;->b([BII)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lar/com/hjg/pngj/chunks/s;->j:Ljava/lang/String;

    goto :goto_2
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .param p1, "langtag"    # Ljava/lang/String;

    .prologue
    .line 101
    iput-object p1, p0, Lar/com/hjg/pngj/chunks/s;->v:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0
    .param p1, "translatedTag"    # Ljava/lang/String;

    .prologue
    .line 109
    iput-object p1, p0, Lar/com/hjg/pngj/chunks/s;->w:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public b(Z)V
    .locals 0
    .param p1, "compressed"    # Z

    .prologue
    .line 93
    iput-boolean p1, p0, Lar/com/hjg/pngj/chunks/s;->u:Z

    .line 94
    return-void
.end method

.method public c()Lar/com/hjg/pngj/chunks/e;
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 28
    iget-object v7, p0, Lar/com/hjg/pngj/chunks/s;->i:Ljava/lang/String;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lar/com/hjg/pngj/chunks/s;->i:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_1

    .line 29
    :cond_0
    new-instance v5, Lar/com/hjg/pngj/PngjException;

    const-string v6, "Text chunk key must be non empty"

    invoke-direct {v5, v6}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 31
    :cond_1
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 32
    .local v1, "ba":Ljava/io/ByteArrayOutputStream;
    iget-object v7, p0, Lar/com/hjg/pngj/chunks/s;->i:Ljava/lang/String;

    invoke-static {v7}, Lar/com/hjg/pngj/chunks/c;->a(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 33
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 34
    iget-boolean v7, p0, Lar/com/hjg/pngj/chunks/s;->u:Z

    if-eqz v7, :cond_3

    :goto_0
    invoke-virtual {v1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 35
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 36
    iget-object v5, p0, Lar/com/hjg/pngj/chunks/s;->v:Ljava/lang/String;

    invoke-static {v5}, Lar/com/hjg/pngj/chunks/c;->a(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 37
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 38
    iget-object v5, p0, Lar/com/hjg/pngj/chunks/s;->w:Ljava/lang/String;

    invoke-static {v5}, Lar/com/hjg/pngj/chunks/c;->b(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 39
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 40
    iget-object v5, p0, Lar/com/hjg/pngj/chunks/s;->j:Ljava/lang/String;

    invoke-static {v5}, Lar/com/hjg/pngj/chunks/c;->b(Ljava/lang/String;)[B

    move-result-object v4

    .line 41
    .local v4, "textbytes":[B
    iget-boolean v5, p0, Lar/com/hjg/pngj/chunks/s;->u:Z

    if-eqz v5, :cond_2

    .line 42
    const/4 v5, 0x1

    invoke-static {v4, v5}, Lar/com/hjg/pngj/chunks/c;->a([BZ)[B

    move-result-object v4

    .line 44
    :cond_2
    invoke-virtual {v1, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 45
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 46
    .local v0, "b":[B
    array-length v5, v0

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lar/com/hjg/pngj/chunks/s;->a(IZ)Lar/com/hjg/pngj/chunks/e;

    move-result-object v2

    .line 47
    .local v2, "chunk":Lar/com/hjg/pngj/chunks/e;
    iput-object v0, v2, Lar/com/hjg/pngj/chunks/e;->d:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    return-object v2

    .end local v0    # "b":[B
    .end local v2    # "chunk":Lar/com/hjg/pngj/chunks/e;
    .end local v4    # "textbytes":[B
    :cond_3
    move v5, v6

    .line 34
    goto :goto_0

    .line 49
    .end local v1    # "ba":Ljava/io/ByteArrayOutputStream;
    :catch_0
    move-exception v3

    .line 50
    .local v3, "e":Ljava/io/IOException;
    new-instance v5, Lar/com/hjg/pngj/PngjException;

    invoke-direct {v5, v3}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method public j()Z
    .locals 1

    .prologue
    .line 89
    iget-boolean v0, p0, Lar/com/hjg/pngj/chunks/s;->u:Z

    return v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/s;->v:Ljava/lang/String;

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/s;->w:Ljava/lang/String;

    return-object v0
.end method
