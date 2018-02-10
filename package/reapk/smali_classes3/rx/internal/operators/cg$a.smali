.class final Lrx/internal/operators/cg$a;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/cg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/l",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final a:Lrx/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/l",
            "<-",
            "Lrx/e",
            "<+TR;>;>;"
        }
    .end annotation
.end field

.field final b:Lrx/c/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/c/p",
            "<-TT;+",
            "Lrx/e",
            "<+TU;>;>;"
        }
    .end annotation
.end field

.field final c:Lrx/c/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/c/q",
            "<-TT;-TU;+TR;>;"
        }
    .end annotation
.end field

.field d:Z


# direct methods
.method public constructor <init>(Lrx/l;Lrx/c/p;Lrx/c/q;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/l",
            "<-",
            "Lrx/e",
            "<+TR;>;>;",
            "Lrx/c/p",
            "<-TT;+",
            "Lrx/e",
            "<+TU;>;>;",
            "Lrx/c/q",
            "<-TT;-TU;+TR;>;)V"
        }
    .end annotation

    .prologue
    .line 82
    .local p0, "this":Lrx/internal/operators/cg$a;, "Lrx/internal/operators/cg$a<TT;TU;TR;>;"
    .local p1, "actual":Lrx/l;, "Lrx/l<-Lrx/e<+TR;>;>;"
    .local p2, "collectionSelector":Lrx/c/p;, "Lrx/c/p<-TT;+Lrx/e<+TU;>;>;"
    .local p3, "resultSelector":Lrx/c/q;, "Lrx/c/q<-TT;-TU;+TR;>;"
    invoke-direct {p0}, Lrx/l;-><init>()V

    .line 83
    iput-object p1, p0, Lrx/internal/operators/cg$a;->a:Lrx/l;

    .line 84
    iput-object p2, p0, Lrx/internal/operators/cg$a;->b:Lrx/c/p;

    .line 85
    iput-object p3, p0, Lrx/internal/operators/cg$a;->c:Lrx/c/q;

    .line 86
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 119
    .local p0, "this":Lrx/internal/operators/cg$a;, "Lrx/internal/operators/cg$a<TT;TU;TR;>;"
    iget-boolean v0, p0, Lrx/internal/operators/cg$a;->d:Z

    if-eqz v0, :cond_0

    .line 123
    :goto_0
    return-void

    .line 122
    :cond_0
    iget-object v0, p0, Lrx/internal/operators/cg$a;->a:Lrx/l;

    invoke-virtual {v0}, Lrx/l;->onCompleted()V

    goto :goto_0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 107
    .local p0, "this":Lrx/internal/operators/cg$a;, "Lrx/internal/operators/cg$a<TT;TU;TR;>;"
    iget-boolean v0, p0, Lrx/internal/operators/cg$a;->d:Z

    if-eqz v0, :cond_0

    .line 108
    invoke-static {p1}, Lrx/f/c;->a(Ljava/lang/Throwable;)V

    .line 114
    :goto_0
    return-void

    .line 111
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/cg$a;->d:Z

    .line 113
    iget-object v0, p0, Lrx/internal/operators/cg$a;->a:Lrx/l;

    invoke-virtual {v0, p1}, Lrx/l;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 94
    .local p0, "this":Lrx/internal/operators/cg$a;, "Lrx/internal/operators/cg$a<TT;TU;TR;>;"
    .local p1, "outer":Ljava/lang/Object;, "TT;"
    :try_start_0
    iget-object v2, p0, Lrx/internal/operators/cg$a;->b:Lrx/c/p;

    invoke-interface {v2, p1}, Lrx/c/p;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/e;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    .local v1, "intermediate":Lrx/e;, "Lrx/e<+TU;>;"
    iget-object v2, p0, Lrx/internal/operators/cg$a;->a:Lrx/l;

    new-instance v3, Lrx/internal/operators/cg$b;

    iget-object v4, p0, Lrx/internal/operators/cg$a;->c:Lrx/c/q;

    invoke-direct {v3, p1, v4}, Lrx/internal/operators/cg$b;-><init>(Ljava/lang/Object;Lrx/c/q;)V

    invoke-virtual {v1, v3}, Lrx/e;->r(Lrx/c/p;)Lrx/e;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/l;->onNext(Ljava/lang/Object;)V

    .line 103
    .end local v1    # "intermediate":Lrx/e;, "Lrx/e<+TU;>;"
    :goto_0
    return-void

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {v0}, Lrx/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 97
    invoke-virtual {p0}, Lrx/internal/operators/cg$a;->unsubscribe()V

    .line 98
    invoke-static {v0, p1}, Lrx/exceptions/OnErrorThrowable;->addValueAsLastCause(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {p0, v2}, Lrx/internal/operators/cg$a;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setProducer(Lrx/g;)V
    .locals 1
    .param p1, "p"    # Lrx/g;

    .prologue
    .line 127
    .local p0, "this":Lrx/internal/operators/cg$a;, "Lrx/internal/operators/cg$a<TT;TU;TR;>;"
    iget-object v0, p0, Lrx/internal/operators/cg$a;->a:Lrx/l;

    invoke-virtual {v0, p1}, Lrx/l;->setProducer(Lrx/g;)V

    .line 128
    return-void
.end method
