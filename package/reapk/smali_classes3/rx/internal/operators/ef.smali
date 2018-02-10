.class public final Lrx/internal/operators/ef;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/i$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/ef$a;
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


# direct methods
.method public constructor <init>(Lrx/i$a;JLjava/util/concurrent/TimeUnit;Lrx/h;)V
    .locals 0
    .param p2, "delay"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p5, "scheduler"    # Lrx/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/i$a",
            "<TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/h;",
            ")V"
        }
    .end annotation

    .prologue
    .line 41
    .local p0, "this":Lrx/internal/operators/ef;, "Lrx/internal/operators/ef<TT;>;"
    .local p1, "source":Lrx/i$a;, "Lrx/i$a<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lrx/internal/operators/ef;->a:Lrx/i$a;

    .line 43
    iput-object p5, p0, Lrx/internal/operators/ef;->d:Lrx/h;

    .line 44
    iput-wide p2, p0, Lrx/internal/operators/ef;->b:J

    .line 45
    iput-object p4, p0, Lrx/internal/operators/ef;->c:Ljava/util/concurrent/TimeUnit;

    .line 46
    return-void
.end method


# virtual methods
.method public a(Lrx/k;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/k",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 50
    .local p0, "this":Lrx/internal/operators/ef;, "Lrx/internal/operators/ef<TT;>;"
    .local p1, "t":Lrx/k;, "Lrx/k<-TT;>;"
    iget-object v0, p0, Lrx/internal/operators/ef;->d:Lrx/h;

    invoke-virtual {v0}, Lrx/h;->createWorker()Lrx/h$a;

    move-result-object v3

    .line 52
    .local v3, "w":Lrx/h$a;
    new-instance v1, Lrx/internal/operators/ef$a;

    iget-wide v4, p0, Lrx/internal/operators/ef;->b:J

    iget-object v6, p0, Lrx/internal/operators/ef;->c:Ljava/util/concurrent/TimeUnit;

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lrx/internal/operators/ef$a;-><init>(Lrx/k;Lrx/h$a;JLjava/util/concurrent/TimeUnit;)V

    .line 54
    .local v1, "parent":Lrx/internal/operators/ef$a;, "Lrx/internal/operators/ef$a<TT;>;"
    invoke-virtual {p1, v3}, Lrx/k;->a(Lrx/m;)V

    .line 55
    invoke-virtual {p1, v1}, Lrx/k;->a(Lrx/m;)V

    .line 57
    iget-object v0, p0, Lrx/internal/operators/ef;->a:Lrx/i$a;

    invoke-interface {v0, v1}, Lrx/i$a;->call(Ljava/lang/Object;)V

    .line 58
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 31
    .local p0, "this":Lrx/internal/operators/ef;, "Lrx/internal/operators/ef<TT;>;"
    check-cast p1, Lrx/k;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/ef;->a(Lrx/k;)V

    return-void
.end method
