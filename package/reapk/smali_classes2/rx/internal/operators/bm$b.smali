.class final Lrx/internal/operators/bm$b;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/bm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/bm$b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/l",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final a:Lrx/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/l",
            "<-",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field final b:I

.field final c:I

.field d:J

.field final e:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field final f:Ljava/util/concurrent/atomic/AtomicLong;

.field g:J


# direct methods
.method public constructor <init>(Lrx/l;II)V
    .locals 2
    .param p2, "count"    # I
    .param p3, "skip"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/l",
            "<-",
            "Ljava/util/List",
            "<TT;>;>;II)V"
        }
    .end annotation

    .prologue
    .line 250
    .local p0, "this":Lrx/internal/operators/bm$b;, "Lrx/internal/operators/bm$b<TT;>;"
    .local p1, "actual":Lrx/l;, "Lrx/l<-Ljava/util/List<TT;>;>;"
    invoke-direct {p0}, Lrx/l;-><init>()V

    .line 251
    iput-object p1, p0, Lrx/internal/operators/bm$b;->a:Lrx/l;

    .line 252
    iput p2, p0, Lrx/internal/operators/bm$b;->b:I

    .line 253
    iput p3, p0, Lrx/internal/operators/bm$b;->c:I

    .line 254
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/bm$b;->e:Ljava/util/ArrayDeque;

    .line 255
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/bm$b;->f:Ljava/util/concurrent/atomic/AtomicLong;

    .line 256
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/bm$b;->request(J)V

    .line 257
    return-void
.end method

.method static synthetic a(Lrx/internal/operators/bm$b;J)V
    .locals 1
    .param p0, "x0"    # Lrx/internal/operators/bm$b;
    .param p1, "x1"    # J

    .prologue
    .line 237
    invoke-virtual {p0, p1, p2}, Lrx/internal/operators/bm$b;->request(J)V

    return-void
.end method

.method static synthetic b(Lrx/internal/operators/bm$b;J)V
    .locals 1
    .param p0, "x0"    # Lrx/internal/operators/bm$b;
    .param p1, "x1"    # J

    .prologue
    .line 237
    invoke-virtual {p0, p1, p2}, Lrx/internal/operators/bm$b;->request(J)V

    return-void
.end method


# virtual methods
.method a()Lrx/g;
    .locals 1

    .prologue
    .line 308
    .local p0, "this":Lrx/internal/operators/bm$b;, "Lrx/internal/operators/bm$b<TT;>;"
    new-instance v0, Lrx/internal/operators/bm$b$a;

    invoke-direct {v0, p0}, Lrx/internal/operators/bm$b$a;-><init>(Lrx/internal/operators/bm$b;)V

    return-object v0
.end method

.method public onCompleted()V
    .locals 6

    .prologue
    .line 294
    .local p0, "this":Lrx/internal/operators/bm$b;, "Lrx/internal/operators/bm$b<TT;>;"
    iget-wide v0, p0, Lrx/internal/operators/bm$b;->g:J

    .line 296
    .local v0, "p":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    .line 297
    iget-object v2, p0, Lrx/internal/operators/bm$b;->f:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 298
    iget-object v2, p0, Lrx/internal/operators/bm$b;->a:Lrx/l;

    new-instance v3, Lrx/exceptions/MissingBackpressureException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "More produced than requested? "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lrx/exceptions/MissingBackpressureException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lrx/l;->onError(Ljava/lang/Throwable;)V

    .line 305
    :goto_0
    return-void

    .line 301
    :cond_0
    iget-object v2, p0, Lrx/internal/operators/bm$b;->f:Ljava/util/concurrent/atomic/AtomicLong;

    neg-long v4, v0

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 304
    :cond_1
    iget-object v2, p0, Lrx/internal/operators/bm$b;->f:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v3, p0, Lrx/internal/operators/bm$b;->e:Ljava/util/ArrayDeque;

    iget-object v4, p0, Lrx/internal/operators/bm$b;->a:Lrx/l;

    invoke-static {v2, v3, v4}, Lrx/internal/operators/a;->a(Ljava/util/concurrent/atomic/AtomicLong;Ljava/util/Queue;Lrx/l;)V

    goto :goto_0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 287
    .local p0, "this":Lrx/internal/operators/bm$b;, "Lrx/internal/operators/bm$b<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/bm$b;->e:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 289
    iget-object v0, p0, Lrx/internal/operators/bm$b;->a:Lrx/l;

    invoke-virtual {v0, p1}, Lrx/l;->onError(Ljava/lang/Throwable;)V

    .line 290
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/internal/operators/bm$b;, "Lrx/internal/operators/bm$b<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    const-wide/16 v10, 0x1

    const-wide/16 v8, 0x0

    .line 261
    iget-wide v2, p0, Lrx/internal/operators/bm$b;->d:J

    .line 262
    .local v2, "i":J
    cmp-long v5, v2, v8

    if-nez v5, :cond_0

    .line 263
    new-instance v0, Ljava/util/ArrayList;

    iget v5, p0, Lrx/internal/operators/bm$b;->b:I

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 264
    .local v0, "b":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-object v5, p0, Lrx/internal/operators/bm$b;->e:Ljava/util/ArrayDeque;

    invoke-virtual {v5, v0}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 266
    .end local v0    # "b":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :cond_0
    add-long/2addr v2, v10

    .line 267
    iget v5, p0, Lrx/internal/operators/bm$b;->c:I

    int-to-long v6, v5

    cmp-long v5, v2, v6

    if-nez v5, :cond_1

    .line 268
    iput-wide v8, p0, Lrx/internal/operators/bm$b;->d:J

    .line 273
    :goto_0
    iget-object v5, p0, Lrx/internal/operators/bm$b;->e:Ljava/util/ArrayDeque;

    invoke-virtual {v5}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 274
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 270
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v4    # "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :cond_1
    iput-wide v2, p0, Lrx/internal/operators/bm$b;->d:J

    goto :goto_0

    .line 277
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    iget-object v5, p0, Lrx/internal/operators/bm$b;->e:Ljava/util/ArrayDeque;

    invoke-virtual {v5}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 278
    .restart local v0    # "b":Ljava/util/List;, "Ljava/util/List<TT;>;"
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    iget v6, p0, Lrx/internal/operators/bm$b;->b:I

    if-ne v5, v6, :cond_3

    .line 279
    iget-object v5, p0, Lrx/internal/operators/bm$b;->e:Ljava/util/ArrayDeque;

    invoke-virtual {v5}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    .line 280
    iget-wide v6, p0, Lrx/internal/operators/bm$b;->g:J

    add-long/2addr v6, v10

    iput-wide v6, p0, Lrx/internal/operators/bm$b;->g:J

    .line 281
    iget-object v5, p0, Lrx/internal/operators/bm$b;->a:Lrx/l;

    invoke-virtual {v5, v0}, Lrx/l;->onNext(Ljava/lang/Object;)V

    .line 283
    :cond_3
    return-void
.end method
