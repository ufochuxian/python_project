.class final Lrx/internal/operators/k$a;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/k$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/l",
        "<",
        "Lrx/b;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Lrx/d;

.field final b:Lrx/internal/subscriptions/SequentialSubscription;

.field final c:Lrx/internal/util/a/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/util/a/z",
            "<",
            "Lrx/b;",
            ">;"
        }
    .end annotation
.end field

.field final d:Lrx/internal/operators/k$a$a;

.field final e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field volatile f:Z

.field volatile g:Z


# direct methods
.method public constructor <init>(Lrx/d;I)V
    .locals 2
    .param p1, "actual"    # Lrx/d;
    .param p2, "prefetch"    # I

    .prologue
    .line 60
    invoke-direct {p0}, Lrx/l;-><init>()V

    .line 61
    iput-object p1, p0, Lrx/internal/operators/k$a;->a:Lrx/d;

    .line 62
    new-instance v0, Lrx/internal/util/a/z;

    invoke-direct {v0, p2}, Lrx/internal/util/a/z;-><init>(I)V

    iput-object v0, p0, Lrx/internal/operators/k$a;->c:Lrx/internal/util/a/z;

    .line 63
    new-instance v0, Lrx/internal/subscriptions/SequentialSubscription;

    invoke-direct {v0}, Lrx/internal/subscriptions/SequentialSubscription;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/k$a;->b:Lrx/internal/subscriptions/SequentialSubscription;

    .line 64
    new-instance v0, Lrx/internal/operators/k$a$a;

    invoke-direct {v0, p0}, Lrx/internal/operators/k$a$a;-><init>(Lrx/internal/operators/k$a;)V

    iput-object v0, p0, Lrx/internal/operators/k$a;->d:Lrx/internal/operators/k$a$a;

    .line 65
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/k$a;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 66
    iget-object v0, p0, Lrx/internal/operators/k$a;->b:Lrx/internal/subscriptions/SequentialSubscription;

    invoke-virtual {p0, v0}, Lrx/internal/operators/k$a;->add(Lrx/m;)V

    .line 67
    int-to-long v0, p2

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/k$a;->request(J)V

    .line 68
    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    iput-boolean v0, p0, Lrx/internal/operators/k$a;->g:Z

    .line 104
    invoke-virtual {p0}, Lrx/internal/operators/k$a;->b()V

    .line 105
    return-void
.end method

.method a(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 98
    invoke-virtual {p0}, Lrx/internal/operators/k$a;->unsubscribe()V

    .line 99
    invoke-virtual {p0, p1}, Lrx/internal/operators/k$a;->onError(Ljava/lang/Throwable;)V

    .line 100
    return-void
.end method

.method public a(Lrx/b;)V
    .locals 1
    .param p1, "t"    # Lrx/b;

    .prologue
    .line 72
    iget-object v0, p0, Lrx/internal/operators/k$a;->c:Lrx/internal/util/a/z;

    invoke-virtual {v0, p1}, Lrx/internal/util/a/z;->offer(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    new-instance v0, Lrx/exceptions/MissingBackpressureException;

    invoke-direct {v0}, Lrx/exceptions/MissingBackpressureException;-><init>()V

    invoke-virtual {p0, v0}, Lrx/internal/operators/k$a;->onError(Ljava/lang/Throwable;)V

    .line 77
    :goto_0
    return-void

    .line 76
    :cond_0
    invoke-virtual {p0}, Lrx/internal/operators/k$a;->b()V

    goto :goto_0
.end method

.method b()V
    .locals 8

    .prologue
    const/4 v4, 0x1

    .line 108
    iget-object v3, p0, Lrx/internal/operators/k$a;->d:Lrx/internal/operators/k$a$a;

    .line 109
    .local v3, "inner":Lrx/internal/operators/k$a$a;
    invoke-virtual {v3}, Lrx/internal/operators/k$a$a;->getAndIncrement()I

    move-result v5

    if-eqz v5, :cond_1

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 114
    :cond_1
    invoke-virtual {p0}, Lrx/internal/operators/k$a;->isUnsubscribed()Z

    move-result v5

    if-nez v5, :cond_0

    .line 117
    iget-boolean v5, p0, Lrx/internal/operators/k$a;->g:Z

    if-nez v5, :cond_4

    .line 118
    iget-boolean v1, p0, Lrx/internal/operators/k$a;->f:Z

    .line 119
    .local v1, "d":Z
    iget-object v5, p0, Lrx/internal/operators/k$a;->c:Lrx/internal/util/a/z;

    invoke-virtual {v5}, Lrx/internal/util/a/z;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/b;

    .line 120
    .local v0, "c":Lrx/b;
    if-nez v0, :cond_2

    move v2, v4

    .line 122
    .local v2, "empty":Z
    :goto_1
    if-eqz v1, :cond_3

    if-eqz v2, :cond_3

    .line 123
    iget-object v4, p0, Lrx/internal/operators/k$a;->a:Lrx/d;

    invoke-interface {v4}, Lrx/d;->onCompleted()V

    goto :goto_0

    .line 120
    .end local v2    # "empty":Z
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 127
    .restart local v2    # "empty":Z
    :cond_3
    if-nez v2, :cond_4

    .line 128
    iput-boolean v4, p0, Lrx/internal/operators/k$a;->g:Z

    .line 129
    invoke-virtual {v0, v3}, Lrx/b;->b(Lrx/d;)V

    .line 131
    const-wide/16 v6, 0x1

    invoke-virtual {p0, v6, v7}, Lrx/internal/operators/k$a;->request(J)V

    .line 134
    .end local v0    # "c":Lrx/b;
    .end local v1    # "d":Z
    .end local v2    # "empty":Z
    :cond_4
    invoke-virtual {v3}, Lrx/internal/operators/k$a$a;->decrementAndGet()I

    move-result v5

    if-nez v5, :cond_1

    goto :goto_0
.end method

.method public onCompleted()V
    .locals 1

    .prologue
    .line 90
    iget-boolean v0, p0, Lrx/internal/operators/k$a;->f:Z

    if-eqz v0, :cond_0

    .line 95
    :goto_0
    return-void

    .line 93
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/k$a;->f:Z

    .line 94
    invoke-virtual {p0}, Lrx/internal/operators/k$a;->b()V

    goto :goto_0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 81
    iget-object v0, p0, Lrx/internal/operators/k$a;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lrx/internal/operators/k$a;->a:Lrx/d;

    invoke-interface {v0, p1}, Lrx/d;->onError(Ljava/lang/Throwable;)V

    .line 86
    :goto_0
    return-void

    .line 85
    :cond_0
    invoke-static {p1}, Lrx/f/c;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 45
    check-cast p1, Lrx/b;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/k$a;->a(Lrx/b;)V

    return-void
.end method
