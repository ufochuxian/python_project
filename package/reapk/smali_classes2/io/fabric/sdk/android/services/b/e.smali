.class public abstract Lio/fabric/sdk/android/services/b/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/fabric/sdk/android/services/b/h;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/fabric/sdk/android/services/b/h;"
    }
.end annotation


# instance fields
.field protected final a:Landroid/content/Context;

.field protected final b:Ljava/util/concurrent/ScheduledExecutorService;

.field protected c:Lio/fabric/sdk/android/services/b/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/fabric/sdk/android/services/b/i",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/fabric/sdk/android/services/b/i;Lio/fabric/sdk/android/services/b/d;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "filesManager"    # Lio/fabric/sdk/android/services/b/d;
    .param p4, "executor"    # Ljava/util/concurrent/ScheduledExecutorService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lio/fabric/sdk/android/services/b/i",
            "<TT;>;",
            "Lio/fabric/sdk/android/services/b/d;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ")V"
        }
    .end annotation

    .prologue
    .line 37
    .local p0, "this":Lio/fabric/sdk/android/services/b/e;, "Lio/fabric/sdk/android/services/b/e<TT;>;"
    .local p2, "strategy":Lio/fabric/sdk/android/services/b/i;, "Lio/fabric/sdk/android/services/b/i<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lio/fabric/sdk/android/services/b/e;->a:Landroid/content/Context;

    .line 39
    iput-object p4, p0, Lio/fabric/sdk/android/services/b/e;->b:Ljava/util/concurrent/ScheduledExecutorService;

    .line 40
    iput-object p2, p0, Lio/fabric/sdk/android/services/b/e;->c:Lio/fabric/sdk/android/services/b/i;

    .line 42
    invoke-virtual {p3, p0}, Lio/fabric/sdk/android/services/b/d;->registerRollOverListener(Lio/fabric/sdk/android/services/b/h;)V

    .line 43
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 92
    .local p0, "this":Lio/fabric/sdk/android/services/b/e;, "Lio/fabric/sdk/android/services/b/e<TT;>;"
    new-instance v0, Lio/fabric/sdk/android/services/b/e$4;

    invoke-direct {v0, p0}, Lio/fabric/sdk/android/services/b/e$4;-><init>(Lio/fabric/sdk/android/services/b/e;)V

    invoke-virtual {p0, v0}, Lio/fabric/sdk/android/services/b/e;->b(Ljava/lang/Runnable;)V

    .line 104
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 64
    .local p0, "this":Lio/fabric/sdk/android/services/b/e;, "Lio/fabric/sdk/android/services/b/e<TT;>;"
    .local p1, "event":Ljava/lang/Object;, "TT;"
    new-instance v0, Lio/fabric/sdk/android/services/b/e$2;

    invoke-direct {v0, p0, p1}, Lio/fabric/sdk/android/services/b/e$2;-><init>(Lio/fabric/sdk/android/services/b/e;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lio/fabric/sdk/android/services/b/e;->a(Ljava/lang/Runnable;)V

    .line 75
    return-void
.end method

.method public a(Ljava/lang/Object;Z)V
    .locals 1
    .param p2, "sendImmediately"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, "this":Lio/fabric/sdk/android/services/b/e;, "Lio/fabric/sdk/android/services/b/e<TT;>;"
    .local p1, "event":Ljava/lang/Object;, "TT;"
    new-instance v0, Lio/fabric/sdk/android/services/b/e$1;

    invoke-direct {v0, p0, p1, p2}, Lio/fabric/sdk/android/services/b/e$1;-><init>(Lio/fabric/sdk/android/services/b/e;Ljava/lang/Object;Z)V

    invoke-virtual {p0, v0}, Lio/fabric/sdk/android/services/b/e;->b(Ljava/lang/Runnable;)V

    .line 61
    return-void
.end method

.method protected a(Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 110
    .local p0, "this":Lio/fabric/sdk/android/services/b/e;, "Lio/fabric/sdk/android/services/b/e<TT;>;"
    :try_start_0
    iget-object v1, p0, Lio/fabric/sdk/android/services/b/e;->b:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :goto_0
    return-void

    .line 111
    :catch_0
    move-exception v0

    .line 112
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lio/fabric/sdk/android/services/b/e;->a:Landroid/content/Context;

    const-string v2, "Failed to run events task"

    invoke-static {v1, v2, v0}, Lio/fabric/sdk/android/services/common/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected abstract b()Lio/fabric/sdk/android/services/b/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/fabric/sdk/android/services/b/i",
            "<TT;>;"
        }
    .end annotation
.end method

.method protected b(Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 118
    .local p0, "this":Lio/fabric/sdk/android/services/b/e;, "Lio/fabric/sdk/android/services/b/e<TT;>;"
    :try_start_0
    iget-object v1, p0, Lio/fabric/sdk/android/services/b/e;->b:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :goto_0
    return-void

    .line 119
    :catch_0
    move-exception v0

    .line 120
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lio/fabric/sdk/android/services/b/e;->a:Landroid/content/Context;

    const-string v2, "Failed to submit events task"

    invoke-static {v1, v2, v0}, Lio/fabric/sdk/android/services/common/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onRollOver(Ljava/lang/String;)V
    .locals 1
    .param p1, "rolledOverFile"    # Ljava/lang/String;

    .prologue
    .line 79
    .local p0, "this":Lio/fabric/sdk/android/services/b/e;, "Lio/fabric/sdk/android/services/b/e<TT;>;"
    new-instance v0, Lio/fabric/sdk/android/services/b/e$3;

    invoke-direct {v0, p0}, Lio/fabric/sdk/android/services/b/e$3;-><init>(Lio/fabric/sdk/android/services/b/e;)V

    invoke-virtual {p0, v0}, Lio/fabric/sdk/android/services/b/e;->b(Ljava/lang/Runnable;)V

    .line 89
    return-void
.end method
