.class public final Lrx/internal/operators/az;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/e$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/az$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/e$a",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final a:J

.field final b:Ljava/util/concurrent/TimeUnit;

.field final c:Lrx/h;

.field final d:Lrx/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/e;JLjava/util/concurrent/TimeUnit;Lrx/h;)V
    .locals 0
    .param p2, "time"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p5, "scheduler"    # Lrx/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/e",
            "<TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/h;",
            ")V"
        }
    .end annotation

    .prologue
    .line 37
    .local p0, "this":Lrx/internal/operators/az;, "Lrx/internal/operators/az<TT;>;"
    .local p1, "source":Lrx/e;, "Lrx/e<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lrx/internal/operators/az;->d:Lrx/e;

    .line 39
    iput-wide p2, p0, Lrx/internal/operators/az;->a:J

    .line 40
    iput-object p4, p0, Lrx/internal/operators/az;->b:Ljava/util/concurrent/TimeUnit;

    .line 41
    iput-object p5, p0, Lrx/internal/operators/az;->c:Lrx/h;

    .line 42
    return-void
.end method


# virtual methods
.method public a(Lrx/l;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/l",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, "this":Lrx/internal/operators/az;, "Lrx/internal/operators/az<TT;>;"
    .local p1, "child":Lrx/l;, "Lrx/l<-TT;>;"
    iget-object v2, p0, Lrx/internal/operators/az;->c:Lrx/h;

    invoke-virtual {v2}, Lrx/h;->createWorker()Lrx/h$a;

    move-result-object v1

    .line 47
    .local v1, "worker":Lrx/h$a;
    new-instance v0, Lrx/internal/operators/az$a;

    invoke-direct {v0, p1}, Lrx/internal/operators/az$a;-><init>(Lrx/l;)V

    .line 48
    .local v0, "subscriber":Lrx/internal/operators/az$a;, "Lrx/internal/operators/az$a<TT;>;"
    invoke-virtual {v0, v1}, Lrx/internal/operators/az$a;->add(Lrx/m;)V

    .line 49
    invoke-virtual {p1, v0}, Lrx/l;->add(Lrx/m;)V

    .line 50
    iget-wide v2, p0, Lrx/internal/operators/az;->a:J

    iget-object v4, p0, Lrx/internal/operators/az;->b:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v0, v2, v3, v4}, Lrx/h$a;->a(Lrx/c/b;JLjava/util/concurrent/TimeUnit;)Lrx/m;

    .line 51
    iget-object v2, p0, Lrx/internal/operators/az;->d:Lrx/e;

    invoke-virtual {v2, v0}, Lrx/e;->a(Lrx/l;)Lrx/m;

    .line 52
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 31
    .local p0, "this":Lrx/internal/operators/az;, "Lrx/internal/operators/az<TT;>;"
    check-cast p1, Lrx/l;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/az;->a(Lrx/l;)V

    return-void
.end method
