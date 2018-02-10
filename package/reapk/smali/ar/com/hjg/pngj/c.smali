.class public Lar/com/hjg/pngj/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lar/com/hjg/pngj/i;


# static fields
.field protected static final b:I = 0x8


# instance fields
.field private a:[B

.field protected final c:Z

.field private d:I

.field private e:Z

.field private f:Z

.field private g:I

.field private h:J

.field private i:Lar/com/hjg/pngj/g;

.field private j:Lar/com/hjg/pngj/ChunkReader;

.field private k:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lar/com/hjg/pngj/c;-><init>(Z)V

    .line 45
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 4
    .param p1, "withSignature"    # Z

    .prologue
    const/4 v0, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/16 v1, 0x8

    new-array v1, v1, [B

    iput-object v1, p0, Lar/com/hjg/pngj/c;->a:[B

    .line 24
    iput v0, p0, Lar/com/hjg/pngj/c;->d:I

    .line 26
    iput-boolean v0, p0, Lar/com/hjg/pngj/c;->e:Z

    .line 27
    iput-boolean v0, p0, Lar/com/hjg/pngj/c;->f:Z

    .line 29
    iput v0, p0, Lar/com/hjg/pngj/c;->g:I

    .line 31
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lar/com/hjg/pngj/c;->h:J

    .line 51
    iput-boolean p1, p0, Lar/com/hjg/pngj/c;->c:Z

    .line 52
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lar/com/hjg/pngj/c;->e:Z

    .line 53
    return-void
.end method


# virtual methods
.method public a([BII)I
    .locals 10
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .prologue
    .line 74
    iget-boolean v6, p0, Lar/com/hjg/pngj/c;->f:Z

    if-eqz v6, :cond_1

    .line 75
    const/4 v2, -0x1

    .line 118
    :cond_0
    :goto_0
    return v2

    .line 76
    :cond_1
    if-nez p3, :cond_2

    .line 77
    const/4 v2, 0x0

    goto :goto_0

    .line 78
    :cond_2
    if-gez p3, :cond_3

    .line 79
    new-instance v6, Lar/com/hjg/pngj/PngjInputException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Bad len: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lar/com/hjg/pngj/PngjInputException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 80
    :cond_3
    const/4 v2, 0x0

    .line 81
    .local v2, "processed":I
    iget-boolean v6, p0, Lar/com/hjg/pngj/c;->e:Z

    if-eqz v6, :cond_7

    .line 82
    iget-object v6, p0, Lar/com/hjg/pngj/c;->j:Lar/com/hjg/pngj/ChunkReader;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lar/com/hjg/pngj/c;->j:Lar/com/hjg/pngj/ChunkReader;

    invoke-virtual {v6}, Lar/com/hjg/pngj/ChunkReader;->b()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 83
    :cond_4
    iget v6, p0, Lar/com/hjg/pngj/c;->d:I

    rsub-int/lit8 v4, v6, 0x8

    .line 84
    .local v4, "read0":I
    if-le v4, p3, :cond_5

    .line 85
    move v4, p3

    .line 86
    :cond_5
    iget-object v6, p0, Lar/com/hjg/pngj/c;->a:[B

    iget v7, p0, Lar/com/hjg/pngj/c;->d:I

    invoke-static {p1, p2, v6, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 87
    iget v6, p0, Lar/com/hjg/pngj/c;->d:I

    add-int/2addr v6, v4

    iput v6, p0, Lar/com/hjg/pngj/c;->d:I

    .line 88
    add-int/2addr v2, v4

    .line 89
    iget-wide v6, p0, Lar/com/hjg/pngj/c;->h:J

    int-to-long v8, v4

    add-long/2addr v6, v8

    iput-wide v6, p0, Lar/com/hjg/pngj/c;->h:J

    .line 92
    iget v6, p0, Lar/com/hjg/pngj/c;->d:I

    const/16 v7, 0x8

    if-ne v6, v7, :cond_0

    .line 93
    iget v6, p0, Lar/com/hjg/pngj/c;->g:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lar/com/hjg/pngj/c;->g:I

    .line 94
    iget-object v6, p0, Lar/com/hjg/pngj/c;->a:[B

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lar/com/hjg/pngj/x;->c([BI)I

    move-result v1

    .line 95
    .local v1, "clen":I
    iget-object v6, p0, Lar/com/hjg/pngj/c;->a:[B

    const/4 v7, 0x4

    const/4 v8, 0x4

    invoke-static {v6, v7, v8}, Lar/com/hjg/pngj/chunks/c;->a([BII)Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, "cid":Ljava/lang/String;
    iget-wide v6, p0, Lar/com/hjg/pngj/c;->h:J

    const-wide/16 v8, 0x8

    sub-long/2addr v6, v8

    invoke-virtual {p0, v1, v0, v6, v7}, Lar/com/hjg/pngj/c;->a(ILjava/lang/String;J)V

    .line 97
    const/4 v6, 0x0

    iput v6, p0, Lar/com/hjg/pngj/c;->d:I

    goto :goto_0

    .line 100
    .end local v0    # "cid":Ljava/lang/String;
    .end local v1    # "clen":I
    .end local v4    # "read0":I
    :cond_6
    iget-object v6, p0, Lar/com/hjg/pngj/c;->j:Lar/com/hjg/pngj/ChunkReader;

    invoke-virtual {v6, p1, p2, p3}, Lar/com/hjg/pngj/ChunkReader;->a([BII)I

    move-result v5

    .line 101
    .local v5, "read1":I
    add-int/2addr v2, v5

    .line 102
    iget-wide v6, p0, Lar/com/hjg/pngj/c;->h:J

    int-to-long v8, v5

    add-long/2addr v6, v8

    iput-wide v6, p0, Lar/com/hjg/pngj/c;->h:J

    goto :goto_0

    .line 105
    .end local v5    # "read1":I
    :cond_7
    iget v6, p0, Lar/com/hjg/pngj/c;->d:I

    rsub-int/lit8 v3, v6, 0x8

    .line 106
    .local v3, "read":I
    if-le v3, p3, :cond_8

    .line 107
    move v3, p3

    .line 108
    :cond_8
    iget-object v6, p0, Lar/com/hjg/pngj/c;->a:[B

    iget v7, p0, Lar/com/hjg/pngj/c;->d:I

    invoke-static {p1, p2, v6, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 109
    iget v6, p0, Lar/com/hjg/pngj/c;->d:I

    add-int/2addr v6, v3

    iput v6, p0, Lar/com/hjg/pngj/c;->d:I

    .line 110
    iget v6, p0, Lar/com/hjg/pngj/c;->d:I

    const/16 v7, 0x8

    if-ne v6, v7, :cond_9

    .line 111
    iget-object v6, p0, Lar/com/hjg/pngj/c;->a:[B

    invoke-virtual {p0, v6}, Lar/com/hjg/pngj/c;->a([B)V

    .line 112
    const/4 v6, 0x0

    iput v6, p0, Lar/com/hjg/pngj/c;->d:I

    .line 113
    const/4 v6, 0x1

    iput-boolean v6, p0, Lar/com/hjg/pngj/c;->e:Z

    .line 115
    :cond_9
    add-int/2addr v2, v3

    .line 116
    iget-wide v6, p0, Lar/com/hjg/pngj/c;->h:J

    int-to-long v8, v3

    add-long/2addr v6, v8

    iput-wide v6, p0, Lar/com/hjg/pngj/c;->h:J

    goto/16 :goto_0
.end method

.method protected a(Ljava/lang/String;IJZ)Lar/com/hjg/pngj/ChunkReader;
    .locals 7
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "len"    # I
    .param p3, "offset"    # J
    .param p5, "skip"    # Z

    .prologue
    .line 198
    new-instance v0, Lar/com/hjg/pngj/c$2;

    if-eqz p5, :cond_0

    sget-object v6, Lar/com/hjg/pngj/ChunkReader$ChunkReaderMode;->SKIP:Lar/com/hjg/pngj/ChunkReader$ChunkReaderMode;

    :goto_0
    move-object v1, p0

    move v2, p2

    move-object v3, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v6}, Lar/com/hjg/pngj/c$2;-><init>(Lar/com/hjg/pngj/c;ILjava/lang/String;JLar/com/hjg/pngj/ChunkReader$ChunkReaderMode;)V

    return-object v0

    :cond_0
    sget-object v6, Lar/com/hjg/pngj/ChunkReader$ChunkReaderMode;->BUFFER:Lar/com/hjg/pngj/ChunkReader$ChunkReaderMode;

    goto :goto_0
.end method

.method protected a(ILjava/lang/String;J)V
    .locals 17
    .param p1, "len"    # I
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "offset"    # J

    .prologue
    .line 153
    const-string v3, "IDAT"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 154
    move-object/from16 v0, p0

    iget-wide v4, v0, Lar/com/hjg/pngj/c;->k:J

    move/from16 v0, p1

    int-to-long v8, v0

    add-long/2addr v4, v8

    move-object/from16 v0, p0

    iput-wide v4, v0, Lar/com/hjg/pngj/c;->k:J

    .line 155
    :cond_0
    invoke-virtual/range {p0 .. p2}, Lar/com/hjg/pngj/c;->a(ILjava/lang/String;)Z

    move-result v7

    .line 156
    .local v7, "checkCrc":Z
    invoke-virtual/range {p0 .. p2}, Lar/com/hjg/pngj/c;->b(ILjava/lang/String;)Z

    move-result v14

    .line 157
    .local v14, "skip":Z
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lar/com/hjg/pngj/c;->a(Ljava/lang/String;)Z

    move-result v15

    .line 161
    .local v15, "isIdatType":Z
    const/4 v2, 0x0

    .line 162
    .local v2, "forCurrentIdatSet":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lar/com/hjg/pngj/c;->i:Lar/com/hjg/pngj/g;

    if-eqz v3, :cond_1

    .line 163
    move-object/from16 v0, p0

    iget-object v3, v0, Lar/com/hjg/pngj/c;->i:Lar/com/hjg/pngj/g;

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Lar/com/hjg/pngj/g;->a(Ljava/lang/String;)Z

    move-result v2

    .line 164
    :cond_1
    if-eqz v15, :cond_5

    if-nez v14, :cond_5

    .line 165
    if-nez v2, :cond_3

    .line 166
    move-object/from16 v0, p0

    iget-object v3, v0, Lar/com/hjg/pngj/c;->i:Lar/com/hjg/pngj/g;

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lar/com/hjg/pngj/c;->i:Lar/com/hjg/pngj/g;

    invoke-virtual {v3}, Lar/com/hjg/pngj/g;->g()Z

    move-result v3

    if-nez v3, :cond_2

    .line 167
    new-instance v3, Lar/com/hjg/pngj/PngjInputException;

    const-string v4, "new IDAT-like chunk when previous was not done"

    invoke-direct {v3, v4}, Lar/com/hjg/pngj/PngjInputException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 168
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lar/com/hjg/pngj/c;->b(Ljava/lang/String;)Lar/com/hjg/pngj/g;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lar/com/hjg/pngj/c;->i:Lar/com/hjg/pngj/g;

    .line 170
    :cond_3
    new-instance v3, Lar/com/hjg/pngj/c$1;

    move-object/from16 v0, p0

    iget-object v10, v0, Lar/com/hjg/pngj/c;->i:Lar/com/hjg/pngj/g;

    move-object/from16 v4, p0

    move/from16 v5, p1

    move-object/from16 v6, p2

    move-wide/from16 v8, p3

    invoke-direct/range {v3 .. v10}, Lar/com/hjg/pngj/c$1;-><init>(Lar/com/hjg/pngj/c;ILjava/lang/String;ZJLar/com/hjg/pngj/g;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lar/com/hjg/pngj/c;->j:Lar/com/hjg/pngj/ChunkReader;

    .line 183
    :cond_4
    :goto_0
    return-void

    :cond_5
    move-object/from16 v9, p0

    move-object/from16 v10, p2

    move/from16 v11, p1

    move-wide/from16 v12, p3

    .line 179
    invoke-virtual/range {v9 .. v14}, Lar/com/hjg/pngj/c;->a(Ljava/lang/String;IJZ)Lar/com/hjg/pngj/ChunkReader;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lar/com/hjg/pngj/c;->j:Lar/com/hjg/pngj/ChunkReader;

    .line 180
    if-nez v7, :cond_4

    .line 181
    move-object/from16 v0, p0

    iget-object v3, v0, Lar/com/hjg/pngj/c;->j:Lar/com/hjg/pngj/ChunkReader;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lar/com/hjg/pngj/ChunkReader;->a(Z)V

    goto :goto_0
.end method

.method protected a(Lar/com/hjg/pngj/ChunkReader;)V
    .locals 4
    .param p1, "chunkR"    # Lar/com/hjg/pngj/ChunkReader;

    .prologue
    const/4 v3, 0x1

    .line 219
    iget v1, p0, Lar/com/hjg/pngj/c;->g:I

    if-ne v1, v3, :cond_0

    .line 220
    invoke-virtual {p0}, Lar/com/hjg/pngj/c;->i()Ljava/lang/String;

    move-result-object v0

    .line 221
    .local v0, "cid":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lar/com/hjg/pngj/ChunkReader;->a()Lar/com/hjg/pngj/chunks/e;

    move-result-object v1

    iget-object v1, v1, Lar/com/hjg/pngj/chunks/e;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 222
    new-instance v1, Lar/com/hjg/pngj/PngjInputException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad first chunk: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lar/com/hjg/pngj/ChunkReader;->a()Lar/com/hjg/pngj/chunks/e;

    move-result-object v3

    iget-object v3, v3, Lar/com/hjg/pngj/chunks/e;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " expected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lar/com/hjg/pngj/c;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lar/com/hjg/pngj/PngjInputException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 225
    .end local v0    # "cid":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Lar/com/hjg/pngj/ChunkReader;->a()Lar/com/hjg/pngj/chunks/e;

    move-result-object v1

    iget-object v1, v1, Lar/com/hjg/pngj/chunks/e;->c:Ljava/lang/String;

    invoke-virtual {p0}, Lar/com/hjg/pngj/c;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 226
    iput-boolean v3, p0, Lar/com/hjg/pngj/c;->f:Z

    .line 227
    :cond_1
    return-void
.end method

.method public a(Ljava/io/File;)V
    .locals 3
    .param p1, "f"    # Ljava/io/File;

    .prologue
    .line 370
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lar/com/hjg/pngj/c;->a(Ljava/io/InputStream;Z)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 374
    return-void

    .line 371
    :catch_0
    move-exception v0

    .line 372
    .local v0, "e":Ljava/io/FileNotFoundException;
    new-instance v1, Lar/com/hjg/pngj/PngjInputException;

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lar/com/hjg/pngj/PngjInputException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public a(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "is"    # Ljava/io/InputStream;

    .prologue
    .line 394
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lar/com/hjg/pngj/c;->a(Ljava/io/InputStream;Z)V

    .line 395
    return-void
.end method

.method public a(Ljava/io/InputStream;Z)V
    .locals 2
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "closeStream"    # Z

    .prologue
    .line 383
    new-instance v0, Lar/com/hjg/pngj/a;

    invoke-direct {v0, p1}, Lar/com/hjg/pngj/a;-><init>(Ljava/io/InputStream;)V

    .line 384
    .local v0, "sf":Lar/com/hjg/pngj/a;
    invoke-virtual {v0, p2}, Lar/com/hjg/pngj/a;->a(Z)V

    .line 386
    :try_start_0
    invoke-virtual {v0, p0}, Lar/com/hjg/pngj/a;->b(Lar/com/hjg/pngj/i;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 388
    invoke-virtual {p0}, Lar/com/hjg/pngj/c;->g()V

    .line 389
    invoke-virtual {v0}, Lar/com/hjg/pngj/a;->d()V

    .line 391
    return-void

    .line 388
    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Lar/com/hjg/pngj/c;->g()V

    .line 389
    invoke-virtual {v0}, Lar/com/hjg/pngj/a;->d()V

    throw v1
.end method

.method protected a([B)V
    .locals 2
    .param p1, "buf"    # [B

    .prologue
    .line 270
    invoke-static {}, Lar/com/hjg/pngj/x;->a()[B

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_0

    .line 271
    new-instance v0, Lar/com/hjg/pngj/PngjInputException;

    const-string v1, "Bad PNG signature"

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjInputException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 272
    :cond_0
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 280
    iget-boolean v0, p0, Lar/com/hjg/pngj/c;->e:Z

    return v0
.end method

.method protected a(ILjava/lang/String;)Z
    .locals 1
    .param p1, "len"    # I
    .param p2, "id"    # Ljava/lang/String;

    .prologue
    .line 261
    const/4 v0, 0x1

    return v0
.end method

.method protected a(Ljava/lang/String;)Z
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 246
    const/4 v0, 0x0

    return v0
.end method

.method protected b(Ljava/lang/String;)Lar/com/hjg/pngj/g;
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    const/16 v1, 0x400

    .line 233
    new-instance v0, Lar/com/hjg/pngj/g;

    invoke-direct {v0, p1, v1, v1}, Lar/com/hjg/pngj/g;-><init>(Ljava/lang/String;II)V

    return-object v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 287
    iget-boolean v0, p0, Lar/com/hjg/pngj/c;->f:Z

    return v0
.end method

.method protected b(ILjava/lang/String;)Z
    .locals 1
    .param p1, "len"    # I
    .param p2, "id"    # Ljava/lang/String;

    .prologue
    .line 257
    const/4 v0, 0x0

    return v0
.end method

.method public b([BII)Z
    .locals 2
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    const/4 v1, 0x1

    .line 129
    :goto_0
    if-lez p3, :cond_0

    .line 130
    invoke-virtual {p0, p1, p2, p3}, Lar/com/hjg/pngj/c;->a([BII)I

    move-result v0

    .line 131
    .local v0, "n":I
    if-ge v0, v1, :cond_1

    .line 132
    const/4 v1, 0x0

    .line 136
    .end local v0    # "n":I
    :cond_0
    return v1

    .line 133
    .restart local v0    # "n":I
    :cond_1
    sub-int/2addr p3, v0

    .line 134
    add-int/2addr p2, v0

    .line 135
    goto :goto_0
.end method

.method public c()J
    .locals 2

    .prologue
    .line 294
    iget-wide v0, p0, Lar/com/hjg/pngj/c;->h:J

    return-wide v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 301
    iget v0, p0, Lar/com/hjg/pngj/c;->g:I

    return v0
.end method

.method public e()Lar/com/hjg/pngj/ChunkReader;
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lar/com/hjg/pngj/c;->j:Lar/com/hjg/pngj/ChunkReader;

    return-object v0
.end method

.method public f()Lar/com/hjg/pngj/g;
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lar/com/hjg/pngj/c;->i:Lar/com/hjg/pngj/g;

    return-object v0
.end method

.method public g()V
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lar/com/hjg/pngj/c;->i:Lar/com/hjg/pngj/g;

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lar/com/hjg/pngj/c;->i:Lar/com/hjg/pngj/g;

    invoke-virtual {v0}, Lar/com/hjg/pngj/g;->j()V

    .line 326
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lar/com/hjg/pngj/c;->f:Z

    .line 327
    return-void
.end method

.method public h()Z
    .locals 4

    .prologue
    .line 334
    iget-wide v0, p0, Lar/com/hjg/pngj/c;->h:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lar/com/hjg/pngj/c;->h:J

    const-wide/16 v2, 0x8

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lar/com/hjg/pngj/c;->f:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lar/com/hjg/pngj/c;->j:Lar/com/hjg/pngj/ChunkReader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lar/com/hjg/pngj/c;->j:Lar/com/hjg/pngj/ChunkReader;

    invoke-virtual {v0}, Lar/com/hjg/pngj/ChunkReader;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 344
    const-string v0, "IHDR"

    return-object v0
.end method

.method public j()J
    .locals 2

    .prologue
    .line 353
    iget-wide v0, p0, Lar/com/hjg/pngj/c;->k:J

    return-wide v0
.end method

.method protected k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 362
    const-string v0, "IEND"

    return-object v0
.end method
