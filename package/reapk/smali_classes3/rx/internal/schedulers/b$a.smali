.class final Lrx/internal/schedulers/b$a;
.super Lrx/h$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/schedulers/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field private final a:Lrx/internal/util/m;

.field private final b:Lrx/i/b;

.field private final c:Lrx/internal/util/m;

.field private final d:Lrx/internal/schedulers/b$c;


# direct methods
.method constructor <init>(Lrx/internal/schedulers/b$c;)V
    .locals 4
    .param p1, "poolWorker"    # Lrx/internal/schedulers/b$c;

    .prologue
    .line 145
    invoke-direct {p0}, Lrx/h$a;-><init>()V

    .line 140
    new-instance v0, Lrx/internal/util/m;

    invoke-direct {v0}, Lrx/internal/util/m;-><init>()V

    iput-object v0, p0, Lrx/internal/schedulers/b$a;->a:Lrx/internal/util/m;

    .line 141
    new-instance v0, Lrx/i/b;

    invoke-direct {v0}, Lrx/i/b;-><init>()V

    iput-object v0, p0, Lrx/internal/schedulers/b$a;->b:Lrx/i/b;

    .line 142
    new-instance v0, Lrx/internal/util/m;

    const/4 v1, 0x2

    new-array v1, v1, [Lrx/m;

    const/4 v2, 0x0

    iget-object v3, p0, Lrx/internal/schedulers/b$a;->a:Lrx/internal/util/m;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lrx/internal/schedulers/b$a;->b:Lrx/i/b;

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lrx/internal/util/m;-><init>([Lrx/m;)V

    iput-object v0, p0, Lrx/internal/schedulers/b$a;->c:Lrx/internal/util/m;

    .line 146
    iput-object p1, p0, Lrx/internal/schedulers/b$a;->d:Lrx/internal/schedulers/b$c;

    .line 148
    return-void
.end method


# virtual methods
.method public a(Lrx/c/b;)Lrx/m;
    .locals 6
    .param p1, "action"    # Lrx/c/b;

    .prologue
    .line 162
    invoke-virtual {p0}, Lrx/internal/schedulers/b$a;->isUnsubscribed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    invoke-static {}, Lrx/i/f;->b()Lrx/m;

    move-result-object v0

    .line 166
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lrx/internal/schedulers/b$a;->d:Lrx/internal/schedulers/b$c;

    new-instance v1, Lrx/internal/schedulers/b$a$1;

    invoke-direct {v1, p0, p1}, Lrx/internal/schedulers/b$a$1;-><init>(Lrx/internal/schedulers/b$a;Lrx/c/b;)V

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lrx/internal/schedulers/b$a;->a:Lrx/internal/util/m;

    invoke-virtual/range {v0 .. v5}, Lrx/internal/schedulers/b$c;->a(Lrx/c/b;JLjava/util/concurrent/TimeUnit;Lrx/internal/util/m;)Lrx/internal/schedulers/ScheduledAction;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lrx/c/b;JLjava/util/concurrent/TimeUnit;)Lrx/m;
    .locals 6
    .param p1, "action"    # Lrx/c/b;
    .param p2, "delayTime"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 179
    invoke-virtual {p0}, Lrx/internal/schedulers/b$a;->isUnsubscribed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    invoke-static {}, Lrx/i/f;->b()Lrx/m;

    move-result-object v0

    .line 183
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lrx/internal/schedulers/b$a;->d:Lrx/internal/schedulers/b$c;

    new-instance v1, Lrx/internal/schedulers/b$a$2;

    invoke-direct {v1, p0, p1}, Lrx/internal/schedulers/b$a$2;-><init>(Lrx/internal/schedulers/b$a;Lrx/c/b;)V

    iget-object v5, p0, Lrx/internal/schedulers/b$a;->b:Lrx/i/b;

    move-wide v2, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lrx/internal/schedulers/b$c;->a(Lrx/c/b;JLjava/util/concurrent/TimeUnit;Lrx/i/b;)Lrx/internal/schedulers/ScheduledAction;

    move-result-object v0

    goto :goto_0
.end method

.method public isUnsubscribed()Z
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lrx/internal/schedulers/b$a;->c:Lrx/internal/util/m;

    invoke-virtual {v0}, Lrx/internal/util/m;->isUnsubscribed()Z

    move-result v0

    return v0
.end method

.method public unsubscribe()V
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lrx/internal/schedulers/b$a;->c:Lrx/internal/util/m;

    invoke-virtual {v0}, Lrx/internal/util/m;->unsubscribe()V

    .line 153
    return-void
.end method
