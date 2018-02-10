.class Lrx/internal/util/e$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/util/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/atomic/AtomicIntegerArray;

.field private final b:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lrx/internal/util/e$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 496
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 498
    new-instance v0, Ljava/util/concurrent/atomic/AtomicIntegerArray;

    sget v1, Lrx/internal/util/e;->c:I

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerArray;-><init>(I)V

    iput-object v0, p0, Lrx/internal/util/e$b;->a:Ljava/util/concurrent/atomic/AtomicIntegerArray;

    .line 500
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lrx/internal/util/e$b;->b:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public a(II)I
    .locals 1
    .param p1, "expected"    # I
    .param p2, "newValue"    # I

    .prologue
    .line 503
    iget-object v0, p0, Lrx/internal/util/e$b;->a:Ljava/util/concurrent/atomic/AtomicIntegerArray;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->getAndSet(II)I

    move-result v0

    return v0
.end method

.method a()Lrx/internal/util/e$b;
    .locals 3

    .prologue
    .line 511
    iget-object v1, p0, Lrx/internal/util/e$b;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 512
    iget-object v1, p0, Lrx/internal/util/e$b;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/internal/util/e$b;

    .line 520
    :goto_0
    return-object v1

    .line 514
    :cond_0
    new-instance v0, Lrx/internal/util/e$b;

    invoke-direct {v0}, Lrx/internal/util/e$b;-><init>()V

    .line 515
    .local v0, "newSection":Lrx/internal/util/e$b;
    iget-object v1, p0, Lrx/internal/util/e$b;->b:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v0

    .line 517
    goto :goto_0

    .line 520
    :cond_1
    iget-object v1, p0, Lrx/internal/util/e$b;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/internal/util/e$b;

    goto :goto_0
.end method

.method public b(II)V
    .locals 1
    .param p1, "i"    # I
    .param p2, "elementIndex"    # I

    .prologue
    .line 507
    iget-object v0, p0, Lrx/internal/util/e$b;->a:Ljava/util/concurrent/atomic/AtomicIntegerArray;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->set(II)V

    .line 508
    return-void
.end method
