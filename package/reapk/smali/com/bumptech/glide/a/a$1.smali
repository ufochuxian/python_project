.class Lcom/bumptech/glide/a/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/bumptech/glide/a/a;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/a/a;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lcom/bumptech/glide/a/a$1;->a:Lcom/bumptech/glide/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 162
    iget-object v1, p0, Lcom/bumptech/glide/a/a$1;->a:Lcom/bumptech/glide/a/a;

    monitor-enter v1

    .line 163
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/a/a$1;->a:Lcom/bumptech/glide/a/a;

    invoke-static {v0}, Lcom/bumptech/glide/a/a;->a(Lcom/bumptech/glide/a/a;)Ljava/io/Writer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 164
    monitor-exit v1

    .line 172
    :goto_0
    return-object v3

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/a/a$1;->a:Lcom/bumptech/glide/a/a;

    invoke-static {v0}, Lcom/bumptech/glide/a/a;->b(Lcom/bumptech/glide/a/a;)V

    .line 167
    iget-object v0, p0, Lcom/bumptech/glide/a/a$1;->a:Lcom/bumptech/glide/a/a;

    invoke-static {v0}, Lcom/bumptech/glide/a/a;->c(Lcom/bumptech/glide/a/a;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 168
    iget-object v0, p0, Lcom/bumptech/glide/a/a$1;->a:Lcom/bumptech/glide/a/a;

    invoke-static {v0}, Lcom/bumptech/glide/a/a;->d(Lcom/bumptech/glide/a/a;)V

    .line 169
    iget-object v0, p0, Lcom/bumptech/glide/a/a$1;->a:Lcom/bumptech/glide/a/a;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/bumptech/glide/a/a;->a(Lcom/bumptech/glide/a/a;I)I

    .line 171
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/bumptech/glide/a/a$1;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
