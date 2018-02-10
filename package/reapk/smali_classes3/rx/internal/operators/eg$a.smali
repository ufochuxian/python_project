.class final Lrx/internal/operators/eg$a;
.super Lrx/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/eg;
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

.field final b:Lrx/c/b;


# direct methods
.method public constructor <init>(Lrx/k;Lrx/c/b;)V
    .locals 0
    .param p2, "action"    # Lrx/c/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/k",
            "<-TT;>;",
            "Lrx/c/b;",
            ")V"
        }
    .end annotation

    .prologue
    .line 50
    .local p0, "this":Lrx/internal/operators/eg$a;, "Lrx/internal/operators/eg$a<TT;>;"
    .local p1, "actual":Lrx/k;, "Lrx/k<-TT;>;"
    invoke-direct {p0}, Lrx/k;-><init>()V

    .line 51
    iput-object p1, p0, Lrx/internal/operators/eg$a;->a:Lrx/k;

    .line 52
    iput-object p2, p0, Lrx/internal/operators/eg$a;->b:Lrx/c/b;

    .line 53
    return-void
.end method


# virtual methods
.method a()V
    .locals 2

    .prologue
    .line 75
    .local p0, "this":Lrx/internal/operators/eg$a;, "Lrx/internal/operators/eg$a<TT;>;"
    :try_start_0
    iget-object v1, p0, Lrx/internal/operators/eg$a;->b:Lrx/c/b;

    invoke-interface {v1}, Lrx/c/b;->call()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :goto_0
    return-void

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {v0}, Lrx/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 78
    invoke-static {v0}, Lrx/f/c;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p0, "this":Lrx/internal/operators/eg$a;, "Lrx/internal/operators/eg$a<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/eg$a;->a:Lrx/k;

    invoke-virtual {v0, p1}, Lrx/k;->a(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    invoke-virtual {p0}, Lrx/internal/operators/eg$a;->a()V

    .line 62
    return-void

    .line 60
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lrx/internal/operators/eg$a;->a()V

    throw v0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "error"    # Ljava/lang/Throwable;

    .prologue
    .line 67
    .local p0, "this":Lrx/internal/operators/eg$a;, "Lrx/internal/operators/eg$a<TT;>;"
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/eg$a;->a:Lrx/k;

    invoke-virtual {v0, p1}, Lrx/k;->onError(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    invoke-virtual {p0}, Lrx/internal/operators/eg$a;->a()V

    .line 71
    return-void

    .line 69
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lrx/internal/operators/eg$a;->a()V

    throw v0
.end method
