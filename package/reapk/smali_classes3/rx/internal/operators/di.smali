.class public final Lrx/internal/operators/di;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/e$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/di$a;
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

.field final b:Lrx/h;

.field final c:I


# direct methods
.method public constructor <init>(IJLjava/util/concurrent/TimeUnit;Lrx/h;)V
    .locals 2
    .param p1, "count"    # I
    .param p2, "time"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p5, "scheduler"    # Lrx/h;

    .prologue
    .line 45
    .local p0, "this":Lrx/internal/operators/di;, "Lrx/internal/operators/di<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    if-gez p1, :cond_0

    .line 47
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "count could not be negative"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_0
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iput-wide v0, p0, Lrx/internal/operators/di;->a:J

    .line 50
    iput-object p5, p0, Lrx/internal/operators/di;->b:Lrx/h;

    .line 51
    iput p1, p0, Lrx/internal/operators/di;->c:I

    .line 52
    return-void
.end method

.method public constructor <init>(JLjava/util/concurrent/TimeUnit;Lrx/h;)V
    .locals 3
    .param p1, "time"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "scheduler"    # Lrx/h;

    .prologue
    .line 39
    .local p0, "this":Lrx/internal/operators/di;, "Lrx/internal/operators/di<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iput-wide v0, p0, Lrx/internal/operators/di;->a:J

    .line 41
    iput-object p4, p0, Lrx/internal/operators/di;->b:Lrx/h;

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Lrx/internal/operators/di;->c:I

    .line 43
    return-void
.end method


# virtual methods
.method public a(Lrx/l;)Lrx/l;
    .locals 7
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
    .local p0, "this":Lrx/internal/operators/di;, "Lrx/internal/operators/di<TT;>;"
    .local p1, "subscriber":Lrx/l;, "Lrx/l<-TT;>;"
    new-instance v1, Lrx/internal/operators/di$a;

    iget v3, p0, Lrx/internal/operators/di;->c:I

    iget-wide v4, p0, Lrx/internal/operators/di;->a:J

    iget-object v6, p0, Lrx/internal/operators/di;->b:Lrx/h;

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lrx/internal/operators/di$a;-><init>(Lrx/l;IJLrx/h;)V

    .line 58
    .local v1, "parent":Lrx/internal/operators/di$a;, "Lrx/internal/operators/di$a<TT;>;"
    invoke-virtual {p1, v1}, Lrx/l;->add(Lrx/m;)V

    .line 59
    new-instance v0, Lrx/internal/operators/di$1;

    invoke-direct {v0, p0, v1}, Lrx/internal/operators/di$1;-><init>(Lrx/internal/operators/di;Lrx/internal/operators/di$a;)V

    invoke-virtual {p1, v0}, Lrx/l;->setProducer(Lrx/g;)V

    .line 66
    return-object v1
.end method

.method public synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 33
    .local p0, "this":Lrx/internal/operators/di;, "Lrx/internal/operators/di<TT;>;"
    check-cast p1, Lrx/l;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/di;->a(Lrx/l;)Lrx/l;

    move-result-object v0

    return-object v0
.end method
