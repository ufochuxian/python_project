.class final Lrx/internal/operators/dj$a;
.super Lrx/l;
.source "SourceFile"

# interfaces
.implements Lrx/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/dj;
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


# direct methods
.method public constructor <init>(Lrx/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/l",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 56
    .local p0, "this":Lrx/internal/operators/dj$a;, "Lrx/internal/operators/dj$a<TT;>;"
    .local p1, "child":Lrx/l;, "Lrx/l<-TT;>;"
    invoke-direct {p0, p1}, Lrx/l;-><init>(Lrx/l;)V

    .line 57
    iput-object p1, p0, Lrx/internal/operators/dj$a;->a:Lrx/l;

    .line 58
    return-void
.end method


# virtual methods
.method public call()V
    .locals 0

    .prologue
    .line 79
    .local p0, "this":Lrx/internal/operators/dj$a;, "Lrx/internal/operators/dj$a<TT;>;"
    invoke-virtual {p0}, Lrx/internal/operators/dj$a;->onCompleted()V

    .line 80
    return-void
.end method

.method public onCompleted()V
    .locals 1

    .prologue
    .line 73
    .local p0, "this":Lrx/internal/operators/dj$a;, "Lrx/internal/operators/dj$a<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/dj$a;->a:Lrx/l;

    invoke-virtual {v0}, Lrx/l;->onCompleted()V

    .line 74
    invoke-virtual {p0}, Lrx/internal/operators/dj$a;->unsubscribe()V

    .line 75
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 67
    .local p0, "this":Lrx/internal/operators/dj$a;, "Lrx/internal/operators/dj$a<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/dj$a;->a:Lrx/l;

    invoke-virtual {v0, p1}, Lrx/l;->onError(Ljava/lang/Throwable;)V

    .line 68
    invoke-virtual {p0}, Lrx/internal/operators/dj$a;->unsubscribe()V

    .line 69
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 62
    .local p0, "this":Lrx/internal/operators/dj$a;, "Lrx/internal/operators/dj$a<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/operators/dj$a;->a:Lrx/l;

    invoke-virtual {v0, p1}, Lrx/l;->onNext(Ljava/lang/Object;)V

    .line 63
    return-void
.end method
