.class final Lrx/internal/operators/i$a;
.super Lrx/k;
.source "SourceFile"

# interfaces
.implements Lrx/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/i;
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
        "<TT;>;",
        "Lrx/d;"
    }
.end annotation


# instance fields
.field final a:Lrx/d;

.field final b:Lrx/c/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/c/p",
            "<-TT;+",
            "Lrx/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/d;Lrx/c/p;)V
    .locals 0
    .param p1, "actual"    # Lrx/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/d;",
            "Lrx/c/p",
            "<-TT;+",
            "Lrx/b;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p0, "this":Lrx/internal/operators/i$a;, "Lrx/internal/operators/i$a<TT;>;"
    .local p2, "mapper":Lrx/c/p;, "Lrx/c/p<-TT;+Lrx/b;>;"
    invoke-direct {p0}, Lrx/k;-><init>()V

    .line 52
    iput-object p1, p0, Lrx/internal/operators/i$a;->a:Lrx/d;

    .line 53
    iput-object p2, p0, Lrx/internal/operators/i$a;->b:Lrx/c/p;

    .line 54
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 61
    .local p0, "this":Lrx/internal/operators/i$a;, "Lrx/internal/operators/i$a<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    :try_start_0
    iget-object v2, p0, Lrx/internal/operators/i$a;->b:Lrx/c/p;

    invoke-interface {v2, p1}, Lrx/c/p;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/b;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    .local v0, "c":Lrx/b;
    if-nez v0, :cond_0

    .line 69
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "The mapper returned a null Completable"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lrx/internal/operators/i$a;->onError(Ljava/lang/Throwable;)V

    .line 74
    .end local v0    # "c":Lrx/b;
    :goto_0
    return-void

    .line 62
    :catch_0
    move-exception v1

    .line 63
    .local v1, "ex":Ljava/lang/Throwable;
    invoke-static {v1}, Lrx/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 64
    invoke-virtual {p0, v1}, Lrx/internal/operators/i$a;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 73
    .end local v1    # "ex":Ljava/lang/Throwable;
    .restart local v0    # "c":Lrx/b;
    :cond_0
    invoke-virtual {v0, p0}, Lrx/b;->b(Lrx/d;)V

    goto :goto_0
.end method

.method public onCompleted()V
    .locals 1

    .prologue
    .line 83
    .local p0, "this":Lrx/internal/operators/i$a;, "Lrx/internal/operators/i$a<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/i$a;->a:Lrx/d;

    invoke-interface {v0}, Lrx/d;->onCompleted()V

    .line 84
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "error"    # Ljava/lang/Throwable;

    .prologue
    .line 78
    .local p0, "this":Lrx/internal/operators/i$a;, "Lrx/internal/operators/i$a<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/i$a;->a:Lrx/d;

    invoke-interface {v0, p1}, Lrx/d;->onError(Ljava/lang/Throwable;)V

    .line 79
    return-void
.end method

.method public onSubscribe(Lrx/m;)V
    .locals 0
    .param p1, "d"    # Lrx/m;

    .prologue
    .line 88
    .local p0, "this":Lrx/internal/operators/i$a;, "Lrx/internal/operators/i$a<TT;>;"
    invoke-virtual {p0, p1}, Lrx/internal/operators/i$a;->a(Lrx/m;)V

    .line 89
    return-void
.end method
