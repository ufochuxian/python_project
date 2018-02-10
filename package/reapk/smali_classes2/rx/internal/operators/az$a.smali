.class final Lrx/internal/operators/az$a;
.super Lrx/l;
.source "SourceFile"

# interfaces
.implements Lrx/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/az;
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
        "<TT;>;",
        "Lrx/c/b;"
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

.field volatile b:Z


# direct methods
.method constructor <init>(Lrx/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/l",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p0, "this":Lrx/internal/operators/az$a;, "Lrx/internal/operators/az$a<TT;>;"
    .local p1, "child":Lrx/l;, "Lrx/l<-TT;>;"
    invoke-direct {p0}, Lrx/l;-><init>()V

    .line 60
    iput-object p1, p0, Lrx/internal/operators/az$a;->a:Lrx/l;

    .line 61
    return-void
.end method


# virtual methods
.method public call()V
    .locals 1

    .prologue
    .line 65
    .local p0, "this":Lrx/internal/operators/az$a;, "Lrx/internal/operators/az$a<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/az$a;->b:Z

    .line 66
    return-void
.end method

.method public onCompleted()V
    .locals 1

    .prologue
    .line 87
    .local p0, "this":Lrx/internal/operators/az$a;, "Lrx/internal/operators/az$a<TT;>;"
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/az$a;->a:Lrx/l;

    invoke-virtual {v0}, Lrx/l;->onCompleted()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    invoke-virtual {p0}, Lrx/internal/operators/az$a;->unsubscribe()V

    .line 91
    return-void

    .line 89
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lrx/internal/operators/az$a;->unsubscribe()V

    throw v0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 78
    .local p0, "this":Lrx/internal/operators/az$a;, "Lrx/internal/operators/az$a<TT;>;"
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/az$a;->a:Lrx/l;

    invoke-virtual {v0, p1}, Lrx/l;->onError(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    invoke-virtual {p0}, Lrx/internal/operators/az$a;->unsubscribe()V

    .line 82
    return-void

    .line 80
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lrx/internal/operators/az$a;->unsubscribe()V

    throw v0
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 70
    .local p0, "this":Lrx/internal/operators/az$a;, "Lrx/internal/operators/az$a<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-boolean v0, p0, Lrx/internal/operators/az$a;->b:Z

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lrx/internal/operators/az$a;->a:Lrx/l;

    invoke-virtual {v0, p1}, Lrx/l;->onNext(Ljava/lang/Object;)V

    .line 73
    :cond_0
    return-void
.end method
