.class Lrx/internal/operators/au$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/au;->a(Lrx/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/concurrent/atomic/AtomicLong;

.field final synthetic b:Lrx/internal/producers/a;

.field final synthetic c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic d:Lrx/h$a;

.field final synthetic e:Lrx/c/b;

.field final synthetic f:Lrx/internal/operators/au;


# direct methods
.method constructor <init>(Lrx/internal/operators/au;Ljava/util/concurrent/atomic/AtomicLong;Lrx/internal/producers/a;Ljava/util/concurrent/atomic/AtomicBoolean;Lrx/h$a;Lrx/c/b;)V
    .locals 0

    .prologue
    .line 353
    .local p0, "this":Lrx/internal/operators/au$5;, "Lrx/internal/operators/au.5;"
    iput-object p1, p0, Lrx/internal/operators/au$5;->f:Lrx/internal/operators/au;

    iput-object p2, p0, Lrx/internal/operators/au$5;->a:Ljava/util/concurrent/atomic/AtomicLong;

    iput-object p3, p0, Lrx/internal/operators/au$5;->b:Lrx/internal/producers/a;

    iput-object p4, p0, Lrx/internal/operators/au$5;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p5, p0, Lrx/internal/operators/au$5;->d:Lrx/h$a;

    iput-object p6, p0, Lrx/internal/operators/au$5;->e:Lrx/c/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public request(J)V
    .locals 3
    .param p1, "n"    # J

    .prologue
    .line 357
    .local p0, "this":Lrx/internal/operators/au$5;, "Lrx/internal/operators/au.5;"
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 358
    iget-object v0, p0, Lrx/internal/operators/au$5;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lrx/internal/operators/a;->a(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 359
    iget-object v0, p0, Lrx/internal/operators/au$5;->b:Lrx/internal/producers/a;

    invoke-virtual {v0, p1, p2}, Lrx/internal/producers/a;->request(J)V

    .line 360
    iget-object v0, p0, Lrx/internal/operators/au$5;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Lrx/internal/operators/au$5;->d:Lrx/h$a;

    iget-object v1, p0, Lrx/internal/operators/au$5;->e:Lrx/c/b;

    invoke-virtual {v0, v1}, Lrx/h$a;->a(Lrx/c/b;)Lrx/m;

    .line 364
    :cond_0
    return-void
.end method
