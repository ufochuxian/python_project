.class final Lrx/internal/schedulers/a$b;
.super Lrx/h$a;
.source "SourceFile"

# interfaces
.implements Lrx/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/schedulers/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field final a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final b:Lrx/i/b;

.field private final c:Lrx/internal/schedulers/a$a;

.field private final d:Lrx/internal/schedulers/a$c;


# direct methods
.method constructor <init>(Lrx/internal/schedulers/a$a;)V
    .locals 1
    .param p1, "pool"    # Lrx/internal/schedulers/a$a;

    .prologue
    .line 185
    invoke-direct {p0}, Lrx/h$a;-><init>()V

    .line 180
    new-instance v0, Lrx/i/b;

    invoke-direct {v0}, Lrx/i/b;-><init>()V

    iput-object v0, p0, Lrx/internal/schedulers/a$b;->b:Lrx/i/b;

    .line 186
    iput-object p1, p0, Lrx/internal/schedulers/a$b;->c:Lrx/internal/schedulers/a$a;

    .line 187
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lrx/internal/schedulers/a$b;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 188
    invoke-virtual {p1}, Lrx/internal/schedulers/a$a;->a()Lrx/internal/schedulers/a$c;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/schedulers/a$b;->d:Lrx/internal/schedulers/a$c;

    .line 189
    return-void
.end method


# virtual methods
.method public a(Lrx/c/b;)Lrx/m;
    .locals 3
    .param p1, "action"    # Lrx/c/b;

    .prologue
    .line 214
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lrx/internal/schedulers/a$b;->a(Lrx/c/b;JLjava/util/concurrent/TimeUnit;)Lrx/m;

    move-result-object v0

    return-object v0
.end method

.method public a(Lrx/c/b;JLjava/util/concurrent/TimeUnit;)Lrx/m;
    .locals 4
    .param p1, "action"    # Lrx/c/b;
    .param p2, "delayTime"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 219
    iget-object v1, p0, Lrx/internal/schedulers/a$b;->b:Lrx/i/b;

    invoke-virtual {v1}, Lrx/i/b;->isUnsubscribed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 221
    invoke-static {}, Lrx/i/f;->b()Lrx/m;

    move-result-object v0

    .line 235
    :goto_0
    return-object v0

    .line 224
    :cond_0
    iget-object v1, p0, Lrx/internal/schedulers/a$b;->d:Lrx/internal/schedulers/a$c;

    new-instance v2, Lrx/internal/schedulers/a$b$1;

    invoke-direct {v2, p0, p1}, Lrx/internal/schedulers/a$b$1;-><init>(Lrx/internal/schedulers/a$b;Lrx/c/b;)V

    invoke-virtual {v1, v2, p2, p3, p4}, Lrx/internal/schedulers/a$c;->b(Lrx/c/b;JLjava/util/concurrent/TimeUnit;)Lrx/internal/schedulers/ScheduledAction;

    move-result-object v0

    .line 233
    .local v0, "s":Lrx/internal/schedulers/ScheduledAction;
    iget-object v1, p0, Lrx/internal/schedulers/a$b;->b:Lrx/i/b;

    invoke-virtual {v1, v0}, Lrx/i/b;->a(Lrx/m;)V

    .line 234
    iget-object v1, p0, Lrx/internal/schedulers/a$b;->b:Lrx/i/b;

    invoke-virtual {v0, v1}, Lrx/internal/schedulers/ScheduledAction;->addParent(Lrx/i/b;)V

    goto :goto_0
.end method

.method public call()V
    .locals 2

    .prologue
    .line 204
    iget-object v0, p0, Lrx/internal/schedulers/a$b;->c:Lrx/internal/schedulers/a$a;

    iget-object v1, p0, Lrx/internal/schedulers/a$b;->d:Lrx/internal/schedulers/a$c;

    invoke-virtual {v0, v1}, Lrx/internal/schedulers/a$a;->a(Lrx/internal/schedulers/a$c;)V

    .line 205
    return-void
.end method

.method public isUnsubscribed()Z
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lrx/internal/schedulers/a$b;->b:Lrx/i/b;

    invoke-virtual {v0}, Lrx/i/b;->isUnsubscribed()Z

    move-result v0

    return v0
.end method

.method public unsubscribe()V
    .locals 3

    .prologue
    .line 193
    iget-object v0, p0, Lrx/internal/schedulers/a$b;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lrx/internal/schedulers/a$b;->d:Lrx/internal/schedulers/a$c;

    invoke-virtual {v0, p0}, Lrx/internal/schedulers/a$c;->a(Lrx/c/b;)Lrx/m;

    .line 199
    :cond_0
    iget-object v0, p0, Lrx/internal/schedulers/a$b;->b:Lrx/i/b;

    invoke-virtual {v0}, Lrx/i/b;->unsubscribe()V

    .line 200
    return-void
.end method
