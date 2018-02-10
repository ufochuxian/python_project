.class final Lrx/internal/operators/es$a;
.super Lrx/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/es;
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
        "Lrx/k",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final a:Lrx/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/k",
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
.method public constructor <init>(Lrx/k;Lrx/c/p;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/k",
            "<-TR;>;",
            "Lrx/c/p",
            "<-TT;+TR;>;)V"
        }
    .end annotation

    .prologue
    .line 56
    .local p0, "this":Lrx/internal/operators/es$a;, "Lrx/internal/operators/es$a<TT;TR;>;"
    .local p1, "actual":Lrx/k;, "Lrx/k<-TR;>;"
    .local p2, "mapper":Lrx/c/p;, "Lrx/c/p<-TT;+TR;>;"
    invoke-direct {p0}, Lrx/k;-><init>()V

    .line 57
    iput-object p1, p0, Lrx/internal/operators/es$a;->a:Lrx/k;

    .line 58
    iput-object p2, p0, Lrx/internal/operators/es$a;->b:Lrx/c/p;

    .line 59
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 66
    .local p0, "this":Lrx/internal/operators/es$a;, "Lrx/internal/operators/es$a<TT;TR;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    :try_start_0
    iget-object v2, p0, Lrx/internal/operators/es$a;->b:Lrx/c/p;

    invoke-interface {v2, p1}, Lrx/c/p;->call(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 74
    .local v1, "result":Ljava/lang/Object;, "TR;"
    iget-object v2, p0, Lrx/internal/operators/es$a;->a:Lrx/k;

    invoke-virtual {v2, v1}, Lrx/k;->a(Ljava/lang/Object;)V

    .line 75
    .end local v1    # "result":Ljava/lang/Object;, "TR;"
    :goto_0
    return-void

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {v0}, Lrx/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 69
    invoke-virtual {p0}, Lrx/internal/operators/es$a;->unsubscribe()V

    .line 70
    invoke-static {v0, p1}, Lrx/exceptions/OnErrorThrowable;->addValueAsLastCause(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {p0, v2}, Lrx/internal/operators/es$a;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 79
    .local p0, "this":Lrx/internal/operators/es$a;, "Lrx/internal/operators/es$a<TT;TR;>;"
    iget-boolean v0, p0, Lrx/internal/operators/es$a;->c:Z

    if-eqz v0, :cond_0

    .line 80
    invoke-static {p1}, Lrx/f/c;->a(Ljava/lang/Throwable;)V

    .line 86
    :goto_0
    return-void

    .line 83
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/es$a;->c:Z

    .line 85
    iget-object v0, p0, Lrx/internal/operators/es$a;->a:Lrx/k;

    invoke-virtual {v0, p1}, Lrx/k;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
