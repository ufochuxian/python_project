.class final Lrx/internal/operators/OnSubscribePublishMulticast$b;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "SourceFile"

# interfaces
.implements Lrx/g;
.implements Lrx/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OnSubscribePublishMulticast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicLong;",
        "Lrx/g;",
        "Lrx/m;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0xd551bf73ad85637L


# instance fields
.field final a:Lrx/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/l",
            "<-TT;>;"
        }
    .end annotation
.end field

.field final b:Lrx/internal/operators/OnSubscribePublishMulticast;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/OnSubscribePublishMulticast",
            "<TT;>;"
        }
    .end annotation
.end field

.field final c:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lrx/l;Lrx/internal/operators/OnSubscribePublishMulticast;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/l",
            "<-TT;>;",
            "Lrx/internal/operators/OnSubscribePublishMulticast",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 455
    .local p0, "this":Lrx/internal/operators/OnSubscribePublishMulticast$b;, "Lrx/internal/operators/OnSubscribePublishMulticast$b<TT;>;"
    .local p1, "actual":Lrx/l;, "Lrx/l<-TT;>;"
    .local p2, "parent":Lrx/internal/operators/OnSubscribePublishMulticast;, "Lrx/internal/operators/OnSubscribePublishMulticast<TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 456
    iput-object p1, p0, Lrx/internal/operators/OnSubscribePublishMulticast$b;->a:Lrx/l;

    .line 457
    iput-object p2, p0, Lrx/internal/operators/OnSubscribePublishMulticast$b;->b:Lrx/internal/operators/OnSubscribePublishMulticast;

    .line 458
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OnSubscribePublishMulticast$b;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 459
    return-void
.end method


# virtual methods
.method public isUnsubscribed()Z
    .locals 1

    .prologue
    .line 474
    .local p0, "this":Lrx/internal/operators/OnSubscribePublishMulticast$b;, "Lrx/internal/operators/OnSubscribePublishMulticast$b<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribePublishMulticast$b;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public request(J)V
    .locals 5
    .param p1, "n"    # J

    .prologue
    .local p0, "this":Lrx/internal/operators/OnSubscribePublishMulticast$b;, "Lrx/internal/operators/OnSubscribePublishMulticast$b<TT;>;"
    const-wide/16 v2, 0x0

    .line 463
    cmp-long v0, p1, v2

    if-gez v0, :cond_0

    .line 464
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "n >= 0 required but it was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 466
    :cond_0
    cmp-long v0, p1, v2

    if-eqz v0, :cond_1

    .line 467
    invoke-static {p0, p1, p2}, Lrx/internal/operators/a;->a(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 468
    iget-object v0, p0, Lrx/internal/operators/OnSubscribePublishMulticast$b;->b:Lrx/internal/operators/OnSubscribePublishMulticast;

    invoke-virtual {v0}, Lrx/internal/operators/OnSubscribePublishMulticast;->drain()V

    .line 470
    :cond_1
    return-void
.end method

.method public unsubscribe()V
    .locals 3

    .prologue
    .line 479
    .local p0, "this":Lrx/internal/operators/OnSubscribePublishMulticast$b;, "Lrx/internal/operators/OnSubscribePublishMulticast$b<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribePublishMulticast$b;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 480
    iget-object v0, p0, Lrx/internal/operators/OnSubscribePublishMulticast$b;->b:Lrx/internal/operators/OnSubscribePublishMulticast;

    invoke-virtual {v0, p0}, Lrx/internal/operators/OnSubscribePublishMulticast;->remove(Lrx/internal/operators/OnSubscribePublishMulticast$b;)V

    .line 482
    :cond_0
    return-void
.end method
