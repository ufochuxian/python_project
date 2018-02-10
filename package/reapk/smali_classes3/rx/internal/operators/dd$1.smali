.class Lrx/internal/operators/dd$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/dd;->a(Lrx/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lrx/l;

.field final synthetic b:Lrx/h$a;

.field final synthetic c:Lrx/internal/operators/dd;


# direct methods
.method constructor <init>(Lrx/internal/operators/dd;Lrx/l;Lrx/h$a;)V
    .locals 0

    .prologue
    .line 45
    .local p0, "this":Lrx/internal/operators/dd$1;, "Lrx/internal/operators/dd.1;"
    iput-object p1, p0, Lrx/internal/operators/dd$1;->c:Lrx/internal/operators/dd;

    iput-object p2, p0, Lrx/internal/operators/dd$1;->a:Lrx/l;

    iput-object p3, p0, Lrx/internal/operators/dd$1;->b:Lrx/h$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 3

    .prologue
    .line 48
    .local p0, "this":Lrx/internal/operators/dd$1;, "Lrx/internal/operators/dd.1;"
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 50
    .local v1, "t":Ljava/lang/Thread;
    new-instance v0, Lrx/internal/operators/dd$1$1;

    iget-object v2, p0, Lrx/internal/operators/dd$1;->a:Lrx/l;

    invoke-direct {v0, p0, v2, v1}, Lrx/internal/operators/dd$1$1;-><init>(Lrx/internal/operators/dd$1;Lrx/l;Ljava/lang/Thread;)V

    .line 94
    .local v0, "s":Lrx/l;, "Lrx/l<TT;>;"
    iget-object v2, p0, Lrx/internal/operators/dd$1;->c:Lrx/internal/operators/dd;

    iget-object v2, v2, Lrx/internal/operators/dd;->b:Lrx/e;

    invoke-virtual {v2, v0}, Lrx/e;->a(Lrx/l;)Lrx/m;

    .line 95
    return-void
.end method
