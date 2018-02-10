.class Lrx/internal/operators/dq$c$1;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/dq$c;->a(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/l",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lrx/internal/operators/dq$c;


# direct methods
.method constructor <init>(Lrx/internal/operators/dq$c;)V
    .locals 0

    .prologue
    .line 179
    .local p0, "this":Lrx/internal/operators/dq$c$1;, "Lrx/internal/operators/dq$c.1;"
    iput-object p1, p0, Lrx/internal/operators/dq$c$1;->a:Lrx/internal/operators/dq$c;

    invoke-direct {p0}, Lrx/l;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 192
    .local p0, "this":Lrx/internal/operators/dq$c$1;, "Lrx/internal/operators/dq$c.1;"
    iget-object v0, p0, Lrx/internal/operators/dq$c$1;->a:Lrx/internal/operators/dq$c;

    iget-object v0, v0, Lrx/internal/operators/dq$c;->b:Lrx/e/g;

    invoke-virtual {v0}, Lrx/e/g;->onCompleted()V

    .line 193
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 187
    .local p0, "this":Lrx/internal/operators/dq$c$1;, "Lrx/internal/operators/dq$c.1;"
    iget-object v0, p0, Lrx/internal/operators/dq$c$1;->a:Lrx/internal/operators/dq$c;

    iget-object v0, v0, Lrx/internal/operators/dq$c;->b:Lrx/e/g;

    invoke-virtual {v0, p1}, Lrx/e/g;->onError(Ljava/lang/Throwable;)V

    .line 188
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
    .line 182
    .local p0, "this":Lrx/internal/operators/dq$c$1;, "Lrx/internal/operators/dq$c.1;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/operators/dq$c$1;->a:Lrx/internal/operators/dq$c;

    iget-object v0, v0, Lrx/internal/operators/dq$c;->b:Lrx/e/g;

    invoke-virtual {v0, p1}, Lrx/e/g;->onNext(Ljava/lang/Object;)V

    .line 183
    return-void
.end method

.method public setProducer(Lrx/g;)V
    .locals 1
    .param p1, "p"    # Lrx/g;

    .prologue
    .line 197
    .local p0, "this":Lrx/internal/operators/dq$c$1;, "Lrx/internal/operators/dq$c.1;"
    iget-object v0, p0, Lrx/internal/operators/dq$c$1;->a:Lrx/internal/operators/dq$c;

    iget-object v0, v0, Lrx/internal/operators/dq$c;->f:Lrx/internal/producers/a;

    invoke-virtual {v0, p1}, Lrx/internal/producers/a;->a(Lrx/g;)V

    .line 198
    return-void
.end method
