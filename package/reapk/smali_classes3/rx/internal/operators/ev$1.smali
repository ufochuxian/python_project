.class final Lrx/internal/operators/ev$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/i$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/ev;->a([Lrx/i;Lrx/c/y;)Lrx/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/i$a",
        "<TR;>;"
    }
.end annotation


# instance fields
.field final synthetic a:[Lrx/i;

.field final synthetic b:Lrx/c/y;


# direct methods
.method constructor <init>([Lrx/i;Lrx/c/y;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lrx/internal/operators/ev$1;->a:[Lrx/i;

    iput-object p2, p0, Lrx/internal/operators/ev$1;->b:Lrx/c/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lrx/k;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/k",
            "<-TR;>;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p1, "subscriber":Lrx/k;, "Lrx/k<-TR;>;"
    iget-object v1, p0, Lrx/internal/operators/ev$1;->a:[Lrx/i;

    array-length v1, v1

    if-nez v1, :cond_1

    .line 40
    new-instance v1, Ljava/util/NoSuchElementException;

    const-string v5, "Can\'t zip 0 Singles."

    invoke-direct {v1, v5}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lrx/k;->onError(Ljava/lang/Throwable;)V

    .line 94
    :cond_0
    return-void

    .line 44
    :cond_1
    new-instance v4, Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v1, p0, Lrx/internal/operators/ev$1;->a:[Lrx/i;

    array-length v1, v1

    invoke-direct {v4, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 45
    .local v4, "wip":Ljava/util/concurrent/atomic/AtomicInteger;
    new-instance v6, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 46
    .local v6, "once":Ljava/util/concurrent/atomic/AtomicBoolean;
    iget-object v1, p0, Lrx/internal/operators/ev$1;->a:[Lrx/i;

    array-length v1, v1

    new-array v2, v1, [Ljava/lang/Object;

    .line 48
    .local v2, "values":[Ljava/lang/Object;
    new-instance v7, Lrx/i/b;

    invoke-direct {v7}, Lrx/i/b;-><init>()V

    .line 49
    .local v7, "compositeSubscription":Lrx/i/b;
    invoke-virtual {p1, v7}, Lrx/k;->a(Lrx/m;)V

    .line 51
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    iget-object v1, p0, Lrx/internal/operators/ev$1;->a:[Lrx/i;

    array-length v1, v1

    if-ge v8, v1, :cond_0

    .line 52
    invoke-virtual {v7}, Lrx/i/b;->isUnsubscribed()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_0

    .line 56
    move v3, v8

    .line 57
    .local v3, "j":I
    new-instance v0, Lrx/internal/operators/ev$1$1;

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lrx/internal/operators/ev$1$1;-><init>(Lrx/internal/operators/ev$1;[Ljava/lang/Object;ILjava/util/concurrent/atomic/AtomicInteger;Lrx/k;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 86
    .local v0, "singleSubscriber":Lrx/k;, "Lrx/k<TT;>;"
    invoke-virtual {v7, v0}, Lrx/i/b;->a(Lrx/m;)V

    .line 88
    invoke-virtual {v7}, Lrx/i/b;->isUnsubscribed()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_0

    .line 92
    iget-object v1, p0, Lrx/internal/operators/ev$1;->a:[Lrx/i;

    aget-object v1, v1, v8

    invoke-virtual {v1, v0}, Lrx/i;->a(Lrx/k;)Lrx/m;

    .line 51
    add-int/lit8 v8, v8, 0x1

    goto :goto_0
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 36
    check-cast p1, Lrx/k;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/ev$1;->a(Lrx/k;)V

    return-void
.end method
