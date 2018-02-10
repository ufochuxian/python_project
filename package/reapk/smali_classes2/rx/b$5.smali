.class final Lrx/b$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/b;->a(Lrx/c/o;Lrx/c/p;Lrx/c/c;Z)Lrx/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lrx/c/o;

.field final synthetic b:Lrx/c/p;

.field final synthetic c:Lrx/c/c;

.field final synthetic d:Z


# direct methods
.method constructor <init>(Lrx/c/o;Lrx/c/p;Lrx/c/c;Z)V
    .locals 0

    .prologue
    .line 877
    iput-object p1, p0, Lrx/b$5;->a:Lrx/c/o;

    iput-object p2, p0, Lrx/b$5;->b:Lrx/c/p;

    iput-object p3, p0, Lrx/b$5;->c:Lrx/c/c;

    iput-boolean p4, p0, Lrx/b$5;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lrx/d;)V
    .locals 11
    .param p1, "s"    # Lrx/d;

    .prologue
    const/4 v6, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 883
    :try_start_0
    iget-object v5, p0, Lrx/b$5;->a:Lrx/c/o;

    invoke-interface {v5}, Lrx/c/o;->call()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 893
    .local v4, "resource":Ljava/lang/Object;, "TR;"
    :try_start_1
    iget-object v5, p0, Lrx/b$5;->b:Lrx/c/p;

    invoke-interface {v5, v4}, Lrx/c/p;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/b;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 912
    .local v0, "cs":Lrx/b;
    if-nez v0, :cond_0

    .line 914
    :try_start_2
    iget-object v5, p0, Lrx/b$5;->c:Lrx/c/c;

    invoke-interface {v5, v4}, Lrx/c/c;->call(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3

    .line 922
    invoke-static {}, Lrx/i/f;->b()Lrx/m;

    move-result-object v5

    invoke-interface {p1, v5}, Lrx/d;->onSubscribe(Lrx/m;)V

    .line 923
    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "The completable supplied is null"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v5}, Lrx/d;->onError(Ljava/lang/Throwable;)V

    .line 992
    .end local v0    # "cs":Lrx/b;
    .end local v4    # "resource":Ljava/lang/Object;, "TR;"
    :goto_0
    return-void

    .line 884
    :catch_0
    move-exception v1

    .line 885
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {}, Lrx/i/f;->b()Lrx/m;

    move-result-object v5

    invoke-interface {p1, v5}, Lrx/d;->onSubscribe(Lrx/m;)V

    .line 886
    invoke-interface {p1, v1}, Lrx/d;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 894
    .end local v1    # "e":Ljava/lang/Throwable;
    .restart local v4    # "resource":Ljava/lang/Object;, "TR;"
    :catch_1
    move-exception v1

    .line 896
    .restart local v1    # "e":Ljava/lang/Throwable;
    :try_start_3
    iget-object v5, p0, Lrx/b$5;->c:Lrx/c/c;

    invoke-interface {v5, v4}, Lrx/c/c;->call(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    .line 905
    invoke-static {v1}, Lrx/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 907
    invoke-static {}, Lrx/i/f;->b()Lrx/m;

    move-result-object v5

    invoke-interface {p1, v5}, Lrx/d;->onSubscribe(Lrx/m;)V

    .line 908
    invoke-interface {p1, v1}, Lrx/d;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 897
    :catch_2
    move-exception v2

    .line 898
    .local v2, "ex":Ljava/lang/Throwable;
    invoke-static {v1}, Lrx/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 899
    invoke-static {v2}, Lrx/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 901
    invoke-static {}, Lrx/i/f;->b()Lrx/m;

    move-result-object v5

    invoke-interface {p1, v5}, Lrx/d;->onSubscribe(Lrx/m;)V

    .line 902
    new-instance v5, Lrx/exceptions/CompositeException;

    new-array v6, v6, [Ljava/lang/Throwable;

    aput-object v1, v6, v9

    aput-object v2, v6, v10

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v5, v6}, Lrx/exceptions/CompositeException;-><init>(Ljava/util/Collection;)V

    invoke-interface {p1, v5}, Lrx/d;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 915
    .end local v1    # "e":Ljava/lang/Throwable;
    .end local v2    # "ex":Ljava/lang/Throwable;
    .restart local v0    # "cs":Lrx/b;
    :catch_3
    move-exception v2

    .line 916
    .restart local v2    # "ex":Ljava/lang/Throwable;
    invoke-static {v2}, Lrx/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 918
    invoke-static {}, Lrx/i/f;->b()Lrx/m;

    move-result-object v5

    invoke-interface {p1, v5}, Lrx/d;->onSubscribe(Lrx/m;)V

    .line 919
    new-instance v5, Lrx/exceptions/CompositeException;

    new-array v6, v6, [Ljava/lang/Throwable;

    new-instance v7, Ljava/lang/NullPointerException;

    const-string v8, "The completable supplied is null"

    invoke-direct {v7, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    aput-object v7, v6, v9

    aput-object v2, v6, v10

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v5, v6}, Lrx/exceptions/CompositeException;-><init>(Ljava/util/Collection;)V

    invoke-interface {p1, v5}, Lrx/d;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 927
    .end local v2    # "ex":Ljava/lang/Throwable;
    :cond_0
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 929
    .local v3, "once":Ljava/util/concurrent/atomic/AtomicBoolean;
    new-instance v5, Lrx/b$5$1;

    invoke-direct {v5, p0, v3, v4, p1}, Lrx/b$5$1;-><init>(Lrx/b$5;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/lang/Object;Lrx/d;)V

    invoke-virtual {v0, v5}, Lrx/b;->a(Lrx/d;)V

    goto :goto_0
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 877
    check-cast p1, Lrx/d;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/b$5;->a(Lrx/d;)V

    return-void
.end method
