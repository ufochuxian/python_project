.class final Lrx/internal/operators/x$a;
.super Lrx/internal/operators/u;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/x;
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
        "Lrx/internal/operators/u",
        "<TT;TR;>;"
    }
.end annotation


# instance fields
.field final j:Lrx/c/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/c/d",
            "<TR;-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/l;Ljava/lang/Object;Lrx/c/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/l",
            "<-TR;>;TR;",
            "Lrx/c/d",
            "<TR;-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p0, "this":Lrx/internal/operators/x$a;, "Lrx/internal/operators/x$a<TT;TR;>;"
    .local p1, "actual":Lrx/l;, "Lrx/l<-TR;>;"
    .local p2, "initialValue":Ljava/lang/Object;, "TR;"
    .local p3, "collector":Lrx/c/d;, "Lrx/c/d<TR;-TT;>;"
    invoke-direct {p0, p1}, Lrx/internal/operators/u;-><init>(Lrx/l;)V

    .line 59
    iput-object p2, p0, Lrx/internal/operators/x$a;->c:Ljava/lang/Object;

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/x$a;->b:Z

    .line 61
    iput-object p3, p0, Lrx/internal/operators/x$a;->j:Lrx/c/d;

    .line 62
    return-void
.end method


# virtual methods
.method public onNext(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 66
    .local p0, "this":Lrx/internal/operators/x$a;, "Lrx/internal/operators/x$a<TT;TR;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-boolean v1, p0, Lrx/internal/operators/x$a;->i:Z

    if-eqz v1, :cond_0

    .line 76
    :goto_0
    return-void

    .line 70
    :cond_0
    :try_start_0
    iget-object v1, p0, Lrx/internal/operators/x$a;->j:Lrx/c/d;

    iget-object v2, p0, Lrx/internal/operators/x$a;->c:Ljava/lang/Object;

    invoke-interface {v1, v2, p1}, Lrx/c/d;->a(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 71
    :catch_0
    move-exception v0

    .line 72
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {v0}, Lrx/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 73
    invoke-virtual {p0}, Lrx/internal/operators/x$a;->unsubscribe()V

    .line 74
    invoke-virtual {p0, v0}, Lrx/internal/operators/x$a;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
