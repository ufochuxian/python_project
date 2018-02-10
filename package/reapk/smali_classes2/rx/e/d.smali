.class public final Lrx/e/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/d;
.implements Lrx/m;


# annotations
.annotation build Lrx/b/b;
.end annotation


# instance fields
.field final a:Lrx/d;

.field b:Lrx/m;

.field c:Z


# direct methods
.method public constructor <init>(Lrx/d;)V
    .locals 0
    .param p1, "actual"    # Lrx/d;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lrx/e/d;->a:Lrx/d;

    .line 40
    return-void
.end method


# virtual methods
.method public isUnsubscribed()Z
    .locals 1

    .prologue
    .line 92
    iget-boolean v0, p0, Lrx/e/d;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lrx/e/d;->b:Lrx/m;

    invoke-interface {v0}, Lrx/m;->isUnsubscribed()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCompleted()V
    .locals 2

    .prologue
    .line 44
    iget-boolean v1, p0, Lrx/e/d;->c:Z

    if-eqz v1, :cond_0

    .line 55
    :goto_0
    return-void

    .line 47
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lrx/e/d;->c:Z

    .line 49
    :try_start_0
    iget-object v1, p0, Lrx/e/d;->a:Lrx/d;

    invoke-interface {v1}, Lrx/d;->onCompleted()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 50
    :catch_0
    move-exception v0

    .line 51
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {v0}, Lrx/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 53
    new-instance v1, Lrx/exceptions/OnCompletedFailedException;

    invoke-direct {v1, v0}, Lrx/exceptions/OnCompletedFailedException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    const/4 v5, 0x1

    .line 59
    invoke-static {p1}, Lrx/f/c;->a(Ljava/lang/Throwable;)V

    .line 60
    iget-boolean v1, p0, Lrx/e/d;->c:Z

    if-eqz v1, :cond_0

    .line 71
    :goto_0
    return-void

    .line 63
    :cond_0
    iput-boolean v5, p0, Lrx/e/d;->c:Z

    .line 65
    :try_start_0
    iget-object v1, p0, Lrx/e/d;->a:Lrx/d;

    invoke-interface {v1, p1}, Lrx/d;->onError(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {v0}, Lrx/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 69
    new-instance v1, Lrx/exceptions/OnErrorFailedException;

    new-instance v2, Lrx/exceptions/CompositeException;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Throwable;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    aput-object v0, v3, v5

    invoke-direct {v2, v3}, Lrx/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    invoke-direct {v1, v2}, Lrx/exceptions/OnErrorFailedException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public onSubscribe(Lrx/m;)V
    .locals 2
    .param p1, "d"    # Lrx/m;

    .prologue
    .line 75
    iput-object p1, p0, Lrx/e/d;->b:Lrx/m;

    .line 77
    :try_start_0
    iget-object v1, p0, Lrx/e/d;->a:Lrx/d;

    invoke-interface {v1, p0}, Lrx/d;->onSubscribe(Lrx/m;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :goto_0
    return-void

    .line 78
    :catch_0
    move-exception v0

    .line 79
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {v0}, Lrx/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 80
    invoke-interface {p1}, Lrx/m;->unsubscribe()V

    .line 81
    invoke-virtual {p0, v0}, Lrx/e/d;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public unsubscribe()V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lrx/e/d;->b:Lrx/m;

    invoke-interface {v0}, Lrx/m;->unsubscribe()V

    .line 88
    return-void
.end method
