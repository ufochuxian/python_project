.class Lrx/internal/operators/dv$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/dv;->a(Lrx/l;)Lrx/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lrx/l;

.field final synthetic b:Lrx/internal/operators/dv;


# direct methods
.method constructor <init>(Lrx/internal/operators/dv;Lrx/l;)V
    .locals 0

    .prologue
    .line 57
    .local p0, "this":Lrx/internal/operators/dv$2;, "Lrx/internal/operators/dv.2;"
    iput-object p1, p0, Lrx/internal/operators/dv$2;->b:Lrx/internal/operators/dv;

    iput-object p2, p0, Lrx/internal/operators/dv$2;->a:Lrx/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    .prologue
    .line 61
    .local p0, "this":Lrx/internal/operators/dv$2;, "Lrx/internal/operators/dv.2;"
    iget-object v1, p0, Lrx/internal/operators/dv$2;->b:Lrx/internal/operators/dv;

    iget-object v1, v1, Lrx/internal/operators/dv;->a:Lrx/h;

    invoke-virtual {v1}, Lrx/h;->createWorker()Lrx/h$a;

    move-result-object v0

    .line 62
    .local v0, "inner":Lrx/h$a;
    new-instance v1, Lrx/internal/operators/dv$2$1;

    invoke-direct {v1, p0, v0}, Lrx/internal/operators/dv$2$1;-><init>(Lrx/internal/operators/dv$2;Lrx/h$a;)V

    invoke-virtual {v0, v1}, Lrx/h$a;->a(Lrx/c/b;)Lrx/m;

    .line 70
    return-void
.end method
