.class Lokhttp3/internal/b/c$e;
.super Lokhttp3/internal/b/c$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "e"
.end annotation


# instance fields
.field final synthetic d:Lokhttp3/internal/b/c;

.field private e:J


# direct methods
.method public constructor <init>(Lokhttp3/internal/b/c;J)V
    .locals 4
    .param p2, "length"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 365
    iput-object p1, p0, Lokhttp3/internal/b/c$e;->d:Lokhttp3/internal/b/c;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lokhttp3/internal/b/c$a;-><init>(Lokhttp3/internal/b/c;Lokhttp3/internal/b/c$1;)V

    .line 366
    iput-wide p2, p0, Lokhttp3/internal/b/c$e;->e:J

    .line 367
    iget-wide v0, p0, Lokhttp3/internal/b/c$e;->e:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 368
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lokhttp3/internal/b/c$e;->a(Z)V

    .line 370
    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 391
    iget-boolean v0, p0, Lokhttp3/internal/b/c$e;->b:Z

    if-eqz v0, :cond_0

    .line 398
    :goto_0
    return-void

    .line 393
    :cond_0
    iget-wide v0, p0, Lokhttp3/internal/b/c$e;->e:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    const/16 v0, 0x64

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, v0, v1}, Lokhttp3/internal/c;->a(Lokio/x;ILjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 394
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lokhttp3/internal/b/c$e;->a(Z)V

    .line 397
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lokhttp3/internal/b/c$e;->b:Z

    goto :goto_0
.end method

.method public read(Lokio/c;J)J
    .locals 10
    .param p1, "sink"    # Lokio/c;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, -0x1

    const-wide/16 v8, 0x0

    .line 373
    cmp-long v4, p2, v8

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

    .line 374
    :cond_0
    iget-boolean v4, p0, Lokhttp3/internal/b/c$e;->b:Z

    if-eqz v4, :cond_1

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "closed"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 375
    :cond_1
    iget-wide v4, p0, Lokhttp3/internal/b/c$e;->e:J

    cmp-long v4, v4, v8

    if-nez v4, :cond_3

    move-wide v0, v2

    .line 387
    :cond_2
    :goto_0
    return-wide v0

    .line 377
    :cond_3
    iget-object v4, p0, Lokhttp3/internal/b/c$e;->d:Lokhttp3/internal/b/c;

    invoke-static {v4}, Lokhttp3/internal/b/c;->b(Lokhttp3/internal/b/c;)Lokio/e;

    move-result-object v4

    iget-wide v6, p0, Lokhttp3/internal/b/c$e;->e:J

    invoke-static {v6, v7, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    invoke-interface {v4, p1, v6, v7}, Lokio/e;->read(Lokio/c;J)J

    move-result-wide v0

    .line 378
    .local v0, "read":J
    cmp-long v2, v0, v2

    if-nez v2, :cond_4

    .line 379
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lokhttp3/internal/b/c$e;->a(Z)V

    .line 380
    new-instance v2, Ljava/net/ProtocolException;

    const-string v3, "unexpected end of stream"

    invoke-direct {v2, v3}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 383
    :cond_4
    iget-wide v2, p0, Lokhttp3/internal/b/c$e;->e:J

    sub-long/2addr v2, v0

    iput-wide v2, p0, Lokhttp3/internal/b/c$e;->e:J

    .line 384
    iget-wide v2, p0, Lokhttp3/internal/b/c$e;->e:J

    cmp-long v2, v2, v8

    if-nez v2, :cond_2

    .line 385
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lokhttp3/internal/b/c$e;->a(Z)V

    goto :goto_0
.end method
