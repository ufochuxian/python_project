.class public final Lrx/internal/operators/br;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/e$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/br$a;
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
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "scheduler"    # Lrx/h;

    .prologue
    .line 48
    .local p0, "this":Lrx/internal/operators/br;, "Lrx/internal/operators/br<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-wide p1, p0, Lrx/internal/operators/br;->a:J

    .line 50
    iput-object p3, p0, Lrx/internal/operators/br;->b:Ljava/util/concurrent/TimeUnit;

    .line 51
    iput-object p4, p0, Lrx/internal/operators/br;->c:Lrx/h;

    .line 52
    return-void
.end method


# virtual methods
.method public a(Lrx/l;)Lrx/l;
    .locals 6
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
    .line 56
    .local p0, "this":Lrx/internal/operators/br;, "Lrx/internal/operators/br<TT;>;"
    .local p1, "child":Lrx/l;, "Lrx/l<-TT;>;"
    iget-object v0, p0, Lrx/internal/operators/br;->c:Lrx/h;

    invoke-virtual {v0}, Lrx/h;->createWorker()Lrx/h$a;

    move-result-object v4

    .line 57
    .local v4, "worker":Lrx/h$a;
    new-instance v5, Lrx/e/g;

    invoke-direct {v5, p1}, Lrx/e/g;-><init>(Lrx/l;)V

    .line 58
    .local v5, "s":Lrx/e/g;, "Lrx/e/g<TT;>;"
    new-instance v3, Lrx/i/e;

    invoke-direct {v3}, Lrx/i/e;-><init>()V

    .line 60
    .local v3, "serial":Lrx/i/e;
    invoke-virtual {v5, v4}, Lrx/e/g;->add(Lrx/m;)V

    .line 61
    invoke-virtual {v5, v3}, Lrx/e/g;->add(Lrx/m;)V

    .line 63
    new-instance v0, Lrx/internal/operators/br$1;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lrx/internal/operators/br$1;-><init>(Lrx/internal/operators/br;Lrx/l;Lrx/i/e;Lrx/h$a;Lrx/e/g;)V

    return-object v0
.end method

.method public synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 35
    .local p0, "this":Lrx/internal/operators/br;, "Lrx/internal/operators/br<TT;>;"
    check-cast p1, Lrx/l;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/br;->a(Lrx/l;)Lrx/l;

    move-result-object v0

    return-object v0
.end method
