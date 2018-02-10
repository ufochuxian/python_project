.class final Lrx/internal/schedulers/i$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/schedulers/i;->a(Lrx/h$a;Lrx/c/b;JJLjava/util/concurrent/TimeUnit;Lrx/internal/schedulers/i$a;)Lrx/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field a:J

.field b:J

.field c:J

.field final synthetic d:J

.field final synthetic e:J

.field final synthetic f:Lrx/c/b;

.field final synthetic g:Lrx/internal/subscriptions/SequentialSubscription;

.field final synthetic h:Lrx/internal/schedulers/i$a;

.field final synthetic i:Lrx/h$a;

.field final synthetic j:J


# direct methods
.method constructor <init>(JJLrx/c/b;Lrx/internal/subscriptions/SequentialSubscription;Lrx/internal/schedulers/i$a;Lrx/h$a;J)V
    .locals 3

    .prologue
    .line 66
    iput-wide p1, p0, Lrx/internal/schedulers/i$1;->d:J

    iput-wide p3, p0, Lrx/internal/schedulers/i$1;->e:J

    iput-object p5, p0, Lrx/internal/schedulers/i$1;->f:Lrx/c/b;

    iput-object p6, p0, Lrx/internal/schedulers/i$1;->g:Lrx/internal/subscriptions/SequentialSubscription;

    iput-object p7, p0, Lrx/internal/schedulers/i$1;->h:Lrx/internal/schedulers/i$a;

    iput-object p8, p0, Lrx/internal/schedulers/i$1;->i:Lrx/h$a;

    iput-wide p9, p0, Lrx/internal/schedulers/i$1;->j:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iget-wide v0, p0, Lrx/internal/schedulers/i$1;->d:J

    iput-wide v0, p0, Lrx/internal/schedulers/i$1;->b:J

    .line 69
    iget-wide v0, p0, Lrx/internal/schedulers/i$1;->e:J

    iput-wide v0, p0, Lrx/internal/schedulers/i$1;->c:J

    return-void
.end method


# virtual methods
.method public call()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x1

    .line 72
    iget-object v6, p0, Lrx/internal/schedulers/i$1;->f:Lrx/c/b;

    invoke-interface {v6}, Lrx/c/b;->call()V

    .line 74
    iget-object v6, p0, Lrx/internal/schedulers/i$1;->g:Lrx/internal/subscriptions/SequentialSubscription;

    invoke-virtual {v6}, Lrx/internal/subscriptions/SequentialSubscription;->isUnsubscribed()Z

    move-result v6

    if-nez v6, :cond_1

    .line 78
    iget-object v6, p0, Lrx/internal/schedulers/i$1;->h:Lrx/internal/schedulers/i$a;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lrx/internal/schedulers/i$1;->h:Lrx/internal/schedulers/i$a;

    invoke-interface {v6}, Lrx/internal/schedulers/i$a;->b()J

    move-result-wide v4

    .line 80
    .local v4, "nowNanos":J
    :goto_0
    sget-wide v6, Lrx/internal/schedulers/i;->a:J

    add-long/2addr v6, v4

    iget-wide v8, p0, Lrx/internal/schedulers/i$1;->b:J

    cmp-long v6, v6, v8

    if-ltz v6, :cond_0

    iget-wide v6, p0, Lrx/internal/schedulers/i$1;->b:J

    iget-wide v8, p0, Lrx/internal/schedulers/i$1;->j:J

    add-long/2addr v6, v8

    sget-wide v8, Lrx/internal/schedulers/i;->a:J

    add-long/2addr v6, v8

    cmp-long v6, v4, v6

    if-ltz v6, :cond_3

    .line 82
    :cond_0
    iget-wide v6, p0, Lrx/internal/schedulers/i$1;->j:J

    add-long v2, v4, v6

    .line 87
    .local v2, "nextTick":J
    iget-wide v6, p0, Lrx/internal/schedulers/i$1;->j:J

    iget-wide v8, p0, Lrx/internal/schedulers/i$1;->a:J

    add-long/2addr v8, v10

    iput-wide v8, p0, Lrx/internal/schedulers/i$1;->a:J

    mul-long/2addr v6, v8

    sub-long v6, v2, v6

    iput-wide v6, p0, Lrx/internal/schedulers/i$1;->c:J

    .line 91
    :goto_1
    iput-wide v4, p0, Lrx/internal/schedulers/i$1;->b:J

    .line 93
    sub-long v0, v2, v4

    .line 94
    .local v0, "delay":J
    iget-object v6, p0, Lrx/internal/schedulers/i$1;->g:Lrx/internal/subscriptions/SequentialSubscription;

    iget-object v7, p0, Lrx/internal/schedulers/i$1;->i:Lrx/h$a;

    sget-object v8, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v7, p0, v0, v1, v8}, Lrx/h$a;->a(Lrx/c/b;JLjava/util/concurrent/TimeUnit;)Lrx/m;

    move-result-object v7

    invoke-virtual {v6, v7}, Lrx/internal/subscriptions/SequentialSubscription;->replace(Lrx/m;)Z

    .line 96
    .end local v0    # "delay":J
    .end local v2    # "nextTick":J
    .end local v4    # "nowNanos":J
    :cond_1
    return-void

    .line 78
    :cond_2
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v7, p0, Lrx/internal/schedulers/i$1;->i:Lrx/h$a;

    invoke-virtual {v7}, Lrx/h$a;->a()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    goto :goto_0

    .line 89
    .restart local v4    # "nowNanos":J
    :cond_3
    iget-wide v6, p0, Lrx/internal/schedulers/i$1;->c:J

    iget-wide v8, p0, Lrx/internal/schedulers/i$1;->a:J

    add-long/2addr v8, v10

    iput-wide v8, p0, Lrx/internal/schedulers/i$1;->a:J

    iget-wide v10, p0, Lrx/internal/schedulers/i$1;->j:J

    mul-long/2addr v8, v10

    add-long v2, v6, v8

    .restart local v2    # "nextTick":J
    goto :goto_1
.end method
