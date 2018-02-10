.class final Lrx/internal/operators/cq$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/cq;->a(Lrx/e;Lrx/c/o;)Lrx/d/c;
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

.field final synthetic b:Lrx/c/o;


# direct methods
.method constructor <init>(Ljava/util/concurrent/atomic/AtomicReference;Lrx/c/o;)V
    .locals 0

    .prologue
    .line 202
    iput-object p1, p0, Lrx/internal/operators/cq$7;->a:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p2, p0, Lrx/internal/operators/cq$7;->b:Lrx/c/o;

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
    .line 209
    .local p1, "child":Lrx/l;, "Lrx/l<-TT;>;"
    :cond_0
    iget-object v3, p0, Lrx/internal/operators/cq$7;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/internal/operators/cq$e;

    .line 211
    .local v1, "r":Lrx/internal/operators/cq$e;, "Lrx/internal/operators/cq$e<TT;>;"
    if-nez v1, :cond_1

    .line 213
    new-instance v2, Lrx/internal/operators/cq$e;

    iget-object v3, p0, Lrx/internal/operators/cq$7;->b:Lrx/c/o;

    invoke-interface {v3}, Lrx/c/o;->call()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lrx/internal/operators/cq$d;

    invoke-direct {v2, v3}, Lrx/internal/operators/cq$e;-><init>(Lrx/internal/operators/cq$d;)V

    .line 215
    .local v2, "u":Lrx/internal/operators/cq$e;, "Lrx/internal/operators/cq$e<TT;>;"
    invoke-virtual {v2}, Lrx/internal/operators/cq$e;->a()V

    .line 217
    iget-object v3, p0, Lrx/internal/operators/cq$7;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 223
    move-object v1, v2

    .line 227
    .end local v2    # "u":Lrx/internal/operators/cq$e;, "Lrx/internal/operators/cq$e<TT;>;"
    :cond_1
    new-instance v0, Lrx/internal/operators/cq$b;

    invoke-direct {v0, v1, p1}, Lrx/internal/operators/cq$b;-><init>(Lrx/internal/operators/cq$e;Lrx/l;)V

    .line 231
    .local v0, "inner":Lrx/internal/operators/cq$b;, "Lrx/internal/operators/cq$b<TT;>;"
    invoke-virtual {v1, v0}, Lrx/internal/operators/cq$e;->a(Lrx/internal/operators/cq$b;)Z

    .line 234
    invoke-virtual {p1, v0}, Lrx/l;->add(Lrx/m;)V

    .line 237
    iget-object v3, v1, Lrx/internal/operators/cq$e;->a:Lrx/internal/operators/cq$d;

    invoke-interface {v3, v0}, Lrx/internal/operators/cq$d;->replay(Lrx/internal/operators/cq$b;)V

    .line 241
    invoke-virtual {p1, v0}, Lrx/l;->setProducer(Lrx/g;)V

    .line 244
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 202
    check-cast p1, Lrx/l;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/cq$7;->a(Lrx/l;)V

    return-void
.end method
