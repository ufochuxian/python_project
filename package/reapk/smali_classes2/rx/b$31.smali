.class final Lrx/b$31;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/b;->a(Lrx/c/o;)Lrx/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lrx/c/o;


# direct methods
.method constructor <init>(Lrx/c/o;)V
    .locals 0

    .prologue
    .line 381
    iput-object p1, p0, Lrx/b$31;->a:Lrx/c/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lrx/d;)V
    .locals 4
    .param p1, "s"    # Lrx/d;

    .prologue
    .line 387
    :try_start_0
    iget-object v2, p0, Lrx/b$31;->a:Lrx/c/o;

    invoke-interface {v2}, Lrx/c/o;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/b;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 394
    .local v0, "c":Lrx/b;
    if-nez v0, :cond_0

    .line 395
    invoke-static {}, Lrx/i/f;->b()Lrx/m;

    move-result-object v2

    invoke-interface {p1, v2}, Lrx/d;->onSubscribe(Lrx/m;)V

    .line 396
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "The completable returned is null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v2}, Lrx/d;->onError(Ljava/lang/Throwable;)V

    .line 401
    .end local v0    # "c":Lrx/b;
    :goto_0
    return-void

    .line 388
    :catch_0
    move-exception v1

    .line 389
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {}, Lrx/i/f;->b()Lrx/m;

    move-result-object v2

    invoke-interface {p1, v2}, Lrx/d;->onSubscribe(Lrx/m;)V

    .line 390
    invoke-interface {p1, v1}, Lrx/d;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 400
    .end local v1    # "e":Ljava/lang/Throwable;
    .restart local v0    # "c":Lrx/b;
    :cond_0
    invoke-virtual {v0, p1}, Lrx/b;->a(Lrx/d;)V

    goto :goto_0
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 381
    check-cast p1, Lrx/d;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/b$31;->a(Lrx/d;)V

    return-void
.end method
