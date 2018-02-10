.class final Lrx/internal/operators/cp$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/cp;->u(Lrx/e;)Lrx/d/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/e$a",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method constructor <init>(Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lrx/internal/operators/cp$1;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lrx/l;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/l",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 57
    .local p1, "child":Lrx/l;, "Lrx/l<-TT;>;"
    :cond_0
    iget-object v3, p0, Lrx/internal/operators/cp$1;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/internal/operators/cp$b;

    .line 59
    .local v1, "r":Lrx/internal/operators/cp$b;, "Lrx/internal/operators/cp$b<TT;>;"
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lrx/internal/operators/cp$b;->isUnsubscribed()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 61
    :cond_1
    new-instance v2, Lrx/internal/operators/cp$b;

    iget-object v3, p0, Lrx/internal/operators/cp$1;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2, v3}, Lrx/internal/operators/cp$b;-><init>(Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 63
    .local v2, "u":Lrx/internal/operators/cp$b;, "Lrx/internal/operators/cp$b<TT;>;"
    invoke-virtual {v2}, Lrx/internal/operators/cp$b;->a()V

    .line 65
    iget-object v3, p0, Lrx/internal/operators/cp$1;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 71
    move-object v1, v2

    .line 75
    .end local v2    # "u":Lrx/internal/operators/cp$b;, "Lrx/internal/operators/cp$b<TT;>;"
    :cond_2
    new-instance v0, Lrx/internal/operators/cp$a;

    invoke-direct {v0, v1, p1}, Lrx/internal/operators/cp$a;-><init>(Lrx/internal/operators/cp$b;Lrx/l;)V

    .line 80
    .local v0, "inner":Lrx/internal/operators/cp$a;, "Lrx/internal/operators/cp$a<TT;>;"
    invoke-virtual {v1, v0}, Lrx/internal/operators/cp$b;->a(Lrx/internal/operators/cp$a;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 83
    invoke-virtual {p1, v0}, Lrx/l;->add(Lrx/m;)V

    .line 86
    invoke-virtual {p1, v0}, Lrx/l;->setProducer(Lrx/g;)V

    .line 114
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 50
    check-cast p1, Lrx/l;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/cp$1;->a(Lrx/l;)V

    return-void
.end method
