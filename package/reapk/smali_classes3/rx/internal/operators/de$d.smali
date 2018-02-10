.class final Lrx/internal/operators/de$d;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/de;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/l",
        "<",
        "Lrx/e",
        "<+TT;>;>;"
    }
.end annotation


# static fields
.field static final m:Ljava/lang/Throwable;


# instance fields
.field final a:Lrx/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/l",
            "<-TT;>;"
        }
    .end annotation
.end field

.field final b:Lrx/i/e;

.field final c:Z

.field final d:Ljava/util/concurrent/atomic/AtomicLong;

.field final e:Lrx/internal/util/atomic/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/util/atomic/e",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field f:Z

.field g:Z

.field h:J

.field i:Lrx/g;

.field volatile j:Z

.field k:Ljava/lang/Throwable;

.field l:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 98
    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "Terminal error"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    sput-object v0, Lrx/internal/operators/de$d;->m:Ljava/lang/Throwable;

    return-void
.end method

.method constructor <init>(Lrx/l;Z)V
    .locals 2
    .param p2, "delayError"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/l",
            "<-TT;>;Z)V"
        }
    .end annotation

    .prologue
    .line 100
    .local p0, "this":Lrx/internal/operators/de$d;, "Lrx/internal/operators/de$d<TT;>;"
    .local p1, "child":Lrx/l;, "Lrx/l<-TT;>;"
    invoke-direct {p0}, Lrx/l;-><init>()V

    .line 101
    iput-object p1, p0, Lrx/internal/operators/de$d;->a:Lrx/l;

    .line 102
    new-instance v0, Lrx/i/e;

    invoke-direct {v0}, Lrx/i/e;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/de$d;->b:Lrx/i/e;

    .line 103
    iput-boolean p2, p0, Lrx/internal/operators/de$d;->c:Z

    .line 104
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/de$d;->d:Ljava/util/concurrent/atomic/AtomicLong;

    .line 105
    new-instance v0, Lrx/internal/util/atomic/e;

    sget v1, Lrx/internal/util/j;->b:I

    invoke-direct {v0, v1}, Lrx/internal/util/atomic/e;-><init>(I)V

    iput-object v0, p0, Lrx/internal/operators/de$d;->e:Lrx/internal/util/atomic/e;

    .line 106
    return-void
.end method


# virtual methods
.method a()V
    .locals 2

    .prologue
    .line 109
    .local p0, "this":Lrx/internal/operators/de$d;, "Lrx/internal/operators/de$d<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/de$d;->a:Lrx/l;

    iget-object v1, p0, Lrx/internal/operators/de$d;->b:Lrx/i/e;

    invoke-virtual {v0, v1}, Lrx/l;->add(Lrx/m;)V

    .line 110
    iget-object v0, p0, Lrx/internal/operators/de$d;->a:Lrx/l;

    new-instance v1, Lrx/internal/operators/de$d$1;

    invoke-direct {v1, p0}, Lrx/internal/operators/de$d$1;-><init>(Lrx/internal/operators/de$d;)V

    invoke-static {v1}, Lrx/i/f;->a(Lrx/c/b;)Lrx/m;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/l;->add(Lrx/m;)V

    .line 116
    iget-object v0, p0, Lrx/internal/operators/de$d;->a:Lrx/l;

    new-instance v1, Lrx/internal/operators/de$d$2;

    invoke-direct {v1, p0}, Lrx/internal/operators/de$d$2;-><init>(Lrx/internal/operators/de$d;)V

    invoke-virtual {v0, v1}, Lrx/l;->setProducer(Lrx/g;)V

    .line 128
    return-void
.end method

.method a(J)V
    .locals 3
    .param p1, "id"    # J

    .prologue
    .line 227
    .local p0, "this":Lrx/internal/operators/de$d;, "Lrx/internal/operators/de$d<TT;>;"
    monitor-enter p0

    .line 228
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/de$d;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-eqz v0, :cond_0

    .line 229
    monitor-exit p0

    .line 235
    :goto_0
    return-void

    .line 231
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lrx/internal/operators/de$d;->l:Z

    .line 232
    const/4 v0, 0x0

    iput-object v0, p0, Lrx/internal/operators/de$d;->i:Lrx/g;

    .line 233
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    invoke-virtual {p0}, Lrx/internal/operators/de$d;->c()V

    goto :goto_0

    .line 233
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method a(Ljava/lang/Object;Lrx/internal/operators/de$c;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lrx/internal/operators/de$c",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 198
    .local p0, "this":Lrx/internal/operators/de$d;, "Lrx/internal/operators/de$d<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    .local p2, "inner":Lrx/internal/operators/de$c;, "Lrx/internal/operators/de$c<TT;>;"
    monitor-enter p0

    .line 199
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/de$d;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    invoke-static {p2}, Lrx/internal/operators/de$c;->a(Lrx/internal/operators/de$c;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 200
    monitor-exit p0

    .line 206
    :goto_0
    return-void

    .line 203
    :cond_0
    iget-object v0, p0, Lrx/internal/operators/de$d;->e:Lrx/internal/util/atomic/e;

    invoke-static {p1}, Lrx/internal/operators/v;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lrx/internal/util/atomic/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 204
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    invoke-virtual {p0}, Lrx/internal/operators/de$d;->c()V

    goto :goto_0

    .line 204
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method a(Ljava/lang/Throwable;J)V
    .locals 4
    .param p1, "e"    # Ljava/lang/Throwable;
    .param p2, "id"    # J

    .prologue
    .line 210
    .local p0, "this":Lrx/internal/operators/de$d;, "Lrx/internal/operators/de$d<TT;>;"
    monitor-enter p0

    .line 211
    :try_start_0
    iget-object v1, p0, Lrx/internal/operators/de$d;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    cmp-long v1, v2, p2

    if-nez v1, :cond_0

    .line 212
    invoke-virtual {p0, p1}, Lrx/internal/operators/de$d;->a(Ljava/lang/Throwable;)Z

    move-result v0

    .line 213
    .local v0, "success":Z
    const/4 v1, 0x0

    iput-boolean v1, p0, Lrx/internal/operators/de$d;->l:Z

    .line 214
    const/4 v1, 0x0

    iput-object v1, p0, Lrx/internal/operators/de$d;->i:Lrx/g;

    .line 218
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 219
    if-eqz v0, :cond_1

    .line 220
    invoke-virtual {p0}, Lrx/internal/operators/de$d;->c()V

    .line 224
    :goto_1
    return-void

    .line 216
    .end local v0    # "success":Z
    :cond_0
    const/4 v0, 0x1

    .restart local v0    # "success":Z
    goto :goto_0

    .line 218
    .end local v0    # "success":Z
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 222
    .restart local v0    # "success":Z
    :cond_1
    invoke-virtual {p0, p1}, Lrx/internal/operators/de$d;->b(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public a(Lrx/e;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/e",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 138
    .local p0, "this":Lrx/internal/operators/de$d;, "Lrx/internal/operators/de$d<TT;>;"
    .local p1, "t":Lrx/e;, "Lrx/e<+TT;>;"
    iget-object v4, p0, Lrx/internal/operators/de$d;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    .line 140
    .local v0, "id":J
    iget-object v4, p0, Lrx/internal/operators/de$d;->b:Lrx/i/e;

    invoke-virtual {v4}, Lrx/i/e;->a()Lrx/m;

    move-result-object v3

    .line 141
    .local v3, "s":Lrx/m;
    if-eqz v3, :cond_0

    .line 142
    invoke-interface {v3}, Lrx/m;->unsubscribe()V

    .line 147
    :cond_0
    monitor-enter p0

    .line 148
    :try_start_0
    new-instance v2, Lrx/internal/operators/de$c;

    invoke-direct {v2, v0, v1, p0}, Lrx/internal/operators/de$c;-><init>(JLrx/internal/operators/de$d;)V

    .line 150
    .local v2, "inner":Lrx/internal/operators/de$c;, "Lrx/internal/operators/de$c<TT;>;"
    const/4 v4, 0x1

    iput-boolean v4, p0, Lrx/internal/operators/de$d;->l:Z

    .line 151
    const/4 v4, 0x0

    iput-object v4, p0, Lrx/internal/operators/de$d;->i:Lrx/g;

    .line 152
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    iget-object v4, p0, Lrx/internal/operators/de$d;->b:Lrx/i/e;

    invoke-virtual {v4, v2}, Lrx/i/e;->a(Lrx/m;)V

    .line 155
    invoke-virtual {p1, v2}, Lrx/e;->a(Lrx/l;)Lrx/m;

    .line 156
    return-void

    .line 152
    .end local v2    # "inner":Lrx/internal/operators/de$c;, "Lrx/internal/operators/de$c<TT;>;"
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method a(Lrx/g;J)V
    .locals 4
    .param p1, "p"    # Lrx/g;
    .param p2, "id"    # J

    .prologue
    .line 243
    .local p0, "this":Lrx/internal/operators/de$d;, "Lrx/internal/operators/de$d<TT;>;"
    monitor-enter p0

    .line 244
    :try_start_0
    iget-object v2, p0, Lrx/internal/operators/de$d;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    cmp-long v2, v2, p2

    if-eqz v2, :cond_0

    .line 245
    monitor-exit p0

    .line 252
    :goto_0
    return-void

    .line 247
    :cond_0
    iget-wide v0, p0, Lrx/internal/operators/de$d;->h:J

    .line 248
    .local v0, "n":J
    iput-object p1, p0, Lrx/internal/operators/de$d;->i:Lrx/g;

    .line 249
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    invoke-interface {p1, v0, v1}, Lrx/g;->request(J)V

    goto :goto_0

    .line 249
    .end local v0    # "n":J
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method a(Ljava/lang/Throwable;)Z
    .locals 6
    .param p1, "next"    # Ljava/lang/Throwable;

    .prologue
    .local p0, "this":Lrx/internal/operators/de$d;, "Lrx/internal/operators/de$d<TT;>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 174
    iget-object v0, p0, Lrx/internal/operators/de$d;->k:Ljava/lang/Throwable;

    .line 175
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v4, Lrx/internal/operators/de$d;->m:Ljava/lang/Throwable;

    if-ne v0, v4, :cond_0

    .line 188
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
    return v2

    .line 178
    .restart local v0    # "e":Ljava/lang/Throwable;
    :cond_0
    if-nez v0, :cond_1

    .line 179
    iput-object p1, p0, Lrx/internal/operators/de$d;->k:Ljava/lang/Throwable;

    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_1
    move v2, v3

    .line 188
    goto :goto_0

    .line 181
    .restart local v0    # "e":Ljava/lang/Throwable;
    :cond_1
    instance-of v4, v0, Lrx/exceptions/CompositeException;

    if-eqz v4, :cond_2

    .line 182
    new-instance v1, Ljava/util/ArrayList;

    check-cast v0, Lrx/exceptions/CompositeException;

    .end local v0    # "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Lrx/exceptions/CompositeException;->getExceptions()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 183
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    new-instance v2, Lrx/exceptions/CompositeException;

    invoke-direct {v2, v1}, Lrx/exceptions/CompositeException;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Lrx/internal/operators/de$d;->k:Ljava/lang/Throwable;

    goto :goto_1

    .line 186
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    .restart local v0    # "e":Ljava/lang/Throwable;
    :cond_2
    new-instance v4, Lrx/exceptions/CompositeException;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Throwable;

    aput-object v0, v5, v2

    aput-object p1, v5, v3

    invoke-direct {v4, v5}, Lrx/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    iput-object v4, p0, Lrx/internal/operators/de$d;->k:Ljava/lang/Throwable;

    goto :goto_1
.end method

.method protected a(ZZLjava/lang/Throwable;Lrx/internal/util/atomic/e;Lrx/l;Z)Z
    .locals 2
    .param p1, "localMainDone"    # Z
    .param p2, "localInnerActive"    # Z
    .param p3, "localError"    # Ljava/lang/Throwable;
    .param p6, "empty"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Ljava/lang/Throwable;",
            "Lrx/internal/util/atomic/e",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lrx/l",
            "<-TT;>;Z)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/internal/operators/de$d;, "Lrx/internal/operators/de$d<TT;>;"
    .local p4, "localQueue":Lrx/internal/util/atomic/e;, "Lrx/internal/util/atomic/e<Ljava/lang/Object;>;"
    .local p5, "localChild":Lrx/l;, "Lrx/l<-TT;>;"
    const/4 v0, 0x1

    .line 357
    iget-boolean v1, p0, Lrx/internal/operators/de$d;->c:Z

    if-eqz v1, :cond_1

    .line 358
    if-eqz p1, :cond_3

    if-nez p2, :cond_3

    if-eqz p6, :cond_3

    .line 359
    if-eqz p3, :cond_0

    .line 360
    invoke-virtual {p5, p3}, Lrx/l;->onError(Ljava/lang/Throwable;)V

    .line 377
    :goto_0
    return v0

    .line 362
    :cond_0
    invoke-virtual {p5}, Lrx/l;->onCompleted()V

    goto :goto_0

    .line 367
    :cond_1
    if-eqz p3, :cond_2

    .line 368
    invoke-virtual {p4}, Lrx/internal/util/atomic/e;->clear()V

    .line 369
    invoke-virtual {p5, p3}, Lrx/l;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 372
    :cond_2
    if-eqz p1, :cond_3

    if-nez p2, :cond_3

    if-eqz p6, :cond_3

    .line 373
    invoke-virtual {p5}, Lrx/l;->onCompleted()V

    goto :goto_0

    .line 377
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method b()V
    .locals 1

    .prologue
    .line 131
    .local p0, "this":Lrx/internal/operators/de$d;, "Lrx/internal/operators/de$d<TT;>;"
    monitor-enter p0

    .line 132
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lrx/internal/operators/de$d;->i:Lrx/g;

    .line 133
    monitor-exit p0

    .line 134
    return-void

    .line 133
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method b(J)V
    .locals 5
    .param p1, "n"    # J

    .prologue
    .line 256
    .local p0, "this":Lrx/internal/operators/de$d;, "Lrx/internal/operators/de$d<TT;>;"
    monitor-enter p0

    .line 257
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/de$d;->i:Lrx/g;

    .line 258
    .local v0, "p":Lrx/g;
    iget-wide v2, p0, Lrx/internal/operators/de$d;->h:J

    invoke-static {v2, v3, p1, p2}, Lrx/internal/operators/a;->b(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lrx/internal/operators/de$d;->h:J

    .line 259
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 260
    if-eqz v0, :cond_0

    .line 261
    invoke-interface {v0, p1, p2}, Lrx/g;->request(J)V

    .line 263
    :cond_0
    invoke-virtual {p0}, Lrx/internal/operators/de$d;->c()V

    .line 264
    return-void

    .line 259
    .end local v0    # "p":Lrx/g;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method b(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 238
    .local p0, "this":Lrx/internal/operators/de$d;, "Lrx/internal/operators/de$d<TT;>;"
    invoke-static {p1}, Lrx/f/c;->a(Ljava/lang/Throwable;)V

    .line 239
    return-void
.end method

.method c()V
    .locals 25

    .prologue
    .line 270
    .local p0, "this":Lrx/internal/operators/de$d;, "Lrx/internal/operators/de$d<TT;>;"
    monitor-enter p0

    .line 271
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lrx/internal/operators/de$d;->f:Z

    if-eqz v4, :cond_1

    .line 272
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lrx/internal/operators/de$d;->g:Z

    .line 273
    monitor-exit p0

    .line 341
    :cond_0
    :goto_0
    return-void

    .line 275
    :cond_1
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lrx/internal/operators/de$d;->f:Z

    .line 276
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lrx/internal/operators/de$d;->l:Z

    .line 277
    .local v6, "localInnerActive":Z
    move-object/from16 v0, p0

    iget-wide v0, v0, Lrx/internal/operators/de$d;->h:J

    move-wide/from16 v22, v0

    .line 278
    .local v22, "localRequested":J
    move-object/from16 v0, p0

    iget-object v7, v0, Lrx/internal/operators/de$d;->k:Ljava/lang/Throwable;

    .line 279
    .local v7, "localError":Ljava/lang/Throwable;
    if-eqz v7, :cond_2

    sget-object v4, Lrx/internal/operators/de$d;->m:Ljava/lang/Throwable;

    if-eq v7, v4, :cond_2

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lrx/internal/operators/de$d;->c:Z

    if-nez v4, :cond_2

    .line 280
    sget-object v4, Lrx/internal/operators/de$d;->m:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    iput-object v4, v0, Lrx/internal/operators/de$d;->k:Ljava/lang/Throwable;

    .line 282
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 284
    move-object/from16 v0, p0

    iget-object v8, v0, Lrx/internal/operators/de$d;->e:Lrx/internal/util/atomic/e;

    .line 285
    .local v8, "localQueue":Lrx/internal/util/atomic/e;, "Lrx/internal/util/atomic/e<Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lrx/internal/operators/de$d;->d:Ljava/util/concurrent/atomic/AtomicLong;

    move-object/from16 v19, v0

    .line 286
    .local v19, "localIndex":Ljava/util/concurrent/atomic/AtomicLong;
    move-object/from16 v0, p0

    iget-object v9, v0, Lrx/internal/operators/de$d;->a:Lrx/l;

    .line 287
    .local v9, "localChild":Lrx/l;, "Lrx/l<-TT;>;"
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lrx/internal/operators/de$d;->j:Z

    .line 291
    .local v5, "localMainDone":Z
    :goto_1
    const-wide/16 v20, 0x0

    .line 293
    .local v20, "localEmission":J
    :cond_3
    :goto_2
    cmp-long v4, v20, v22

    if-eqz v4, :cond_4

    .line 294
    invoke-virtual {v9}, Lrx/l;->isUnsubscribed()Z

    move-result v4

    if-nez v4, :cond_0

    .line 298
    invoke-virtual {v8}, Lrx/internal/util/atomic/e;->isEmpty()Z

    move-result v10

    .local v10, "empty":Z
    move-object/from16 v4, p0

    .line 300
    invoke-virtual/range {v4 .. v10}, Lrx/internal/operators/de$d;->a(ZZLjava/lang/Throwable;Lrx/internal/util/atomic/e;Lrx/l;Z)Z

    move-result v4

    if-nez v4, :cond_0

    .line 305
    if-eqz v10, :cond_7

    .line 319
    .end local v10    # "empty":Z
    :cond_4
    cmp-long v4, v20, v22

    if-nez v4, :cond_5

    .line 320
    invoke-virtual {v9}, Lrx/l;->isUnsubscribed()Z

    move-result v4

    if-nez v4, :cond_0

    .line 324
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lrx/internal/operators/de$d;->j:Z

    invoke-virtual {v8}, Lrx/internal/util/atomic/e;->isEmpty()Z

    move-result v17

    move-object/from16 v11, p0

    move v13, v6

    move-object v14, v7

    move-object v15, v8

    move-object/from16 v16, v9

    invoke-virtual/range {v11 .. v17}, Lrx/internal/operators/de$d;->a(ZZLjava/lang/Throwable;Lrx/internal/util/atomic/e;Lrx/l;Z)Z

    move-result v4

    if-nez v4, :cond_0

    .line 331
    :cond_5
    monitor-enter p0

    .line 333
    :try_start_1
    move-object/from16 v0, p0

    iget-wide v0, v0, Lrx/internal/operators/de$d;->h:J

    move-wide/from16 v22, v0

    .line 334
    const-wide v12, 0x7fffffffffffffffL

    cmp-long v4, v22, v12

    if-eqz v4, :cond_6

    .line 335
    sub-long v22, v22, v20

    .line 336
    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lrx/internal/operators/de$d;->h:J

    .line 339
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lrx/internal/operators/de$d;->g:Z

    if-nez v4, :cond_8

    .line 340
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lrx/internal/operators/de$d;->f:Z

    .line 341
    monitor-exit p0

    goto/16 :goto_0

    .line 351
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 282
    .end local v5    # "localMainDone":Z
    .end local v6    # "localInnerActive":Z
    .end local v7    # "localError":Ljava/lang/Throwable;
    .end local v8    # "localQueue":Lrx/internal/util/atomic/e;, "Lrx/internal/util/atomic/e<Ljava/lang/Object;>;"
    .end local v9    # "localChild":Lrx/l;, "Lrx/l<-TT;>;"
    .end local v19    # "localIndex":Ljava/util/concurrent/atomic/AtomicLong;
    .end local v20    # "localEmission":J
    .end local v22    # "localRequested":J
    :catchall_1
    move-exception v4

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v4

    .line 310
    .restart local v5    # "localMainDone":Z
    .restart local v6    # "localInnerActive":Z
    .restart local v7    # "localError":Ljava/lang/Throwable;
    .restart local v8    # "localQueue":Lrx/internal/util/atomic/e;, "Lrx/internal/util/atomic/e<Ljava/lang/Object;>;"
    .restart local v9    # "localChild":Lrx/l;, "Lrx/l<-TT;>;"
    .restart local v10    # "empty":Z
    .restart local v19    # "localIndex":Ljava/util/concurrent/atomic/AtomicLong;
    .restart local v20    # "localEmission":J
    .restart local v22    # "localRequested":J
    :cond_7
    invoke-virtual {v8}, Lrx/internal/util/atomic/e;->poll()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lrx/internal/operators/de$c;

    .line 311
    .local v18, "inner":Lrx/internal/operators/de$c;, "Lrx/internal/operators/de$c<TT;>;"
    invoke-virtual {v8}, Lrx/internal/util/atomic/e;->poll()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lrx/internal/operators/v;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    .line 313
    .local v24, "value":Ljava/lang/Object;, "TT;"
    invoke-virtual/range {v19 .. v19}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v12

    invoke-static/range {v18 .. v18}, Lrx/internal/operators/de$c;->a(Lrx/internal/operators/de$c;)J

    move-result-wide v14

    cmp-long v4, v12, v14

    if-nez v4, :cond_3

    .line 314
    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Lrx/l;->onNext(Ljava/lang/Object;)V

    .line 315
    const-wide/16 v12, 0x1

    add-long v20, v20, v12

    goto/16 :goto_2

    .line 343
    .end local v10    # "empty":Z
    .end local v18    # "inner":Lrx/internal/operators/de$c;, "Lrx/internal/operators/de$c<TT;>;"
    .end local v24    # "value":Ljava/lang/Object;, "TT;"
    :cond_8
    const/4 v4, 0x0

    :try_start_3
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lrx/internal/operators/de$d;->g:Z

    .line 345
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lrx/internal/operators/de$d;->j:Z

    .line 346
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lrx/internal/operators/de$d;->l:Z

    .line 347
    move-object/from16 v0, p0

    iget-object v7, v0, Lrx/internal/operators/de$d;->k:Ljava/lang/Throwable;

    .line 348
    if-eqz v7, :cond_9

    sget-object v4, Lrx/internal/operators/de$d;->m:Ljava/lang/Throwable;

    if-eq v7, v4, :cond_9

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lrx/internal/operators/de$d;->c:Z

    if-nez v4, :cond_9

    .line 349
    sget-object v4, Lrx/internal/operators/de$d;->m:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    iput-object v4, v0, Lrx/internal/operators/de$d;->k:Ljava/lang/Throwable;

    .line 351
    :cond_9
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1
.end method

.method public onCompleted()V
    .locals 1

    .prologue
    .line 193
    .local p0, "this":Lrx/internal/operators/de$d;, "Lrx/internal/operators/de$d<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/de$d;->j:Z

    .line 194
    invoke-virtual {p0}, Lrx/internal/operators/de$d;->c()V

    .line 195
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 162
    .local p0, "this":Lrx/internal/operators/de$d;, "Lrx/internal/operators/de$d<TT;>;"
    monitor-enter p0

    .line 163
    :try_start_0
    invoke-virtual {p0, p1}, Lrx/internal/operators/de$d;->a(Ljava/lang/Throwable;)Z

    move-result v0

    .line 164
    .local v0, "success":Z
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    if-eqz v0, :cond_0

    .line 166
    const/4 v1, 0x1

    iput-boolean v1, p0, Lrx/internal/operators/de$d;->j:Z

    .line 167
    invoke-virtual {p0}, Lrx/internal/operators/de$d;->c()V

    .line 171
    :goto_0
    return-void

    .line 164
    .end local v0    # "success":Z
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 169
    .restart local v0    # "success":Z
    :cond_0
    invoke-virtual {p0, p1}, Lrx/internal/operators/de$d;->b(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 77
    .local p0, "this":Lrx/internal/operators/de$d;, "Lrx/internal/operators/de$d<TT;>;"
    check-cast p1, Lrx/e;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/de$d;->a(Lrx/e;)V

    return-void
.end method
