.class Lrx/internal/operators/dq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/e$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/dq$c;,
        Lrx/internal/operators/dq$b;,
        Lrx/internal/operators/dq$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/e$b",
        "<TT;TT;>;"
    }
.end annotation


# instance fields
.field final a:Lrx/internal/operators/dq$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/dq$a",
            "<TT;>;"
        }
    .end annotation
.end field

.field final b:Lrx/internal/operators/dq$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/dq$b",
            "<TT;>;"
        }
    .end annotation
.end field

.field final c:Lrx/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/e",
            "<+TT;>;"
        }
    .end annotation
.end field

.field final d:Lrx/h;


# direct methods
.method constructor <init>(Lrx/internal/operators/dq$a;Lrx/internal/operators/dq$b;Lrx/e;Lrx/h;)V
    .locals 0
    .param p4, "scheduler"    # Lrx/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/dq$a",
            "<TT;>;",
            "Lrx/internal/operators/dq$b",
            "<TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/h;",
            ")V"
        }
    .end annotation

    .prologue
    .line 51
    .local p0, "this":Lrx/internal/operators/dq;, "Lrx/internal/operators/dq<TT;>;"
    .local p1, "firstTimeoutStub":Lrx/internal/operators/dq$a;, "Lrx/internal/operators/dq$a<TT;>;"
    .local p2, "timeoutStub":Lrx/internal/operators/dq$b;, "Lrx/internal/operators/dq$b<TT;>;"
    .local p3, "other":Lrx/e;, "Lrx/e<+TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lrx/internal/operators/dq;->a:Lrx/internal/operators/dq$a;

    .line 53
    iput-object p2, p0, Lrx/internal/operators/dq;->b:Lrx/internal/operators/dq$b;

    .line 54
    iput-object p3, p0, Lrx/internal/operators/dq;->c:Lrx/e;

    .line 55
    iput-object p4, p0, Lrx/internal/operators/dq;->d:Lrx/h;

    .line 56
    return-void
.end method


# virtual methods
.method public a(Lrx/l;)Lrx/l;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/l",
            "<-TT;>;)",
            "Lrx/l",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 60
    .local p0, "this":Lrx/internal/operators/dq;, "Lrx/internal/operators/dq<TT;>;"
    .local p1, "subscriber":Lrx/l;, "Lrx/l<-TT;>;"
    iget-object v2, p0, Lrx/internal/operators/dq;->d:Lrx/h;

    invoke-virtual {v2}, Lrx/h;->createWorker()Lrx/h$a;

    move-result-object v5

    .line 61
    .local v5, "inner":Lrx/h$a;
    invoke-virtual {p1, v5}, Lrx/l;->add(Lrx/m;)V

    .line 65
    new-instance v1, Lrx/e/g;

    invoke-direct {v1, p1}, Lrx/e/g;-><init>(Lrx/l;)V

    .line 67
    .local v1, "synchronizedSubscriber":Lrx/e/g;, "Lrx/e/g<TT;>;"
    new-instance v3, Lrx/i/e;

    invoke-direct {v3}, Lrx/i/e;-><init>()V

    .line 68
    .local v3, "serial":Lrx/i/e;
    invoke-virtual {v1, v3}, Lrx/e/g;->add(Lrx/m;)V

    .line 70
    new-instance v0, Lrx/internal/operators/dq$c;

    iget-object v2, p0, Lrx/internal/operators/dq;->b:Lrx/internal/operators/dq$b;

    iget-object v4, p0, Lrx/internal/operators/dq;->c:Lrx/e;

    invoke-direct/range {v0 .. v5}, Lrx/internal/operators/dq$c;-><init>(Lrx/e/g;Lrx/internal/operators/dq$b;Lrx/i/e;Lrx/e;Lrx/h$a;)V

    .line 72
    .local v0, "timeoutSubscriber":Lrx/internal/operators/dq$c;, "Lrx/internal/operators/dq$c<TT;>;"
    invoke-virtual {v1, v0}, Lrx/e/g;->add(Lrx/m;)V

    .line 73
    iget-object v2, v0, Lrx/internal/operators/dq$c;->f:Lrx/internal/producers/a;

    invoke-virtual {v1, v2}, Lrx/e/g;->setProducer(Lrx/g;)V

    .line 75
    iget-object v2, p0, Lrx/internal/operators/dq;->a:Lrx/internal/operators/dq$a;

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v0, v4, v5}, Lrx/internal/operators/dq$a;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lrx/m;

    invoke-virtual {v3, v2}, Lrx/i/e;->a(Lrx/m;)V

    .line 77
    return-object v0
.end method

.method public synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 27
    .local p0, "this":Lrx/internal/operators/dq;, "Lrx/internal/operators/dq<TT;>;"
    check-cast p1, Lrx/l;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/dq;->a(Lrx/l;)Lrx/l;

    move-result-object v0

    return-object v0
.end method
