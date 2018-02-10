.class final Lokhttp3/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/internal/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lokhttp3/c;

.field private final b:Lokhttp3/internal/a/d$a;

.field private c:Lokio/w;

.field private d:Z

.field private e:Lokio/w;


# direct methods
.method public constructor <init>(Lokhttp3/c;Lokhttp3/internal/a/d$a;)V
    .locals 2
    .param p2, "editor"    # Lokhttp3/internal/a/d$a;

    .prologue
    .line 435
    iput-object p1, p0, Lokhttp3/c$a;->a:Lokhttp3/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 436
    iput-object p2, p0, Lokhttp3/c$a;->b:Lokhttp3/internal/a/d$a;

    .line 437
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lokhttp3/internal/a/d$a;->b(I)Lokio/w;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/c$a;->c:Lokio/w;

    .line 438
    new-instance v0, Lokhttp3/c$a$1;

    iget-object v1, p0, Lokhttp3/c$a;->c:Lokio/w;

    invoke-direct {v0, p0, v1, p1, p2}, Lokhttp3/c$a$1;-><init>(Lokhttp3/c$a;Lokio/w;Lokhttp3/c;Lokhttp3/internal/a/d$a;)V

    iput-object v0, p0, Lokhttp3/c$a;->e:Lokio/w;

    .line 451
    return-void
.end method

.method static synthetic a(Lokhttp3/c$a;)Z
    .locals 1
    .param p0, "x0"    # Lokhttp3/c$a;

    .prologue
    .line 429
    iget-boolean v0, p0, Lokhttp3/c$a;->d:Z

    return v0
.end method

.method static synthetic a(Lokhttp3/c$a;Z)Z
    .locals 0
    .param p0, "x0"    # Lokhttp3/c$a;
    .param p1, "x1"    # Z

    .prologue
    .line 429
    iput-boolean p1, p0, Lokhttp3/c$a;->d:Z

    return p1
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 454
    iget-object v1, p0, Lokhttp3/c$a;->a:Lokhttp3/c;

    monitor-enter v1

    .line 455
    :try_start_0
    iget-boolean v0, p0, Lokhttp3/c$a;->d:Z

    if-eqz v0, :cond_0

    .line 456
    monitor-exit v1

    .line 466
    :goto_0
    return-void

    .line 458
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lokhttp3/c$a;->d:Z

    .line 459
    iget-object v0, p0, Lokhttp3/c$a;->a:Lokhttp3/c;

    invoke-static {v0}, Lokhttp3/c;->d(Lokhttp3/c;)I

    .line 460
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 461
    iget-object v0, p0, Lokhttp3/c$a;->c:Lokio/w;

    invoke-static {v0}, Lokhttp3/internal/c;->a(Ljava/io/Closeable;)V

    .line 463
    :try_start_1
    iget-object v0, p0, Lokhttp3/c$a;->b:Lokhttp3/internal/a/d$a;

    invoke-virtual {v0}, Lokhttp3/internal/a/d$a;->c()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 464
    :catch_0
    move-exception v0

    goto :goto_0

    .line 460
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
    .line 469
    iget-object v0, p0, Lokhttp3/c$a;->e:Lokio/w;

    return-object v0
.end method
