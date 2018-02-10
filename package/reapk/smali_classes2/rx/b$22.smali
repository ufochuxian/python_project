.class Lrx/b$22;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/b;->a(Lrx/c/b;Lrx/c/c;)Lrx/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:Z

.field final synthetic b:Lrx/c/b;

.field final synthetic c:Lrx/i/c;

.field final synthetic d:Lrx/c/c;

.field final synthetic e:Lrx/b;


# direct methods
.method constructor <init>(Lrx/b;Lrx/c/b;Lrx/i/c;Lrx/c/c;)V
    .locals 0

    .prologue
    .line 1974
    iput-object p1, p0, Lrx/b$22;->e:Lrx/b;

    iput-object p2, p0, Lrx/b$22;->b:Lrx/c/b;

    iput-object p3, p0, Lrx/b$22;->c:Lrx/i/c;

    iput-object p4, p0, Lrx/b$22;->d:Lrx/c/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a(Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 2003
    :try_start_0
    iget-object v2, p0, Lrx/b$22;->d:Lrx/c/c;

    invoke-interface {v2, p1}, Lrx/c/c;->call(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2009
    iget-object v2, p0, Lrx/b$22;->c:Lrx/i/c;

    invoke-virtual {v2}, Lrx/i/c;->unsubscribe()V

    .line 2011
    :goto_0
    return-void

    .line 2004
    :catch_0
    move-exception v1

    .line 2005
    .local v1, "ex":Ljava/lang/Throwable;
    :try_start_1
    new-instance v0, Lrx/exceptions/CompositeException;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Throwable;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Lrx/exceptions/CompositeException;-><init>(Ljava/util/Collection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2006
    .end local p1    # "e":Ljava/lang/Throwable;
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_2
    invoke-static {v0}, Lrx/f/c;->a(Ljava/lang/Throwable;)V

    .line 2007
    invoke-static {v0}, Lrx/b;->c(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2009
    iget-object v2, p0, Lrx/b$22;->c:Lrx/i/c;

    invoke-virtual {v2}, Lrx/i/c;->unsubscribe()V

    move-object p1, v0

    .line 2010
    .end local v0    # "e":Ljava/lang/Throwable;
    .restart local p1    # "e":Ljava/lang/Throwable;
    goto :goto_0

    .line 2009
    .end local v1    # "ex":Ljava/lang/Throwable;
    :catchall_0
    move-exception v2

    :goto_1
    iget-object v3, p0, Lrx/b$22;->c:Lrx/i/c;

    invoke-virtual {v3}, Lrx/i/c;->unsubscribe()V

    throw v2

    .end local p1    # "e":Ljava/lang/Throwable;
    .restart local v0    # "e":Ljava/lang/Throwable;
    .restart local v1    # "ex":Ljava/lang/Throwable;
    :catchall_1
    move-exception v2

    move-object p1, v0

    .end local v0    # "e":Ljava/lang/Throwable;
    .restart local p1    # "e":Ljava/lang/Throwable;
    goto :goto_1
.end method

.method public onCompleted()V
    .locals 2

    .prologue
    .line 1978
    iget-boolean v1, p0, Lrx/b$22;->a:Z

    if-nez v1, :cond_0

    .line 1979
    const/4 v1, 0x1

    iput-boolean v1, p0, Lrx/b$22;->a:Z

    .line 1981
    :try_start_0
    iget-object v1, p0, Lrx/b$22;->b:Lrx/c/b;

    invoke-interface {v1}, Lrx/c/b;->call()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1986
    iget-object v1, p0, Lrx/b$22;->c:Lrx/i/c;

    invoke-virtual {v1}, Lrx/i/c;->unsubscribe()V

    .line 1988
    :cond_0
    :goto_0
    return-void

    .line 1982
    :catch_0
    move-exception v0

    .line 1983
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {p0, v0}, Lrx/b$22;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 1992
    iget-boolean v0, p0, Lrx/b$22;->a:Z

    if-nez v0, :cond_0

    .line 1993
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/b$22;->a:Z

    .line 1994
    invoke-virtual {p0, p1}, Lrx/b$22;->a(Ljava/lang/Throwable;)V

    .line 1999
    :goto_0
    return-void

    .line 1996
    :cond_0
    invoke-static {p1}, Lrx/f/c;->a(Ljava/lang/Throwable;)V

    .line 1997
    invoke-static {p1}, Lrx/b;->c(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onSubscribe(Lrx/m;)V
    .locals 1
    .param p1, "d"    # Lrx/m;

    .prologue
    .line 2015
    iget-object v0, p0, Lrx/b$22;->c:Lrx/i/c;

    invoke-virtual {v0, p1}, Lrx/i/c;->a(Lrx/m;)V

    .line 2016
    return-void
.end method
