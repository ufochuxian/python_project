.class final Lrx/internal/operators/bm$c$a;
.super Ljava/util/concurrent/atomic/AtomicBoolean;
.source "SourceFile"

# interfaces
.implements Lrx/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/bm$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x2f9355307bc4d2b2L


# instance fields
.field final synthetic a:Lrx/internal/operators/bm$c;


# direct methods
.method constructor <init>(Lrx/internal/operators/bm$c;)V
    .locals 0

    .prologue
    .line 210
    .local p0, "this":Lrx/internal/operators/bm$c$a;, "Lrx/internal/operators/bm$c<TT;>.a;"
    iput-object p1, p0, Lrx/internal/operators/bm$c$a;->a:Lrx/internal/operators/bm$c;

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    return-void
.end method


# virtual methods
.method public request(J)V
    .locals 13
    .param p1, "n"    # J

    .prologue
    .local p0, "this":Lrx/internal/operators/bm$c$a;, "Lrx/internal/operators/bm$c<TT;>.a;"
    const-wide/16 v8, 0x0

    .line 218
    cmp-long v1, p1, v8

    if-gez v1, :cond_0

    .line 219
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "n >= 0 required but it was "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 221
    :cond_0
    cmp-long v1, p1, v8

    if-eqz v1, :cond_1

    .line 222
    iget-object v0, p0, Lrx/internal/operators/bm$c$a;->a:Lrx/internal/operators/bm$c;

    .line 223
    .local v0, "parent":Lrx/internal/operators/bm$c;, "Lrx/internal/operators/bm$c<TT;>;"
    invoke-virtual {p0}, Lrx/internal/operators/bm$c$a;->get()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    const/4 v8, 0x1

    invoke-virtual {p0, v1, v8}, Lrx/internal/operators/bm$c$a;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 224
    iget v1, v0, Lrx/internal/operators/bm$c;->b:I

    int-to-long v8, v1

    invoke-static {p1, p2, v8, v9}, Lrx/internal/operators/a;->a(JJ)J

    move-result-wide v2

    .line 225
    .local v2, "u":J
    iget v1, v0, Lrx/internal/operators/bm$c;->c:I

    iget v8, v0, Lrx/internal/operators/bm$c;->b:I

    sub-int/2addr v1, v8

    int-to-long v8, v1

    const-wide/16 v10, 0x1

    sub-long v10, p1, v10

    invoke-static {v8, v9, v10, v11}, Lrx/internal/operators/a;->a(JJ)J

    move-result-wide v4

    .line 226
    .local v4, "v":J
    invoke-static {v2, v3, v4, v5}, Lrx/internal/operators/a;->b(JJ)J

    move-result-wide v6

    .line 227
    .local v6, "w":J
    invoke-static {v0, v6, v7}, Lrx/internal/operators/bm$c;->a(Lrx/internal/operators/bm$c;J)V

    .line 233
    .end local v0    # "parent":Lrx/internal/operators/bm$c;, "Lrx/internal/operators/bm$c<TT;>;"
    .end local v2    # "u":J
    .end local v4    # "v":J
    .end local v6    # "w":J
    :cond_1
    :goto_0
    return-void

    .line 229
    .restart local v0    # "parent":Lrx/internal/operators/bm$c;, "Lrx/internal/operators/bm$c<TT;>;"
    :cond_2
    iget v1, v0, Lrx/internal/operators/bm$c;->c:I

    int-to-long v8, v1

    invoke-static {p1, p2, v8, v9}, Lrx/internal/operators/a;->a(JJ)J

    move-result-wide v2

    .line 230
    .restart local v2    # "u":J
    invoke-static {v0, v2, v3}, Lrx/internal/operators/bm$c;->b(Lrx/internal/operators/bm$c;J)V

    goto :goto_0
.end method
