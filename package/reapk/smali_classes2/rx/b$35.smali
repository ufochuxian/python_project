.class final Lrx/b$35;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/b;->a(Ljava/util/concurrent/Callable;)Lrx/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/concurrent/Callable;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Callable;)V
    .locals 0

    .prologue
    .line 491
    iput-object p1, p0, Lrx/b$35;->a:Ljava/util/concurrent/Callable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lrx/d;)V
    .locals 3
    .param p1, "s"    # Lrx/d;

    .prologue
    .line 494
    new-instance v0, Lrx/i/a;

    invoke-direct {v0}, Lrx/i/a;-><init>()V

    .line 495
    .local v0, "bs":Lrx/i/a;
    invoke-interface {p1, v0}, Lrx/d;->onSubscribe(Lrx/m;)V

    .line 497
    :try_start_0
    iget-object v2, p0, Lrx/b$35;->a:Ljava/util/concurrent/Callable;

    invoke-interface {v2}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 504
    invoke-virtual {v0}, Lrx/i/a;->isUnsubscribed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 505
    invoke-interface {p1}, Lrx/d;->onCompleted()V

    .line 507
    :cond_0
    :goto_0
    return-void

    .line 498
    :catch_0
    move-exception v1

    .line 499
    .local v1, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Lrx/i/a;->isUnsubscribed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 500
    invoke-interface {p1, v1}, Lrx/d;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 491
    check-cast p1, Lrx/d;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/b$35;->a(Lrx/d;)V

    return-void
.end method
