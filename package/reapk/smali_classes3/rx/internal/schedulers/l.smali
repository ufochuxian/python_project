.class Lrx/internal/schedulers/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/c/b;


# instance fields
.field private final a:Lrx/c/b;

.field private final b:Lrx/h$a;

.field private final c:J


# direct methods
.method public constructor <init>(Lrx/c/b;Lrx/h$a;J)V
    .locals 1
    .param p1, "underlying"    # Lrx/c/b;
    .param p2, "scheduler"    # Lrx/h$a;
    .param p3, "execTime"    # J

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lrx/internal/schedulers/l;->a:Lrx/c/b;

    .line 29
    iput-object p2, p0, Lrx/internal/schedulers/l;->b:Lrx/h$a;

    .line 30
    iput-wide p3, p0, Lrx/internal/schedulers/l;->c:J

    .line 31
    return-void
.end method


# virtual methods
.method public call()V
    .locals 8

    .prologue
    .line 35
    iget-object v3, p0, Lrx/internal/schedulers/l;->b:Lrx/h$a;

    invoke-virtual {v3}, Lrx/h$a;->isUnsubscribed()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 54
    :cond_0
    :goto_0
    return-void

    .line 39
    :cond_1
    iget-wide v4, p0, Lrx/internal/schedulers/l;->c:J

    iget-object v3, p0, Lrx/internal/schedulers/l;->b:Lrx/h$a;

    invoke-virtual {v3}, Lrx/h$a;->a()J

    move-result-wide v6

    sub-long v0, v4, v6

    .line 40
    .local v0, "delay":J
    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-lez v3, :cond_2

    .line 42
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    :cond_2
    :goto_1
    iget-object v3, p0, Lrx/internal/schedulers/l;->b:Lrx/h$a;

    invoke-virtual {v3}, Lrx/h$a;->isUnsubscribed()Z

    move-result v3

    if-nez v3, :cond_0

    .line 53
    iget-object v3, p0, Lrx/internal/schedulers/l;->a:Lrx/c/b;

    invoke-interface {v3}, Lrx/c/b;->call()V

    goto :goto_0

    .line 43
    :catch_0
    move-exception v2

    .line 44
    .local v2, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    .line 45
    invoke-static {v2}, Lrx/exceptions/a;->a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    goto :goto_1
.end method
