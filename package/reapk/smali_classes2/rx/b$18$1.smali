.class Lrx/b$18$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/b$18;->a(Lrx/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lrx/d;

.field final synthetic b:Lrx/b$18;


# direct methods
.method constructor <init>(Lrx/b$18;Lrx/d;)V
    .locals 0

    .prologue
    .line 1682
    iput-object p1, p0, Lrx/b$18$1;->b:Lrx/b$18;

    iput-object p2, p0, Lrx/b$18$1;->a:Lrx/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 1686
    iget-object v0, p0, Lrx/b$18$1;->a:Lrx/d;

    invoke-interface {v0}, Lrx/d;->onCompleted()V

    .line 1687
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 5
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 1694
    :try_start_0
    iget-object v3, p0, Lrx/b$18$1;->b:Lrx/b$18;

    iget-object v3, v3, Lrx/b$18;->a:Lrx/c/p;

    invoke-interface {v3, p1}, Lrx/c/p;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1701
    .local v0, "b":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 1702
    iget-object v3, p0, Lrx/b$18$1;->a:Lrx/d;

    invoke-interface {v3}, Lrx/d;->onCompleted()V

    .line 1706
    :goto_1
    return-void

    .line 1695
    .end local v0    # "b":Z
    :catch_0
    move-exception v2

    .line 1696
    .local v2, "ex":Ljava/lang/Throwable;
    invoke-static {v2}, Lrx/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 1697
    new-instance v1, Lrx/exceptions/CompositeException;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Throwable;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object v2, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v3}, Lrx/exceptions/CompositeException;-><init>(Ljava/util/Collection;)V

    .line 1698
    .end local p1    # "e":Ljava/lang/Throwable;
    .local v1, "e":Ljava/lang/Throwable;
    const/4 v0, 0x0

    .restart local v0    # "b":Z
    move-object p1, v1

    .end local v1    # "e":Ljava/lang/Throwable;
    .restart local p1    # "e":Ljava/lang/Throwable;
    goto :goto_0

    .line 1704
    .end local v2    # "ex":Ljava/lang/Throwable;
    :cond_0
    iget-object v3, p0, Lrx/b$18$1;->a:Lrx/d;

    invoke-interface {v3, p1}, Lrx/d;->onError(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public onSubscribe(Lrx/m;)V
    .locals 1
    .param p1, "d"    # Lrx/m;

    .prologue
    .line 1710
    iget-object v0, p0, Lrx/b$18$1;->a:Lrx/d;

    invoke-interface {v0, p1}, Lrx/d;->onSubscribe(Lrx/m;)V

    .line 1711
    return-void
.end method
