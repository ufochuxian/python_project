.class Lrx/internal/operators/bg$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/bg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
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
.field final a:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<+TT;>;"
        }
    .end annotation
.end field

.field private final b:J

.field private final c:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Future;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, "this":Lrx/internal/operators/bg$a;, "Lrx/internal/operators/bg$a<TT;>;"
    .local p1, "that":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<+TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lrx/internal/operators/bg$a;->a:Ljava/util/concurrent/Future;

    .line 50
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lrx/internal/operators/bg$a;->b:J

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lrx/internal/operators/bg$a;->c:Ljava/util/concurrent/TimeUnit;

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Future;JLjava/util/concurrent/TimeUnit;)V
    .locals 0
    .param p2, "time"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future",
            "<+TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")V"
        }
    .end annotation

    .prologue
    .line 54
    .local p0, "this":Lrx/internal/operators/bg$a;, "Lrx/internal/operators/bg$a<TT;>;"
    .local p1, "that":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<+TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lrx/internal/operators/bg$a;->a:Ljava/util/concurrent/Future;

    .line 56
    iput-wide p2, p0, Lrx/internal/operators/bg$a;->b:J

    .line 57
    iput-object p4, p0, Lrx/internal/operators/bg$a;->c:Ljava/util/concurrent/TimeUnit;

    .line 58
    return-void
.end method


# virtual methods
.method public a(Lrx/l;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/l",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 62
    .local p0, "this":Lrx/internal/operators/bg$a;, "Lrx/internal/operators/bg$a<TT;>;"
    .local p1, "subscriber":Lrx/l;, "Lrx/l<-TT;>;"
    new-instance v2, Lrx/internal/operators/bg$a$1;

    invoke-direct {v2, p0}, Lrx/internal/operators/bg$a$1;-><init>(Lrx/internal/operators/bg$a;)V

    invoke-static {v2}, Lrx/i/f;->a(Lrx/c/b;)Lrx/m;

    move-result-object v2

    invoke-virtual {p1, v2}, Lrx/l;->add(Lrx/m;)V

    .line 71
    :try_start_0
    invoke-virtual {p1}, Lrx/l;->isUnsubscribed()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    iget-object v2, p0, Lrx/internal/operators/bg$a;->c:Ljava/util/concurrent/TimeUnit;

    if-nez v2, :cond_2

    iget-object v2, p0, Lrx/internal/operators/bg$a;->a:Ljava/util/concurrent/Future;

    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    .line 75
    .local v1, "value":Ljava/lang/Object;, "TT;"
    :goto_1
    new-instance v2, Lrx/internal/producers/SingleProducer;

    invoke-direct {v2, p1, v1}, Lrx/internal/producers/SingleProducer;-><init>(Lrx/l;Ljava/lang/Object;)V

    invoke-virtual {p1, v2}, Lrx/l;->setProducer(Lrx/g;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 76
    .end local v1    # "value":Ljava/lang/Object;, "TT;"
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {p1}, Lrx/l;->isUnsubscribed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 86
    invoke-static {v0, p1}, Lrx/exceptions/a;->a(Ljava/lang/Throwable;Lrx/f;)V

    goto :goto_0

    .line 74
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_2
    :try_start_1
    iget-object v2, p0, Lrx/internal/operators/bg$a;->a:Ljava/util/concurrent/Future;

    iget-wide v4, p0, Lrx/internal/operators/bg$a;->b:J

    iget-object v3, p0, Lrx/internal/operators/bg$a;->c:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v4, v5, v3}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto :goto_1
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 43
    .local p0, "this":Lrx/internal/operators/bg$a;, "Lrx/internal/operators/bg$a<TT;>;"
    check-cast p1, Lrx/l;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/bg$a;->a(Lrx/l;)V

    return-void
.end method
