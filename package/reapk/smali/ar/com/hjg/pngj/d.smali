.class public Lar/com/hjg/pngj/d;
.super Lar/com/hjg/pngj/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lar/com/hjg/pngj/d$1;
    }
.end annotation


# instance fields
.field protected a:Lar/com/hjg/pngj/s;

.field protected d:Lar/com/hjg/pngj/s;

.field protected e:Lar/com/hjg/pngj/h;

.field protected f:I

.field protected g:Lar/com/hjg/pngj/chunks/f;

.field protected final h:Z

.field private i:J

.field private j:Z

.field private k:Z

.field private l:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m:J

.field private n:J

.field private o:J

.field private p:Lar/com/hjg/pngj/j;

.field private q:Lar/com/hjg/pngj/chunks/ChunkLoadBehaviour;


# direct methods
.method public constructor <init>(Z)V
    .locals 4
    .param p1, "callbackMode"    # Z

    .prologue
    const-wide/16 v2, 0x0

    .line 50
    invoke-direct {p0}, Lar/com/hjg/pngj/c;-><init>()V

    .line 28
    const/4 v0, -0x1

    iput v0, p0, Lar/com/hjg/pngj/d;->f:I

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lar/com/hjg/pngj/d;->g:Lar/com/hjg/pngj/chunks/f;

    .line 35
    iput-wide v2, p0, Lar/com/hjg/pngj/d;->i:J

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lar/com/hjg/pngj/d;->j:Z

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lar/com/hjg/pngj/d;->k:Z

    .line 42
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lar/com/hjg/pngj/d;->l:Ljava/util/Set;

    .line 43
    iput-wide v2, p0, Lar/com/hjg/pngj/d;->m:J

    .line 44
    iput-wide v2, p0, Lar/com/hjg/pngj/d;->n:J

    .line 45
    iput-wide v2, p0, Lar/com/hjg/pngj/d;->o:J

    .line 47
    sget-object v0, Lar/com/hjg/pngj/chunks/ChunkLoadBehaviour;->LOAD_CHUNK_ALWAYS:Lar/com/hjg/pngj/chunks/ChunkLoadBehaviour;

    iput-object v0, p0, Lar/com/hjg/pngj/d;->q:Lar/com/hjg/pngj/chunks/ChunkLoadBehaviour;

    .line 51
    iput-boolean p1, p0, Lar/com/hjg/pngj/d;->h:Z

    .line 52
    new-instance v0, Lar/com/hjg/pngj/chunks/b;

    invoke-direct {v0}, Lar/com/hjg/pngj/chunks/b;-><init>()V

    iput-object v0, p0, Lar/com/hjg/pngj/d;->p:Lar/com/hjg/pngj/j;

    .line 53
    return-void
.end method

.method private f(Ljava/lang/String;)V
    .locals 4
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x4

    const/4 v1, 0x1

    .line 56
    const-string v0, "IHDR"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    iget v0, p0, Lar/com/hjg/pngj/d;->f:I

    if-gez v0, :cond_0

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lar/com/hjg/pngj/d;->f:I

    .line 84
    :goto_0
    return-void

    .line 60
    :cond_0
    new-instance v0, Lar/com/hjg/pngj/PngjInputException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected chunk "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjInputException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_1
    const-string v0, "PLTE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 62
    iget v0, p0, Lar/com/hjg/pngj/d;->f:I

    if-eqz v0, :cond_2

    iget v0, p0, Lar/com/hjg/pngj/d;->f:I

    if-ne v0, v1, :cond_3

    .line 63
    :cond_2
    const/4 v0, 0x2

    iput v0, p0, Lar/com/hjg/pngj/d;->f:I

    goto :goto_0

    .line 65
    :cond_3
    new-instance v0, Lar/com/hjg/pngj/PngjInputException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected chunk "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjInputException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_4
    const-string v0, "IDAT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 67
    iget v0, p0, Lar/com/hjg/pngj/d;->f:I

    if-ltz v0, :cond_5

    iget v0, p0, Lar/com/hjg/pngj/d;->f:I

    if-gt v0, v2, :cond_5

    .line 68
    iput v2, p0, Lar/com/hjg/pngj/d;->f:I

    goto :goto_0

    .line 70
    :cond_5
    new-instance v0, Lar/com/hjg/pngj/PngjInputException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected chunk "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjInputException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_6
    const-string v0, "IEND"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 72
    iget v0, p0, Lar/com/hjg/pngj/d;->f:I

    if-lt v0, v2, :cond_7

    .line 73
    const/4 v0, 0x6

    iput v0, p0, Lar/com/hjg/pngj/d;->f:I

    goto/16 :goto_0

    .line 75
    :cond_7
    new-instance v0, Lar/com/hjg/pngj/PngjInputException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected chunk "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjInputException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_8
    iget v0, p0, Lar/com/hjg/pngj/d;->f:I

    if-gt v0, v1, :cond_9

    .line 78
    iput v1, p0, Lar/com/hjg/pngj/d;->f:I

    goto/16 :goto_0

    .line 79
    :cond_9
    iget v0, p0, Lar/com/hjg/pngj/d;->f:I

    if-gt v0, v3, :cond_a

    .line 80
    iput v3, p0, Lar/com/hjg/pngj/d;->f:I

    goto/16 :goto_0

    .line 82
    :cond_a
    const/4 v0, 0x5

    iput v0, p0, Lar/com/hjg/pngj/d;->f:I

    goto/16 :goto_0
.end method


# virtual methods
.method public A()Lar/com/hjg/pngj/s;
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lar/com/hjg/pngj/d;->d:Lar/com/hjg/pngj/s;

    return-object v0
.end method

.method public a([BII)I
    .locals 1
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 187
    invoke-super {p0, p1, p2, p3}, Lar/com/hjg/pngj/c;->a([BII)I

    move-result v0

    return v0
.end method

.method protected a(ILjava/lang/String;J)V
    .locals 1
    .param p1, "len"    # I
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "offset"    # J

    .prologue
    .line 221
    invoke-direct {p0, p2}, Lar/com/hjg/pngj/d;->f(Ljava/lang/String;)V

    .line 222
    invoke-super {p0, p1, p2, p3, p4}, Lar/com/hjg/pngj/c;->a(ILjava/lang/String;J)V

    .line 223
    return-void
.end method

.method public a(J)V
    .locals 1
    .param p1, "maxTotalBytesRead"    # J

    .prologue
    .line 237
    iput-wide p1, p0, Lar/com/hjg/pngj/d;->m:J

    .line 238
    return-void
.end method

.method protected a(Lar/com/hjg/pngj/ChunkReader;)V
    .locals 6
    .param p1, "chunkR"    # Lar/com/hjg/pngj/ChunkReader;

    .prologue
    .line 142
    invoke-super {p0, p1}, Lar/com/hjg/pngj/c;->a(Lar/com/hjg/pngj/ChunkReader;)V

    .line 143
    invoke-virtual {p1}, Lar/com/hjg/pngj/ChunkReader;->a()Lar/com/hjg/pngj/chunks/e;

    move-result-object v2

    iget-object v2, v2, Lar/com/hjg/pngj/chunks/e;->c:Ljava/lang/String;

    const-string v3, "IHDR"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 144
    new-instance v0, Lar/com/hjg/pngj/chunks/r;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lar/com/hjg/pngj/chunks/r;-><init>(Lar/com/hjg/pngj/s;)V

    .line 145
    .local v0, "ch":Lar/com/hjg/pngj/chunks/r;
    invoke-virtual {p1}, Lar/com/hjg/pngj/ChunkReader;->a()Lar/com/hjg/pngj/chunks/e;

    move-result-object v2

    invoke-virtual {v0, v2}, Lar/com/hjg/pngj/chunks/r;->a(Lar/com/hjg/pngj/chunks/e;)V

    .line 146
    invoke-virtual {v0}, Lar/com/hjg/pngj/chunks/r;->r()Lar/com/hjg/pngj/s;

    move-result-object v2

    iput-object v2, p0, Lar/com/hjg/pngj/d;->a:Lar/com/hjg/pngj/s;

    .line 147
    iget-object v2, p0, Lar/com/hjg/pngj/d;->a:Lar/com/hjg/pngj/s;

    iput-object v2, p0, Lar/com/hjg/pngj/d;->d:Lar/com/hjg/pngj/s;

    .line 148
    invoke-virtual {v0}, Lar/com/hjg/pngj/chunks/r;->q()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 149
    new-instance v2, Lar/com/hjg/pngj/h;

    iget-object v3, p0, Lar/com/hjg/pngj/d;->d:Lar/com/hjg/pngj/s;

    invoke-direct {v2, v3}, Lar/com/hjg/pngj/h;-><init>(Lar/com/hjg/pngj/s;)V

    iput-object v2, p0, Lar/com/hjg/pngj/d;->e:Lar/com/hjg/pngj/h;

    .line 150
    :cond_0
    new-instance v2, Lar/com/hjg/pngj/chunks/f;

    iget-object v3, p0, Lar/com/hjg/pngj/d;->a:Lar/com/hjg/pngj/s;

    invoke-direct {v2, v3}, Lar/com/hjg/pngj/chunks/f;-><init>(Lar/com/hjg/pngj/s;)V

    iput-object v2, p0, Lar/com/hjg/pngj/d;->g:Lar/com/hjg/pngj/chunks/f;

    .line 152
    .end local v0    # "ch":Lar/com/hjg/pngj/chunks/r;
    :cond_1
    iget-object v2, p1, Lar/com/hjg/pngj/ChunkReader;->a:Lar/com/hjg/pngj/ChunkReader$ChunkReaderMode;

    sget-object v3, Lar/com/hjg/pngj/ChunkReader$ChunkReaderMode;->BUFFER:Lar/com/hjg/pngj/ChunkReader$ChunkReaderMode;

    if-ne v2, v3, :cond_2

    invoke-virtual {p1}, Lar/com/hjg/pngj/ChunkReader;->a()Lar/com/hjg/pngj/chunks/e;

    move-result-object v2

    iget-object v2, v2, Lar/com/hjg/pngj/chunks/e;->c:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lar/com/hjg/pngj/d;->e(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 153
    iget-wide v2, p0, Lar/com/hjg/pngj/d;->i:J

    invoke-virtual {p1}, Lar/com/hjg/pngj/ChunkReader;->a()Lar/com/hjg/pngj/chunks/e;

    move-result-object v4

    iget v4, v4, Lar/com/hjg/pngj/chunks/e;->a:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lar/com/hjg/pngj/d;->i:J

    .line 155
    :cond_2
    iget-object v2, p1, Lar/com/hjg/pngj/ChunkReader;->a:Lar/com/hjg/pngj/ChunkReader$ChunkReaderMode;

    sget-object v3, Lar/com/hjg/pngj/ChunkReader$ChunkReaderMode;->BUFFER:Lar/com/hjg/pngj/ChunkReader$ChunkReaderMode;

    if-eq v2, v3, :cond_3

    iget-boolean v2, p0, Lar/com/hjg/pngj/d;->k:Z

    if-eqz v2, :cond_4

    .line 156
    :cond_3
    iget-object v2, p0, Lar/com/hjg/pngj/d;->p:Lar/com/hjg/pngj/j;

    invoke-virtual {p1}, Lar/com/hjg/pngj/ChunkReader;->a()Lar/com/hjg/pngj/chunks/e;

    move-result-object v3

    invoke-virtual {p0}, Lar/com/hjg/pngj/d;->q()Lar/com/hjg/pngj/s;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lar/com/hjg/pngj/j;->a(Lar/com/hjg/pngj/chunks/e;Lar/com/hjg/pngj/s;)Lar/com/hjg/pngj/chunks/PngChunk;

    move-result-object v1

    .line 157
    .local v1, "chunk":Lar/com/hjg/pngj/chunks/PngChunk;
    iget-object v2, p0, Lar/com/hjg/pngj/d;->g:Lar/com/hjg/pngj/chunks/f;

    iget v3, p0, Lar/com/hjg/pngj/d;->f:I

    invoke-virtual {v2, v1, v3}, Lar/com/hjg/pngj/chunks/f;->a(Lar/com/hjg/pngj/chunks/PngChunk;I)V

    .line 159
    .end local v1    # "chunk":Lar/com/hjg/pngj/chunks/PngChunk;
    :cond_4
    invoke-virtual {p0}, Lar/com/hjg/pngj/d;->b()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 160
    invoke-virtual {p0}, Lar/com/hjg/pngj/d;->p()V

    .line 162
    :cond_5
    return-void
.end method

.method public a(Lar/com/hjg/pngj/chunks/ChunkLoadBehaviour;)V
    .locals 0
    .param p1, "chunkLoadBehaviour"    # Lar/com/hjg/pngj/chunks/ChunkLoadBehaviour;

    .prologue
    .line 282
    iput-object p1, p0, Lar/com/hjg/pngj/d;->q:Lar/com/hjg/pngj/chunks/ChunkLoadBehaviour;

    .line 283
    return-void
.end method

.method public a(Lar/com/hjg/pngj/j;)V
    .locals 0
    .param p1, "chunkFactory"    # Lar/com/hjg/pngj/j;

    .prologue
    .line 197
    iput-object p1, p0, Lar/com/hjg/pngj/d;->p:Lar/com/hjg/pngj/j;

    .line 198
    return-void
.end method

.method public a(Lar/com/hjg/pngj/s;)V
    .locals 2
    .param p1, "iminfo"    # Lar/com/hjg/pngj/s;

    .prologue
    .line 290
    iget-object v0, p0, Lar/com/hjg/pngj/d;->d:Lar/com/hjg/pngj/s;

    invoke-virtual {p1, v0}, Lar/com/hjg/pngj/s;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 291
    iput-object p1, p0, Lar/com/hjg/pngj/d;->d:Lar/com/hjg/pngj/s;

    .line 293
    :cond_0
    iget-object v0, p0, Lar/com/hjg/pngj/d;->e:Lar/com/hjg/pngj/h;

    if-eqz v0, :cond_1

    .line 294
    new-instance v0, Lar/com/hjg/pngj/h;

    iget-object v1, p0, Lar/com/hjg/pngj/d;->d:Lar/com/hjg/pngj/s;

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/h;-><init>(Lar/com/hjg/pngj/s;)V

    iput-object v0, p0, Lar/com/hjg/pngj/d;->e:Lar/com/hjg/pngj/h;

    .line 295
    :cond_1
    return-void
.end method

.method public a(Z)V
    .locals 0
    .param p1, "checkCrc"    # Z

    .prologue
    .line 270
    iput-boolean p1, p0, Lar/com/hjg/pngj/d;->j:Z

    .line 271
    return-void
.end method

.method public varargs a([Ljava/lang/String;)V
    .locals 5
    .param p1, "chunksToSkip"    # [Ljava/lang/String;

    .prologue
    .line 123
    iget-object v4, p0, Lar/com/hjg/pngj/d;->l:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->clear()V

    .line 124
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 125
    .local v1, "c":Ljava/lang/String;
    iget-object v4, p0, Lar/com/hjg/pngj/d;->l:Ljava/util/Set;

    invoke-interface {v4, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 124
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 126
    .end local v1    # "c":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method protected a(ILjava/lang/String;)Z
    .locals 1
    .param p1, "len"    # I
    .param p2, "id"    # Ljava/lang/String;

    .prologue
    .line 262
    iget-boolean v0, p0, Lar/com/hjg/pngj/d;->j:Z

    return v0
.end method

.method protected a(Ljava/lang/String;)Z
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 182
    const-string v0, "IDAT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected b(Ljava/lang/String;)Lar/com/hjg/pngj/g;
    .locals 3
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 170
    new-instance v0, Lar/com/hjg/pngj/r;

    invoke-virtual {p0}, Lar/com/hjg/pngj/d;->A()Lar/com/hjg/pngj/s;

    move-result-object v1

    iget-object v2, p0, Lar/com/hjg/pngj/d;->e:Lar/com/hjg/pngj/h;

    invoke-direct {v0, p1, v1, v2}, Lar/com/hjg/pngj/r;-><init>(Ljava/lang/String;Lar/com/hjg/pngj/s;Lar/com/hjg/pngj/h;)V

    .line 171
    .local v0, "ids":Lar/com/hjg/pngj/r;
    iget-boolean v1, p0, Lar/com/hjg/pngj/d;->h:Z

    invoke-virtual {v0, v1}, Lar/com/hjg/pngj/r;->a(Z)V

    .line 172
    return-object v0
.end method

.method public b(J)V
    .locals 1
    .param p1, "skipChunkMaxSize"    # J

    .prologue
    .line 245
    iput-wide p1, p0, Lar/com/hjg/pngj/d;->n:J

    .line 246
    return-void
.end method

.method public b(Z)V
    .locals 0
    .param p1, "includeNonBufferedChunks"    # Z

    .prologue
    .line 308
    iput-boolean p1, p0, Lar/com/hjg/pngj/d;->k:Z

    .line 309
    return-void
.end method

.method public b(ILjava/lang/String;)Z
    .locals 8
    .param p1, "len"    # I
    .param p2, "id"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const-wide/16 v6, 0x0

    const/4 v0, 0x1

    .line 88
    invoke-super {p0, p1, p2}, Lar/com/hjg/pngj/c;->b(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 111
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    .line 90
    :cond_1
    invoke-static {p2}, Lar/com/hjg/pngj/chunks/c;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 91
    goto :goto_0

    .line 92
    :cond_2
    iget-wide v2, p0, Lar/com/hjg/pngj/d;->m:J

    cmp-long v2, v2, v6

    if-lez v2, :cond_3

    int-to-long v2, p1

    invoke-virtual {p0}, Lar/com/hjg/pngj/d;->c()J

    move-result-wide v4

    add-long/2addr v2, v4

    iget-wide v4, p0, Lar/com/hjg/pngj/d;->m:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    .line 93
    new-instance v0, Lar/com/hjg/pngj/PngjInputException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Maximum total bytes to read exceeeded: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lar/com/hjg/pngj/d;->m:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " offset:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lar/com/hjg/pngj/d;->c()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " len="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjInputException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_3
    iget-object v2, p0, Lar/com/hjg/pngj/d;->l:Ljava/util/Set;

    invoke-interface {v2, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 97
    iget-wide v2, p0, Lar/com/hjg/pngj/d;->n:J

    cmp-long v2, v2, v6

    if-lez v2, :cond_4

    int-to-long v2, p1

    iget-wide v4, p0, Lar/com/hjg/pngj/d;->n:J

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    .line 99
    :cond_4
    iget-wide v2, p0, Lar/com/hjg/pngj/d;->o:J

    cmp-long v2, v2, v6

    if-lez v2, :cond_5

    int-to-long v2, p1

    iget-wide v4, p0, Lar/com/hjg/pngj/d;->o:J

    iget-wide v6, p0, Lar/com/hjg/pngj/d;->i:J

    sub-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    .line 101
    :cond_5
    sget-object v2, Lar/com/hjg/pngj/d$1;->a:[I

    iget-object v3, p0, Lar/com/hjg/pngj/d;->q:Lar/com/hjg/pngj/chunks/ChunkLoadBehaviour;

    invoke-virtual {v3}, Lar/com/hjg/pngj/chunks/ChunkLoadBehaviour;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :cond_6
    move v0, v1

    .line 111
    goto/16 :goto_0

    .line 103
    :pswitch_1
    invoke-static {p2}, Lar/com/hjg/pngj/chunks/c;->e(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    goto/16 :goto_0

    .line 101
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public c(J)V
    .locals 1
    .param p1, "maxBytesMetadata"    # J

    .prologue
    .line 253
    iput-wide p1, p0, Lar/com/hjg/pngj/d;->o:J

    .line 254
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1
    .param p1, "chunkToSkip"    # Ljava/lang/String;

    .prologue
    .line 129
    iget-object v0, p0, Lar/com/hjg/pngj/d;->l:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 130
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 1
    .param p1, "chunkToSkip"    # Ljava/lang/String;

    .prologue
    .line 133
    iget-object v0, p0, Lar/com/hjg/pngj/d;->l:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 134
    return-void
.end method

.method protected e(Ljava/lang/String;)Z
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 165
    invoke-static {p1}, Lar/com/hjg/pngj/chunks/c;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()V
    .locals 2

    .prologue
    const/4 v1, 0x6

    .line 227
    iget v0, p0, Lar/com/hjg/pngj/d;->f:I

    if-eq v0, v1, :cond_0

    .line 228
    iput v1, p0, Lar/com/hjg/pngj/d;->f:I

    .line 229
    :cond_0
    invoke-super {p0}, Lar/com/hjg/pngj/c;->g()V

    .line 230
    return-void
.end method

.method public l()J
    .locals 2

    .prologue
    .line 115
    iget-wide v0, p0, Lar/com/hjg/pngj/d;->i:J

    return-wide v0
.end method

.method public m()I
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Lar/com/hjg/pngj/d;->f:I

    return v0
.end method

.method public n()Z
    .locals 2

    .prologue
    .line 137
    invoke-virtual {p0}, Lar/com/hjg/pngj/d;->m()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public o()Lar/com/hjg/pngj/r;
    .locals 2

    .prologue
    .line 176
    invoke-virtual {p0}, Lar/com/hjg/pngj/d;->f()Lar/com/hjg/pngj/g;

    move-result-object v0

    .line 177
    .local v0, "c":Lar/com/hjg/pngj/g;
    instance-of v1, v0, Lar/com/hjg/pngj/r;

    if-eqz v1, :cond_0

    check-cast v0, Lar/com/hjg/pngj/r;

    .end local v0    # "c":Lar/com/hjg/pngj/g;
    :goto_0
    return-object v0

    .restart local v0    # "c":Lar/com/hjg/pngj/g;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected p()V
    .locals 0

    .prologue
    .line 205
    return-void
.end method

.method public q()Lar/com/hjg/pngj/s;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lar/com/hjg/pngj/d;->a:Lar/com/hjg/pngj/s;

    return-object v0
.end method

.method public r()Z
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lar/com/hjg/pngj/d;->e:Lar/com/hjg/pngj/h;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public s()Lar/com/hjg/pngj/h;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lar/com/hjg/pngj/d;->e:Lar/com/hjg/pngj/h;

    return-object v0
.end method

.method public t()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lar/com/hjg/pngj/chunks/PngChunk;",
            ">;"
        }
    .end annotation

    .prologue
    .line 233
    iget-object v0, p0, Lar/com/hjg/pngj/d;->g:Lar/com/hjg/pngj/chunks/f;

    invoke-virtual {v0}, Lar/com/hjg/pngj/chunks/f;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public u()J
    .locals 2

    .prologue
    .line 241
    iget-wide v0, p0, Lar/com/hjg/pngj/d;->n:J

    return-wide v0
.end method

.method public v()J
    .locals 2

    .prologue
    .line 249
    iget-wide v0, p0, Lar/com/hjg/pngj/d;->o:J

    return-wide v0
.end method

.method public w()J
    .locals 2

    .prologue
    .line 257
    iget-wide v0, p0, Lar/com/hjg/pngj/d;->m:J

    return-wide v0
.end method

.method public x()Z
    .locals 1

    .prologue
    .line 266
    iget-boolean v0, p0, Lar/com/hjg/pngj/d;->j:Z

    return v0
.end method

.method public y()Z
    .locals 1

    .prologue
    .line 274
    iget-boolean v0, p0, Lar/com/hjg/pngj/d;->h:Z

    return v0
.end method

.method public z()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 278
    iget-object v0, p0, Lar/com/hjg/pngj/d;->l:Ljava/util/Set;

    return-object v0
.end method
