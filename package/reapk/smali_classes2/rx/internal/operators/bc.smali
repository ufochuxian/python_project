.class public final Lrx/internal/operators/bc;
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

.field final b:Ljava/util/concurrent/TimeUnit;

.field final c:Lrx/h;


# direct methods
.method public constructor <init>(JLjava/util/concurrent/TimeUnit;Lrx/h;)V
    .locals 1
    .param p1, "time"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "scheduler"    # Lrx/h;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-wide p1, p0, Lrx/internal/operators/bc;->a:J

    .line 37
    iput-object p3, p0, Lrx/internal/operators/bc;->b:Ljava/util/concurrent/TimeUnit;

    .line 38
    iput-object p4, p0, Lrx/internal/operators/bc;->c:Lrx/h;

    .line 39
    return-void
.end method


# virtual methods
.method public a(Lrx/l;)V
    .locals 5
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
    .line 43
    .local p1, "child":Lrx/l;, "Lrx/l<-Ljava/lang/Long;>;"
    iget-object v1, p0, Lrx/internal/operators/bc;->c:Lrx/h;

    invoke-virtual {v1}, Lrx/h;->createWorker()Lrx/h$a;

    move-result-object v0

    .line 44
    .local v0, "worker":Lrx/h$a;
    invoke-virtual {p1, v0}, Lrx/l;->add(Lrx/m;)V

    .line 45
    new-instance v1, Lrx/internal/operators/bc$1;

    invoke-direct {v1, p0, p1}, Lrx/internal/operators/bc$1;-><init>(Lrx/internal/operators/bc;Lrx/l;)V

    iget-wide v2, p0, Lrx/internal/operators/bc;->a:J

    iget-object v4, p0, Lrx/internal/operators/bc;->b:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3, v4}, Lrx/h$a;->a(Lrx/c/b;JLjava/util/concurrent/TimeUnit;)Lrx/m;

    .line 57
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 30
    check-cast p1, Lrx/l;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/bc;->a(Lrx/l;)V

    return-void
.end method
