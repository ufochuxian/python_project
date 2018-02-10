.class Lrx/internal/operators/dp$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/internal/operators/dq$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/dp;-><init>(JLjava/util/concurrent/TimeUnit;Lrx/e;Lrx/h;)V
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
.field final synthetic a:J

.field final synthetic b:Ljava/util/concurrent/TimeUnit;


# direct methods
.method constructor <init>(JLjava/util/concurrent/TimeUnit;)V
    .locals 1

    .prologue
    .line 45
    .local p0, "this":Lrx/internal/operators/dp$2;, "Lrx/internal/operators/dp.2;"
    iput-wide p1, p0, Lrx/internal/operators/dp$2;->a:J

    iput-object p3, p0, Lrx/internal/operators/dp$2;->b:Ljava/util/concurrent/TimeUnit;

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
    .line 45
    .local p0, "this":Lrx/internal/operators/dp$2;, "Lrx/internal/operators/dp.2;"
    check-cast p1, Lrx/internal/operators/dq$c;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Ljava/lang/Long;

    .end local p2    # "x1":Ljava/lang/Object;
    check-cast p4, Lrx/h$a;

    .end local p4    # "x3":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3, p4}, Lrx/internal/operators/dp$2;->a(Lrx/internal/operators/dq$c;Ljava/lang/Long;Ljava/lang/Object;Lrx/h$a;)Lrx/m;

    move-result-object v0

    return-object v0
.end method

.method public a(Lrx/internal/operators/dq$c;Ljava/lang/Long;Ljava/lang/Object;Lrx/h$a;)Lrx/m;
    .locals 4
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
    .line 49
    .local p0, "this":Lrx/internal/operators/dp$2;, "Lrx/internal/operators/dp.2;"
    .local p1, "timeoutSubscriber":Lrx/internal/operators/dq$c;, "Lrx/internal/operators/dq$c<TT;>;"
    .local p3, "value":Ljava/lang/Object;, "TT;"
    new-instance v0, Lrx/internal/operators/dp$2$1;

    invoke-direct {v0, p0, p1, p2}, Lrx/internal/operators/dp$2$1;-><init>(Lrx/internal/operators/dp$2;Lrx/internal/operators/dq$c;Ljava/lang/Long;)V

    iget-wide v2, p0, Lrx/internal/operators/dp$2;->a:J

    iget-object v1, p0, Lrx/internal/operators/dp$2;->b:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p4, v0, v2, v3, v1}, Lrx/h$a;->a(Lrx/c/b;JLjava/util/concurrent/TimeUnit;)Lrx/m;

    move-result-object v0

    return-object v0
.end method
