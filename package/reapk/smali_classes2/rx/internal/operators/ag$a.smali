.class final Lrx/internal/operators/ag$a;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/ag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
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
            "<-TT;>;"
        }
    .end annotation
.end field

.field final b:Lrx/c/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/c/p",
            "<-TT;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field c:Z


# direct methods
.method public constructor <init>(Lrx/l;Lrx/c/p;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/l",
            "<-TT;>;",
            "Lrx/c/p",
            "<-TT;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 56
    .local p0, "this":Lrx/internal/operators/ag$a;, "Lrx/internal/operators/ag$a<TT;>;"
    .local p1, "actual":Lrx/l;, "Lrx/l<-TT;>;"
    .local p2, "predicate":Lrx/c/p;, "Lrx/c/p<-TT;Ljava/lang/Boolean;>;"
    invoke-direct {p0}, Lrx/l;-><init>()V

    .line 57
    iput-object p1, p0, Lrx/internal/operators/ag$a;->a:Lrx/l;

    .line 58
    iput-object p2, p0, Lrx/internal/operators/ag$a;->b:Lrx/c/p;

    .line 59
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/ag$a;->request(J)V

    .line 60
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 96
    .local p0, "this":Lrx/internal/operators/ag$a;, "Lrx/internal/operators/ag$a<TT;>;"
    iget-boolean v0, p0, Lrx/internal/operators/ag$a;->c:Z

    if-eqz v0, :cond_0

    .line 100
    :goto_0
    return-void

    .line 99
    :cond_0
    iget-object v0, p0, Lrx/internal/operators/ag$a;->a:Lrx/l;

    invoke-virtual {v0}, Lrx/l;->onCompleted()V

    goto :goto_0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 84
    .local p0, "this":Lrx/internal/operators/ag$a;, "Lrx/internal/operators/ag$a<TT;>;"
    iget-boolean v0, p0, Lrx/internal/operators/ag$a;->c:Z

    if-eqz v0, :cond_0

    .line 85
    invoke-static {p1}, Lrx/f/c;->a(Ljava/lang/Throwable;)V

    .line 91
    :goto_0
    return-void

    .line 88
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/ag$a;->c:Z

    .line 90
    iget-object v0, p0, Lrx/internal/operators/ag$a;->a:Lrx/l;

    invoke-virtual {v0, p1}, Lrx/l;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 67
    .local p0, "this":Lrx/internal/operators/ag$a;, "Lrx/internal/operators/ag$a<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    :try_start_0
    iget-object v2, p0, Lrx/internal/operators/ag$a;->b:Lrx/c/p;

    invoke-interface {v2, p1}, Lrx/c/p;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 75
    .local v1, "result":Z
    if-eqz v1, :cond_0

    .line 76
    iget-object v2, p0, Lrx/internal/operators/ag$a;->a:Lrx/l;

    invoke-virtual {v2, p1}, Lrx/l;->onNext(Ljava/lang/Object;)V

    .line 80
    .end local v1    # "result":Z
    :goto_0
    return-void

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {v0}, Lrx/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 70
    invoke-virtual {p0}, Lrx/internal/operators/ag$a;->unsubscribe()V

    .line 71
    invoke-static {v0, p1}, Lrx/exceptions/OnErrorThrowable;->addValueAsLastCause(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {p0, v2}, Lrx/internal/operators/ag$a;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 78
    .end local v0    # "ex":Ljava/lang/Throwable;
    .restart local v1    # "result":Z
    :cond_0
    const-wide/16 v2, 0x1

    invoke-virtual {p0, v2, v3}, Lrx/internal/operators/ag$a;->request(J)V

    goto :goto_0
.end method

.method public setProducer(Lrx/g;)V
    .locals 1
    .param p1, "p"    # Lrx/g;

    .prologue
    .line 103
    .local p0, "this":Lrx/internal/operators/ag$a;, "Lrx/internal/operators/ag$a<TT;>;"
    invoke-super {p0, p1}, Lrx/l;->setProducer(Lrx/g;)V

    .line 104
    iget-object v0, p0, Lrx/internal/operators/ag$a;->a:Lrx/l;

    invoke-virtual {v0, p1}, Lrx/l;->setProducer(Lrx/g;)V

    .line 105
    return-void
.end method
