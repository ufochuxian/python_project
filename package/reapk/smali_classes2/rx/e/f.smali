.class public Lrx/e/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/e/f$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/f",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lrx/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/f",
            "<-TT;>;"
        }
    .end annotation
.end field

.field private b:Z

.field private volatile c:Z

.field private d:Lrx/e/f$a;


# direct methods
.method public constructor <init>(Lrx/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/f",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 66
    .local p0, "this":Lrx/e/f;, "Lrx/e/f<TT;>;"
    .local p1, "s":Lrx/f;, "Lrx/f<-TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lrx/e/f;->a:Lrx/f;

    .line 68
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 2

    .prologue
    .line 157
    .local p0, "this":Lrx/e/f;, "Lrx/e/f<TT;>;"
    iget-boolean v1, p0, Lrx/e/f;->c:Z

    if-eqz v1, :cond_0

    .line 177
    :goto_0
    return-void

    .line 160
    :cond_0
    monitor-enter p0

    .line 161
    :try_start_0
    iget-boolean v1, p0, Lrx/e/f;->c:Z

    if-eqz v1, :cond_1

    .line 162
    monitor-exit p0

    goto :goto_0

    .line 175
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 164
    :cond_1
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lrx/e/f;->c:Z

    .line 165
    iget-boolean v1, p0, Lrx/e/f;->b:Z

    if-eqz v1, :cond_3

    .line 166
    iget-object v0, p0, Lrx/e/f;->d:Lrx/e/f$a;

    .line 167
    .local v0, "list":Lrx/e/f$a;
    if-nez v0, :cond_2

    .line 168
    new-instance v0, Lrx/e/f$a;

    .end local v0    # "list":Lrx/e/f$a;
    invoke-direct {v0}, Lrx/e/f$a;-><init>()V

    .line 169
    .restart local v0    # "list":Lrx/e/f$a;
    iput-object v0, p0, Lrx/e/f;->d:Lrx/e/f$a;

    .line 171
    :cond_2
    invoke-static {}, Lrx/internal/operators/v;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/e/f$a;->a(Ljava/lang/Object;)V

    .line 172
    monitor-exit p0

    goto :goto_0

    .line 174
    .end local v0    # "list":Lrx/e/f$a;
    :cond_3
    const/4 v1, 0x1

    iput-boolean v1, p0, Lrx/e/f;->b:Z

    .line 175
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 176
    iget-object v1, p0, Lrx/e/f;->a:Lrx/f;

    invoke-interface {v1}, Lrx/f;->onCompleted()V

    goto :goto_0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 128
    .local p0, "this":Lrx/e/f;, "Lrx/e/f<TT;>;"
    invoke-static {p1}, Lrx/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 129
    iget-boolean v1, p0, Lrx/e/f;->c:Z

    if-eqz v1, :cond_0

    .line 153
    :goto_0
    return-void

    .line 132
    :cond_0
    monitor-enter p0

    .line 133
    :try_start_0
    iget-boolean v1, p0, Lrx/e/f;->c:Z

    if-eqz v1, :cond_1

    .line 134
    monitor-exit p0

    goto :goto_0

    .line 151
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 136
    :cond_1
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lrx/e/f;->c:Z

    .line 137
    iget-boolean v1, p0, Lrx/e/f;->b:Z

    if-eqz v1, :cond_3

    .line 142
    iget-object v0, p0, Lrx/e/f;->d:Lrx/e/f$a;

    .line 143
    .local v0, "list":Lrx/e/f$a;
    if-nez v0, :cond_2

    .line 144
    new-instance v0, Lrx/e/f$a;

    .end local v0    # "list":Lrx/e/f$a;
    invoke-direct {v0}, Lrx/e/f$a;-><init>()V

    .line 145
    .restart local v0    # "list":Lrx/e/f$a;
    iput-object v0, p0, Lrx/e/f;->d:Lrx/e/f$a;

    .line 147
    :cond_2
    invoke-static {p1}, Lrx/internal/operators/v;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/e/f$a;->a(Ljava/lang/Object;)V

    .line 148
    monitor-exit p0

    goto :goto_0

    .line 150
    .end local v0    # "list":Lrx/e/f$a;
    :cond_3
    const/4 v1, 0x1

    iput-boolean v1, p0, Lrx/e/f;->b:Z

    .line 151
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 152
    iget-object v1, p0, Lrx/e/f;->a:Lrx/f;

    invoke-interface {v1, p1}, Lrx/f;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/e/f;, "Lrx/e/f<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    const/4 v7, 0x1

    .line 72
    iget-boolean v6, p0, Lrx/e/f;->c:Z

    if-eqz v6, :cond_0

    .line 120
    :goto_0
    return-void

    .line 75
    :cond_0
    monitor-enter p0

    .line 76
    :try_start_0
    iget-boolean v6, p0, Lrx/e/f;->c:Z

    if-eqz v6, :cond_1

    .line 77
    monitor-exit p0

    goto :goto_0

    .line 89
    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 79
    :cond_1
    :try_start_1
    iget-boolean v6, p0, Lrx/e/f;->b:Z

    if-eqz v6, :cond_3

    .line 80
    iget-object v4, p0, Lrx/e/f;->d:Lrx/e/f$a;

    .line 81
    .local v4, "list":Lrx/e/f$a;
    if-nez v4, :cond_2

    .line 82
    new-instance v4, Lrx/e/f$a;

    .end local v4    # "list":Lrx/e/f$a;
    invoke-direct {v4}, Lrx/e/f$a;-><init>()V

    .line 83
    .restart local v4    # "list":Lrx/e/f$a;
    iput-object v4, p0, Lrx/e/f;->d:Lrx/e/f$a;

    .line 85
    :cond_2
    invoke-static {p1}, Lrx/internal/operators/v;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v6}, Lrx/e/f$a;->a(Ljava/lang/Object;)V

    .line 86
    monitor-exit p0

    goto :goto_0

    .line 88
    .end local v4    # "list":Lrx/e/f$a;
    :cond_3
    const/4 v6, 0x1

    iput-boolean v6, p0, Lrx/e/f;->b:Z

    .line 89
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    :try_start_2
    iget-object v6, p0, Lrx/e/f;->a:Lrx/f;

    invoke-interface {v6, p1}, Lrx/f;->onNext(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 99
    :cond_4
    monitor-enter p0

    .line 100
    :try_start_3
    iget-object v4, p0, Lrx/e/f;->d:Lrx/e/f$a;

    .line 101
    .restart local v4    # "list":Lrx/e/f$a;
    if-nez v4, :cond_5

    .line 102
    const/4 v6, 0x0

    iput-boolean v6, p0, Lrx/e/f;->b:Z

    .line 103
    monitor-exit p0

    goto :goto_0

    .line 106
    .end local v4    # "list":Lrx/e/f$a;
    :catchall_1
    move-exception v6

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v6

    .line 92
    :catch_0
    move-exception v1

    .line 93
    .local v1, "e":Ljava/lang/Throwable;
    iput-boolean v7, p0, Lrx/e/f;->c:Z

    .line 94
    iget-object v6, p0, Lrx/e/f;->a:Lrx/f;

    invoke-static {v1, v6, p1}, Lrx/exceptions/a;->a(Ljava/lang/Throwable;Lrx/f;Ljava/lang/Object;)V

    goto :goto_0

    .line 105
    .end local v1    # "e":Ljava/lang/Throwable;
    .restart local v4    # "list":Lrx/e/f$a;
    :cond_5
    const/4 v6, 0x0

    :try_start_4
    iput-object v6, p0, Lrx/e/f;->d:Lrx/e/f$a;

    .line 106
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 107
    iget-object v0, v4, Lrx/e/f$a;->a:[Ljava/lang/Object;

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_4

    aget-object v5, v0, v2

    .line 108
    .local v5, "o":Ljava/lang/Object;
    if-eqz v5, :cond_4

    .line 112
    :try_start_5
    iget-object v6, p0, Lrx/e/f;->a:Lrx/f;

    invoke-static {v6, v5}, Lrx/internal/operators/v;->a(Lrx/f;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 113
    const/4 v6, 0x1

    iput-boolean v6, p0, Lrx/e/f;->c:Z
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    .line 116
    :catch_1
    move-exception v1

    .line 117
    .restart local v1    # "e":Ljava/lang/Throwable;
    iput-boolean v7, p0, Lrx/e/f;->c:Z

    .line 118
    invoke-static {v1}, Lrx/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 119
    iget-object v6, p0, Lrx/e/f;->a:Lrx/f;

    invoke-static {v1, p1}, Lrx/exceptions/OnErrorThrowable;->addValueAsLastCause(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v7

    invoke-interface {v6, v7}, Lrx/f;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 107
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method
