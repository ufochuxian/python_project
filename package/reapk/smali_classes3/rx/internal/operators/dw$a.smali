.class final Lrx/internal/operators/dw$a;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/dw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/l",
        "<TU;>;"
    }
.end annotation


# instance fields
.field final a:Lrx/internal/operators/dw$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/dw$b",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/internal/operators/dw$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/dw$b",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 270
    .local p0, "this":Lrx/internal/operators/dw$a;, "Lrx/internal/operators/dw$a<TT;TU;>;"
    .local p1, "sub":Lrx/internal/operators/dw$b;, "Lrx/internal/operators/dw$b<TT;>;"
    invoke-direct {p0}, Lrx/l;-><init>()V

    .line 271
    iput-object p1, p0, Lrx/internal/operators/dw$a;->a:Lrx/internal/operators/dw$b;

    .line 272
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 291
    .local p0, "this":Lrx/internal/operators/dw$a;, "Lrx/internal/operators/dw$a<TT;TU;>;"
    iget-object v0, p0, Lrx/internal/operators/dw$a;->a:Lrx/internal/operators/dw$b;

    invoke-virtual {v0}, Lrx/internal/operators/dw$b;->onCompleted()V

    .line 292
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 286
    .local p0, "this":Lrx/internal/operators/dw$a;, "Lrx/internal/operators/dw$a<TT;TU;>;"
    iget-object v0, p0, Lrx/internal/operators/dw$a;->a:Lrx/internal/operators/dw$b;

    invoke-virtual {v0, p1}, Lrx/internal/operators/dw$b;->onError(Ljava/lang/Throwable;)V

    .line 287
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)V"
        }
    .end annotation

    .prologue
    .line 281
    .local p0, "this":Lrx/internal/operators/dw$a;, "Lrx/internal/operators/dw$a<TT;TU;>;"
    .local p1, "t":Ljava/lang/Object;, "TU;"
    iget-object v0, p0, Lrx/internal/operators/dw$a;->a:Lrx/internal/operators/dw$b;

    invoke-virtual {v0}, Lrx/internal/operators/dw$b;->c()V

    .line 282
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 276
    .local p0, "this":Lrx/internal/operators/dw$a;, "Lrx/internal/operators/dw$a<TT;TU;>;"
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/dw$a;->request(J)V

    .line 277
    return-void
.end method
