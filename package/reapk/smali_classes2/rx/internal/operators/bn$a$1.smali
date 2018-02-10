.class Lrx/internal/operators/bn$a$1;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/bn$a;->a(Ljava/lang/Object;)V
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
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lrx/internal/operators/bn$a;


# direct methods
.method constructor <init>(Lrx/internal/operators/bn$a;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 170
    .local p0, "this":Lrx/internal/operators/bn$a$1;, "Lrx/internal/operators/bn$a.1;"
    iput-object p1, p0, Lrx/internal/operators/bn$a$1;->b:Lrx/internal/operators/bn$a;

    iput-object p2, p0, Lrx/internal/operators/bn$a$1;->a:Ljava/util/List;

    invoke-direct {p0}, Lrx/l;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 2

    .prologue
    .line 185
    .local p0, "this":Lrx/internal/operators/bn$a$1;, "Lrx/internal/operators/bn$a.1;"
    iget-object v0, p0, Lrx/internal/operators/bn$a$1;->b:Lrx/internal/operators/bn$a;

    iget-object v0, v0, Lrx/internal/operators/bn$a;->d:Lrx/i/b;

    invoke-virtual {v0, p0}, Lrx/i/b;->b(Lrx/m;)V

    .line 186
    iget-object v0, p0, Lrx/internal/operators/bn$a$1;->b:Lrx/internal/operators/bn$a;

    iget-object v1, p0, Lrx/internal/operators/bn$a$1;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Lrx/internal/operators/bn$a;->a(Ljava/util/List;)V

    .line 187
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 180
    .local p0, "this":Lrx/internal/operators/bn$a$1;, "Lrx/internal/operators/bn$a.1;"
    iget-object v0, p0, Lrx/internal/operators/bn$a$1;->b:Lrx/internal/operators/bn$a;

    invoke-virtual {v0, p1}, Lrx/internal/operators/bn$a;->onError(Ljava/lang/Throwable;)V

    .line 181
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTClosing;)V"
        }
    .end annotation

    .prologue
    .line 174
    .local p0, "this":Lrx/internal/operators/bn$a$1;, "Lrx/internal/operators/bn$a.1;"
    .local p1, "t":Ljava/lang/Object;, "TTClosing;"
    iget-object v0, p0, Lrx/internal/operators/bn$a$1;->b:Lrx/internal/operators/bn$a;

    iget-object v0, v0, Lrx/internal/operators/bn$a;->d:Lrx/i/b;

    invoke-virtual {v0, p0}, Lrx/i/b;->b(Lrx/m;)V

    .line 175
    iget-object v0, p0, Lrx/internal/operators/bn$a$1;->b:Lrx/internal/operators/bn$a;

    iget-object v1, p0, Lrx/internal/operators/bn$a$1;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Lrx/internal/operators/bn$a;->a(Ljava/util/List;)V

    .line 176
    return-void
.end method
