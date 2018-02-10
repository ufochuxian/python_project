.class Lrx/internal/operators/cb$c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/cb$c;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lrx/internal/operators/cb$c;


# direct methods
.method constructor <init>(Lrx/internal/operators/cb$c;)V
    .locals 0

    .prologue
    .line 98
    .local p0, "this":Lrx/internal/operators/cb$c$1;, "Lrx/internal/operators/cb$c.1;"
    iput-object p1, p0, Lrx/internal/operators/cb$c$1;->a:Lrx/internal/operators/cb$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    .prologue
    .line 101
    .local p0, "this":Lrx/internal/operators/cb$c$1;, "Lrx/internal/operators/cb$c.1;"
    iget-object v0, p0, Lrx/internal/operators/cb$c$1;->a:Lrx/internal/operators/cb$c;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lrx/internal/operators/cb$c;->g:Z

    .line 102
    iget-object v0, p0, Lrx/internal/operators/cb$c$1;->a:Lrx/internal/operators/cb$c;

    iget-object v0, v0, Lrx/internal/operators/cb$c;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    .line 103
    iget-object v0, p0, Lrx/internal/operators/cb$c$1;->a:Lrx/internal/operators/cb$c;

    invoke-virtual {v0}, Lrx/internal/operators/cb$c;->b()V

    .line 105
    :cond_0
    return-void
.end method
