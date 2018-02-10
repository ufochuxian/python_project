.class public final Lrx/internal/operators/bo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/e$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/bo$a;,
        Lrx/internal/operators/bo$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/e$b",
        "<",
        "Ljava/util/List",
        "<TT;>;TT;>;"
    }
.end annotation


# instance fields
.field final a:J

.field final b:J

.field final c:Ljava/util/concurrent/TimeUnit;

.field final d:I

.field final e:Lrx/h;


# direct methods
.method public constructor <init>(JJLjava/util/concurrent/TimeUnit;ILrx/h;)V
    .locals 1
    .param p1, "timespan"    # J
    .param p3, "timeshift"    # J
    .param p5, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p6, "count"    # I
    .param p7, "scheduler"    # Lrx/h;

    .prologue
    .line 62
    .local p0, "this":Lrx/internal/operators/bo;, "Lrx/internal/operators/bo<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-wide p1, p0, Lrx/internal/operators/bo;->a:J

    .line 64
    iput-wide p3, p0, Lrx/internal/operators/bo;->b:J

    .line 65
    iput-object p5, p0, Lrx/internal/operators/bo;->c:Ljava/util/concurrent/TimeUnit;

    .line 66
    iput p6, p0, Lrx/internal/operators/bo;->d:I

    .line 67
    iput-object p7, p0, Lrx/internal/operators/bo;->e:Lrx/h;

    .line 68
    return-void
.end method


# virtual methods
.method public a(Lrx/l;)Lrx/l;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/l",
            "<-",
            "Ljava/util/List",
            "<TT;>;>;)",
            "Lrx/l",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 72
    .local p0, "this":Lrx/internal/operators/bo;, "Lrx/internal/operators/bo<TT;>;"
    .local p1, "child":Lrx/l;, "Lrx/l<-Ljava/util/List<TT;>;>;"
    iget-object v4, p0, Lrx/internal/operators/bo;->e:Lrx/h;

    invoke-virtual {v4}, Lrx/h;->createWorker()Lrx/h$a;

    move-result-object v0

    .line 73
    .local v0, "inner":Lrx/h$a;
    new-instance v3, Lrx/e/g;

    invoke-direct {v3, p1}, Lrx/e/g;-><init>(Lrx/l;)V

    .line 75
    .local v3, "serialized":Lrx/e/g;, "Lrx/e/g<Ljava/util/List<TT;>;>;"
    iget-wide v4, p0, Lrx/internal/operators/bo;->a:J

    iget-wide v6, p0, Lrx/internal/operators/bo;->b:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 76
    new-instance v1, Lrx/internal/operators/bo$a;

    invoke-direct {v1, p0, v3, v0}, Lrx/internal/operators/bo$a;-><init>(Lrx/internal/operators/bo;Lrx/l;Lrx/h$a;)V

    .line 77
    .local v1, "parent":Lrx/internal/operators/bo$a;, "Lrx/internal/operators/bo<TT;>.a;"
    invoke-virtual {v1, v0}, Lrx/internal/operators/bo$a;->add(Lrx/m;)V

    .line 78
    invoke-virtual {p1, v1}, Lrx/l;->add(Lrx/m;)V

    .line 79
    invoke-virtual {v1}, Lrx/internal/operators/bo$a;->a()V

    .line 88
    .end local v1    # "parent":Lrx/internal/operators/bo$a;, "Lrx/internal/operators/bo<TT;>.a;"
    :goto_0
    return-object v1

    .line 83
    :cond_0
    new-instance v2, Lrx/internal/operators/bo$b;

    invoke-direct {v2, p0, v3, v0}, Lrx/internal/operators/bo$b;-><init>(Lrx/internal/operators/bo;Lrx/l;Lrx/h$a;)V

    .line 84
    .local v2, "parent":Lrx/internal/operators/bo$b;, "Lrx/internal/operators/bo<TT;>.b;"
    invoke-virtual {v2, v0}, Lrx/internal/operators/bo$b;->add(Lrx/m;)V

    .line 85
    invoke-virtual {p1, v2}, Lrx/l;->add(Lrx/m;)V

    .line 86
    invoke-virtual {v2}, Lrx/internal/operators/bo$b;->b()V

    .line 87
    invoke-virtual {v2}, Lrx/internal/operators/bo$b;->a()V

    move-object v1, v2

    .line 88
    goto :goto_0
.end method

.method public synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 43
    .local p0, "this":Lrx/internal/operators/bo;, "Lrx/internal/operators/bo<TT;>;"
    check-cast p1, Lrx/l;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/bo;->a(Lrx/l;)Lrx/l;

    move-result-object v0

    return-object v0
.end method
