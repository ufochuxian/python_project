.class Lrx/internal/operators/ab$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/ab;->a(Lrx/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lrx/l;

.field final synthetic b:Lrx/internal/operators/ab;


# direct methods
.method constructor <init>(Lrx/internal/operators/ab;Lrx/l;)V
    .locals 0

    .prologue
    .line 49
    .local p0, "this":Lrx/internal/operators/ab$1;, "Lrx/internal/operators/ab.1;"
    iput-object p1, p0, Lrx/internal/operators/ab$1;->b:Lrx/internal/operators/ab;

    iput-object p2, p0, Lrx/internal/operators/ab$1;->a:Lrx/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    .prologue
    .line 52
    .local p0, "this":Lrx/internal/operators/ab$1;, "Lrx/internal/operators/ab.1;"
    iget-object v0, p0, Lrx/internal/operators/ab$1;->a:Lrx/l;

    invoke-virtual {v0}, Lrx/l;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 53
    iget-object v0, p0, Lrx/internal/operators/ab$1;->b:Lrx/internal/operators/ab;

    iget-object v0, v0, Lrx/internal/operators/ab;->a:Lrx/e;

    iget-object v1, p0, Lrx/internal/operators/ab$1;->a:Lrx/l;

    invoke-static {v1}, Lrx/e/h;->a(Lrx/l;)Lrx/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/e;->a(Lrx/l;)Lrx/m;

    .line 55
    :cond_0
    return-void
.end method
