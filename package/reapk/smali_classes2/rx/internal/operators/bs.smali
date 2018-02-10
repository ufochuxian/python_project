.class public final Lrx/internal/operators/bs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/e$b;


# annotations
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
    .param p1, "delay"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "scheduler"    # Lrx/h;

    .prologue
    .line 37
    .local p0, "this":Lrx/internal/operators/bs;, "Lrx/internal/operators/bs<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-wide p1, p0, Lrx/internal/operators/bs;->a:J

    .line 39
    iput-object p3, p0, Lrx/internal/operators/bs;->b:Ljava/util/concurrent/TimeUnit;

    .line 40
    iput-object p4, p0, Lrx/internal/operators/bs;->c:Lrx/h;

    .line 41
    return-void
.end method


# virtual methods
.method public a(Lrx/l;)Lrx/l;
    .locals 2
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
    .local p0, "this":Lrx/internal/operators/bs;, "Lrx/internal/operators/bs<TT;>;"
    .local p1, "child":Lrx/l;, "Lrx/l<-TT;>;"
    iget-object v1, p0, Lrx/internal/operators/bs;->c:Lrx/h;

    invoke-virtual {v1}, Lrx/h;->createWorker()Lrx/h$a;

    move-result-object v0

    .line 46
    .local v0, "worker":Lrx/h$a;
    invoke-virtual {p1, v0}, Lrx/l;->add(Lrx/m;)V

    .line 47
    new-instance v1, Lrx/internal/operators/bs$1;

    invoke-direct {v1, p0, p1, v0, p1}, Lrx/internal/operators/bs$1;-><init>(Lrx/internal/operators/bs;Lrx/l;Lrx/h$a;Lrx/l;)V

    return-object v1
.end method

.method public synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 31
    .local p0, "this":Lrx/internal/operators/bs;, "Lrx/internal/operators/bs<TT;>;"
    check-cast p1, Lrx/l;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/bs;->a(Lrx/l;)Lrx/l;

    move-result-object v0

    return-object v0
.end method
