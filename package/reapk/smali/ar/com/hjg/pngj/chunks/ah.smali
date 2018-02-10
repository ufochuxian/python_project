.class public Lar/com/hjg/pngj/chunks/ah;
.super Lar/com/hjg/pngj/chunks/af;
.source "SourceFile"


# static fields
.field public static final h:Ljava/lang/String; = "zTXt"


# direct methods
.method public constructor <init>(Lar/com/hjg/pngj/s;)V
    .locals 1
    .param p1, "info"    # Lar/com/hjg/pngj/s;

    .prologue
    .line 19
    const-string v0, "zTXt"

    invoke-direct {p0, v0, p1}, Lar/com/hjg/pngj/chunks/af;-><init>(Ljava/lang/String;Lar/com/hjg/pngj/s;)V

    .line 20
    return-void
.end method


# virtual methods
.method public a(Lar/com/hjg/pngj/chunks/e;)V
    .locals 8
    .param p1, "c"    # Lar/com/hjg/pngj/chunks/e;

    .prologue
    const/4 v7, 0x0

    .line 44
    const/4 v2, -0x1

    .line 45
    .local v2, "nullsep":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p1, Lar/com/hjg/pngj/chunks/e;->d:[B

    array-length v4, v4

    if-ge v1, v4, :cond_1

    .line 46
    iget-object v4, p1, Lar/com/hjg/pngj/chunks/e;->d:[B

    aget-byte v4, v4, v1

    if-eqz v4, :cond_0

    .line 45
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 48
    :cond_0
    move v2, v1

    .line 51
    :cond_1
    if-ltz v2, :cond_2

    iget-object v4, p1, Lar/com/hjg/pngj/chunks/e;->d:[B

    array-length v4, v4

    add-int/lit8 v4, v4, -0x2

    if-le v2, v4, :cond_3

    .line 52
    :cond_2
    new-instance v4, Lar/com/hjg/pngj/PngjException;

    const-string v5, "bad zTXt chunk: no separator found"

    invoke-direct {v4, v5}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 53
    :cond_3
    iget-object v4, p1, Lar/com/hjg/pngj/chunks/e;->d:[B

    invoke-static {v4, v7, v2}, Lar/com/hjg/pngj/chunks/c;->a([BII)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lar/com/hjg/pngj/chunks/ah;->i:Ljava/lang/String;

    .line 54
    iget-object v4, p1, Lar/com/hjg/pngj/chunks/e;->d:[B

    add-int/lit8 v5, v2, 0x1

    aget-byte v0, v4, v5

    .line 55
    .local v0, "compmet":I
    if-eqz v0, :cond_4

    .line 56
    new-instance v4, Lar/com/hjg/pngj/PngjException;

    const-string v5, "bad zTXt chunk: unknown compression method"

    invoke-direct {v4, v5}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 57
    :cond_4
    iget-object v4, p1, Lar/com/hjg/pngj/chunks/e;->d:[B

    add-int/lit8 v5, v2, 0x2

    iget-object v6, p1, Lar/com/hjg/pngj/chunks/e;->d:[B

    array-length v6, v6

    sub-int/2addr v6, v2

    add-int/lit8 v6, v6, -0x2

    invoke-static {v4, v5, v6, v7}, Lar/com/hjg/pngj/chunks/c;->a([BIIZ)[B

    move-result-object v3

    .line 59
    .local v3, "uncomp":[B
    invoke-static {v3}, Lar/com/hjg/pngj/chunks/c;->a([B)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lar/com/hjg/pngj/chunks/ah;->j:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public c()Lar/com/hjg/pngj/chunks/e;
    .locals 7

    .prologue
    .line 24
    iget-object v5, p0, Lar/com/hjg/pngj/chunks/ah;->i:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lar/com/hjg/pngj/chunks/ah;->i:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    .line 25
    :cond_0
    new-instance v5, Lar/com/hjg/pngj/PngjException;

    const-string v6, "Text chunk key must be non empty"

    invoke-direct {v5, v6}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 27
    :cond_1
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 28
    .local v1, "ba":Ljava/io/ByteArrayOutputStream;
    iget-object v5, p0, Lar/com/hjg/pngj/chunks/ah;->i:Ljava/lang/String;

    invoke-static {v5}, Lar/com/hjg/pngj/chunks/c;->a(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 29
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 30
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 31
    iget-object v5, p0, Lar/com/hjg/pngj/chunks/ah;->j:Ljava/lang/String;

    invoke-static {v5}, Lar/com/hjg/pngj/chunks/c;->a(Ljava/lang/String;)[B

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lar/com/hjg/pngj/chunks/c;->a([BZ)[B

    move-result-object v4

    .line 32
    .local v4, "textbytes":[B
    invoke-virtual {v1, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 33
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 34
    .local v0, "b":[B
    array-length v5, v0

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lar/com/hjg/pngj/chunks/ah;->a(IZ)Lar/com/hjg/pngj/chunks/e;

    move-result-object v2

    .line 35
    .local v2, "chunk":Lar/com/hjg/pngj/chunks/e;
    iput-object v0, v2, Lar/com/hjg/pngj/chunks/e;->d:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    return-object v2

    .line 37
    .end local v0    # "b":[B
    .end local v1    # "ba":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "chunk":Lar/com/hjg/pngj/chunks/e;
    .end local v4    # "textbytes":[B
    :catch_0
    move-exception v3

    .line 38
    .local v3, "e":Ljava/io/IOException;
    new-instance v5, Lar/com/hjg/pngj/PngjException;

    invoke-direct {v5, v3}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method
