.class final Lrx/b$32;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/b;->b(Lrx/c/o;)Lrx/b;
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
    .line 417
    iput-object p1, p0, Lrx/b$32;->a:Lrx/c/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lrx/d;)V
    .locals 3
    .param p1, "s"    # Lrx/d;

    .prologue
    .line 420
    invoke-static {}, Lrx/i/f;->b()Lrx/m;

    move-result-object v2

    invoke-interface {p1, v2}, Lrx/d;->onSubscribe(Lrx/m;)V

    .line 424
    :try_start_0
    iget-object v2, p0, Lrx/b$32;->a:Lrx/c/o;

    invoke-interface {v2}, Lrx/c/o;->call()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 429
    .local v1, "error":Ljava/lang/Throwable;
    :goto_0
    if-nez v1, :cond_0

    .line 430
    new-instance v1, Ljava/lang/NullPointerException;

    .end local v1    # "error":Ljava/lang/Throwable;
    const-string v2, "The error supplied is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 432
    .restart local v1    # "error":Ljava/lang/Throwable;
    :cond_0
    invoke-interface {p1, v1}, Lrx/d;->onError(Ljava/lang/Throwable;)V

    .line 433
    return-void

    .line 425
    .end local v1    # "error":Ljava/lang/Throwable;
    :catch_0
    move-exception v0

    .line 426
    .local v0, "e":Ljava/lang/Throwable;
    move-object v1, v0

    .restart local v1    # "error":Ljava/lang/Throwable;
    goto :goto_0
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 417
    check-cast p1, Lrx/d;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/b$32;->a(Lrx/d;)V

    return-void
.end method
