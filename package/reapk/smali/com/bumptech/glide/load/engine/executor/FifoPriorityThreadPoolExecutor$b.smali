.class Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$b;
.super Ljava/util/concurrent/FutureTask;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/FutureTask",
        "<TT;>;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$b",
        "<*>;>;"
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:I


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;Ljava/lang/Object;I)V
    .locals 2
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .param p3, "order"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "TT;I)V"
        }
    .end annotation

    .prologue
    .line 132
    .local p0, "this":Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$b;, "Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$b<TT;>;"
    .local p2, "result":Ljava/lang/Object;, "TT;"
    invoke-direct {p0, p1, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 133
    instance-of v0, p1, Lcom/bumptech/glide/load/engine/executor/a;

    if-nez v0, :cond_0

    .line 134
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "FifoPriorityThreadPoolExecutor must be given Runnables that implement Prioritized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 137
    :cond_0
    check-cast p1, Lcom/bumptech/glide/load/engine/executor/a;

    .end local p1    # "runnable":Ljava/lang/Runnable;
    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/executor/a;->b()I

    move-result v0

    iput v0, p0, Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$b;->a:I

    .line 138
    iput p3, p0, Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$b;->b:I

    .line 139
    return-void
.end method


# virtual methods
.method public a(Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$b;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$b",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .line 160
    .local p0, "this":Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$b;, "Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$b<TT;>;"
    .local p1, "loadTask":Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$b;, "Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$b<*>;"
    iget v1, p0, Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$b;->a:I

    iget v2, p1, Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$b;->a:I

    sub-int v0, v1, v2

    .line 161
    .local v0, "result":I
    if-nez v0, :cond_0

    .line 162
    iget v1, p0, Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$b;->b:I

    iget v2, p1, Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$b;->b:I

    sub-int v0, v1, v2

    .line 164
    :cond_0
    return v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 127
    .local p0, "this":Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$b;, "Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$b<TT;>;"
    check-cast p1, Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$b;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$b;->a(Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$b;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$b;, "Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$b<TT;>;"
    const/4 v1, 0x0

    .line 144
    instance-of v2, p1, Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$b;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 145
    check-cast v0, Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$b;

    .line 146
    .local v0, "other":Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$b;, "Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$b<Ljava/lang/Object;>;"
    iget v2, p0, Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$b;->b:I

    iget v3, v0, Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$b;->b:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$b;->a:I

    iget v3, v0, Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$b;->a:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    .line 148
    .end local v0    # "other":Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$b;, "Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$b<Ljava/lang/Object;>;"
    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 153
    .local p0, "this":Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$b;, "Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$b<TT;>;"
    iget v0, p0, Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$b;->a:I

    .line 154
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$b;->b:I

    add-int v0, v1, v2

    .line 155
    return v0
.end method
