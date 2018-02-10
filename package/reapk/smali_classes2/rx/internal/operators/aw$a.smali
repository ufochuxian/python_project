.class final Lrx/internal/operators/aw$a;
.super Lrx/internal/operators/t;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/aw;
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
        "Lrx/internal/operators/t",
        "<TT;TR;>;"
    }
.end annotation


# instance fields
.field final i:Lrx/c/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/c/q",
            "<TR;-TT;TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/l;Ljava/lang/Object;Lrx/c/q;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/l",
            "<-TR;>;TR;",
            "Lrx/c/q",
            "<TR;-TT;TR;>;)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, "this":Lrx/internal/operators/aw$a;, "Lrx/internal/operators/aw$a<TT;TR;>;"
    .local p1, "actual":Lrx/l;, "Lrx/l<-TR;>;"
    .local p2, "initialValue":Ljava/lang/Object;, "TR;"
    .local p3, "reducer":Lrx/c/q;, "Lrx/c/q<TR;-TT;TR;>;"
    invoke-direct {p0, p1}, Lrx/internal/operators/t;-><init>(Lrx/l;)V

    .line 49
    iput-object p2, p0, Lrx/internal/operators/aw$a;->c:Ljava/lang/Object;

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/aw$a;->b:Z

    .line 51
    iput-object p3, p0, Lrx/internal/operators/aw$a;->i:Lrx/c/q;

    .line 52
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
    .line 57
    .local p0, "this":Lrx/internal/operators/aw$a;, "Lrx/internal/operators/aw$a<TT;TR;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    :try_start_0
    iget-object v1, p0, Lrx/internal/operators/aw$a;->i:Lrx/c/q;

    iget-object v2, p0, Lrx/internal/operators/aw$a;->c:Ljava/lang/Object;

    invoke-interface {v1, v2, p1}, Lrx/c/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lrx/internal/operators/aw$a;->c:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    :goto_0
    return-void

    .line 58
    :catch_0
    move-exception v0

    .line 59
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {v0}, Lrx/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 60
    invoke-virtual {p0}, Lrx/internal/operators/aw$a;->unsubscribe()V

    .line 61
    iget-object v1, p0, Lrx/internal/operators/aw$a;->a:Lrx/l;

    invoke-virtual {v1, v0}, Lrx/l;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
