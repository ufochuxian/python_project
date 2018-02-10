.class public final Lrx/internal/operators/ez;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/i$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/ez$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/i$a",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final a:Lrx/i$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/i$a",
            "<TT;>;"
        }
    .end annotation
.end field

.field final b:J

.field final c:Ljava/util/concurrent/TimeUnit;

.field final d:Lrx/h;

.field final e:Lrx/i$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/i$a",
            "<+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/i$a;JLjava/util/concurrent/TimeUnit;Lrx/h;Lrx/i$a;)V
    .locals 0
    .param p2, "timeout"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p5, "scheduler"    # Lrx/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/i$a",
            "<TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/h;",
            "Lrx/i$a",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p0, "this":Lrx/internal/operators/ez;, "Lrx/internal/operators/ez<TT;>;"
    .local p1, "source":Lrx/i$a;, "Lrx/i$a<TT;>;"
    .local p6, "other":Lrx/i$a;, "Lrx/i$a<+TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lrx/internal/operators/ez;->a:Lrx/i$a;

    .line 41
    iput-wide p2, p0, Lrx/internal/operators/ez;->b:J

    .line 42
    iput-object p4, p0, Lrx/internal/operators/ez;->c:Ljava/util/concurrent/TimeUnit;

    .line 43
    iput-object p5, p0, Lrx/internal/operators/ez;->d:Lrx/h;

    .line 44
    iput-object p6, p0, Lrx/internal/operators/ez;->e:Lrx/i$a;

    .line 45
    return-void
.end method


# virtual methods
.method public a(Lrx/k;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/k",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p0, "this":Lrx/internal/operators/ez;, "Lrx/internal/operators/ez<TT;>;"
    .local p1, "t":Lrx/k;, "Lrx/k<-TT;>;"
    new-instance v0, Lrx/internal/operators/ez$a;

    iget-object v2, p0, Lrx/internal/operators/ez;->e:Lrx/i$a;

    invoke-direct {v0, p1, v2}, Lrx/internal/operators/ez$a;-><init>(Lrx/k;Lrx/i$a;)V

    .line 51
    .local v0, "parent":Lrx/internal/operators/ez$a;, "Lrx/internal/operators/ez$a<TT;>;"
    iget-object v2, p0, Lrx/internal/operators/ez;->d:Lrx/h;

    invoke-virtual {v2}, Lrx/h;->createWorker()Lrx/h$a;

    move-result-object v1

    .line 52
    .local v1, "w":Lrx/h$a;
    invoke-virtual {v0, v1}, Lrx/internal/operators/ez$a;->a(Lrx/m;)V

    .line 54
    invoke-virtual {p1, v0}, Lrx/k;->a(Lrx/m;)V

    .line 56
    iget-wide v2, p0, Lrx/internal/operators/ez;->b:J

    iget-object v4, p0, Lrx/internal/operators/ez;->c:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v0, v2, v3, v4}, Lrx/h$a;->a(Lrx/c/b;JLjava/util/concurrent/TimeUnit;)Lrx/m;

    .line 58
    iget-object v2, p0, Lrx/internal/operators/ez;->a:Lrx/i$a;

    invoke-interface {v2, v0}, Lrx/i$a;->call(Ljava/lang/Object;)V

    .line 59
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 26
    .local p0, "this":Lrx/internal/operators/ez;, "Lrx/internal/operators/ez<TT;>;"
    check-cast p1, Lrx/k;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/ez;->a(Lrx/k;)V

    return-void
.end method
