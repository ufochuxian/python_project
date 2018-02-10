.class Lrx/internal/operators/co$4$1;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/co$4;->onError(Ljava/lang/Throwable;)V
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
.field final synthetic a:Lrx/internal/operators/co$4;


# direct methods
.method constructor <init>(Lrx/internal/operators/co$4;)V
    .locals 0

    .prologue
    .line 115
    .local p0, "this":Lrx/internal/operators/co$4$1;, "Lrx/internal/operators/co$4.1;"
    iput-object p1, p0, Lrx/internal/operators/co$4$1;->a:Lrx/internal/operators/co$4;

    invoke-direct {p0}, Lrx/l;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 126
    .local p0, "this":Lrx/internal/operators/co$4$1;, "Lrx/internal/operators/co$4.1;"
    iget-object v0, p0, Lrx/internal/operators/co$4$1;->a:Lrx/internal/operators/co$4;

    iget-object v0, v0, Lrx/internal/operators/co$4;->b:Lrx/l;

    invoke-virtual {v0}, Lrx/l;->onCompleted()V

    .line 127
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 122
    .local p0, "this":Lrx/internal/operators/co$4$1;, "Lrx/internal/operators/co$4.1;"
    iget-object v0, p0, Lrx/internal/operators/co$4$1;->a:Lrx/internal/operators/co$4;

    iget-object v0, v0, Lrx/internal/operators/co$4;->b:Lrx/l;

    invoke-virtual {v0, p1}, Lrx/l;->onError(Ljava/lang/Throwable;)V

    .line 123
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
    .line 118
    .local p0, "this":Lrx/internal/operators/co$4$1;, "Lrx/internal/operators/co$4.1;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/operators/co$4$1;->a:Lrx/internal/operators/co$4;

    iget-object v0, v0, Lrx/internal/operators/co$4;->b:Lrx/l;

    invoke-virtual {v0, p1}, Lrx/l;->onNext(Ljava/lang/Object;)V

    .line 119
    return-void
.end method

.method public setProducer(Lrx/g;)V
    .locals 1
    .param p1, "producer"    # Lrx/g;

    .prologue
    .line 130
    .local p0, "this":Lrx/internal/operators/co$4$1;, "Lrx/internal/operators/co$4.1;"
    iget-object v0, p0, Lrx/internal/operators/co$4$1;->a:Lrx/internal/operators/co$4;

    iget-object v0, v0, Lrx/internal/operators/co$4;->c:Lrx/internal/producers/a;

    invoke-virtual {v0, p1}, Lrx/internal/producers/a;->a(Lrx/g;)V

    .line 131
    return-void
.end method
