.class Lrx/d/b$5;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/d/b;->a(Lrx/f;)V
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

.field final synthetic b:Lrx/d/b;


# direct methods
.method constructor <init>(Lrx/d/b;Ljava/util/concurrent/BlockingQueue;)V
    .locals 0

    .prologue
    .line 513
    .local p0, "this":Lrx/d/b$5;, "Lrx/d/b.5;"
    iput-object p1, p0, Lrx/d/b$5;->b:Lrx/d/b;

    iput-object p2, p0, Lrx/d/b$5;->a:Ljava/util/concurrent/BlockingQueue;

    invoke-direct {p0}, Lrx/l;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 2

    .prologue
    .line 524
    .local p0, "this":Lrx/d/b$5;, "Lrx/d/b.5;"
    iget-object v0, p0, Lrx/d/b$5;->a:Ljava/util/concurrent/BlockingQueue;

    invoke-static {}, Lrx/internal/operators/v;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 525
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 520
    .local p0, "this":Lrx/d/b$5;, "Lrx/d/b.5;"
    iget-object v0, p0, Lrx/d/b$5;->a:Ljava/util/concurrent/BlockingQueue;

    invoke-static {p1}, Lrx/internal/operators/v;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 521
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
    .line 516
    .local p0, "this":Lrx/d/b$5;, "Lrx/d/b.5;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/d/b$5;->a:Ljava/util/concurrent/BlockingQueue;

    invoke-static {p1}, Lrx/internal/operators/v;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 517
    return-void
.end method
