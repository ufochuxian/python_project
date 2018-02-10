.class Lrx/internal/operators/dr$1$1;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/dr$1;->a(Lrx/internal/operators/dq$c;Ljava/lang/Long;Lrx/h$a;)Lrx/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/l",
        "<TU;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lrx/internal/operators/dq$c;

.field final synthetic b:Ljava/lang/Long;

.field final synthetic c:Lrx/internal/operators/dr$1;


# direct methods
.method constructor <init>(Lrx/internal/operators/dr$1;Lrx/internal/operators/dq$c;Ljava/lang/Long;)V
    .locals 0

    .prologue
    .line 54
    .local p0, "this":Lrx/internal/operators/dr$1$1;, "Lrx/internal/operators/dr$1.1;"
    iput-object p1, p0, Lrx/internal/operators/dr$1$1;->c:Lrx/internal/operators/dr$1;

    iput-object p2, p0, Lrx/internal/operators/dr$1$1;->a:Lrx/internal/operators/dq$c;

    iput-object p3, p0, Lrx/internal/operators/dr$1$1;->b:Ljava/lang/Long;

    invoke-direct {p0}, Lrx/l;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 4

    .prologue
    .line 58
    .local p0, "this":Lrx/internal/operators/dr$1$1;, "Lrx/internal/operators/dr$1.1;"
    iget-object v0, p0, Lrx/internal/operators/dr$1$1;->a:Lrx/internal/operators/dq$c;

    iget-object v1, p0, Lrx/internal/operators/dr$1$1;->b:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lrx/internal/operators/dq$c;->a(J)V

    .line 59
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 63
    .local p0, "this":Lrx/internal/operators/dr$1$1;, "Lrx/internal/operators/dr$1.1;"
    iget-object v0, p0, Lrx/internal/operators/dr$1$1;->a:Lrx/internal/operators/dq$c;

    invoke-virtual {v0, p1}, Lrx/internal/operators/dq$c;->onError(Ljava/lang/Throwable;)V

    .line 64
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)V"
        }
    .end annotation

    .prologue
    .line 68
    .local p0, "this":Lrx/internal/operators/dr$1$1;, "Lrx/internal/operators/dr$1.1;"
    .local p1, "t":Ljava/lang/Object;, "TU;"
    iget-object v0, p0, Lrx/internal/operators/dr$1$1;->a:Lrx/internal/operators/dq$c;

    iget-object v1, p0, Lrx/internal/operators/dr$1$1;->b:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lrx/internal/operators/dq$c;->a(J)V

    .line 69
    return-void
.end method
