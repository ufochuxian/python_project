.class Lcom/squareup/okhttp/c$a$1;
.super Lokio/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/squareup/okhttp/c$a;-><init>(Lcom/squareup/okhttp/c;Lcom/squareup/okhttp/internal/a$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/squareup/okhttp/c;

.field final synthetic b:Lcom/squareup/okhttp/internal/a$a;

.field final synthetic c:Lcom/squareup/okhttp/c$a;


# direct methods
.method constructor <init>(Lcom/squareup/okhttp/c$a;Lokio/w;Lcom/squareup/okhttp/c;Lcom/squareup/okhttp/internal/a$a;)V
    .locals 0
    .param p1, "this$1"    # Lcom/squareup/okhttp/c$a;
    .param p2, "x0"    # Lokio/w;

    .prologue
    .line 411
    iput-object p1, p0, Lcom/squareup/okhttp/c$a$1;->c:Lcom/squareup/okhttp/c$a;

    iput-object p3, p0, Lcom/squareup/okhttp/c$a$1;->a:Lcom/squareup/okhttp/c;

    iput-object p4, p0, Lcom/squareup/okhttp/c$a$1;->b:Lcom/squareup/okhttp/internal/a$a;

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
    .line 413
    iget-object v0, p0, Lcom/squareup/okhttp/c$a$1;->c:Lcom/squareup/okhttp/c$a;

    iget-object v1, v0, Lcom/squareup/okhttp/c$a;->a:Lcom/squareup/okhttp/c;

    monitor-enter v1

    .line 414
    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/c$a$1;->c:Lcom/squareup/okhttp/c$a;

    invoke-static {v0}, Lcom/squareup/okhttp/c$a;->a(Lcom/squareup/okhttp/c$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 415
    monitor-exit v1

    .line 422
    :goto_0
    return-void

    .line 417
    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/c$a$1;->c:Lcom/squareup/okhttp/c$a;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/squareup/okhttp/c$a;->a(Lcom/squareup/okhttp/c$a;Z)Z

    .line 418
    iget-object v0, p0, Lcom/squareup/okhttp/c$a$1;->c:Lcom/squareup/okhttp/c$a;

    iget-object v0, v0, Lcom/squareup/okhttp/c$a;->a:Lcom/squareup/okhttp/c;

    invoke-static {v0}, Lcom/squareup/okhttp/c;->c(Lcom/squareup/okhttp/c;)I

    .line 419
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 420
    invoke-super {p0}, Lokio/g;->close()V

    .line 421
    iget-object v0, p0, Lcom/squareup/okhttp/c$a$1;->b:Lcom/squareup/okhttp/internal/a$a;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/a$a;->a()V

    goto :goto_0

    .line 419
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
