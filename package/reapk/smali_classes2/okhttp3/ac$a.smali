.class public Lokhttp3/ac$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/ac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Lokhttp3/aa;

.field private b:Lokhttp3/Protocol;

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Lokhttp3/s;

.field private f:Lokhttp3/t$a;

.field private g:Lokhttp3/ad;

.field private h:Lokhttp3/ac;

.field private i:Lokhttp3/ac;

.field private j:Lokhttp3/ac;

.field private k:J

.field private l:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 287
    const/4 v0, -0x1

    iput v0, p0, Lokhttp3/ac$a;->c:I

    .line 299
    new-instance v0, Lokhttp3/t$a;

    invoke-direct {v0}, Lokhttp3/t$a;-><init>()V

    iput-object v0, p0, Lokhttp3/ac$a;->f:Lokhttp3/t$a;

    .line 300
    return-void
.end method

.method private constructor <init>(Lokhttp3/ac;)V
    .locals 2
    .param p1, "response"    # Lokhttp3/ac;

    .prologue
    .line 302
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 287
    const/4 v0, -0x1

    iput v0, p0, Lokhttp3/ac$a;->c:I

    .line 303
    invoke-static {p1}, Lokhttp3/ac;->a(Lokhttp3/ac;)Lokhttp3/aa;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/ac$a;->a:Lokhttp3/aa;

    .line 304
    invoke-static {p1}, Lokhttp3/ac;->b(Lokhttp3/ac;)Lokhttp3/Protocol;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/ac$a;->b:Lokhttp3/Protocol;

    .line 305
    invoke-static {p1}, Lokhttp3/ac;->c(Lokhttp3/ac;)I

    move-result v0

    iput v0, p0, Lokhttp3/ac$a;->c:I

    .line 306
    invoke-static {p1}, Lokhttp3/ac;->d(Lokhttp3/ac;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/ac$a;->d:Ljava/lang/String;

    .line 307
    invoke-static {p1}, Lokhttp3/ac;->e(Lokhttp3/ac;)Lokhttp3/s;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/ac$a;->e:Lokhttp3/s;

    .line 308
    invoke-static {p1}, Lokhttp3/ac;->f(Lokhttp3/ac;)Lokhttp3/t;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/t;->c()Lokhttp3/t$a;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/ac$a;->f:Lokhttp3/t$a;

    .line 309
    invoke-static {p1}, Lokhttp3/ac;->g(Lokhttp3/ac;)Lokhttp3/ad;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/ac$a;->g:Lokhttp3/ad;

    .line 310
    invoke-static {p1}, Lokhttp3/ac;->h(Lokhttp3/ac;)Lokhttp3/ac;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/ac$a;->h:Lokhttp3/ac;

    .line 311
    invoke-static {p1}, Lokhttp3/ac;->i(Lokhttp3/ac;)Lokhttp3/ac;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/ac$a;->i:Lokhttp3/ac;

    .line 312
    invoke-static {p1}, Lokhttp3/ac;->j(Lokhttp3/ac;)Lokhttp3/ac;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/ac$a;->j:Lokhttp3/ac;

    .line 313
    invoke-static {p1}, Lokhttp3/ac;->k(Lokhttp3/ac;)J

    move-result-wide v0

    iput-wide v0, p0, Lokhttp3/ac$a;->k:J

    .line 314
    invoke-static {p1}, Lokhttp3/ac;->l(Lokhttp3/ac;)J

    move-result-wide v0

    iput-wide v0, p0, Lokhttp3/ac$a;->l:J

    .line 315
    return-void
.end method

.method synthetic constructor <init>(Lokhttp3/ac;Lokhttp3/ac$1;)V
    .locals 0
    .param p1, "x0"    # Lokhttp3/ac;
    .param p2, "x1"    # Lokhttp3/ac$1;

    .prologue
    .line 284
    invoke-direct {p0, p1}, Lokhttp3/ac$a;-><init>(Lokhttp3/ac;)V

    return-void
.end method

.method static synthetic a(Lokhttp3/ac$a;)Lokhttp3/aa;
    .locals 1
    .param p0, "x0"    # Lokhttp3/ac$a;

    .prologue
    .line 284
    iget-object v0, p0, Lokhttp3/ac$a;->a:Lokhttp3/aa;

    return-object v0
.end method

.method private a(Ljava/lang/String;Lokhttp3/ac;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "response"    # Lokhttp3/ac;

    .prologue
    .line 389
    invoke-static {p2}, Lokhttp3/ac;->g(Lokhttp3/ac;)Lokhttp3/ad;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 390
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".body != null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 391
    :cond_0
    invoke-static {p2}, Lokhttp3/ac;->h(Lokhttp3/ac;)Lokhttp3/ac;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 392
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".networkResponse != null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 393
    :cond_1
    invoke-static {p2}, Lokhttp3/ac;->i(Lokhttp3/ac;)Lokhttp3/ac;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 394
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".cacheResponse != null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 395
    :cond_2
    invoke-static {p2}, Lokhttp3/ac;->j(Lokhttp3/ac;)Lokhttp3/ac;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 396
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".priorResponse != null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 398
    :cond_3
    return-void
.end method

.method static synthetic b(Lokhttp3/ac$a;)Lokhttp3/Protocol;
    .locals 1
    .param p0, "x0"    # Lokhttp3/ac$a;

    .prologue
    .line 284
    iget-object v0, p0, Lokhttp3/ac$a;->b:Lokhttp3/Protocol;

    return-object v0
.end method

.method static synthetic c(Lokhttp3/ac$a;)I
    .locals 1
    .param p0, "x0"    # Lokhttp3/ac$a;

    .prologue
    .line 284
    iget v0, p0, Lokhttp3/ac$a;->c:I

    return v0
.end method

.method static synthetic d(Lokhttp3/ac$a;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lokhttp3/ac$a;

    .prologue
    .line 284
    iget-object v0, p0, Lokhttp3/ac$a;->d:Ljava/lang/String;

    return-object v0
.end method

.method private d(Lokhttp3/ac;)V
    .locals 2
    .param p1, "response"    # Lokhttp3/ac;

    .prologue
    .line 407
    invoke-static {p1}, Lokhttp3/ac;->g(Lokhttp3/ac;)Lokhttp3/ad;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 408
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "priorResponse.body != null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 410
    :cond_0
    return-void
.end method

.method static synthetic e(Lokhttp3/ac$a;)Lokhttp3/s;
    .locals 1
    .param p0, "x0"    # Lokhttp3/ac$a;

    .prologue
    .line 284
    iget-object v0, p0, Lokhttp3/ac$a;->e:Lokhttp3/s;

    return-object v0
.end method

.method static synthetic f(Lokhttp3/ac$a;)Lokhttp3/t$a;
    .locals 1
    .param p0, "x0"    # Lokhttp3/ac$a;

    .prologue
    .line 284
    iget-object v0, p0, Lokhttp3/ac$a;->f:Lokhttp3/t$a;

    return-object v0
.end method

.method static synthetic g(Lokhttp3/ac$a;)Lokhttp3/ad;
    .locals 1
    .param p0, "x0"    # Lokhttp3/ac$a;

    .prologue
    .line 284
    iget-object v0, p0, Lokhttp3/ac$a;->g:Lokhttp3/ad;

    return-object v0
.end method

.method static synthetic h(Lokhttp3/ac$a;)Lokhttp3/ac;
    .locals 1
    .param p0, "x0"    # Lokhttp3/ac$a;

    .prologue
    .line 284
    iget-object v0, p0, Lokhttp3/ac$a;->h:Lokhttp3/ac;

    return-object v0
.end method

.method static synthetic i(Lokhttp3/ac$a;)Lokhttp3/ac;
    .locals 1
    .param p0, "x0"    # Lokhttp3/ac$a;

    .prologue
    .line 284
    iget-object v0, p0, Lokhttp3/ac$a;->i:Lokhttp3/ac;

    return-object v0
.end method

.method static synthetic j(Lokhttp3/ac$a;)Lokhttp3/ac;
    .locals 1
    .param p0, "x0"    # Lokhttp3/ac$a;

    .prologue
    .line 284
    iget-object v0, p0, Lokhttp3/ac$a;->j:Lokhttp3/ac;

    return-object v0
.end method

.method static synthetic k(Lokhttp3/ac$a;)J
    .locals 2
    .param p0, "x0"    # Lokhttp3/ac$a;

    .prologue
    .line 284
    iget-wide v0, p0, Lokhttp3/ac$a;->k:J

    return-wide v0
.end method

.method static synthetic l(Lokhttp3/ac$a;)J
    .locals 2
    .param p0, "x0"    # Lokhttp3/ac$a;

    .prologue
    .line 284
    iget-wide v0, p0, Lokhttp3/ac$a;->l:J

    return-wide v0
.end method


# virtual methods
.method public a(I)Lokhttp3/ac$a;
    .locals 0
    .param p1, "code"    # I

    .prologue
    .line 328
    iput p1, p0, Lokhttp3/ac$a;->c:I

    .line 329
    return-object p0
.end method

.method public a(J)Lokhttp3/ac$a;
    .locals 1
    .param p1, "sentRequestAtMillis"    # J

    .prologue
    .line 413
    iput-wide p1, p0, Lokhttp3/ac$a;->k:J

    .line 414
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lokhttp3/ac$a;
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 333
    iput-object p1, p0, Lokhttp3/ac$a;->d:Ljava/lang/String;

    .line 334
    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/ac$a;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 347
    iget-object v0, p0, Lokhttp3/ac$a;->f:Lokhttp3/t$a;

    invoke-virtual {v0, p1, p2}, Lokhttp3/t$a;->c(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/t$a;

    .line 348
    return-object p0
.end method

.method public a(Lokhttp3/Protocol;)Lokhttp3/ac$a;
    .locals 0
    .param p1, "protocol"    # Lokhttp3/Protocol;

    .prologue
    .line 323
    iput-object p1, p0, Lokhttp3/ac$a;->b:Lokhttp3/Protocol;

    .line 324
    return-object p0
.end method

.method public a(Lokhttp3/aa;)Lokhttp3/ac$a;
    .locals 0
    .param p1, "request"    # Lokhttp3/aa;

    .prologue
    .line 318
    iput-object p1, p0, Lokhttp3/ac$a;->a:Lokhttp3/aa;

    .line 319
    return-object p0
.end method

.method public a(Lokhttp3/ac;)Lokhttp3/ac$a;
    .locals 1
    .param p1, "networkResponse"    # Lokhttp3/ac;

    .prologue
    .line 377
    if-eqz p1, :cond_0

    const-string v0, "networkResponse"

    invoke-direct {p0, v0, p1}, Lokhttp3/ac$a;->a(Ljava/lang/String;Lokhttp3/ac;)V

    .line 378
    :cond_0
    iput-object p1, p0, Lokhttp3/ac$a;->h:Lokhttp3/ac;

    .line 379
    return-object p0
.end method

.method public a(Lokhttp3/ad;)Lokhttp3/ac$a;
    .locals 0
    .param p1, "body"    # Lokhttp3/ad;

    .prologue
    .line 372
    iput-object p1, p0, Lokhttp3/ac$a;->g:Lokhttp3/ad;

    .line 373
    return-object p0
.end method

.method public a(Lokhttp3/s;)Lokhttp3/ac$a;
    .locals 0
    .param p1, "handshake"    # Lokhttp3/s;

    .prologue
    .line 338
    iput-object p1, p0, Lokhttp3/ac$a;->e:Lokhttp3/s;

    .line 339
    return-object p0
.end method

.method public a(Lokhttp3/t;)Lokhttp3/ac$a;
    .locals 1
    .param p1, "headers"    # Lokhttp3/t;

    .prologue
    .line 367
    invoke-virtual {p1}, Lokhttp3/t;->c()Lokhttp3/t$a;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/ac$a;->f:Lokhttp3/t$a;

    .line 368
    return-object p0
.end method

.method public a()Lokhttp3/ac;
    .locals 3

    .prologue
    .line 423
    iget-object v0, p0, Lokhttp3/ac$a;->a:Lokhttp3/aa;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "request == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 424
    :cond_0
    iget-object v0, p0, Lokhttp3/ac$a;->b:Lokhttp3/Protocol;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "protocol == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 425
    :cond_1
    iget v0, p0, Lokhttp3/ac$a;->c:I

    if-gez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "code < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lokhttp3/ac$a;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 426
    :cond_2
    new-instance v0, Lokhttp3/ac;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lokhttp3/ac;-><init>(Lokhttp3/ac$a;Lokhttp3/ac$1;)V

    return-object v0
.end method

.method public b(J)Lokhttp3/ac$a;
    .locals 1
    .param p1, "receivedResponseAtMillis"    # J

    .prologue
    .line 418
    iput-wide p1, p0, Lokhttp3/ac$a;->l:J

    .line 419
    return-object p0
.end method

.method public b(Ljava/lang/String;)Lokhttp3/ac$a;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 361
    iget-object v0, p0, Lokhttp3/ac$a;->f:Lokhttp3/t$a;

    invoke-virtual {v0, p1}, Lokhttp3/t$a;->c(Ljava/lang/String;)Lokhttp3/t$a;

    .line 362
    return-object p0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/ac$a;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 356
    iget-object v0, p0, Lokhttp3/ac$a;->f:Lokhttp3/t$a;

    invoke-virtual {v0, p1, p2}, Lokhttp3/t$a;->a(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/t$a;

    .line 357
    return-object p0
.end method

.method public b(Lokhttp3/ac;)Lokhttp3/ac$a;
    .locals 1
    .param p1, "cacheResponse"    # Lokhttp3/ac;

    .prologue
    .line 383
    if-eqz p1, :cond_0

    const-string v0, "cacheResponse"

    invoke-direct {p0, v0, p1}, Lokhttp3/ac$a;->a(Ljava/lang/String;Lokhttp3/ac;)V

    .line 384
    :cond_0
    iput-object p1, p0, Lokhttp3/ac$a;->i:Lokhttp3/ac;

    .line 385
    return-object p0
.end method

.method public c(Lokhttp3/ac;)Lokhttp3/ac$a;
    .locals 0
    .param p1, "priorResponse"    # Lokhttp3/ac;

    .prologue
    .line 401
    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lokhttp3/ac$a;->d(Lokhttp3/ac;)V

    .line 402
    :cond_0
    iput-object p1, p0, Lokhttp3/ac$a;->j:Lokhttp3/ac;

    .line 403
    return-object p0
.end method