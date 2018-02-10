.class public final Lrx/internal/operators/cj;
.super Lrx/d/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/d/c",
        "<TR;>;"
    }
.end annotation


# instance fields
.field final b:Lrx/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/e",
            "<+TT;>;"
        }
    .end annotation
.end field

.field final c:Ljava/lang/Object;

.field final d:Lrx/c/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/c/o",
            "<+",
            "Lrx/h/f",
            "<-TT;+TR;>;>;"
        }
    .end annotation
.end field

.field final e:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lrx/h/f",
            "<-TT;+TR;>;>;"
        }
    .end annotation
.end field

.field final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lrx/l",
            "<-TR;>;>;"
        }
    .end annotation
.end field

.field g:Lrx/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/l",
            "<TT;>;"
        }
    .end annotation
.end field

.field h:Lrx/m;


# direct methods
.method private constructor <init>(Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/List;Lrx/e;Lrx/c/o;)V
    .locals 1
    .param p1, "guard"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lrx/h/f",
            "<-TT;+TR;>;>;",
            "Ljava/util/List",
            "<",
            "Lrx/l",
            "<-TR;>;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/c/o",
            "<+",
            "Lrx/h/f",
            "<-TT;+TR;>;>;)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p0, "this":Lrx/internal/operators/cj;, "Lrx/internal/operators/cj<TT;TR;>;"
    .local p2, "connectedSubject":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Lrx/h/f<-TT;+TR;>;>;"
    .local p3, "waitingForConnect":Ljava/util/List;, "Ljava/util/List<Lrx/l<-TR;>;>;"
    .local p4, "source":Lrx/e;, "Lrx/e<+TT;>;"
    .local p5, "subjectFactory":Lrx/c/o;, "Lrx/c/o<+Lrx/h/f<-TT;+TR;>;>;"
    new-instance v0, Lrx/internal/operators/cj$1;

    invoke-direct {v0, p1, p2, p3}, Lrx/internal/operators/cj$1;-><init>(Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/List;)V

    invoke-direct {p0, v0}, Lrx/d/c;-><init>(Lrx/e$a;)V

    .line 68
    iput-object p1, p0, Lrx/internal/operators/cj;->c:Ljava/lang/Object;

    .line 69
    iput-object p2, p0, Lrx/internal/operators/cj;->e:Ljava/util/concurrent/atomic/AtomicReference;

    .line 70
    iput-object p3, p0, Lrx/internal/operators/cj;->f:Ljava/util/List;

    .line 71
    iput-object p4, p0, Lrx/internal/operators/cj;->b:Lrx/e;

    .line 72
    iput-object p5, p0, Lrx/internal/operators/cj;->d:Lrx/c/o;

    .line 73
    return-void
.end method

.method public constructor <init>(Lrx/e;Lrx/c/o;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/c/o",
            "<+",
            "Lrx/h/f",
            "<-TT;+TR;>;>;)V"
        }
    .end annotation

    .prologue
    .line 50
    .local p0, "this":Lrx/internal/operators/cj;, "Lrx/internal/operators/cj<TT;TR;>;"
    .local p1, "source":Lrx/e;, "Lrx/e<+TT;>;"
    .local p2, "subjectFactory":Lrx/c/o;, "Lrx/c/o<+Lrx/h/f<-TT;+TR;>;>;"
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lrx/internal/operators/cj;-><init>(Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/List;Lrx/e;Lrx/c/o;)V

    .line 51
    return-void
.end method


# virtual methods
.method public h(Lrx/c/c;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/c/c",
            "<-",
            "Lrx/m;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 81
    .local p0, "this":Lrx/internal/operators/cj;, "Lrx/internal/operators/cj<TT;TR;>;"
    .local p1, "connection":Lrx/c/c;, "Lrx/c/c<-Lrx/m;>;"
    iget-object v6, p0, Lrx/internal/operators/cj;->c:Ljava/lang/Object;

    monitor-enter v6

    .line 82
    :try_start_0
    iget-object v5, p0, Lrx/internal/operators/cj;->g:Lrx/l;

    if-eqz v5, :cond_1

    .line 84
    iget-object v5, p0, Lrx/internal/operators/cj;->h:Lrx/m;

    invoke-interface {p1, v5}, Lrx/c/c;->call(Ljava/lang/Object;)V

    .line 85
    monitor-exit v6

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    iget-object v5, p0, Lrx/internal/operators/cj;->d:Lrx/c/o;

    invoke-interface {v5}, Lrx/c/o;->call()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lrx/h/f;

    .line 91
    .local v4, "subject":Lrx/h/f;, "Lrx/h/f<-TT;+TR;>;"
    invoke-static {v4}, Lrx/e/h;->a(Lrx/f;)Lrx/l;

    move-result-object v5

    iput-object v5, p0, Lrx/internal/operators/cj;->g:Lrx/l;

    .line 92
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 93
    .local v0, "gs":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Lrx/m;>;"
    new-instance v5, Lrx/internal/operators/cj$2;

    invoke-direct {v5, p0, v0}, Lrx/internal/operators/cj$2;-><init>(Lrx/internal/operators/cj;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-static {v5}, Lrx/i/f;->a(Lrx/c/b;)Lrx/m;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 112
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lrx/m;

    iput-object v5, p0, Lrx/internal/operators/cj;->h:Lrx/m;

    .line 115
    iget-object v5, p0, Lrx/internal/operators/cj;->f:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lrx/l;

    .line 116
    .local v2, "s":Lrx/l;, "Lrx/l<-TR;>;"
    new-instance v5, Lrx/internal/operators/cj$3;

    invoke-direct {v5, p0, v2, v2}, Lrx/internal/operators/cj$3;-><init>(Lrx/internal/operators/cj;Lrx/l;Lrx/l;)V

    invoke-virtual {v4, v5}, Lrx/h/f;->a(Lrx/l;)Lrx/m;

    goto :goto_1

    .line 137
    .end local v0    # "gs":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Lrx/m;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "s":Lrx/l;, "Lrx/l<-TR;>;"
    .end local v4    # "subject":Lrx/h/f;, "Lrx/h/f<-TT;+TR;>;"
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 132
    .restart local v0    # "gs":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Lrx/m;>;"
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v4    # "subject":Lrx/h/f;, "Lrx/h/f<-TT;+TR;>;"
    :cond_2
    :try_start_1
    iget-object v5, p0, Lrx/internal/operators/cj;->f:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 134
    iget-object v5, p0, Lrx/internal/operators/cj;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5, v4}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 137
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 141
    iget-object v5, p0, Lrx/internal/operators/cj;->h:Lrx/m;

    invoke-interface {p1, v5}, Lrx/c/c;->call(Ljava/lang/Object;)V

    .line 146
    iget-object v6, p0, Lrx/internal/operators/cj;->c:Ljava/lang/Object;

    monitor-enter v6

    .line 147
    :try_start_2
    iget-object v3, p0, Lrx/internal/operators/cj;->g:Lrx/l;

    .line 148
    .local v3, "sub":Lrx/l;, "Lrx/l<TT;>;"
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 149
    if-eqz v3, :cond_0

    .line 150
    iget-object v5, p0, Lrx/internal/operators/cj;->b:Lrx/e;

    invoke-virtual {v5, v3}, Lrx/e;->b(Lrx/l;)Lrx/m;

    goto :goto_0

    .line 148
    .end local v3    # "sub":Lrx/l;, "Lrx/l<TT;>;"
    :catchall_1
    move-exception v5

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v5
.end method
