.class Lcom/bumptech/glide/load/resource/d/i$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/resource/d/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/bumptech/glide/b/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/bumptech/glide/i/i;->a(I)Ljava/util/Queue;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/d/i$a;->a:Ljava/util/Queue;

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Lcom/bumptech/glide/b/a$a;)Lcom/bumptech/glide/b/a;
    .locals 2
    .param p1, "bitmapProvider"    # Lcom/bumptech/glide/b/a$a;

    .prologue
    .line 121
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/load/resource/d/i$a;->a:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/b/a;

    .line 122
    .local v0, "result":Lcom/bumptech/glide/b/a;
    if-nez v0, :cond_0

    .line 123
    new-instance v0, Lcom/bumptech/glide/b/a;

    .end local v0    # "result":Lcom/bumptech/glide/b/a;
    invoke-direct {v0, p1}, Lcom/bumptech/glide/b/a;-><init>(Lcom/bumptech/glide/b/a$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    .restart local v0    # "result":Lcom/bumptech/glide/b/a;
    :cond_0
    monitor-exit p0

    return-object v0

    .line 121
    .end local v0    # "result":Lcom/bumptech/glide/b/a;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized a(Lcom/bumptech/glide/b/a;)V
    .locals 1
    .param p1, "decoder"    # Lcom/bumptech/glide/b/a;

    .prologue
    .line 129
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/bumptech/glide/b/a;->l()V

    .line 130
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/i$a;->a:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    monitor-exit p0

    return-void

    .line 129
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
