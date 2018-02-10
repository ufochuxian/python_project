.class final Lrx/schedulers/TestScheduler$b;
.super Lrx/h$a;
.source "SourceFile"

# interfaces
.implements Lrx/internal/schedulers/i$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/schedulers/TestScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lrx/schedulers/TestScheduler;

.field private final b:Lrx/i/a;


# direct methods
.method constructor <init>(Lrx/schedulers/TestScheduler;)V
    .locals 1

    .prologue
    .line 135
    iput-object p1, p0, Lrx/schedulers/TestScheduler$b;->a:Lrx/schedulers/TestScheduler;

    invoke-direct {p0}, Lrx/h$a;-><init>()V

    .line 137
    new-instance v0, Lrx/i/a;

    invoke-direct {v0}, Lrx/i/a;-><init>()V

    iput-object v0, p0, Lrx/schedulers/TestScheduler$b;->b:Lrx/i/a;

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 185
    iget-object v0, p0, Lrx/schedulers/TestScheduler$b;->a:Lrx/schedulers/TestScheduler;

    invoke-virtual {v0}, Lrx/schedulers/TestScheduler;->now()J

    move-result-wide v0

    return-wide v0
.end method

.method public a(Lrx/c/b;)Lrx/m;
    .locals 4
    .param p1, "action"    # Lrx/c/b;

    .prologue
    .line 165
    new-instance v0, Lrx/schedulers/TestScheduler$c;

    const-wide/16 v2, 0x0

    invoke-direct {v0, p0, v2, v3, p1}, Lrx/schedulers/TestScheduler$c;-><init>(Lrx/h$a;JLrx/c/b;)V

    .line 166
    .local v0, "timedAction":Lrx/schedulers/TestScheduler$c;
    iget-object v1, p0, Lrx/schedulers/TestScheduler$b;->a:Lrx/schedulers/TestScheduler;

    iget-object v1, v1, Lrx/schedulers/TestScheduler;->a:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 167
    new-instance v1, Lrx/schedulers/TestScheduler$b$2;

    invoke-direct {v1, p0, v0}, Lrx/schedulers/TestScheduler$b$2;-><init>(Lrx/schedulers/TestScheduler$b;Lrx/schedulers/TestScheduler$c;)V

    invoke-static {v1}, Lrx/i/f;->a(Lrx/c/b;)Lrx/m;

    move-result-object v1

    return-object v1
.end method

.method public a(Lrx/c/b;JJLjava/util/concurrent/TimeUnit;)Lrx/m;
    .locals 8
    .param p1, "action"    # Lrx/c/b;
    .param p2, "initialDelay"    # J
    .param p4, "period"    # J
    .param p6, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 179
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    move-object v7, p0

    invoke-static/range {v0 .. v7}, Lrx/internal/schedulers/i;->a(Lrx/h$a;Lrx/c/b;JJLjava/util/concurrent/TimeUnit;Lrx/internal/schedulers/i$a;)Lrx/m;

    move-result-object v0

    return-object v0
.end method

.method public a(Lrx/c/b;JLjava/util/concurrent/TimeUnit;)Lrx/m;
    .locals 6
    .param p1, "action"    # Lrx/c/b;
    .param p2, "delayTime"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 151
    new-instance v0, Lrx/schedulers/TestScheduler$c;

    iget-object v1, p0, Lrx/schedulers/TestScheduler$b;->a:Lrx/schedulers/TestScheduler;

    iget-wide v2, v1, Lrx/schedulers/TestScheduler;->c:J

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-direct {v0, p0, v2, v3, p1}, Lrx/schedulers/TestScheduler$c;-><init>(Lrx/h$a;JLrx/c/b;)V

    .line 152
    .local v0, "timedAction":Lrx/schedulers/TestScheduler$c;
    iget-object v1, p0, Lrx/schedulers/TestScheduler$b;->a:Lrx/schedulers/TestScheduler;

    iget-object v1, v1, Lrx/schedulers/TestScheduler;->a:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 153
    new-instance v1, Lrx/schedulers/TestScheduler$b$1;

    invoke-direct {v1, p0, v0}, Lrx/schedulers/TestScheduler$b$1;-><init>(Lrx/schedulers/TestScheduler$b;Lrx/schedulers/TestScheduler$c;)V

    invoke-static {v1}, Lrx/i/f;->a(Lrx/c/b;)Lrx/m;

    move-result-object v1

    return-object v1
.end method

.method public b()J
    .locals 2

    .prologue
    .line 190
    iget-object v0, p0, Lrx/schedulers/TestScheduler$b;->a:Lrx/schedulers/TestScheduler;

    iget-wide v0, v0, Lrx/schedulers/TestScheduler;->c:J

    return-wide v0
.end method

.method public isUnsubscribed()Z
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lrx/schedulers/TestScheduler$b;->b:Lrx/i/a;

    invoke-virtual {v0}, Lrx/i/a;->isUnsubscribed()Z

    move-result v0

    return v0
.end method

.method public unsubscribe()V
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lrx/schedulers/TestScheduler$b;->b:Lrx/i/a;

    invoke-virtual {v0}, Lrx/i/a;->unsubscribe()V

    .line 142
    return-void
.end method
