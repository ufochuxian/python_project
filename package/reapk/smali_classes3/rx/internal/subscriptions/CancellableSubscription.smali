.class public final Lrx/internal/subscriptions/CancellableSubscription;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lrx/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicReference",
        "<",
        "Lrx/c/n;",
        ">;",
        "Lrx/m;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x4f5c453163a88dc2L


# direct methods
.method public constructor <init>(Lrx/c/n;)V
    .locals 0
    .param p1, "cancellable"    # Lrx/c/n;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 38
    return-void
.end method


# virtual methods
.method public isUnsubscribed()Z
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0}, Lrx/internal/subscriptions/CancellableSubscription;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public unsubscribe()V
    .locals 3

    .prologue
    .line 47
    invoke-virtual {p0}, Lrx/internal/subscriptions/CancellableSubscription;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 48
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lrx/internal/subscriptions/CancellableSubscription;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/c/n;

    .line 49
    .local v0, "c":Lrx/c/n;
    if-eqz v0, :cond_0

    .line 51
    :try_start_0
    invoke-interface {v0}, Lrx/c/n;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .end local v0    # "c":Lrx/c/n;
    :cond_0
    :goto_0
    return-void

    .line 52
    .restart local v0    # "c":Lrx/c/n;
    :catch_0
    move-exception v1

    .line 53
    .local v1, "ex":Ljava/lang/Exception;
    invoke-static {v1}, Lrx/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 54
    invoke-static {v1}, Lrx/f/c;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
