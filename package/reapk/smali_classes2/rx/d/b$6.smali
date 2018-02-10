.class Lrx/d/b$6;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/d/b;->a(Lrx/l;)V
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
.field final synthetic a:Ljava/util/concurrent/BlockingQueue;

.field final synthetic b:[Lrx/g;

.field final synthetic c:Lrx/d/b;


# direct methods
.method constructor <init>(Lrx/d/b;Ljava/util/concurrent/BlockingQueue;[Lrx/g;)V
    .locals 0

    .prologue
    .line 559
    .local p0, "this":Lrx/d/b$6;, "Lrx/d/b.6;"
    iput-object p1, p0, Lrx/d/b$6;->c:Lrx/d/b;

    iput-object p2, p0, Lrx/d/b$6;->a:Ljava/util/concurrent/BlockingQueue;

    iput-object p3, p0, Lrx/d/b$6;->b:[Lrx/g;

    invoke-direct {p0}, Lrx/l;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 2

    .prologue
    .line 570
    .local p0, "this":Lrx/d/b$6;, "Lrx/d/b.6;"
    iget-object v0, p0, Lrx/d/b$6;->a:Ljava/util/concurrent/BlockingQueue;

    invoke-static {}, Lrx/internal/operators/v;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 571
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 566
    .local p0, "this":Lrx/d/b$6;, "Lrx/d/b.6;"
    iget-object v0, p0, Lrx/d/b$6;->a:Ljava/util/concurrent/BlockingQueue;

    invoke-static {p1}, Lrx/internal/operators/v;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 567
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 562
    .local p0, "this":Lrx/d/b$6;, "Lrx/d/b.6;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/d/b$6;->a:Ljava/util/concurrent/BlockingQueue;

    invoke-static {p1}, Lrx/internal/operators/v;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 563
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 581
    .local p0, "this":Lrx/d/b$6;, "Lrx/d/b.6;"
    iget-object v0, p0, Lrx/d/b$6;->a:Ljava/util/concurrent/BlockingQueue;

    sget-object v1, Lrx/d/b;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 582
    return-void
.end method

.method public setProducer(Lrx/g;)V
    .locals 2
    .param p1, "p"    # Lrx/g;

    .prologue
    .line 575
    .local p0, "this":Lrx/d/b$6;, "Lrx/d/b.6;"
    iget-object v0, p0, Lrx/d/b$6;->b:[Lrx/g;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 576
    iget-object v0, p0, Lrx/d/b$6;->a:Ljava/util/concurrent/BlockingQueue;

    sget-object v1, Lrx/d/b;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 577
    return-void
.end method
