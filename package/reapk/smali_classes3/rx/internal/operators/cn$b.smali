.class final Lrx/internal/operators/cn$b;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "SourceFile"

# interfaces
.implements Lrx/f;
.implements Lrx/g;
.implements Lrx/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/cn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicLong;",
        "Lrx/f",
        "<TT;>;",
        "Lrx/g;",
        "Lrx/m;"
    }
.end annotation


# static fields
.field static final h:Ljava/lang/Object;

.field static final i:J = -0x4000000000000000L

.field private static final serialVersionUID:J = -0x12ef4cd3e08498a2L


# instance fields
.field final a:Lrx/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/l",
            "<-TT;>;"
        }
    .end annotation
.end field

.field b:Lrx/internal/operators/cn$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/cn$c",
            "<-TT;>;"
        }
    .end annotation
.end field

.field final c:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field d:Ljava/lang/Throwable;

.field volatile e:Z

.field f:Z

.field g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lrx/internal/operators/cn$b;->h:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lrx/l;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/l",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 73
    .local p0, "this":Lrx/internal/operators/cn$b;, "Lrx/internal/operators/cn$b<TT;>;"
    .local p1, "child":Lrx/l;, "Lrx/l<-TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 74
    iput-object p1, p0, Lrx/internal/operators/cn$b;->a:Lrx/l;

    .line 75
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lrx/internal/operators/cn$b;->h:Ljava/lang/Object;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lrx/internal/operators/cn$b;->c:Ljava/util/concurrent/atomic/AtomicReference;

    .line 76
    const-wide/high16 v0, -0x4000000000000000L    # -2.0

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/cn$b;->lazySet(J)V

    .line 77
    return-void
.end method


# virtual methods
.method a(J)J
    .locals 7
    .param p1, "n"    # J

    .prologue
    .line 107
    .local p0, "this":Lrx/internal/operators/cn$b;, "Lrx/internal/operators/cn$b<TT;>;"
    :cond_0
    invoke-virtual {p0}, Lrx/internal/operators/cn$b;->get()J

    move-result-wide v0

    .line 108
    .local v0, "r":J
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-gez v4, :cond_1

    .line 113
    .end local v0    # "r":J
    :goto_0
    return-wide v0

    .line 111
    .restart local v0    # "r":J
    :cond_1
    sub-long v2, v0, p1

    .line 112
    .local v2, "u":J
    invoke-virtual {p0, v0, v1, v2, v3}, Lrx/internal/operators/cn$b;->compareAndSet(JJ)Z

    move-result v4

    if-eqz v4, :cond_0

    move-wide v0, v2

    .line 113
    goto :goto_0
.end method

.method a()V
    .locals 8

    .prologue
    .line 145
    .local p0, "this":Lrx/internal/operators/cn$b;, "Lrx/internal/operators/cn$b<TT;>;"
    monitor-enter p0

    .line 146
    :try_start_0
    iget-boolean v6, p0, Lrx/internal/operators/cn$b;->f:Z

    if-eqz v6, :cond_1

    .line 147
    const/4 v6, 0x1

    iput-boolean v6, p0, Lrx/internal/operators/cn$b;->g:Z

    .line 148
    monitor-exit p0

    .line 194
    :cond_0
    :goto_0
    return-void

    .line 150
    :cond_1
    const/4 v6, 0x1

    iput-boolean v6, p0, Lrx/internal/operators/cn$b;->f:Z

    .line 151
    const/4 v6, 0x0

    iput-boolean v6, p0, Lrx/internal/operators/cn$b;->g:Z

    .line 152
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 153
    const/4 v1, 0x0

    .line 156
    .local v1, "skipFinal":Z
    :goto_1
    :try_start_1
    invoke-virtual {p0}, Lrx/internal/operators/cn$b;->get()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    move-result-wide v2

    .line 157
    .local v2, "r":J
    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v6, v2, v6

    if-nez v6, :cond_2

    .line 158
    const/4 v1, 0x1

    .line 188
    :goto_2
    if-nez v1, :cond_0

    .line 189
    monitor-enter p0

    .line 190
    const/4 v6, 0x0

    :try_start_2
    iput-boolean v6, p0, Lrx/internal/operators/cn$b;->f:Z

    .line 191
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .line 152
    .end local v1    # "skipFinal":Z
    .end local v2    # "r":J
    :catchall_1
    move-exception v6

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v6

    .line 161
    .restart local v1    # "skipFinal":Z
    .restart local v2    # "r":J
    :cond_2
    :try_start_4
    iget-object v6, p0, Lrx/internal/operators/cn$b;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    .line 162
    .local v4, "v":Ljava/lang/Object;
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-lez v6, :cond_3

    sget-object v6, Lrx/internal/operators/cn$b;->h:Ljava/lang/Object;

    if-eq v4, v6, :cond_3

    .line 164
    move-object v5, v4

    .line 165
    .local v5, "v2":Ljava/lang/Object;, "TT;"
    iget-object v6, p0, Lrx/internal/operators/cn$b;->a:Lrx/l;

    invoke-virtual {v6, v5}, Lrx/l;->onNext(Ljava/lang/Object;)V

    .line 166
    iget-object v6, p0, Lrx/internal/operators/cn$b;->c:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v7, Lrx/internal/operators/cn$b;->h:Ljava/lang/Object;

    invoke-virtual {v6, v4, v7}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 167
    const-wide/16 v6, 0x1

    invoke-virtual {p0, v6, v7}, Lrx/internal/operators/cn$b;->a(J)J

    .line 168
    sget-object v4, Lrx/internal/operators/cn$b;->h:Ljava/lang/Object;

    .line 170
    .end local v5    # "v2":Ljava/lang/Object;, "TT;"
    :cond_3
    sget-object v6, Lrx/internal/operators/cn$b;->h:Ljava/lang/Object;

    if-ne v4, v6, :cond_4

    iget-boolean v6, p0, Lrx/internal/operators/cn$b;->e:Z

    if-eqz v6, :cond_4

    .line 171
    iget-object v0, p0, Lrx/internal/operators/cn$b;->d:Ljava/lang/Throwable;

    .line 172
    .local v0, "e":Ljava/lang/Throwable;
    if-eqz v0, :cond_6

    .line 173
    iget-object v6, p0, Lrx/internal/operators/cn$b;->a:Lrx/l;

    invoke-virtual {v6, v0}, Lrx/l;->onError(Ljava/lang/Throwable;)V

    .line 178
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_4
    :goto_3
    monitor-enter p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 179
    :try_start_5
    iget-boolean v6, p0, Lrx/internal/operators/cn$b;->g:Z

    if-nez v6, :cond_7

    .line 180
    const/4 v6, 0x0

    iput-boolean v6, p0, Lrx/internal/operators/cn$b;->f:Z

    .line 181
    const/4 v1, 0x1

    .line 182
    monitor-exit p0

    goto :goto_2

    .line 185
    :catchall_2
    move-exception v6

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    throw v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 188
    .end local v2    # "r":J
    .end local v4    # "v":Ljava/lang/Object;
    :catchall_3
    move-exception v6

    if-nez v1, :cond_5

    .line 189
    monitor-enter p0

    .line 190
    const/4 v7, 0x0

    :try_start_7
    iput-boolean v7, p0, Lrx/internal/operators/cn$b;->f:Z

    .line 191
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :cond_5
    throw v6

    .line 175
    .restart local v0    # "e":Ljava/lang/Throwable;
    .restart local v2    # "r":J
    .restart local v4    # "v":Ljava/lang/Object;
    :cond_6
    :try_start_8
    iget-object v6, p0, Lrx/internal/operators/cn$b;->a:Lrx/l;

    invoke-virtual {v6}, Lrx/l;->onCompleted()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_3

    .line 184
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_7
    const/4 v6, 0x0

    :try_start_9
    iput-boolean v6, p0, Lrx/internal/operators/cn$b;->g:Z

    .line 185
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_1

    .line 191
    .end local v2    # "r":J
    .end local v4    # "v":Ljava/lang/Object;
    :catchall_4
    move-exception v6

    :try_start_a
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    throw v6
.end method

.method public isUnsubscribed()Z
    .locals 4

    .prologue
    .line 119
    .local p0, "this":Lrx/internal/operators/cn$b;, "Lrx/internal/operators/cn$b<TT;>;"
    invoke-virtual {p0}, Lrx/internal/operators/cn$b;->get()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCompleted()V
    .locals 1

    .prologue
    .line 141
    .local p0, "this":Lrx/internal/operators/cn$b;, "Lrx/internal/operators/cn$b<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/cn$b;->e:Z

    .line 142
    invoke-virtual {p0}, Lrx/internal/operators/cn$b;->a()V

    .line 143
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 135
    .local p0, "this":Lrx/internal/operators/cn$b;, "Lrx/internal/operators/cn$b<TT;>;"
    iput-object p1, p0, Lrx/internal/operators/cn$b;->d:Ljava/lang/Throwable;

    .line 136
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/cn$b;->e:Z

    .line 137
    invoke-virtual {p0}, Lrx/internal/operators/cn$b;->a()V

    .line 138
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 130
    .local p0, "this":Lrx/internal/operators/cn$b;, "Lrx/internal/operators/cn$b<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/operators/cn$b;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 131
    invoke-virtual {p0}, Lrx/internal/operators/cn$b;->a()V

    .line 132
    return-void
.end method

.method public request(J)V
    .locals 11
    .param p1, "n"    # J

    .prologue
    .local p0, "this":Lrx/internal/operators/cn$b;, "Lrx/internal/operators/cn$b<TT;>;"
    const-wide/16 v8, 0x0

    const-wide/high16 v6, -0x4000000000000000L    # -2.0

    .line 80
    cmp-long v4, p1, v8

    if-ltz v4, :cond_1

    .line 82
    :cond_0
    invoke-virtual {p0}, Lrx/internal/operators/cn$b;->get()J

    move-result-wide v0

    .line 83
    .local v0, "r":J
    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v4, v0, v4

    if-nez v4, :cond_2

    .line 104
    .end local v0    # "r":J
    :cond_1
    :goto_0
    return-void

    .line 87
    .restart local v0    # "r":J
    :cond_2
    cmp-long v4, v0, v6

    if-nez v4, :cond_5

    .line 88
    move-wide v2, p1

    .line 95
    .local v2, "u":J
    :cond_3
    :goto_1
    invoke-virtual {p0, v0, v1, v2, v3}, Lrx/internal/operators/cn$b;->compareAndSet(JJ)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 96
    cmp-long v4, v0, v6

    if-nez v4, :cond_4

    .line 97
    iget-object v4, p0, Lrx/internal/operators/cn$b;->b:Lrx/internal/operators/cn$c;

    const-wide v6, 0x7fffffffffffffffL

    invoke-virtual {v4, v6, v7}, Lrx/internal/operators/cn$c;->a(J)V

    .line 99
    :cond_4
    invoke-virtual {p0}, Lrx/internal/operators/cn$b;->a()V

    goto :goto_0

    .line 90
    .end local v2    # "u":J
    :cond_5
    add-long v2, v0, p1

    .line 91
    .restart local v2    # "u":J
    cmp-long v4, v2, v8

    if-gez v4, :cond_3

    .line 92
    const-wide v2, 0x7fffffffffffffffL

    goto :goto_1
.end method

.method public unsubscribe()V
    .locals 4

    .prologue
    .line 123
    .local p0, "this":Lrx/internal/operators/cn$b;, "Lrx/internal/operators/cn$b<TT;>;"
    invoke-virtual {p0}, Lrx/internal/operators/cn$b;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 124
    const-wide/high16 v0, -0x8000000000000000L

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/cn$b;->getAndSet(J)J

    .line 126
    :cond_0
    return-void
.end method
