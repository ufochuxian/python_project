.class final Lrx/internal/operators/g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/e$a",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final a:Lrx/internal/operators/g$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/g$b",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/internal/operators/g$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/g$b",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 83
    .local p0, "this":Lrx/internal/operators/g$a;, "Lrx/internal/operators/g$a<TT;>;"
    .local p1, "state":Lrx/internal/operators/g$b;, "Lrx/internal/operators/g$b<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Lrx/internal/operators/g$a;->a:Lrx/internal/operators/g$b;

    .line 85
    return-void
.end method


# virtual methods
.method public a(Lrx/l;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/l",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 89
    .local p0, "this":Lrx/internal/operators/g$a;, "Lrx/internal/operators/g$a<TT;>;"
    .local p1, "s":Lrx/l;, "Lrx/l<-TT;>;"
    iget-object v2, p0, Lrx/internal/operators/g$a;->a:Lrx/internal/operators/g$b;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, p1}, Lrx/internal/operators/g$b;->a(Lrx/f;Lrx/f;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 90
    new-instance v2, Lrx/internal/operators/g$a$1;

    invoke-direct {v2, p0}, Lrx/internal/operators/g$a$1;-><init>(Lrx/internal/operators/g$a;)V

    invoke-static {v2}, Lrx/i/f;->a(Lrx/c/b;)Lrx/m;

    move-result-object v2

    invoke-virtual {p1, v2}, Lrx/l;->add(Lrx/m;)V

    .line 97
    const/4 v1, 0x0

    .line 98
    .local v1, "win":Z
    iget-object v2, p0, Lrx/internal/operators/g$a;->a:Lrx/internal/operators/g$b;

    iget-object v3, v2, Lrx/internal/operators/g$b;->a:Ljava/lang/Object;

    monitor-enter v3

    .line 99
    :try_start_0
    iget-object v2, p0, Lrx/internal/operators/g$a;->a:Lrx/internal/operators/g$b;

    iget-boolean v2, v2, Lrx/internal/operators/g$b;->b:Z

    if-nez v2, :cond_0

    .line 100
    iget-object v2, p0, Lrx/internal/operators/g$a;->a:Lrx/internal/operators/g$b;

    const/4 v4, 0x1

    iput-boolean v4, v2, Lrx/internal/operators/g$b;->b:Z

    .line 101
    const/4 v1, 0x1

    .line 103
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    if-eqz v1, :cond_2

    .line 107
    :goto_0
    iget-object v2, p0, Lrx/internal/operators/g$a;->a:Lrx/internal/operators/g$b;

    iget-object v2, v2, Lrx/internal/operators/g$b;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    .local v0, "o":Ljava/lang/Object;
    if-eqz v0, :cond_1

    .line 108
    iget-object v2, p0, Lrx/internal/operators/g$a;->a:Lrx/internal/operators/g$b;

    invoke-virtual {v2}, Lrx/internal/operators/g$b;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lrx/f;

    invoke-static {v2, v0}, Lrx/internal/operators/v;->a(Lrx/f;Ljava/lang/Object;)Z

    goto :goto_0

    .line 103
    .end local v0    # "o":Ljava/lang/Object;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 110
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_1
    iget-object v2, p0, Lrx/internal/operators/g$a;->a:Lrx/internal/operators/g$b;

    iget-object v3, v2, Lrx/internal/operators/g$b;->a:Ljava/lang/Object;

    monitor-enter v3

    .line 111
    :try_start_2
    iget-object v2, p0, Lrx/internal/operators/g$a;->a:Lrx/internal/operators/g$b;

    iget-object v2, v2, Lrx/internal/operators/g$b;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 115
    iget-object v2, p0, Lrx/internal/operators/g$a;->a:Lrx/internal/operators/g$b;

    const/4 v4, 0x0

    iput-boolean v4, v2, Lrx/internal/operators/g$b;->b:Z

    .line 116
    monitor-exit v3

    .line 124
    .end local v0    # "o":Ljava/lang/Object;
    .end local v1    # "win":Z
    :cond_2
    :goto_1
    return-void

    .line 118
    .restart local v0    # "o":Ljava/lang/Object;
    .restart local v1    # "win":Z
    :cond_3
    monitor-exit v3

    goto :goto_0

    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2

    .line 122
    .end local v0    # "o":Ljava/lang/Object;
    .end local v1    # "win":Z
    :cond_4
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Only one subscriber allowed!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Lrx/l;->onError(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 80
    .local p0, "this":Lrx/internal/operators/g$a;, "Lrx/internal/operators/g$a<TT;>;"
    check-cast p1, Lrx/l;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/g$a;->a(Lrx/l;)V

    return-void
.end method
