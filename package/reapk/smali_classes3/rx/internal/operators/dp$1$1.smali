.class Lrx/internal/operators/dp$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/dp$1;->a(Lrx/internal/operators/dq$c;Ljava/lang/Long;Lrx/h$a;)Lrx/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lrx/internal/operators/dq$c;

.field final synthetic b:Ljava/lang/Long;

.field final synthetic c:Lrx/internal/operators/dp$1;


# direct methods
.method constructor <init>(Lrx/internal/operators/dp$1;Lrx/internal/operators/dq$c;Ljava/lang/Long;)V
    .locals 0

    .prologue
    .line 38
    .local p0, "this":Lrx/internal/operators/dp$1$1;, "Lrx/internal/operators/dp$1.1;"
    iput-object p1, p0, Lrx/internal/operators/dp$1$1;->c:Lrx/internal/operators/dp$1;

    iput-object p2, p0, Lrx/internal/operators/dp$1$1;->a:Lrx/internal/operators/dq$c;

    iput-object p3, p0, Lrx/internal/operators/dp$1$1;->b:Ljava/lang/Long;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 4

    .prologue
    .line 41
    .local p0, "this":Lrx/internal/operators/dp$1$1;, "Lrx/internal/operators/dp$1.1;"
    iget-object v0, p0, Lrx/internal/operators/dp$1$1;->a:Lrx/internal/operators/dq$c;

    iget-object v1, p0, Lrx/internal/operators/dp$1$1;->b:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lrx/internal/operators/dq$c;->a(J)V

    .line 42
    return-void
.end method
