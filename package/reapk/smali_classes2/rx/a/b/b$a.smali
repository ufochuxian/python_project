.class Lrx/a/b/b$a;
.super Lrx/h$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/a/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/os/Handler;

.field private final b:Lrx/i/b;


# direct methods
.method constructor <init>(Landroid/os/Handler;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 52
    invoke-direct {p0}, Lrx/h$a;-><init>()V

    .line 50
    new-instance v0, Lrx/i/b;

    invoke-direct {v0}, Lrx/i/b;-><init>()V

    iput-object v0, p0, Lrx/a/b/b$a;->b:Lrx/i/b;

    .line 53
    iput-object p1, p0, Lrx/a/b/b$a;->a:Landroid/os/Handler;

    .line 54
    return-void
.end method

.method static synthetic a(Lrx/a/b/b$a;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lrx/a/b/b$a;

    .prologue
    .line 46
    iget-object v0, p0, Lrx/a/b/b$a;->a:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public a(Lrx/c/b;)Lrx/m;
    .locals 3
    .param p1, "action"    # Lrx/c/b;

    .prologue
    .line 92
    const-wide/16 v0, 0x0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, p1, v0, v1, v2}, Lrx/a/b/b$a;->a(Lrx/c/b;JLjava/util/concurrent/TimeUnit;)Lrx/m;

    move-result-object v0

    return-object v0
.end method

.method public a(Lrx/c/b;JLjava/util/concurrent/TimeUnit;)Lrx/m;
    .locals 4
    .param p1, "action"    # Lrx/c/b;
    .param p2, "delayTime"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 68
    iget-object v1, p0, Lrx/a/b/b$a;->b:Lrx/i/b;

    invoke-virtual {v1}, Lrx/i/b;->isUnsubscribed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    invoke-static {}, Lrx/i/f;->b()Lrx/m;

    move-result-object v0

    .line 87
    :goto_0
    return-object v0

    .line 72
    :cond_0
    invoke-static {}, Lrx/a/a/a;->a()Lrx/a/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lrx/a/a/a;->c()Lrx/a/a/b;

    move-result-object v1

    invoke-virtual {v1, p1}, Lrx/a/a/b;->a(Lrx/c/b;)Lrx/c/b;

    move-result-object p1

    .line 74
    new-instance v0, Lrx/internal/schedulers/ScheduledAction;

    invoke-direct {v0, p1}, Lrx/internal/schedulers/ScheduledAction;-><init>(Lrx/c/b;)V

    .line 75
    .local v0, "scheduledAction":Lrx/internal/schedulers/ScheduledAction;
    iget-object v1, p0, Lrx/a/b/b$a;->b:Lrx/i/b;

    invoke-virtual {v0, v1}, Lrx/internal/schedulers/ScheduledAction;->addParent(Lrx/i/b;)V

    .line 76
    iget-object v1, p0, Lrx/a/b/b$a;->b:Lrx/i/b;

    invoke-virtual {v1, v0}, Lrx/i/b;->a(Lrx/m;)V

    .line 78
    iget-object v1, p0, Lrx/a/b/b$a;->a:Landroid/os/Handler;

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 80
    new-instance v1, Lrx/a/b/b$a$1;

    invoke-direct {v1, p0, v0}, Lrx/a/b/b$a$1;-><init>(Lrx/a/b/b$a;Lrx/internal/schedulers/ScheduledAction;)V

    invoke-static {v1}, Lrx/i/f;->a(Lrx/c/b;)Lrx/m;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/internal/schedulers/ScheduledAction;->add(Lrx/m;)V

    goto :goto_0
.end method

.method public isUnsubscribed()Z
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lrx/a/b/b$a;->b:Lrx/i/b;

    invoke-virtual {v0}, Lrx/i/b;->isUnsubscribed()Z

    move-result v0

    return v0
.end method

.method public unsubscribe()V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lrx/a/b/b$a;->b:Lrx/i/b;

    invoke-virtual {v0}, Lrx/i/b;->unsubscribe()V

    .line 59
    return-void
.end method
