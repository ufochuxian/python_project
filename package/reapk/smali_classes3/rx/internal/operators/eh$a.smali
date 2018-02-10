.class final Lrx/internal/operators/eh$a;
.super Lrx/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/eh;
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
        "Lrx/k",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final a:Lrx/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/k",
            "<-TT;>;"
        }
    .end annotation
.end field

.field final b:Lrx/c/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/c/c",
            "<-TT;>;"
        }
    .end annotation
.end field

.field final c:Lrx/c/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/c/c",
            "<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lrx/k;Lrx/c/c;Lrx/c/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/k",
            "<-TT;>;",
            "Lrx/c/c",
            "<-TT;>;",
            "Lrx/c/c",
            "<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, "this":Lrx/internal/operators/eh$a;, "Lrx/internal/operators/eh$a<TT;>;"
    .local p1, "actual":Lrx/k;, "Lrx/k<-TT;>;"
    .local p2, "onSuccess":Lrx/c/c;, "Lrx/c/c<-TT;>;"
    .local p3, "onError":Lrx/c/c;, "Lrx/c/c<Ljava/lang/Throwable;>;"
    invoke-direct {p0}, Lrx/k;-><init>()V

    .line 49
    iput-object p1, p0, Lrx/internal/operators/eh$a;->a:Lrx/k;

    .line 50
    iput-object p2, p0, Lrx/internal/operators/eh$a;->b:Lrx/c/c;

    .line 51
    iput-object p3, p0, Lrx/internal/operators/eh$a;->c:Lrx/c/c;

    .line 52
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 57
    .local p0, "this":Lrx/internal/operators/eh$a;, "Lrx/internal/operators/eh$a<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    :try_start_0
    iget-object v1, p0, Lrx/internal/operators/eh$a;->b:Lrx/c/c;

    invoke-interface {v1, p1}, Lrx/c/c;->call(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    iget-object v1, p0, Lrx/internal/operators/eh$a;->a:Lrx/k;

    invoke-virtual {v1, p1}, Lrx/k;->a(Ljava/lang/Object;)V

    .line 64
    :goto_0
    return-void

    .line 58
    :catch_0
    move-exception v0

    .line 59
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0, p0, p1}, Lrx/exceptions/a;->a(Ljava/lang/Throwable;Lrx/k;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 5
    .param p1, "error"    # Ljava/lang/Throwable;

    .prologue
    .line 69
    .local p0, "this":Lrx/internal/operators/eh$a;, "Lrx/internal/operators/eh$a<TT;>;"
    :try_start_0
    iget-object v1, p0, Lrx/internal/operators/eh$a;->c:Lrx/c/c;

    invoke-interface {v1, p1}, Lrx/c/c;->call(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    iget-object v1, p0, Lrx/internal/operators/eh$a;->a:Lrx/k;

    invoke-virtual {v1, p1}, Lrx/k;->onError(Ljava/lang/Throwable;)V

    .line 77
    :goto_0
    return-void

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lrx/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 72
    iget-object v1, p0, Lrx/internal/operators/eh$a;->a:Lrx/k;

    new-instance v2, Lrx/exceptions/CompositeException;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Throwable;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-direct {v2, v3}, Lrx/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lrx/k;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
