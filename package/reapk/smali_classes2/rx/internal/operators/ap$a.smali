.class final Lrx/internal/operators/ap$a;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/ap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
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
            "<-TR;>;"
        }
    .end annotation
.end field

.field final b:Lrx/c/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/c/p",
            "<-TT;+TR;>;"
        }
    .end annotation
.end field

.field c:Z


# direct methods
.method public constructor <init>(Lrx/l;Lrx/c/p;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/l",
            "<-TR;>;",
            "Lrx/c/p",
            "<-TT;+TR;>;)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p0, "this":Lrx/internal/operators/ap$a;, "Lrx/internal/operators/ap$a<TT;TR;>;"
    .local p1, "actual":Lrx/l;, "Lrx/l<-TR;>;"
    .local p2, "mapper":Lrx/c/p;, "Lrx/c/p<-TT;+TR;>;"
    invoke-direct {p0}, Lrx/l;-><init>()V

    .line 60
    iput-object p1, p0, Lrx/internal/operators/ap$a;->a:Lrx/l;

    .line 61
    iput-object p2, p0, Lrx/internal/operators/ap$a;->b:Lrx/c/p;

    .line 62
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 94
    .local p0, "this":Lrx/internal/operators/ap$a;, "Lrx/internal/operators/ap$a<TT;TR;>;"
    iget-boolean v0, p0, Lrx/internal/operators/ap$a;->c:Z

    if-eqz v0, :cond_0

    .line 98
    :goto_0
    return-void

    .line 97
    :cond_0
    iget-object v0, p0, Lrx/internal/operators/ap$a;->a:Lrx/l;

    invoke-virtual {v0}, Lrx/l;->onCompleted()V

    goto :goto_0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 82
    .local p0, "this":Lrx/internal/operators/ap$a;, "Lrx/internal/operators/ap$a<TT;TR;>;"
    iget-boolean v0, p0, Lrx/internal/operators/ap$a;->c:Z

    if-eqz v0, :cond_0

    .line 83
    invoke-static {p1}, Lrx/f/c;->a(Ljava/lang/Throwable;)V

    .line 89
    :goto_0
    return-void

    .line 86
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/ap$a;->c:Z

    .line 88
    iget-object v0, p0, Lrx/internal/operators/ap$a;->a:Lrx/l;

    invoke-virtual {v0, p1}, Lrx/l;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 69
    .local p0, "this":Lrx/internal/operators/ap$a;, "Lrx/internal/operators/ap$a<TT;TR;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    :try_start_0
    iget-object v2, p0, Lrx/internal/operators/ap$a;->b:Lrx/c/p;

    invoke-interface {v2, p1}, Lrx/c/p;->call(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 77
    .local v1, "result":Ljava/lang/Object;, "TR;"
    iget-object v2, p0, Lrx/internal/operators/ap$a;->a:Lrx/l;

    invoke-virtual {v2, v1}, Lrx/l;->onNext(Ljava/lang/Object;)V

    .line 78
    .end local v1    # "result":Ljava/lang/Object;, "TR;"
    :goto_0
    return-void

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {v0}, Lrx/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 72
    invoke-virtual {p0}, Lrx/internal/operators/ap$a;->unsubscribe()V

    .line 73
    invoke-static {v0, p1}, Lrx/exceptions/OnErrorThrowable;->addValueAsLastCause(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {p0, v2}, Lrx/internal/operators/ap$a;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setProducer(Lrx/g;)V
    .locals 1
    .param p1, "p"    # Lrx/g;

    .prologue
    .line 102
    .local p0, "this":Lrx/internal/operators/ap$a;, "Lrx/internal/operators/ap$a<TT;TR;>;"
    iget-object v0, p0, Lrx/internal/operators/ap$a;->a:Lrx/l;

    invoke-virtual {v0, p1}, Lrx/l;->setProducer(Lrx/g;)V

    .line 103
    return-void
.end method
