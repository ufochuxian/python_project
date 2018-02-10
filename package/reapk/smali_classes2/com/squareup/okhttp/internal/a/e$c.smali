.class Lcom/squareup/okhttp/internal/a/e$c;
.super Lcom/squareup/okhttp/internal/a/e$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/internal/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# static fields
.field private static final d:J = -0x1L


# instance fields
.field final synthetic c:Lcom/squareup/okhttp/internal/a/e;

.field private e:J

.field private f:Z

.field private final g:Lcom/squareup/okhttp/internal/a/g;


# direct methods
.method constructor <init>(Lcom/squareup/okhttp/internal/a/e;Lcom/squareup/okhttp/internal/a/g;)V
    .locals 2
    .param p2, "httpEngine"    # Lcom/squareup/okhttp/internal/a/g;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 422
    iput-object p1, p0, Lcom/squareup/okhttp/internal/a/e$c;->c:Lcom/squareup/okhttp/internal/a/e;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/squareup/okhttp/internal/a/e$a;-><init>(Lcom/squareup/okhttp/internal/a/e;Lcom/squareup/okhttp/internal/a/e$1;)V

    .line 418
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/squareup/okhttp/internal/a/e$c;->e:J

    .line 419
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/squareup/okhttp/internal/a/e$c;->f:Z

    .line 423
    iput-object p2, p0, Lcom/squareup/okhttp/internal/a/e$c;->g:Lcom/squareup/okhttp/internal/a/g;

    .line 424
    return-void
.end method

.method private b()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v8, 0x0

    .line 447
    iget-wide v4, p0, Lcom/squareup/okhttp/internal/a/e$c;->e:J

    const-wide/16 v6, -0x1

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    .line 448
    iget-object v3, p0, Lcom/squareup/okhttp/internal/a/e$c;->c:Lcom/squareup/okhttp/internal/a/e;

    invoke-static {v3}, Lcom/squareup/okhttp/internal/a/e;->b(Lcom/squareup/okhttp/internal/a/e;)Lokio/e;

    move-result-object v3

    invoke-interface {v3}, Lokio/e;->u()Ljava/lang/String;

    .line 451
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/squareup/okhttp/internal/a/e$c;->c:Lcom/squareup/okhttp/internal/a/e;

    invoke-static {v3}, Lcom/squareup/okhttp/internal/a/e;->b(Lcom/squareup/okhttp/internal/a/e;)Lokio/e;

    move-result-object v3

    invoke-interface {v3}, Lokio/e;->q()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/squareup/okhttp/internal/a/e$c;->e:J

    .line 452
    iget-object v3, p0, Lcom/squareup/okhttp/internal/a/e$c;->c:Lcom/squareup/okhttp/internal/a/e;

    invoke-static {v3}, Lcom/squareup/okhttp/internal/a/e;->b(Lcom/squareup/okhttp/internal/a/e;)Lokio/e;

    move-result-object v3

    invoke-interface {v3}, Lokio/e;->u()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 453
    .local v1, "extensions":Ljava/lang/String;
    iget-wide v4, p0, Lcom/squareup/okhttp/internal/a/e$c;->e:J

    cmp-long v3, v4, v8

    if-ltz v3, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, ";"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 454
    :cond_1
    new-instance v3, Ljava/net/ProtocolException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "expected chunk size and optional extensions but was \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p0, Lcom/squareup/okhttp/internal/a/e$c;->e:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 457
    .end local v1    # "extensions":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 458
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/net/ProtocolException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 460
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v1    # "extensions":Ljava/lang/String;
    :cond_2
    iget-wide v4, p0, Lcom/squareup/okhttp/internal/a/e$c;->e:J

    cmp-long v3, v4, v8

    if-nez v3, :cond_3

    .line 461
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/squareup/okhttp/internal/a/e$c;->f:Z

    .line 462
    new-instance v2, Lcom/squareup/okhttp/p$a;

    invoke-direct {v2}, Lcom/squareup/okhttp/p$a;-><init>()V

    .line 463
    .local v2, "trailersBuilder":Lcom/squareup/okhttp/p$a;
    iget-object v3, p0, Lcom/squareup/okhttp/internal/a/e$c;->c:Lcom/squareup/okhttp/internal/a/e;

    invoke-virtual {v3, v2}, Lcom/squareup/okhttp/internal/a/e;->a(Lcom/squareup/okhttp/p$a;)V

    .line 464
    iget-object v3, p0, Lcom/squareup/okhttp/internal/a/e$c;->g:Lcom/squareup/okhttp/internal/a/g;

    invoke-virtual {v2}, Lcom/squareup/okhttp/p$a;->a()Lcom/squareup/okhttp/p;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/squareup/okhttp/internal/a/g;->a(Lcom/squareup/okhttp/p;)V

    .line 465
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/squareup/okhttp/internal/a/e$c;->a(Z)V

    .line 467
    .end local v2    # "trailersBuilder":Lcom/squareup/okhttp/p$a;
    :cond_3
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 470
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/a/e$c;->a:Z

    if-eqz v0, :cond_0

    .line 475
    :goto_0
    return-void

    .line 471
    :cond_0
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/a/e$c;->f:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x64

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, v0, v1}, Lcom/squareup/okhttp/internal/j;->a(Lokio/x;ILjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 472
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/a/e$c;->a()V

    .line 474
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/squareup/okhttp/internal/a/e$c;->a:Z

    goto :goto_0
.end method

.method public read(Lokio/c;J)J
    .locals 8
    .param p1, "sink"    # Lokio/c;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x0

    const-wide/16 v2, -0x1

    .line 427
    cmp-long v4, p2, v6

    if-gez v4, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "byteCount < 0: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 428
    :cond_0
    iget-boolean v4, p0, Lcom/squareup/okhttp/internal/a/e$c;->a:Z

    if-eqz v4, :cond_1

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "closed"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 429
    :cond_1
    iget-boolean v4, p0, Lcom/squareup/okhttp/internal/a/e$c;->f:Z

    if-nez v4, :cond_2

    move-wide v0, v2

    .line 442
    :goto_0
    return-wide v0

    .line 431
    :cond_2
    iget-wide v4, p0, Lcom/squareup/okhttp/internal/a/e$c;->e:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_3

    iget-wide v4, p0, Lcom/squareup/okhttp/internal/a/e$c;->e:J

    cmp-long v4, v4, v2

    if-nez v4, :cond_4

    .line 432
    :cond_3
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/a/e$c;->b()V

    .line 433
    iget-boolean v4, p0, Lcom/squareup/okhttp/internal/a/e$c;->f:Z

    if-nez v4, :cond_4

    move-wide v0, v2

    goto :goto_0

    .line 436
    :cond_4
    iget-object v4, p0, Lcom/squareup/okhttp/internal/a/e$c;->c:Lcom/squareup/okhttp/internal/a/e;

    invoke-static {v4}, Lcom/squareup/okhttp/internal/a/e;->b(Lcom/squareup/okhttp/internal/a/e;)Lokio/e;

    move-result-object v4

    iget-wide v6, p0, Lcom/squareup/okhttp/internal/a/e$c;->e:J

    invoke-static {p2, p3, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    invoke-interface {v4, p1, v6, v7}, Lokio/e;->read(Lokio/c;J)J

    move-result-wide v0

    .line 437
    .local v0, "read":J
    cmp-long v2, v0, v2

    if-nez v2, :cond_5

    .line 438
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/a/e$c;->a()V

    .line 439
    new-instance v2, Ljava/io/IOException;

    const-string v3, "unexpected end of stream"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 441
    :cond_5
    iget-wide v2, p0, Lcom/squareup/okhttp/internal/a/e$c;->e:J

    sub-long/2addr v2, v0

    iput-wide v2, p0, Lcom/squareup/okhttp/internal/a/e$c;->e:J

    goto :goto_0
.end method
