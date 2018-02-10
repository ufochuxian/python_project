.class abstract Lrx/internal/schedulers/k$d;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lrx/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/schedulers/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicReference",
        "<",
        "Lrx/m;",
        ">;",
        "Lrx/m;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 211
    sget-object v0, Lrx/internal/schedulers/k;->a:Lrx/m;

    invoke-direct {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 212
    return-void
.end method

.method static synthetic a(Lrx/internal/schedulers/k$d;Lrx/h$a;Lrx/d;)V
    .locals 0
    .param p0, "x0"    # Lrx/internal/schedulers/k$d;
    .param p1, "x1"    # Lrx/h$a;
    .param p2, "x2"    # Lrx/d;

    .prologue
    .line 209
    invoke-direct {p0, p1, p2}, Lrx/internal/schedulers/k$d;->b(Lrx/h$a;Lrx/d;)V

    return-void
.end method

.method private b(Lrx/h$a;Lrx/d;)V
    .locals 3
    .param p1, "actualWorker"    # Lrx/h$a;
    .param p2, "actionCompletable"    # Lrx/d;

    .prologue
    .line 215
    invoke-virtual {p0}, Lrx/internal/schedulers/k$d;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/m;

    .line 217
    .local v1, "oldState":Lrx/m;
    sget-object v2, Lrx/internal/schedulers/k;->b:Lrx/m;

    if-ne v1, v2, :cond_1

    .line 237
    :cond_0
    :goto_0
    return-void

    .line 221
    :cond_1
    sget-object v2, Lrx/internal/schedulers/k;->a:Lrx/m;

    if-ne v1, v2, :cond_0

    .line 228
    invoke-virtual {p0, p1, p2}, Lrx/internal/schedulers/k$d;->a(Lrx/h$a;Lrx/d;)Lrx/m;

    move-result-object v0

    .line 230
    .local v0, "newState":Lrx/m;
    sget-object v2, Lrx/internal/schedulers/k;->a:Lrx/m;

    invoke-virtual {p0, v2, v0}, Lrx/internal/schedulers/k$d;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 235
    invoke-interface {v0}, Lrx/m;->unsubscribe()V

    goto :goto_0
.end method


# virtual methods
.method protected abstract a(Lrx/h$a;Lrx/d;)Lrx/m;
.end method

.method public isUnsubscribed()Z
    .locals 1

    .prologue
    .line 243
    invoke-virtual {p0}, Lrx/internal/schedulers/k$d;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/m;

    invoke-interface {v0}, Lrx/m;->isUnsubscribed()Z

    move-result v0

    return v0
.end method

.method public unsubscribe()V
    .locals 3

    .prologue
    .line 250
    sget-object v0, Lrx/internal/schedulers/k;->b:Lrx/m;

    .line 252
    .local v0, "newState":Lrx/m;
    :cond_0
    invoke-virtual {p0}, Lrx/internal/schedulers/k$d;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/m;

    .line 253
    .local v1, "oldState":Lrx/m;
    sget-object v2, Lrx/internal/schedulers/k;->b:Lrx/m;

    if-ne v1, v2, :cond_2

    .line 263
    :cond_1
    :goto_0
    return-void

    .line 257
    :cond_2
    invoke-virtual {p0, v1, v0}, Lrx/internal/schedulers/k$d;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 259
    sget-object v2, Lrx/internal/schedulers/k;->a:Lrx/m;

    if-eq v1, v2, :cond_1

    .line 261
    invoke-interface {v1}, Lrx/m;->unsubscribe()V

    goto :goto_0
.end method
