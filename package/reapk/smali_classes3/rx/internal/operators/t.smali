.class public abstract Lrx/internal/operators/t;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/t$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/l",
        "<TT;>;"
    }
.end annotation


# static fields
.field static final e:I = 0x0

.field static final f:I = 0x1

.field static final g:I = 0x2

.field static final h:I = 0x3


# instance fields
.field protected final a:Lrx/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/l",
            "<-TR;>;"
        }
    .end annotation
.end field

.field protected b:Z

.field protected c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field

.field final d:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Lrx/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/l",
            "<-TR;>;)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p0, "this":Lrx/internal/operators/t;, "Lrx/internal/operators/t<TT;TR;>;"
    .local p1, "actual":Lrx/l;, "Lrx/l<-TR;>;"
    invoke-direct {p0}, Lrx/l;-><init>()V

    .line 60
    iput-object p1, p0, Lrx/internal/operators/t;->a:Lrx/l;

    .line 61
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/t;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 62
    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 1

    .prologue
    .line 83
    .local p0, "this":Lrx/internal/operators/t;, "Lrx/internal/operators/t<TT;TR;>;"
    iget-object v0, p0, Lrx/internal/operators/t;->a:Lrx/l;

    invoke-virtual {v0}, Lrx/l;->onCompleted()V

    .line 84
    return-void
.end method

.method final a(J)V
    .locals 11
    .param p1, "n"    # J

    .prologue
    .local p0, "this":Lrx/internal/operators/t;, "Lrx/internal/operators/t<TT;TR;>;"
    const-wide/16 v8, 0x0

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 115
    cmp-long v2, p1, v8

    if-gez v2, :cond_0

    .line 116
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "n >= 0 required but it was "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 118
    :cond_0
    cmp-long v2, p1, v8

    if-eqz v2, :cond_2

    .line 119
    iget-object v0, p0, Lrx/internal/operators/t;->a:Lrx/l;

    .line 121
    .local v0, "a":Lrx/l;, "Lrx/l<-TR;>;"
    :cond_1
    iget-object v2, p0, Lrx/internal/operators/t;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    .line 122
    .local v1, "s":I
    if-eq v1, v4, :cond_2

    if-eq v1, v6, :cond_2

    invoke-virtual {v0}, Lrx/l;->isUnsubscribed()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 139
    .end local v0    # "a":Lrx/l;, "Lrx/l<-TR;>;"
    .end local v1    # "s":I
    :cond_2
    :goto_0
    return-void

    .line 125
    .restart local v0    # "a":Lrx/l;, "Lrx/l<-TR;>;"
    .restart local v1    # "s":I
    :cond_3
    if-ne v1, v5, :cond_4

    .line 126
    iget-object v2, p0, Lrx/internal/operators/t;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v5, v6}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 127
    iget-object v2, p0, Lrx/internal/operators/t;->c:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Lrx/l;->onNext(Ljava/lang/Object;)V

    .line 128
    invoke-virtual {v0}, Lrx/l;->isUnsubscribed()Z

    move-result v2

    if-nez v2, :cond_2

    .line 129
    invoke-virtual {v0}, Lrx/l;->onCompleted()V

    goto :goto_0

    .line 134
    :cond_4
    iget-object v2, p0, Lrx/internal/operators/t;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0
.end method

.method protected final a(Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/internal/operators/t;, "Lrx/internal/operators/t<TT;TR;>;"
    .local p1, "value":Ljava/lang/Object;, "TR;"
    const/4 v5, 0x3

    const/4 v4, 0x2

    .line 92
    iget-object v0, p0, Lrx/internal/operators/t;->a:Lrx/l;

    .line 94
    .local v0, "a":Lrx/l;, "Lrx/l<-TR;>;"
    :cond_0
    iget-object v2, p0, Lrx/internal/operators/t;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    .line 96
    .local v1, "s":I
    if-eq v1, v4, :cond_1

    if-eq v1, v5, :cond_1

    invoke-virtual {v0}, Lrx/l;->isUnsubscribed()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 109
    :cond_1
    :goto_0
    return-void

    .line 99
    :cond_2
    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 100
    invoke-virtual {v0, p1}, Lrx/l;->onNext(Ljava/lang/Object;)V

    .line 101
    invoke-virtual {v0}, Lrx/l;->isUnsubscribed()Z

    move-result v2

    if-nez v2, :cond_3

    .line 102
    invoke-virtual {v0}, Lrx/l;->onCompleted()V

    .line 104
    :cond_3
    iget-object v2, p0, Lrx/internal/operators/t;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v5}, Ljava/util/concurrent/atomic/AtomicInteger;->lazySet(I)V

    goto :goto_0

    .line 107
    :cond_4
    iput-object p1, p0, Lrx/internal/operators/t;->c:Ljava/lang/Object;

    .line 108
    iget-object v2, p0, Lrx/internal/operators/t;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0
.end method

.method public final a(Lrx/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/e",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 152
    .local p0, "this":Lrx/internal/operators/t;, "Lrx/internal/operators/t<TT;TR;>;"
    .local p1, "source":Lrx/e;, "Lrx/e<+TT;>;"
    invoke-virtual {p0}, Lrx/internal/operators/t;->b()V

    .line 153
    invoke-virtual {p1, p0}, Lrx/e;->a(Lrx/l;)Lrx/m;

    .line 154
    return-void
.end method

.method final b()V
    .locals 2

    .prologue
    .line 157
    .local p0, "this":Lrx/internal/operators/t;, "Lrx/internal/operators/t<TT;TR;>;"
    iget-object v0, p0, Lrx/internal/operators/t;->a:Lrx/l;

    .line 158
    .local v0, "a":Lrx/l;, "Lrx/l<-TR;>;"
    invoke-virtual {v0, p0}, Lrx/l;->add(Lrx/m;)V

    .line 159
    new-instance v1, Lrx/internal/operators/t$a;

    invoke-direct {v1, p0}, Lrx/internal/operators/t$a;-><init>(Lrx/internal/operators/t;)V

    invoke-virtual {v0, v1}, Lrx/l;->setProducer(Lrx/g;)V

    .line 160
    return-void
.end method

.method public onCompleted()V
    .locals 1

    .prologue
    .line 72
    .local p0, "this":Lrx/internal/operators/t;, "Lrx/internal/operators/t<TT;TR;>;"
    iget-boolean v0, p0, Lrx/internal/operators/t;->b:Z

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lrx/internal/operators/t;->c:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lrx/internal/operators/t;->a(Ljava/lang/Object;)V

    .line 77
    :goto_0
    return-void

    .line 75
    :cond_0
    invoke-virtual {p0}, Lrx/internal/operators/t;->a()V

    goto :goto_0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 66
    .local p0, "this":Lrx/internal/operators/t;, "Lrx/internal/operators/t<TT;TR;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lrx/internal/operators/t;->c:Ljava/lang/Object;

    .line 67
    iget-object v0, p0, Lrx/internal/operators/t;->a:Lrx/l;

    invoke-virtual {v0, p1}, Lrx/l;->onError(Ljava/lang/Throwable;)V

    .line 68
    return-void
.end method

.method public final setProducer(Lrx/g;)V
    .locals 2
    .param p1, "p"    # Lrx/g;

    .prologue
    .line 143
    .local p0, "this":Lrx/internal/operators/t;, "Lrx/internal/operators/t<TT;TR;>;"
    const-wide v0, 0x7fffffffffffffffL

    invoke-interface {p1, v0, v1}, Lrx/g;->request(J)V

    .line 144
    return-void
.end method
