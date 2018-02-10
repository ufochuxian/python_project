.class final Lrx/internal/operators/bm$b$a;
.super Ljava/util/concurrent/atomic/AtomicBoolean;
.source "SourceFile"

# interfaces
.implements Lrx/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/bm$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x37bb5316f95bb99bL


# instance fields
.field final synthetic a:Lrx/internal/operators/bm$b;


# direct methods
.method constructor <init>(Lrx/internal/operators/bm$b;)V
    .locals 0

    .prologue
    .line 311
    .local p0, "this":Lrx/internal/operators/bm$b$a;, "Lrx/internal/operators/bm$b<TT;>.a;"
    iput-object p1, p0, Lrx/internal/operators/bm$b$a;->a:Lrx/internal/operators/bm$b;

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    return-void
.end method


# virtual methods
.method public request(J)V
    .locals 11
    .param p1, "n"    # J

    .prologue
    .line 318
    .local p0, "this":Lrx/internal/operators/bm$b$a;, "Lrx/internal/operators/bm$b<TT;>.a;"
    iget-object v0, p0, Lrx/internal/operators/bm$b$a;->a:Lrx/internal/operators/bm$b;

    .line 319
    .local v0, "parent":Lrx/internal/operators/bm$b;, "Lrx/internal/operators/bm$b<TT;>;"
    iget-object v1, v0, Lrx/internal/operators/bm$b;->f:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v6, v0, Lrx/internal/operators/bm$b;->e:Ljava/util/ArrayDeque;

    iget-object v7, v0, Lrx/internal/operators/bm$b;->a:Lrx/l;

    invoke-static {v1, p1, p2, v6, v7}, Lrx/internal/operators/a;->a(Ljava/util/concurrent/atomic/AtomicLong;JLjava/util/Queue;Lrx/l;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 320
    const-wide/16 v6, 0x0

    cmp-long v1, p1, v6

    if-eqz v1, :cond_0

    .line 321
    invoke-virtual {p0}, Lrx/internal/operators/bm$b$a;->get()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    const/4 v6, 0x1

    invoke-virtual {p0, v1, v6}, Lrx/internal/operators/bm$b$a;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 322
    iget v1, v0, Lrx/internal/operators/bm$b;->c:I

    int-to-long v6, v1

    const-wide/16 v8, 0x1

    sub-long v8, p1, v8

    invoke-static {v6, v7, v8, v9}, Lrx/internal/operators/a;->a(JJ)J

    move-result-wide v2

    .line 323
    .local v2, "u":J
    iget v1, v0, Lrx/internal/operators/bm$b;->b:I

    int-to-long v6, v1

    invoke-static {v2, v3, v6, v7}, Lrx/internal/operators/a;->b(JJ)J

    move-result-wide v4

    .line 325
    .local v4, "v":J
    invoke-static {v0, v4, v5}, Lrx/internal/operators/bm$b;->a(Lrx/internal/operators/bm$b;J)V

    .line 332
    .end local v2    # "u":J
    .end local v4    # "v":J
    :cond_0
    :goto_0
    return-void

    .line 327
    :cond_1
    iget v1, v0, Lrx/internal/operators/bm$b;->c:I

    int-to-long v6, v1

    invoke-static {v6, v7, p1, p2}, Lrx/internal/operators/a;->a(JJ)J

    move-result-wide v2

    .line 328
    .restart local v2    # "u":J
    invoke-static {v0, v2, v3}, Lrx/internal/operators/bm$b;->b(Lrx/internal/operators/bm$b;J)V

    goto :goto_0
.end method
