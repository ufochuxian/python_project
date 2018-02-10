.class Lrx/internal/operators/cp$b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/cp$b;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lrx/internal/operators/cp$b;


# direct methods
.method constructor <init>(Lrx/internal/operators/cp$b;)V
    .locals 0

    .prologue
    .line 257
    .local p0, "this":Lrx/internal/operators/cp$b$1;, "Lrx/internal/operators/cp$b.1;"
    iput-object p1, p0, Lrx/internal/operators/cp$b$1;->a:Lrx/internal/operators/cp$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 3

    .prologue
    .line 260
    .local p0, "this":Lrx/internal/operators/cp$b$1;, "Lrx/internal/operators/cp$b.1;"
    iget-object v0, p0, Lrx/internal/operators/cp$b$1;->a:Lrx/internal/operators/cp$b;

    iget-object v0, v0, Lrx/internal/operators/cp$b;->f:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lrx/internal/operators/cp$b;->e:[Lrx/internal/operators/cp$a;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    iget-object v0, p0, Lrx/internal/operators/cp$b$1;->a:Lrx/internal/operators/cp$b;

    iget-object v0, v0, Lrx/internal/operators/cp$b;->b:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v1, p0, Lrx/internal/operators/cp$b$1;->a:Lrx/internal/operators/cp$b;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 264
    return-void
.end method
