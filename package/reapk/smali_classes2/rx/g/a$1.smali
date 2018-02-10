.class Lrx/g/a$1;
.super Lrx/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/g/a;->a()Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/k",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/concurrent/atomic/AtomicReference;

.field final synthetic b:Ljava/util/concurrent/CountDownLatch;

.field final synthetic c:Ljava/util/concurrent/atomic/AtomicReference;

.field final synthetic d:Lrx/g/a;


# direct methods
.method constructor <init>(Lrx/g/a;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    .prologue
    .line 71
    .local p0, "this":Lrx/g/a$1;, "Lrx/g/a.1;"
    iput-object p1, p0, Lrx/g/a$1;->d:Lrx/g/a;

    iput-object p2, p0, Lrx/g/a$1;->a:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, Lrx/g/a$1;->b:Ljava/util/concurrent/CountDownLatch;

    iput-object p4, p0, Lrx/g/a$1;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p0}, Lrx/k;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 74
    .local p0, "this":Lrx/g/a$1;, "Lrx/g/a.1;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/g/a$1;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 75
    iget-object v0, p0, Lrx/g/a$1;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 76
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "error"    # Ljava/lang/Throwable;

    .prologue
    .line 80
    .local p0, "this":Lrx/g/a$1;, "Lrx/g/a.1;"
    iget-object v0, p0, Lrx/g/a$1;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 81
    iget-object v0, p0, Lrx/g/a$1;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 82
    return-void
.end method
