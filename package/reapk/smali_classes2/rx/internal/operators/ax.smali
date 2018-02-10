.class public final Lrx/internal/operators/ax;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/e$a;


# annotations
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
.field volatile a:Lrx/i/b;

.field final b:Ljava/util/concurrent/atomic/AtomicInteger;

.field final c:Ljava/util/concurrent/locks/ReentrantLock;

.field private final d:Lrx/d/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/d/c",
            "<+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/d/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/d/c",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p0, "this":Lrx/internal/operators/ax;, "Lrx/internal/operators/ax<TT;>;"
    .local p1, "source":Lrx/d/c;, "Lrx/d/c<+TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Lrx/i/b;

    invoke-direct {v0}, Lrx/i/b;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/ax;->a:Lrx/i/b;

    .line 38
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lrx/internal/operators/ax;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 43
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/ax;->c:Ljava/util/concurrent/locks/ReentrantLock;

    .line 52
    iput-object p1, p0, Lrx/internal/operators/ax;->d:Lrx/d/c;

    .line 53
    return-void
.end method

.method private a(Lrx/l;Ljava/util/concurrent/atomic/AtomicBoolean;)Lrx/c/c;
    .locals 1
    .param p2, "writeLocked"    # Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/l",
            "<-TT;>;",
            "Ljava/util/concurrent/atomic/AtomicBoolean;",
            ")",
            "Lrx/c/c",
            "<",
            "Lrx/m;",
            ">;"
        }
    .end annotation

    .prologue
    .line 91
    .local p0, "this":Lrx/internal/operators/ax;, "Lrx/internal/operators/ax<TT;>;"
    .local p1, "subscriber":Lrx/l;, "Lrx/l<-TT;>;"
    new-instance v0, Lrx/internal/operators/ax$1;

    invoke-direct {v0, p0, p1, p2}, Lrx/internal/operators/ax$1;-><init>(Lrx/internal/operators/ax;Lrx/l;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    return-object v0
.end method

.method private a(Lrx/i/b;)Lrx/m;
    .locals 1
    .param p1, "current"    # Lrx/i/b;

    .prologue
    .line 145
    .local p0, "this":Lrx/internal/operators/ax;, "Lrx/internal/operators/ax<TT;>;"
    new-instance v0, Lrx/internal/operators/ax$3;

    invoke-direct {v0, p0, p1}, Lrx/internal/operators/ax$3;-><init>(Lrx/internal/operators/ax;Lrx/i/b;)V

    invoke-static {v0}, Lrx/i/f;->a(Lrx/c/b;)Lrx/m;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lrx/l;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/l",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/internal/operators/ax;, "Lrx/internal/operators/ax<TT;>;"
    .local p1, "subscriber":Lrx/l;, "Lrx/l<-TT;>;"
    const/4 v2, 0x1

    .line 58
    iget-object v1, p0, Lrx/internal/operators/ax;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 59
    iget-object v1, p0, Lrx/internal/operators/ax;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    if-ne v1, v2, :cond_2

    .line 61
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 67
    .local v0, "writeLocked":Ljava/util/concurrent/atomic/AtomicBoolean;
    :try_start_0
    iget-object v1, p0, Lrx/internal/operators/ax;->d:Lrx/d/c;

    invoke-direct {p0, p1, v0}, Lrx/internal/operators/ax;->a(Lrx/l;Ljava/util/concurrent/atomic/AtomicBoolean;)Lrx/c/c;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/d/c;->h(Lrx/c/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 74
    iget-object v1, p0, Lrx/internal/operators/ax;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 87
    .end local v0    # "writeLocked":Ljava/util/concurrent/atomic/AtomicBoolean;
    :cond_0
    :goto_0
    return-void

    .line 72
    .restart local v0    # "writeLocked":Ljava/util/concurrent/atomic/AtomicBoolean;
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 74
    iget-object v2, p0, Lrx/internal/operators/ax;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_1
    throw v1

    .line 80
    .end local v0    # "writeLocked":Ljava/util/concurrent/atomic/AtomicBoolean;
    :cond_2
    :try_start_1
    iget-object v1, p0, Lrx/internal/operators/ax;->a:Lrx/i/b;

    invoke-virtual {p0, p1, v1}, Lrx/internal/operators/ax;->a(Lrx/l;Lrx/i/b;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 83
    iget-object v1, p0, Lrx/internal/operators/ax;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_1
    move-exception v1

    iget-object v2, p0, Lrx/internal/operators/ax;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method a(Lrx/l;Lrx/i/b;)V
    .locals 2
    .param p2, "currentBase"    # Lrx/i/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/l",
            "<-TT;>;",
            "Lrx/i/b;",
            ")V"
        }
    .end annotation

    .prologue
    .line 110
    .local p0, "this":Lrx/internal/operators/ax;, "Lrx/internal/operators/ax<TT;>;"
    .local p1, "subscriber":Lrx/l;, "Lrx/l<-TT;>;"
    invoke-direct {p0, p2}, Lrx/internal/operators/ax;->a(Lrx/i/b;)Lrx/m;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/l;->add(Lrx/m;)V

    .line 112
    iget-object v0, p0, Lrx/internal/operators/ax;->d:Lrx/d/c;

    new-instance v1, Lrx/internal/operators/ax$2;

    invoke-direct {v1, p0, p1, p1, p2}, Lrx/internal/operators/ax$2;-><init>(Lrx/internal/operators/ax;Lrx/l;Lrx/l;Lrx/i/b;)V

    invoke-virtual {v0, v1}, Lrx/d/c;->a(Lrx/l;)Lrx/m;

    .line 142
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 34
    .local p0, "this":Lrx/internal/operators/ax;, "Lrx/internal/operators/ax<TT;>;"
    check-cast p1, Lrx/l;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/ax;->a(Lrx/l;)V

    return-void
.end method
