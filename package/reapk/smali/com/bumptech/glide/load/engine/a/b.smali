.class abstract Lcom/bumptech/glide/load/engine/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/bumptech/glide/load/engine/a/h;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final a:I = 0x14


# instance fields
.field private final b:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 7
    .local p0, "this":Lcom/bumptech/glide/load/engine/a/b;, "Lcom/bumptech/glide/load/engine/a/b<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/16 v0, 0x14

    invoke-static {v0}, Lcom/bumptech/glide/i/i;->a(I)Ljava/util/Queue;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/a/b;->b:Ljava/util/Queue;

    return-void
.end method


# virtual methods
.method public a(Lcom/bumptech/glide/load/engine/a/h;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 20
    .local p0, "this":Lcom/bumptech/glide/load/engine/a/b;, "Lcom/bumptech/glide/load/engine/a/b<TT;>;"
    .local p1, "key":Lcom/bumptech/glide/load/engine/a/h;, "TT;"
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/a/b;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    const/16 v1, 0x14

    if-ge v0, v1, :cond_0

    .line 21
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/a/b;->b:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 23
    :cond_0
    return-void
.end method

.method protected abstract b()Lcom/bumptech/glide/load/engine/a/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method protected c()Lcom/bumptech/glide/load/engine/a/h;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 12
    .local p0, "this":Lcom/bumptech/glide/load/engine/a/b;, "Lcom/bumptech/glide/load/engine/a/b<TT;>;"
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/a/b;->b:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/engine/a/h;

    .line 13
    .local v0, "result":Lcom/bumptech/glide/load/engine/a/h;, "TT;"
    if-nez v0, :cond_0

    .line 14
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/a/b;->b()Lcom/bumptech/glide/load/engine/a/h;

    move-result-object v0

    .line 16
    :cond_0
    return-object v0
.end method
