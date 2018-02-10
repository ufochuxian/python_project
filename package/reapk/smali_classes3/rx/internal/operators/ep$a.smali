.class final Lrx/internal/operators/ep$a;
.super Lrx/k;
.source "SourceFile"

# interfaces
.implements Lrx/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/ep;
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
        "Lrx/c/b;"
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

.field final b:Lrx/h$a;

.field c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field d:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Lrx/k;Lrx/h$a;)V
    .locals 0
    .param p2, "w"    # Lrx/h$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/k",
            "<-TT;>;",
            "Lrx/h$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 61
    .local p0, "this":Lrx/internal/operators/ep$a;, "Lrx/internal/operators/ep$a<TT;>;"
    .local p1, "actual":Lrx/k;, "Lrx/k<-TT;>;"
    invoke-direct {p0}, Lrx/k;-><init>()V

    .line 62
    iput-object p1, p0, Lrx/internal/operators/ep$a;->a:Lrx/k;

    .line 63
    iput-object p2, p0, Lrx/internal/operators/ep$a;->b:Lrx/h$a;

    .line 64
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 68
    .local p0, "this":Lrx/internal/operators/ep$a;, "Lrx/internal/operators/ep$a<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Lrx/internal/operators/ep$a;->c:Ljava/lang/Object;

    .line 69
    iget-object v0, p0, Lrx/internal/operators/ep$a;->b:Lrx/h$a;

    invoke-virtual {v0, p0}, Lrx/h$a;->a(Lrx/c/b;)Lrx/m;

    .line 70
    return-void
.end method

.method public call()V
    .locals 4

    .prologue
    .line 81
    .local p0, "this":Lrx/internal/operators/ep$a;, "Lrx/internal/operators/ep$a<TT;>;"
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/ep$a;->d:Ljava/lang/Throwable;

    .line 82
    .local v0, "ex":Ljava/lang/Throwable;
    if-eqz v0, :cond_0

    .line 83
    const/4 v2, 0x0

    iput-object v2, p0, Lrx/internal/operators/ep$a;->d:Ljava/lang/Throwable;

    .line 84
    iget-object v2, p0, Lrx/internal/operators/ep$a;->a:Lrx/k;

    invoke-virtual {v2, v0}, Lrx/k;->onError(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    :goto_0
    iget-object v2, p0, Lrx/internal/operators/ep$a;->b:Lrx/h$a;

    invoke-virtual {v2}, Lrx/h$a;->unsubscribe()V

    .line 93
    return-void

    .line 86
    :cond_0
    :try_start_1
    iget-object v1, p0, Lrx/internal/operators/ep$a;->c:Ljava/lang/Object;

    .line 87
    .local v1, "v":Ljava/lang/Object;, "TT;"
    const/4 v2, 0x0

    iput-object v2, p0, Lrx/internal/operators/ep$a;->c:Ljava/lang/Object;

    .line 88
    iget-object v2, p0, Lrx/internal/operators/ep$a;->a:Lrx/k;

    invoke-virtual {v2, v1}, Lrx/k;->a(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 91
    .end local v0    # "ex":Ljava/lang/Throwable;
    .end local v1    # "v":Ljava/lang/Object;, "TT;"
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lrx/internal/operators/ep$a;->b:Lrx/h$a;

    invoke-virtual {v3}, Lrx/h$a;->unsubscribe()V

    throw v2
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "error"    # Ljava/lang/Throwable;

    .prologue
    .line 74
    .local p0, "this":Lrx/internal/operators/ep$a;, "Lrx/internal/operators/ep$a<TT;>;"
    iput-object p1, p0, Lrx/internal/operators/ep$a;->d:Ljava/lang/Throwable;

    .line 75
    iget-object v0, p0, Lrx/internal/operators/ep$a;->b:Lrx/h$a;

    invoke-virtual {v0, p0}, Lrx/h$a;->a(Lrx/c/b;)Lrx/m;

    .line 76
    return-void
.end method
