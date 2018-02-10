.class final Lcom/squareup/okhttp/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/squareup/okhttp/internal/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/squareup/okhttp/c;

.field private final b:Lcom/squareup/okhttp/internal/a$a;

.field private c:Lokio/w;

.field private d:Z

.field private e:Lokio/w;


# direct methods
.method public constructor <init>(Lcom/squareup/okhttp/c;Lcom/squareup/okhttp/internal/a$a;)V
    .locals 2
    .param p2, "editor"    # Lcom/squareup/okhttp/internal/a$a;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 408
    iput-object p1, p0, Lcom/squareup/okhttp/c$a;->a:Lcom/squareup/okhttp/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 409
    iput-object p2, p0, Lcom/squareup/okhttp/c$a;->b:Lcom/squareup/okhttp/internal/a$a;

    .line 410
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/squareup/okhttp/internal/a$a;->b(I)Lokio/w;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/c$a;->c:Lokio/w;

    .line 411
    new-instance v0, Lcom/squareup/okhttp/c$a$1;

    iget-object v1, p0, Lcom/squareup/okhttp/c$a;->c:Lokio/w;

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/squareup/okhttp/c$a$1;-><init>(Lcom/squareup/okhttp/c$a;Lokio/w;Lcom/squareup/okhttp/c;Lcom/squareup/okhttp/internal/a$a;)V

    iput-object v0, p0, Lcom/squareup/okhttp/c$a;->e:Lokio/w;

    .line 424
    return-void
.end method

.method static synthetic a(Lcom/squareup/okhttp/c$a;)Z
    .locals 1
    .param p0, "x0"    # Lcom/squareup/okhttp/c$a;

    .prologue
    .line 402
    iget-boolean v0, p0, Lcom/squareup/okhttp/c$a;->d:Z

    return v0
.end method

.method static synthetic a(Lcom/squareup/okhttp/c$a;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/squareup/okhttp/c$a;
    .param p1, "x1"    # Z

    .prologue
    .line 402
    iput-boolean p1, p0, Lcom/squareup/okhttp/c$a;->d:Z

    return p1
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 427
    iget-object v1, p0, Lcom/squareup/okhttp/c$a;->a:Lcom/squareup/okhttp/c;

    monitor-enter v1

    .line 428
    :try_start_0
    iget-boolean v0, p0, Lcom/squareup/okhttp/c$a;->d:Z

    if-eqz v0, :cond_0

    .line 429
    monitor-exit v1

    .line 439
    :goto_0
    return-void

    .line 431
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/squareup/okhttp/c$a;->d:Z

    .line 432
    iget-object v0, p0, Lcom/squareup/okhttp/c$a;->a:Lcom/squareup/okhttp/c;

    invoke-static {v0}, Lcom/squareup/okhttp/c;->d(Lcom/squareup/okhttp/c;)I

    .line 433
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 434
    iget-object v0, p0, Lcom/squareup/okhttp/c$a;->c:Lokio/w;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/j;->a(Ljava/io/Closeable;)V

    .line 436
    :try_start_1
    iget-object v0, p0, Lcom/squareup/okhttp/c$a;->b:Lcom/squareup/okhttp/internal/a$a;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/a$a;->b()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 437
    :catch_0
    move-exception v0

    goto :goto_0

    .line 433
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public b()Lokio/w;
    .locals 1

    .prologue
    .line 442
    iget-object v0, p0, Lcom/squareup/okhttp/c$a;->e:Lokio/w;

    return-object v0
.end method
