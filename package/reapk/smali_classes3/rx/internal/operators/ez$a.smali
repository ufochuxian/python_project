.class final Lrx/internal/operators/ez$a;
.super Lrx/k;
.source "SourceFile"

# interfaces
.implements Lrx/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/ez;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/ez$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/k",
        "<TT;>;",
        "Lrx/c/b;"
    }
.end annotation


# instance fields
.field final a:Lrx/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/k",
            "<-TT;>;"
        }
    .end annotation
.end field

.field final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final c:Lrx/i$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/i$a",
            "<+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lrx/k;Lrx/i$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/k",
            "<-TT;>;",
            "Lrx/i$a",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 69
    .local p0, "this":Lrx/internal/operators/ez$a;, "Lrx/internal/operators/ez$a<TT;>;"
    .local p1, "actual":Lrx/k;, "Lrx/k<-TT;>;"
    .local p2, "other":Lrx/i$a;, "Lrx/i$a<+TT;>;"
    invoke-direct {p0}, Lrx/k;-><init>()V

    .line 70
    iput-object p1, p0, Lrx/internal/operators/ez$a;->a:Lrx/k;

    .line 71
    iput-object p2, p0, Lrx/internal/operators/ez$a;->c:Lrx/i$a;

    .line 72
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/ez$a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 73
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 77
    .local p0, "this":Lrx/internal/operators/ez$a;, "Lrx/internal/operators/ez$a<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/operators/ez$a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/ez$a;->a:Lrx/k;

    invoke-virtual {v0, p1}, Lrx/k;->a(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    invoke-virtual {p0}, Lrx/internal/operators/ez$a;->unsubscribe()V

    .line 84
    :cond_0
    return-void

    .line 81
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lrx/internal/operators/ez$a;->unsubscribe()V

    throw v0
.end method

.method public call()V
    .locals 5

    .prologue
    .line 101
    .local p0, "this":Lrx/internal/operators/ez$a;, "Lrx/internal/operators/ez$a<TT;>;"
    iget-object v2, p0, Lrx/internal/operators/ez$a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 103
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/ez$a;->c:Lrx/i$a;

    .line 105
    .local v0, "o":Lrx/i$a;, "Lrx/i$a<+TT;>;"
    if-nez v0, :cond_1

    .line 106
    iget-object v2, p0, Lrx/internal/operators/ez$a;->a:Lrx/k;

    new-instance v3, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v3}, Ljava/util/concurrent/TimeoutException;-><init>()V

    invoke-virtual {v2, v3}, Lrx/k;->onError(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    :goto_0
    invoke-virtual {p0}, Lrx/internal/operators/ez$a;->unsubscribe()V

    .line 116
    .end local v0    # "o":Lrx/i$a;, "Lrx/i$a<+TT;>;"
    :cond_0
    return-void

    .line 108
    .restart local v0    # "o":Lrx/i$a;, "Lrx/i$a<+TT;>;"
    :cond_1
    :try_start_1
    new-instance v1, Lrx/internal/operators/ez$a$a;

    iget-object v2, p0, Lrx/internal/operators/ez$a;->a:Lrx/k;

    invoke-direct {v1, v2}, Lrx/internal/operators/ez$a$a;-><init>(Lrx/k;)V

    .line 109
    .local v1, "p":Lrx/internal/operators/ez$a$a;, "Lrx/internal/operators/ez$a$a<TT;>;"
    iget-object v2, p0, Lrx/internal/operators/ez$a;->a:Lrx/k;

    invoke-virtual {v2, v1}, Lrx/k;->a(Lrx/m;)V

    .line 110
    invoke-interface {v0, v1}, Lrx/i$a;->call(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 113
    .end local v0    # "o":Lrx/i$a;, "Lrx/i$a<+TT;>;"
    .end local v1    # "p":Lrx/internal/operators/ez$a$a;, "Lrx/internal/operators/ez$a$a<TT;>;"
    :catchall_0
    move-exception v2

    invoke-virtual {p0}, Lrx/internal/operators/ez$a;->unsubscribe()V

    throw v2
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "error"    # Ljava/lang/Throwable;

    .prologue
    .line 88
    .local p0, "this":Lrx/internal/operators/ez$a;, "Lrx/internal/operators/ez$a<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/ez$a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/ez$a;->a:Lrx/k;

    invoke-virtual {v0, p1}, Lrx/k;->onError(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    invoke-virtual {p0}, Lrx/internal/operators/ez$a;->unsubscribe()V

    .line 97
    :goto_0
    return-void

    .line 92
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lrx/internal/operators/ez$a;->unsubscribe()V

    throw v0

    .line 95
    :cond_0
    invoke-static {p1}, Lrx/f/c;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
