.class Lokhttp3/internal/b/c$f;
.super Lokhttp3/internal/b/c$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "f"
.end annotation


# instance fields
.field final synthetic d:Lokhttp3/internal/b/c;

.field private e:Z


# direct methods
.method private constructor <init>(Lokhttp3/internal/b/c;)V
    .locals 1

    .prologue
    .line 463
    iput-object p1, p0, Lokhttp3/internal/b/c$f;->d:Lokhttp3/internal/b/c;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lokhttp3/internal/b/c$a;-><init>(Lokhttp3/internal/b/c;Lokhttp3/internal/b/c$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lokhttp3/internal/b/c;Lokhttp3/internal/b/c$1;)V
    .locals 0
    .param p1, "x0"    # Lokhttp3/internal/b/c;
    .param p2, "x1"    # Lokhttp3/internal/b/c$1;

    .prologue
    .line 463
    invoke-direct {p0, p1}, Lokhttp3/internal/b/c$f;-><init>(Lokhttp3/internal/b/c;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 482
    iget-boolean v0, p0, Lokhttp3/internal/b/c$f;->b:Z

    if-eqz v0, :cond_0

    .line 487
    :goto_0
    return-void

    .line 483
    :cond_0
    iget-boolean v0, p0, Lokhttp3/internal/b/c$f;->e:Z

    if-nez v0, :cond_1

    .line 484
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lokhttp3/internal/b/c$f;->a(Z)V

    .line 486
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lokhttp3/internal/b/c$f;->b:Z

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
    const/4 v6, 0x1

    const-wide/16 v2, -0x1

    .line 468
    const-wide/16 v4, 0x0

    cmp-long v4, p2, v4

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

    .line 469
    :cond_0
    iget-boolean v4, p0, Lokhttp3/internal/b/c$f;->b:Z

    if-eqz v4, :cond_1

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "closed"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 470
    :cond_1
    iget-boolean v4, p0, Lokhttp3/internal/b/c$f;->e:Z

    if-eqz v4, :cond_3

    move-wide v0, v2

    .line 478
    :cond_2
    :goto_0
    return-wide v0

    .line 472
    :cond_3
    iget-object v4, p0, Lokhttp3/internal/b/c$f;->d:Lokhttp3/internal/b/c;

    invoke-static {v4}, Lokhttp3/internal/b/c;->b(Lokhttp3/internal/b/c;)Lokio/e;

    move-result-object v4

    invoke-interface {v4, p1, p2, p3}, Lokio/e;->read(Lokio/c;J)J

    move-result-wide v0

    .line 473
    .local v0, "read":J
    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    .line 474
    iput-boolean v6, p0, Lokhttp3/internal/b/c$f;->e:Z

    .line 475
    invoke-virtual {p0, v6}, Lokhttp3/internal/b/c$f;->a(Z)V

    move-wide v0, v2

    .line 476
    goto :goto_0
.end method
