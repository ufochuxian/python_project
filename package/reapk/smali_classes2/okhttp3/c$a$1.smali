.class Lokhttp3/c$a$1;
.super Lokio/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/c$a;-><init>(Lokhttp3/c;Lokhttp3/internal/a/d$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lokhttp3/c;

.field final synthetic b:Lokhttp3/internal/a/d$a;

.field final synthetic c:Lokhttp3/c$a;


# direct methods
.method constructor <init>(Lokhttp3/c$a;Lokio/w;Lokhttp3/c;Lokhttp3/internal/a/d$a;)V
    .locals 0
    .param p1, "this$1"    # Lokhttp3/c$a;
    .param p2, "x0"    # Lokio/w;

    .prologue
    .line 438
    iput-object p1, p0, Lokhttp3/c$a$1;->c:Lokhttp3/c$a;

    iput-object p3, p0, Lokhttp3/c$a$1;->a:Lokhttp3/c;

    iput-object p4, p0, Lokhttp3/c$a$1;->b:Lokhttp3/internal/a/d$a;

    invoke-direct {p0, p2}, Lokio/g;-><init>(Lokio/w;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 440
    iget-object v0, p0, Lokhttp3/c$a$1;->c:Lokhttp3/c$a;

    iget-object v1, v0, Lokhttp3/c$a;->a:Lokhttp3/c;

    monitor-enter v1

    .line 441
    :try_start_0
    iget-object v0, p0, Lokhttp3/c$a$1;->c:Lokhttp3/c$a;

    invoke-static {v0}, Lokhttp3/c$a;->a(Lokhttp3/c$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 442
    monitor-exit v1

    .line 449
    :goto_0
    return-void

    .line 444
    :cond_0
    iget-object v0, p0, Lokhttp3/c$a$1;->c:Lokhttp3/c$a;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lokhttp3/c$a;->a(Lokhttp3/c$a;Z)Z

    .line 445
    iget-object v0, p0, Lokhttp3/c$a$1;->c:Lokhttp3/c$a;

    iget-object v0, v0, Lokhttp3/c$a;->a:Lokhttp3/c;

    invoke-static {v0}, Lokhttp3/c;->c(Lokhttp3/c;)I

    .line 446
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 447
    invoke-super {p0}, Lokio/g;->close()V

    .line 448
    iget-object v0, p0, Lokhttp3/c$a$1;->b:Lokhttp3/internal/a/d$a;

    invoke-virtual {v0}, Lokhttp3/internal/a/d$a;->b()V

    goto :goto_0

    .line 446
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
