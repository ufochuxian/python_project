.class abstract Lrx/internal/operators/ak$a;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "SourceFile"

# interfaces
.implements Lrx/Emitter;
.implements Lrx/g;
.implements Lrx/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/ak;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicLong;",
        "Lrx/Emitter",
        "<TT;>;",
        "Lrx/g;",
        "Lrx/m;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x65ac35ee8a56a4bfL


# instance fields
.field final a:Lrx/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/l",
            "<-TT;>;"
        }
    .end annotation
.end field

.field final b:Lrx/i/e;


# direct methods
.method public constructor <init>(Lrx/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/l",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 86
    .local p0, "this":Lrx/internal/operators/ak$a;, "Lrx/internal/operators/ak$a<TT;>;"
    .local p1, "actual":Lrx/l;, "Lrx/l<-TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 87
    iput-object p1, p0, Lrx/internal/operators/ak$a;->a:Lrx/l;

    .line 88
    new-instance v0, Lrx/i/e;

    invoke-direct {v0}, Lrx/i/e;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/ak$a;->b:Lrx/i/e;

    .line 89
    return-void
.end method


# virtual methods
.method a()V
    .locals 0

    .prologue
    .line 123
    .local p0, "this":Lrx/internal/operators/ak$a;, "Lrx/internal/operators/ak$a<TT;>;"
    return-void
.end method

.method b()V
    .locals 0

    .prologue
    .line 140
    .local p0, "this":Lrx/internal/operators/ak$a;, "Lrx/internal/operators/ak$a<TT;>;"
    return-void
.end method

.method public final isUnsubscribed()Z
    .locals 1

    .prologue
    .line 127
    .local p0, "this":Lrx/internal/operators/ak$a;, "Lrx/internal/operators/ak$a<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/ak$a;->b:Lrx/i/e;

    invoke-virtual {v0}, Lrx/i/e;->isUnsubscribed()Z

    move-result v0

    return v0
.end method

.method public onCompleted()V
    .locals 2

    .prologue
    .line 93
    .local p0, "this":Lrx/internal/operators/ak$a;, "Lrx/internal/operators/ak$a<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/ak$a;->a:Lrx/l;

    invoke-virtual {v0}, Lrx/l;->isUnsubscribed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    :goto_0
    return-void

    .line 97
    :cond_0
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/ak$a;->a:Lrx/l;

    invoke-virtual {v0}, Lrx/l;->onCompleted()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    iget-object v0, p0, Lrx/internal/operators/ak$a;->b:Lrx/i/e;

    invoke-virtual {v0}, Lrx/i/e;->unsubscribe()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lrx/internal/operators/ak$a;->b:Lrx/i/e;

    invoke-virtual {v1}, Lrx/i/e;->unsubscribe()V

    throw v0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 105
    .local p0, "this":Lrx/internal/operators/ak$a;, "Lrx/internal/operators/ak$a<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/ak$a;->a:Lrx/l;

    invoke-virtual {v0}, Lrx/l;->isUnsubscribed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    :goto_0
    return-void

    .line 109
    :cond_0
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/ak$a;->a:Lrx/l;

    invoke-virtual {v0, p1}, Lrx/l;->onError(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    iget-object v0, p0, Lrx/internal/operators/ak$a;->b:Lrx/i/e;

    invoke-virtual {v0}, Lrx/i/e;->unsubscribe()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lrx/internal/operators/ak$a;->b:Lrx/i/e;

    invoke-virtual {v1}, Lrx/i/e;->unsubscribe()V

    throw v0
.end method

.method public final request(J)V
    .locals 1
    .param p1, "n"    # J

    .prologue
    .line 132
    .local p0, "this":Lrx/internal/operators/ak$a;, "Lrx/internal/operators/ak$a<TT;>;"
    invoke-static {p1, p2}, Lrx/internal/operators/a;->a(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    invoke-static {p0, p1, p2}, Lrx/internal/operators/a;->a(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 134
    invoke-virtual {p0}, Lrx/internal/operators/ak$a;->b()V

    .line 136
    :cond_0
    return-void
.end method

.method public final requested()J
    .locals 2

    .prologue
    .line 154
    .local p0, "this":Lrx/internal/operators/ak$a;, "Lrx/internal/operators/ak$a<TT;>;"
    invoke-virtual {p0}, Lrx/internal/operators/ak$a;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public final setCancellation(Lrx/c/n;)V
    .locals 1
    .param p1, "c"    # Lrx/c/n;

    .prologue
    .line 149
    .local p0, "this":Lrx/internal/operators/ak$a;, "Lrx/internal/operators/ak$a<TT;>;"
    new-instance v0, Lrx/internal/subscriptions/CancellableSubscription;

    invoke-direct {v0, p1}, Lrx/internal/subscriptions/CancellableSubscription;-><init>(Lrx/c/n;)V

    invoke-virtual {p0, v0}, Lrx/internal/operators/ak$a;->setSubscription(Lrx/m;)V

    .line 150
    return-void
.end method

.method public final setSubscription(Lrx/m;)V
    .locals 1
    .param p1, "s"    # Lrx/m;

    .prologue
    .line 144
    .local p0, "this":Lrx/internal/operators/ak$a;, "Lrx/internal/operators/ak$a<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/ak$a;->b:Lrx/i/e;

    invoke-virtual {v0, p1}, Lrx/i/e;->a(Lrx/m;)V

    .line 145
    return-void
.end method

.method public final unsubscribe()V
    .locals 1

    .prologue
    .line 117
    .local p0, "this":Lrx/internal/operators/ak$a;, "Lrx/internal/operators/ak$a<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/ak$a;->b:Lrx/i/e;

    invoke-virtual {v0}, Lrx/i/e;->unsubscribe()V

    .line 118
    invoke-virtual {p0}, Lrx/internal/operators/ak$a;->a()V

    .line 119
    return-void
.end method
