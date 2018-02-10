.class final Lrx/internal/operators/cl$a;
.super Lrx/l;
.source "SourceFile"

# interfaces
.implements Lrx/internal/util/BackpressureDrainManager$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/cl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/l",
        "<TT;>;",
        "Lrx/internal/util/BackpressureDrainManager$a;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/concurrent/atomic/AtomicLong;

.field private final c:Lrx/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/l",
            "<-TT;>;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final e:Lrx/internal/util/BackpressureDrainManager;

.field private final f:Lrx/c/b;

.field private final g:Lrx/a$d;


# direct methods
.method public constructor <init>(Lrx/l;Ljava/lang/Long;Lrx/c/b;Lrx/a$d;)V
    .locals 4
    .param p2, "capacity"    # Ljava/lang/Long;
    .param p3, "onOverflow"    # Lrx/c/b;
    .param p4, "overflowStrategy"    # Lrx/a$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/l",
            "<-TT;>;",
            "Ljava/lang/Long;",
            "Lrx/c/b;",
            "Lrx/a$d;",
            ")V"
        }
    .end annotation

    .prologue
    .line 118
    .local p0, "this":Lrx/internal/operators/cl$a;, "Lrx/internal/operators/cl$a<TT;>;"
    .local p1, "child":Lrx/l;, "Lrx/l<-TT;>;"
    invoke-direct {p0}, Lrx/l;-><init>()V

    .line 109
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/cl$a;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 112
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lrx/internal/operators/cl$a;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 119
    iput-object p1, p0, Lrx/internal/operators/cl$a;->c:Lrx/l;

    .line 120
    if-eqz p2, :cond_0

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    :goto_0
    iput-object v0, p0, Lrx/internal/operators/cl$a;->b:Ljava/util/concurrent/atomic/AtomicLong;

    .line 121
    iput-object p3, p0, Lrx/internal/operators/cl$a;->f:Lrx/c/b;

    .line 122
    new-instance v0, Lrx/internal/util/BackpressureDrainManager;

    invoke-direct {v0, p0}, Lrx/internal/util/BackpressureDrainManager;-><init>(Lrx/internal/util/BackpressureDrainManager$a;)V

    iput-object v0, p0, Lrx/internal/operators/cl$a;->e:Lrx/internal/util/BackpressureDrainManager;

    .line 123
    iput-object p4, p0, Lrx/internal/operators/cl$a;->g:Lrx/a$d;

    .line 124
    return-void

    .line 120
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d()Z
    .locals 10

    .prologue
    .local p0, "this":Lrx/internal/operators/cl$a;, "Lrx/internal/operators/cl$a<TT;>;"
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 180
    iget-object v6, p0, Lrx/internal/operators/cl$a;->b:Ljava/util/concurrent/atomic/AtomicLong;

    if-nez v6, :cond_0

    .line 215
    :goto_0
    return v4

    .line 186
    :cond_0
    iget-object v6, p0, Lrx/internal/operators/cl$a;->b:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 187
    .local v0, "currCapacity":J
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-gtz v6, :cond_4

    .line 188
    const/4 v3, 0x0

    .line 191
    .local v3, "hasCapacity":Z
    :try_start_0
    iget-object v6, p0, Lrx/internal/operators/cl$a;->g:Lrx/a$d;

    invoke-interface {v6}, Lrx/a$d;->a()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {p0}, Lrx/internal/operators/cl$a;->b()Ljava/lang/Object;
    :try_end_0
    .catch Lrx/exceptions/MissingBackpressureException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    if-eqz v6, :cond_3

    move v3, v4

    .line 198
    :cond_1
    :goto_1
    iget-object v6, p0, Lrx/internal/operators/cl$a;->f:Lrx/c/b;

    if-eqz v6, :cond_2

    .line 200
    :try_start_1
    iget-object v6, p0, Lrx/internal/operators/cl$a;->f:Lrx/c/b;

    invoke-interface {v6}, Lrx/c/b;->call()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 209
    :cond_2
    if-nez v3, :cond_4

    move v4, v5

    .line 210
    goto :goto_0

    :cond_3
    move v3, v5

    .line 191
    goto :goto_1

    .line 192
    :catch_0
    move-exception v2

    .line 193
    .local v2, "e":Lrx/exceptions/MissingBackpressureException;
    iget-object v6, p0, Lrx/internal/operators/cl$a;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v6, v5, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 194
    invoke-virtual {p0}, Lrx/internal/operators/cl$a;->unsubscribe()V

    .line 195
    iget-object v6, p0, Lrx/internal/operators/cl$a;->c:Lrx/l;

    invoke-virtual {v6, v2}, Lrx/l;->onError(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 201
    .end local v2    # "e":Lrx/exceptions/MissingBackpressureException;
    :catch_1
    move-exception v2

    .line 202
    .local v2, "e":Ljava/lang/Throwable;
    invoke-static {v2}, Lrx/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 203
    iget-object v4, p0, Lrx/internal/operators/cl$a;->e:Lrx/internal/util/BackpressureDrainManager;

    invoke-virtual {v4, v2}, Lrx/internal/util/BackpressureDrainManager;->terminateAndDrain(Ljava/lang/Throwable;)V

    move v4, v5

    .line 206
    goto :goto_0

    .line 214
    .end local v2    # "e":Ljava/lang/Throwable;
    .end local v3    # "hasCapacity":Z
    :cond_4
    iget-object v6, p0, Lrx/internal/operators/cl$a;->b:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v8, 0x1

    sub-long v8, v0, v8

    invoke-virtual {v6, v0, v1, v8, v9}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 168
    .local p0, "this":Lrx/internal/operators/cl$a;, "Lrx/internal/operators/cl$a<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/cl$a;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "exception"    # Ljava/lang/Throwable;

    .prologue
    .line 160
    .local p0, "this":Lrx/internal/operators/cl$a;, "Lrx/internal/operators/cl$a<TT;>;"
    if-eqz p1, :cond_0

    .line 161
    iget-object v0, p0, Lrx/internal/operators/cl$a;->c:Lrx/l;

    invoke-virtual {v0, p1}, Lrx/l;->onError(Ljava/lang/Throwable;)V

    .line 165
    :goto_0
    return-void

    .line 163
    :cond_0
    iget-object v0, p0, Lrx/internal/operators/cl$a;->c:Lrx/l;

    invoke-virtual {v0}, Lrx/l;->onCompleted()V

    goto :goto_0
.end method

.method public a(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 156
    .local p0, "this":Lrx/internal/operators/cl$a;, "Lrx/internal/operators/cl$a<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/cl$a;->c:Lrx/l;

    invoke-static {v0, p1}, Lrx/internal/operators/v;->a(Lrx/f;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public b()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 172
    .local p0, "this":Lrx/internal/operators/cl$a;, "Lrx/internal/operators/cl$a<TT;>;"
    iget-object v1, p0, Lrx/internal/operators/cl$a;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    .line 173
    .local v0, "value":Ljava/lang/Object;
    iget-object v1, p0, Lrx/internal/operators/cl$a;->b:Ljava/util/concurrent/atomic/AtomicLong;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 174
    iget-object v1, p0, Lrx/internal/operators/cl$a;->b:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 176
    :cond_0
    return-object v0
.end method

.method protected c()Lrx/g;
    .locals 1

    .prologue
    .line 218
    .local p0, "this":Lrx/internal/operators/cl$a;, "Lrx/internal/operators/cl$a<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/cl$a;->e:Lrx/internal/util/BackpressureDrainManager;

    return-object v0
.end method

.method public onCompleted()V
    .locals 1

    .prologue
    .line 133
    .local p0, "this":Lrx/internal/operators/cl$a;, "Lrx/internal/operators/cl$a<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/cl$a;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 134
    iget-object v0, p0, Lrx/internal/operators/cl$a;->e:Lrx/internal/util/BackpressureDrainManager;

    invoke-virtual {v0}, Lrx/internal/util/BackpressureDrainManager;->terminateAndDrain()V

    .line 136
    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 140
    .local p0, "this":Lrx/internal/operators/cl$a;, "Lrx/internal/operators/cl$a<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/cl$a;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 141
    iget-object v0, p0, Lrx/internal/operators/cl$a;->e:Lrx/internal/util/BackpressureDrainManager;

    invoke-virtual {v0, p1}, Lrx/internal/util/BackpressureDrainManager;->terminateAndDrain(Ljava/lang/Throwable;)V

    .line 143
    :cond_0
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 147
    .local p0, "this":Lrx/internal/operators/cl$a;, "Lrx/internal/operators/cl$a<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Lrx/internal/operators/cl$a;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    :goto_0
    return-void

    .line 150
    :cond_0
    iget-object v0, p0, Lrx/internal/operators/cl$a;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-static {p1}, Lrx/internal/operators/v;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    .line 151
    iget-object v0, p0, Lrx/internal/operators/cl$a;->e:Lrx/internal/util/BackpressureDrainManager;

    invoke-virtual {v0}, Lrx/internal/util/BackpressureDrainManager;->drain()V

    goto :goto_0
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 128
    .local p0, "this":Lrx/internal/operators/cl$a;, "Lrx/internal/operators/cl$a<TT;>;"
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/cl$a;->request(J)V

    .line 129
    return-void
.end method
