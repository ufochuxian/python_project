.class final Lrx/internal/operators/br$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/br;
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
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field a:I

.field b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field c:Z

.field d:Z

.field e:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 101
    .local p0, "this":Lrx/internal/operators/br$a;, "Lrx/internal/operators/br$a<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .prologue
    .line 114
    .local p0, "this":Lrx/internal/operators/br$a;, "Lrx/internal/operators/br$a<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lrx/internal/operators/br$a;->b:Ljava/lang/Object;

    .line 115
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/br$a;->c:Z

    .line 116
    iget v0, p0, Lrx/internal/operators/br$a;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lrx/internal/operators/br$a;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 114
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a()V
    .locals 1

    .prologue
    .line 177
    .local p0, "this":Lrx/internal/operators/br$a;, "Lrx/internal/operators/br$a<TT;>;"
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lrx/internal/operators/br$a;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lrx/internal/operators/br$a;->a:I

    .line 178
    const/4 v0, 0x0

    iput-object v0, p0, Lrx/internal/operators/br$a;->b:Ljava/lang/Object;

    .line 179
    const/4 v0, 0x0

    iput-boolean v0, p0, Lrx/internal/operators/br$a;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    monitor-exit p0

    return-void

    .line 177
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(ILrx/l;Lrx/l;)V
    .locals 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lrx/l",
            "<TT;>;",
            "Lrx/l",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 120
    .local p0, "this":Lrx/internal/operators/br$a;, "Lrx/internal/operators/br$a<TT;>;"
    .local p2, "onNextAndComplete":Lrx/l;, "Lrx/l<TT;>;"
    .local p3, "onError":Lrx/l;, "Lrx/l<*>;"
    monitor-enter p0

    .line 121
    :try_start_0
    iget-boolean v2, p0, Lrx/internal/operators/br$a;->e:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lrx/internal/operators/br$a;->c:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lrx/internal/operators/br$a;->a:I

    if-eq p1, v2, :cond_1

    .line 122
    :cond_0
    monitor-exit p0

    .line 147
    :goto_0
    return-void

    .line 124
    :cond_1
    iget-object v1, p0, Lrx/internal/operators/br$a;->b:Ljava/lang/Object;

    .line 126
    .local v1, "localValue":Ljava/lang/Object;, "TT;"
    const/4 v2, 0x0

    iput-object v2, p0, Lrx/internal/operators/br$a;->b:Ljava/lang/Object;

    .line 127
    const/4 v2, 0x0

    iput-boolean v2, p0, Lrx/internal/operators/br$a;->c:Z

    .line 128
    const/4 v2, 0x1

    iput-boolean v2, p0, Lrx/internal/operators/br$a;->e:Z

    .line 129
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 132
    :try_start_1
    invoke-virtual {p2, v1}, Lrx/l;->onNext(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 139
    monitor-enter p0

    .line 140
    :try_start_2
    iget-boolean v2, p0, Lrx/internal/operators/br$a;->d:Z

    if-nez v2, :cond_2

    .line 141
    const/4 v2, 0x0

    iput-boolean v2, p0, Lrx/internal/operators/br$a;->e:Z

    .line 142
    monitor-exit p0

    goto :goto_0

    .line 144
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 129
    .end local v1    # "localValue":Ljava/lang/Object;, "TT;"
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2

    .line 133
    .restart local v1    # "localValue":Ljava/lang/Object;, "TT;"
    :catch_0
    move-exception v0

    .line 134
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0, p3, v1}, Lrx/exceptions/a;->a(Ljava/lang/Throwable;Lrx/f;Ljava/lang/Object;)V

    goto :goto_0

    .line 144
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_2
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 146
    invoke-virtual {p2}, Lrx/l;->onCompleted()V

    goto :goto_0
.end method

.method public a(Lrx/l;Lrx/l;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/l",
            "<TT;>;",
            "Lrx/l",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 152
    .local p0, "this":Lrx/internal/operators/br$a;, "Lrx/internal/operators/br$a<TT;>;"
    .local p1, "onNextAndComplete":Lrx/l;, "Lrx/l<TT;>;"
    .local p2, "onError":Lrx/l;, "Lrx/l<*>;"
    monitor-enter p0

    .line 153
    :try_start_0
    iget-boolean v3, p0, Lrx/internal/operators/br$a;->e:Z

    if-eqz v3, :cond_0

    .line 154
    const/4 v3, 0x1

    iput-boolean v3, p0, Lrx/internal/operators/br$a;->d:Z

    .line 155
    monitor-exit p0

    .line 175
    :goto_0
    return-void

    .line 157
    :cond_0
    iget-object v2, p0, Lrx/internal/operators/br$a;->b:Ljava/lang/Object;

    .line 158
    .local v2, "localValue":Ljava/lang/Object;, "TT;"
    iget-boolean v1, p0, Lrx/internal/operators/br$a;->c:Z

    .line 160
    .local v1, "localHasValue":Z
    const/4 v3, 0x0

    iput-object v3, p0, Lrx/internal/operators/br$a;->b:Ljava/lang/Object;

    .line 161
    const/4 v3, 0x0

    iput-boolean v3, p0, Lrx/internal/operators/br$a;->c:Z

    .line 163
    const/4 v3, 0x1

    iput-boolean v3, p0, Lrx/internal/operators/br$a;->e:Z

    .line 164
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    if-eqz v1, :cond_1

    .line 168
    :try_start_1
    invoke-virtual {p1, v2}, Lrx/l;->onNext(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 174
    :cond_1
    invoke-virtual {p1}, Lrx/l;->onCompleted()V

    goto :goto_0

    .line 164
    .end local v1    # "localHasValue":Z
    .end local v2    # "localValue":Ljava/lang/Object;, "TT;"
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 169
    .restart local v1    # "localHasValue":Z
    .restart local v2    # "localValue":Ljava/lang/Object;, "TT;"
    :catch_0
    move-exception v0

    .line 170
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0, p2, v2}, Lrx/exceptions/a;->a(Ljava/lang/Throwable;Lrx/f;Ljava/lang/Object;)V

    goto :goto_0
.end method
