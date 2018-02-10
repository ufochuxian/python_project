.class public final Lrx/internal/operators/ct;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/e$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/ct$a;
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
    .line 41
    .local p0, "this":Lrx/internal/operators/ct;, "Lrx/internal/operators/ct<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-wide p1, p0, Lrx/internal/operators/ct;->a:J

    .line 43
    iput-object p3, p0, Lrx/internal/operators/ct;->b:Ljava/util/concurrent/TimeUnit;

    .line 44
    iput-object p4, p0, Lrx/internal/operators/ct;->c:Lrx/h;

    .line 45
    return-void
.end method


# virtual methods
.method public a(Lrx/l;)Lrx/l;
    .locals 8
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
    .line 49
    .local p0, "this":Lrx/internal/operators/ct;, "Lrx/internal/operators/ct<TT;>;"
    .local p1, "child":Lrx/l;, "Lrx/l<-TT;>;"
    new-instance v7, Lrx/e/g;

    invoke-direct {v7, p1}, Lrx/e/g;-><init>(Lrx/l;)V

    .line 50
    .local v7, "s":Lrx/e/g;, "Lrx/e/g<TT;>;"
    iget-object v2, p0, Lrx/internal/operators/ct;->c:Lrx/h;

    invoke-virtual {v2}, Lrx/h;->createWorker()Lrx/h$a;

    move-result-object v0

    .line 51
    .local v0, "worker":Lrx/h$a;
    invoke-virtual {p1, v0}, Lrx/l;->add(Lrx/m;)V

    .line 53
    new-instance v1, Lrx/internal/operators/ct$a;

    invoke-direct {v1, v7}, Lrx/internal/operators/ct$a;-><init>(Lrx/l;)V

    .line 54
    .local v1, "sampler":Lrx/internal/operators/ct$a;, "Lrx/internal/operators/ct$a<TT;>;"
    invoke-virtual {p1, v1}, Lrx/l;->add(Lrx/m;)V

    .line 55
    iget-wide v2, p0, Lrx/internal/operators/ct;->a:J

    iget-wide v4, p0, Lrx/internal/operators/ct;->a:J

    iget-object v6, p0, Lrx/internal/operators/ct;->b:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v0 .. v6}, Lrx/h$a;->a(Lrx/c/b;JJLjava/util/concurrent/TimeUnit;)Lrx/m;

    .line 57
    return-object v1
.end method

.method public synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 36
    .local p0, "this":Lrx/internal/operators/ct;, "Lrx/internal/operators/ct<TT;>;"
    check-cast p1, Lrx/l;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/ct;->a(Lrx/l;)Lrx/l;

    move-result-object v0

    return-object v0
.end method
