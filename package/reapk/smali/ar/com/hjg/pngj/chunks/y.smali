.class public Lar/com/hjg/pngj/chunks/y;
.super Lar/com/hjg/pngj/chunks/t;
.source "SourceFile"


# static fields
.field public static final h:Ljava/lang/String; = "sPLT"


# instance fields
.field private i:Ljava/lang/String;

.field private j:I

.field private k:[I


# direct methods
.method public constructor <init>(Lar/com/hjg/pngj/s;)V
    .locals 1
    .param p1, "info"    # Lar/com/hjg/pngj/s;

    .prologue
    .line 25
    const-string v0, "sPLT"

    invoke-direct {p0, v0, p1}, Lar/com/hjg/pngj/chunks/t;-><init>(Ljava/lang/String;Lar/com/hjg/pngj/s;)V

    .line 26
    return-void
.end method


# virtual methods
.method public a(Lar/com/hjg/pngj/chunks/e;)V
    .locals 14
    .param p1, "c"    # Lar/com/hjg/pngj/chunks/e;

    .prologue
    const/16 v13, 0x8

    .line 61
    const/4 v9, -0x1

    .line 62
    .local v9, "t":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v11, p1, Lar/com/hjg/pngj/chunks/e;->d:[B

    array-length v11, v11

    if-ge v4, v11, :cond_0

    .line 63
    iget-object v11, p1, Lar/com/hjg/pngj/chunks/e;->d:[B

    aget-byte v11, v11, v4

    if-nez v11, :cond_2

    .line 64
    move v9, v4

    .line 68
    :cond_0
    if-lez v9, :cond_1

    iget-object v11, p1, Lar/com/hjg/pngj/chunks/e;->d:[B

    array-length v11, v11

    add-int/lit8 v11, v11, -0x2

    if-le v9, v11, :cond_3

    .line 69
    :cond_1
    new-instance v11, Lar/com/hjg/pngj/PngjException;

    const-string v12, "bad sPLT chunk: no separator found"

    invoke-direct {v11, v12}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 62
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 70
    :cond_3
    iget-object v11, p1, Lar/com/hjg/pngj/chunks/e;->d:[B

    const/4 v12, 0x0

    invoke-static {v11, v12, v9}, Lar/com/hjg/pngj/chunks/c;->a([BII)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lar/com/hjg/pngj/chunks/y;->i:Ljava/lang/String;

    .line 71
    iget-object v11, p1, Lar/com/hjg/pngj/chunks/e;->d:[B

    add-int/lit8 v12, v9, 0x1

    invoke-static {v11, v12}, Lar/com/hjg/pngj/x;->a([BI)I

    move-result v11

    iput v11, p0, Lar/com/hjg/pngj/chunks/y;->j:I

    .line 72
    add-int/lit8 v9, v9, 0x2

    .line 73
    iget-object v11, p1, Lar/com/hjg/pngj/chunks/e;->d:[B

    array-length v11, v11

    sub-int v12, v11, v9

    iget v11, p0, Lar/com/hjg/pngj/chunks/y;->j:I

    if-ne v11, v13, :cond_4

    const/4 v11, 0x6

    :goto_1
    div-int v7, v12, v11

    .line 74
    .local v7, "nentries":I
    mul-int/lit8 v11, v7, 0x5

    new-array v11, v11, [I

    iput-object v11, p0, Lar/com/hjg/pngj/chunks/y;->k:[I

    .line 76
    const/4 v5, 0x0

    .line 77
    .local v5, "ne":I
    const/4 v4, 0x0

    move v6, v5

    .end local v5    # "ne":I
    .local v6, "ne":I
    move v10, v9

    .end local v9    # "t":I
    .local v10, "t":I
    :goto_2
    if-ge v4, v7, :cond_6

    .line 78
    iget v11, p0, Lar/com/hjg/pngj/chunks/y;->j:I

    if-ne v11, v13, :cond_5

    .line 79
    iget-object v11, p1, Lar/com/hjg/pngj/chunks/e;->d:[B

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "t":I
    .restart local v9    # "t":I
    invoke-static {v11, v10}, Lar/com/hjg/pngj/x;->a([BI)I

    move-result v8

    .line 80
    .local v8, "r":I
    iget-object v11, p1, Lar/com/hjg/pngj/chunks/e;->d:[B

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "t":I
    .restart local v10    # "t":I
    invoke-static {v11, v9}, Lar/com/hjg/pngj/x;->a([BI)I

    move-result v3

    .line 81
    .local v3, "g":I
    iget-object v11, p1, Lar/com/hjg/pngj/chunks/e;->d:[B

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "t":I
    .restart local v9    # "t":I
    invoke-static {v11, v10}, Lar/com/hjg/pngj/x;->a([BI)I

    move-result v1

    .line 82
    .local v1, "b":I
    iget-object v11, p1, Lar/com/hjg/pngj/chunks/e;->d:[B

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "t":I
    .restart local v10    # "t":I
    invoke-static {v11, v9}, Lar/com/hjg/pngj/x;->a([BI)I

    move-result v0

    .local v0, "a":I
    move v9, v10

    .line 93
    .end local v10    # "t":I
    .restart local v9    # "t":I
    :goto_3
    iget-object v11, p1, Lar/com/hjg/pngj/chunks/e;->d:[B

    invoke-static {v11, v9}, Lar/com/hjg/pngj/x;->b([BI)I

    move-result v2

    .line 94
    .local v2, "f":I
    add-int/lit8 v9, v9, 0x2

    .line 95
    iget-object v11, p0, Lar/com/hjg/pngj/chunks/y;->k:[I

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "ne":I
    .restart local v5    # "ne":I
    aput v8, v11, v6

    .line 96
    iget-object v11, p0, Lar/com/hjg/pngj/chunks/y;->k:[I

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "ne":I
    .restart local v6    # "ne":I
    aput v3, v11, v5

    .line 97
    iget-object v11, p0, Lar/com/hjg/pngj/chunks/y;->k:[I

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "ne":I
    .restart local v5    # "ne":I
    aput v1, v11, v6

    .line 98
    iget-object v11, p0, Lar/com/hjg/pngj/chunks/y;->k:[I

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "ne":I
    .restart local v6    # "ne":I
    aput v0, v11, v5

    .line 99
    iget-object v11, p0, Lar/com/hjg/pngj/chunks/y;->k:[I

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "ne":I
    .restart local v5    # "ne":I
    aput v2, v11, v6

    .line 77
    add-int/lit8 v4, v4, 0x1

    move v6, v5

    .end local v5    # "ne":I
    .restart local v6    # "ne":I
    move v10, v9

    .end local v9    # "t":I
    .restart local v10    # "t":I
    goto :goto_2

    .line 73
    .end local v0    # "a":I
    .end local v1    # "b":I
    .end local v2    # "f":I
    .end local v3    # "g":I
    .end local v6    # "ne":I
    .end local v7    # "nentries":I
    .end local v8    # "r":I
    .end local v10    # "t":I
    .restart local v9    # "t":I
    :cond_4
    const/16 v11, 0xa

    goto :goto_1

    .line 84
    .end local v9    # "t":I
    .restart local v6    # "ne":I
    .restart local v7    # "nentries":I
    .restart local v10    # "t":I
    :cond_5
    iget-object v11, p1, Lar/com/hjg/pngj/chunks/e;->d:[B

    invoke-static {v11, v10}, Lar/com/hjg/pngj/x;->b([BI)I

    move-result v8

    .line 85
    .restart local v8    # "r":I
    add-int/lit8 v9, v10, 0x2

    .line 86
    .end local v10    # "t":I
    .restart local v9    # "t":I
    iget-object v11, p1, Lar/com/hjg/pngj/chunks/e;->d:[B

    invoke-static {v11, v9}, Lar/com/hjg/pngj/x;->b([BI)I

    move-result v3

    .line 87
    .restart local v3    # "g":I
    add-int/lit8 v9, v9, 0x2

    .line 88
    iget-object v11, p1, Lar/com/hjg/pngj/chunks/e;->d:[B

    invoke-static {v11, v9}, Lar/com/hjg/pngj/x;->b([BI)I

    move-result v1

    .line 89
    .restart local v1    # "b":I
    add-int/lit8 v9, v9, 0x2

    .line 90
    iget-object v11, p1, Lar/com/hjg/pngj/chunks/e;->d:[B

    invoke-static {v11, v9}, Lar/com/hjg/pngj/x;->b([BI)I

    move-result v0

    .line 91
    .restart local v0    # "a":I
    add-int/lit8 v9, v9, 0x2

    goto :goto_3

    .line 101
    .end local v0    # "a":I
    .end local v1    # "b":I
    .end local v3    # "g":I
    .end local v8    # "r":I
    .end local v9    # "t":I
    .restart local v10    # "t":I
    :cond_6
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .param p1, "palName"    # Ljava/lang/String;

    .prologue
    .line 112
    iput-object p1, p0, Lar/com/hjg/pngj/chunks/y;->i:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public a([I)V
    .locals 0
    .param p1, "palette"    # [I

    .prologue
    .line 128
    iput-object p1, p0, Lar/com/hjg/pngj/chunks/y;->k:[I

    .line 129
    return-void
.end method

.method public b(I)V
    .locals 0
    .param p1, "sampledepth"    # I

    .prologue
    .line 120
    iput p1, p0, Lar/com/hjg/pngj/chunks/y;->j:I

    .line 121
    return-void
.end method

.method public c()Lar/com/hjg/pngj/chunks/e;
    .locals 9

    .prologue
    .line 36
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 37
    .local v1, "ba":Ljava/io/ByteArrayOutputStream;
    iget-object v7, p0, Lar/com/hjg/pngj/chunks/y;->i:Ljava/lang/String;

    invoke-static {v7}, Lar/com/hjg/pngj/chunks/c;->a(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 38
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 39
    iget v7, p0, Lar/com/hjg/pngj/chunks/y;->j:I

    int-to-byte v7, v7

    invoke-virtual {v1, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 40
    invoke-virtual {p0}, Lar/com/hjg/pngj/chunks/y;->j()I

    move-result v6

    .line 41
    .local v6, "nentries":I
    const/4 v5, 0x0

    .local v5, "n":I
    :goto_0
    if-ge v5, v6, :cond_2

    .line 42
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    const/4 v7, 0x4

    if-ge v4, v7, :cond_1

    .line 43
    iget v7, p0, Lar/com/hjg/pngj/chunks/y;->j:I

    const/16 v8, 0x8

    if-ne v7, v8, :cond_0

    .line 44
    iget-object v7, p0, Lar/com/hjg/pngj/chunks/y;->k:[I

    mul-int/lit8 v8, v5, 0x5

    add-int/2addr v8, v4

    aget v7, v7, v8

    int-to-byte v7, v7

    invoke-static {v1, v7}, Lar/com/hjg/pngj/x;->a(Ljava/io/OutputStream;B)V

    .line 42
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 46
    :cond_0
    iget-object v7, p0, Lar/com/hjg/pngj/chunks/y;->k:[I

    mul-int/lit8 v8, v5, 0x5

    add-int/2addr v8, v4

    aget v7, v7, v8

    invoke-static {v1, v7}, Lar/com/hjg/pngj/x;->a(Ljava/io/OutputStream;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 54
    .end local v1    # "ba":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "i":I
    .end local v5    # "n":I
    .end local v6    # "nentries":I
    :catch_0
    move-exception v3

    .line 55
    .local v3, "e":Ljava/io/IOException;
    new-instance v7, Lar/com/hjg/pngj/PngjException;

    invoke-direct {v7, v3}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 48
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v1    # "ba":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "i":I
    .restart local v5    # "n":I
    .restart local v6    # "nentries":I
    :cond_1
    :try_start_1
    iget-object v7, p0, Lar/com/hjg/pngj/chunks/y;->k:[I

    mul-int/lit8 v8, v5, 0x5

    add-int/lit8 v8, v8, 0x4

    aget v7, v7, v8

    invoke-static {v1, v7}, Lar/com/hjg/pngj/x;->a(Ljava/io/OutputStream;I)V

    .line 41
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 50
    .end local v4    # "i":I
    :cond_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 51
    .local v0, "b":[B
    array-length v7, v0

    const/4 v8, 0x0

    invoke-virtual {p0, v7, v8}, Lar/com/hjg/pngj/chunks/y;->a(IZ)Lar/com/hjg/pngj/chunks/e;

    move-result-object v2

    .line 52
    .local v2, "chunk":Lar/com/hjg/pngj/chunks/e;
    iput-object v0, v2, Lar/com/hjg/pngj/chunks/e;->d:[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 53
    return-object v2
.end method

.method public i()Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;->BEFORE_IDAT:Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;

    return-object v0
.end method

.method public j()I
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/y;->k:[I

    array-length v0, v0

    div-int/lit8 v0, v0, 0x5

    return v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/y;->i:Ljava/lang/String;

    return-object v0
.end method

.method public l()I
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Lar/com/hjg/pngj/chunks/y;->j:I

    return v0
.end method

.method public m()[I
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/y;->k:[I

    return-object v0
.end method
