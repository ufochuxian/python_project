.class final Lrx/internal/schedulers/m$a;
.super Lrx/h$a;
.source "SourceFile"

# interfaces
.implements Lrx/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/schedulers/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field final a:Ljava/util/concurrent/atomic/AtomicInteger;

.field final b:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue",
            "<",
            "Lrx/internal/schedulers/m$b;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lrx/i/a;

.field private final d:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lrx/h$a;-><init>()V

    .line 45
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lrx/internal/schedulers/m$a;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 46
    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v0, p0, Lrx/internal/schedulers/m$a;->b:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 47
    new-instance v0, Lrx/i/a;

    invoke-direct {v0}, Lrx/i/a;-><init>()V

    iput-object v0, p0, Lrx/internal/schedulers/m$a;->c:Lrx/i/a;

    .line 48
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lrx/internal/schedulers/m$a;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method private a(Lrx/c/b;J)Lrx/m;
    .locals 4
    .param p1, "action"    # Lrx/c/b;
    .param p2, "execTime"    # J

    .prologue
    .line 63
    iget-object v2, p0, Lrx/internal/schedulers/m$a;->c:Lrx/i/a;

    invoke-virtual {v2}, Lrx/i/a;->isUnsubscribed()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 64
    invoke-static {}, Lrx/i/f;->b()Lrx/m;

    move-result-object v2

    .line 79
    :goto_0
    return-object v2

    .line 66
    :cond_0
    new-instance v1, Lrx/internal/schedulers/m$b;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v3, p0, Lrx/internal/schedulers/m$a;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v3

    invoke-direct {v1, p1, v2, v3}, Lrx/internal/schedulers/m$b;-><init>(Lrx/c/b;Ljava/lang/Long;I)V

    .line 67
    .local v1, "timedAction":Lrx/internal/schedulers/m$b;
    iget-object v2, p0, Lrx/internal/schedulers/m$a;->b:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 69
    iget-object v2, p0, Lrx/internal/schedulers/m$a;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v2

    if-nez v2, :cond_3

    .line 71
    :cond_1
    iget-object v2, p0, Lrx/internal/schedulers/m$a;->b:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/PriorityBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/internal/schedulers/m$b;

    .line 72
    .local v0, "polled":Lrx/internal/schedulers/m$b;
    if-eqz v0, :cond_2

    .line 73
    iget-object v2, v0, Lrx/internal/schedulers/m$b;->a:Lrx/c/b;

    invoke-interface {v2}, Lrx/c/b;->call()V

    .line 75
    :cond_2
    iget-object v2, p0, Lrx/internal/schedulers/m$a;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v2

    if-gtz v2, :cond_1

    .line 76
    invoke-static {}, Lrx/i/f;->b()Lrx/m;

    move-result-object v2

    goto :goto_0

    .line 79
    .end local v0    # "polled":Lrx/internal/schedulers/m$b;
    :cond_3
    new-instance v2, Lrx/internal/schedulers/m$a$1;

    invoke-direct {v2, p0, v1}, Lrx/internal/schedulers/m$a$1;-><init>(Lrx/internal/schedulers/m$a;Lrx/internal/schedulers/m$b;)V

    invoke-static {v2}, Lrx/i/f;->a(Lrx/c/b;)Lrx/m;

    move-result-object v2

    goto :goto_0
.end method


# virtual methods
.method public a(Lrx/c/b;)Lrx/m;
    .locals 2
    .param p1, "action"    # Lrx/c/b;

    .prologue
    .line 52
    invoke-virtual {p0}, Lrx/internal/schedulers/m$a;->a()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lrx/internal/schedulers/m$a;->a(Lrx/c/b;J)Lrx/m;

    move-result-object v0

    return-object v0
.end method

.method public a(Lrx/c/b;JLjava/util/concurrent/TimeUnit;)Lrx/m;
    .locals 6
    .param p1, "action"    # Lrx/c/b;
    .param p2, "delayTime"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 57
    invoke-virtual {p0}, Lrx/internal/schedulers/m$a;->a()J

    move-result-wide v2

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    add-long v0, v2, v4

    .line 59
    .local v0, "execTime":J
    new-instance v2, Lrx/internal/schedulers/l;

    invoke-direct {v2, p1, p0, v0, v1}, Lrx/internal/schedulers/l;-><init>(Lrx/c/b;Lrx/h$a;J)V

    invoke-direct {p0, v2, v0, v1}, Lrx/internal/schedulers/m$a;->a(Lrx/c/b;J)Lrx/m;

    move-result-object v2

    return-object v2
.end method

.method public isUnsubscribed()Z
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lrx/internal/schedulers/m$a;->c:Lrx/i/a;

    invoke-virtual {v0}, Lrx/i/a;->isUnsubscribed()Z

    move-result v0

    return v0
.end method

.method public unsubscribe()V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lrx/internal/schedulers/m$a;->c:Lrx/i/a;

    invoke-virtual {v0}, Lrx/i/a;->unsubscribe()V

    .line 93
    return-void
.end method
