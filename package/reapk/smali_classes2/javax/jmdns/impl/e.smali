.class public final Ljavax/jmdns/impl/e;
.super Ljavax/jmdns/impl/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/jmdns/impl/e$a;
    }
.end annotation


# static fields
.field public static a:Z = false

.field private static final o:I = 0xc


# instance fields
.field i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private j:I

.field private final k:Ljavax/jmdns/impl/e$a;

.field private final l:Ljavax/jmdns/impl/e$a;

.field private final m:Ljavax/jmdns/impl/e$a;

.field private final n:Ljavax/jmdns/impl/e$a;

.field private p:Ljava/net/InetSocketAddress;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 175
    const/4 v0, 0x1

    sput-boolean v0, Ljavax/jmdns/impl/e;->a:Z

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "flags"    # I

    .prologue
    .line 199
    const/4 v0, 0x1

    const/16 v1, 0x5b4

    invoke-direct {p0, p1, v0, v1}, Ljavax/jmdns/impl/e;-><init>(IZI)V

    .line 200
    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 1
    .param p1, "flags"    # I
    .param p2, "multicast"    # Z

    .prologue
    .line 209
    const/16 v0, 0x5b4

    invoke-direct {p0, p1, p2, v0}, Ljavax/jmdns/impl/e;-><init>(IZI)V

    .line 210
    return-void
.end method

.method public constructor <init>(IZI)V
    .locals 1
    .param p1, "flags"    # I
    .param p2, "multicast"    # Z
    .param p3, "senderUDPPayload"    # I

    .prologue
    .line 221
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Ljavax/jmdns/impl/d;-><init>(IIZ)V

    .line 222
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljavax/jmdns/impl/e;->i:Ljava/util/Map;

    .line 223
    if-lez p3, :cond_0

    move v0, p3

    :goto_0
    iput v0, p0, Ljavax/jmdns/impl/e;->j:I

    .line 224
    new-instance v0, Ljavax/jmdns/impl/e$a;

    invoke-direct {v0, p3, p0}, Ljavax/jmdns/impl/e$a;-><init>(ILjavax/jmdns/impl/e;)V

    iput-object v0, p0, Ljavax/jmdns/impl/e;->k:Ljavax/jmdns/impl/e$a;

    .line 225
    new-instance v0, Ljavax/jmdns/impl/e$a;

    invoke-direct {v0, p3, p0}, Ljavax/jmdns/impl/e$a;-><init>(ILjavax/jmdns/impl/e;)V

    iput-object v0, p0, Ljavax/jmdns/impl/e;->l:Ljavax/jmdns/impl/e$a;

    .line 226
    new-instance v0, Ljavax/jmdns/impl/e$a;

    invoke-direct {v0, p3, p0}, Ljavax/jmdns/impl/e$a;-><init>(ILjavax/jmdns/impl/e;)V

    iput-object v0, p0, Ljavax/jmdns/impl/e;->m:Ljavax/jmdns/impl/e$a;

    .line 227
    new-instance v0, Ljavax/jmdns/impl/e$a;

    invoke-direct {v0, p3, p0}, Ljavax/jmdns/impl/e$a;-><init>(ILjavax/jmdns/impl/e;)V

    iput-object v0, p0, Ljavax/jmdns/impl/e;->n:Ljavax/jmdns/impl/e$a;

    .line 228
    return-void

    .line 223
    :cond_0
    const/16 v0, 0x5b4

    goto :goto_0
.end method


# virtual methods
.method a(Z)Ljava/lang/String;
    .locals 2
    .param p1, "dump"    # Z

    .prologue
    .line 392
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 393
    .local v0, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljavax/jmdns/impl/e;->w()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    if-eqz p1, :cond_0

    .line 395
    invoke-virtual {p0}, Ljavax/jmdns/impl/e;->c()[B

    move-result-object v1

    invoke-virtual {p0, v1}, Ljavax/jmdns/impl/e;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public a()Ljava/net/InetSocketAddress;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Ljavax/jmdns/impl/e;->p:Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method public a(Ljava/net/InetSocketAddress;)V
    .locals 0
    .param p1, "destination"    # Ljava/net/InetSocketAddress;

    .prologue
    .line 246
    iput-object p1, p0, Ljavax/jmdns/impl/e;->p:Ljava/net/InetSocketAddress;

    .line 247
    return-void
.end method

.method public a(Ljavax/jmdns/impl/b;Ljavax/jmdns/impl/g;)V
    .locals 2
    .param p1, "in"    # Ljavax/jmdns/impl/b;
    .param p2, "rec"    # Ljavax/jmdns/impl/g;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 285
    if-eqz p1, :cond_0

    invoke-virtual {p2, p1}, Ljavax/jmdns/impl/g;->a(Ljavax/jmdns/impl/b;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 286
    :cond_0
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p2, v0, v1}, Ljavax/jmdns/impl/e;->a(Ljavax/jmdns/impl/g;J)V

    .line 288
    :cond_1
    return-void
.end method

.method public a(Ljavax/jmdns/impl/f;)V
    .locals 5
    .param p1, "rec"    # Ljavax/jmdns/impl/f;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 265
    new-instance v1, Ljavax/jmdns/impl/e$a;

    const/16 v2, 0x200

    invoke-direct {v1, v2, p0}, Ljavax/jmdns/impl/e$a;-><init>(ILjavax/jmdns/impl/e;)V

    .line 266
    .local v1, "record":Ljavax/jmdns/impl/e$a;
    invoke-virtual {v1, p1}, Ljavax/jmdns/impl/e$a;->a(Ljavax/jmdns/impl/f;)V

    .line 267
    invoke-virtual {v1}, Ljavax/jmdns/impl/e$a;->toByteArray()[B

    move-result-object v0

    .line 268
    .local v0, "byteArray":[B
    invoke-virtual {v1}, Ljavax/jmdns/impl/e$a;->close()V

    .line 269
    array-length v2, v0

    invoke-virtual {p0}, Ljavax/jmdns/impl/e;->b()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 270
    iget-object v2, p0, Ljavax/jmdns/impl/e;->e:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 271
    iget-object v2, p0, Ljavax/jmdns/impl/e;->k:Ljavax/jmdns/impl/e$a;

    const/4 v3, 0x0

    array-length v4, v0

    invoke-virtual {v2, v0, v3, v4}, Ljavax/jmdns/impl/e$a;->write([BII)V

    .line 275
    return-void

    .line 273
    :cond_0
    new-instance v2, Ljava/io/IOException;

    const-string v3, "message full"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public a(Ljavax/jmdns/impl/g;)V
    .locals 5
    .param p1, "rec"    # Ljavax/jmdns/impl/g;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 321
    new-instance v1, Ljavax/jmdns/impl/e$a;

    const/16 v2, 0x200

    invoke-direct {v1, v2, p0}, Ljavax/jmdns/impl/e$a;-><init>(ILjavax/jmdns/impl/e;)V

    .line 322
    .local v1, "record":Ljavax/jmdns/impl/e$a;
    const-wide/16 v2, 0x0

    invoke-virtual {v1, p1, v2, v3}, Ljavax/jmdns/impl/e$a;->a(Ljavax/jmdns/impl/g;J)V

    .line 323
    invoke-virtual {v1}, Ljavax/jmdns/impl/e$a;->toByteArray()[B

    move-result-object v0

    .line 324
    .local v0, "byteArray":[B
    invoke-virtual {v1}, Ljavax/jmdns/impl/e$a;->close()V

    .line 325
    array-length v2, v0

    invoke-virtual {p0}, Ljavax/jmdns/impl/e;->b()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 326
    iget-object v2, p0, Ljavax/jmdns/impl/e;->g:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 327
    iget-object v2, p0, Ljavax/jmdns/impl/e;->m:Ljavax/jmdns/impl/e$a;

    const/4 v3, 0x0

    array-length v4, v0

    invoke-virtual {v2, v0, v3, v4}, Ljavax/jmdns/impl/e$a;->write([BII)V

    .line 331
    return-void

    .line 329
    :cond_0
    new-instance v2, Ljava/io/IOException;

    const-string v3, "message full"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public a(Ljavax/jmdns/impl/g;J)V
    .locals 6
    .param p1, "rec"    # Ljavax/jmdns/impl/g;
    .param p2, "now"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 298
    if-eqz p1, :cond_1

    .line 299
    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-eqz v2, :cond_0

    invoke-virtual {p1, p2, p3}, Ljavax/jmdns/impl/g;->b(J)Z

    move-result v2

    if-nez v2, :cond_1

    .line 300
    :cond_0
    new-instance v1, Ljavax/jmdns/impl/e$a;

    const/16 v2, 0x200

    invoke-direct {v1, v2, p0}, Ljavax/jmdns/impl/e$a;-><init>(ILjavax/jmdns/impl/e;)V

    .line 301
    .local v1, "record":Ljavax/jmdns/impl/e$a;
    invoke-virtual {v1, p1, p2, p3}, Ljavax/jmdns/impl/e$a;->a(Ljavax/jmdns/impl/g;J)V

    .line 302
    invoke-virtual {v1}, Ljavax/jmdns/impl/e$a;->toByteArray()[B

    move-result-object v0

    .line 303
    .local v0, "byteArray":[B
    invoke-virtual {v1}, Ljavax/jmdns/impl/e$a;->close()V

    .line 304
    array-length v2, v0

    invoke-virtual {p0}, Ljavax/jmdns/impl/e;->b()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 305
    iget-object v2, p0, Ljavax/jmdns/impl/e;->f:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 306
    iget-object v2, p0, Ljavax/jmdns/impl/e;->l:Ljavax/jmdns/impl/e$a;

    const/4 v3, 0x0

    array-length v4, v0

    invoke-virtual {v2, v0, v3, v4}, Ljavax/jmdns/impl/e$a;->write([BII)V

    .line 312
    .end local v0    # "byteArray":[B
    .end local v1    # "record":Ljavax/jmdns/impl/e$a;
    :cond_1
    return-void

    .line 308
    .restart local v0    # "byteArray":[B
    .restart local v1    # "record":Ljavax/jmdns/impl/e$a;
    :cond_2
    new-instance v2, Ljava/io/IOException;

    const-string v3, "message full"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public b()I
    .locals 2

    .prologue
    .line 255
    iget v0, p0, Ljavax/jmdns/impl/e;->j:I

    add-int/lit8 v0, v0, -0xc

    iget-object v1, p0, Ljavax/jmdns/impl/e;->k:Ljavax/jmdns/impl/e$a;

    invoke-virtual {v1}, Ljavax/jmdns/impl/e$a;->size()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Ljavax/jmdns/impl/e;->l:Ljavax/jmdns/impl/e$a;

    invoke-virtual {v1}, Ljavax/jmdns/impl/e$a;->size()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Ljavax/jmdns/impl/e;->m:Ljavax/jmdns/impl/e$a;

    invoke-virtual {v1}, Ljavax/jmdns/impl/e$a;->size()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Ljavax/jmdns/impl/e;->n:Ljavax/jmdns/impl/e$a;

    invoke-virtual {v1}, Ljavax/jmdns/impl/e$a;->size()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public b(Ljavax/jmdns/impl/b;Ljavax/jmdns/impl/g;)V
    .locals 5
    .param p1, "in"    # Ljavax/jmdns/impl/b;
    .param p2, "rec"    # Ljavax/jmdns/impl/g;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 341
    new-instance v1, Ljavax/jmdns/impl/e$a;

    const/16 v2, 0x200

    invoke-direct {v1, v2, p0}, Ljavax/jmdns/impl/e$a;-><init>(ILjavax/jmdns/impl/e;)V

    .line 342
    .local v1, "record":Ljavax/jmdns/impl/e$a;
    const-wide/16 v2, 0x0

    invoke-virtual {v1, p2, v2, v3}, Ljavax/jmdns/impl/e$a;->a(Ljavax/jmdns/impl/g;J)V

    .line 343
    invoke-virtual {v1}, Ljavax/jmdns/impl/e$a;->toByteArray()[B

    move-result-object v0

    .line 344
    .local v0, "byteArray":[B
    invoke-virtual {v1}, Ljavax/jmdns/impl/e$a;->close()V

    .line 345
    array-length v2, v0

    invoke-virtual {p0}, Ljavax/jmdns/impl/e;->b()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 346
    iget-object v2, p0, Ljavax/jmdns/impl/e;->h:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 347
    iget-object v2, p0, Ljavax/jmdns/impl/e;->n:Ljavax/jmdns/impl/e$a;

    const/4 v3, 0x0

    array-length v4, v0

    invoke-virtual {v2, v0, v3, v4}, Ljavax/jmdns/impl/e$a;->write([BII)V

    .line 351
    return-void

    .line 349
    :cond_0
    new-instance v2, Ljava/io/IOException;

    const-string v3, "message full"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public c()[B
    .locals 8

    .prologue
    .line 359
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 360
    .local v2, "now":J
    iget-object v6, p0, Ljavax/jmdns/impl/e;->i:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->clear()V

    .line 362
    new-instance v0, Ljavax/jmdns/impl/e$a;

    iget v6, p0, Ljavax/jmdns/impl/e;->j:I

    invoke-direct {v0, v6, p0}, Ljavax/jmdns/impl/e$a;-><init>(ILjavax/jmdns/impl/e;)V

    .line 363
    .local v0, "message":Ljavax/jmdns/impl/e$a;
    iget-boolean v6, p0, Ljavax/jmdns/impl/e;->d:Z

    if-eqz v6, :cond_0

    const/4 v6, 0x0

    :goto_0
    invoke-virtual {v0, v6}, Ljavax/jmdns/impl/e$a;->b(I)V

    .line 364
    invoke-virtual {p0}, Ljavax/jmdns/impl/e;->e()I

    move-result v6

    invoke-virtual {v0, v6}, Ljavax/jmdns/impl/e$a;->b(I)V

    .line 365
    invoke-virtual {p0}, Ljavax/jmdns/impl/e;->h()I

    move-result v6

    invoke-virtual {v0, v6}, Ljavax/jmdns/impl/e$a;->b(I)V

    .line 366
    invoke-virtual {p0}, Ljavax/jmdns/impl/e;->k()I

    move-result v6

    invoke-virtual {v0, v6}, Ljavax/jmdns/impl/e$a;->b(I)V

    .line 367
    invoke-virtual {p0}, Ljavax/jmdns/impl/e;->m()I

    move-result v6

    invoke-virtual {v0, v6}, Ljavax/jmdns/impl/e$a;->b(I)V

    .line 368
    invoke-virtual {p0}, Ljavax/jmdns/impl/e;->o()I

    move-result v6

    invoke-virtual {v0, v6}, Ljavax/jmdns/impl/e$a;->b(I)V

    .line 369
    iget-object v6, p0, Ljavax/jmdns/impl/e;->e:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/jmdns/impl/f;

    .line 370
    .local v1, "question":Ljavax/jmdns/impl/f;
    invoke-virtual {v0, v1}, Ljavax/jmdns/impl/e$a;->a(Ljavax/jmdns/impl/f;)V

    goto :goto_1

    .line 363
    .end local v1    # "question":Ljavax/jmdns/impl/f;
    :cond_0
    invoke-virtual {p0}, Ljavax/jmdns/impl/e;->d()I

    move-result v6

    goto :goto_0

    .line 372
    :cond_1
    iget-object v6, p0, Ljavax/jmdns/impl/e;->f:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/jmdns/impl/g;

    .line 373
    .local v4, "record":Ljavax/jmdns/impl/g;
    invoke-virtual {v0, v4, v2, v3}, Ljavax/jmdns/impl/e$a;->a(Ljavax/jmdns/impl/g;J)V

    goto :goto_2

    .line 375
    .end local v4    # "record":Ljavax/jmdns/impl/g;
    :cond_2
    iget-object v6, p0, Ljavax/jmdns/impl/e;->g:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/jmdns/impl/g;

    .line 376
    .restart local v4    # "record":Ljavax/jmdns/impl/g;
    invoke-virtual {v0, v4, v2, v3}, Ljavax/jmdns/impl/e$a;->a(Ljavax/jmdns/impl/g;J)V

    goto :goto_3

    .line 378
    .end local v4    # "record":Ljavax/jmdns/impl/g;
    :cond_3
    iget-object v6, p0, Ljavax/jmdns/impl/e;->h:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/jmdns/impl/g;

    .line 379
    .restart local v4    # "record":Ljavax/jmdns/impl/g;
    invoke-virtual {v0, v4, v2, v3}, Ljavax/jmdns/impl/e$a;->a(Ljavax/jmdns/impl/g;J)V

    goto :goto_4

    .line 381
    .end local v4    # "record":Ljavax/jmdns/impl/g;
    :cond_4
    invoke-virtual {v0}, Ljavax/jmdns/impl/e$a;->toByteArray()[B

    move-result-object v5

    .line 383
    .local v5, "result":[B
    :try_start_0
    invoke-virtual {v0}, Ljavax/jmdns/impl/e$a;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 385
    :goto_5
    return-object v5

    .line 384
    :catch_0
    move-exception v6

    goto :goto_5
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 402
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 403
    .local v0, "buf":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljavax/jmdns/impl/e;->t()Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v3, "dns[query:"

    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 404
    const-string v3, " id=0x"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 405
    invoke-virtual {p0}, Ljavax/jmdns/impl/e;->d()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 406
    invoke-virtual {p0}, Ljavax/jmdns/impl/e;->e()I

    move-result v3

    if-eqz v3, :cond_2

    .line 407
    const-string v3, ", flags=0x"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 408
    invoke-virtual {p0}, Ljavax/jmdns/impl/e;->e()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 409
    invoke-virtual {p0}, Ljavax/jmdns/impl/e;->u()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 410
    const-string v3, ":r"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 412
    :cond_0
    invoke-virtual {p0}, Ljavax/jmdns/impl/e;->s()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 413
    const-string v3, ":aa"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 415
    :cond_1
    invoke-virtual {p0}, Ljavax/jmdns/impl/e;->r()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 416
    const-string v3, ":tc"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 419
    :cond_2
    invoke-virtual {p0}, Ljavax/jmdns/impl/e;->h()I

    move-result v3

    if-lez v3, :cond_3

    .line 420
    const-string v3, ", questions="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 421
    invoke-virtual {p0}, Ljavax/jmdns/impl/e;->h()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 423
    :cond_3
    invoke-virtual {p0}, Ljavax/jmdns/impl/e;->k()I

    move-result v3

    if-lez v3, :cond_4

    .line 424
    const-string v3, ", answers="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 425
    invoke-virtual {p0}, Ljavax/jmdns/impl/e;->k()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 427
    :cond_4
    invoke-virtual {p0}, Ljavax/jmdns/impl/e;->m()I

    move-result v3

    if-lez v3, :cond_5

    .line 428
    const-string v3, ", authorities="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 429
    invoke-virtual {p0}, Ljavax/jmdns/impl/e;->m()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 431
    :cond_5
    invoke-virtual {p0}, Ljavax/jmdns/impl/e;->o()I

    move-result v3

    if-lez v3, :cond_6

    .line 432
    const-string v3, ", additionals="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 433
    invoke-virtual {p0}, Ljavax/jmdns/impl/e;->o()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 435
    :cond_6
    invoke-virtual {p0}, Ljavax/jmdns/impl/e;->h()I

    move-result v3

    if-lez v3, :cond_8

    .line 436
    const-string v3, "\nquestions:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 437
    iget-object v3, p0, Ljavax/jmdns/impl/e;->e:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/jmdns/impl/f;

    .line 438
    .local v1, "question":Ljavax/jmdns/impl/f;
    const-string v4, "\n\t"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 439
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 403
    .end local v1    # "question":Ljavax/jmdns/impl/f;
    :cond_7
    const-string v3, "dns[response:"

    goto/16 :goto_0

    .line 442
    :cond_8
    invoke-virtual {p0}, Ljavax/jmdns/impl/e;->k()I

    move-result v3

    if-lez v3, :cond_9

    .line 443
    const-string v3, "\nanswers:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 444
    iget-object v3, p0, Ljavax/jmdns/impl/e;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/jmdns/impl/g;

    .line 445
    .local v2, "record":Ljavax/jmdns/impl/g;
    const-string v4, "\n\t"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 446
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 449
    .end local v2    # "record":Ljavax/jmdns/impl/g;
    :cond_9
    invoke-virtual {p0}, Ljavax/jmdns/impl/e;->m()I

    move-result v3

    if-lez v3, :cond_a

    .line 450
    const-string v3, "\nauthorities:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 451
    iget-object v3, p0, Ljavax/jmdns/impl/e;->g:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/jmdns/impl/g;

    .line 452
    .restart local v2    # "record":Ljavax/jmdns/impl/g;
    const-string v4, "\n\t"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 453
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 456
    .end local v2    # "record":Ljavax/jmdns/impl/g;
    :cond_a
    invoke-virtual {p0}, Ljavax/jmdns/impl/e;->o()I

    move-result v3

    if-lez v3, :cond_b

    .line 457
    const-string v3, "\nadditionals:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 458
    iget-object v3, p0, Ljavax/jmdns/impl/e;->h:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/jmdns/impl/g;

    .line 459
    .restart local v2    # "record":Ljavax/jmdns/impl/g;
    const-string v4, "\n\t"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 460
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 463
    .end local v2    # "record":Ljavax/jmdns/impl/g;
    :cond_b
    const-string v3, "\nnames="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 464
    iget-object v3, p0, Ljavax/jmdns/impl/e;->i:Ljava/util/Map;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 465
    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 466
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public x()I
    .locals 1

    .prologue
    .line 473
    iget v0, p0, Ljavax/jmdns/impl/e;->j:I

    return v0
.end method
