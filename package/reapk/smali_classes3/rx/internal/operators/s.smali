.class public final Lrx/internal/operators/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/b$a;


# instance fields
.field final a:Lrx/b;

.field final b:J

.field final c:Ljava/util/concurrent/TimeUnit;

.field final d:Lrx/h;

.field final e:Lrx/b;


# direct methods
.method public constructor <init>(Lrx/b;JLjava/util/concurrent/TimeUnit;Lrx/h;Lrx/b;)V
    .locals 0
    .param p1, "source"    # Lrx/b;
    .param p2, "timeout"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p5, "scheduler"    # Lrx/h;
    .param p6, "other"    # Lrx/b;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lrx/internal/operators/s;->a:Lrx/b;

    .line 39
    iput-wide p2, p0, Lrx/internal/operators/s;->b:J

    .line 40
    iput-object p4, p0, Lrx/internal/operators/s;->c:Ljava/util/concurrent/TimeUnit;

    .line 41
    iput-object p5, p0, Lrx/internal/operators/s;->d:Lrx/h;

    .line 42
    iput-object p6, p0, Lrx/internal/operators/s;->e:Lrx/b;

    .line 43
    return-void
.end method


# virtual methods
.method public a(Lrx/d;)V
    .locals 7
    .param p1, "s"    # Lrx/d;

    .prologue
    .line 47
    new-instance v1, Lrx/i/b;

    invoke-direct {v1}, Lrx/i/b;-><init>()V

    .line 48
    .local v1, "set":Lrx/i/b;
    invoke-interface {p1, v1}, Lrx/d;->onSubscribe(Lrx/m;)V

    .line 50
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 52
    .local v0, "once":Ljava/util/concurrent/atomic/AtomicBoolean;
    iget-object v3, p0, Lrx/internal/operators/s;->d:Lrx/h;

    invoke-virtual {v3}, Lrx/h;->createWorker()Lrx/h$a;

    move-result-object v2

    .line 54
    .local v2, "w":Lrx/h$a;
    invoke-virtual {v1, v2}, Lrx/i/b;->a(Lrx/m;)V

    .line 55
    new-instance v3, Lrx/internal/operators/s$1;

    invoke-direct {v3, p0, v0, v1, p1}, Lrx/internal/operators/s$1;-><init>(Lrx/internal/operators/s;Ljava/util/concurrent/atomic/AtomicBoolean;Lrx/i/b;Lrx/d;)V

    iget-wide v4, p0, Lrx/internal/operators/s;->b:J

    iget-object v6, p0, Lrx/internal/operators/s;->c:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5, v6}, Lrx/h$a;->a(Lrx/c/b;JLjava/util/concurrent/TimeUnit;)Lrx/m;

    .line 88
    iget-object v3, p0, Lrx/internal/operators/s;->a:Lrx/b;

    new-instance v4, Lrx/internal/operators/s$2;

    invoke-direct {v4, p0, v1, v0, p1}, Lrx/internal/operators/s$2;-><init>(Lrx/internal/operators/s;Lrx/i/b;Ljava/util/concurrent/atomic/AtomicBoolean;Lrx/d;)V

    invoke-virtual {v3, v4}, Lrx/b;->a(Lrx/d;)V

    .line 114
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 28
    check-cast p1, Lrx/d;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/s;->a(Lrx/d;)V

    return-void
.end method
