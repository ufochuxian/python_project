.class public final Lrx/internal/operators/g;
.super Lrx/h/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/g$a;,
        Lrx/internal/operators/g$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/h/f",
        "<TT;TT;>;"
    }
.end annotation


# static fields
.field static final c:Lrx/f;


# instance fields
.field final b:Lrx/internal/operators/g$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/g$b",
            "<TT;>;"
        }
    .end annotation
.end field

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 191
    new-instance v0, Lrx/internal/operators/g$1;

    invoke-direct {v0}, Lrx/internal/operators/g$1;-><init>()V

    sput-object v0, Lrx/internal/operators/g;->c:Lrx/f;

    return-void
.end method

.method private constructor <init>(Lrx/internal/operators/g$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/g$b",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 129
    .local p0, "this":Lrx/internal/operators/g;, "Lrx/internal/operators/g<TT;>;"
    .local p1, "state":Lrx/internal/operators/g$b;, "Lrx/internal/operators/g$b<TT;>;"
    new-instance v0, Lrx/internal/operators/g$a;

    invoke-direct {v0, p1}, Lrx/internal/operators/g$a;-><init>(Lrx/internal/operators/g$b;)V

    invoke-direct {p0, v0}, Lrx/h/f;-><init>(Lrx/e$a;)V

    .line 130
    iput-object p1, p0, Lrx/internal/operators/g;->b:Lrx/internal/operators/g$b;

    .line 131
    return-void
.end method

.method public static K()Lrx/internal/operators/g;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lrx/internal/operators/g",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 60
    new-instance v0, Lrx/internal/operators/g$b;

    invoke-direct {v0}, Lrx/internal/operators/g$b;-><init>()V

    .line 61
    .local v0, "state":Lrx/internal/operators/g$b;, "Lrx/internal/operators/g$b<TT;>;"
    new-instance v1, Lrx/internal/operators/g;

    invoke-direct {v1, v0}, Lrx/internal/operators/g;-><init>(Lrx/internal/operators/g$b;)V

    return-object v1
.end method

.method private h(Ljava/lang/Object;)V
    .locals 4
    .param p1, "v"    # Ljava/lang/Object;

    .prologue
    .line 134
    .local p0, "this":Lrx/internal/operators/g;, "Lrx/internal/operators/g<TT;>;"
    iget-object v1, p0, Lrx/internal/operators/g;->b:Lrx/internal/operators/g$b;

    iget-object v2, v1, Lrx/internal/operators/g$b;->a:Ljava/lang/Object;

    monitor-enter v2

    .line 135
    :try_start_0
    iget-object v1, p0, Lrx/internal/operators/g;->b:Lrx/internal/operators/g$b;

    iget-object v1, v1, Lrx/internal/operators/g$b;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 136
    iget-object v1, p0, Lrx/internal/operators/g;->b:Lrx/internal/operators/g$b;

    invoke-virtual {v1}, Lrx/internal/operators/g$b;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lrx/internal/operators/g;->b:Lrx/internal/operators/g$b;

    iget-boolean v1, v1, Lrx/internal/operators/g$b;->b:Z

    if-nez v1, :cond_0

    .line 139
    const/4 v1, 0x1

    iput-boolean v1, p0, Lrx/internal/operators/g;->d:Z

    .line 140
    iget-object v1, p0, Lrx/internal/operators/g;->b:Lrx/internal/operators/g$b;

    const/4 v3, 0x1

    iput-boolean v3, v1, Lrx/internal/operators/g$b;->b:Z

    .line 142
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    iget-boolean v1, p0, Lrx/internal/operators/g;->d:Z

    if-eqz v1, :cond_1

    .line 145
    :goto_0
    iget-object v1, p0, Lrx/internal/operators/g;->b:Lrx/internal/operators/g$b;

    iget-object v1, v1, Lrx/internal/operators/g$b;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    .local v0, "o":Ljava/lang/Object;
    if-eqz v0, :cond_1

    .line 146
    iget-object v1, p0, Lrx/internal/operators/g;->b:Lrx/internal/operators/g$b;

    invoke-virtual {v1}, Lrx/internal/operators/g$b;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/f;

    invoke-static {v1, v0}, Lrx/internal/operators/v;->a(Lrx/f;Ljava/lang/Object;)Z

    goto :goto_0

    .line 142
    .end local v0    # "o":Ljava/lang/Object;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 151
    :cond_1
    return-void
.end method


# virtual methods
.method public L()Z
    .locals 2

    .prologue
    .line 185
    .local p0, "this":Lrx/internal/operators/g;, "Lrx/internal/operators/g<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/g;->b:Lrx/internal/operators/g$b;

    iget-object v1, v0, Lrx/internal/operators/g$b;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 186
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/g;->b:Lrx/internal/operators/g$b;

    invoke-virtual {v0}, Lrx/internal/operators/g$b;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 187
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onCompleted()V
    .locals 1

    .prologue
    .line 155
    .local p0, "this":Lrx/internal/operators/g;, "Lrx/internal/operators/g<TT;>;"
    iget-boolean v0, p0, Lrx/internal/operators/g;->d:Z

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lrx/internal/operators/g;->b:Lrx/internal/operators/g$b;

    invoke-virtual {v0}, Lrx/internal/operators/g$b;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/f;

    invoke-interface {v0}, Lrx/f;->onCompleted()V

    .line 161
    :goto_0
    return-void

    .line 159
    :cond_0
    invoke-static {}, Lrx/internal/operators/v;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lrx/internal/operators/g;->h(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 165
    .local p0, "this":Lrx/internal/operators/g;, "Lrx/internal/operators/g<TT;>;"
    iget-boolean v0, p0, Lrx/internal/operators/g;->d:Z

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lrx/internal/operators/g;->b:Lrx/internal/operators/g$b;

    invoke-virtual {v0}, Lrx/internal/operators/g$b;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/f;

    invoke-interface {v0, p1}, Lrx/f;->onError(Ljava/lang/Throwable;)V

    .line 171
    :goto_0
    return-void

    .line 169
    :cond_0
    invoke-static {p1}, Lrx/internal/operators/v;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lrx/internal/operators/g;->h(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 175
    .local p0, "this":Lrx/internal/operators/g;, "Lrx/internal/operators/g<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-boolean v0, p0, Lrx/internal/operators/g;->d:Z

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lrx/internal/operators/g;->b:Lrx/internal/operators/g$b;

    invoke-virtual {v0}, Lrx/internal/operators/g$b;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/f;

    invoke-interface {v0, p1}, Lrx/f;->onNext(Ljava/lang/Object;)V

    .line 181
    :goto_0
    return-void

    .line 179
    :cond_0
    invoke-static {p1}, Lrx/internal/operators/v;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lrx/internal/operators/g;->h(Ljava/lang/Object;)V

    goto :goto_0
.end method
