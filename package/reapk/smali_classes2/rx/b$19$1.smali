.class Lrx/b$19$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/b$19;->a(Lrx/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lrx/d;

.field final synthetic b:Lrx/i/e;

.field final synthetic c:Lrx/b$19;


# direct methods
.method constructor <init>(Lrx/b$19;Lrx/d;Lrx/i/e;)V
    .locals 0

    .prologue
    .line 1732
    iput-object p1, p0, Lrx/b$19$1;->c:Lrx/b$19;

    iput-object p2, p0, Lrx/b$19$1;->a:Lrx/d;

    iput-object p3, p0, Lrx/b$19$1;->b:Lrx/i/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 1736
    iget-object v0, p0, Lrx/b$19$1;->a:Lrx/d;

    invoke-interface {v0}, Lrx/d;->onCompleted()V

    .line 1737
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 8
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1744
    :try_start_0
    iget-object v4, p0, Lrx/b$19$1;->c:Lrx/b$19;

    iget-object v4, v4, Lrx/b$19;->a:Lrx/c/p;

    invoke-interface {v4, p1}, Lrx/c/p;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/b;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1751
    .local v0, "c":Lrx/b;
    if-nez v0, :cond_0

    .line 1752
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "The completable returned is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 1753
    .local v3, "npe":Ljava/lang/NullPointerException;
    new-instance v1, Lrx/exceptions/CompositeException;

    new-array v4, v7, [Ljava/lang/Throwable;

    aput-object p1, v4, v5

    aput-object v3, v4, v6

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v1, v4}, Lrx/exceptions/CompositeException;-><init>(Ljava/util/Collection;)V

    .line 1754
    .end local p1    # "e":Ljava/lang/Throwable;
    .local v1, "e":Ljava/lang/Throwable;
    iget-object v4, p0, Lrx/b$19$1;->a:Lrx/d;

    invoke-interface {v4, v1}, Lrx/d;->onError(Ljava/lang/Throwable;)V

    move-object p1, v1

    .line 1776
    .end local v0    # "c":Lrx/b;
    .end local v1    # "e":Ljava/lang/Throwable;
    .end local v3    # "npe":Ljava/lang/NullPointerException;
    .restart local p1    # "e":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 1745
    :catch_0
    move-exception v2

    .line 1746
    .local v2, "ex":Ljava/lang/Throwable;
    new-instance v1, Lrx/exceptions/CompositeException;

    new-array v4, v7, [Ljava/lang/Throwable;

    aput-object p1, v4, v5

    aput-object v2, v4, v6

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v1, v4}, Lrx/exceptions/CompositeException;-><init>(Ljava/util/Collection;)V

    .line 1747
    .end local p1    # "e":Ljava/lang/Throwable;
    .restart local v1    # "e":Ljava/lang/Throwable;
    iget-object v4, p0, Lrx/b$19$1;->a:Lrx/d;

    invoke-interface {v4, v1}, Lrx/d;->onError(Ljava/lang/Throwable;)V

    move-object p1, v1

    .line 1748
    .end local v1    # "e":Ljava/lang/Throwable;
    .restart local p1    # "e":Ljava/lang/Throwable;
    goto :goto_0

    .line 1758
    .end local v2    # "ex":Ljava/lang/Throwable;
    .restart local v0    # "c":Lrx/b;
    :cond_0
    new-instance v4, Lrx/b$19$1$1;

    invoke-direct {v4, p0}, Lrx/b$19$1$1;-><init>(Lrx/b$19$1;)V

    invoke-virtual {v0, v4}, Lrx/b;->a(Lrx/d;)V

    goto :goto_0
.end method

.method public onSubscribe(Lrx/m;)V
    .locals 1
    .param p1, "d"    # Lrx/m;

    .prologue
    .line 1780
    iget-object v0, p0, Lrx/b$19$1;->b:Lrx/i/e;

    invoke-virtual {v0, p1}, Lrx/i/e;->a(Lrx/m;)V

    .line 1781
    return-void
.end method
