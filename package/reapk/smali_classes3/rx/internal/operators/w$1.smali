.class Lrx/internal/operators/w$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/w;->a(Lrx/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lrx/internal/operators/w$b;

.field final synthetic b:Lrx/internal/operators/w;


# direct methods
.method constructor <init>(Lrx/internal/operators/w;Lrx/internal/operators/w$b;)V
    .locals 0

    .prologue
    .line 369
    .local p0, "this":Lrx/internal/operators/w$1;, "Lrx/internal/operators/w.1;"
    iput-object p1, p0, Lrx/internal/operators/w$1;->b:Lrx/internal/operators/w;

    iput-object p2, p0, Lrx/internal/operators/w$1;->a:Lrx/internal/operators/w$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    .prologue
    .line 374
    .local p0, "this":Lrx/internal/operators/w$1;, "Lrx/internal/operators/w.1;"
    iget-object v1, p0, Lrx/internal/operators/w$1;->a:Lrx/internal/operators/w$b;

    invoke-virtual {v1}, Lrx/internal/operators/w$b;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/internal/operators/w$a;

    .local v0, "c":Lrx/internal/operators/w$a;, "Lrx/internal/operators/w$a<TT;>;"
    if-eqz v0, :cond_0

    .line 376
    invoke-virtual {v0}, Lrx/internal/operators/w$a;->unsubscribe()V

    .line 382
    :cond_0
    iget-object v1, p0, Lrx/internal/operators/w$1;->a:Lrx/internal/operators/w$b;

    iget-object v1, v1, Lrx/internal/operators/w$b;->a:Ljava/util/Collection;

    invoke-static {v1}, Lrx/internal/operators/w;->a(Ljava/util/Collection;)V

    .line 383
    return-void
.end method
