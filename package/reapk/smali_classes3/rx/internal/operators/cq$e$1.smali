.class Lrx/internal/operators/cq$e$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/cq$e;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lrx/internal/operators/cq$e;


# direct methods
.method constructor <init>(Lrx/internal/operators/cq$e;)V
    .locals 0

    .prologue
    .line 361
    .local p0, "this":Lrx/internal/operators/cq$e$1;, "Lrx/internal/operators/cq$e.1;"
    iput-object p1, p0, Lrx/internal/operators/cq$e$1;->a:Lrx/internal/operators/cq$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 6

    .prologue
    .line 364
    .local p0, "this":Lrx/internal/operators/cq$e$1;, "Lrx/internal/operators/cq$e.1;"
    iget-object v0, p0, Lrx/internal/operators/cq$e$1;->a:Lrx/internal/operators/cq$e;

    iget-boolean v0, v0, Lrx/internal/operators/cq$e;->e:Z

    if-nez v0, :cond_1

    .line 365
    iget-object v0, p0, Lrx/internal/operators/cq$e$1;->a:Lrx/internal/operators/cq$e;

    iget-object v1, v0, Lrx/internal/operators/cq$e;->f:Lrx/internal/util/h;

    monitor-enter v1

    .line 366
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/cq$e$1;->a:Lrx/internal/operators/cq$e;

    iget-boolean v0, v0, Lrx/internal/operators/cq$e;->e:Z

    if-nez v0, :cond_0

    .line 367
    iget-object v0, p0, Lrx/internal/operators/cq$e$1;->a:Lrx/internal/operators/cq$e;

    iget-object v0, v0, Lrx/internal/operators/cq$e;->f:Lrx/internal/util/h;

    invoke-virtual {v0}, Lrx/internal/util/h;->a()V

    .line 368
    iget-object v0, p0, Lrx/internal/operators/cq$e$1;->a:Lrx/internal/operators/cq$e;

    iget-wide v2, v0, Lrx/internal/operators/cq$e;->h:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v0, Lrx/internal/operators/cq$e;->h:J

    .line 369
    iget-object v0, p0, Lrx/internal/operators/cq$e$1;->a:Lrx/internal/operators/cq$e;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lrx/internal/operators/cq$e;->e:Z

    .line 371
    :cond_0
    monitor-exit v1

    .line 378
    :cond_1
    return-void

    .line 371
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method