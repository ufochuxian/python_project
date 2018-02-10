.class public final Lrx/internal/operators/dj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/e$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/dj$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/e$b",
        "<TT;TT;>;"
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
    .line 37
    .local p0, "this":Lrx/internal/operators/dj;, "Lrx/internal/operators/dj<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-wide p1, p0, Lrx/internal/operators/dj;->a:J

    .line 39
    iput-object p3, p0, Lrx/internal/operators/dj;->b:Ljava/util/concurrent/TimeUnit;

    .line 40
    iput-object p4, p0, Lrx/internal/operators/dj;->c:Lrx/h;

    .line 41
    return-void
.end method


# virtual methods
.method public a(Lrx/l;)Lrx/l;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/l",
            "<-TT;>;)",
            "Lrx/l",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 45
    .local p0, "this":Lrx/internal/operators/dj;, "Lrx/internal/operators/dj<TT;>;"
    .local p1, "child":Lrx/l;, "Lrx/l<-TT;>;"
    iget-object v2, p0, Lrx/internal/operators/dj;->c:Lrx/h;

    invoke-virtual {v2}, Lrx/h;->createWorker()Lrx/h$a;

    move-result-object v1

    .line 46
    .local v1, "worker":Lrx/h$a;
    invoke-virtual {p1, v1}, Lrx/l;->add(Lrx/m;)V

    .line 48
    new-instance v0, Lrx/internal/operators/dj$a;

    new-instance v2, Lrx/e/g;

    invoke-direct {v2, p1}, Lrx/e/g;-><init>(Lrx/l;)V

    invoke-direct {v0, v2}, Lrx/internal/operators/dj$a;-><init>(Lrx/l;)V

    .line 49
    .local v0, "ts":Lrx/internal/operators/dj$a;, "Lrx/internal/operators/dj$a<TT;>;"
    iget-wide v2, p0, Lrx/internal/operators/dj;->a:J

    iget-object v4, p0, Lrx/internal/operators/dj;->b:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v0, v2, v3, v4}, Lrx/h$a;->a(Lrx/c/b;JLjava/util/concurrent/TimeUnit;)Lrx/m;

    .line 50
    return-object v0
.end method

.method public synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 32
    .local p0, "this":Lrx/internal/operators/dj;, "Lrx/internal/operators/dj<TT;>;"
    check-cast p1, Lrx/l;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/dj;->a(Lrx/l;)Lrx/l;

    move-result-object v0

    return-object v0
.end method
