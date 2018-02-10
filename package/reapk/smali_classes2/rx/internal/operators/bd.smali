.class public final Lrx/internal/operators/bd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/e$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/e$a",
        "<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final a:J

.field final b:J

.field final c:Ljava/util/concurrent/TimeUnit;

.field final d:Lrx/h;


# direct methods
.method public constructor <init>(JJLjava/util/concurrent/TimeUnit;Lrx/h;)V
    .locals 1
    .param p1, "initialDelay"    # J
    .param p3, "period"    # J
    .param p5, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p6, "scheduler"    # Lrx/h;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-wide p1, p0, Lrx/internal/operators/bd;->a:J

    .line 38
    iput-wide p3, p0, Lrx/internal/operators/bd;->b:J

    .line 39
    iput-object p5, p0, Lrx/internal/operators/bd;->c:Ljava/util/concurrent/TimeUnit;

    .line 40
    iput-object p6, p0, Lrx/internal/operators/bd;->d:Lrx/h;

    .line 41
    return-void
.end method


# virtual methods
.method public a(Lrx/l;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/l",
            "<-",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p1, "child":Lrx/l;, "Lrx/l<-Ljava/lang/Long;>;"
    iget-object v1, p0, Lrx/internal/operators/bd;->d:Lrx/h;

    invoke-virtual {v1}, Lrx/h;->createWorker()Lrx/h$a;

    move-result-object v0

    .line 46
    .local v0, "worker":Lrx/h$a;
    invoke-virtual {p1, v0}, Lrx/l;->add(Lrx/m;)V

    .line 47
    new-instance v1, Lrx/internal/operators/bd$1;

    invoke-direct {v1, p0, p1, v0}, Lrx/internal/operators/bd$1;-><init>(Lrx/internal/operators/bd;Lrx/l;Lrx/h$a;)V

    iget-wide v2, p0, Lrx/internal/operators/bd;->a:J

    iget-wide v4, p0, Lrx/internal/operators/bd;->b:J

    iget-object v6, p0, Lrx/internal/operators/bd;->c:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v0 .. v6}, Lrx/h$a;->a(Lrx/c/b;JJLjava/util/concurrent/TimeUnit;)Lrx/m;

    .line 63
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 30
    check-cast p1, Lrx/l;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/bd;->a(Lrx/l;)V

    return-void
.end method
