.class Lrx/internal/schedulers/c$a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/schedulers/c$a;->a(Lrx/c/b;JLjava/util/concurrent/TimeUnit;)Lrx/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lrx/i/c;

.field final synthetic b:Lrx/c/b;

.field final synthetic c:Lrx/m;

.field final synthetic d:Lrx/internal/schedulers/c$a;


# direct methods
.method constructor <init>(Lrx/internal/schedulers/c$a;Lrx/i/c;Lrx/c/b;Lrx/m;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lrx/internal/schedulers/c$a$2;->d:Lrx/internal/schedulers/c$a;

    iput-object p2, p0, Lrx/internal/schedulers/c$a$2;->a:Lrx/i/c;

    iput-object p3, p0, Lrx/internal/schedulers/c$a$2;->b:Lrx/c/b;

    iput-object p4, p0, Lrx/internal/schedulers/c$a$2;->c:Lrx/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 3

    .prologue
    .line 141
    iget-object v1, p0, Lrx/internal/schedulers/c$a$2;->a:Lrx/i/c;

    invoke-virtual {v1}, Lrx/i/c;->isUnsubscribed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 145
    :cond_1
    iget-object v1, p0, Lrx/internal/schedulers/c$a$2;->d:Lrx/internal/schedulers/c$a;

    iget-object v2, p0, Lrx/internal/schedulers/c$a$2;->b:Lrx/c/b;

    invoke-virtual {v1, v2}, Lrx/internal/schedulers/c$a;->a(Lrx/c/b;)Lrx/m;

    move-result-object v0

    .line 146
    .local v0, "s2":Lrx/m;
    iget-object v1, p0, Lrx/internal/schedulers/c$a$2;->a:Lrx/i/c;

    invoke-virtual {v1, v0}, Lrx/i/c;->a(Lrx/m;)V

    .line 148
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lrx/internal/schedulers/ScheduledAction;

    if-ne v1, v2, :cond_0

    .line 151
    check-cast v0, Lrx/internal/schedulers/ScheduledAction;

    .end local v0    # "s2":Lrx/m;
    iget-object v1, p0, Lrx/internal/schedulers/c$a$2;->c:Lrx/m;

    invoke-virtual {v0, v1}, Lrx/internal/schedulers/ScheduledAction;->add(Lrx/m;)V

    goto :goto_0
.end method
