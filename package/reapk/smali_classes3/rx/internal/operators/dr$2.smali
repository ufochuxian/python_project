.class Lrx/internal/operators/dr$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/internal/operators/dq$b;


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
        "Lrx/internal/operators/dq$b",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lrx/c/p;


# direct methods
.method constructor <init>(Lrx/c/p;)V
    .locals 0

    .prologue
    .line 76
    .local p0, "this":Lrx/internal/operators/dr$2;, "Lrx/internal/operators/dr.2;"
    iput-object p1, p0, Lrx/internal/operators/dr$2;->a:Lrx/c/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # Ljava/lang/Object;
    .param p4, "x3"    # Ljava/lang/Object;

    .prologue
    .line 76
    .local p0, "this":Lrx/internal/operators/dr$2;, "Lrx/internal/operators/dr.2;"
    check-cast p1, Lrx/internal/operators/dq$c;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Ljava/lang/Long;

    .end local p2    # "x1":Ljava/lang/Object;
    check-cast p4, Lrx/h$a;

    .end local p4    # "x3":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3, p4}, Lrx/internal/operators/dr$2;->a(Lrx/internal/operators/dq$c;Ljava/lang/Long;Ljava/lang/Object;Lrx/h$a;)Lrx/m;

    move-result-object v0

    return-object v0
.end method

.method public a(Lrx/internal/operators/dq$c;Ljava/lang/Long;Ljava/lang/Object;Lrx/h$a;)Lrx/m;
    .locals 3
    .param p2, "seqId"    # Ljava/lang/Long;
    .param p4, "inner"    # Lrx/h$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/dq$c",
            "<TT;>;",
            "Ljava/lang/Long;",
            "TT;",
            "Lrx/h$a;",
            ")",
            "Lrx/m;"
        }
    .end annotation

    .prologue
    .line 84
    .local p0, "this":Lrx/internal/operators/dr$2;, "Lrx/internal/operators/dr.2;"
    .local p1, "timeoutSubscriber":Lrx/internal/operators/dq$c;, "Lrx/internal/operators/dq$c<TT;>;"
    .local p3, "value":Ljava/lang/Object;, "TT;"
    :try_start_0
    iget-object v2, p0, Lrx/internal/operators/dr$2;->a:Lrx/c/p;

    invoke-interface {v2, p3}, Lrx/c/p;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/e;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    .local v0, "o":Lrx/e;, "Lrx/e<TV;>;"
    new-instance v2, Lrx/internal/operators/dr$2$1;

    invoke-direct {v2, p0, p1, p2}, Lrx/internal/operators/dr$2$1;-><init>(Lrx/internal/operators/dr$2;Lrx/internal/operators/dq$c;Ljava/lang/Long;)V

    invoke-virtual {v0, v2}, Lrx/e;->a(Lrx/l;)Lrx/m;

    move-result-object v2

    .end local v0    # "o":Lrx/e;, "Lrx/e<TV;>;"
    :goto_0
    return-object v2

    .line 85
    :catch_0
    move-exception v1

    .line 86
    .local v1, "t":Ljava/lang/Throwable;
    invoke-static {v1, p1}, Lrx/exceptions/a;->a(Ljava/lang/Throwable;Lrx/f;)V

    .line 87
    invoke-static {}, Lrx/i/f;->b()Lrx/m;

    move-result-object v2

    goto :goto_0
.end method
