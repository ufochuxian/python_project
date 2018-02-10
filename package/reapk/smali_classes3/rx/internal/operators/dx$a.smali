.class final Lrx/internal/operators/dx$a;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/dx;
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
.field final a:Lrx/internal/operators/dx$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/dx$b",
            "<TT;TU;>;"
        }
    .end annotation
.end field

.field b:Z


# direct methods
.method public constructor <init>(Lrx/internal/operators/dx$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/dx$b",
            "<TT;TU;>;)V"
        }
    .end annotation

    .prologue
    .line 290
    .local p0, "this":Lrx/internal/operators/dx$a;, "Lrx/internal/operators/dx$a<TT;TU;>;"
    .local p1, "sub":Lrx/internal/operators/dx$b;, "Lrx/internal/operators/dx$b<TT;TU;>;"
    invoke-direct {p0}, Lrx/l;-><init>()V

    .line 291
    iput-object p1, p0, Lrx/internal/operators/dx$a;->a:Lrx/internal/operators/dx$b;

    .line 292
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 314
    .local p0, "this":Lrx/internal/operators/dx$a;, "Lrx/internal/operators/dx$a<TT;TU;>;"
    iget-boolean v0, p0, Lrx/internal/operators/dx$a;->b:Z

    if-nez v0, :cond_0

    .line 315
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/dx$a;->b:Z

    .line 316
    iget-object v0, p0, Lrx/internal/operators/dx$a;->a:Lrx/internal/operators/dx$b;

    invoke-virtual {v0}, Lrx/internal/operators/dx$b;->onCompleted()V

    .line 318
    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 309
    .local p0, "this":Lrx/internal/operators/dx$a;, "Lrx/internal/operators/dx$a<TT;TU;>;"
    iget-object v0, p0, Lrx/internal/operators/dx$a;->a:Lrx/internal/operators/dx$b;

    invoke-virtual {v0, p1}, Lrx/internal/operators/dx$b;->onError(Ljava/lang/Throwable;)V

    .line 310
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
    .line 301
    .local p0, "this":Lrx/internal/operators/dx$a;, "Lrx/internal/operators/dx$a<TT;TU;>;"
    .local p1, "t":Ljava/lang/Object;, "TU;"
    iget-boolean v0, p0, Lrx/internal/operators/dx$a;->b:Z

    if-nez v0, :cond_0

    .line 302
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/dx$a;->b:Z

    .line 303
    iget-object v0, p0, Lrx/internal/operators/dx$a;->a:Lrx/internal/operators/dx$b;

    invoke-virtual {v0}, Lrx/internal/operators/dx$b;->c()V

    .line 305
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 296
    .local p0, "this":Lrx/internal/operators/dx$a;, "Lrx/internal/operators/dx$a<TT;TU;>;"
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/dx$a;->request(J)V

    .line 297
    return-void
.end method
