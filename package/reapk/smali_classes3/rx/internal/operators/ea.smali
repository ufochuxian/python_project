.class public final Lrx/internal/operators/ea;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/e$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/ea$c;,
        Lrx/internal/operators/ea$a;,
        Lrx/internal/operators/ea$b;,
        Lrx/internal/operators/ea$d;
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
        "Lrx/e",
        "<TT;>;TT;>;"
    }
.end annotation


# static fields
.field static final f:Ljava/lang/Object;


# instance fields
.field final a:J

.field final b:J

.field final c:Ljava/util/concurrent/TimeUnit;

.field final d:Lrx/h;

.field final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lrx/internal/operators/ea;->f:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(JJLjava/util/concurrent/TimeUnit;ILrx/h;)V
    .locals 1
    .param p1, "timespan"    # J
    .param p3, "timeshift"    # J
    .param p5, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p6, "size"    # I
    .param p7, "scheduler"    # Lrx/h;

    .prologue
    .line 53
    .local p0, "this":Lrx/internal/operators/ea;, "Lrx/internal/operators/ea<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-wide p1, p0, Lrx/internal/operators/ea;->a:J

    .line 55
    iput-wide p3, p0, Lrx/internal/operators/ea;->b:J

    .line 56
    iput-object p5, p0, Lrx/internal/operators/ea;->c:Ljava/util/concurrent/TimeUnit;

    .line 57
    iput p6, p0, Lrx/internal/operators/ea;->e:I

    .line 58
    iput-object p7, p0, Lrx/internal/operators/ea;->d:Lrx/h;

    .line 59
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
            "Lrx/e",
            "<TT;>;>;)",
            "Lrx/l",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 64
    .local p0, "this":Lrx/internal/operators/ea;, "Lrx/internal/operators/ea<TT;>;"
    .local p1, "child":Lrx/l;, "Lrx/l<-Lrx/e<TT;>;>;"
    iget-object v3, p0, Lrx/internal/operators/ea;->d:Lrx/h;

    invoke-virtual {v3}, Lrx/h;->createWorker()Lrx/h$a;

    move-result-object v2

    .line 66
    .local v2, "worker":Lrx/h$a;
    iget-wide v4, p0, Lrx/internal/operators/ea;->a:J

    iget-wide v6, p0, Lrx/internal/operators/ea;->b:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 67
    new-instance v0, Lrx/internal/operators/ea$b;

    invoke-direct {v0, p0, p1, v2}, Lrx/internal/operators/ea$b;-><init>(Lrx/internal/operators/ea;Lrx/l;Lrx/h$a;)V

    .line 68
    .local v0, "s":Lrx/internal/operators/ea$b;, "Lrx/internal/operators/ea<TT;>.b;"
    invoke-virtual {v0, v2}, Lrx/internal/operators/ea$b;->add(Lrx/m;)V

    .line 69
    invoke-virtual {v0}, Lrx/internal/operators/ea$b;->c()V

    .line 77
    .end local v0    # "s":Lrx/internal/operators/ea$b;, "Lrx/internal/operators/ea<TT;>.b;"
    :goto_0
    return-object v0

    .line 73
    :cond_0
    new-instance v1, Lrx/internal/operators/ea$c;

    invoke-direct {v1, p0, p1, v2}, Lrx/internal/operators/ea$c;-><init>(Lrx/internal/operators/ea;Lrx/l;Lrx/h$a;)V

    .line 74
    .local v1, "s":Lrx/internal/operators/ea$c;, "Lrx/internal/operators/ea<TT;>.c;"
    invoke-virtual {v1, v2}, Lrx/internal/operators/ea$c;->add(Lrx/m;)V

    .line 75
    invoke-virtual {v1}, Lrx/internal/operators/ea$c;->b()V

    .line 76
    invoke-virtual {v1}, Lrx/internal/operators/ea$c;->a()V

    move-object v0, v1

    .line 77
    goto :goto_0
.end method

.method public synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 41
    .local p0, "this":Lrx/internal/operators/ea;, "Lrx/internal/operators/ea<TT;>;"
    check-cast p1, Lrx/l;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/ea;->a(Lrx/l;)Lrx/l;

    move-result-object v0

    return-object v0
.end method
