.class Lrx/internal/operators/dz$b$1;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/dz$b;->a(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/l",
        "<TV;>;"
    }
.end annotation


# instance fields
.field a:Z

.field final synthetic b:Lrx/internal/operators/dz$a;

.field final synthetic c:Lrx/internal/operators/dz$b;


# direct methods
.method constructor <init>(Lrx/internal/operators/dz$b;Lrx/internal/operators/dz$a;)V
    .locals 1

    .prologue
    .line 190
    .local p0, "this":Lrx/internal/operators/dz$b$1;, "Lrx/internal/operators/dz$b.1;"
    iput-object p1, p0, Lrx/internal/operators/dz$b$1;->c:Lrx/internal/operators/dz$b;

    iput-object p2, p0, Lrx/internal/operators/dz$b$1;->b:Lrx/internal/operators/dz$a;

    invoke-direct {p0}, Lrx/l;-><init>()V

    .line 191
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/dz$b$1;->a:Z

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 2

    .prologue
    .line 204
    .local p0, "this":Lrx/internal/operators/dz$b$1;, "Lrx/internal/operators/dz$b.1;"
    iget-boolean v0, p0, Lrx/internal/operators/dz$b$1;->a:Z

    if-eqz v0, :cond_0

    .line 205
    const/4 v0, 0x0

    iput-boolean v0, p0, Lrx/internal/operators/dz$b$1;->a:Z

    .line 206
    iget-object v0, p0, Lrx/internal/operators/dz$b$1;->c:Lrx/internal/operators/dz$b;

    iget-object v1, p0, Lrx/internal/operators/dz$b$1;->b:Lrx/internal/operators/dz$a;

    invoke-virtual {v0, v1}, Lrx/internal/operators/dz$b;->a(Lrx/internal/operators/dz$a;)V

    .line 207
    iget-object v0, p0, Lrx/internal/operators/dz$b$1;->c:Lrx/internal/operators/dz$b;

    iget-object v0, v0, Lrx/internal/operators/dz$b;->b:Lrx/i/b;

    invoke-virtual {v0, p0}, Lrx/i/b;->b(Lrx/m;)V

    .line 209
    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 199
    .local p0, "this":Lrx/internal/operators/dz$b$1;, "Lrx/internal/operators/dz$b.1;"
    iget-object v0, p0, Lrx/internal/operators/dz$b$1;->c:Lrx/internal/operators/dz$b;

    invoke-virtual {v0, p1}, Lrx/internal/operators/dz$b;->onError(Ljava/lang/Throwable;)V

    .line 200
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .line 194
    .local p0, "this":Lrx/internal/operators/dz$b$1;, "Lrx/internal/operators/dz$b.1;"
    .local p1, "t":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0}, Lrx/internal/operators/dz$b$1;->onCompleted()V

    .line 195
    return-void
.end method
