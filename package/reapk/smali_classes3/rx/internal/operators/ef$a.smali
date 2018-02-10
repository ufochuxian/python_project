.class final Lrx/internal/operators/ef$a;
.super Lrx/k;
.source "SourceFile"

# interfaces
.implements Lrx/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/ef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/k",
        "<TT;>;",
        "Lrx/c/b;"
    }
.end annotation


# instance fields
.field final a:Lrx/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/k",
            "<-TT;>;"
        }
    .end annotation
.end field

.field final b:Lrx/h$a;

.field final c:J

.field final d:Ljava/util/concurrent/TimeUnit;

.field e:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field f:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Lrx/k;Lrx/h$a;JLjava/util/concurrent/TimeUnit;)V
    .locals 1
    .param p2, "w"    # Lrx/h$a;
    .param p3, "delay"    # J
    .param p5, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/k",
            "<-TT;>;",
            "Lrx/h$a;",
            "J",
            "Ljava/util/concurrent/TimeUnit;",
            ")V"
        }
    .end annotation

    .prologue
    .line 73
    .local p0, "this":Lrx/internal/operators/ef$a;, "Lrx/internal/operators/ef$a<TT;>;"
    .local p1, "actual":Lrx/k;, "Lrx/k<-TT;>;"
    invoke-direct {p0}, Lrx/k;-><init>()V

    .line 74
    iput-object p1, p0, Lrx/internal/operators/ef$a;->a:Lrx/k;

    .line 75
    iput-object p2, p0, Lrx/internal/operators/ef$a;->b:Lrx/h$a;

    .line 76
    iput-wide p3, p0, Lrx/internal/operators/ef$a;->c:J

    .line 77
    iput-object p5, p0, Lrx/internal/operators/ef$a;->d:Ljava/util/concurrent/TimeUnit;

    .line 78
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 82
    .local p0, "this":Lrx/internal/operators/ef$a;, "Lrx/internal/operators/ef$a<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Lrx/internal/operators/ef$a;->e:Ljava/lang/Object;

    .line 83
    iget-object v0, p0, Lrx/internal/operators/ef$a;->b:Lrx/h$a;

    iget-wide v2, p0, Lrx/internal/operators/ef$a;->c:J

    iget-object v1, p0, Lrx/internal/operators/ef$a;->d:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p0, v2, v3, v1}, Lrx/h$a;->a(Lrx/c/b;JLjava/util/concurrent/TimeUnit;)Lrx/m;

    .line 84
    return-void
.end method

.method public call()V
    .locals 4

    .prologue
    .line 95
    .local p0, "this":Lrx/internal/operators/ef$a;, "Lrx/internal/operators/ef$a<TT;>;"
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/ef$a;->f:Ljava/lang/Throwable;

    .line 96
    .local v0, "ex":Ljava/lang/Throwable;
    if-eqz v0, :cond_0

    .line 97
    const/4 v2, 0x0

    iput-object v2, p0, Lrx/internal/operators/ef$a;->f:Ljava/lang/Throwable;

    .line 98
    iget-object v2, p0, Lrx/internal/operators/ef$a;->a:Lrx/k;

    invoke-virtual {v2, v0}, Lrx/k;->onError(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    :goto_0
    iget-object v2, p0, Lrx/internal/operators/ef$a;->b:Lrx/h$a;

    invoke-virtual {v2}, Lrx/h$a;->unsubscribe()V

    .line 107
    return-void

    .line 100
    :cond_0
    :try_start_1
    iget-object v1, p0, Lrx/internal/operators/ef$a;->e:Ljava/lang/Object;

    .line 101
    .local v1, "v":Ljava/lang/Object;, "TT;"
    const/4 v2, 0x0

    iput-object v2, p0, Lrx/internal/operators/ef$a;->e:Ljava/lang/Object;

    .line 102
    iget-object v2, p0, Lrx/internal/operators/ef$a;->a:Lrx/k;

    invoke-virtual {v2, v1}, Lrx/k;->a(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 105
    .end local v0    # "ex":Ljava/lang/Throwable;
    .end local v1    # "v":Ljava/lang/Object;, "TT;"
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lrx/internal/operators/ef$a;->b:Lrx/h$a;

    invoke-virtual {v3}, Lrx/h$a;->unsubscribe()V

    throw v2
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "error"    # Ljava/lang/Throwable;

    .prologue
    .line 88
    .local p0, "this":Lrx/internal/operators/ef$a;, "Lrx/internal/operators/ef$a<TT;>;"
    iput-object p1, p0, Lrx/internal/operators/ef$a;->f:Ljava/lang/Throwable;

    .line 89
    iget-object v0, p0, Lrx/internal/operators/ef$a;->b:Lrx/h$a;

    iget-wide v2, p0, Lrx/internal/operators/ef$a;->c:J

    iget-object v1, p0, Lrx/internal/operators/ef$a;->d:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p0, v2, v3, v1}, Lrx/h$a;->a(Lrx/c/b;JLjava/util/concurrent/TimeUnit;)Lrx/m;

    .line 90
    return-void
.end method
