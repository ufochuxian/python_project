.class Lrx/internal/operators/cc$1;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/cc;->a(Lrx/l;)Lrx/l;
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
.field final synthetic a:Lrx/l;

.field final synthetic b:Lrx/internal/operators/cc;

.field private c:I


# direct methods
.method constructor <init>(Lrx/internal/operators/cc;Lrx/l;)V
    .locals 0

    .prologue
    .line 52
    .local p0, "this":Lrx/internal/operators/cc$1;, "Lrx/internal/operators/cc.1;"
    iput-object p1, p0, Lrx/internal/operators/cc$1;->b:Lrx/internal/operators/cc;

    iput-object p2, p0, Lrx/internal/operators/cc$1;->a:Lrx/l;

    invoke-direct {p0}, Lrx/l;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 4

    .prologue
    .line 72
    .local p0, "this":Lrx/internal/operators/cc$1;, "Lrx/internal/operators/cc.1;"
    iget v0, p0, Lrx/internal/operators/cc$1;->c:I

    iget-object v1, p0, Lrx/internal/operators/cc$1;->b:Lrx/internal/operators/cc;

    iget v1, v1, Lrx/internal/operators/cc;->a:I

    if-gt v0, v1, :cond_0

    .line 74
    iget-object v0, p0, Lrx/internal/operators/cc$1;->b:Lrx/internal/operators/cc;

    iget-boolean v0, v0, Lrx/internal/operators/cc;->b:Z

    if-eqz v0, :cond_1

    .line 75
    iget-object v0, p0, Lrx/internal/operators/cc$1;->a:Lrx/l;

    iget-object v1, p0, Lrx/internal/operators/cc$1;->b:Lrx/internal/operators/cc;

    iget-object v1, v1, Lrx/internal/operators/cc;->c:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lrx/l;->onNext(Ljava/lang/Object;)V

    .line 76
    iget-object v0, p0, Lrx/internal/operators/cc$1;->a:Lrx/l;

    invoke-virtual {v0}, Lrx/l;->onCompleted()V

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 78
    :cond_1
    iget-object v0, p0, Lrx/internal/operators/cc$1;->a:Lrx/l;

    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lrx/internal/operators/cc$1;->b:Lrx/internal/operators/cc;

    iget v3, v3, Lrx/internal/operators/cc;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is out of bounds"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lrx/l;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 67
    .local p0, "this":Lrx/internal/operators/cc$1;, "Lrx/internal/operators/cc.1;"
    iget-object v0, p0, Lrx/internal/operators/cc$1;->a:Lrx/l;

    invoke-virtual {v0, p1}, Lrx/l;->onError(Ljava/lang/Throwable;)V

    .line 68
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
    .line 58
    .local p0, "this":Lrx/internal/operators/cc$1;, "Lrx/internal/operators/cc.1;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iget v0, p0, Lrx/internal/operators/cc$1;->c:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lrx/internal/operators/cc$1;->c:I

    iget-object v1, p0, Lrx/internal/operators/cc$1;->b:Lrx/internal/operators/cc;

    iget v1, v1, Lrx/internal/operators/cc;->a:I

    if-ne v0, v1, :cond_0

    .line 59
    iget-object v0, p0, Lrx/internal/operators/cc$1;->a:Lrx/l;

    invoke-virtual {v0, p1}, Lrx/l;->onNext(Ljava/lang/Object;)V

    .line 60
    iget-object v0, p0, Lrx/internal/operators/cc$1;->a:Lrx/l;

    invoke-virtual {v0}, Lrx/l;->onCompleted()V

    .line 61
    invoke-virtual {p0}, Lrx/internal/operators/cc$1;->unsubscribe()V

    .line 63
    :cond_0
    return-void
.end method

.method public setProducer(Lrx/g;)V
    .locals 2
    .param p1, "p"    # Lrx/g;

    .prologue
    .line 85
    .local p0, "this":Lrx/internal/operators/cc$1;, "Lrx/internal/operators/cc.1;"
    iget-object v0, p0, Lrx/internal/operators/cc$1;->a:Lrx/l;

    new-instance v1, Lrx/internal/operators/cc$a;

    invoke-direct {v1, p1}, Lrx/internal/operators/cc$a;-><init>(Lrx/g;)V

    invoke-virtual {v0, v1}, Lrx/l;->setProducer(Lrx/g;)V

    .line 86
    return-void
.end method
