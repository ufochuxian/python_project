.class Lrx/internal/operators/dr$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/internal/operators/dq$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/dr;-><init>(Lrx/c/o;Lrx/c/p;Lrx/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/internal/operators/dq$a",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lrx/c/o;


# direct methods
.method constructor <init>(Lrx/c/o;)V
    .locals 0

    .prologue
    .line 40
    .local p0, "this":Lrx/internal/operators/dr$1;, "Lrx/internal/operators/dr.1;"
    iput-object p1, p0, Lrx/internal/operators/dr$1;->a:Lrx/c/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # Ljava/lang/Object;

    .prologue
    .line 40
    .local p0, "this":Lrx/internal/operators/dr$1;, "Lrx/internal/operators/dr.1;"
    check-cast p1, Lrx/internal/operators/dq$c;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Ljava/lang/Long;

    .end local p2    # "x1":Ljava/lang/Object;
    check-cast p3, Lrx/h$a;

    .end local p3    # "x2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lrx/internal/operators/dr$1;->a(Lrx/internal/operators/dq$c;Ljava/lang/Long;Lrx/h$a;)Lrx/m;

    move-result-object v0

    return-object v0
.end method

.method public a(Lrx/internal/operators/dq$c;Ljava/lang/Long;Lrx/h$a;)Lrx/m;
    .locals 3
    .param p2, "seqId"    # Ljava/lang/Long;
    .param p3, "inner"    # Lrx/h$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/dq$c",
            "<TT;>;",
            "Ljava/lang/Long;",
            "Lrx/h$a;",
            ")",
            "Lrx/m;"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, "this":Lrx/internal/operators/dr$1;, "Lrx/internal/operators/dr.1;"
    .local p1, "timeoutSubscriber":Lrx/internal/operators/dq$c;, "Lrx/internal/operators/dq$c<TT;>;"
    iget-object v2, p0, Lrx/internal/operators/dr$1;->a:Lrx/c/o;

    if-eqz v2, :cond_0

    .line 49
    :try_start_0
    iget-object v2, p0, Lrx/internal/operators/dr$1;->a:Lrx/c/o;

    invoke-interface {v2}, Lrx/c/o;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/e;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .local v0, "o":Lrx/e;, "Lrx/e<TU;>;"
    new-instance v2, Lrx/internal/operators/dr$1$1;

    invoke-direct {v2, p0, p1, p2}, Lrx/internal/operators/dr$1$1;-><init>(Lrx/internal/operators/dr$1;Lrx/internal/operators/dq$c;Ljava/lang/Long;)V

    invoke-virtual {v0, v2}, Lrx/e;->a(Lrx/l;)Lrx/m;

    move-result-object v2

    .line 73
    .end local v0    # "o":Lrx/e;, "Lrx/e<TU;>;"
    :goto_0
    return-object v2

    .line 50
    :catch_0
    move-exception v1

    .line 51
    .local v1, "t":Ljava/lang/Throwable;
    invoke-static {v1, p1}, Lrx/exceptions/a;->a(Ljava/lang/Throwable;Lrx/f;)V

    .line 52
    invoke-static {}, Lrx/i/f;->b()Lrx/m;

    move-result-object v2

    goto :goto_0

    .line 73
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_0
    invoke-static {}, Lrx/i/f;->b()Lrx/m;

    move-result-object v2

    goto :goto_0
.end method
