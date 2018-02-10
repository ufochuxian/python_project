.class Lcom/squareup/okhttp/internal/a/e$f;
.super Lcom/squareup/okhttp/internal/a/e$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/internal/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "f"
.end annotation


# instance fields
.field final synthetic c:Lcom/squareup/okhttp/internal/a/e;

.field private d:Z


# direct methods
.method private constructor <init>(Lcom/squareup/okhttp/internal/a/e;)V
    .locals 1

    .prologue
    .line 479
    iput-object p1, p0, Lcom/squareup/okhttp/internal/a/e$f;->c:Lcom/squareup/okhttp/internal/a/e;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/squareup/okhttp/internal/a/e$a;-><init>(Lcom/squareup/okhttp/internal/a/e;Lcom/squareup/okhttp/internal/a/e$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/squareup/okhttp/internal/a/e;Lcom/squareup/okhttp/internal/a/e$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/squareup/okhttp/internal/a/e;
    .param p2, "x1"    # Lcom/squareup/okhttp/internal/a/e$1;

    .prologue
    .line 479
    invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/a/e$f;-><init>(Lcom/squareup/okhttp/internal/a/e;)V

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
    .line 498
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/a/e$f;->a:Z

    if-eqz v0, :cond_0

    .line 503
    :goto_0
    return-void

    .line 499
    :cond_0
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/a/e$f;->d:Z

    if-nez v0, :cond_1

    .line 500
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/a/e$f;->a()V

    .line 502
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/squareup/okhttp/internal/a/e$f;->a:Z

    goto :goto_0
.end method

.method public read(Lokio/c;J)J
    .locals 6
    .param p1, "sink"    # Lokio/c;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, -0x1

    .line 484
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

    .line 485
    :cond_0
    iget-boolean v4, p0, Lcom/squareup/okhttp/internal/a/e$f;->a:Z

    if-eqz v4, :cond_1

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "closed"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 486
    :cond_1
    iget-boolean v4, p0, Lcom/squareup/okhttp/internal/a/e$f;->d:Z

    if-eqz v4, :cond_3

    move-wide v0, v2

    .line 494
    :cond_2
    :goto_0
    return-wide v0

    .line 488
    :cond_3
    iget-object v4, p0, Lcom/squareup/okhttp/internal/a/e$f;->c:Lcom/squareup/okhttp/internal/a/e;

    invoke-static {v4}, Lcom/squareup/okhttp/internal/a/e;->b(Lcom/squareup/okhttp/internal/a/e;)Lokio/e;

    move-result-object v4

    invoke-interface {v4, p1, p2, p3}, Lokio/e;->read(Lokio/c;J)J

    move-result-wide v0

    .line 489
    .local v0, "read":J
    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    .line 490
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/squareup/okhttp/internal/a/e$f;->d:Z

    .line 491
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/squareup/okhttp/internal/a/e$f;->a(Z)V

    move-wide v0, v2

    .line 492
    goto :goto_0
.end method
