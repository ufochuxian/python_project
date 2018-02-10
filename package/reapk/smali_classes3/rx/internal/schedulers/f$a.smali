.class final Lrx/internal/schedulers/f$a;
.super Lrx/h$a;
.source "SourceFile"

# interfaces
.implements Lrx/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/schedulers/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final a:Lrx/i/a;

.field final synthetic b:Lrx/internal/schedulers/f;


# direct methods
.method constructor <init>(Lrx/internal/schedulers/f;)V
    .locals 1

    .prologue
    .line 45
    iput-object p1, p0, Lrx/internal/schedulers/f$a;->b:Lrx/internal/schedulers/f;

    invoke-direct {p0}, Lrx/h$a;-><init>()V

    .line 43
    new-instance v0, Lrx/i/a;

    invoke-direct {v0}, Lrx/i/a;-><init>()V

    iput-object v0, p0, Lrx/internal/schedulers/f$a;->a:Lrx/i/a;

    .line 46
    return-void
.end method


# virtual methods
.method public a(Lrx/c/b;)Lrx/m;
    .locals 1
    .param p1, "action"    # Lrx/c/b;

    .prologue
    .line 58
    invoke-interface {p1}, Lrx/c/b;->call()V

    .line 59
    invoke-static {}, Lrx/i/f;->b()Lrx/m;

    move-result-object v0

    return-object v0
.end method

.method public a(Lrx/c/b;JLjava/util/concurrent/TimeUnit;)Lrx/m;
    .locals 6
    .param p1, "action"    # Lrx/c/b;
    .param p2, "delayTime"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 51
    iget-object v2, p0, Lrx/internal/schedulers/f$a;->b:Lrx/internal/schedulers/f;

    invoke-virtual {v2}, Lrx/internal/schedulers/f;->now()J

    move-result-wide v2

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    add-long v0, v2, v4

    .line 53
    .local v0, "execTime":J
    new-instance v2, Lrx/internal/schedulers/l;

    invoke-direct {v2, p1, p0, v0, v1}, Lrx/internal/schedulers/l;-><init>(Lrx/c/b;Lrx/h$a;J)V

    invoke-virtual {p0, v2}, Lrx/internal/schedulers/f$a;->a(Lrx/c/b;)Lrx/m;

    move-result-object v2

    return-object v2
.end method

.method public isUnsubscribed()Z
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lrx/internal/schedulers/f$a;->a:Lrx/i/a;

    invoke-virtual {v0}, Lrx/i/a;->isUnsubscribed()Z

    move-result v0

    return v0
.end method

.method public unsubscribe()V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lrx/internal/schedulers/f$a;->a:Lrx/i/a;

    invoke-virtual {v0}, Lrx/i/a;->unsubscribe()V

    .line 65
    return-void
.end method
