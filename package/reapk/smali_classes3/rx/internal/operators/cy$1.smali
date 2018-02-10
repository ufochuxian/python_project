.class Lrx/internal/operators/cy$1;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/cy;->a(Lrx/l;)Lrx/l;
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
.field a:I

.field final synthetic b:Lrx/l;

.field final synthetic c:Lrx/internal/operators/cy;


# direct methods
.method constructor <init>(Lrx/internal/operators/cy;Lrx/l;Lrx/l;)V
    .locals 0

    .prologue
    .line 43
    .local p0, "this":Lrx/internal/operators/cy$1;, "Lrx/internal/operators/cy.1;"
    .local p2, "x0":Lrx/l;, "Lrx/l<*>;"
    iput-object p1, p0, Lrx/internal/operators/cy$1;->c:Lrx/internal/operators/cy;

    iput-object p3, p0, Lrx/internal/operators/cy$1;->b:Lrx/l;

    invoke-direct {p0, p2}, Lrx/l;-><init>(Lrx/l;)V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 49
    .local p0, "this":Lrx/internal/operators/cy$1;, "Lrx/internal/operators/cy.1;"
    iget-object v0, p0, Lrx/internal/operators/cy$1;->b:Lrx/l;

    invoke-virtual {v0}, Lrx/l;->onCompleted()V

    .line 50
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 54
    .local p0, "this":Lrx/internal/operators/cy$1;, "Lrx/internal/operators/cy.1;"
    iget-object v0, p0, Lrx/internal/operators/cy$1;->b:Lrx/l;

    invoke-virtual {v0, p1}, Lrx/l;->onError(Ljava/lang/Throwable;)V

    .line 55
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p0, "this":Lrx/internal/operators/cy$1;, "Lrx/internal/operators/cy.1;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget v0, p0, Lrx/internal/operators/cy$1;->a:I

    iget-object v1, p0, Lrx/internal/operators/cy$1;->c:Lrx/internal/operators/cy;

    iget v1, v1, Lrx/internal/operators/cy;->a:I

    if-lt v0, v1, :cond_0

    .line 60
    iget-object v0, p0, Lrx/internal/operators/cy$1;->b:Lrx/l;

    invoke-virtual {v0, p1}, Lrx/l;->onNext(Ljava/lang/Object;)V

    .line 64
    :goto_0
    return-void

    .line 62
    :cond_0
    iget v0, p0, Lrx/internal/operators/cy$1;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lrx/internal/operators/cy$1;->a:I

    goto :goto_0
.end method

.method public setProducer(Lrx/g;)V
    .locals 2
    .param p1, "producer"    # Lrx/g;

    .prologue
    .line 68
    .local p0, "this":Lrx/internal/operators/cy$1;, "Lrx/internal/operators/cy.1;"
    iget-object v0, p0, Lrx/internal/operators/cy$1;->b:Lrx/l;

    invoke-virtual {v0, p1}, Lrx/l;->setProducer(Lrx/g;)V

    .line 69
    iget-object v0, p0, Lrx/internal/operators/cy$1;->c:Lrx/internal/operators/cy;

    iget v0, v0, Lrx/internal/operators/cy;->a:I

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, Lrx/g;->request(J)V

    .line 70
    return-void
.end method
