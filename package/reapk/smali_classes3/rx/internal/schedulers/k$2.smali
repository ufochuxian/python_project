.class Lrx/internal/schedulers/k$2;
.super Lrx/h$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/schedulers/k;->createWorker()Lrx/h$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lrx/h$a;

.field final synthetic b:Lrx/f;

.field final synthetic c:Lrx/internal/schedulers/k;

.field private final d:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Lrx/internal/schedulers/k;Lrx/h$a;Lrx/f;)V
    .locals 1

    .prologue
    .line 153
    iput-object p1, p0, Lrx/internal/schedulers/k$2;->c:Lrx/internal/schedulers/k;

    iput-object p2, p0, Lrx/internal/schedulers/k$2;->a:Lrx/h$a;

    iput-object p3, p0, Lrx/internal/schedulers/k$2;->b:Lrx/f;

    invoke-direct {p0}, Lrx/h$a;-><init>()V

    .line 154
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lrx/internal/schedulers/k$2;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public a(Lrx/c/b;)Lrx/m;
    .locals 2
    .param p1, "action"    # Lrx/c/b;

    .prologue
    .line 182
    new-instance v0, Lrx/internal/schedulers/k$b;

    invoke-direct {v0, p1}, Lrx/internal/schedulers/k$b;-><init>(Lrx/c/b;)V

    .line 183
    .local v0, "immediateAction":Lrx/internal/schedulers/k$b;
    iget-object v1, p0, Lrx/internal/schedulers/k$2;->b:Lrx/f;

    invoke-interface {v1, v0}, Lrx/f;->onNext(Ljava/lang/Object;)V

    .line 184
    return-object v0
.end method

.method public a(Lrx/c/b;JLjava/util/concurrent/TimeUnit;)Lrx/m;
    .locals 2
    .param p1, "action"    # Lrx/c/b;
    .param p2, "delayTime"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 174
    new-instance v0, Lrx/internal/schedulers/k$a;

    invoke-direct {v0, p1, p2, p3, p4}, Lrx/internal/schedulers/k$a;-><init>(Lrx/c/b;JLjava/util/concurrent/TimeUnit;)V

    .line 175
    .local v0, "delayedAction":Lrx/internal/schedulers/k$a;
    iget-object v1, p0, Lrx/internal/schedulers/k$2;->b:Lrx/f;

    invoke-interface {v1, v0}, Lrx/f;->onNext(Ljava/lang/Object;)V

    .line 176
    return-object v0
.end method

.method public isUnsubscribed()Z
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lrx/internal/schedulers/k$2;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public unsubscribe()V
    .locals 3

    .prologue
    .line 160
    iget-object v0, p0, Lrx/internal/schedulers/k$2;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lrx/internal/schedulers/k$2;->a:Lrx/h$a;

    invoke-virtual {v0}, Lrx/h$a;->unsubscribe()V

    .line 162
    iget-object v0, p0, Lrx/internal/schedulers/k$2;->b:Lrx/f;

    invoke-interface {v0}, Lrx/f;->onCompleted()V

    .line 164
    :cond_0
    return-void
.end method
