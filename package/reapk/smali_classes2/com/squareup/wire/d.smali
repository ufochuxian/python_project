.class public final Lcom/squareup/wire/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:I = 0x3

.field private static final b:I = 0x41

.field private static final c:I = 0x7

.field private static final d:I = 0x0

.field private static final e:I = 0x1

.field private static final f:I = 0x2

.field private static final g:I = 0x3

.field private static final h:I = 0x4

.field private static final i:I = 0x5

.field private static final j:I = 0x6

.field private static final k:I = 0x7


# instance fields
.field private final l:Lokio/e;

.field private m:J

.field private n:J

.field private o:I

.field private p:I

.field private q:I

.field private r:J

.field private s:Lcom/squareup/wire/FieldEncoding;


# direct methods
.method public constructor <init>(Lokio/e;)V
    .locals 2
    .param p1, "source"    # Lokio/e;

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/squareup/wire/d;->m:J

    .line 67
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/squareup/wire/d;->n:J

    .line 71
    const/4 v0, 0x2

    iput v0, p0, Lcom/squareup/wire/d;->p:I

    .line 73
    const/4 v0, -0x1

    iput v0, p0, Lcom/squareup/wire/d;->q:I

    .line 75
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/squareup/wire/d;->r:J

    .line 80
    iput-object p1, p0, Lcom/squareup/wire/d;->l:Lokio/e;

    .line 81
    return-void
.end method

.method private a(I)V
    .locals 8
    .param p1, "expectedEndTag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 217
    :goto_0
    iget-wide v4, p0, Lcom/squareup/wire/d;->m:J

    iget-wide v6, p0, Lcom/squareup/wire/d;->n:J

    cmp-long v4, v4, v6

    if-gez v4, :cond_2

    iget-object v4, p0, Lcom/squareup/wire/d;->l:Lokio/e;

    invoke-interface {v4}, Lokio/e;->f()Z

    move-result v4

    if-nez v4, :cond_2

    .line 218
    invoke-direct {p0}, Lcom/squareup/wire/d;->k()I

    move-result v3

    .line 219
    .local v3, "tagAndFieldEncoding":I
    if-nez v3, :cond_0

    new-instance v4, Ljava/net/ProtocolException;

    const-string v5, "Unexpected tag 0"

    invoke-direct {v4, v5}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 220
    :cond_0
    shr-int/lit8 v2, v3, 0x3

    .line 221
    .local v2, "tag":I
    and-int/lit8 v0, v3, 0x7

    .line 222
    .local v0, "groupOrFieldEncoding":I
    packed-switch v0, :pswitch_data_0

    .line 247
    new-instance v4, Ljava/net/ProtocolException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected field encoding: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 224
    :pswitch_0
    invoke-direct {p0, v2}, Lcom/squareup/wire/d;->a(I)V

    goto :goto_0

    .line 227
    :pswitch_1
    if-ne v2, p1, :cond_1

    return-void

    .line 228
    :cond_1
    new-instance v4, Ljava/net/ProtocolException;

    const-string v5, "Unexpected end group"

    invoke-direct {v4, v5}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 230
    :pswitch_2
    invoke-direct {p0}, Lcom/squareup/wire/d;->k()I

    move-result v1

    .line 231
    .local v1, "length":I
    iget-wide v4, p0, Lcom/squareup/wire/d;->m:J

    int-to-long v6, v1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/squareup/wire/d;->m:J

    .line 232
    iget-object v4, p0, Lcom/squareup/wire/d;->l:Lokio/e;

    int-to-long v6, v1

    invoke-interface {v4, v6, v7}, Lokio/e;->h(J)V

    goto :goto_0

    .line 235
    .end local v1    # "length":I
    :pswitch_3
    const/4 v4, 0x0

    iput v4, p0, Lcom/squareup/wire/d;->p:I

    .line 236
    invoke-virtual {p0}, Lcom/squareup/wire/d;->h()J

    goto :goto_0

    .line 239
    :pswitch_4
    const/4 v4, 0x1

    iput v4, p0, Lcom/squareup/wire/d;->p:I

    .line 240
    invoke-virtual {p0}, Lcom/squareup/wire/d;->j()J

    goto :goto_0

    .line 243
    :pswitch_5
    const/4 v4, 0x5

    iput v4, p0, Lcom/squareup/wire/d;->p:I

    .line 244
    invoke-virtual {p0}, Lcom/squareup/wire/d;->i()I

    goto :goto_0

    .line 250
    .end local v0    # "groupOrFieldEncoding":I
    .end local v2    # "tag":I
    .end local v3    # "tagAndFieldEncoding":I
    :cond_2
    new-instance v4, Ljava/io/EOFException;

    invoke-direct {v4}, Ljava/io/EOFException;-><init>()V

    throw v4

    .line 222
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_5
    .end packed-switch
.end method

.method private b(I)V
    .locals 5
    .param p1, "fieldEncoding"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x6

    .line 366
    iget v0, p0, Lcom/squareup/wire/d;->p:I

    if-ne v0, p1, :cond_0

    .line 367
    iput v4, p0, Lcom/squareup/wire/d;->p:I

    .line 380
    :goto_0
    return-void

    .line 369
    :cond_0
    iget-wide v0, p0, Lcom/squareup/wire/d;->m:J

    iget-wide v2, p0, Lcom/squareup/wire/d;->n:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 370
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected to end at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/squareup/wire/d;->n:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/squareup/wire/d;->m:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 371
    :cond_1
    iget-wide v0, p0, Lcom/squareup/wire/d;->m:J

    iget-wide v2, p0, Lcom/squareup/wire/d;->n:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 373
    iget-wide v0, p0, Lcom/squareup/wire/d;->r:J

    iput-wide v0, p0, Lcom/squareup/wire/d;->n:J

    .line 374
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/squareup/wire/d;->r:J

    .line 375
    iput v4, p0, Lcom/squareup/wire/d;->p:I

    goto :goto_0

    .line 377
    :cond_2
    const/4 v0, 0x7

    iput v0, p0, Lcom/squareup/wire/d;->p:I

    goto :goto_0
.end method

.method private k()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x1

    .line 282
    iget-wide v4, p0, Lcom/squareup/wire/d;->m:J

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/squareup/wire/d;->m:J

    .line 283
    iget-object v3, p0, Lcom/squareup/wire/d;->l:Lokio/e;

    invoke-interface {v3}, Lokio/e;->i()B

    move-result v2

    .line 284
    .local v2, "tmp":B
    if-ltz v2, :cond_1

    move v1, v2

    .line 318
    :cond_0
    :goto_0
    return v1

    .line 287
    :cond_1
    and-int/lit8 v1, v2, 0x7f

    .line 288
    .local v1, "result":I
    iget-wide v4, p0, Lcom/squareup/wire/d;->m:J

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/squareup/wire/d;->m:J

    .line 289
    iget-object v3, p0, Lcom/squareup/wire/d;->l:Lokio/e;

    invoke-interface {v3}, Lokio/e;->i()B

    move-result v2

    if-ltz v2, :cond_2

    .line 290
    shl-int/lit8 v3, v2, 0x7

    or-int/2addr v1, v3

    goto :goto_0

    .line 292
    :cond_2
    and-int/lit8 v3, v2, 0x7f

    shl-int/lit8 v3, v3, 0x7

    or-int/2addr v1, v3

    .line 293
    iget-wide v4, p0, Lcom/squareup/wire/d;->m:J

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/squareup/wire/d;->m:J

    .line 294
    iget-object v3, p0, Lcom/squareup/wire/d;->l:Lokio/e;

    invoke-interface {v3}, Lokio/e;->i()B

    move-result v2

    if-ltz v2, :cond_3

    .line 295
    shl-int/lit8 v3, v2, 0xe

    or-int/2addr v1, v3

    goto :goto_0

    .line 297
    :cond_3
    and-int/lit8 v3, v2, 0x7f

    shl-int/lit8 v3, v3, 0xe

    or-int/2addr v1, v3

    .line 298
    iget-wide v4, p0, Lcom/squareup/wire/d;->m:J

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/squareup/wire/d;->m:J

    .line 299
    iget-object v3, p0, Lcom/squareup/wire/d;->l:Lokio/e;

    invoke-interface {v3}, Lokio/e;->i()B

    move-result v2

    if-ltz v2, :cond_4

    .line 300
    shl-int/lit8 v3, v2, 0x15

    or-int/2addr v1, v3

    goto :goto_0

    .line 302
    :cond_4
    and-int/lit8 v3, v2, 0x7f

    shl-int/lit8 v3, v3, 0x15

    or-int/2addr v1, v3

    .line 303
    iget-wide v4, p0, Lcom/squareup/wire/d;->m:J

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/squareup/wire/d;->m:J

    .line 304
    iget-object v3, p0, Lcom/squareup/wire/d;->l:Lokio/e;

    invoke-interface {v3}, Lokio/e;->i()B

    move-result v2

    shl-int/lit8 v3, v2, 0x1c

    or-int/2addr v1, v3

    .line 305
    if-gez v2, :cond_0

    .line 307
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/4 v3, 0x5

    if-ge v0, v3, :cond_5

    .line 308
    iget-wide v4, p0, Lcom/squareup/wire/d;->m:J

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/squareup/wire/d;->m:J

    .line 309
    iget-object v3, p0, Lcom/squareup/wire/d;->l:Lokio/e;

    invoke-interface {v3}, Lokio/e;->i()B

    move-result v3

    if-gez v3, :cond_0

    .line 307
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 313
    :cond_5
    new-instance v3, Ljava/net/ProtocolException;

    const-string v4, "Malformed VARINT"

    invoke-direct {v3, v4}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private l()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 383
    iget v2, p0, Lcom/squareup/wire/d;->p:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 384
    new-instance v2, Ljava/net/ProtocolException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected LENGTH_DELIMITED but was "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/squareup/wire/d;->p:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 386
    :cond_0
    iget-wide v2, p0, Lcom/squareup/wire/d;->n:J

    iget-wide v4, p0, Lcom/squareup/wire/d;->m:J

    sub-long v0, v2, v4

    .line 387
    .local v0, "byteCount":J
    iget-object v2, p0, Lcom/squareup/wire/d;->l:Lokio/e;

    invoke-interface {v2, v0, v1}, Lokio/e;->a(J)V

    .line 388
    const/4 v2, 0x6

    iput v2, p0, Lcom/squareup/wire/d;->p:I

    .line 390
    iget-wide v2, p0, Lcom/squareup/wire/d;->n:J

    iput-wide v2, p0, Lcom/squareup/wire/d;->m:J

    .line 391
    iget-wide v2, p0, Lcom/squareup/wire/d;->r:J

    iput-wide v2, p0, Lcom/squareup/wire/d;->n:J

    .line 392
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/squareup/wire/d;->r:J

    .line 393
    return-wide v0
.end method


# virtual methods
.method public a()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 89
    iget v2, p0, Lcom/squareup/wire/d;->p:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 90
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Unexpected call to beginMessage()"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 92
    :cond_0
    iget v2, p0, Lcom/squareup/wire/d;->o:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/squareup/wire/d;->o:I

    const/16 v3, 0x41

    if-le v2, v3, :cond_1

    .line 93
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Wire recursion limit exceeded"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 97
    :cond_1
    iget-wide v0, p0, Lcom/squareup/wire/d;->r:J

    .line 98
    .local v0, "token":J
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/squareup/wire/d;->r:J

    .line 99
    const/4 v2, 0x6

    iput v2, p0, Lcom/squareup/wire/d;->p:I

    .line 100
    return-wide v0
.end method

.method public a(J)V
    .locals 5
    .param p1, "token"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 110
    iget v0, p0, Lcom/squareup/wire/d;->p:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    .line 111
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected call to endMessage()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_0
    iget v0, p0, Lcom/squareup/wire/d;->o:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/squareup/wire/d;->o:I

    if-ltz v0, :cond_1

    iget-wide v0, p0, Lcom/squareup/wire/d;->r:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 114
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No corresponding call to beginMessage()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_2
    iget-wide v0, p0, Lcom/squareup/wire/d;->m:J

    iget-wide v2, p0, Lcom/squareup/wire/d;->n:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/squareup/wire/d;->o:I

    if-eqz v0, :cond_3

    .line 117
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected to end at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/squareup/wire/d;->n:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/squareup/wire/d;->m:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_3
    iput-wide p1, p0, Lcom/squareup/wire/d;->n:J

    .line 120
    return-void
.end method

.method public b()I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x2

    .line 128
    iget v3, p0, Lcom/squareup/wire/d;->p:I

    const/4 v4, 0x7

    if-ne v3, v4, :cond_0

    .line 129
    iput v8, p0, Lcom/squareup/wire/d;->p:I

    .line 130
    iget v3, p0, Lcom/squareup/wire/d;->q:I

    .line 180
    :goto_0
    return v3

    .line 131
    :cond_0
    iget v3, p0, Lcom/squareup/wire/d;->p:I

    const/4 v4, 0x6

    if-eq v3, v4, :cond_1

    .line 132
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Unexpected call to nextTag()"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 143
    .local v0, "groupOrFieldEncoding":I
    .local v2, "tagAndFieldEncoding":I
    :pswitch_0
    iget v3, p0, Lcom/squareup/wire/d;->q:I

    invoke-direct {p0, v3}, Lcom/squareup/wire/d;->a(I)V

    .line 135
    .end local v0    # "groupOrFieldEncoding":I
    .end local v2    # "tagAndFieldEncoding":I
    :cond_1
    iget-wide v4, p0, Lcom/squareup/wire/d;->m:J

    iget-wide v6, p0, Lcom/squareup/wire/d;->n:J

    cmp-long v3, v4, v6

    if-gez v3, :cond_6

    iget-object v3, p0, Lcom/squareup/wire/d;->l:Lokio/e;

    invoke-interface {v3}, Lokio/e;->f()Z

    move-result v3

    if-nez v3, :cond_6

    .line 136
    invoke-direct {p0}, Lcom/squareup/wire/d;->k()I

    move-result v2

    .line 137
    .restart local v2    # "tagAndFieldEncoding":I
    if-nez v2, :cond_2

    new-instance v3, Ljava/net/ProtocolException;

    const-string v4, "Unexpected tag 0"

    invoke-direct {v3, v4}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 139
    :cond_2
    shr-int/lit8 v3, v2, 0x3

    iput v3, p0, Lcom/squareup/wire/d;->q:I

    .line 140
    and-int/lit8 v0, v2, 0x7

    .line 141
    .restart local v0    # "groupOrFieldEncoding":I
    packed-switch v0, :pswitch_data_0

    .line 177
    new-instance v3, Ljava/net/ProtocolException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected field encoding: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 147
    :pswitch_1
    new-instance v3, Ljava/net/ProtocolException;

    const-string v4, "Unexpected end group"

    invoke-direct {v3, v4}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 150
    :pswitch_2
    sget-object v3, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    iput-object v3, p0, Lcom/squareup/wire/d;->s:Lcom/squareup/wire/FieldEncoding;

    .line 151
    iput v8, p0, Lcom/squareup/wire/d;->p:I

    .line 152
    invoke-direct {p0}, Lcom/squareup/wire/d;->k()I

    move-result v1

    .line 153
    .local v1, "length":I
    if-gez v1, :cond_3

    new-instance v3, Ljava/net/ProtocolException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Negative length: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 154
    :cond_3
    iget-wide v4, p0, Lcom/squareup/wire/d;->r:J

    const-wide/16 v6, -0x1

    cmp-long v3, v4, v6

    if-eqz v3, :cond_4

    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    throw v3

    .line 156
    :cond_4
    iget-wide v4, p0, Lcom/squareup/wire/d;->n:J

    iput-wide v4, p0, Lcom/squareup/wire/d;->r:J

    .line 157
    iget-wide v4, p0, Lcom/squareup/wire/d;->m:J

    int-to-long v6, v1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/squareup/wire/d;->n:J

    .line 158
    iget-wide v4, p0, Lcom/squareup/wire/d;->n:J

    iget-wide v6, p0, Lcom/squareup/wire/d;->r:J

    cmp-long v3, v4, v6

    if-lez v3, :cond_5

    new-instance v3, Ljava/io/EOFException;

    invoke-direct {v3}, Ljava/io/EOFException;-><init>()V

    throw v3

    .line 159
    :cond_5
    iget v3, p0, Lcom/squareup/wire/d;->q:I

    goto/16 :goto_0

    .line 162
    .end local v1    # "length":I
    :pswitch_3
    sget-object v3, Lcom/squareup/wire/FieldEncoding;->VARINT:Lcom/squareup/wire/FieldEncoding;

    iput-object v3, p0, Lcom/squareup/wire/d;->s:Lcom/squareup/wire/FieldEncoding;

    .line 163
    const/4 v3, 0x0

    iput v3, p0, Lcom/squareup/wire/d;->p:I

    .line 164
    iget v3, p0, Lcom/squareup/wire/d;->q:I

    goto/16 :goto_0

    .line 167
    :pswitch_4
    sget-object v3, Lcom/squareup/wire/FieldEncoding;->FIXED64:Lcom/squareup/wire/FieldEncoding;

    iput-object v3, p0, Lcom/squareup/wire/d;->s:Lcom/squareup/wire/FieldEncoding;

    .line 168
    const/4 v3, 0x1

    iput v3, p0, Lcom/squareup/wire/d;->p:I

    .line 169
    iget v3, p0, Lcom/squareup/wire/d;->q:I

    goto/16 :goto_0

    .line 172
    :pswitch_5
    sget-object v3, Lcom/squareup/wire/FieldEncoding;->FIXED32:Lcom/squareup/wire/FieldEncoding;

    iput-object v3, p0, Lcom/squareup/wire/d;->s:Lcom/squareup/wire/FieldEncoding;

    .line 173
    const/4 v3, 0x5

    iput v3, p0, Lcom/squareup/wire/d;->p:I

    .line 174
    iget v3, p0, Lcom/squareup/wire/d;->q:I

    goto/16 :goto_0

    .line 180
    .end local v0    # "groupOrFieldEncoding":I
    .end local v2    # "tagAndFieldEncoding":I
    :cond_6
    const/4 v3, -0x1

    goto/16 :goto_0

    .line 141
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_5
    .end packed-switch
.end method

.method public c()Lcom/squareup/wire/FieldEncoding;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 188
    iget-object v0, p0, Lcom/squareup/wire/d;->s:Lcom/squareup/wire/FieldEncoding;

    return-object v0
.end method

.method public d()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 196
    iget v2, p0, Lcom/squareup/wire/d;->p:I

    packed-switch v2, :pswitch_data_0

    .line 211
    :pswitch_0
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Unexpected call to skip()"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 198
    :pswitch_1
    invoke-direct {p0}, Lcom/squareup/wire/d;->l()J

    move-result-wide v0

    .line 199
    .local v0, "byteCount":J
    iget-object v2, p0, Lcom/squareup/wire/d;->l:Lokio/e;

    invoke-interface {v2, v0, v1}, Lokio/e;->h(J)V

    .line 213
    .end local v0    # "byteCount":J
    :goto_0
    return-void

    .line 202
    :pswitch_2
    invoke-virtual {p0}, Lcom/squareup/wire/d;->h()J

    goto :goto_0

    .line 205
    :pswitch_3
    invoke-virtual {p0}, Lcom/squareup/wire/d;->j()J

    goto :goto_0

    .line 208
    :pswitch_4
    invoke-virtual {p0}, Lcom/squareup/wire/d;->i()I

    goto :goto_0

    .line 196
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public e()Lokio/ByteString;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 258
    invoke-direct {p0}, Lcom/squareup/wire/d;->l()J

    move-result-wide v0

    .line 259
    .local v0, "byteCount":J
    iget-object v2, p0, Lcom/squareup/wire/d;->l:Lokio/e;

    invoke-interface {v2, v0, v1}, Lokio/e;->d(J)Lokio/ByteString;

    move-result-object v2

    return-object v2
.end method

.method public f()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 264
    invoke-direct {p0}, Lcom/squareup/wire/d;->l()J

    move-result-wide v0

    .line 265
    .local v0, "byteCount":J
    iget-object v2, p0, Lcom/squareup/wire/d;->l:Lokio/e;

    invoke-interface {v2, v0, v1}, Lokio/e;->e(J)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public g()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 273
    iget v1, p0, Lcom/squareup/wire/d;->p:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/squareup/wire/d;->p:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 274
    new-instance v1, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected VARINT or LENGTH_DELIMITED but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/squareup/wire/d;->p:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 276
    :cond_0
    invoke-direct {p0}, Lcom/squareup/wire/d;->k()I

    move-result v0

    .line 277
    .local v0, "result":I
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/squareup/wire/d;->b(I)V

    .line 278
    return v0
.end method

.method public h()J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 323
    iget v4, p0, Lcom/squareup/wire/d;->p:I

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/squareup/wire/d;->p:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    .line 324
    new-instance v4, Ljava/net/ProtocolException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Expected VARINT or LENGTH_DELIMITED but was "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/squareup/wire/d;->p:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 326
    :cond_0
    const/4 v1, 0x0

    .line 327
    .local v1, "shift":I
    const-wide/16 v2, 0x0

    .line 328
    .local v2, "result":J
    :goto_0
    const/16 v4, 0x40

    if-ge v1, v4, :cond_2

    .line 329
    iget-wide v4, p0, Lcom/squareup/wire/d;->m:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/squareup/wire/d;->m:J

    .line 330
    iget-object v4, p0, Lcom/squareup/wire/d;->l:Lokio/e;

    invoke-interface {v4}, Lokio/e;->i()B

    move-result v0

    .line 331
    .local v0, "b":B
    and-int/lit8 v4, v0, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v1

    or-long/2addr v2, v4

    .line 332
    and-int/lit16 v4, v0, 0x80

    if-nez v4, :cond_1

    .line 333
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/squareup/wire/d;->b(I)V

    .line 334
    return-wide v2

    .line 336
    :cond_1
    add-int/lit8 v1, v1, 0x7

    .line 337
    goto :goto_0

    .line 338
    .end local v0    # "b":B
    :cond_2
    new-instance v4, Ljava/net/ProtocolException;

    const-string v5, "WireInput encountered a malformed varint"

    invoke-direct {v4, v5}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public i()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x4

    const/4 v4, 0x5

    .line 343
    iget v1, p0, Lcom/squareup/wire/d;->p:I

    if-eq v1, v4, :cond_0

    iget v1, p0, Lcom/squareup/wire/d;->p:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 344
    new-instance v1, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected FIXED32 or LENGTH_DELIMITED but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/squareup/wire/d;->p:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 346
    :cond_0
    iget-object v1, p0, Lcom/squareup/wire/d;->l:Lokio/e;

    invoke-interface {v1, v6, v7}, Lokio/e;->a(J)V

    .line 347
    iget-wide v2, p0, Lcom/squareup/wire/d;->m:J

    add-long/2addr v2, v6

    iput-wide v2, p0, Lcom/squareup/wire/d;->m:J

    .line 348
    iget-object v1, p0, Lcom/squareup/wire/d;->l:Lokio/e;

    invoke-interface {v1}, Lokio/e;->n()I

    move-result v0

    .line 349
    .local v0, "result":I
    invoke-direct {p0, v4}, Lcom/squareup/wire/d;->b(I)V

    .line 350
    return v0
.end method

.method public j()J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x8

    const/4 v4, 0x1

    .line 355
    iget v2, p0, Lcom/squareup/wire/d;->p:I

    if-eq v2, v4, :cond_0

    iget v2, p0, Lcom/squareup/wire/d;->p:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 356
    new-instance v2, Ljava/net/ProtocolException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected FIXED64 or LENGTH_DELIMITED but was "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/squareup/wire/d;->p:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 358
    :cond_0
    iget-object v2, p0, Lcom/squareup/wire/d;->l:Lokio/e;

    invoke-interface {v2, v6, v7}, Lokio/e;->a(J)V

    .line 359
    iget-wide v2, p0, Lcom/squareup/wire/d;->m:J

    add-long/2addr v2, v6

    iput-wide v2, p0, Lcom/squareup/wire/d;->m:J

    .line 360
    iget-object v2, p0, Lcom/squareup/wire/d;->l:Lokio/e;

    invoke-interface {v2}, Lokio/e;->o()J

    move-result-wide v0

    .line 361
    .local v0, "result":J
    invoke-direct {p0, v4}, Lcom/squareup/wire/d;->b(I)V

    .line 362
    return-wide v0
.end method
