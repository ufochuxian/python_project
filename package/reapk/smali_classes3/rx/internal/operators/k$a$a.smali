.class final Lrx/internal/operators/k$a$a;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Lrx/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/k$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x646290c7e039ac74L


# instance fields
.field final synthetic a:Lrx/internal/operators/k$a;


# direct methods
.method constructor <init>(Lrx/internal/operators/k$a;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lrx/internal/operators/k$a$a;->a:Lrx/internal/operators/k$a;

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lrx/internal/operators/k$a$a;->a:Lrx/internal/operators/k$a;

    invoke-virtual {v0}, Lrx/internal/operators/k$a;->a()V

    .line 155
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 149
    iget-object v0, p0, Lrx/internal/operators/k$a$a;->a:Lrx/internal/operators/k$a;

    invoke-virtual {v0, p1}, Lrx/internal/operators/k$a;->a(Ljava/lang/Throwable;)V

    .line 150
    return-void
.end method

.method public onSubscribe(Lrx/m;)V
    .locals 1
    .param p1, "d"    # Lrx/m;

    .prologue
    .line 144
    iget-object v0, p0, Lrx/internal/operators/k$a$a;->a:Lrx/internal/operators/k$a;

    iget-object v0, v0, Lrx/internal/operators/k$a;->b:Lrx/internal/subscriptions/SequentialSubscription;

    invoke-virtual {v0, p1}, Lrx/internal/subscriptions/SequentialSubscription;->set(Ljava/lang/Object;)V

    .line 145
    return-void
.end method
