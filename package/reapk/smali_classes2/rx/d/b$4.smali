.class Lrx/d/b$4;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/d/b;->i()V
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
.field final synthetic a:[Ljava/lang/Throwable;

.field final synthetic b:Ljava/util/concurrent/CountDownLatch;

.field final synthetic c:Lrx/d/b;


# direct methods
.method constructor <init>(Lrx/d/b;[Ljava/lang/Throwable;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .prologue
    .line 479
    .local p0, "this":Lrx/d/b$4;, "Lrx/d/b.4;"
    iput-object p1, p0, Lrx/d/b$4;->c:Lrx/d/b;

    iput-object p2, p0, Lrx/d/b$4;->a:[Ljava/lang/Throwable;

    iput-object p3, p0, Lrx/d/b$4;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Lrx/l;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 492
    .local p0, "this":Lrx/d/b$4;, "Lrx/d/b.4;"
    iget-object v0, p0, Lrx/d/b$4;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 493
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 486
    .local p0, "this":Lrx/d/b$4;, "Lrx/d/b.4;"
    iget-object v0, p0, Lrx/d/b$4;->a:[Ljava/lang/Throwable;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 487
    iget-object v0, p0, Lrx/d/b$4;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 488
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 483
    .local p0, "this":Lrx/d/b$4;, "Lrx/d/b.4;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    return-void
.end method
