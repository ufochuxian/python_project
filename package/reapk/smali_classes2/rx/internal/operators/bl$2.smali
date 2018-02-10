.class Lrx/internal/operators/bl$2;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/bl;->a(Lrx/l;)Lrx/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/l",
        "<TTClosing;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lrx/internal/operators/bl$a;

.field final synthetic b:Lrx/internal/operators/bl;


# direct methods
.method constructor <init>(Lrx/internal/operators/bl;Lrx/internal/operators/bl$a;)V
    .locals 0

    .prologue
    .line 87
    .local p0, "this":Lrx/internal/operators/bl$2;, "Lrx/internal/operators/bl.2;"
    iput-object p1, p0, Lrx/internal/operators/bl$2;->b:Lrx/internal/operators/bl;

    iput-object p2, p0, Lrx/internal/operators/bl$2;->a:Lrx/internal/operators/bl$a;

    invoke-direct {p0}, Lrx/l;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 101
    .local p0, "this":Lrx/internal/operators/bl$2;, "Lrx/internal/operators/bl.2;"
    iget-object v0, p0, Lrx/internal/operators/bl$2;->a:Lrx/internal/operators/bl$a;

    invoke-virtual {v0}, Lrx/internal/operators/bl$a;->onCompleted()V

    .line 102
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 96
    .local p0, "this":Lrx/internal/operators/bl$2;, "Lrx/internal/operators/bl.2;"
    iget-object v0, p0, Lrx/internal/operators/bl$2;->a:Lrx/internal/operators/bl$a;

    invoke-virtual {v0, p1}, Lrx/internal/operators/bl$a;->onError(Ljava/lang/Throwable;)V

    .line 97
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTClosing;)V"
        }
    .end annotation

    .prologue
    .line 91
    .local p0, "this":Lrx/internal/operators/bl$2;, "Lrx/internal/operators/bl.2;"
    .local p1, "t":Ljava/lang/Object;, "TTClosing;"
    iget-object v0, p0, Lrx/internal/operators/bl$2;->a:Lrx/internal/operators/bl$a;

    invoke-virtual {v0}, Lrx/internal/operators/bl$a;->a()V

    .line 92
    return-void
.end method
