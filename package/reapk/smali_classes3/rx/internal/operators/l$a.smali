.class final Lrx/internal/operators/l$a;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Lrx/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x6e8ac9652ad7cd50L


# instance fields
.field final a:Lrx/d;

.field final b:[Lrx/b;

.field c:I

.field final d:Lrx/i/e;


# direct methods
.method public constructor <init>(Lrx/d;[Lrx/b;)V
    .locals 1
    .param p1, "actual"    # Lrx/d;
    .param p2, "sources"    # [Lrx/b;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 51
    iput-object p1, p0, Lrx/internal/operators/l$a;->a:Lrx/d;

    .line 52
    iput-object p2, p0, Lrx/internal/operators/l$a;->b:[Lrx/b;

    .line 53
    new-instance v0, Lrx/i/e;

    invoke-direct {v0}, Lrx/i/e;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/l$a;->d:Lrx/i/e;

    .line 54
    return-void
.end method


# virtual methods
.method a()V
    .locals 3

    .prologue
    .line 72
    iget-object v2, p0, Lrx/internal/operators/l$a;->d:Lrx/i/e;

    invoke-virtual {v2}, Lrx/i/e;->isUnsubscribed()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 76
    :cond_1
    invoke-virtual {p0}, Lrx/internal/operators/l$a;->getAndIncrement()I

    move-result v2

    if-nez v2, :cond_0

    .line 80
    iget-object v0, p0, Lrx/internal/operators/l$a;->b:[Lrx/b;

    .line 82
    .local v0, "a":[Lrx/b;
    :cond_2
    iget-object v2, p0, Lrx/internal/operators/l$a;->d:Lrx/i/e;

    invoke-virtual {v2}, Lrx/i/e;->isUnsubscribed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 86
    iget v1, p0, Lrx/internal/operators/l$a;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lrx/internal/operators/l$a;->c:I

    .line 87
    .local v1, "idx":I
    array-length v2, v0

    if-ne v1, v2, :cond_3

    .line 88
    iget-object v2, p0, Lrx/internal/operators/l$a;->a:Lrx/d;

    invoke-interface {v2}, Lrx/d;->onCompleted()V

    goto :goto_0

    .line 92
    :cond_3
    aget-object v2, v0, v1

    invoke-virtual {v2, p0}, Lrx/b;->a(Lrx/d;)V

    .line 93
    invoke-virtual {p0}, Lrx/internal/operators/l$a;->decrementAndGet()I

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0
.end method

.method public onCompleted()V
    .locals 0

    .prologue
    .line 68
    invoke-virtual {p0}, Lrx/internal/operators/l$a;->a()V

    .line 69
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 63
    iget-object v0, p0, Lrx/internal/operators/l$a;->a:Lrx/d;

    invoke-interface {v0, p1}, Lrx/d;->onError(Ljava/lang/Throwable;)V

    .line 64
    return-void
.end method

.method public onSubscribe(Lrx/m;)V
    .locals 1
    .param p1, "d"    # Lrx/m;

    .prologue
    .line 58
    iget-object v0, p0, Lrx/internal/operators/l$a;->d:Lrx/i/e;

    invoke-virtual {v0, p1}, Lrx/i/e;->a(Lrx/m;)V

    .line 59
    return-void
.end method
