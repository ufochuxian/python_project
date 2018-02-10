.class Lrx/d/b$3;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/d/b;->b(Lrx/e;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/l",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/concurrent/CountDownLatch;

.field final synthetic b:Ljava/util/concurrent/atomic/AtomicReference;

.field final synthetic c:Ljava/util/concurrent/atomic/AtomicReference;

.field final synthetic d:Lrx/d/b;


# direct methods
.method constructor <init>(Lrx/d/b;Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    .prologue
    .line 444
    .local p0, "this":Lrx/d/b$3;, "Lrx/d/b.3;"
    iput-object p1, p0, Lrx/d/b$3;->d:Lrx/d/b;

    iput-object p2, p0, Lrx/d/b$3;->a:Ljava/util/concurrent/CountDownLatch;

    iput-object p3, p0, Lrx/d/b$3;->b:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p4, p0, Lrx/d/b$3;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p0}, Lrx/l;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 447
    .local p0, "this":Lrx/d/b$3;, "Lrx/d/b.3;"
    iget-object v0, p0, Lrx/d/b$3;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 448
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 452
    .local p0, "this":Lrx/d/b$3;, "Lrx/d/b.3;"
    iget-object v0, p0, Lrx/d/b$3;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 453
    iget-object v0, p0, Lrx/d/b$3;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 454
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 458
    .local p0, "this":Lrx/d/b$3;, "Lrx/d/b.3;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/d/b$3;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 459
    return-void
.end method
