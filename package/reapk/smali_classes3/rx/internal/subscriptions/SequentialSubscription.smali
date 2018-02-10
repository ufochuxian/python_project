.class public final Lrx/internal/subscriptions/SequentialSubscription;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lrx/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicReference",
        "<",
        "Lrx/m;",
        ">;",
        "Lrx/m;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0xdcfadb4b3205d9dL


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 39
    return-void
.end method

.method public constructor <init>(Lrx/m;)V
    .locals 0
    .param p1, "initial"    # Lrx/m;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 46
    invoke-virtual {p0, p1}, Lrx/internal/subscriptions/SequentialSubscription;->lazySet(Ljava/lang/Object;)V

    .line 47
    return-void
.end method


# virtual methods
.method public current()Lrx/m;
    .locals 2

    .prologue
    .line 55
    invoke-super {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/m;

    .line 56
    .local v0, "current":Lrx/m;
    sget-object v1, Lrx/internal/subscriptions/Unsubscribed;->INSTANCE:Lrx/internal/subscriptions/Unsubscribed;

    if-ne v0, v1, :cond_0

    .line 57
    invoke-static {}, Lrx/i/f;->b()Lrx/m;

    move-result-object v0

    .line 59
    .end local v0    # "current":Lrx/m;
    :cond_0
    return-object v0
.end method

.method public isUnsubscribed()Z
    .locals 2

    .prologue
    .line 187
    invoke-virtual {p0}, Lrx/internal/subscriptions/SequentialSubscription;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lrx/internal/subscriptions/Unsubscribed;->INSTANCE:Lrx/internal/subscriptions/Unsubscribed;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public replace(Lrx/m;)Z
    .locals 2
    .param p1, "next"    # Lrx/m;

    .prologue
    .line 98
    :cond_0
    invoke-virtual {p0}, Lrx/internal/subscriptions/SequentialSubscription;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/m;

    .line 100
    .local v0, "current":Lrx/m;
    sget-object v1, Lrx/internal/subscriptions/Unsubscribed;->INSTANCE:Lrx/internal/subscriptions/Unsubscribed;

    if-ne v0, v1, :cond_2

    .line 101
    if-eqz p1, :cond_1

    .line 102
    invoke-interface {p1}, Lrx/m;->unsubscribe()V

    .line 104
    :cond_1
    const/4 v1, 0x0

    .line 108
    :goto_0
    return v1

    .line 107
    :cond_2
    invoke-virtual {p0, v0, p1}, Lrx/internal/subscriptions/SequentialSubscription;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 108
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public replaceWeak(Lrx/m;)Z
    .locals 4
    .param p1, "next"    # Lrx/m;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 153
    invoke-virtual {p0}, Lrx/internal/subscriptions/SequentialSubscription;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/m;

    .line 154
    .local v0, "current":Lrx/m;
    sget-object v3, Lrx/internal/subscriptions/Unsubscribed;->INSTANCE:Lrx/internal/subscriptions/Unsubscribed;

    if-ne v0, v3, :cond_1

    .line 155
    if-eqz p1, :cond_0

    .line 156
    invoke-interface {p1}, Lrx/m;->unsubscribe()V

    .line 171
    :cond_0
    :goto_0
    return v1

    .line 160
    :cond_1
    invoke-virtual {p0, v0, p1}, Lrx/internal/subscriptions/SequentialSubscription;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    .line 161
    goto :goto_0

    .line 164
    :cond_2
    invoke-virtual {p0}, Lrx/internal/subscriptions/SequentialSubscription;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "current":Lrx/m;
    check-cast v0, Lrx/m;

    .line 165
    .restart local v0    # "current":Lrx/m;
    sget-object v3, Lrx/internal/subscriptions/Unsubscribed;->INSTANCE:Lrx/internal/subscriptions/Unsubscribed;

    if-ne v0, v3, :cond_3

    .line 166
    if-eqz p1, :cond_0

    .line 167
    invoke-interface {p1}, Lrx/m;->unsubscribe()V

    goto :goto_0

    :cond_3
    move v1, v2

    .line 171
    goto :goto_0
.end method

.method public unsubscribe()V
    .locals 2

    .prologue
    .line 176
    invoke-virtual {p0}, Lrx/internal/subscriptions/SequentialSubscription;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/m;

    .line 177
    .local v0, "current":Lrx/m;
    sget-object v1, Lrx/internal/subscriptions/Unsubscribed;->INSTANCE:Lrx/internal/subscriptions/Unsubscribed;

    if-eq v0, v1, :cond_0

    .line 178
    sget-object v1, Lrx/internal/subscriptions/Unsubscribed;->INSTANCE:Lrx/internal/subscriptions/Unsubscribed;

    invoke-virtual {p0, v1}, Lrx/internal/subscriptions/SequentialSubscription;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "current":Lrx/m;
    check-cast v0, Lrx/m;

    .line 179
    .restart local v0    # "current":Lrx/m;
    if-eqz v0, :cond_0

    sget-object v1, Lrx/internal/subscriptions/Unsubscribed;->INSTANCE:Lrx/internal/subscriptions/Unsubscribed;

    if-eq v0, v1, :cond_0

    .line 180
    invoke-interface {v0}, Lrx/m;->unsubscribe()V

    .line 183
    :cond_0
    return-void
.end method

.method public update(Lrx/m;)Z
    .locals 2
    .param p1, "next"    # Lrx/m;

    .prologue
    .line 71
    :cond_0
    invoke-virtual {p0}, Lrx/internal/subscriptions/SequentialSubscription;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/m;

    .line 73
    .local v0, "current":Lrx/m;
    sget-object v1, Lrx/internal/subscriptions/Unsubscribed;->INSTANCE:Lrx/internal/subscriptions/Unsubscribed;

    if-ne v0, v1, :cond_2

    .line 74
    if-eqz p1, :cond_1

    .line 75
    invoke-interface {p1}, Lrx/m;->unsubscribe()V

    .line 77
    :cond_1
    const/4 v1, 0x0

    .line 84
    :goto_0
    return v1

    .line 80
    :cond_2
    invoke-virtual {p0, v0, p1}, Lrx/internal/subscriptions/SequentialSubscription;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 81
    if-eqz v0, :cond_3

    .line 82
    invoke-interface {v0}, Lrx/m;->unsubscribe()V

    .line 84
    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public updateWeak(Lrx/m;)Z
    .locals 4
    .param p1, "next"    # Lrx/m;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 123
    invoke-virtual {p0}, Lrx/internal/subscriptions/SequentialSubscription;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/m;

    .line 124
    .local v0, "current":Lrx/m;
    sget-object v3, Lrx/internal/subscriptions/Unsubscribed;->INSTANCE:Lrx/internal/subscriptions/Unsubscribed;

    if-ne v0, v3, :cond_2

    .line 125
    if-eqz p1, :cond_0

    .line 126
    invoke-interface {p1}, Lrx/m;->unsubscribe()V

    :cond_0
    move v1, v2

    .line 139
    :cond_1
    :goto_0
    return v1

    .line 130
    :cond_2
    invoke-virtual {p0, v0, p1}, Lrx/internal/subscriptions/SequentialSubscription;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 134
    invoke-virtual {p0}, Lrx/internal/subscriptions/SequentialSubscription;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "current":Lrx/m;
    check-cast v0, Lrx/m;

    .line 136
    .restart local v0    # "current":Lrx/m;
    if-eqz p1, :cond_3

    .line 137
    invoke-interface {p1}, Lrx/m;->unsubscribe()V

    .line 139
    :cond_3
    sget-object v3, Lrx/internal/subscriptions/Unsubscribed;->INSTANCE:Lrx/internal/subscriptions/Unsubscribed;

    if-eq v0, v3, :cond_1

    move v1, v2

    goto :goto_0
.end method
