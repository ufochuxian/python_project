.class public final Lrx/g/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation build Lrx/b/a;
.end annotation


# instance fields
.field private final a:Lrx/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/i",
            "<+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lrx/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/i",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p0, "this":Lrx/g/a;, "Lrx/g/a<TT;>;"
    .local p1, "single":Lrx/i;, "Lrx/i<+TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lrx/g/a;->a:Lrx/i;

    .line 44
    return-void
.end method

.method public static a(Lrx/i;)Lrx/g/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/i",
            "<+TT;>;)",
            "Lrx/g/a",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 54
    .local p0, "single":Lrx/i;, "Lrx/i<+TT;>;"
    new-instance v0, Lrx/g/a;

    invoke-direct {v0, p0}, Lrx/g/a;-><init>(Lrx/i;)V

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 68
    .local p0, "this":Lrx/g/a;, "Lrx/g/a<TT;>;"
    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 69
    .local v2, "returnItem":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<TT;>;"
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 70
    .local v1, "returnException":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/Throwable;>;"
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v5, 0x1

    invoke-direct {v0, v5}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 71
    .local v0, "latch":Ljava/util/concurrent/CountDownLatch;
    iget-object v5, p0, Lrx/g/a;->a:Lrx/i;

    new-instance v6, Lrx/g/a$1;

    invoke-direct {v6, p0, v2, v0, v1}, Lrx/g/a$1;-><init>(Lrx/g/a;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-virtual {v5, v6}, Lrx/i;->a(Lrx/k;)Lrx/m;

    move-result-object v3

    .line 85
    .local v3, "subscription":Lrx/m;
    invoke-static {v0, v3}, Lrx/internal/util/d;->a(Ljava/util/concurrent/CountDownLatch;Lrx/m;)V

    .line 86
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Throwable;

    .line 87
    .local v4, "throwable":Ljava/lang/Throwable;
    if-eqz v4, :cond_0

    .line 88
    invoke-static {v4}, Lrx/exceptions/a;->a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v5

    throw v5

    .line 90
    :cond_0
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    return-object v5
.end method

.method public b()Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 100
    .local p0, "this":Lrx/g/a;, "Lrx/g/a<TT;>;"
    iget-object v0, p0, Lrx/g/a;->a:Lrx/i;

    invoke-virtual {v0}, Lrx/i;->c()Lrx/e;

    move-result-object v0

    invoke-static {v0}, Lrx/internal/operators/e;->a(Lrx/e;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method
