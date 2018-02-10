.class public abstract Lar/com/hjg/pngj/ChunkReader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lar/com/hjg/pngj/ChunkReader$ChunkReaderMode;
    }
.end annotation


# instance fields
.field public final a:Lar/com/hjg/pngj/ChunkReader$ChunkReaderMode;

.field protected b:I

.field private final c:Lar/com/hjg/pngj/chunks/e;

.field private d:Z

.field private e:I


# direct methods
.method public constructor <init>(ILjava/lang/String;JLar/com/hjg/pngj/ChunkReader$ChunkReaderMode;)V
    .locals 5
    .param p1, "clen"    # I
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "offsetInPng"    # J
    .param p5, "mode"    # Lar/com/hjg/pngj/ChunkReader$ChunkReaderMode;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput v2, p0, Lar/com/hjg/pngj/ChunkReader;->b:I

    .line 29
    iput v2, p0, Lar/com/hjg/pngj/ChunkReader;->e:I

    .line 58
    if-eqz p5, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_0

    if-gez p1, :cond_1

    .line 59
    :cond_0
    new-instance v0, Lar/com/hjg/pngj/PngjExceptionInternal;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad chunk paramenters: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjExceptionInternal;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_1
    iput-object p5, p0, Lar/com/hjg/pngj/ChunkReader;->a:Lar/com/hjg/pngj/ChunkReader$ChunkReaderMode;

    .line 61
    new-instance v3, Lar/com/hjg/pngj/chunks/e;

    sget-object v0, Lar/com/hjg/pngj/ChunkReader$ChunkReaderMode;->BUFFER:Lar/com/hjg/pngj/ChunkReader$ChunkReaderMode;

    if-ne p5, v0, :cond_2

    move v0, v1

    :goto_0
    invoke-direct {v3, p1, p2, v0}, Lar/com/hjg/pngj/chunks/e;-><init>(ILjava/lang/String;Z)V

    iput-object v3, p0, Lar/com/hjg/pngj/ChunkReader;->c:Lar/com/hjg/pngj/chunks/e;

    .line 62
    iget-object v0, p0, Lar/com/hjg/pngj/ChunkReader;->c:Lar/com/hjg/pngj/chunks/e;

    invoke-virtual {v0, p3, p4}, Lar/com/hjg/pngj/chunks/e;->a(J)V

    .line 63
    sget-object v0, Lar/com/hjg/pngj/ChunkReader$ChunkReaderMode;->SKIP:Lar/com/hjg/pngj/ChunkReader$ChunkReaderMode;

    if-ne p5, v0, :cond_3

    :goto_1
    iput-boolean v2, p0, Lar/com/hjg/pngj/ChunkReader;->d:Z

    .line 64
    return-void

    :cond_2
    move v0, v2

    .line 61
    goto :goto_0

    :cond_3
    move v2, v1

    .line 63
    goto :goto_1
.end method


# virtual methods
.method public final a([BII)I
    .locals 6
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    const/4 v5, 0x4

    const/4 v2, 0x0

    .line 88
    if-nez p3, :cond_0

    .line 138
    :goto_0
    return v2

    .line 90
    :cond_0
    if-gez p3, :cond_1

    .line 91
    new-instance v2, Lar/com/hjg/pngj/PngjException;

    const-string v3, "negative length??"

    invoke-direct {v2, v3}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 92
    :cond_1
    iget v3, p0, Lar/com/hjg/pngj/ChunkReader;->b:I

    if-nez v3, :cond_2

    iget v3, p0, Lar/com/hjg/pngj/ChunkReader;->e:I

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lar/com/hjg/pngj/ChunkReader;->d:Z

    if-eqz v3, :cond_2

    .line 93
    iget-object v3, p0, Lar/com/hjg/pngj/ChunkReader;->c:Lar/com/hjg/pngj/chunks/e;

    iget-object v4, p0, Lar/com/hjg/pngj/ChunkReader;->c:Lar/com/hjg/pngj/chunks/e;

    iget-object v4, v4, Lar/com/hjg/pngj/chunks/e;->b:[B

    invoke-virtual {v3, v4, v2, v5}, Lar/com/hjg/pngj/chunks/e;->a([BII)V

    .line 94
    :cond_2
    iget-object v3, p0, Lar/com/hjg/pngj/ChunkReader;->c:Lar/com/hjg/pngj/chunks/e;

    iget v3, v3, Lar/com/hjg/pngj/chunks/e;->a:I

    iget v4, p0, Lar/com/hjg/pngj/ChunkReader;->b:I

    sub-int v0, v3, v4

    .line 95
    .local v0, "bytesForData":I
    if-le v0, p3, :cond_3

    .line 96
    move v0, p3

    .line 98
    :cond_3
    if-gtz v0, :cond_4

    iget v3, p0, Lar/com/hjg/pngj/ChunkReader;->e:I

    if-nez v3, :cond_7

    .line 100
    :cond_4
    iget-boolean v3, p0, Lar/com/hjg/pngj/ChunkReader;->d:Z

    if-eqz v3, :cond_5

    iget-object v3, p0, Lar/com/hjg/pngj/ChunkReader;->a:Lar/com/hjg/pngj/ChunkReader$ChunkReaderMode;

    sget-object v4, Lar/com/hjg/pngj/ChunkReader$ChunkReaderMode;->BUFFER:Lar/com/hjg/pngj/ChunkReader$ChunkReaderMode;

    if-eq v3, v4, :cond_5

    if-lez v0, :cond_5

    .line 101
    iget-object v3, p0, Lar/com/hjg/pngj/ChunkReader;->c:Lar/com/hjg/pngj/chunks/e;

    invoke-virtual {v3, p1, p2, v0}, Lar/com/hjg/pngj/chunks/e;->a([BII)V

    .line 103
    :cond_5
    iget-object v3, p0, Lar/com/hjg/pngj/ChunkReader;->a:Lar/com/hjg/pngj/ChunkReader$ChunkReaderMode;

    sget-object v4, Lar/com/hjg/pngj/ChunkReader$ChunkReaderMode;->BUFFER:Lar/com/hjg/pngj/ChunkReader$ChunkReaderMode;

    if-ne v3, v4, :cond_d

    .line 105
    iget-object v3, p0, Lar/com/hjg/pngj/ChunkReader;->c:Lar/com/hjg/pngj/chunks/e;

    iget-object v3, v3, Lar/com/hjg/pngj/chunks/e;->d:[B

    if-eq v3, p1, :cond_6

    if-lez v0, :cond_6

    .line 107
    iget-object v3, p0, Lar/com/hjg/pngj/ChunkReader;->c:Lar/com/hjg/pngj/chunks/e;

    iget-object v3, v3, Lar/com/hjg/pngj/chunks/e;->d:[B

    iget v4, p0, Lar/com/hjg/pngj/ChunkReader;->b:I

    invoke-static {p1, p2, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 114
    :cond_6
    :goto_1
    iget v3, p0, Lar/com/hjg/pngj/ChunkReader;->b:I

    add-int/2addr v3, v0

    iput v3, p0, Lar/com/hjg/pngj/ChunkReader;->b:I

    .line 115
    add-int/2addr p2, v0

    .line 116
    sub-int/2addr p3, v0

    .line 118
    :cond_7
    const/4 v1, 0x0

    .line 119
    .local v1, "crcRead":I
    iget v3, p0, Lar/com/hjg/pngj/ChunkReader;->b:I

    iget-object v4, p0, Lar/com/hjg/pngj/ChunkReader;->c:Lar/com/hjg/pngj/chunks/e;

    iget v4, v4, Lar/com/hjg/pngj/chunks/e;->a:I

    if-ne v3, v4, :cond_c

    .line 120
    iget v3, p0, Lar/com/hjg/pngj/ChunkReader;->e:I

    rsub-int/lit8 v1, v3, 0x4

    .line 121
    if-le v1, p3, :cond_8

    .line 122
    move v1, p3

    .line 123
    :cond_8
    if-lez v1, :cond_c

    .line 124
    iget-object v3, p0, Lar/com/hjg/pngj/ChunkReader;->c:Lar/com/hjg/pngj/chunks/e;

    iget-object v3, v3, Lar/com/hjg/pngj/chunks/e;->e:[B

    if-eq p1, v3, :cond_9

    .line 125
    iget-object v3, p0, Lar/com/hjg/pngj/ChunkReader;->c:Lar/com/hjg/pngj/chunks/e;

    iget-object v3, v3, Lar/com/hjg/pngj/chunks/e;->e:[B

    iget v4, p0, Lar/com/hjg/pngj/ChunkReader;->e:I

    invoke-static {p1, p2, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 126
    :cond_9
    iget v3, p0, Lar/com/hjg/pngj/ChunkReader;->e:I

    add-int/2addr v3, v1

    iput v3, p0, Lar/com/hjg/pngj/ChunkReader;->e:I

    .line 127
    iget v3, p0, Lar/com/hjg/pngj/ChunkReader;->e:I

    if-ne v3, v5, :cond_c

    .line 128
    iget-boolean v3, p0, Lar/com/hjg/pngj/ChunkReader;->d:Z

    if-eqz v3, :cond_b

    .line 129
    iget-object v3, p0, Lar/com/hjg/pngj/ChunkReader;->a:Lar/com/hjg/pngj/ChunkReader$ChunkReaderMode;

    sget-object v4, Lar/com/hjg/pngj/ChunkReader$ChunkReaderMode;->BUFFER:Lar/com/hjg/pngj/ChunkReader$ChunkReaderMode;

    if-ne v3, v4, :cond_a

    .line 130
    iget-object v3, p0, Lar/com/hjg/pngj/ChunkReader;->c:Lar/com/hjg/pngj/chunks/e;

    iget-object v4, p0, Lar/com/hjg/pngj/ChunkReader;->c:Lar/com/hjg/pngj/chunks/e;

    iget-object v4, v4, Lar/com/hjg/pngj/chunks/e;->d:[B

    iget-object v5, p0, Lar/com/hjg/pngj/ChunkReader;->c:Lar/com/hjg/pngj/chunks/e;

    iget v5, v5, Lar/com/hjg/pngj/chunks/e;->a:I

    invoke-virtual {v3, v4, v2, v5}, Lar/com/hjg/pngj/chunks/e;->a([BII)V

    .line 132
    :cond_a
    iget-object v2, p0, Lar/com/hjg/pngj/ChunkReader;->c:Lar/com/hjg/pngj/chunks/e;

    invoke-virtual {v2}, Lar/com/hjg/pngj/chunks/e;->b()V

    .line 134
    :cond_b
    invoke-virtual {p0}, Lar/com/hjg/pngj/ChunkReader;->c()V

    .line 138
    :cond_c
    add-int v2, v0, v1

    goto/16 :goto_0

    .line 109
    .end local v1    # "crcRead":I
    :cond_d
    iget-object v3, p0, Lar/com/hjg/pngj/ChunkReader;->a:Lar/com/hjg/pngj/ChunkReader$ChunkReaderMode;

    sget-object v4, Lar/com/hjg/pngj/ChunkReader$ChunkReaderMode;->PROCESS:Lar/com/hjg/pngj/ChunkReader$ChunkReaderMode;

    if-ne v3, v4, :cond_6

    .line 110
    iget v3, p0, Lar/com/hjg/pngj/ChunkReader;->b:I

    invoke-virtual {p0, v3, p1, p2, v0}, Lar/com/hjg/pngj/ChunkReader;->a(I[BII)V

    goto :goto_1
.end method

.method public a()Lar/com/hjg/pngj/chunks/e;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lar/com/hjg/pngj/ChunkReader;->c:Lar/com/hjg/pngj/chunks/e;

    return-object v0
.end method

.method protected abstract a(I[BII)V
.end method

.method public a(Z)V
    .locals 2
    .param p1, "crcCheck"    # Z

    .prologue
    .line 156
    iget v0, p0, Lar/com/hjg/pngj/ChunkReader;->b:I

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lar/com/hjg/pngj/ChunkReader;->d:Z

    if-nez v0, :cond_0

    .line 157
    new-instance v0, Lar/com/hjg/pngj/PngjException;

    const-string v1, "too late!"

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :cond_0
    iput-boolean p1, p0, Lar/com/hjg/pngj/ChunkReader;->d:Z

    .line 159
    return-void
.end method

.method public final b()Z
    .locals 2

    .prologue
    .line 147
    iget v0, p0, Lar/com/hjg/pngj/ChunkReader;->e:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract c()V
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 180
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 196
    if-ne p0, p1, :cond_1

    .line 208
    :cond_0
    :goto_0
    return v1

    .line 198
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 199
    goto :goto_0

    .line 200
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 201
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 202
    check-cast v0, Lar/com/hjg/pngj/ChunkReader;

    .line 203
    .local v0, "other":Lar/com/hjg/pngj/ChunkReader;
    iget-object v3, p0, Lar/com/hjg/pngj/ChunkReader;->c:Lar/com/hjg/pngj/chunks/e;

    if-nez v3, :cond_4

    .line 204
    iget-object v3, v0, Lar/com/hjg/pngj/ChunkReader;->c:Lar/com/hjg/pngj/chunks/e;

    if-eqz v3, :cond_0

    move v1, v2

    .line 205
    goto :goto_0

    .line 206
    :cond_4
    iget-object v3, p0, Lar/com/hjg/pngj/ChunkReader;->c:Lar/com/hjg/pngj/chunks/e;

    iget-object v4, v0, Lar/com/hjg/pngj/ChunkReader;->c:Lar/com/hjg/pngj/chunks/e;

    invoke-virtual {v3, v4}, Lar/com/hjg/pngj/chunks/e;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 207
    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 185
    const/16 v0, 0x1f

    .line 186
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 187
    .local v1, "result":I
    iget-object v2, p0, Lar/com/hjg/pngj/ChunkReader;->c:Lar/com/hjg/pngj/chunks/e;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 188
    return v1

    .line 187
    :cond_0
    iget-object v2, p0, Lar/com/hjg/pngj/ChunkReader;->c:Lar/com/hjg/pngj/chunks/e;

    invoke-virtual {v2}, Lar/com/hjg/pngj/chunks/e;->hashCode()I

    move-result v2

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lar/com/hjg/pngj/ChunkReader;->c:Lar/com/hjg/pngj/chunks/e;

    invoke-virtual {v0}, Lar/com/hjg/pngj/chunks/e;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
