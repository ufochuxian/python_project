.class public Lar/com/hjg/pngj/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lar/com/hjg/pngj/g$a;
    }
.end annotation


# instance fields
.field protected a:[B

.field b:Lar/com/hjg/pngj/g$a;

.field c:I

.field d:I

.field public final e:Ljava/lang/String;

.field private f:I

.field private g:I

.field private h:I

.field private i:Ljava/util/zip/Inflater;

.field private final j:Z

.field private k:Lar/com/hjg/pngj/f;

.field private l:Z

.field private m:J

.field private n:J


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 6
    .param p1, "chunkid"    # Ljava/lang/String;
    .param p2, "initialRowLen"    # I
    .param p3, "maxRowLen"    # I

    .prologue
    const/4 v4, 0x0

    .line 112
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lar/com/hjg/pngj/g;-><init>(Ljava/lang/String;IILjava/util/zip/Inflater;[B)V

    .line 113
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILjava/util/zip/Inflater;[B)V
    .locals 6
    .param p1, "chunkid"    # Ljava/lang/String;
    .param p2, "initialRowLen"    # I
    .param p3, "maxRowLen"    # I
    .param p4, "inflater"    # Ljava/util/zip/Inflater;
    .param p5, "buffer"    # [B

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    sget-object v1, Lar/com/hjg/pngj/g$a;->WAITING_FOR_INPUT:Lar/com/hjg/pngj/g$a;

    iput-object v1, p0, Lar/com/hjg/pngj/g;->b:Lar/com/hjg/pngj/g$a;

    .line 71
    iput-boolean v3, p0, Lar/com/hjg/pngj/g;->l:Z

    .line 72
    iput-wide v4, p0, Lar/com/hjg/pngj/g;->m:J

    .line 73
    iput-wide v4, p0, Lar/com/hjg/pngj/g;->n:J

    .line 74
    iput v2, p0, Lar/com/hjg/pngj/g;->c:I

    .line 75
    iput v2, p0, Lar/com/hjg/pngj/g;->d:I

    .line 89
    iput-object p1, p0, Lar/com/hjg/pngj/g;->e:Ljava/lang/String;

    .line 90
    iput p2, p0, Lar/com/hjg/pngj/g;->g:I

    .line 91
    if-lt p2, v3, :cond_0

    if-ge p3, p2, :cond_1

    .line 92
    :cond_0
    new-instance v1, Lar/com/hjg/pngj/PngjException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bad inital row len "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 93
    :cond_1
    if-eqz p4, :cond_2

    .line 94
    iput-object p4, p0, Lar/com/hjg/pngj/g;->i:Ljava/util/zip/Inflater;

    .line 95
    const/4 v1, 0x0

    iput-boolean v1, p0, Lar/com/hjg/pngj/g;->j:Z

    .line 100
    :goto_0
    if-eqz p5, :cond_3

    array-length v1, p5

    if-lt v1, p2, :cond_3

    .end local p5    # "buffer":[B
    :goto_1
    iput-object p5, p0, Lar/com/hjg/pngj/g;->a:[B

    .line 101
    iput v2, p0, Lar/com/hjg/pngj/g;->h:I

    .line 102
    sget-object v1, Lar/com/hjg/pngj/g$a;->WAITING_FOR_INPUT:Lar/com/hjg/pngj/g$a;

    iput-object v1, p0, Lar/com/hjg/pngj/g;->b:Lar/com/hjg/pngj/g$a;

    .line 104
    :try_start_0
    invoke-virtual {p0, p2}, Lar/com/hjg/pngj/g;->a(I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    return-void

    .line 97
    .restart local p5    # "buffer":[B
    :cond_2
    new-instance v1, Ljava/util/zip/Inflater;

    invoke-direct {v1}, Ljava/util/zip/Inflater;-><init>()V

    iput-object v1, p0, Lar/com/hjg/pngj/g;->i:Ljava/util/zip/Inflater;

    .line 98
    iput-boolean v3, p0, Lar/com/hjg/pngj/g;->j:Z

    goto :goto_0

    .line 100
    :cond_3
    new-array p5, p3, [B

    goto :goto_1

    .line 105
    .end local p5    # "buffer":[B
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {p0}, Lar/com/hjg/pngj/g;->j()V

    .line 107
    throw v0
.end method

.method private r()Z
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 168
    :try_start_0
    iget-object v4, p0, Lar/com/hjg/pngj/g;->b:Lar/com/hjg/pngj/g$a;

    sget-object v5, Lar/com/hjg/pngj/g$a;->ROW_READY:Lar/com/hjg/pngj/g$a;

    if-ne v4, v5, :cond_0

    .line 169
    new-instance v3, Lar/com/hjg/pngj/PngjException;

    const-string v4, "invalid state"

    invoke-direct {v3, v4}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    :catch_0
    move-exception v0

    .line 200
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {p0}, Lar/com/hjg/pngj/g;->j()V

    .line 201
    throw v0

    .line 170
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_0
    :try_start_1
    iget-object v4, p0, Lar/com/hjg/pngj/g;->b:Lar/com/hjg/pngj/g$a;

    invoke-virtual {v4}, Lar/com/hjg/pngj/g$a;->isDone()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 203
    :cond_1
    :goto_0
    return v3

    .line 172
    :cond_2
    const/4 v2, 0x0

    .line 173
    .local v2, "ninflated":I
    iget-object v4, p0, Lar/com/hjg/pngj/g;->a:[B

    if-eqz v4, :cond_3

    iget-object v4, p0, Lar/com/hjg/pngj/g;->a:[B

    array-length v4, v4

    iget v5, p0, Lar/com/hjg/pngj/g;->g:I

    if-ge v4, v5, :cond_4

    .line 174
    :cond_3
    iget v4, p0, Lar/com/hjg/pngj/g;->g:I

    new-array v4, v4, [B

    iput-object v4, p0, Lar/com/hjg/pngj/g;->a:[B

    .line 175
    :cond_4
    iget v4, p0, Lar/com/hjg/pngj/g;->f:I

    iget v5, p0, Lar/com/hjg/pngj/g;->g:I

    if-ge v4, v5, :cond_5

    iget-object v4, p0, Lar/com/hjg/pngj/g;->i:Ljava/util/zip/Inflater;

    invoke-virtual {v4}, Ljava/util/zip/Inflater;->finished()Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v4

    if-nez v4, :cond_5

    .line 177
    :try_start_2
    iget-object v4, p0, Lar/com/hjg/pngj/g;->i:Ljava/util/zip/Inflater;

    iget-object v5, p0, Lar/com/hjg/pngj/g;->a:[B

    iget v6, p0, Lar/com/hjg/pngj/g;->f:I

    iget v7, p0, Lar/com/hjg/pngj/g;->g:I

    iget v8, p0, Lar/com/hjg/pngj/g;->f:I

    sub-int/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Ljava/util/zip/Inflater;->inflate([BII)I
    :try_end_2
    .catch Ljava/util/zip/DataFormatException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v2

    .line 181
    :try_start_3
    iget v4, p0, Lar/com/hjg/pngj/g;->f:I

    add-int/2addr v4, v2

    iput v4, p0, Lar/com/hjg/pngj/g;->f:I

    .line 182
    iget-wide v4, p0, Lar/com/hjg/pngj/g;->n:J

    int-to-long v6, v2

    add-long/2addr v4, v6

    iput-wide v4, p0, Lar/com/hjg/pngj/g;->n:J

    .line 184
    :cond_5
    const/4 v1, 0x0

    .line 185
    .local v1, "nextstate":Lar/com/hjg/pngj/g$a;
    iget v4, p0, Lar/com/hjg/pngj/g;->f:I

    iget v5, p0, Lar/com/hjg/pngj/g;->g:I

    if-ne v4, v5, :cond_6

    .line 186
    sget-object v1, Lar/com/hjg/pngj/g$a;->ROW_READY:Lar/com/hjg/pngj/g$a;

    .line 194
    :goto_1
    iput-object v1, p0, Lar/com/hjg/pngj/g;->b:Lar/com/hjg/pngj/g$a;

    .line 195
    iget-object v4, p0, Lar/com/hjg/pngj/g;->b:Lar/com/hjg/pngj/g$a;

    sget-object v5, Lar/com/hjg/pngj/g$a;->ROW_READY:Lar/com/hjg/pngj/g$a;

    if-ne v4, v5, :cond_1

    .line 196
    invoke-virtual {p0}, Lar/com/hjg/pngj/g;->a()V

    .line 197
    const/4 v3, 0x1

    goto :goto_0

    .line 178
    .end local v1    # "nextstate":Lar/com/hjg/pngj/g$a;
    :catch_1
    move-exception v0

    .line 179
    .local v0, "e":Ljava/util/zip/DataFormatException;
    new-instance v3, Lar/com/hjg/pngj/PngjInputException;

    const-string v4, "error decompressing zlib stream "

    invoke-direct {v3, v4, v0}, Lar/com/hjg/pngj/PngjInputException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 187
    .end local v0    # "e":Ljava/util/zip/DataFormatException;
    .restart local v1    # "nextstate":Lar/com/hjg/pngj/g$a;
    :cond_6
    iget-object v4, p0, Lar/com/hjg/pngj/g;->i:Ljava/util/zip/Inflater;

    invoke-virtual {v4}, Ljava/util/zip/Inflater;->finished()Z

    move-result v4

    if-nez v4, :cond_7

    .line 188
    sget-object v1, Lar/com/hjg/pngj/g$a;->WAITING_FOR_INPUT:Lar/com/hjg/pngj/g$a;

    goto :goto_1

    .line 189
    :cond_7
    iget v4, p0, Lar/com/hjg/pngj/g;->f:I

    if-lez v4, :cond_8

    .line 190
    sget-object v1, Lar/com/hjg/pngj/g$a;->ROW_READY:Lar/com/hjg/pngj/g$a;

    goto :goto_1

    .line 192
    :cond_8
    sget-object v1, Lar/com/hjg/pngj/g$a;->WORK_DONE:Lar/com/hjg/pngj/g$a;
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1
.end method


# virtual methods
.method protected a()V
    .locals 0

    .prologue
    .line 211
    return-void
.end method

.method public a(I)V
    .locals 2
    .param p1, "len"    # I

    .prologue
    const/4 v1, 0x0

    .line 250
    iput v1, p0, Lar/com/hjg/pngj/g;->f:I

    .line 251
    iget v0, p0, Lar/com/hjg/pngj/g;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lar/com/hjg/pngj/g;->h:I

    .line 252
    const/4 v0, 0x1

    if-ge p1, v0, :cond_1

    .line 253
    iput v1, p0, Lar/com/hjg/pngj/g;->g:I

    .line 254
    invoke-virtual {p0}, Lar/com/hjg/pngj/g;->k()V

    .line 264
    :cond_0
    :goto_0
    return-void

    .line 255
    :cond_1
    iget-object v0, p0, Lar/com/hjg/pngj/g;->i:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->finished()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 256
    iput v1, p0, Lar/com/hjg/pngj/g;->g:I

    .line 257
    invoke-virtual {p0}, Lar/com/hjg/pngj/g;->k()V

    goto :goto_0

    .line 259
    :cond_2
    sget-object v0, Lar/com/hjg/pngj/g$a;->WAITING_FOR_INPUT:Lar/com/hjg/pngj/g$a;

    iput-object v0, p0, Lar/com/hjg/pngj/g;->b:Lar/com/hjg/pngj/g$a;

    .line 260
    iput p1, p0, Lar/com/hjg/pngj/g;->g:I

    .line 261
    iget-boolean v0, p0, Lar/com/hjg/pngj/g;->l:Z

    if-nez v0, :cond_0

    .line 262
    invoke-direct {p0}, Lar/com/hjg/pngj/g;->r()Z

    goto :goto_0
.end method

.method protected a(Lar/com/hjg/pngj/f;)V
    .locals 3
    .param p1, "cr"    # Lar/com/hjg/pngj/f;

    .prologue
    .line 117
    iget-object v0, p0, Lar/com/hjg/pngj/g;->e:Ljava/lang/String;

    invoke-virtual {p1}, Lar/com/hjg/pngj/f;->a()Lar/com/hjg/pngj/chunks/e;

    move-result-object v1

    iget-object v1, v1, Lar/com/hjg/pngj/chunks/e;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 118
    new-instance v0, Lar/com/hjg/pngj/PngjInputException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad chunk inside IdatSet, id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lar/com/hjg/pngj/f;->a()Lar/com/hjg/pngj/chunks/e;

    move-result-object v2

    iget-object v2, v2, Lar/com/hjg/pngj/chunks/e;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", expected:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lar/com/hjg/pngj/g;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjInputException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :cond_0
    iput-object p1, p0, Lar/com/hjg/pngj/g;->k:Lar/com/hjg/pngj/f;

    .line 121
    iget v0, p0, Lar/com/hjg/pngj/g;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lar/com/hjg/pngj/g;->c:I

    .line 122
    iget v0, p0, Lar/com/hjg/pngj/g;->d:I

    if-ltz v0, :cond_1

    .line 123
    iget v0, p0, Lar/com/hjg/pngj/g;->c:I

    iget v1, p0, Lar/com/hjg/pngj/g;->d:I

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lar/com/hjg/pngj/f;->a(I)V

    .line 124
    :cond_1
    return-void
.end method

.method public a(Z)V
    .locals 0
    .param p1, "callbackMode"    # Z

    .prologue
    .line 396
    iput-boolean p1, p0, Lar/com/hjg/pngj/g;->l:Z

    .line 397
    return-void
.end method

.method protected a([BII)V
    .locals 6
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 137
    iget-wide v2, p0, Lar/com/hjg/pngj/g;->m:J

    int-to-long v4, p3

    add-long/2addr v2, v4

    iput-wide v2, p0, Lar/com/hjg/pngj/g;->m:J

    .line 139
    const/4 v1, 0x1

    if-lt p3, v1, :cond_0

    iget-object v1, p0, Lar/com/hjg/pngj/g;->b:Lar/com/hjg/pngj/g$a;

    invoke-virtual {v1}, Lar/com/hjg/pngj/g$a;->isDone()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 141
    :cond_1
    iget-object v1, p0, Lar/com/hjg/pngj/g;->b:Lar/com/hjg/pngj/g$a;

    sget-object v2, Lar/com/hjg/pngj/g$a;->ROW_READY:Lar/com/hjg/pngj/g$a;

    if-ne v1, v2, :cond_2

    .line 142
    new-instance v1, Lar/com/hjg/pngj/PngjInputException;

    const-string v2, "this should only be called if waitingForMoreInput"

    invoke-direct {v1, v2}, Lar/com/hjg/pngj/PngjInputException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 143
    :cond_2
    iget-object v1, p0, Lar/com/hjg/pngj/g;->i:Ljava/util/zip/Inflater;

    invoke-virtual {v1}, Ljava/util/zip/Inflater;->needsDictionary()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lar/com/hjg/pngj/g;->i:Ljava/util/zip/Inflater;

    invoke-virtual {v1}, Ljava/util/zip/Inflater;->needsInput()Z

    move-result v1

    if-nez v1, :cond_4

    .line 144
    :cond_3
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "should not happen"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 145
    :cond_4
    iget-object v1, p0, Lar/com/hjg/pngj/g;->i:Ljava/util/zip/Inflater;

    invoke-virtual {v1, p1, p2, p3}, Ljava/util/zip/Inflater;->setInput([BII)V

    .line 148
    invoke-virtual {p0}, Lar/com/hjg/pngj/g;->o()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 149
    :cond_5
    :goto_1
    invoke-direct {p0}, Lar/com/hjg/pngj/g;->r()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 150
    invoke-virtual {p0}, Lar/com/hjg/pngj/g;->b()I

    move-result v0

    .line 151
    .local v0, "nextRowLen":I
    invoke-virtual {p0, v0}, Lar/com/hjg/pngj/g;->a(I)V

    .line 152
    invoke-virtual {p0}, Lar/com/hjg/pngj/g;->g()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 153
    invoke-virtual {p0}, Lar/com/hjg/pngj/g;->c()V

    goto :goto_1

    .line 156
    .end local v0    # "nextRowLen":I
    :cond_6
    invoke-direct {p0}, Lar/com/hjg/pngj/g;->r()Z

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 3
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 303
    iget-object v2, p0, Lar/com/hjg/pngj/g;->b:Lar/com/hjg/pngj/g$a;

    invoke-virtual {v2}, Lar/com/hjg/pngj/g$a;->isTerminated()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 318
    :cond_0
    :goto_0
    return v0

    .line 305
    :cond_1
    iget-object v2, p0, Lar/com/hjg/pngj/g;->e:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 306
    goto :goto_0

    .line 308
    :cond_2
    invoke-virtual {p0, p1}, Lar/com/hjg/pngj/g;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 309
    iget-object v1, p0, Lar/com/hjg/pngj/g;->b:Lar/com/hjg/pngj/g$a;

    invoke-virtual {v1}, Lar/com/hjg/pngj/g$a;->isDone()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 310
    invoke-virtual {p0}, Lar/com/hjg/pngj/g;->h()Z

    move-result v1

    if-nez v1, :cond_0

    .line 311
    invoke-virtual {p0}, Lar/com/hjg/pngj/g;->i()V

    goto :goto_0

    .line 314
    :cond_3
    new-instance v0, Lar/com/hjg/pngj/PngjInputException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected chunk "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " while "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lar/com/hjg/pngj/g;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " set is not done"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjInputException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    move v0, v1

    .line 318
    goto :goto_0
.end method

.method protected b()I
    .locals 2

    .prologue
    .line 221
    new-instance v0, Lar/com/hjg/pngj/PngjInputException;

    const-string v1, "not implemented"

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjInputException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(Ljava/lang/String;)Z
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 385
    const/4 v0, 0x0

    return v0
.end method

.method protected c()V
    .locals 0

    .prologue
    .line 229
    return-void
.end method

.method public d()[B
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lar/com/hjg/pngj/g;->a:[B

    return-object v0
.end method

.method public e()Z
    .locals 2

    .prologue
    .line 272
    iget-object v0, p0, Lar/com/hjg/pngj/g;->b:Lar/com/hjg/pngj/g$a;

    sget-object v1, Lar/com/hjg/pngj/g$a;->WAITING_FOR_INPUT:Lar/com/hjg/pngj/g$a;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()Z
    .locals 2

    .prologue
    .line 281
    iget-object v0, p0, Lar/com/hjg/pngj/g;->b:Lar/com/hjg/pngj/g$a;

    sget-object v1, Lar/com/hjg/pngj/g$a;->ROW_READY:Lar/com/hjg/pngj/g$a;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lar/com/hjg/pngj/g;->b:Lar/com/hjg/pngj/g$a;

    invoke-virtual {v0}, Lar/com/hjg/pngj/g$a;->isDone()Z

    move-result v0

    return v0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lar/com/hjg/pngj/g;->b:Lar/com/hjg/pngj/g$a;

    invoke-virtual {v0}, Lar/com/hjg/pngj/g$a;->isTerminated()Z

    move-result v0

    return v0
.end method

.method protected i()V
    .locals 0

    .prologue
    .line 323
    invoke-virtual {p0}, Lar/com/hjg/pngj/g;->j()V

    .line 324
    return-void
.end method

.method public j()V
    .locals 1

    .prologue
    .line 332
    :try_start_0
    iget-object v0, p0, Lar/com/hjg/pngj/g;->b:Lar/com/hjg/pngj/g$a;

    invoke-virtual {v0}, Lar/com/hjg/pngj/g$a;->isTerminated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 333
    sget-object v0, Lar/com/hjg/pngj/g$a;->TERMINATED:Lar/com/hjg/pngj/g$a;

    iput-object v0, p0, Lar/com/hjg/pngj/g;->b:Lar/com/hjg/pngj/g$a;

    .line 335
    :cond_0
    iget-boolean v0, p0, Lar/com/hjg/pngj/g;->j:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lar/com/hjg/pngj/g;->i:Ljava/util/zip/Inflater;

    if-eqz v0, :cond_1

    .line 336
    iget-object v0, p0, Lar/com/hjg/pngj/g;->i:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V

    .line 337
    const/4 v0, 0x0

    iput-object v0, p0, Lar/com/hjg/pngj/g;->i:Ljava/util/zip/Inflater;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 341
    :cond_1
    :goto_0
    return-void

    .line 339
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public k()V
    .locals 1

    .prologue
    .line 348
    invoke-virtual {p0}, Lar/com/hjg/pngj/g;->g()Z

    move-result v0

    if-nez v0, :cond_0

    .line 349
    sget-object v0, Lar/com/hjg/pngj/g$a;->WORK_DONE:Lar/com/hjg/pngj/g$a;

    iput-object v0, p0, Lar/com/hjg/pngj/g;->b:Lar/com/hjg/pngj/g$a;

    .line 350
    :cond_0
    return-void
.end method

.method public l()I
    .locals 1

    .prologue
    .line 357
    iget v0, p0, Lar/com/hjg/pngj/g;->g:I

    return v0
.end method

.method public m()I
    .locals 1

    .prologue
    .line 362
    iget v0, p0, Lar/com/hjg/pngj/g;->f:I

    return v0
.end method

.method public n()I
    .locals 1

    .prologue
    .line 373
    iget v0, p0, Lar/com/hjg/pngj/g;->h:I

    return v0
.end method

.method public o()Z
    .locals 1

    .prologue
    .line 392
    iget-boolean v0, p0, Lar/com/hjg/pngj/g;->l:Z

    return v0
.end method

.method public p()J
    .locals 2

    .prologue
    .line 401
    iget-wide v0, p0, Lar/com/hjg/pngj/g;->m:J

    return-wide v0
.end method

.method public q()J
    .locals 2

    .prologue
    .line 406
    iget-wide v0, p0, Lar/com/hjg/pngj/g;->n:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 411
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "idatSet : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lar/com/hjg/pngj/g;->k:Lar/com/hjg/pngj/f;

    invoke-virtual {v2}, Lar/com/hjg/pngj/f;->a()Lar/com/hjg/pngj/chunks/e;

    move-result-object v2

    iget-object v2, v2, Lar/com/hjg/pngj/chunks/e;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lar/com/hjg/pngj/g;->b:Lar/com/hjg/pngj/g$a;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " rows="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lar/com/hjg/pngj/g;->h:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lar/com/hjg/pngj/g;->m:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lar/com/hjg/pngj/g;->n:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 414
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
