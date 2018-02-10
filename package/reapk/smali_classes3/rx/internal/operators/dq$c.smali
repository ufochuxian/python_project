.class final Lrx/internal/operators/dq$c;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/dq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
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
.field final a:Lrx/i/e;

.field final b:Lrx/e/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/e/g",
            "<TT;>;"
        }
    .end annotation
.end field

.field final c:Lrx/internal/operators/dq$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/dq$b",
            "<TT;>;"
        }
    .end annotation
.end field

.field final d:Lrx/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/e",
            "<+TT;>;"
        }
    .end annotation
.end field

.field final e:Lrx/h$a;

.field final f:Lrx/internal/producers/a;

.field g:Z

.field h:J


# direct methods
.method constructor <init>(Lrx/e/g;Lrx/internal/operators/dq$b;Lrx/i/e;Lrx/e;Lrx/h$a;)V
    .locals 1
    .param p3, "serial"    # Lrx/i/e;
    .param p5, "inner"    # Lrx/h$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/e/g",
            "<TT;>;",
            "Lrx/internal/operators/dq$b",
            "<TT;>;",
            "Lrx/i/e;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/h$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 104
    .local p0, "this":Lrx/internal/operators/dq$c;, "Lrx/internal/operators/dq$c<TT;>;"
    .local p1, "serializedSubscriber":Lrx/e/g;, "Lrx/e/g<TT;>;"
    .local p2, "timeoutStub":Lrx/internal/operators/dq$b;, "Lrx/internal/operators/dq$b<TT;>;"
    .local p4, "other":Lrx/e;, "Lrx/e<+TT;>;"
    invoke-direct {p0}, Lrx/l;-><init>()V

    .line 105
    iput-object p1, p0, Lrx/internal/operators/dq$c;->b:Lrx/e/g;

    .line 106
    iput-object p2, p0, Lrx/internal/operators/dq$c;->c:Lrx/internal/operators/dq$b;

    .line 107
    iput-object p3, p0, Lrx/internal/operators/dq$c;->a:Lrx/i/e;

    .line 108
    iput-object p4, p0, Lrx/internal/operators/dq$c;->d:Lrx/e;

    .line 109
    iput-object p5, p0, Lrx/internal/operators/dq$c;->e:Lrx/h$a;

    .line 110
    new-instance v0, Lrx/internal/producers/a;

    invoke-direct {v0}, Lrx/internal/producers/a;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/dq$c;->f:Lrx/internal/producers/a;

    .line 111
    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 7
    .param p1, "seqId"    # J

    .prologue
    .line 167
    .local p0, "this":Lrx/internal/operators/dq$c;, "Lrx/internal/operators/dq$c<TT;>;"
    move-wide v0, p1

    .line 168
    .local v0, "expected":J
    const/4 v3, 0x0

    .line 169
    .local v3, "timeoutWins":Z
    monitor-enter p0

    .line 170
    :try_start_0
    iget-wide v4, p0, Lrx/internal/operators/dq$c;->h:J

    cmp-long v4, v0, v4

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lrx/internal/operators/dq$c;->g:Z

    if-nez v4, :cond_0

    .line 171
    const/4 v4, 0x1

    iput-boolean v4, p0, Lrx/internal/operators/dq$c;->g:Z

    .line 172
    const/4 v3, 0x1

    .line 174
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    if-eqz v3, :cond_1

    .line 176
    iget-object v4, p0, Lrx/internal/operators/dq$c;->d:Lrx/e;

    if-nez v4, :cond_2

    .line 177
    iget-object v4, p0, Lrx/internal/operators/dq$c;->b:Lrx/e/g;

    new-instance v5, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v5}, Ljava/util/concurrent/TimeoutException;-><init>()V

    invoke-virtual {v4, v5}, Lrx/e/g;->onError(Ljava/lang/Throwable;)V

    .line 204
    :cond_1
    :goto_0
    return-void

    .line 174
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 179
    :cond_2
    new-instance v2, Lrx/internal/operators/dq$c$1;

    invoke-direct {v2, p0}, Lrx/internal/operators/dq$c$1;-><init>(Lrx/internal/operators/dq$c;)V

    .line 200
    .local v2, "second":Lrx/l;, "Lrx/l<TT;>;"
    iget-object v4, p0, Lrx/internal/operators/dq$c;->d:Lrx/e;

    invoke-virtual {v4, v2}, Lrx/e;->a(Lrx/l;)Lrx/m;

    .line 201
    iget-object v4, p0, Lrx/internal/operators/dq$c;->a:Lrx/i/e;

    invoke-virtual {v4, v2}, Lrx/i/e;->a(Lrx/m;)V

    goto :goto_0
.end method

.method public onCompleted()V
    .locals 2

    .prologue
    .line 153
    .local p0, "this":Lrx/internal/operators/dq$c;, "Lrx/internal/operators/dq$c<TT;>;"
    const/4 v0, 0x0

    .line 154
    .local v0, "onCompletedWins":Z
    monitor-enter p0

    .line 155
    :try_start_0
    iget-boolean v1, p0, Lrx/internal/operators/dq$c;->g:Z

    if-nez v1, :cond_0

    .line 156
    const/4 v1, 0x1

    iput-boolean v1, p0, Lrx/internal/operators/dq$c;->g:Z

    .line 157
    const/4 v0, 0x1

    .line 159
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    if-eqz v0, :cond_1

    .line 161
    iget-object v1, p0, Lrx/internal/operators/dq$c;->a:Lrx/i/e;

    invoke-virtual {v1}, Lrx/i/e;->unsubscribe()V

    .line 162
    iget-object v1, p0, Lrx/internal/operators/dq$c;->b:Lrx/e/g;

    invoke-virtual {v1}, Lrx/e/g;->onCompleted()V

    .line 164
    :cond_1
    return-void

    .line 159
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "error"    # Ljava/lang/Throwable;

    .prologue
    .line 138
    .local p0, "this":Lrx/internal/operators/dq$c;, "Lrx/internal/operators/dq$c<TT;>;"
    const/4 v0, 0x0

    .line 139
    .local v0, "onErrorWins":Z
    monitor-enter p0

    .line 140
    :try_start_0
    iget-boolean v1, p0, Lrx/internal/operators/dq$c;->g:Z

    if-nez v1, :cond_0

    .line 141
    const/4 v1, 0x1

    iput-boolean v1, p0, Lrx/internal/operators/dq$c;->g:Z

    .line 142
    const/4 v0, 0x1

    .line 144
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    if-eqz v0, :cond_1

    .line 146
    iget-object v1, p0, Lrx/internal/operators/dq$c;->a:Lrx/i/e;

    invoke-virtual {v1}, Lrx/i/e;->unsubscribe()V

    .line 147
    iget-object v1, p0, Lrx/internal/operators/dq$c;->b:Lrx/e/g;

    invoke-virtual {v1, p1}, Lrx/e/g;->onError(Ljava/lang/Throwable;)V

    .line 149
    :cond_1
    return-void

    .line 144
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 120
    .local p0, "this":Lrx/internal/operators/dq$c;, "Lrx/internal/operators/dq$c<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    const/4 v2, 0x0

    .line 122
    .local v2, "onNextWins":Z
    monitor-enter p0

    .line 123
    :try_start_0
    iget-boolean v3, p0, Lrx/internal/operators/dq$c;->g:Z

    if-nez v3, :cond_1

    .line 124
    iget-wide v4, p0, Lrx/internal/operators/dq$c;->h:J

    const-wide/16 v6, 0x1

    add-long v0, v4, v6

    iput-wide v0, p0, Lrx/internal/operators/dq$c;->h:J

    .line 125
    .local v0, "a":J
    const/4 v2, 0x1

    .line 129
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    if-eqz v2, :cond_0

    .line 131
    iget-object v3, p0, Lrx/internal/operators/dq$c;->b:Lrx/e/g;

    invoke-virtual {v3, p1}, Lrx/e/g;->onNext(Ljava/lang/Object;)V

    .line 132
    iget-object v4, p0, Lrx/internal/operators/dq$c;->a:Lrx/i/e;

    iget-object v3, p0, Lrx/internal/operators/dq$c;->c:Lrx/internal/operators/dq$b;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iget-object v6, p0, Lrx/internal/operators/dq$c;->e:Lrx/h$a;

    invoke-interface {v3, p0, v5, p1, v6}, Lrx/internal/operators/dq$b;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lrx/m;

    invoke-virtual {v4, v3}, Lrx/i/e;->a(Lrx/m;)V

    .line 134
    :cond_0
    return-void

    .line 127
    .end local v0    # "a":J
    :cond_1
    :try_start_1
    iget-wide v0, p0, Lrx/internal/operators/dq$c;->h:J

    .restart local v0    # "a":J
    goto :goto_0

    .line 129
    .end local v0    # "a":J
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public setProducer(Lrx/g;)V
    .locals 1
    .param p1, "p"    # Lrx/g;

    .prologue
    .line 115
    .local p0, "this":Lrx/internal/operators/dq$c;, "Lrx/internal/operators/dq$c<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/dq$c;->f:Lrx/internal/producers/a;

    invoke-virtual {v0, p1}, Lrx/internal/producers/a;->a(Lrx/g;)V

    .line 116
    return-void
.end method
